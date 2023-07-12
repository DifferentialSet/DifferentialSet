# %%
from unittest import skip
from z3 import *
import json
import re
# %%
# Wrapper for allowing Z3 ASTs to be stored into Python Hashtables. 
class AstRefKey:
    def __init__(self, n):
        self.n = n
    def __hash__(self):
        return self.n.hash()
    def __eq__(self, other):
        return self.n.eq(other.n)
    def __repr__(self):
        return str(self.n)

def askey(n):
    return AstRefKey(n)

def get_vars(f):
    r = set()
    def collect(f):
      if is_const(f): 
          if f.decl().kind() == Z3_OP_UNINTERPRETED and not askey(f) in r:
              r.add(askey(f))
      else:
          for c in f.children():
              collect(c)
    collect(f)
    return {ele.n for ele in r}

def get_vars_dict(f):
    d = {}
    def collect(f):
      if is_const(f): 
          decl = f.decl()
          if decl.kind() == Z3_OP_UNINTERPRETED:
              d[decl.name().strip("k!")] = f
      else:
          for c in f.children():
              collect(c)
    collect(f)
    return d

def get_var_str(f):
    r = set()
    def collect(f):
      if is_const(f): 
          if f.decl().kind() == Z3_OP_UNINTERPRETED and not askey(f) in r:
              r.add(askey(f))
      else:
          for c in f.children():
              collect(c)
    collect(f)
    return {"|{}|".format(str(ele.n)) for ele in r}




# %%
import time

def get_interfering_public_vars(constraints, ctx, target_var, pub_vars, sec_vars, timeout):
    interefering_public_vars = []
    for pub_v in pub_vars:
        solver = Solver(ctx=ctx)
        solver.set("timeout", timeout*1000)
        var_renaming_mapping = {}
        for c in constraints:
            renamed_c = c
            for v in get_vars(c):
                assert(is_const(v))
                if v in var_renaming_mapping:
                    renamed_v = var_renaming_mapping[v]
                else:
                    renamed_v = Const(str(v)+"_dup", v.sort())
                    var_renaming_mapping[v] = renamed_v
                renamed_c = substitute(renamed_c, (v, renamed_v))
            solver.add(c)
            solver.add(renamed_c)
        solver.add(target_var != var_renaming_mapping[target_var])
        solver.add([v == var_renaming_mapping[v] for v in sec_vars if v in var_renaming_mapping])
        solver.add([v == var_renaming_mapping[v] for v in pub_vars - {pub_v} if v in var_renaming_mapping])

        if solver.check() == sat:
            interefering_public_vars.append(pub_v)
    return interefering_public_vars

def enumerate_solution(constraints, ctx, target_var, pub_vars, sec_vars, timeout=600, debug=False):

    total_timeout = 600

    # interfering_pub_vars = get_interfering_public_vars(constraints, ctx, target_var, pub_vars, sec_vars, timeout)
    # interfering_pub_vars = pub_vars

    solver = Solver(ctx=ctx)
    solver.set("timeout", timeout*1000)
    var_renaming_mapping = {}
    for c in constraints:
        renamed_c = c
        for v in get_vars(c):
            assert(is_const(v))
            if v in var_renaming_mapping:
                renamed_v = var_renaming_mapping[v]
            else:
                renamed_v = Const(str(v)+"_dup", v.sort())
                var_renaming_mapping[v] = renamed_v
            renamed_c = substitute(renamed_c, (v, renamed_v))
        solver.add(c)
        solver.add(renamed_c)
    solver.add(target_var != var_renaming_mapping[target_var])
    solver.add([v == var_renaming_mapping[v] for v in pub_vars if v in var_renaming_mapping])
    if debug:
        print(*list(solver.assertions()), sep="\n------\n")
    all_models= []
    start_time = time.time()
    for i in range(10000):
        if debug:
            print(i)
        if time.time() - start_time > total_timeout:
            print("Z3 enumerating takes more than {} seconds {}".format(timeout, str(target_var)), flush=True)
            return None
        solver_result = solver.check()
        if (solver_result == sat):
            m = solver.model()
            if debug:
                import pprint
                pprint.pprint(sorted ([(d, m[d]) for d in m], key = lambda x: str(x[0])))
                # print({d: m[d] for d in m})

            # pub_models = []
            # if interfering_pub_vars:
            #     pub_solver = Solver(ctx=ctx)
            #     pub_solver.set("timeout", timeout*1000)
            #     pub_solver.add(target_var == m[target_var])
            #     pub_solver.add(constraints)
            #     # hack! replace 1000 with sensible value
            #     # pub_solver.add([And(0 <= v, v < 1000) for v in interfering_pub_vars])
            #     # pub_solver.add([And(0 <= v, v < 1000) for v in sec_vars])
            #     for j in range(20):
            #         if (pub_solver.check() == unsat):
            #             break
            #         pub_m = pub_solver.model()
            #         pub_models.append(pub_m)
            #         pub_solver.add([v != pub_m[v] for v in interfering_pub_vars])
            #     if j == 19:
            #         # there're too many public inputs that give rise to the obsv, we don't differential them
            #         pub_models = []

            # pub_assignment_tuples = [[(str(v).split("::")[-1].split("!")[0], m[v]) for v in interfering_pub_vars] for m in pub_models]
            pub_assignment_tuples = []

            if target_var.sort().name() == "Bool":
                all_models.append((m[target_var], pub_assignment_tuples))
            else:
                all_models.append((m[target_var].as_long(), pub_assignment_tuples))
            solver.add(target_var != m[target_var])
        elif (solver_result == unknown):
            print("Z3 timeout {}".format(str(target_var)), flush=True)
            return None
        else:
            break
    if i == 9999:
        print("Error: the number of models is too large {}".format(str(target_var)), flush=True)
        return None
    return all_models


# %%
def get_pointer_to_name_and_type_map(config_dir):
    mapping = {}
    f = open(config_dir + "pointer_numbering.csv")
    for line in f.readlines():
        line = line.strip()
        splits = line.split(",")
        var_type = splits[0]
        full_var = splits[1]
        numbering = splits[2]
        #histogram::1::2::i!0@1
        #histogram$$1$$2$$1$$i
        #histogram$$1$$2$$1$$1$$t
        mapping[int(numbering)] = (full_var.split("::")[-1].split("!")[0], var_type)
    return mapping

def is_array(var_type):
    return var_type.count('[') >= 2 and var_type.endswith(']') and not(var_type.startswith("struct"))



# %%
def split_script(smt2_path):
    f = open(smt2_path)
    smt2_script = f.read()
    f.close()
    smt2_script = smt2_script.replace("(assert (not false))", "")

    declarations = "\n".join([s for s in smt2_script.split("\n") if s.startswith("(declare")])
    smt2_script = "\n".join([s for s in smt2_script.split("\n") if not s.startswith("(declare")])

    import re
    splits = re.split(';convert_assignments|; converting object size|; done converting program|; done converting obsv_constraints', smt2_script)

    bounds_script, cbmc_script, object_size_script, obsv_script, branch_script = splits[0], splits[1], splits[2], splits[3], splits[4]

    return declarations, bounds_script, cbmc_script, object_size_script, obsv_script, branch_script



# %%

def is_bound_constraint(c):
    if (is_app_of(c, Z3_OP_SLEQ)):
        return True
    if (is_not(c) and is_app_of(c.children()[0], Z3_OP_SLEQ)):
        return True
    if is_or(c):
        for ineq in c.children():
            if is_app_of(ineq, Z3_OP_SLEQ):
                return True
            if (is_not(ineq) and is_app_of(ineq.children()[0], Z3_OP_SLEQ)):
                return True
    return False

def get_bounds_var_eq_mapping(bounds_constraints):

    var_eq_mapping = {}
    for c in bounds_constraints:
        if "read::" in str(c) or "write::" in str(c):
            continue
        c = simplify(c)
        # if not is_bound_constraint(c):
        #     continue
        vs = list(get_vars(c))
        # offset_vs = [v for v in vs if str(v).startswith("cbmc_pointer_offset")]
        # if len(offset_vs) != 1:
            # continue
        # offset_v = offset_vs[0]
        # if offset_v in var_eq_mapping:
        #     var_eq_mapping[offset_v].append(c)
        # else:
        #     var_eq_mapping[offset_v] = [c]
        assert(len(vs) == 1)
        v = vs[0]
        if v in var_eq_mapping:
            var_eq_mapping[v].append(c)
        else:
            var_eq_mapping[v] = [c]
    return var_eq_mapping

def add_or_create(s, v, c):
    if v in s:
        s[v].append(c)
    else:
        s[v] = [c]

def get_cbmc_var_eq_mapping(cbmc_constraints):
    var_eq_mapping = {}
    for c in cbmc_constraints:
        # var_eq_mapping[c.children()[0]] = c
        if (is_eq(c)):
            if "Store" in str(c):
                vars = get_vars(c)
                for arr in [v for v in vars if "array" in str(v)]:
                    add_or_create(var_eq_mapping, arr, c)
                    # var_eq_mapping[arr] = [c] if arr not in var_eq_mapping else var_eq_mapping[arr] + [c]
            if ("array" in str(c.children()[0]) and "[" in str(c.children()[0])):
                arr = c.children()[0].children()[0]
                add_or_create(var_eq_mapping, arr, c)
                # var_eq_mapping[arr] = [c] if arr not in var_eq_mapping else var_eq_mapping[arr] + [c]
            add_or_create(var_eq_mapping, c.children()[0], c)
            # var_eq_mapping[c.children()[0]] = [c] if c.children()[0] not in var_eq_mapping else var_eq_mapping[c.children()[0]] + [c]
        else:
            vs = list(get_vars(c))
            object_size_vs = [v for v in vs if str(v).startswith("object_size")]
            if len(object_size_vs) == 1:
                object_size_v = object_size_vs[0]
                if object_size_v in var_eq_mapping:
                    a = And(var_eq_mapping[object_size_v], c)
                    add_or_create(var_eq_mapping, object_size_v, a)
                    # var_eq_mapping[object_size_v] = [a] if object_size_v not in var_eq_mapping else var_eq_mapping[object_size_v] + [a]
                else:
                    add_or_create(var_eq_mapping, object_size_v, c)
                    # var_eq_mapping[object_size_v] = [c] if object_size_v not in var_eq_mapping else var_eq_mapping[object_size_v] + [c]
            else:
                assert(False)
    return var_eq_mapping

def get_obsv_var_eq_mapping(obsv_constraints):
    var_eq_mapping = {}
    for c in obsv_constraints:
        assert(is_and(c) and is_eq(c.children()[1]))
        obsv_var = c.children()[1].children()[0]
        assert(obsv_var not in var_eq_mapping)
        var_eq_mapping[obsv_var] = c
    return var_eq_mapping

def get_branch_label_mapping(branch_label_constraints):
    label_mapping = {}
    for c in branch_label_constraints:
        assert(is_eq(c))
        label_mapping[c.children()[0]] = c
    return label_mapping

# %%
import time
from copy import copy

def slice_and_enumerate(cbmc_mapping, initial_constraints, target_var, ctx, timeout=600, max_depthes=None, use_bound_as_last_resort=False, debug=False):
    if max_depthes is None:
        max_depthes = [3]
    if not use_bound_as_last_resort:
        max_depthes += [0]
    for max_depth in max_depthes:
        dep_constraints = copy(initial_constraints)
        to_visit = {(v,0) for c in dep_constraints for v in get_vars(c)}
        visited = set()
        while to_visit:
            p = to_visit.pop()
            v = p[0]
            depth = p[1]
            if v in visited:
                continue
            visited.add(v)

            if depth > max_depth:
                continue
            if v in cbmc_mapping:
                v_eqs = cbmc_mapping[v]
                dep_constraints.extend(v_eqs)
                invovled_vars = {v for eq in v_eqs for v in get_vars(eq)}
                to_visit |= {(child, depth+1)for child in (invovled_vars - visited)}
            else:
                # assert(str(v) == "pc_var")
                pass
        
        # get public variables
        pub_vars = set()
        for c in dep_constraints[::-1]:
            this_pub_vars = {v for v in get_vars(c) if "pub" in str(v)}
            for new_p in this_pub_vars:

                # type of new_p is z3.ArrayRef
                if new_p.sort().kind() == Z3_ARRAY_SORT:
                    continue

                # Hack: keep the last SSA version of the variable
                to_replace = None
                for old_p in pub_vars:
                    if str(old_p).split("!")[0] == str(new_p).split("!")[0] and int(str(old_p).split("#")[-1].split("[[")[0]) < int(str(new_p).split("#")[-1].split("[[")[0]):
                        to_replace = old_p
                        break
                if to_replace is not None:
                    pub_vars.remove(to_replace)
                pub_vars.add(new_p)

        # get secret variables
        sec_vars = set()
        for c in dep_constraints[::-1]:
            this_sec_vars = {v for v in get_vars(c) if "sec" in str(v)}
            sec_vars.update(this_sec_vars)

        all_models = enumerate_solution(dep_constraints, ctx, target_var, pub_vars, sec_vars, timeout, debug=debug)
        if all_models != None:
            print("Success {} max_depth: {}".format(str(target_var), max_depth), flush=True)
            return (all_models)
    
    if use_bound_as_last_resort:
        lower_bound, upper_bound = initial_constraints[-2:]
        assert(is_app_of(lower_bound, Z3_OP_SLEQ))
        assert(is_app_of(upper_bound, Z3_OP_NOT))
        lower_bound_int = lower_bound.children()[0].as_long()
        upper_bound_int = upper_bound.children()[0].children()[0].as_long()
        all_models = list(range(lower_bound_int, upper_bound_int, 4))
        print("USE BOUND TO GET MODELS {}".format(str(target_var)), flush=True)
        return [(m, []) for m in all_models]
    else:
        print("Fail {}".format(str(target_var)), flush=True)
        assert(False)

def enumerate_routine(bounds_mapping, cbmc_mapping, obsv_mapping, branch_label_mapping, target_var_name, ctx, largest_pointer_number, cbmc_script, debug=False):
    print("Start {}".format(target_var_name), flush=True)
    assert("Observation" in target_var_name or target_var_name.startswith("$"))

    if target_var_name.startswith("$"):
        # this is a branch label

        var = None
        eq = None
        for var, eq in branch_label_mapping.items():
            if target_var_name == str(var):
                break

        # only leave the last branch condition
        if is_and(eq.children()[1]):
            assert(not is_and(eq.children()[1].children()[-1]))
            eq = substitute(eq, (eq.children()[1], eq.children()[1].children()[-1]))

        pc_non_interference_test = slice_and_enumerate(cbmc_mapping, [eq], var, ctx, use_bound_as_last_resort=False, debug=debug)
        pc_is_sensitive = len(pc_non_interference_test) > 0
        return (target_var_name, [], pc_is_sensitive)


    obsv_var = None
    for it in list(obsv_mapping.keys()):
        if target_var_name in str(it):
            obsv_var = it
            break
    # get pc_expr
    pc_expr = None
    obsv_c = obsv_mapping[obsv_var]
    assert(is_and(obsv_c))
    pc_expr = obsv_c.children()[0]
    pc_var = Bool('pc_var', ctx=ctx)
    pc_non_interference_test = slice_and_enumerate(cbmc_mapping, [pc_var == pc_expr], pc_var, ctx, max_depthes=[2**20], use_bound_as_last_resort=False, debug=debug)
    pc_is_sensitive = len(pc_non_interference_test) > 0

    # get offset and object var
    object_var = None
    offset_var = None
    eq_c = obsv_c.children()[1]
    assert(is_eq(eq_c))
    add_c= eq_c.children()[1]
    # check if it's a decoy path
    if is_const(add_c) and add_c.as_long() == 4294967295:
        return (target_var_name, [(-1, None)], pc_is_sensitive)
    assert(is_app_of(add_c, Z3_OP_BADD))
    
    object_var = add_c.children()[0]
    offset_var = add_c.children()[1]
    assert(object_var != None and offset_var != None and pc_expr != None)
    assert("cbmc_pointer_object" in str(object_var))
    assert("cbmc_pointer_offset" in str(offset_var))

    object_val = recursively_find_object_id("|{}|".format(str(object_var)), cbmc_script)
    if not object_val:
        object_vals = slice_and_enumerate(cbmc_mapping, cbmc_mapping[object_var] + [pc_expr, object_var <= largest_pointer_number], object_var, ctx, timeout=120, max_depthes=[2**20, 3], use_bound_as_last_resort=False, debug=debug)
        object_vals = [v for v in object_vals if v[0] >= 2]
    else:
        object_vals = [(object_val, [])]

    bounds_constraints = []
    input_assumption_constraints = []
    # get bounds constraints
    offset_shortened_name = str(offset_var).split("!")[0] + "$"
    for c in bounds_mapping.keys():
        # we assume that assumptions are either bounds constraints or constraints on input
        if offset_shortened_name in str(c):
            bounds_constraints = bounds_mapping[c]
        else:
            # we assume inputs are all annotated with either _sec or _pub
            if "_sec" in str(c) or "_pub" in str(c):
                input_assumption_constraints.extend(bounds_mapping[c])
    assert(len(bounds_constraints) == 2)
    offset_alias = list(filter(lambda v: offset_shortened_name in str(v), get_vars(bounds_constraints[0])))[0]    
    bounds_constraints = [substitute(c, (offset_alias, offset_var)) for c in bounds_constraints]

    object_offset_pairs = []
    need_object_symbol = False
    need_offset_symbol = False
    if len(object_vals) != 0:
        for object_id, _ in object_vals:
            constraints = cbmc_mapping[offset_var] + [pc_expr, object_var == object_id] + input_assumption_constraints + bounds_constraints
            if pc_is_sensitive:
                # if pc is sensitive, we need to enumerate all possible values because we can't symbolize, otherwise may out of bound
                max_depthes = [0]
            else:
                max_depthes = [20, 3]
            offset_vals = slice_and_enumerate(cbmc_mapping, constraints, offset_var, ctx, max_depthes=max_depthes, use_bound_as_last_resort=True, debug=debug)
            if len(offset_vals) != 0:
                object_offset_pairs.extend([(object_id, offset_val, pub_tuples) for offset_val, pub_tuples in offset_vals])
            else:
                need_offset_symbol = True
                object_offset_pairs.append((object_id, None, []))
    else:
        need_object_symbol = True
        constraints = cbmc_mapping[offset_var] + [pc_expr] + input_assumption_constraints + bounds_constraints
        if pc_is_sensitive:
            # if pc is sensitive, we need to enumerate all possible values because we can't symbolize, otherwise may out of bound
            max_depthes = [0]
        else:
            max_depthes = [20, 3]
        offset_vals = slice_and_enumerate(cbmc_mapping, constraints, offset_var, ctx, max_depthes=[20, 3], use_bound_as_last_resort=True, debug=debug)
        if len(offset_vals) != 0:
            object_offset_pairs.extend([(None, offset_val, pub_tuples) for offset_val, pub_tuples in offset_vals])
        else:
            need_offset_symbol = True
            object_offset_pairs.append((None, None, []))
    
    # get object_name and offset_name to substitute None. object_name and offset_name could either be variable name or constant
    object_name = None
    offset_name = None
    if need_object_symbol:
        assert(len(cbmc_mapping[object_var]) == 1)
        vs = get_vars(cbmc_mapping[object_var][0].children()[1])
        if (len(vs) == 1):
            object_name = str(vs.pop()).split("::")[-1]
            object_name = re.sub("!\d*@\d*#\d*", "", object_name)
            object_name = re.sub("\[\[", "[", object_name)
            object_name = re.sub("\]\]", "]", object_name)
            object_name = re.sub("\.\.", "->", object_name)
        elif (len(vs) == 0):
            sim = simplify(cbmc_mapping[object_var][0].children()[1])
            if is_const(sim):
                object_name = sim.as_long()
    if need_offset_symbol:
        assert(len(cbmc_mapping[offset_var]) == 1)
        offset_eq = cbmc_mapping[offset_var][0]
        vs = get_vars(offset_eq.children()[1])
        if len(vs) == 1:
            offset_name = str(vs.pop()).split("::")[-1]
            offset_name = re.sub("!\d*@\d*#\d*", "", offset_name)
            offset_name = re.sub("\[\[", "[", offset_name)
            offset_name = re.sub("\]\]", "]", offset_name)
            offset_name = re.sub("\.\.", ".", offset_name)
        elif len(vs) >= 2: # the offset is composed of offset of pointer and offset in the expression or multiple variables
            vs = get_vars(offset_eq.children()[1])
            offset_name = str(offset_eq.children()[1]).replace("\n", "")
            for v in list(vs):
                v_str = str(v).split("!")[0].split("::")[-1]
                offset_name = offset_name.replace(str(v), v_str)
            # find all integers from offset_name
            from ctypes import c_int
            for i in sorted([int(i) for i in re.findall(r"\d+", offset_name)], reverse=True):
                offset_name = offset_name.replace(str(i), str(c_int(i).value))
            offset_name = offset_name.replace("*4", "")
        elif len(vs) == 0:
            sim = simplify(offset_eq.children()[1])
            if is_const(sim):
                offset_name = sim.as_long()
    object_offset_pairs = [(object_id if object_id != None else object_name, offset_val if offset_val != None else offset_name, pub_tuples) for (object_id, offset_val, pub_tuples) in object_offset_pairs]

    print("Finish {}".format(target_var_name), flush=True)
    return (target_var_name, object_offset_pairs, pc_is_sensitive)


# %%
from joblib import Parallel, delayed
import random, re

def get_var_in_script(script):
    # pattern = "\|.*?\||array\.\\d*"
    pattern = "declare-fun (.*?) "
    matches = re.findall(pattern, script)
    return set(matches)


def wrapper(chunk, bounds_script, cbmc_script, obsv_script, branch_script, largest_pointer_number):
    result = []

    ctx = Context()
    bounds_constraints = parse_smt2_string("".join(bounds_script), ctx=ctx)
    cbmc_constraints = parse_smt2_string("".join(cbmc_script), ctx=ctx)
    obsv_constraints = parse_smt2_string("".join(obsv_script), ctx=ctx)
    branch_label_constraints = parse_smt2_string("".join(branch_script), ctx=ctx)
    bounds_mapping = get_bounds_var_eq_mapping(bounds_constraints)
    cbmc_mapping = get_cbmc_var_eq_mapping(cbmc_constraints)
    obsv_mapping = get_obsv_var_eq_mapping(obsv_constraints)
    branch_label_mapping = get_branch_label_mapping(branch_label_constraints)
    for o in chunk:
        obsv_name_and_address_pairs = enumerate_routine(bounds_mapping, cbmc_mapping, obsv_mapping, branch_label_mapping, o, ctx, largest_pointer_number, cbmc_script)
        result.append(obsv_name_and_address_pairs)
    return result

def get_ds_macro_def(config_dir, infos, avx_version):
    pointer_mapping = get_pointer_to_name_and_type_map(config_dir)
    macro_def_string = ""
    ds_base_t_list_raw_out = {}
    sorted_items = sorted(infos.items(), key=lambda o: (o[0].split("_")[1], int(o[0].split("_")[2] or -1), int((o[0].split("_")[3:4] or [-1])[0])))
    strategy_stats = [0,0,0]
    for obsv, info in sorted_items:
        assert(info)
        if "decoy" in obsv:
            ds_macro_name = "decoy_ds_" + obsv.split("_", 1)[1]
            ds_bases_size_macro_name = "decoy_ds_bases_size_" + obsv.split("_", 1)[1]
            ds_size_macro_name = "decoy_ds_size_" + obsv.split("_", 1)[1]
        else:
            assert("Observation" in obsv)
            ds_macro_name = "obsv_ds_" + obsv.split("_", 1)[1]
            ds_bases_size_macro_name = "obsv_ds_bases_size_" + obsv.split("_", 1)[1]
            ds_size_macro_name = "obsv_ds_size_" + obsv.split("_", 1)[1]



        # pub_to_obsv_mapping = {}
        # for obsv_tup, pub_tuples in info.items():
        #     # Assume only one public input interfere with the observation
        #     assert(all(len(t) == 1 for t in pub_tuples))

        #     for t in pub_tuples:
        #         pub_to_obsv_mapping.setdefault(t[0], []).append(obsv_tup)

        # if not pub_to_obsv_mapping:
        #     pub_to_obsv_mapping[""] = info.keys()


        if isinstance(info, dict):
            info = [k for k in info.keys()]

        info = [i for i in info if i[0] != -1] # remove element from decoy path
        info = sorted(info, key=lambda i: i[1] if type(i[1]) == int else -1)

        base_to_offsets = {}
        for i in info:
            base_to_offsets.setdefault(i[0], []).append(i[1])

        # Assume that there is only one base
        # assert(len(base_to_offsets) == 1)

        ds_base_t_list = []
        ds_base_t_list_raw =[]
        ds_size = 0
        for base, offsets in base_to_offsets.items():
            offsets = list(set(offsets))
            ds_size += len(offsets)
            if type(base) == int:
                var_name = pointer_mapping[base][0]
                var_type = pointer_mapping[base][1]
            else:
                var_name = base
                var_type = "" # an arbitrary string

            base_field = "((char*){}{})".format("" if is_array(var_type) else "&", var_name)

            # # decide whether striding linearly is more beneficial
            # linear = True
            offset_size = len(offsets)
            # for i in range(2, offset_size):
            #     if offsets[i] - offsets[i-1] >= 256:
            #         linear = False
            #         break
            # if offset_size >= 2 and offsets[1] - offsets[0] >= 256:
            #     linear = False

            # 0: bulk; 1: simple; 2: gather
            compact = True
            for i in range(2, len(offsets)):
                if offsets[i] - offsets[i-1] >= 16:
                    compact = False
                    break
            if compact:
                strategy = 0
            elif len(offsets) < 8:
                strategy = 1
            else:
                strategy = 2

            if not avx_version:
                strategy = 1
            strategy_stats[strategy] += 1

            # TODO: replace 4 with the size of the type
            begin_offset = str(offsets[0]) + ("" if type(offsets[0]) == int else "*4")
            end_offset = str(offsets[-1]) + ("" if type(offsets[-1]) == int else "*4")

            if strategy == 2:
                # pad offsets to multiple of 4 with unlikely and legal addresses
                for i in range(((offset_size+3)//4*4)-offset_size):
                    offsets.append(offsets[offset_size-1] + 1)

            offsets_field = 0
            if strategy != 0:
                offsets_field = "(const uint64_t[{}]){{".format(len(offsets))
                for offset in offsets:
                    if type(offset) == int:
                        offsets_field += str(offset) + ","
                    else:
                        # TODO: replace 4 with the size of the type
                        offsets_field += offset + "*4,"
                offsets_field += "}"

            ds_base_t_list.append("{{{}, {}, {}, {}, {}, {}}}".format(base_field, offsets_field, len(offsets), strategy, begin_offset, end_offset))
            ds_base_t_list_raw.append((base_field, offsets_field, len(offsets), strategy, begin_offset, end_offset))

        ds_base_t_list_raw_out[ds_macro_name] = ds_base_t_list_raw
        ds_locs_macro = "#define {} (const ds_base_t[{}]){{{}}}".format(
            ds_macro_name, len(base_to_offsets), ", ".join(ds_base_t_list))
        ds_bases_size_macro = "#define {} {}".format(ds_bases_size_macro_name, len(base_to_offsets))
        ds_size_macro = "#define {} {}".format(ds_size_macro_name, ds_size)

        macro_def_string += ds_locs_macro + "\n" + ds_bases_size_macro + "\n" + ds_size_macro + "\n"


    print(strategy_stats)
    macro_def_string += "#define obsv_ds_nil (void* []){}\n"
    macro_def_string += "#define obsv_ds_size_nil 0\n"
    macro_def_string += "#define obsv_ds_bases_size_nil 0\n"
    return macro_def_string, ds_base_t_list_raw_out

from alignment import align_ds
from tqdm import tqdm
def parallel_enumerate(config_dir, n_jobs=5):
    smt2_path = config_dir + "cbmc.smt2"
    decls, bounds_script, cbmc_script, object_size_script, obsv_script, branch_script = split_script(smt2_path)

    # lambda constraints come from read syscall, they are complicated but they only express the idea that the array is a free variable
    # removing these constraints will make no difference
    cbmc_script = "\n".join([i for i in cbmc_script.split("\n") if "lambda" not in i])

    # replace object_size.* with constants
    object_size_mapping = get_object_size(object_size_script, cbmc_script)
    bounds_script = "\n".join([i for i in bounds_script.split("\n") if "(declare-fun object_size." not in i])
    for object_size_v, object_size in object_size_mapping.items():
        bounds_script = bounds_script.replace(object_size_v + ")", "(_ bv"+str(object_size)+" 32))")

    list_of_vars = get_var_in_script("".join(decls))
    obsv_vars = [o.strip("|") for o in list_of_vars if "Observation_" in o]
    pc_vars = [o.strip("|") for o in list_of_vars if o.startswith("$") and o.replace("$", "").isnumeric()]
    obsv_vars += pc_vars

    chunk_size = len(obsv_vars) // (5*n_jobs) # each job will process 5 chunks
    if (chunk_size == 0):
        chunk_size = 1
    random.shuffle(obsv_vars)
    chunks = [obsv_vars[i:i + chunk_size] for i in range(0, len(obsv_vars), chunk_size)]
    print("chunk size is", chunk_size)
    print("#chunk is", len(chunks))
    with open(config_dir + "pointer_numbering.csv") as f:
        lines = f.readlines()
        if len(lines) == 0:
            largest_pointer_number = 0
        else:
            line = lines[-1]
            largest_pointer_number = int(line.split(",")[-1].strip())
    chunk_result = Parallel(n_jobs=n_jobs, backend="multiprocessing")(delayed(wrapper)(chunk, decls+bounds_script, decls+cbmc_script, decls+obsv_script, decls+branch_script, largest_pointer_number) for chunk in tqdm(chunks))
    chunk_result = sum(chunk_result, [])
    with open(config_dir + "chunk_result.repr", "w") as f:
        f.write(repr(chunk_result))

# %%
def do_alignment(config_dir, align_only=False, avx_version=None):
    with open(config_dir + "chunk_result.repr", "r") as f:
        chunk_result = eval(f.read())
    # merge result using greedy alignment algorithm

    # collect sensitive branches, and remove branch id that doesn't come in pair(it's caused by constant branch condition)
    sensitive_branches = [c[0] for c in chunk_result if c[0].startswith("$") and c[2]]
    cleaned_sensitive_branches = []
    for sb in sensitive_branches:
        splits = sb.rsplit("$", maxsplit=1)
        pair_branch_id = splits[0] + "$" + str(int(splits[1]) ^ 1)
        if pair_branch_id in sensitive_branches:
            cleaned_sensitive_branches.append(sb)
    sensitive_branches = cleaned_sensitive_branches

    with open(config_dir + "immediate_sensitive_branches.txt", "w") as f:
        for b in sensitive_branches:
            f.write(b + "\n")

    # remove branches from chunk_result
    chunk_result = [c for c in chunk_result if c[0].startswith("Observation")]
    
    obsv_ids_to_base_offset_pairs_list = align_ds(chunk_result)
    with open(config_dir + "alignment.txt", "w") as f:
        for tup in obsv_ids_to_base_offset_pairs_list:
            f.write(",".join(tup[0]) + "\n")

    if align_only:
        return

    # record observations with more than 1 element for debugging
    with open(config_dir + "sensitive_ds_info.csv", "w") as f:
        info_f = open(config_dir + "info.csv", "r")
        info = info_f.readlines()
        info_map = dict([(line.split(",")[0], line.split(",", maxsplit=1)[1]) for line in info])
        pairs = []
        for o in obsv_ids_to_base_offset_pairs_list:
            if len(o[1]) > 1 or o[2]:
                for obsv_name in o[0]:
                    if "decoy" in obsv_name:
                        continue
                    obsv_info = info_map[obsv_name]
                    
                    address_of_capture_group = re.search(r"pointer_object\(address_of\((.*?)\)\)", obsv_info)
                    if address_of_capture_group:
                        pointer_name = address_of_capture_group.group(1)
                    else:
                        address_of_capture_group = re.search(r"pointer_object\((.*?)\)", obsv_info)
                        pointer_name = address_of_capture_group.group(1)
                    line_num = re.search(r"line (\d*)", obsv_info).group(1)
                    func_name = re.search(r"function (\w*)", obsv_info).group(1)

                    pairs.append("{}, {}, {}, {}, {}, {}\n".format(obsv_name, len(o[1]), pointer_name, line_num, func_name, o[2]))
        pairs = sorted(pairs, key=lambda x: int(x.split(",")[3]))
        f.write("".join(pairs))


    # unpack
    unpacked_dict = {}
    for obsv_ids, base_offset_pairs, _ in obsv_ids_to_base_offset_pairs_list:
        for obsv_id in obsv_ids:
            unpacked_dict[obsv_id] = base_offset_pairs
    macro_defs, macro_defs_raw = get_ds_macro_def(config_dir, unpacked_dict, avx_version)

    with open(config_dir + "ds_macros.c", "w") as f:
        f.write(macro_defs)

    from patch_decoy import transform_program_using_alignment
    transformed_aligned_program = transform_program_using_alignment(config_dir + "instrumented.c", obsv_ids_to_base_offset_pairs_list, sensitive_branches, macro_defs_raw)

    with open(config_dir + "aligned.c", "w") as f:
        f.write(transformed_aligned_program)



# %%

def recursively_find_object_id(starting_v, cbmc_script):
    
    try:
        if "array." in starting_v:
            r = "assert \(= \(select "+starting_v+"(.*?)\n"
        else:
            r = "assert \(= "+starting_v.replace("|", "\|").replace("$", "\$")+" (.*?)\n"
        m = re.search(r, cbmc_script)
        if len(m.groups()) == 0:
            return None

        rest = m.groups()[0]
        r = "\(_ bv(\d*) 14\)"
        m = re.search(r, rest)
        if (m != None):
            return int(m.groups()[0])

        r = "\|.*?\||array\.\d*"
        other_vs = re.findall(r, rest)
        for v in other_vs:
            r = recursively_find_object_id(v, cbmc_script)
            if r is not None:
                return r
    except:
        return None
    return None

# return two maps
def get_object_size_mapping(object_size_script):
    object_size_to_object_id_to_size = {}
    pointer_to_object_size = {}
    lines = object_size_script.split("\n")
    for line in lines:
        m = re.search("object_size\.\d*", line)
        if m is None:
            continue
        object_size_v = m.group(0)

        m = re.search("\|.*?\|", line)
        pointer_v = m.group(0)
        pointer_to_object_size[pointer_v] = object_size_v

        m = re.search("\(_ bv(\d*) 14\)", line)
        object_id = int(m.groups()[0])
        m = re.search("\(_ bv(\d*) 32\)", line)
        object_size = int(m.groups()[0])
        if object_size_v not in object_size_to_object_id_to_size:
            object_size_to_object_id_to_size[object_size_v] = {object_id: object_size}
        else:
            object_size_to_object_id_to_size[object_size_v][object_id] = object_size
    return object_size_to_object_id_to_size, pointer_to_object_size

def get_object_size(object_size_script, cbmc_script):
    object_size_to_object_id_to_size, pointer_to_object_size = get_object_size_mapping(object_size_script)

    object_size_v_to_object_size = {}
    for pointer_v, object_size_v in pointer_to_object_size.items():
        object_id = recursively_find_object_id(pointer_v, cbmc_script)
        assert(object_id != None)
        object_size = object_size_to_object_id_to_size[object_size_v][object_id]
        object_size_v_to_object_size[object_size_v] = object_size
    return object_size_v_to_object_size

# %%
if __name__ == "__main__":
    # smt2_path = "toy/secret_branch_secret_index/cbmc.smt2"
    # smt2_path = "toy/secret_and_public_branch/cbmc.smt2"
    # smt2_path = "/home/cream/src/DSA_github/benchmarks/mitigation/issta2018-benchmarks-wu/examples/chronos/fcrypt/cbmc.smt2"
    # smt2_path = "/home/cream/toy/toy/cbmc.smt2"
    # smt2_path = "/home/cream/src/DSA_github/benchmarks/mitigation/play/alias/cbmc.smt2"
    # smt2_path = "/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/cbmc.smt2"
    # config_dir = "/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/"
    config_dir = "/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/unroll_1/"
    smt2_path = config_dir + "cbmc.smt2" 
    decls, bounds_script, cbmc_script, object_size_script, obsv_script, branch_script = split_script(smt2_path)
    bounds_script = decls + bounds_script
    cbmc_script = decls + cbmc_script
    obsv_script = decls + obsv_script
    branch_script = decls + branch_script
    ctx = Context()

    # lambda constraints come from read syscall, they are complicated but they only express the idea that the array is a free variable
    # removing these constraints will make no difference
    cbmc_script = "\n".join([i for i in cbmc_script.split("\n") if "lambda" not in i])

    # replace object_size.* with constants
    object_size_mapping = get_object_size(object_size_script, cbmc_script)
    bounds_script = "\n".join([i for i in bounds_script.split("\n") if "(declare-fun object_size." not in i])
    for object_size_v, object_size in object_size_mapping.items():
        bounds_script = bounds_script.replace(object_size_v + ")", "(_ bv"+str(object_size)+" 32))")

    bounds_constraints = parse_smt2_string("".join(bounds_script), ctx=ctx)
    cbmc_constraints = parse_smt2_string("".join(cbmc_script), ctx=ctx)
    obsv_constraints = parse_smt2_string("".join(obsv_script), ctx=ctx)
    branch_label_constraints = parse_smt2_string("".join(branch_script), ctx=ctx)
    bounds_mapping = get_bounds_var_eq_mapping(bounds_constraints)
    cbmc_mapping = get_cbmc_var_eq_mapping(cbmc_constraints)
    obsv_mapping = get_obsv_var_eq_mapping(obsv_constraints)
    branch_label_mapping = get_branch_label_mapping(branch_label_constraints)
    with open(config_dir + "pointer_numbering.csv") as f:
        lines = f.readlines()
        if len(lines) == 0:
            largest_pointer_number = 0
        else:
            line = f.readlines()[-1]
            largest_pointer_number = int(line.split(",")[-1].strip())
    e = enumerate_routine(bounds_mapping, cbmc_mapping, obsv_mapping, branch_label_mapping, "Observation_$11$3$3$2$12$3$12$10$1$3$10$4$0$2$16$6$4$4$0$0_4069", ctx, largest_pointer_number, cbmc_script, debug=True)
    print(e)

# %%
