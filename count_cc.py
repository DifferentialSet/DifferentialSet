import subprocess, os

# def preprocess_one_dimacs(dimacs_path, target_var_prefixes):
#     target_literals = []
#     public_literals = []
#     old_clauses = []
#     dup_clauses = []
#     new_var_num = 0
#     new_clause_num = 0
#     with open(dimacs_path, 'r') as f:
#         first_line = f.readline()
#         splits = first_line.split(" ")
#         var_num = int(splits[2])
#         clause_num = int(splits[3])
#         for i in range(clause_num):
#             line = f.readline().strip()
#             old_clauses.append(line)
#             splits = line.split(" ")[:-1]
#             dup_clauses.append(" ".join([("-" if l.startswith("-") else "") + str(int(l.strip("-"))+var_num) for l in splits]) + " 0")
        
#         for line in f:
#             if any([line.startswith('c {}'.format(prefix)) for prefix in target_var_prefixes]):
#                 target_literals.extend(line.strip().replace("-", "").replace("TRUE", "").replace("FALSE", "").split(" ", maxsplit=2)[-1].split(" "))
#             if "_pub!" in line:
#                 public_literals.extend(line.strip().replace("-", "").replace("TRUE", "").replace("FALSE", "").split(" ", maxsplit=2)[-1].split(" "))

#         target_literals = [l for l in target_literals if l != ""]
#         public_literals = [l for l in public_literals if l != ""]

#     if not target_literals:
#         return

#     # we concretize public values
#     if not public_literals:
#         new_clauses = old_clauses
#         new_clause_num = clause_num
#         new_var_num = var_num
#     else:
#         new_clauses = old_clauses + dup_clauses
#         new_clause_num = clause_num * 2
#         new_var_num = var_num * 2

#         aux_literal = new_var_num + 1
#         aux_literals = []
#         # set target literals different
#         for l in target_literals:
#             dup_l = str(int(l) + var_num)
#             new_clauses.append("{} -{} -{} 0".format(l, dup_l, aux_literal))
#             new_clauses.append("-{} {} -{} 0".format(l, dup_l, aux_literal))
#             new_clauses.append("-{} -{} {} 0".format(l, dup_l, aux_literal))
#             new_clauses.append("{} {} {} 0".format(l, dup_l, aux_literal))
#             aux_literals.append(aux_literal)
#             aux_literal += 1
#             new_clause_num += 4
#             new_var_num += 1
#         new_clauses.append(" ".join(["-"+str(l) for l in aux_literals]) + " 0")
#         new_clause_num += 1


#         # set public literals same
#         aux_literals = []
#         for l in public_literals:
#             dup_l = str(int(l) + var_num)
#             new_clauses.append("{} -{} -{} 0".format(l, dup_l, aux_literal))
#             new_clauses.append("-{} {} -{} 0".format(l, dup_l, aux_literal))
#             new_clauses.append("-{} -{} {} 0".format(l, dup_l, aux_literal))
#             new_clauses.append("{} {} {} 0".format(l, dup_l, aux_literal))
#             aux_literals.append(aux_literal)
#             aux_literal += 1
#             new_clause_num += 4
#             new_var_num += 1
#         new_clauses.append(" ".join([str(l) for l in aux_literals]) + " 0")
#         new_clause_num += 1

#     with open(dimacs_path, 'w') as f:
#         f.write("p cnf {} {}\n".format(new_var_num, new_clause_num))
#         for clause in new_clauses:
#             f.write(clause + "\n")
#         f.write("c ind " + " ".join(target_literals) + " 0 \n")

def preprocess_one_dimacs(dimacs_path, target_var_prefixes):
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

    if not target_literals:
        return

    with open(dimacs_path, 'a') as f:
        f.write("c ind " + " ".join(target_literals) + " 0 \n")

def preprocess_dimacs(benchmark_path):
    dimacs_path = benchmark_path + "data_cache_cbmc.dimacs"
    preprocess_one_dimacs(dimacs_path, ["alignment_"])

    dimacs_path = benchmark_path + "inst_cache_cbmc.dimacs"
    preprocess_one_dimacs(dimacs_path, ["label_alignment_"])

    dimacs_path = benchmark_path + "combined_cache_cbmc.dimacs"
    preprocess_one_dimacs(dimacs_path, ["label_alignment_", "alignment_"])

    # dimacs_path = benchmark_path + "data_cache_cbmc.dimacs"
    # literals = ""
    # with open(dimacs_path, 'r') as f:
    #     for line in f:
    #         if line.startswith('c alignment_'):
    #             literals += line.strip().split(" ", maxsplit=2)[-1] + " "

    # literals = literals.replace("TRUE", "")
    # literals = literals.replace("FALSE", "")
    # if literals.strip() != "":
    #     literals += "0\n"
    #     # append to the end of the file
    #     with open(dimacs_path, 'a') as f:
    #         f.write("c ind " + literals)

    # dimacs_path = benchmark_path + "inst_cache_cbmc.dimacs"
    # literals = ""
    # with open(dimacs_path, 'r') as f:
    #     for line in f:
    #         if line.startswith('c label_alignment_'):
    #             literals += line.strip().split(" ", maxsplit=2)[-1] + " "

    # literals = literals.replace("TRUE", "")
    # literals = literals.replace("FALSE", "")
    # if literals.strip() != "":
    #     literals += "0\n"
    #     # append to the end of the file
    #     with open(dimacs_path, 'a') as f:
    #         f.write("c ind " + literals)

    # dimacs_path = benchmark_path + "combined_cache_cbmc.dimacs"
    # literals = ""
    # with open(dimacs_path, 'r') as f:
    #     for line in f:
    #         if line.startswith('c label_alignment_') or line.startswith('c alignment_'):
    #             literals += line.strip().split(" ", maxsplit=2)[-1] + " "

    # literals = literals.replace("TRUE", "")
    # literals = literals.replace("FALSE", "")
    # if literals.strip() != "":
    #     literals += "0\n"    
    #     # append to the end of the file
    #     with open(dimacs_path, 'a') as f:
    #         f.write("c ind " + literals)

def count(benchmark_path, my_env, count_data=False, count_inst=False, count_combined=True):
    approxmc_path = my_env["HOME"]+"/src/approxmc/build/approxmc"
    data_mc = 1; inst_mc = 1; combined_mc = 1

    if count_data:
        dimacs_path = benchmark_path + "data_cache_cbmc.dimacs"
        content = open(dimacs_path, 'r').read()
        if "c ind" in content:
            try:
                output = subprocess.run([approxmc_path, dimacs_path], capture_output=True, check=True, env=my_env, timeout=3600)
            except subprocess.TimeoutExpired:
                data_mc = None
            if data_mc:
                last_line = output.stdout.decode('utf-8').split("\n")[-2]
                assert(last_line.startswith("s mc"))
                data_mc = int(last_line.split(" ")[-1])
    else:
        data_mc = None

    if count_inst:
        dimacs_path = benchmark_path + "inst_cache_cbmc.dimacs"
        content = open(dimacs_path, 'r').read()
        if "c ind" in content:
            try:
                output = subprocess.run([approxmc_path, dimacs_path], capture_output=True, check=True, env=my_env, timeout=3600)
            except subprocess.TimeoutExpired:
                inst_mc = None
            if inst_mc:
                last_line = output.stdout.decode('utf-8').split("\n")[-2]
                assert(last_line.startswith("s mc"))
                inst_mc = int(last_line.split(" ")[-1])
    else:
        inst_mc = None

    if count_combined:
        dimacs_path = benchmark_path + "combined_cache_cbmc.dimacs"
        content = open(dimacs_path, 'r').read()
        if "c ind" in content:
            try:
                output = subprocess.run([approxmc_path, dimacs_path], capture_output=True, check=True, env=my_env, timeout=3600)
            except subprocess.TimeoutExpired:
                combined_mc = None
            if combined_mc:
                last_line = output.stdout.decode('utf-8').split("\n")[-2]
                assert(last_line.startswith("s mc"))
                combined_mc = int(last_line.split(" ")[-1])
    else:
        combined_mc = None

    return data_mc, inst_mc, combined_mc

# print(count("issta2018-benchmarks-wu/examples/case/", os.environ))
# preprocess_one_dimacs("/home/cream/src/benchmark/quantification/blazer_array_safe/combined_cache_cbmc.dimacs", ["label_alignment_", "alignment_"])