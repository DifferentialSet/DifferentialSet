import subprocess, resource, os, json
from z3_enumerate import parallel_enumerate, do_alignment
from contextlib import contextmanager
from combine import combine_components
import time



@contextmanager
def time_context(collector, item_name):
    # with open('/proc/{}/clear_refs'.format(os.getpid()), 'w') as p:
    #   # Reset the peak resident set size
    #   print(5, file=p)
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
# my_env["PATH"] = "/home/cream/src/cbmc/build/bin:" + my_env["PATH"]
my_env["PATH"] = "/home/ubuntu/src/cbmc/aws_build/bin:" + my_env["PATH"]

benchmark_paths = []
# benchmark_paths += ["/home/ubuntu/toy/khazad/"]
# benchmark_paths += ["/home/ubuntu/src/benchmark/issta2018-benchmarks-wu/examples/toy/"]
# # benchmark_paths += ["/home/cream/src/constantine/src/apps/issta2018-benchmarks-wu/examples/toy/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/aes/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/des/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/des3/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/anubis/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/cast5/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/cast6/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/fcrypt/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/khazad/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/twofish/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/supercop/aes_core/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/supercop/cast-ssl/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/camellia/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/des/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/seed/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/twofish/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/histogram/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/matmul/"]


# benchmark_paths += ["pycrypto/src/AES/"]
# benchmark_paths += ["pycrypto/src/ARC4/"]
benchmark_paths += ["pycrypto/src/Blowfish/"]
# benchmark_paths += ["pycrypto/src/CAST/"]
# benchmark_paths += ["pycrypto/src/DES3/"]



#######################
# benchmarks with sensitive branches

# benchmark_paths += ["binsec/tls1_cbc_remove_padding_lucky13_wrapper/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/appliedCryp/3way/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/appliedCryp/des/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/appliedCryp/loki91/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/binsearch/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/dijkstra/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/findmax/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/rsort/"]





##############################

# benchmark_paths += ["issta2018-benchmarks-wu/examples/case/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/memcpy/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/alignment/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/sorting2/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/RSA/square_and_always_multiply/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/RSA/windowed_modular_exp_libgcrypt_161/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/RSA/scatter_gather_libgcrypt161/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/RSA/defensive_gather/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/cacheaudit_aes/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/branching/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/union/"]
# benchmark_paths += ["/home/cream/toy/label/"]

# benchmark_paths += ["issta2018-benchmarks-wu/examples/symbolic_public/"]





# benchmark_paths = ["/home/ubuntu/src/libgcrypt/test/"]
# benchmark_paths = ["issta2018-benchmarks-wu/examples/pub_across_func/"]
# benchmark_paths = ["issta2018-benchmarks-wu/examples/dependency_tree/"]


# MaxLeak benchmarks
# for bitlength in [3,4,5,6,7]:
#     for e in ["1717", "834443", "1964903306"]:
#         benchmark_paths.append("quantification/rsa_modpow_{}_bitlength_{}_count/".format(e, bitlength))

# Blazer benchmarks
# benchmark_paths += ["quantification/blazer_array_safe/"]
# benchmark_paths += ["quantification/blazer_array_unsafe/"]
# benchmark_paths += ["quantification/blazer_loopandbranch_safe/"]
# benchmark_paths += ["quantification/blazer_loopandbranch_unsafe/"]
# benchmark_paths += ["quantification/blazer_sanity_safe/"]
# benchmark_paths += ["quantification/blazer_sanity_unsafe/"]
# benchmark_paths += ["quantification/blazer_straightline_safe/"]
# benchmark_paths += ["quantification/blazer_straightline_unsafe/"]
# benchmark_paths += ["quantification/blazer_unixlogin_safe/"]
# benchmark_paths += ["quantification/blazer_unixlogin_unsafe/"]
# benchmark_paths += ["quantification/blazer_modpow1_safe/"]
# benchmark_paths += ["quantification/blazer_modpow1_unsafe/"]
# benchmark_paths += ["quantification/blazer_modpow2_safe/"]
# benchmark_paths += ["quantification/blazer_modpow2_unsafe/"]
# benchmark_paths += ["quantification/blazer_passwordEq_safe/"]
# benchmark_paths += ["quantification/blazer_passwordEq_unsafe/"]
# benchmark_paths += ["quantification/blazer_k96_safe/"]
# benchmark_paths += ["quantification/blazer_k96_unsafe/"]
# benchmark_paths += ["quantification/blazer_gpt14_safe/"]
# benchmark_paths += ["quantification/blazer_gpt14_unsafe/"]
# benchmark_paths += ["quantification/blazer_login_safe/"]
# benchmark_paths += ["quantification/blazer_login_unsafe/"]

# RSA benchmarks
# benchmark_paths += ["quantification/RSA/square_and_multiply/"]
# benchmark_paths += ["quantification/RSA/square_and_always_multiply/"]
# benchmark_paths += ["quantification/RSA/windowed_modular_exp_libgcrypt_161/"]
# benchmark_paths += ["quantification/RSA/windowed_modular_exp_libgcrypt_163/"]
# benchmark_paths += ["quantification/RSA/scatter_gather_openssl_1.0.2f/"]
# benchmark_paths += ["quantification/RSA/defensive_gather/"]

do_quantification = False
n_jobs = 96
# compiler = "/home/ubuntu/src/constantine/src/llvm-9/bin/bin/clang-9"
compiler = "clang-12"

if do_quantification:
    metrics_file = "quant_metrics.json"
else:
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
    try:
        # print("Building goto program: {}".format(benchmark_name))
        # with time_context(metrics_collector, "Building goto"):
        #     subprocess.run(["goto-cc", "{}.c".format(benchmark_name), "-o", "main", "-m32", "-I", "/usr/include/x86_64-linux-gnu/"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
        # print("Capture memops and construct constraints: {}".format(benchmark_name))
        # with time_context(metrics_collector, "Analysis"):
        #     subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--construct-obsv-constraint", "--function", "main", "main", "captured"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
        # print("Enumerate DS: {}".format(benchmark_name))
        # with time_context(metrics_collector, "Enumerate DS"):
        #     parallel_enumerate(benchmark_path, n_jobs=n_jobs)
        if not do_quantification:
            # print("Get transform only baseline: {}".format(benchmark_name))
            # with time_context(metrics_collector, "Get transform only"):
            #     subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--transform-only", "--function", "main", "main", "transform_only"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
            # print("Dump baseline to C: {}".format(benchmark_name))
            # with time_context(metrics_collector, "Dump transform only"):
            #     subprocess.run(["goto-instrument", "--dump-c", "transform_only", "transform_only.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
            # print("Replace memops with secure version: {}".format(benchmark_name))
            # with time_context(metrics_collector, "Transform"):
            #     subprocess.run(["goto-instrument", "--config-dir", ".", "--mitigate-cache-sidechannel", "--function", "main", "captured", "instrumented"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
            # print("Dump instrumented code to C: {}".format(benchmark_name))
            # with time_context(metrics_collector, "Dump instrumented.c"):
            #     subprocess.run(["goto-instrument", "--dump-c", "instrumented", "instrumented.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
            # print("Do alignment: {}".format(benchmark_name))
            # with time_context(metrics_collector, "Do alignment"):
            #     do_alignment(benchmark_path, align_only=do_quantification)
            # print("Combining instrumented.c: {}".format(benchmark_name))
            # with time_context(metrics_collector, "Combine instrumented.c"):
            #     combine_components(benchmark_path)
            print("Compile baseline: {}".format(benchmark_name))
            with time_context(metrics_collector, "Compile transform_only"):
                from util import clean_up_code
                clean_up_code(benchmark_path + "transform_only.c")
                subprocess.run([compiler, "-O3", "transform_only.c", "-Wno-int-conversion", "-Wno-shift-op-parentheses", "-o", "transform_only", "-march=native"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
            print("Compile mitigated program: {}".format(benchmark_name))
            with time_context(metrics_collector, "Compile mitigated.c"):
                subprocess.run([compiler, "-O3", "mitigated.c", "-Wno-int-conversion", "-Wno-shift-op-parentheses", "-o", "mitigated", "-march=native"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)

            wall_clock_time_end = time.time()
            print("Run mitigated program: {}".format(benchmark_name))
            with time_context(metrics_collector, "Run mitigated"):
                # result_mitigated = subprocess.run(["sudo", "cset", "shield", "--exec", "--", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "100", "./mitigated"], stdin=open("issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)
                result_mitigated = subprocess.run(["taskset", "-c", "3", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "2000", "./mitigated"], stdin=open(home_path+"/src/benchmark/issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)
            print("Run baseline program: {}".format(benchmark_name))
            with time_context(metrics_collector, "Run transform_only"):
                # result_baseline = subprocess.run(["sudo", "cset", "shield", "--exec", "--", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "100", "./transform_only"], stdin=open("issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)
                result_baseline = subprocess.run(["taskset", "-c", "3", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "2000", "./transform_only"], stdin=open(home_path+"/src/benchmark/issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)

            mitigated_cycle = int(result_mitigated.stderr.split(b",")[0])
            baseline_cycle = int(result_baseline.stderr.split(b",")[0])
            metrics_collector["mitigated_cycle"] = mitigated_cycle
            metrics_collector["baseline_cycle"] = baseline_cycle
            metrics_collector["overhead"] = (mitigated_cycle - baseline_cycle) / baseline_cycle
            print((mitigated_cycle - baseline_cycle) / baseline_cycle)
            # print(str(result_baseline.stdout), "\n", str(result_mitigated.stdout))
            assert(str(result_baseline.stdout) == str(result_mitigated.stdout))

        if do_quantification:
            print("Do alignment: {}".format(benchmark_name))
            with time_context(metrics_collector, "Do alignment"):
                do_alignment(benchmark_path, align_only=do_quantification)
            print("Generate DIMACS for counting: {}".format(benchmark_name))
            with time_context(metrics_collector, "Generate DIMACS"):
                subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--construct-obsv-constraint", "--to-dimacs", "--function", "main", "main", "captured"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
                from count_cc import preprocess_dimacs
                preprocess_dimacs(benchmark_path)

            print("Counting CC: {}".format(benchmark_name))
            with time_context(metrics_collector, "Counting CC"):
                from count_cc import count
                c = count(benchmark_path, my_env)
                print(c)
                metrics_collector["CC"] = c
            wall_clock_time_end = time.time()

        metrics_collector["Total Time"] = sum([v[0] + v[1] for k, v in metrics_collector.items() if k.endswith("TIME")])
        metrics_collector["Wall Clock Time"] = wall_clock_time_end - wall_clock_time_begin
        with open(benchmark_path+"/{}".format(metrics_file), "a") as f:
            f.write(json.dumps(metrics_collector))
        with open("./{}".format(metrics_file), "a") as f:
            f.write(json.dumps(benchmark_collector))

    except Exception as e:
        raise(e)
        print("{}: {}".format(str(e), benchmark_name))
        metrics_collector["error"] = True



with open("./{}".format(metrics_file), "w") as f:
    f.write(json.dumps(benchmark_collector))