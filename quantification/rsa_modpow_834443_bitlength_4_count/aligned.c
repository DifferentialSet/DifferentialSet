typedef unsigned int uint32_t;
void branch_id(char *str);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  uint32_t main_final_count;
  uint32_t main_tmp;
  uint32_t main_count;
  uint32_t main_res;
  uint32_t main_y;
  uint32_t main_s;
  uint32_t main_m;
  uint32_t main_e;
  uint32_t main_num;
  main_s = 1u;
  main_y = main_num;
  main_res = 0u;
  main_count = 0u;
  main_m = 834443u;
  if ((main_e % 2u) == 1u)
  {
    branch_id("$0");
    main_tmp = main_s * main_y;
    main_count = main_count + 1u;
    if (main_m >= main_tmp)
    {
      branch_id("$0$1");
    }
    else
    {
      branch_id("$0$0");
      main_tmp = main_tmp - main_m;
      main_count = main_count + 1u;
    }

    main_res = main_tmp % main_m;
    main_count = main_count + 1u;
    goto __CPROVER_DUMP_L5;
  }

  branch_id("$1");
  main_res = main_s;
  main_count = main_count + 1u;
  __CPROVER_DUMP_L5:
  ;

  main_s = (main_res * main_res) % main_m;
  main_e = main_e / 2u;
  main_count = main_count + 1u;
  if ((main_e % 2u) == 1u)
  {
    branch_id("$2");
    main_tmp = main_s * main_y;
    main_count = main_count + 1u;
    if (main_m >= main_tmp)
    {
      branch_id("$2$1");
    }
    else
    {
      branch_id("$2$0");
      main_tmp = main_tmp - main_m;
      main_count = main_count + 1u;
    }

    main_res = main_tmp % main_m;
    main_count = main_count + 1u;
    goto __CPROVER_DUMP_L10;
  }

  branch_id("$3");
  main_res = main_s;
  main_count = main_count + 1u;
  __CPROVER_DUMP_L10:
  ;

  main_s = (main_res * main_res) % main_m;
  main_e = main_e / 2u;
  main_count = main_count + 1u;
  if ((main_e % 2u) == 1u)
  {
    branch_id("$4");
    main_tmp = main_s * main_y;
    main_count = main_count + 1u;
    if (main_m >= main_tmp)
    {
      branch_id("$4$1");
    }
    else
    {
      branch_id("$4$0");
      main_tmp = main_tmp - main_m;
      main_count = main_count + 1u;
    }

    main_res = main_tmp % main_m;
    main_count = main_count + 1u;
    goto __CPROVER_DUMP_L15;
  }

  branch_id("$5");
  main_res = main_s;
  main_count = main_count + 1u;
  __CPROVER_DUMP_L15:
  ;

  main_s = (main_res * main_res) % main_m;
  main_e = main_e / 2u;
  main_count = main_count + 1u;
  if ((main_e % 2u) == 1u)
  {
    branch_id("$6");
    main_tmp = main_s * main_y;
    main_count = main_count + 1u;
    if (main_m >= main_tmp)
    {
      branch_id("$6$1");
    }
    else
    {
      branch_id("$6$0");
      main_tmp = main_tmp - main_m;
      main_count = main_count + 1u;
    }

    main_res = main_tmp % main_m;
    main_count = main_count + 1u;
    goto __CPROVER_DUMP_L20;
  }

  branch_id("$7");
  main_res = main_s;
  main_count = main_count + 1u;
  __CPROVER_DUMP_L20:
  ;

  main_s = (main_res * main_res) % main_m;
  main_e = main_e / 2u;
  main_count = main_count + 1u;
  main_final_count = main_count;
}

