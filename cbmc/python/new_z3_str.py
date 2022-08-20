# %%
from z3 import *

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

import re
# either a declaration, definition, lhs equality that contains var
# if none of the above, then any constraint that contains var
def is_important_constraint(constraint, var):
    if "__CPROVER_deallocated" in constraint and var in constraint:
        # we want to preserve safe-pointer constraint
        return True
    pattern = "(\(assert \(= |\(define-fun |\(declare-fun |\(assert \(= \(select )(\|.*?\|)"
    matches = re.match(pattern, constraint)
    if matches:
        if matches.group(2) == var:
            return True
        else:
            return False
    else:
        return var in constraint

def get_var_in_script(script):
    pattern = "\|.*?\||array\.\\d*"
    matches = re.findall(pattern, script)
    return set(matches)

# %%
def get_split_smt2_script(smt2_path):
    script = open(smt2_path).readlines()
    script = [line for line in script if not(line.startswith(("\n", ";")))]
    for i,line in enumerate(script):
        if "Observation_0" in line:
            break
    cbmc_smt2_script = script[:i]
    obsv_smt2_script = script[i:]

    # clean up cbmc script, specifically, remove definition of predicate that's not needed
    safe_pointer_predicate_vars = []
    for line in cbmc_smt2_script:
        pattern = "\(assert (\|B\d*\|)\)"
        matches = re.findall(pattern, line)
        safe_pointer_predicate_vars.extend(matches)

    def is_needed(line):
        if "set-" in line:
            return False
        if "define-fun" not in line:
            return True
        return any(pred in line for pred in safe_pointer_predicate_vars)
    cbmc_smt2_script = [line for line in cbmc_smt2_script if is_needed(line)]

    # deduplicate
    cbmc_smt2_script = list(dict.fromkeys(cbmc_smt2_script))
    return cbmc_smt2_script, obsv_smt2_script

# %%
def get_sliced_obsv_script(var_strs, obsv_smt2_script):
    sliced_script = []
    for line in obsv_smt2_script[::-1]:
        if any(v in line for v in var_strs):
            sliced_script = [line] + sliced_script
    return sliced_script

# sliced_obsv_script = get_sliced_obsv_script(["Observation_12921"], obsv_smt2_script)
# obsv_dep_vars = get_var_in_script("".join(sliced_obsv_script))

# %%
def get_sliced_cbmc_script(var_strs, cbmc_smt2_script):
    dep_vars = set(var_strs)
    sliced_script = []
    for line in cbmc_smt2_script[::-1]:
        if line.startswith(("(declare-fun", "(define-fun")):
            line_var_name = line.split(" ")[1]
            if any(v == line_var_name for v in dep_vars):
                sliced_script = [line] + sliced_script
        elif line.startswith("(assert (="):
            lhs = line.split(" ")[2]
            if (lhs in dep_vars):
                dep_vars |= get_var_in_script(line)
                sliced_script = [line] + sliced_script
        elif line.startswith("(assert"):
            pass
        else:
            assert(False)
    declared_vars = get_var_in_script("".join(sliced_script))

    # get safe pointer assertion
    for line in cbmc_smt2_script[::-1]:
        if line.startswith("(assert") and not line.startswith("(assert (="):
            if get_var_in_script(line).issubset(declared_vars):
                sliced_script = sliced_script + [line]
    return sliced_script

# sliced_cbmc_script = get_sliced_cbmc_script(obsv_dep_vars, cbmc_smt2_script)
# get_sliced_cbmc_script(new_obsv_dep_vars, cbmc_smt2_script)

# %%
def compute_id_to_offset(all_models):
    # compute base and offset for each model
    object_id_to_offsets = {}
    object_gap = 1048576
    for val in all_models:
        object_id = val // object_gap
        if object_id not in object_id_to_offsets:
            object_id_to_offsets[object_id] = []
        object_id_to_offsets[object_id].append(val % object_gap)
    return object_id_to_offsets

def enumerate_solution(constraints, ctx, obsv_var, pub_vars):
    solver = Solver(ctx=ctx)
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
    solver.add(obsv_var != var_renaming_mapping[obsv_var])
    solver.add([v == var_renaming_mapping[v] for v in pub_vars])
    all_models= []
    for i in range(1000):
        solver_result = solver.check()
        if (solver_result == sat):
            m = solver.model()
            all_models.append(m[obsv_var].as_signed_long())
            solver.add(obsv_var != m[obsv_var])
        elif (solver_result == unknown):
            print("Z3 timeout {}".format(str(obsv_var)), flush=True)
            return None
        else:
            break
    if i == 999:
        print("Error: the number of models is too large {}".format(str(obsv_var)), flush=True)
        return None
    return all_models

def enumerate_memeory_location_for_obsv(obsv_str, cbmc_smt2_script, obsv_smt2_script):
    solver = Solver(ctx=Context())

    sliced_obsv_script = get_sliced_obsv_script([obsv_str], obsv_smt2_script)
    obsv_dep_vars = get_var_in_script("".join(sliced_obsv_script))
    sliced_cbmc_script = get_sliced_cbmc_script(obsv_dep_vars, cbmc_smt2_script)

    constraints = parse_smt2_string("".join(sliced_cbmc_script + sliced_obsv_script), ctx=solver.ctx)

    # get obsv variable for use in enumeration
    pub_vars = set()
    for c in constraints[::-1]:
        this_pub_vars = {v for v in get_vars(c) if "pub" in str(v)}
        pub_vars.update(this_pub_vars)

    # get public variables for use in enumeration
    for c in constraints[::-1]:
        for v in get_vars(c):
            if str(v) == obsv_str.strip("|"):
                obsv_var = v
                break

    solver.set("timeout", 3*1000)
    solver.add(constraints)
    # enumerate the model
    all_models = enumerate_solution(constraints, solver.ctx, obsv_var, pub_vars)
    if all_models != None:
        return (len(all_models), compute_id_to_offset(all_models), 0)

    # # ########################################
    # # # If z3 timeouts, we relaxed the constraint by removing the premise
    # # ########################################
    print("Retry by relax premise {}".format(obsv_str))
    assert(False)

    # # HACK: the last few constraints are obsv constraints
    # obsv_constraints = []
    # for c in constraints[::-1]:
    #     if is_implies(c):
    #         obsv_constraints.append(c)
    #     else:
    #         break
    # # # extract conclusions and OR together
    # conclusions = [c.children()[1] for c in obsv_constraints]
    # new_obsv_dep_vars = set().union(*[get_var_str(c) for c in conclusions])
    # new_sliced_cbmc_script = get_sliced_cbmc_script(new_obsv_dep_vars, cbmc_smt2_script)
    # new_cbmc_constraints = parse_smt2_string("".join(new_sliced_cbmc_script), ctx=solver.ctx)
    # solver.reset()
    # solver.add([Or(conclusions)] + list(new_cbmc_constraints))

    # # enumerate the model
    # all_models = enumerate_solution(solver, obsv_var)
        
    # if all_models:
    #     return (len(all_models), compute_id_to_offset(all_models), 1)
        
    # ########################################
    # # If z3 still timeouts or number of model exceed upper limit, we relaxed the constraint by freeing the definition of offset's dependents
    # ########################################
    # print("Retry by relax offset's dependents {}".format(obsv_str))
    # obsv_dep_vars = set().union(*[get_var_str(c) for c in obsv_constraints])
    # obsv_dep_vars_without_offset = {v for v in obsv_dep_vars if not "cbmc_pointer_offset" in v}

    # # find the definition of cbmc_pointer_offset and collect its dependents
    # for c in obsv_constraints:
    #     for v in get_vars(c):
    #         if "cbmc_pointer_offset" in str(v):
    #             offset_var = v
    #             break

    # for c in constraints:
    #     if is_eq(c) and offset_var.eq(c.children()[0]):
    #         offset_dep_vars = get_vars(c.children()[1])

    # offset_dependents_constraints = [c for c in constraints if offset_dep_vars.intersection(get_vars(c)) and not (is_eq(c) and c.children()[0] in offset_dep_vars)] # get constraints on offset but not its definition
    # new_sliced_cbmc_script = get_sliced_cbmc_script(obsv_dep_vars_without_offset, cbmc_smt2_script)
    # new_cbmc_constraints = parse_smt2_string("".join(new_sliced_cbmc_script), ctx=solver.ctx)
    # new_cbmc_constraints = list(new_cbmc_constraints)
    # new_cbmc_constraints.extend(offset_dependents_constraints)
    # solver.reset()
    # solver.add(obsv_constraints + new_cbmc_constraints)
    # # enumerate the model
    # all_models = enumerate_solution(solver, obsv_var)
    # if all_models:
    #     return (len(all_models), compute_id_to_offset(all_models), 2)
    # else:
    #     print("Error: final time out ".format(str(obsv_var)), flush=True)
    #     assert(False)


# enumerate_memeory_location_for_obsv("|Observation_12921|", cbmc_smt2_script, obsv_smt2_script)
# enumerate_memeory_location_for_obsv("|Observation_82|", cbmc_smt2_script, obsv_smt2_script)

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
    return var_type.count('[') >= 2 and var_type.endswith(']')

def write_ds_txt(config_dir, infos):
    pointer_mapping = get_pointer_to_name_and_type_map(config_dir)
    ds_file = open(config_dir + "ds_of_obsvs.txt", "w")
    for obsv, info in sorted(infos.items(), key=lambda o: int(o[0].strip("|").split("_")[1])):
        index = obsv.strip("|").split("_")[1]
        memory_locs = []
        ds_size = 0
        if info[1] == {}:
            ds_file.write("#define ds_{} (void* []){{}}\n".format(index))
            ds_file.write("#define ds_size_{} 0\n".format(index))
            continue
        for (base, offsets) in info[1].items():
            if (base == -1):
                # decoy access is not part of ds
                continue
            var_name = pointer_mapping[base][0]
            var_type = pointer_mapping[base][1]
            for offset in sorted(offsets):
                memory_locs.append("((char*){}{})+{}".format("" if is_array(var_type) else "&", var_name, offset))
                ds_size += 1
        memory_locs = ",".join(memory_locs)
        memory_locs = "{"+memory_locs+"}"
        ds_file.write("#define ds_{} (void* [{}]){}\n".format(index, ds_size, memory_locs))
        ds_file.write("#define ds_size_{} {}\n".format(index, ds_size))
    ds_file.write("#define ds_nil (void* []){}\n")
    ds_file.write("#define ds_size_nil 0\n")
    ds_file.close()


# %%
from joblib import Parallel, delayed
import copy, random


def wrapper(chunk, cbmc_pairs, obsv_pairs):
    result = []
    for o in chunk:
        print("Processing {}".format(o))
        result.append((o, enumerate_memeory_location_for_obsv(o, cbmc_pairs, obsv_pairs)))
        print("Done {}".format(o))
    return result

def parallel_enumerate(config_dir, n_jobs=5):
    smt2_path = config_dir + "cbmc.smt2"
    cbmc_smt2_script, obsv_smt2_script = get_split_smt2_script(smt2_path)
    list_of_vars = get_var_in_script("".join(obsv_smt2_script))
    obsv_vars = [o for o in list_of_vars if "Observation_" in o]
    obsv_vars.sort(key=lambda x: int(x.strip("|").split("_")[-1].split("!")[0]))
    chunk_size = len(obsv_vars) // (n_jobs-1)
    random.shuffle(obsv_vars)
    chunks = output=[obsv_vars[i:i + chunk_size] for i in range(0, len(obsv_vars), chunk_size)]
    chunk_result = Parallel(n_jobs=n_jobs)(delayed(wrapper)(chunk, cbmc_smt2_script, obsv_smt2_script) for chunk in chunks)
    infos = dict(sum(chunk_result, []))
    write_ds_txt(config_dir, infos)


# %%



