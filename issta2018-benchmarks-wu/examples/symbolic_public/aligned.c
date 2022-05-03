void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_result;
  signed int *main_p;
  signed int main_b[50];
  signed int main_a[100];
  signed int main_y_pub;
  signed int main_x_pub;
  signed int main_y;
  signed int main_x;
  if (!(main_x_pub == 0))
  {
    main_p = main_a;
    goto __CPROVER_DUMP_L3;
  }

  main_p = main_b;
  __CPROVER_DUMP_L3:
  ;

  signed int memop_var_0;
  memop_var_0 = uint32_t_secure_load((unsigned int *) (&main_p[main_y_pub]), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  main_result = main_result + memop_var_0;
  if (!(main_x_pub == 0))
  {
    main_p = main_a;
    goto __CPROVER_DUMP_L6;
  }

  main_p = main_b;
  __CPROVER_DUMP_L6:
  ;

  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load((unsigned int *) (&main_p[main_y]), obsv_ds__1, obsv_ds_bases_size__1, obsv_ds_size__1);
  main_result = main_result + memop_var_1;
  if (!(main_x == 0))
  {
$4:
*(int*)&&$5;
    main_p = main_a;
    goto __CPROVER_DUMP_L9;
  }

$5:
*(int*)&&$4;
  main_p = main_b;
  __CPROVER_DUMP_L9:
  ;

  signed int memop_var_2;
  memop_var_2 = uint32_t_secure_load((unsigned int *) (&main_p[main_y_pub]), obsv_ds__2, obsv_ds_bases_size__2, obsv_ds_size__2);
  main_result = main_result + memop_var_2;
  if (!(main_x == 0))
  {
$6:
*(int*)&&$7;
    main_p = main_a;
    goto __CPROVER_DUMP_L12;
  }

$7:
*(int*)&&$6;
  main_p = main_b;
  __CPROVER_DUMP_L12:
  ;

  signed int memop_var_3;
  memop_var_3 = uint32_t_secure_load((unsigned int *) (&main_p[main_y]), obsv_ds__3, obsv_ds_bases_size__3, obsv_ds_size__3);
  main_result = main_result + memop_var_3;
}

