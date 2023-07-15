import math
import os
import re
import subprocess

from util import clean_up_code

my_env = os.environ.copy()
home_path = my_env['HOME']

benchmark_dir = "./benchmarks/quantification/"
if not os.path.exists(benchmark_dir):
    benchmark_dir = "../benchmarks/quantification/"
    if not os.path.exists(benchmark_dir):
        assert(False)

benchmark_paths = []

# Blazer benchmarks
benchmark_paths += [(benchmark_dir + "blazer_array_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_array_unsafe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_loopandbranch_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_loopandbranch_unsafe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_sanity_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_sanity_unsafe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_straightline_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_straightline_unsafe/", 1)]
### CONTAINS INSTRUCTIONS NOT SUPPORTED BY CACHEAUDIT ###
# benchmark_paths += [(benchmark_dir + "blazer_unixlogin_safe/", 1)]
# benchmark_paths += [(benchmark_dir + "blazer_unixlogin_unsafe/", 1)]
# benchmark_paths += [(benchmark_dir + "blazer_modpow1_safe/", 1)]
# benchmark_paths += [(benchmark_dir + "blazer_modpow1_unsafe/", 1)]
# benchmark_paths += [(benchmark_dir + "blazer_modpow2_safe/", 1)]
# benchmark_paths += [(benchmark_dir + "blazer_modpow2_unsafe/", 32)] # compositional
benchmark_paths += [(benchmark_dir + "blazer_passwordEq_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_passwordEq_unsafe/", 1)]
### CONTAINS INSTRUCTIONS NOT SUPPORTED BY CACHEAUDIT ###
# benchmark_paths += [(benchmark_dir + "blazer_k96_safe/", 32)] # compositional
# benchmark_paths += [(benchmark_dir + "blazer_k96_unsafe/", 32)] # compositional
# benchmark_paths += [(benchmark_dir + "blazer_gpt14_safe/", 1)]
# benchmark_paths += [(benchmark_dir + "blazer_gpt14_unsafe/", 32)] # compositional
benchmark_paths += [(benchmark_dir + "blazer_login_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_login_unsafe/", 1)]

# # RSA benchmarks
benchmark_paths += [(benchmark_dir + "RSA/square_and_multiply/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/square_and_always_multiply/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/windowed_modular_exp_libgcrypt_161/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/windowed_modular_exp_libgcrypt_163/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/scatter_gather_openssl_1.0.2f/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/defensive_gather/", 1)]

benchmark_collector = {}
for benchmark_path, compositional_multiplier in benchmark_paths:
    # extract last part of path
    benchmark_full_name = benchmark_path.split("/")[-3] + "/" + benchmark_path.split("/")[-2]
    benchmark_name = benchmark_path.split("/")[-2]
    print("Running benchmark: {}".format(benchmark_name))
    metrics_collector = {}
    benchmark_collector[benchmark_full_name] = metrics_collector

    subprocess.run(["goto-cc", "{}.c".format(benchmark_name), "-o", "main", "-I", "/usr/include/x86_64-linux-gnu/"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--transform-only", "--function", "main", "main", "transform_only_dump"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    subprocess.run(["goto-instrument", "--dump-c", "transform_only_dump", "transform_only.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    clean_up_code(benchmark_path + "transform_only.c")

    print("Building gcc4 -m32 program: {}".format(benchmark_name))
    subprocess.run(["gcc4", "-m32", "-fno-stack-protector", "-o", "out", "transform_only.c"], cwd=benchmark_path, env=my_env, check=True)
    
    print("Getting address of main: {}".format(benchmark_name))
    nm_output = subprocess.run(["nm", "out"], capture_output=True, text=True, cwd=benchmark_path, env=my_env, check=True)
    pattern = r"([0-9a-fA-F]+) T main"
    match = re.search(pattern, nm_output.stdout)
    address = int(match.group(1), 16)
    result = address - 0x08048000
    result_hex = hex(result)

    print("Running cacheaudit: {}".format(benchmark_name))
    ca_outpout = subprocess.run(["cacheaudit", "out", "--shared-cache", "--start", result_hex], capture_output=True, text=True, cwd=benchmark_path, env=my_env, check=True)
    pattern = r"whole addresses: \d+, ([\d.]+) bits"
    match = re.search(pattern, ca_outpout.stdout)
    if match:
        bits = float(match.group(1))
        metrics_collector["CC"] = bits
    else:
        pattern = r"whole addresses: (\d+) \[bit-number"
        match = re.search(pattern, ca_outpout.stdout)
        counts = int(match.group(1))
        metrics_collector["CC"] = math.log2(counts)

# beautifyl print
import json
print(json.dumps(benchmark_collector, indent=4))

metrics_file = "cacheaudit_metrics.json"

with open("./{}".format(metrics_file), "a") as f:
    f.write(json.dumps(benchmark_collector, indent=4))
    f.write("\n")