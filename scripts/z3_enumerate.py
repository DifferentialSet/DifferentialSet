# %%
from unittest import skip
from z3 import *
import json
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
    assert isinstance(n, AstRef)
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

def enumerate_solution(constraints, ctx, target_var, pub_vars, sec_vars, timeout=3, debug=False):

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
                print(m)

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

    declarations = "\n".join([s for s in smt2_script.split("\n") if s.startswith("(declare-fun")])
    smt2_script = "\n".join([s for s in smt2_script.split("\n") if not s.startswith("(declare-fun")])

    split0 = smt2_script.split(";convert_assignments")
    assert(len(split0) == 2)
    split1 = split0[1].split("; done converting program")
    assert(len(split1) == 2)
    split2 = split1[1].split("; done converting obsv_constraints")
    assert(len(split2) == 2)
    # split2 = split1[1].split(";convert_object_size")
    bounds_script, cbmc_script, obsv_script, branch_script = split0[0], split1[0], split2[0], split2[1]

    return declarations, bounds_script, cbmc_script, obsv_script, branch_script



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


def get_cbmc_var_eq_mapping(cbmc_constraints):
    var_eq_mapping = {}
    for c in cbmc_constraints:
        # var_eq_mapping[c.children()[0]] = c
        if (is_eq(c)):
            var_eq_mapping[c.children()[0]] = c
        else:
            vs = list(get_vars(c))
            object_size_vs = [v for v in vs if str(v).startswith("object_size")]
            if len(object_size_vs) == 1:
                object_size_v = object_size_vs[0]
                if object_size_v in var_eq_mapping:
                    var_eq_mapping[object_size_v] = And(var_eq_mapping[object_size_v], c)
                else:
                    var_eq_mapping[object_size_v] = c
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

def slice_and_enumerate(cbmc_mapping, initial_constraints, target_var, ctx, use_bound_as_last_resort=False, debug=False):
    # max_depthes = [2**20,3,0]
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
                v_eq = cbmc_mapping[v]
                dep_constraints.append(v_eq)
                to_visit |= {(child, depth+1)for child in (get_vars(v_eq) - visited)}
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

        all_models = enumerate_solution(dep_constraints, ctx, target_var, pub_vars, sec_vars, debug=debug)
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
        assert(False)

def enumerate_routine(bounds_mapping, cbmc_mapping, obsv_mapping, branch_label_mapping, target_var_name, ctx, debug=False):
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
    pc_non_interference_test = slice_and_enumerate(cbmc_mapping, [pc_var == pc_expr], pc_var, ctx, use_bound_as_last_resort=False, debug=debug)
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

    object_vals = slice_and_enumerate(cbmc_mapping, [pc_expr, cbmc_mapping[object_var]], object_var, ctx, use_bound_as_last_resort=False, debug=debug)

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
            constraints = [pc_expr, cbmc_mapping[offset_var], object_var == object_id] + input_assumption_constraints + bounds_constraints
            offset_vals = slice_and_enumerate(cbmc_mapping, constraints, offset_var, ctx, use_bound_as_last_resort=True, debug=debug)
            if len(offset_vals) != 0:
                object_offset_pairs.extend([(object_id, offset_val, pub_tuples) for offset_val, pub_tuples in offset_vals])
            else:
                need_offset_symbol = True
                object_offset_pairs.append((object_id, None, []))
    else:
        need_object_symbol = True
        constraints = [pc_expr, cbmc_mapping[offset_var]] + input_assumption_constraints + bounds_constraints
        offset_vals = slice_and_enumerate(cbmc_mapping, constraints, offset_var, ctx, use_bound_as_last_resort=True, debug=debug)
        if len(offset_vals) != 0:
            object_offset_pairs.extend([(None, offset_val, pub_tuples) for offset_val, pub_tuples in offset_vals])
        else:
            need_offset_symbol = True
            object_offset_pairs.append((None, None, []))
    
    # get object_name and offset_name to substitute None. object_name and offset_name could either be variable name or constant
    object_name = None
    offset_name = None
    if need_object_symbol:
        vs = get_vars(cbmc_mapping[object_var].children()[1])
        if (len(vs) == 1):
            object_name = str(vs.pop()).split("!")[0].split("::")[-1]
        elif (len(vs) == 0):
            sim = simplify(cbmc_mapping[object_var].children()[1])
            if is_const(sim):
                object_name = sim.as_long()
    if need_offset_symbol:
        offset_eq = cbmc_mapping[offset_var]
        vs = get_vars(offset_eq.children()[1])
        if len(vs) == 1:
            offset_name = str(vs.pop()).split("!")[0].split("::")[-1]
        elif len(vs) == 2: # the offset is composed of offset of pointer and offset in the expression
            assert(is_app_of(offset_eq.children()[1], Z3_OP_BADD))
            vs = get_vars(offset_eq.children()[1].children()[1])
            assert(len(vs) == 1)
            offset_name = str(vs.pop()).split("!")[0].split("::")[-1]
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
    pattern = "\|.*?\||array\.\\d*"
    matches = re.findall(pattern, script)
    return set(matches)


def wrapper(chunk, bounds_script, cbmc_script, obsv_script, branch_script):
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
        obsv_name_and_address_pairs = enumerate_routine(bounds_mapping, cbmc_mapping, obsv_mapping, branch_label_mapping, o, ctx)
        result.append(obsv_name_and_address_pairs)
    return result

def get_ds_macro_def(config_dir, infos, have_avx2):
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
        info = sorted(info, key=lambda i: i[1])

        base_to_offsets = {}
        for i in info:
            base_to_offsets.setdefault(i[0], []).append(i[1])

        # Assume that there is only one base
        # assert(len(base_to_offsets) == 1)

        ds_base_t_list = []
        ds_base_t_list_raw =[]
        ds_size = 0
        for base, offsets in base_to_offsets.items():
            ds_size += len(offsets)
            if type(base) == int:
                var_name = pointer_mapping[base][0]
                var_type = pointer_mapping[base][1]
            else:
                var_name = base
                var_type = "" # an arbitrary string

            base_field = "((char*){}{})".format("" if is_array(var_type) else "&", var_name)

            # decide whether striding linearly is more beneficial
            linear = True
            offset_size = len(offsets)
            for i in range(2, offset_size):
                if offsets[i] - offsets[i-1] >= 256:
                    linear = False
                    break
            if offset_size >= 2 and offsets[1] - offsets[0] >= 256:
                linear = False

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

            if not have_avx2:
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
    decls, bounds_script, cbmc_script, obsv_script, branch_script = split_script(smt2_path)

    # lambda constraints come from read syscall, they are complicated but they only express the idea that the array is a free variable
    # removing these constraints will make no difference
    cbmc_script = "\n".join([i for i in cbmc_script.split("\n") if "lambda" not in i])

    list_of_vars = get_var_in_script("".join(decls))
    obsv_vars = [o.strip("|") for o in list_of_vars if "Observation_" in o]
    pc_vars = [o.strip("|") for o in list_of_vars if o.startswith("|$") and o.strip("|").replace("$", "").isnumeric()]
    obsv_vars += pc_vars

    chunk_size = len(obsv_vars) // (5*n_jobs) # each job will process 5 chunks
    if (chunk_size == 0):
        chunk_size = 1
    random.shuffle(obsv_vars)
    chunks = [obsv_vars[i:i + chunk_size] for i in range(0, len(obsv_vars), chunk_size)]
    print("chunk size is", chunk_size)
    print("#chunk is", len(chunks))
    chunk_result = Parallel(n_jobs=n_jobs, backend="multiprocessing")(delayed(wrapper)(chunk, decls+bounds_script, decls+cbmc_script, decls+obsv_script, decls+branch_script) for chunk in tqdm(chunks))
    chunk_result = sum(chunk_result, [])
    with open(config_dir + "chunk_result.repr", "w") as f:
        f.write(repr(chunk_result))

# %%
def do_alignment(config_dir, align_only=False, have_avx2=True):
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
    macro_defs, macro_defs_raw = get_ds_macro_def(config_dir, unpacked_dict, have_avx2)

    with open(config_dir + "ds_macros.c", "w") as f:
        f.write(macro_defs)

    from patch_decoy import transform_program_using_alignment
    transformed_aligned_program = transform_program_using_alignment(config_dir + "instrumented.c", obsv_ids_to_base_offset_pairs_list, sensitive_branches, macro_defs_raw)

    with open(config_dir + "aligned.c", "w") as f:
        f.write(transformed_aligned_program)



# %%
# parallel_enumerate("/home/cream/toy/toy/", 1)

# %%
if __name__ == "__main__":
    # smt2_path = "toy/secret_branch_secret_index/cbmc.smt2"
    # smt2_path = "toy/secret_and_public_branch/cbmc.smt2"
    smt2_path = "issta2018-benchmarks-wu/examples/chronos/aes/cbmc.smt2"
    # smt2_path = "/home/cream/toy/toy/cbmc.smt2"
    decls, bounds_script, cbmc_script, obsv_script, branch_script = split_script(smt2_path)
    bounds_script = decls + bounds_script
    cbmc_script = decls + cbmc_script
    obsv_script = decls + obsv_script
    branch_script = decls + branch_script
    ctx = Context()

    # lambda constraints come from read syscall, they are complicated but they only express the idea that the array is a free variable
    # removing these constraints will make no difference
    cbmc_script = "\n".join([i for i in cbmc_script.split("\n") if "lambda" not in i])

    bounds_constraints = parse_smt2_string("".join(bounds_script), ctx=ctx)
    cbmc_constraints = parse_smt2_string("".join(cbmc_script), ctx=ctx)
    obsv_constraints = parse_smt2_string("".join(obsv_script), ctx=ctx)
    branch_label_constraints = parse_smt2_string("".join(branch_script), ctx=ctx)
    bounds_mapping = get_bounds_var_eq_mapping(bounds_constraints)
    cbmc_mapping = get_cbmc_var_eq_mapping(cbmc_constraints)
    obsv_mapping = get_obsv_var_eq_mapping(obsv_constraints)
    branch_label_mapping = get_branch_label_mapping(branch_label_constraints)
    e = enumerate_routine(bounds_mapping, cbmc_mapping, obsv_mapping, branch_label_mapping, "Observation__448", ctx, debug=True)
    print(e)

# %%
