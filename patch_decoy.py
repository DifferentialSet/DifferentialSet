# %%
from pycparser import parse_file, c_ast, c_generator, c_parser, preprocess_file
from copy import copy
from subprocess import check_output

# input is a list of list, each sublist contains observation name and decoy name. eg ['Observation_0_2', 'decoy_1_1_0']
# def patch_decoy(ds_keys):

class BranchToCompoundVisitor(c_ast.NodeVisitor):
    def visit_If(self, node):
        self.generic_visit(node)
        if node.iftrue and not isinstance(node.iftrue, c_ast.Compound):
            node.iftrue = c_ast.Compound([node.iftrue])
        if node.iffalse and not isinstance(node.iffalse, c_ast.Compound):
            node.iffalse = c_ast.Compound([node.iffalse])

class CompoundVisitor(c_ast.NodeVisitor):
    def __init__(self):
        self.compounds = []
        self.id_to_compound_node_pair = {}
    def visit_Compound(self, compound):
        self.compounds.append(compound)
        for c in compound:
            if c.__class__.__name__ == "FuncCall" and c.name.name == "branch_id":
                id = "{}_".format(c.args.exprs[0].value.strip("\""))
                self.id_to_compound_node_pair[id] = (compound, c)
            elif (c.__class__.__name__ == "Assignment" and c.rvalue.__class__.__name__ == "FuncCall" and "secure_load" in c.rvalue.name.name) or\
                    (c.__class__.__name__ == "FuncCall" and "secure_store" in c.name.name):
                if c.__class__.__name__ == "Assignment":
                    func_call = c.rvalue
                else:
                    func_call = c
                if "secure_load" in func_call.name.name:
                    if "_onebase" in func_call.name.name:
                        ds_name_index = 7
                    else:
                        ds_name_index = 2
                else:
                    if "_onebase" in func_call.name.name:
                        ds_name_index = 8
                    else:
                        ds_name_index = 3
                id = func_call.args.exprs[ds_name_index].name
                assert(id.startswith("obsv_ds_bases_size_"))
                id = id.replace("obsv_ds_bases_size_", "")
                self.id_to_compound_node_pair[id] = (compound, c, func_call)
        self.generic_visit(compound)

def get_decoy_name_to_secure_function_call(vars_of_alignments, id_to_compound_node_pair):
    obsv_name_to_decoy_names = {}
    for vars_of_alignment in vars_of_alignments:
        obsv_name = None
        decoy_names = []
        for var in vars_of_alignment:
            if var.startswith("Observation"):
                obsv_name = var
            if var.startswith("decoy"):
                decoy_names.append(var)
        assert(obsv_name is not None)
        obsv_name_to_decoy_names[obsv_name] = decoy_names
    
    decoy_name_to_secure_function_call = {}
    for obsv_name, decoy_names in obsv_name_to_decoy_names.items():
        id = obsv_name.replace("Observation_", "")
        assert(id in id_to_compound_node_pair)
        _, _, secure_function_call = id_to_compound_node_pair[id]
        decoy_name_to_secure_function_call.update(zip(decoy_names, [secure_function_call]*len(decoy_names)))
    return decoy_name_to_secure_function_call


def insert_decoy_func_call_after_target(decoy_name_to_function_call, id_to_compound_node_pair):
    id_to_list_of_decoy_names = {}
    for decoy_name in decoy_name_to_function_call.keys():
        id = decoy_name.split("_", 1)[1].rsplit("_", 1)[0]
        assert(id in id_to_compound_node_pair)
        id_to_list_of_decoy_names[id] = id_to_list_of_decoy_names.get(id, []) + [decoy_name]

    for id, decoy_names in id_to_list_of_decoy_names.items():
        added_compound = c_ast.Compound([])
        for decoy_name in sorted(decoy_names, key=lambda x: int(x.split("_")[-1])):
            arg_list = []
            function_call = decoy_name_to_function_call[decoy_name]
            if "secure_load" in function_call.name.name:
                decoy_id = decoy_name[6:]
                # arg_list = [c_ast.Constant("int", "0"), c_ast.ID("decoy_ds_"+decoy_id), c_ast.ID("decoy_ds_bases_size_"+decoy_id), c_ast.ID("decoy_ds_size_"+decoy_id)]
                arg_list = [c_ast.Constant("int", "0")] + function_call.args.exprs[1:]
            else:
                decoy_id = decoy_name[6:]
                # arg_list = [c_ast.Constant("int", "0"), c_ast.Constant("int", "0"), c_ast.ID("decoy_ds_"+decoy_id), c_ast.ID("decoy_ds_bases_size_"+decoy_id), c_ast.ID("decoy_ds_size_"+decoy_id)]
                arg_list = [c_ast.Constant("int", "0"), c_ast.Constant("int", "0")] + function_call.args.exprs[2:]
            decoy_func_call = c_ast.FuncCall(c_ast.ID(function_call.name.name), c_ast.ExprList(arg_list))

            added_compound.block_items.append(decoy_func_call)

        compound = id_to_compound_node_pair[id][0]
        target = id_to_compound_node_pair[id][1]
        compound.block_items.insert(compound.block_items.index(target)+1, added_compound)

# change pc_sensitive secure_store to secure_store_sensitive
class FunctionModifier(c_ast.NodeVisitor):
    def __init__(self, obsv_mapping, macro_defs_raw):
        self.obsv_mapping = obsv_mapping
        self.macro_defs_raw = macro_defs_raw

    def visit_FuncCall(self, func_call):
        if func_call.name.name.endswith("secure_store") or func_call.name.name.endswith("secure_load"):
            if func_call.name.name.endswith("secure_store"):
                index = 2
            else:
                index = 1

            id = func_call.args.exprs[index].name

            # nil obsv is unreachable
            if "nil" in id:
                return

            obsv_id = id.strip("obsv_ds_")
            assert(obsv_id in self.obsv_mapping)

            if (len(self.obsv_mapping[obsv_id][1]) == 1):
                is_single = "_single"
            else:
                is_single = ""

            # # we do not consider sensitive branches
            # is_sensitive = ""
            if (self.obsv_mapping[obsv_id][2]):
                is_sensitive = "_sensitive"
            else:
                is_sensitive = ""
            
            if obsv_id in self.obsv_mapping:
                func_call.name.name += is_single + is_sensitive

            # append _onebase if ds has only one base and has more than one element. If there's single element it's already marked as _single
            assert(id in self.macro_defs_raw)
            if (len(self.macro_defs_raw[id]) == 1 and self.macro_defs_raw[id][0][2] > 1):
                base = self.macro_defs_raw[id][0][0]
                offset = self.macro_defs_raw[id][0][1]
                ds_size = self.macro_defs_raw[id][0][2]
                strategy = self.macro_defs_raw[id][0][3]
                begin_offset = self.macro_defs_raw[id][0][4]
                end_offset = self.macro_defs_raw[id][0][5]

                parser = c_parser.CParser()
                baes_expr = parser.parse("void a = {};".format(base)).ext[0].init

                if type(offset) == str:
                    offset = offset.replace("uint64_t", "unsigned long long")
                offset_expr = parser.parse("void a = {};".format(offset)).ext[0].init
                ds_size_expr = parser.parse("void a = {};".format(ds_size)).ext[0].init
                strategy_expr = parser.parse("void a = {};".format(strategy)).ext[0].init
                begin_offset_expr = parser.parse("void a = {};".format(begin_offset)).ext[0].init
                end_offset_expr = parser.parse("void a = {};".format(end_offset)).ext[0].init

                func_call.args.exprs = func_call.args.exprs[:index] + [baes_expr, offset_expr, ds_size_expr, strategy_expr, begin_offset_expr, end_offset_expr] + func_call.args.exprs[index+1:]

                func_call.name.name += "_onebase"





        # self.generic_visit(func_call)


def insert_branch_cross_load(program, sensitive_branches):
    cross_loaded_program = []
    for line in program.split("\n"):
        if "branch_id(\"" not in line:
            cross_loaded_program.append(line)
        else:
            branch_id = line.split("(\"")[1].split("\")")[0]
            if not branch_id in sensitive_branches:
                continue
            cross_loaded_program.append(branch_id + ":")
            other_branch_id = branch_id.rsplit("$", 1)[0] + "$" + str(int(branch_id.rsplit("$", 1)[1])^1)

            # LLVM doesn't like volatile and it causes segfault
            # cross_loaded_program.append("*(volatile int*)&&" + other_branch_id + ";")
            cross_loaded_program.append("*(int*)&&" + other_branch_id + ";")
    return "\n".join(cross_loaded_program)



def transform_program_using_alignment(instrumented_program_path, alignments_three_tuple, sensitive_branches, macro_defs_raw):
    # ast = parse_file(instrumented_program_path, use_cpp=True, cpp_args="-I./utils/fake_libc_include")
    parser = c_parser.CParser()
    code = open(instrumented_program_path).readlines()
    # extract include directives
    includes = ""
    remaining_lines = ""
    for line in code:
        if line.strip().startswith("#include"):
            includes += line
        else:
            remaining_lines += line
    
    pp_code = check_output(["cpp"], input=remaining_lines, text=True)
    ast = parser.parse(pp_code)
    ensure_compound_v = BranchToCompoundVisitor()
    ensure_compound_v.visit(ast)

    obsv_mapping = {}
    for t in alignments_three_tuple:
        ids = {name.strip("Observation_"): t for name in t[0] if name.startswith("Observation")}
        obsv_mapping.update(ids)

    m = FunctionModifier(obsv_mapping, macro_defs_raw)
    m.visit(ast)

    v = CompoundVisitor()
    v.visit(ast)

    decoy_name_to_function_call = get_decoy_name_to_secure_function_call([t[0] for t in alignments_three_tuple], v.id_to_compound_node_pair)

    insert_decoy_func_call_after_target(decoy_name_to_function_call, v.id_to_compound_node_pair)
    generator = c_generator.CGenerator()
    transformed_program = generator.visit(ast)

    cross_loaded_program = insert_branch_cross_load(transformed_program, sensitive_branches)

    return includes + cross_loaded_program
# %%
 