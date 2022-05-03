void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_index;
  signed int main_res;
  signed int main_arr[128];
  unsigned int main_s_pub;
  signed int main_p_sec;
  signed int memop_var_0;
  if (!(main_p_sec == 0))
  {
$0:
*(int*)&&$1;
    main_index = (signed int) ((main_s_pub % 64u) + 64u);
    memop_var_0 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_arr[main_index]), obsv_ds_$0_0, obsv_ds_bases_size_$0_0, obsv_ds_size_$0_0);
    main_res = memop_var_0;
    goto __CPROVER_DUMP_L3;
  }

$1:
*(int*)&&$0;
  main_index = (signed int) (main_s_pub % 64u);
  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load_single_sensitive((unsigned int *) (&main_arr[main_index]), obsv_ds_$1_0, obsv_ds_bases_size_$1_0, obsv_ds_size_$1_0);
  main_res = memop_var_1;
  __CPROVER_DUMP_L3:
  ;

}

