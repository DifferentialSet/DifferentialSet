
def combine_components(config_dir):
    with open("secure_load_store_avx512.c", "r") as f:
    # with open("secure_load_store.c", "r") as f:
    # with open("secure_load_store_bulk_only.c", "r") as f:
        secure_load_store_code = f.read()
    

    with open(config_dir + "ds_macros.c", "r") as f:
        macro_defs = f.read()

    with open(config_dir + "aligned.c", "r") as f:
        aligned_program = f.read()

    transformed_aligned_program = secure_load_store_code + macro_defs + aligned_program

    with open(config_dir + "mitigated.c", "w") as f:
        f.write(transformed_aligned_program)

    from util import clean_up_code
