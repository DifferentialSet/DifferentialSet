void branch_id(char *str);
unsigned char uint8_t_secure_load(unsigned char *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_i;
  _Bool main_matches;
  _Bool main_unused;
  char main_guess_pub[16];
  char main_real_password[16];
  main_matches = 1;
  main_i = 0;
  char memop_var_0;
  char memop_var_1;
  if (!(main_i >= 16))
  {
    memop_var_0 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0_0, obsv_ds_bases_size_$1$0_0, obsv_ds_size_$1$0_0);
    memop_var_1 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0_1, obsv_ds_bases_size_$1$0_1, obsv_ds_size_$1$0_1);
    if (!(memop_var_0 == memop_var_1))
    {
$1$0$0:
*(volatile int*)&&$1$0$1;
      return 0;
    }

$1$0$1:
*(volatile int*)&&$1$0$0;
    goto __CPROVER_DUMP_L7;
  }

  return 0;
  __CPROVER_DUMP_L7:
  ;

  main_i = main_i + 1;
  char memop_var_2;
  char memop_var_3;
  if (!(main_i >= 16))
  {
$1$0$1$0:
*(volatile int*)&&$1$0$1$1;
    memop_var_2 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0_2, obsv_ds_bases_size_$1$0$1$0_2, obsv_ds_size_$1$0$1$0_2);
    memop_var_3 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0_3, obsv_ds_bases_size_$1$0$1$0_3, obsv_ds_size_$1$0$1$0_3);
    if (!(memop_var_2 == memop_var_3))
    {
$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$0;
    goto __CPROVER_DUMP_L12;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$1__0, decoy_ds_size_$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$1__1, decoy_ds_size_$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$1__2, decoy_ds_size_$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$1__3, decoy_ds_size_$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$1__4, decoy_ds_size_$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$1__5, decoy_ds_size_$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$1__6, decoy_ds_size_$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$1__7, decoy_ds_size_$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$1__8, decoy_ds_size_$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$1__9, decoy_ds_size_$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$1__10, decoy_ds_size_$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$1__11, decoy_ds_size_$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$1__12, decoy_ds_size_$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$1__13, decoy_ds_size_$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$1__14, decoy_ds_size_$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$1__15, decoy_ds_size_$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$1__16, decoy_ds_size_$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$1__17, decoy_ds_size_$1$0$1$1__17);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__18, decoy_ds_bases_size_$1$0$1$1__18, decoy_ds_size_$1$0$1$1__18);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__19, decoy_ds_bases_size_$1$0$1$1__19, decoy_ds_size_$1$0$1$1__19);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__20, decoy_ds_bases_size_$1$0$1$1__20, decoy_ds_size_$1$0$1$1__20);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__21, decoy_ds_bases_size_$1$0$1$1__21, decoy_ds_size_$1$0$1$1__21);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__22, decoy_ds_bases_size_$1$0$1$1__22, decoy_ds_size_$1$0$1$1__22);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__23, decoy_ds_bases_size_$1$0$1$1__23, decoy_ds_size_$1$0$1$1__23);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__24, decoy_ds_bases_size_$1$0$1$1__24, decoy_ds_size_$1$0$1$1__24);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__25, decoy_ds_bases_size_$1$0$1$1__25, decoy_ds_size_$1$0$1$1__25);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__26, decoy_ds_bases_size_$1$0$1$1__26, decoy_ds_size_$1$0$1$1__26);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__27, decoy_ds_bases_size_$1$0$1$1__27, decoy_ds_size_$1$0$1$1__27);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__28, decoy_ds_bases_size_$1$0$1$1__28, decoy_ds_size_$1$0$1$1__28);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$1__29, decoy_ds_bases_size_$1$0$1$1__29, decoy_ds_size_$1$0$1$1__29);
  }
  return 0;
  __CPROVER_DUMP_L12:
  ;

  main_i = main_i + 1;
  char memop_var_4;
  char memop_var_5;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$1;
    memop_var_4 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0_4, obsv_ds_bases_size_$1$0$1$0$1$0_4, obsv_ds_size_$1$0$1$0$1$0_4);
    memop_var_5 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0_5, obsv_ds_bases_size_$1$0$1$0$1$0_5, obsv_ds_size_$1$0$1$0$1$0_5);
    if (!(memop_var_4 == memop_var_5))
    {
$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L17;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$0$1$1__16, decoy_ds_size_$1$0$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$0$1$1__17, decoy_ds_size_$1$0$1$0$1$1__17);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__18, decoy_ds_bases_size_$1$0$1$0$1$1__18, decoy_ds_size_$1$0$1$0$1$1__18);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__19, decoy_ds_bases_size_$1$0$1$0$1$1__19, decoy_ds_size_$1$0$1$0$1$1__19);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__20, decoy_ds_bases_size_$1$0$1$0$1$1__20, decoy_ds_size_$1$0$1$0$1$1__20);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__21, decoy_ds_bases_size_$1$0$1$0$1$1__21, decoy_ds_size_$1$0$1$0$1$1__21);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__22, decoy_ds_bases_size_$1$0$1$0$1$1__22, decoy_ds_size_$1$0$1$0$1$1__22);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__23, decoy_ds_bases_size_$1$0$1$0$1$1__23, decoy_ds_size_$1$0$1$0$1$1__23);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__24, decoy_ds_bases_size_$1$0$1$0$1$1__24, decoy_ds_size_$1$0$1$0$1$1__24);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__25, decoy_ds_bases_size_$1$0$1$0$1$1__25, decoy_ds_size_$1$0$1$0$1$1__25);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__26, decoy_ds_bases_size_$1$0$1$0$1$1__26, decoy_ds_size_$1$0$1$0$1$1__26);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$1__27, decoy_ds_bases_size_$1$0$1$0$1$1__27, decoy_ds_size_$1$0$1$0$1$1__27);
  }
  return 0;
  __CPROVER_DUMP_L17:
  ;

  main_i = main_i + 1;
  char memop_var_6;
  char memop_var_7;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$1;
    memop_var_6 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0_6, obsv_ds_bases_size_$1$0$1$0$1$0$1$0_6, obsv_ds_size_$1$0$1$0$1$0$1$0_6);
    memop_var_7 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0_7, obsv_ds_bases_size_$1$0$1$0$1$0$1$0_7, obsv_ds_size_$1$0$1$0$1$0$1$0_7);
    if (!(memop_var_6 == memop_var_7))
    {
$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L22;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__16, decoy_ds_size_$1$0$1$0$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__17, decoy_ds_size_$1$0$1$0$1$0$1$1__17);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__18, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__18, decoy_ds_size_$1$0$1$0$1$0$1$1__18);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__19, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__19, decoy_ds_size_$1$0$1$0$1$0$1$1__19);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__20, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__20, decoy_ds_size_$1$0$1$0$1$0$1$1__20);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__21, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__21, decoy_ds_size_$1$0$1$0$1$0$1$1__21);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__22, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__22, decoy_ds_size_$1$0$1$0$1$0$1$1__22);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__23, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__23, decoy_ds_size_$1$0$1$0$1$0$1$1__23);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__24, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__24, decoy_ds_size_$1$0$1$0$1$0$1$1__24);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$1__25, decoy_ds_bases_size_$1$0$1$0$1$0$1$1__25, decoy_ds_size_$1$0$1$0$1$0$1$1__25);
  }
  return 0;
  __CPROVER_DUMP_L22:
  ;

  main_i = main_i + 1;
  char memop_var_8;
  char memop_var_9;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$1;
    memop_var_8 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0_8, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0_8, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0_8);
    memop_var_9 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0_9, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0_9, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0_9);
    if (!(memop_var_8 == memop_var_9))
    {
$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L27;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__17);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__18, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__18, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__18);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__19, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__19, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__19);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__20, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__20, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__20);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__21, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__21, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__21);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__22, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__22, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__22);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$1__23, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$1__23, decoy_ds_size_$1$0$1$0$1$0$1$0$1$1__23);
  }
  return 0;
  __CPROVER_DUMP_L27:
  ;

  main_i = main_i + 1;
  char memop_var_10;
  char memop_var_11;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_10 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0_10, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0_10, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0_10);
    memop_var_11 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0_11, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0_11, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0_11);
    if (!(memop_var_10 == memop_var_11))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L32;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__17);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__18, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__18, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__18);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__19, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__19, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__19);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__20, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__20, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__20);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$1__21, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$1__21, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$1__21);
  }
  return 0;
  __CPROVER_DUMP_L32:
  ;

  main_i = main_i + 1;
  char memop_var_12;
  char memop_var_13;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_12 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0_12, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0_12, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0_12);
    memop_var_13 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0_13, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0_13, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0_13);
    if (!(memop_var_12 == memop_var_13))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L37;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__17);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__18, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__18, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__18);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__19, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__19, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$1__19);
  }
  return 0;
  __CPROVER_DUMP_L37:
  ;

  main_i = main_i + 1;
  char memop_var_14;
  char memop_var_15;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_14 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_14, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_14, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_14);
    memop_var_15 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_15, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_15, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_15);
    if (!(memop_var_14 == memop_var_15))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L42;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__16, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__16);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__17, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__17);
  }
  return 0;
  __CPROVER_DUMP_L42:
  ;

  main_i = main_i + 1;
  char memop_var_16;
  char memop_var_17;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_16 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_16, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_16, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_16);
    memop_var_17 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_17, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_17, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_17);
    if (!(memop_var_16 == memop_var_17))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L47;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__14);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__15);
  }
  return 0;
  __CPROVER_DUMP_L47:
  ;

  main_i = main_i + 1;
  char memop_var_18;
  char memop_var_19;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_18 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_18, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_18, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_18);
    memop_var_19 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_19, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_19, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_19);
    if (!(memop_var_18 == memop_var_19))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L52;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__12);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__13);
  }
  return 0;
  __CPROVER_DUMP_L52:
  ;

  main_i = main_i + 1;
  char memop_var_20;
  char memop_var_21;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_20 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_20, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_20, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_20);
    memop_var_21 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_21, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_21, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_21);
    if (!(memop_var_20 == memop_var_21))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L57;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__10);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__11);
  }
  return 0;
  __CPROVER_DUMP_L57:
  ;

  main_i = main_i + 1;
  char memop_var_22;
  char memop_var_23;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_22 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_22, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_22, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_22);
    memop_var_23 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_23, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_23, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_23);
    if (!(memop_var_22 == memop_var_23))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L62;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__8);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__9);
  }
  return 0;
  __CPROVER_DUMP_L62:
  ;

  main_i = main_i + 1;
  char memop_var_24;
  char memop_var_25;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_24 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_24, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_24, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_24);
    memop_var_25 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_25, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_25, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_25);
    if (!(memop_var_24 == memop_var_25))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L67;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__6);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__7);
  }
  return 0;
  __CPROVER_DUMP_L67:
  ;

  main_i = main_i + 1;
  char memop_var_26;
  char memop_var_27;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_26 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_26, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_26, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_26);
    memop_var_27 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_27, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_27, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_27);
    if (!(memop_var_26 == memop_var_27))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L72;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__4);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__5);
  }
  return 0;
  __CPROVER_DUMP_L72:
  ;

  main_i = main_i + 1;
  char memop_var_28;
  char memop_var_29;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_28 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_28, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_28, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_28);
    memop_var_29 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_29, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_29, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_29);
    if (!(memop_var_28 == memop_var_29))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L77;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__2);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__3);
  }
  return 0;
  __CPROVER_DUMP_L77:
  ;

  main_i = main_i + 1;
  char memop_var_30;
  char memop_var_31;
  if (!(main_i >= 16))
  {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1;
    memop_var_30 = uint8_t_secure_load_sensitive((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_30, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_30, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_30);
    memop_var_31 = uint8_t_secure_load_sensitive((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_31, obsv_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_31, obsv_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0_31);
    if (!(memop_var_30 == memop_var_31))
    {
$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1;
      return 0;
    }

$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1:
*(volatile int*)&&$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$0;
    goto __CPROVER_DUMP_L82;
  }

  {
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__0);
    uint8_t_secure_load_sensitive(0, decoy_ds_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_bases_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1, decoy_ds_size_$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$0$1$1__1);
  }
  return 0;
  __CPROVER_DUMP_L82:
  ;

  main_i = main_i + 1;
}

