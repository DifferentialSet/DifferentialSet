#!/usr/bin/python3

import subprocess, resource, os, json
from z3_enumerate import parallel_enumerate, do_alignment
from contextlib import contextmanager
from combine import combine_components
import datetime
import time


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
benchmark_paths += [(benchmark_dir + "blazer_unixlogin_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_unixlogin_unsafe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_modpow1_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_modpow1_unsafe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_modpow2_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_modpow2_unsafe/", 32)] # compositional
benchmark_paths += [(benchmark_dir + "blazer_passwordEq_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_passwordEq_unsafe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_k96_safe/", 32)] # compositional
benchmark_paths += [(benchmark_dir + "blazer_k96_unsafe/", 32)] # compositional
benchmark_paths += [(benchmark_dir + "blazer_gpt14_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_gpt14_unsafe/", 32)] # compositional
benchmark_paths += [(benchmark_dir + "blazer_login_safe/", 1)]
benchmark_paths += [(benchmark_dir + "blazer_login_unsafe/", 1)]

# # # RSA benchmarks
benchmark_paths += [(benchmark_dir + "RSA/square_and_multiply/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/square_and_always_multiply/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/windowed_modular_exp_libgcrypt_161/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/windowed_modular_exp_libgcrypt_163/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/scatter_gather_openssl_1.0.2f/", 1)]
benchmark_paths += [(benchmark_dir + "RSA/defensive_gather/", 1)]

import multiprocessing
n_jobs = multiprocessing.cpu_count() - 1

metrics_file = "quant_metrics.json"

benchmark_collector = {}
for benchmark_path, compositional_multiplier in benchmark_paths:
    try:
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

        print("Do alignment: {}".format(benchmark_name))
        with time_context(metrics_collector, "Do alignment"):
            do_alignment(benchmark_path, align_only=True)
        print("Generate DIMACS for counting: {}".format(benchmark_name))
        with time_context(metrics_collector, "Generate DIMACS"):
            subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--construct-obsv-constraint", "--to-dimacs", "--function", "main", "main", "captured"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
            from count_cc import preprocess_dimacs
            preprocess_dimacs(benchmark_path, n_jobs, filter=False)

        print("Counting CC: {}".format(benchmark_name))
        with time_context(metrics_collector, "Counting CC"):
            from count_cc import count, get_secret_size
            dimacs_path = benchmark_path + "combined_cache_cbmc.dimacs"
            f = open(dimacs_path, 'r')
            # get last line
            last_line = f.readlines()[-1]
            if "c ind  0" in last_line:
                count = 0
            else:
                count = count(dimacs_path, my_env)
            secret_size = get_secret_size(dimacs_path)
            import math
            if count == 0:
                metrics_collector["CC"] = "0"
            elif secret_size < math.log(count, 2) * compositional_multiplier:
                metrics_collector["CC"] = "{}".format(secret_size)
            elif compositional_multiplier != 1:
                metrics_collector["CC"] = "log({}) * {}".format(count, compositional_multiplier)
            else:
                metrics_collector["CC"] = "log({})".format(count)
            print(metrics_collector["CC"])
        wall_clock_time_end = time.time()

        metrics_collector["Total Time"] = sum([v[0] + v[1] for k, v in metrics_collector.items() if k.endswith("TIME")])
        metrics_collector["Wall Clock Time"] = wall_clock_time_end - wall_clock_time_begin
    except Exception as e:
        import traceback
        tb = traceback.format_exc()
        print(tb)
        metrics_collector["Exception"] = tb
    with open(benchmark_path+"/{}".format(metrics_file), "a") as f:
        f.write(json.dumps(metrics_collector))
        f.write("\n")
    with open("./{}".format("debug_" + metrics_file), "a") as f:
        f.write("\n" + str(datetime.datetime.now()) + benchmark_name + "\n")  
        f.write(json.dumps(metrics_collector))
print(json.dumps(benchmark_collector, indent=4))


with open("./{}".format(metrics_file), "a") as f:
    f.write(json.dumps(benchmark_collector, indent=4))
    f.write("\n")