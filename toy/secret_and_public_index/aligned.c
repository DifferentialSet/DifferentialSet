void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_res1;
  signed int main_res0;
  signed int main_arr[16][16];
  signed int main_s_sec;
  signed int main_p_pub;
  signed int memop_var_0;
  memop_var_0 = uint32_t_secure_load_onebase((unsigned int *) (&main_arr[main_s_sec][main_p_pub]), (char *) main_arr, 0, 256, 0, 0, 1020, obsv_ds_bases_size__0, obsv_ds_size__0);
  main_res0 = memop_var_0;
  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load_onebase((unsigned int *) (&main_arr[main_p_pub][main_s_sec]), (char *) main_arr, 0, 256, 0, 0, 1020, obsv_ds_bases_size__1, obsv_ds_size__1);
  main_res1 = memop_var_1;
}

