void branch_id(char *str);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_arr[10];
  signed int main_s2;
  signed int main_s1;
  signed int main_s0;
  if (!(main_s0 == 0))
  {
    branch_id("$0");
    uint32_t_secure_store_sensitive(0u, (unsigned int *) main_arr, obsv_ds_$0_0, obsv_ds_bases_size_$0_0, obsv_ds_size_$0_0);
    uint32_t_secure_store_sensitive(1u, (unsigned int *) (&main_arr[1]), obsv_ds_$0_1, obsv_ds_bases_size_$0_1, obsv_ds_size_$0_1);
    uint32_t_secure_store_sensitive(2u, (unsigned int *) (&main_arr[2]), obsv_ds_$0_2, obsv_ds_bases_size_$0_2, obsv_ds_size_$0_2);
    goto __CPROVER_DUMP_L3;
  }

  branch_id("$1");
  uint32_t_secure_store_sensitive(2u, (unsigned int *) (&main_arr[2]), obsv_ds_$1_0, obsv_ds_bases_size_$1_0, obsv_ds_size_$1_0);
  {
    uint32_t_secure_store_sensitive(0, 0, decoy_ds_$1_0_0, decoy_ds_bases_size_$1_0_0, decoy_ds_size_$1_0_0);
    uint32_t_secure_store_sensitive(0, 0, decoy_ds_$1_0_1, decoy_ds_bases_size_$1_0_1, decoy_ds_size_$1_0_1);
  }
  __CPROVER_DUMP_L3:
  ;

  uint32_t_secure_store(3u, (unsigned int *) (&main_arr[3]), obsv_ds__4, obsv_ds_bases_size__4, obsv_ds_size__4);
}

