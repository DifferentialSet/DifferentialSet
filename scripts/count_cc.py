import subprocess, os
import z3
from typing import List

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
    s = z3.Solver()
    s.from_string("p cnf {} {}\n".format(literal_num*2, clause_num*2) + "\n".join(clauses + dup_clauses))

    from z3_enumerate import get_vars

    vars_mapping = {}
    for assertion in s.assertions():
        vs = get_vars(assertion)
        vars_mapping.update({str(v).strip("k!"): v for v in vs})

    for l in pub_literals:
        if l in vars_mapping and mirror_literal(l) in vars_mapping:
            s.add(vars_mapping[l] == vars_mapping[mirror_literal(l)])

    num_interfering = 0
    comments_for_target_vars = [c.strip() for c in comments if any(prefix in c for prefix in target_var_prefixes)]
    for c in comments_for_target_vars:
        target_var = c.split(" ")[1]
        target_literals = c.split(" ")[2:]

        target_literals = [l.strip("-") for l in target_literals]

        s.push()
        for l in target_literals:
            if l in vars_mapping and mirror_literal(l) in vars_mapping:
                s.add(vars_mapping[l] != vars_mapping[mirror_literal(l)])
        if s.check() == z3.sat:
            output.extend(target_literals)
            num_interfering += 1
        s.pop()
    # we call these observations interesting because they are interfered by secret values
    print("number of interesting observations: {}/{}".format(num_interfering, len(comments_for_target_vars)))
    
    return list(set(output))

def preprocess_one_dimacs(dimacs_path, target_var_prefixes):
    target_literals = get_target_literals(dimacs_path, target_var_prefixes)

    with open(dimacs_path, 'a') as f:
        f.write("c ind " + " ".join(target_literals) + " 0 \n")

def preprocess_dimacs(benchmark_path):
    # dimacs_path = benchmark_path + "data_cache_cbmc.dimacs"
    # preprocess_one_dimacs(dimacs_path, ["alignment_"])

    # dimacs_path = benchmark_path + "inst_cache_cbmc.dimacs"
    # preprocess_one_dimacs(dimacs_path, ["label_alignment_"])

    dimacs_path = benchmark_path + "combined_cache_cbmc.dimacs"
    preprocess_one_dimacs(dimacs_path, ["label_alignment_", "alignment_"])

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

# print(count("issta2018-benchmarks-wu/examples/case/", os.environ))
# preprocess_one_dimacs("/home/cream/src/benchmark/quantification/blazer_array_safe/combined_cache_cbmc.dimacs", ["label_alignment_", "alignment_"])