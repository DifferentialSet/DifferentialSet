import subprocess, os
import z3
from typing import List
from tqdm import tqdm

def get_target_literals_old(dimacs_path, target_var_prefixes):
    target_literals = []
    with open(dimacs_path, 'r') as f:
        first_line = f.readline()
        splits = first_line.split(" ")
        clause_num = int(splits[3])
        
        for line in f.readlines()[clause_num:]:
            if any([line.startswith('c {}'.format(prefix)) for prefix in target_var_prefixes]):
                # if line.startswith("c label_alignment_") and line.count("$") >= 2:
                #     # HACK: in our benchmarks, nested branches are non-interferent, therefore we exclude them
                #     continue
                target_literals.extend(line.strip().replace("-", "").replace("TRUE", "").replace("FALSE", "").split(" ", maxsplit=2)[-1].split(" "))

        target_literals = [l for l in target_literals if l != ""]

    # unique target literals
    target_literals = list(set(target_literals))

    return target_literals

def get_target_literals(dimacs_path: str, target_var_prefixes: List[str]):

    output = []

    f = open(dimacs_path, 'r')
    first_line = f.readline()
    splits = first_line.split(" ")
    literal_num = int(splits[2])
    clause_num = int(splits[3])

    def mirror_literal(l: str) -> str:
        return str(int(l) + literal_num) if int(l) > 0 else str(int(l) - literal_num)

    lines = f.readlines()

    comments = [c for c in lines if c[0] == 'c']
    clauses = [c for c in lines if c[0] != 'c']
    comments_on_public = [c for c in comments if "_pub!" in c]
    pub_literals = [c.split(" ")[2:] for c in comments_on_public]
    import itertools
    pub_literals = list(itertools.chain.from_iterable(pub_literals))
    pub_literals = [l.strip() for l in pub_literals]

    # set up z3 solver with two copies of constraints,
    # and public variables are set to be the same
    # save a checkpoint with push so that we can restore
    dup_clauses = []
    for c in clauses:
        splits = c.split(" ")
        dup_clauses.append(" ".join([mirror_literal(l) for l in splits[:-1]]) + " 0\n")
    vacuous_clause = " ".join([str(i) for i in range(1, literal_num*2+1)]) + " 0\n"
    s = z3.Solver()
    timeout_s = 60
    s.set("timeout", timeout_s*1000)
    s.set("solver2_timeout", timeout_s*1000)
    s.set("ignore_solver1", True)
    s.from_string("p cnf {} {}\n".format(literal_num*2, clause_num*2) + "\n".join(clauses + dup_clauses))
    s.from_string("p cnf {} {}\n".format(literal_num*2, 1) + "\n" + vacuous_clause)

    from z3_enumerate import get_vars_dict

    # vars_mapping = {}
    # for assertion in s.assertions():
    #     vs = get_vars_dict(assertion)
    #     vars_mapping.update(vs)
    vars_mapping = get_vars_dict(s.assertions()[-1])

    for l in pub_literals:
        if l in vars_mapping and mirror_literal(l) in vars_mapping:
            s.add(vars_mapping[l] == vars_mapping[mirror_literal(l)])

    assertions = s.assertions()

    num_interfering = 0
    comments_for_target_vars = [c.strip() for c in comments if any(prefix in c for prefix in target_var_prefixes)]
    from tqdm import tqdm
    for c in tqdm(comments_for_target_vars):
        target_var = c.split(" ")[1]
        target_literals = c.split(" ")[2:]

        target_literals = [l.strip("-") for l in target_literals]
        s = z3.Solver()
        s.set("timeout", timeout_s*1000)
        s.add(assertions)
        neq_constraints = []
        for l in target_literals:
            if l in vars_mapping and mirror_literal(l) in vars_mapping:
                neq_constraints.append(vars_mapping[l] != vars_mapping[mirror_literal(l)])
        s.add(z3.Or(neq_constraints))
        result = s.check()
        if result == z3.sat or result == z3.unknown:
            output.extend(target_literals)
            num_interfering += 1
    # we call these observations interesting because they are interfered by secret values
    print("number of interesting observations: {}/{}".format(num_interfering, len(comments_for_target_vars)))
    
    return list(set(output))

def get_target_literals_dimacs(dimacs_path: str, n_jobs, target_var_prefixes: List[str]):

    output = []

    f = open(dimacs_path, 'r')
    first_line = f.readline()
    splits = first_line.split(" ")
    literal_num = int(splits[2])
    clause_num = int(splits[3])

    # if there are too many clauses, the optimization of
    # removing non-interefering observations is not worth it
    if clause_num > 1000000:
        return get_target_literals_old(dimacs_path, target_var_prefixes)

    def mirror_literal(l: str) -> str:
        return str(int(l) + literal_num) if int(l) > 0 else str(int(l) - literal_num)

    lines = f.readlines()

    comments = [c for c in lines if c[0] == 'c']
    clauses = [c for c in lines if c[0] != 'c']
    comments_on_public = [c for c in comments if "_pub!" in c]
    pub_literals = [c.split(" ")[2:] for c in comments_on_public]
    import itertools
    pub_literals = list(itertools.chain.from_iterable(pub_literals))
    pub_literals = [l.strip() for l in pub_literals]
    pub_literals = [l for l in pub_literals if l not in ["TRUE", "FALSE"]]

    dup_clauses = []
    for c in tqdm(clauses):
        splits = c.split(" ")
        dup_clauses.append(" ".join([mirror_literal(l) for l in splits[:-1]]) + " 0\n")
    
    import pycryptosat
    
    comments_for_target_vars = [c.strip() for c in comments if any(prefix in c for prefix in target_var_prefixes)]
    def filter_comments(comment):
        target_vars_literals = [l.strip("-") for l in comment.split(" ")[2:]]
        s = pycryptosat.Solver(time_limit=10)
        for c in clauses + dup_clauses:
            s.add_clause([int(l) for l in c.split(" ")[:-1]])
        for l in pub_literals:
            s.add_xor_clause([abs(int(l)), abs(int(mirror_literal(l)))], False)
        for l in target_vars_literals:
            s.add_xor_clause([abs(int(l)), abs(int(mirror_literal(l)))], True)
        is_sat, _ = s.solve()
        if is_sat or is_sat is None:
            return target_vars_literals
        return []
    from joblib import Parallel, delayed
    chunks = Parallel(n_jobs=n_jobs)(delayed(filter_comments)(c) for c in tqdm(comments_for_target_vars))
    print("number of interesting vars: {}/{}".format(sum([len(c) != 0 for c in chunks]), len(comments_for_target_vars)))
    
    from functools import reduce
    return list(set(reduce(lambda x, y: x + y, chunks, [])))


def preprocess_dimacs(benchmark_path, n_jobs, new=True):
    # dimacs_path = benchmark_path + "data_cache_cbmc.dimacs"
    # preprocess_one_dimacs(dimacs_path, ["alignment_"])

    # dimacs_path = benchmark_path + "inst_cache_cbmc.dimacs"
    # preprocess_one_dimacs(dimacs_path, ["label_alignment_"])

    dimacs_path = benchmark_path + "combined_cache_cbmc.dimacs"
    if new:
        target_literals = get_target_literals_dimacs(dimacs_path, n_jobs, ["label_alignment_", "alignment_"])
    else:
        target_literals = get_target_literals_old(dimacs_path, ["label_alignment_", "alignment_"])

    with open(dimacs_path, 'a') as f:
        f.write("c ind " + " ".join(target_literals) + " 0 \n")

def get_secret_size(dimacs_path: str):
    size = 0
    with open(dimacs_path) as f:
        for line in f.readlines():
            if "_sec!" in line:
                size += len(line.split(" ")) - 2
    return size
                

def count(dimacs_path, my_env):
    import shutil
    approxmc_path = shutil.which("approxmc")
    if approxmc_path is None:
        approxmc_path = "/app/approxmc/build/approxmc"

    content = open(dimacs_path, 'r').read()
    assert("c ind" in content)
    output = subprocess.run([approxmc_path, dimacs_path], capture_output=True, check=True, env=my_env, timeout=18000)
    last_line = output.stdout.decode('utf-8').split("\n")[-2]
    assert(last_line.startswith("s mc"))
    mc = int(last_line.split(" ")[-1])
            
    return mc
