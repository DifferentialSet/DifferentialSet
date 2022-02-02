import subprocess, resource, os, json
from z3_enumerate_old import parallel_enumerate, do_alignment
from contextlib import contextmanager
from combine import combine_components

# #define SECURE_LOAD_OR_STORE(type) type ## secure_load(type *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     return *address;
#   }
#   type **ds=(type **)ds_void;
#   type ret_val;
#   #pragma clang loop vectorize(enable) interleave(enable)
#   for(unsigned i = 0; i < ds_size; i++)
#     ret_val = ds[i] == address ? *ds[i] : ret_val;
#   return ret_val;
# }


# void secure_store_32(uint32_t val, uint32_t *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     *address = val;
#     return;
#   }
#   uint32_t **ds=(uint32_t **)ds_void;
#   #pragma clang loop interleave(enable) vectorize(assume_safety)
#   for(unsigned i = 0; i < ds_size; i++)
#     *ds[i] = (*ds[i] & (unsigned)(-(ds[i] != address))) + (val & (unsigned)(-(ds[i] == address)));
# }

# uint32_t secure_load_32(uint32_t *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     return *address;
#   }
#   uint32_t **ds=(uint32_t **)ds_void;
#   uint32_t ret_val = 0;
#   #pragma clang loop vectorize(enable) interleave(enable)
#   for(unsigned i = 0; i < ds_size; i++)
#     ret_val += *ds[i] & (unsigned)(-(ds[i] == address));
#   return ret_val;
# }

# void secure_store_16(uint16_t val, uint16_t *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     *address = val;
#     return;
#   }
#   uint16_t **ds=(uint16_t **)ds_void;
#   #pragma clang loop interleave(enable) vectorize(assume_safety)
#   for(unsigned i = 0; i < ds_size; i++)
#     *ds[i] = (*ds[i] & (unsigned)(-(ds[i] != address))) + (val & (unsigned)(-(ds[i] == address)));
# }

# uint16_t secure_load_16(uint16_t *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     return *address;
#   }
#   uint16_t **ds=(uint16_t **)ds_void;
#   uint16_t ret_val = 0;
#   #pragma clang loop vectorize(enable) interleave(enable)
#   for(unsigned i = 0; i < ds_size; i++)
#     ret_val += *ds[i] & (unsigned)(-(ds[i] == address));
#   return ret_val;
# }

# void secure_store_8(uint8_t val, uint8_t *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     *address = val;
#     return;
#   }
#   uint8_t **ds=(uint8_t **)ds_void;
#   #pragma clang loop interleave(enable) vectorize(assume_safety)
#   for(unsigned i = 0; i < ds_size; i++)
#     *ds[i] = (*ds[i] & (unsigned)(-(ds[i] != address))) + (val & (unsigned)(-(ds[i] == address)));
# }

# uint8_t secure_load_8(uint8_t *address, void **ds_void, uint32_t ds_size)
# {
#   if (ds_size == 1 && address) {
#     // This is for compiler optimizer to remove the function
#     return *address;
#   }
#   uint8_t **ds=(uint8_t **)ds_void;
#   uint8_t ret_val = 0;
#   #pragma clang loop vectorize(enable) interleave(enable)
#   for(unsigned i = 0; i < ds_size; i++)
#     ret_val += *ds[i] & (unsigned)(-(ds[i] == address));
#   return ret_val;
# }



@contextmanager
def time(collector, item_name):
    # with open('/proc/{}/clear_refs'.format(os.getpid()), 'w') as p:
    #   # Reset the peak resident set size
    #   print(5, file=p)
    usage_start = resource.getrusage(resource.RUSAGE_CHILDREN)
    try:
        yield None
    finally:
        usage_end = resource.getrusage(resource.RUSAGE_CHILDREN)
        cpu_time = round(usage_end.ru_utime - usage_start.ru_utime, 2)
        collector[item_name] = cpu_time
        print("CPU time: {}".format(cpu_time))

my_env = os.environ.copy()
home_path = my_env['HOME']
# my_env["PATH"] = "/home/cream/src/cbmc/build/bin:" + my_env["PATH"]
my_env["PATH"] = "/home/ubuntu/src/cbmc/aws_build/bin:" + my_env["PATH"]

benchmark_paths = []
# benchmark_paths += ["/home/ubuntu/toy/khazad/"]
benchmark_paths += [home_path+"/toy/cast5/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/appliedCryp/3way/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/appliedCryp/des/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/appliedCryp/loki91/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/aes/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/anubis/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/cast5/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/cast6/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/des/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/des3/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/fcrypt/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/khazad/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/chronos/twofish/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/Felics/LBlock/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/Felics/LED/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/Felics/Piccolo/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/Felics/PRESENT/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/Felics/TWINE_encrypt/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/camellia/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/des/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/seed/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/libg/twofish/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/binsearch/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/dijkstra/"] # symex takes a long time
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/findmax/"]
# benchmark_paths += ["issta2018-benchmarks-wu/examples/ghostrider/histogram/"]
# benchmark_paths += ["pycrypto/src/Blowfish/"]

benchmark_collector = {}
for benchmark_path in benchmark_paths:
    # extract last part of path
    benchmark_full_name = benchmark_path.split("/")[-3] + "/" + benchmark_path.split("/")[-2]
    benchmark_name = benchmark_path.split("/")[-2]
    print("Running benchmark: {}".format(benchmark_name))
    time_collector = {}
    benchmark_collector[benchmark_full_name] = time_collector

    # print("Building goto program: {}".format(benchmark_name))
    # with time(time_collector, "Building goto"):
    #     subprocess.run(["goto-cc", "{}.c".format(benchmark_name), "-o", "main", "-m32"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    # print("Get transform only baseline: {}".format(benchmark_name))
    # with time(time_collector, "Get transform only"):
    #     subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--transform-only", "--function", "main", "main", "transform_only"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    # print("Dump baseline to C: {}".format(benchmark_name))
    # with time(time_collector, "Dump transform only"):
    #     subprocess.run(["goto-instrument", "--dump-c", "transform_only", "transform_only.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    # print("Capture memops and construct constraints: {}".format(benchmark_name))
    # with time(time_collector, "Analysis"):
    #     subprocess.run(["goto-instrument", "--config-dir", ".", "--capture-mem-ops", "--construct-obsv-constraint", "--function", "main", "main", "captured"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    # print("Replace memops with secure version: {}".format(benchmark_name))
    # with time(time_collector, "Transform"):
    #     subprocess.run(["goto-instrument", "--config-dir", ".", "--mitigate-cache-sidechannel", "--function", "main", "captured", "instrumented"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    # print("Dump instrumented code to C: {}".format(benchmark_name))
    # with time(time_collector, "Dump instrumented.c"):
    #     subprocess.run(["goto-instrument", "--dump-c", "instrumented", "instrumented.c"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    # print("Enumerate DS: {}".format(benchmark_name))
    # with time(time_collector, "Enumerate DS"):
    #     parallel_enumerate(benchmark_path, n_jobs=4)
    # print("Do alignment: {}".format(benchmark_name))
    # with time(time_collector, "Do alignment"):
    #     do_alignment(benchmark_path)
    print("Combining instrumented.c: {}".format(benchmark_name))
    with time(time_collector, "Combine instrumented.c"):
        combine_components(benchmark_path)
    print("Compile baseline: {}".format(benchmark_name))
    with time(time_collector, "Compile transform_only"):
        subprocess.run(["clang-12", "-m32", "-O3", "transform_only.c", "-Wno-int-conversion", "-Wno-shift-op-parentheses", "-o", "transform_only", "-march=skylake"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)
    print("Compile mitigated program: {}".format(benchmark_name))
    with time(time_collector, "Compile mitigated.c"):
        subprocess.run(["clang-12", "-m32", "-O3", "mitigated.c", "-Wno-int-conversion", "-Wno-shift-op-parentheses", "-o", "mitigated", "-march=skylake"], capture_output=True, cwd=benchmark_path, check=True, env=my_env)


    print("Run mitigated program: {}".format(benchmark_name))
    with time(time_collector, "Run mitigated"):
        # result_mitigated = subprocess.run(["sudo", "cset", "shield", "--exec", "--", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "100", "./mitigated"], stdin=open("issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)
        result_mitigated = subprocess.run(["cset", "shield", "--exec", "--", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "100", "./mitigated"], stdin=open(home_path+"/src/benchmark/issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)
    print("Run baseline program: {}".format(benchmark_name))
    with time(time_collector, "Run transform_only"):
        # result_baseline = subprocess.run(["sudo", "cset", "shield", "--exec", "--", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "100", "./transform_only"], stdin=open("issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)
        result_baseline = subprocess.run(["cset", "shield", "--exec", "--", "perf", "stat", "-e", "cpu-cycles:u", "-x", ",", "-r", "100", "./transform_only"], stdin=open(home_path+"/src/benchmark/issta2018-benchmarks-wu/random_input.txt"), capture_output=True, cwd=benchmark_path)

    with open("./metrics.json", "w") as f:
        f.write(json.dumps(benchmark_collector))
    mitigated_cycle = int(result_mitigated.stderr.split(b",")[0])
    baseline_cycle = int(result_baseline.stderr.split(b",")[0])
    print((mitigated_cycle - baseline_cycle) / baseline_cycle)
    time_collector["overhead"] = (mitigated_cycle - baseline_cycle) / baseline_cycle
    assert(str(result_baseline.stdout).split("\\n")[3] == str(result_mitigated.stdout).split("\\n")[3])

with open("./metrics.json", "w") as f:
    f.write(json.dumps(benchmark_collector))