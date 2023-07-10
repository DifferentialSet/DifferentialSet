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

    for c in [c.strip() for c in comments if any(prefix in c for prefix in target_var_prefixes)]:
        target_var = c.split(" ")[1]
        target_literals = c.split(" ")[2:]

        target_literals = [l.strip("-") for l in target_literals]

        s.push()
        for l in target_literals:
            if l in vars_mapping and mirror_literal(l) in vars_mapping:
                s.add(vars_mapping[l] != vars_mapping[mirror_literal(l)])
        if s.check() == z3.sat:
            output.extend(target_literals)
            print("interfering target var: {}".format(target_var))
        s.pop()
    
    return output

if __name__ == "__main__":
    print(get_target_literals("benchmarks/quantification/blazer_k96_unsafe/combined_cache_cbmc.dimacs", 
                              ["label_alignment_"]))