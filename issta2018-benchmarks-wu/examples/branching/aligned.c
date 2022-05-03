void branch_id(char *str);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_d;
  signed int main_c;
  signed int main_b;
  signed int main_a;
  signed int main_A[10];
  signed int main_s3;
  signed int main_s2;
  signed int main_s1;
  signed int main_s0;
  if (main_s0 == 0)
  {
    branch_id("$1");
  }
  else
  {
    branch_id("$0");
    main_a = 42;
    if (main_s1 == 0)
    {
      branch_id("$0$1");
    }
    else
    {
      branch_id("$0$0");
      main_b = 42;
      if (!(main_s2 == 0))
      {
        branch_id("$0$0$0");
        main_c = 42;
        goto __CPROVER_DUMP_L5;
      }

      branch_id("$0$0$1");
      main_d = 42;
      __CPROVER_DUMP_L5:
      ;

      if (!(main_s2 == 0))
      {
        branch_id("$0$0$2");
        main_c = 42;
        goto __CPROVER_DUMP_L8;
      }

      branch_id("$0$0$3");
      main_d = 42;
      __CPROVER_DUMP_L8:
      ;

      if (!(main_s3 == 0))
      {
        branch_id("$0$0$4");
        main_c = 42;
        goto __CPROVER_DUMP_L11;
      }

      branch_id("$0$0$5");
      main_d = 42;
    }

  }

  __CPROVER_DUMP_L11:
  ;

}

