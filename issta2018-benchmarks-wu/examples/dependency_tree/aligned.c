void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int *main_p;
  signed int main_e;
  signed int main_d;
  signed int main_c;
  signed int main_b;
  signed int main_a;
  main_p = &main_e;
  if (main_a == 0)
  {
$1:
*(int*)&&$0;
  }
  else
  {
$0:
*(int*)&&$1;
    main_p = &main_a;
    if (main_b == 0)
    {
$0$1:
*(int*)&&$0$0;
    }
    else
    {
$0$0:
*(int*)&&$0$1;
      main_p = &main_b;
      if (main_c == 0)
      {
$0$0$1:
*(int*)&&$0$0$0;
      }
      else
      {
$0$0$0:
*(int*)&&$0$0$1;
        main_p = &main_c;
      }

    }

  }

  signed int memop_var_0;
  memop_var_0 = uint32_t_secure_load((unsigned int *) (&(*main_p)), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  uint32_t_secure_store((unsigned int) (memop_var_0 + 1), (unsigned int *) (&(*main_p)), obsv_ds__1, obsv_ds_bases_size__1, obsv_ds_size__1);
}

