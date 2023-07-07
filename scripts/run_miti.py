#!/usr/bin/python3

import subprocess, resource, os, json
from z3_enumerate import parallel_enumerate, do_alignment
from contextlib import contextmanager
from combine import combine_components
import time
from util import clean_up_code
import datetime

now = datetime.datetime.now()

@contextmanager
def time_context(collector, item_name):
    child_usage_start = resource.getrusage(resource.RUSAGE_CHILDREN)
    self_usage_start = resource.getrusage(resource.RUSAGE_SELF)
    try:
        yield None
    finally:
        usage_end = resource.getrusage(resource.RUSAGE_CHILDREN)
        child_cpu_time = round(resource.getrusage(resource.RUSAGE_CHILDREN).ru_utime - child_usage_start.ru_utime, 2)
        self_cpu_time = round(resource.getrusage(resource.RUSAGE_SELF).ru_utime - self_usage_start.ru_utime, 2)
        collector[item_name + " TIME"] = (child_cpu_time, self_cpu_time)
        print("CPU time: {}".format((child_cpu_time, self_cpu_time)))

my_env = os.environ.copy()
home_path = "/app/benchmarks/mitigation"
# my_env["PATH"] = "/home/cream/src/DSA_github/cbmc/build_rel/bin:" + my_env["PATH"]
# my_env["PATH"] = "/home/cream/src/cbmc/build_5.62_rel/bin:" + my_env["PATH"]
my_env["PATH"] = "/home/cream/src/cbmc/aws_build/bin:/home/ubuntu/src/constantine/src/llvm-9/bin/bin:" + my_env["PATH"]
# my_env["PATH"] = "/home/ubuntu/src/cbmc/aws_build/bin:" + my_env["PATH"]

benchmark_paths = []

benchmark_dir = "/app/benchmarks/mitigation/"
if not os.path.exists(benchmark_dir):
    benchmark_dir = "/home/congm/src/DifferentialSet/benchmarks/mitigation/"


benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/aes/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/des/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/des3/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/anubis/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/cast5/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/cast6/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/fcrypt/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/chronos/khazad/"]

benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/supercop/aes_core/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/supercop/cast-ssl/"]

benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/libg/camellia/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/libg/des/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/libg/seed/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/libg/twofish/"]

benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/ghostrider/histogram/"]
benchmark_paths += [benchmark_dir + "issta2018-benchmarks-wu/examples/ghostrider/matmul/"]

benchmark_paths += [benchmark_dir + "pycrypto/src/AES/"]
benchmark_paths += [benchmark_dir + "pycrypto/src/ARC4/"]
benchmark_paths += [benchmark_dir + "pycrypto/src/Blowfish/"]
benchmark_paths += [benchmark_dir + "pycrypto/src/CAST/"]
benchmark_paths += [benchmark_dir + "pycrypto/src/DES3/"]

benchmark_paths += [benchmark_dir + "binsec/bearssl/aes_big_wrapper/"]
benchmark_paths += [benchmark_dir + "binsec/bearssl/des_tab_wrapper/"]
benchmark_paths += [benchmark_dir + "binsec/tls1_cbc_remove_padding_lucky13_wrapper/"]

benchmark_paths += [benchmark_dir + "wolfssl/"]

# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/tail_while/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/head_while/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/strlen/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/memset/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/complex/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/alias/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/two_alias/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/object_size/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/condition/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/loop_with_memop/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/play/branch/"]
# benchmark_paths += ["/home/ubuntu/src/DSA_github/benchmarks/mitigation/play/store/"]
# benchmark_paths += ["/home/ubuntu/src/DSA_github/benchmarks/mitigation/play/pub_index/"]
# benchmark_paths += ["/home/ubuntu/src/DSA_github/benchmarks/mitigation/play/offset_multi_vars/"]
# benchmark_paths += ["/home/cream/src/DSA_github/benchmarks/mitigation/issta2018-benchmarks-wu/examples/chronos/fcrypt/"]
# benchmark_paths += ["/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/"]
# benchmark_paths += ["/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/unroll_1/"]
# benchmark_paths += ["/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/test0/"]
# benchmark_paths += ["/home/cream/src/constantine/src/apps/wolfssl_case_study/wolfssl/test1/"]


import subprocess

info = subprocess.check_output("lscpu", shell=True).decode()
avx_version = "512" if "avx512" in info else ("2" if "avx2" in info else None)

import multiprocessing
n_jobs = int(multiprocessing.cpu_count()) - 3
# compiler = "gcc"
compiler = "clang"

metrics_file = "miti_metrics.json"

benchmark_collector = {}
for benchmark_path in benchmark_paths:
    # extract last part of path
    benchmark_full_name = benchmark_path.split("/")[-3] + "/" + benchmark_path.split("/")[-2]
    benchmark_name = benchmark_path.split("/")[-2]
    print("Running benchmark: {}".format(benchmark_name))
    metrics_collector = {}
    benchmark_collector[benchmark_full_name] = metrics_collector

    wall_clock_time_begin = time.time()

    print("Building goto program: {}".format(benchmark_name))
    with time_context(metrics_collector, "Building goto"):
        subprocess.run(["goto-cc", "{}.c".format(benchmark_name), "-o", "main", "-I", "/usr/include/x86_64-linux-gnu/"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Capture memops and construct constraints: {}".format(benchmark_name))
    with time_context(metrics_collector, "Analysis"):
        subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--construct-obsv-constraint", "--function", "main", "main", "captured"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Enumerate DS: {}".format(benchmark_name))
    with time_context(metrics_collector, "Enumerate DS"):
        parallel_enumerate(benchmark_path, n_jobs=n_jobs)

    print("Get transform only baseline: {}".format(benchmark_name))
    with time_context(metrics_collector, "Get transform only"):
        subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--transform-only", "--function", "main", "main", "transform_only_dump"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Replace memops with secure version: {}".format(benchmark_name))
    with time_context(metrics_collector, "Transform"):
        subprocess.run(["goto-instrument", "--config-dir", ".", "--mitigate-cache-sidechannel", "--function", "main", "captured", "instrumented"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Dump instrumented code to C: {}".format(benchmark_name))
    with time_context(metrics_collector, "Dump instrumented.c"):
        subprocess.run(["goto-instrument", "--dump-c", "instrumented", "instrumented.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Do alignment: {}".format(benchmark_name))
    with time_context(metrics_collector, "Do alignment"):
        do_alignment(benchmark_path, align_only=False, avx_version=avx_version)
    print("Dump baseline to C: {}".format(benchmark_name))
    with time_context(metrics_collector, "Dump transform only"):
        subprocess.run(["goto-instrument", "--dump-c", "transform_only_dump", "transform_only.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Compile baseline: {}".format(benchmark_name))
    with time_context(metrics_collector, "Compile transform_only"):
        clean_up_code(benchmark_path + "transform_only.c")
        subprocess.run([compiler, "-O3", "-flto", "transform_only.c", "-Wno-int-conversion", "-Wno-shift-op-parentheses", "-o", "transform_only", "-mavx2", "-march=native"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Combining instrumented.c: {}".format(benchmark_name))
    with time_context(metrics_collector, "Combine instrumented.c"):
        combine_components(benchmark_path, avx_version)
    print("Compile mitigated program: {}".format(benchmark_name))
    with time_context(metrics_collector, "Compile mitigated.c"):
        clean_up_code(benchmark_path + "mitigated.c")
        subprocess.run([compiler, "-O3", "-flto", "mitigated.c", "-Wno-int-conversion", "-Wno-shift-op-parentheses", "-o", "mitigated", "-mavx2", "-march=native"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    wall_clock_time_end = time.time()
    print("Run mitigated program: {}".format(benchmark_name))
    with time_context(metrics_collector, "Run mitigated"):
        result_mitigated = subprocess.run(["perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "2000", "./mitigated"], stdin=open("./random_input_large.txt"), capture_output=True, cwd=benchmark_path)
    print("Run baseline program: {}".format(benchmark_name))
    with time_context(metrics_collector, "Run transform_only"):
        result_baseline = subprocess.run(["perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "2000", "./transform_only"], stdin=open("./random_input_large.txt"), capture_output=True, cwd=benchmark_path)

    mitigated_cycle = int(result_mitigated.stderr.split(b",")[0])
    baseline_cycle = int(result_baseline.stderr.split(b",")[0])
    metrics_collector["mitigated_cycle"] = mitigated_cycle
    metrics_collector["baseline_cycle"] = baseline_cycle
    metrics_collector["overhead"] = (mitigated_cycle - baseline_cycle) / baseline_cycle
    print(mitigated_cycle)
    print(baseline_cycle)
    print((mitigated_cycle - baseline_cycle) / baseline_cycle)
    assert(str(result_baseline.stdout) == str(result_mitigated.stdout))

    metrics_collector["Total Time"] = sum([v[0] + v[1] for k, v in metrics_collector.items() if k.endswith("TIME")])
    metrics_collector["Wall Clock Time"] = wall_clock_time_end - wall_clock_time_begin
    with open(benchmark_path+"/{}".format(metrics_file), "a") as f:
        f.write("\n" + str(now) + "\n")    
        f.write(json.dumps(metrics_collector))


with open("./{}".format(metrics_file), "a") as f:
    f.write("\n" + str(now) + "\n")    
    f.write(json.dumps({k:(v["baseline_cycle"], v["mitigated_cycle"], v["overhead"]) for k,v in benchmark_collector.items()}))