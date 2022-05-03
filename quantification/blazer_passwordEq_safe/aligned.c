void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  unsigned int main_i;
  _Bool main_shmequal;
  _Bool main_equal;
  unsigned int main_bLen;
  unsigned int main_aLen;
  signed int main_b[16];
  signed int main_a[16];
  main_b[0] = 516110120;
  main_b[1] = 458738422;
  main_b[2] = 480950566;
  main_b[3] = 1976971347;
  main_b[4] = 1144165536;
  main_b[5] = 1873016972;
  main_b[6] = 936388514;
  main_b[7] = 178847483;
  main_b[8] = 1419322561;
  main_b[9] = 509310118;
  main_b[10] = 686890236;
  main_b[11] = 278274521;
  main_b[12] = 1474630618;
  main_b[13] = 868631604;
  main_b[14] = 2098829775;
  main_b[15] = 670669400;
  main_aLen = 16u;
  main_bLen = 16u;
  main_equal = 1;
  main_shmequal = 1;
  if (main_aLen == main_bLen)
  {
  }
  else
  {
    main_equal = 0;
  }

  main_i = 0u;
  signed int memop_var_0;
  memop_var_0 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__1, obsv_ds_bases_size__1, obsv_ds_size__1);
  if (!(memop_var_0 == memop_var_1))
  {
$2:
*(int*)&&$3;
    main_equal = 0;
    goto __CPROVER_DUMP_L5;
  }

$3:
*(int*)&&$2;
  main_shmequal = 1;
  __CPROVER_DUMP_L5:
  ;

  main_i = main_i + 1u;
  signed int memop_var_2;
  memop_var_2 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__2, obsv_ds_bases_size__2, obsv_ds_size__2);
  signed int memop_var_3;
  memop_var_3 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__3, obsv_ds_bases_size__3, obsv_ds_size__3);
  if (!(memop_var_2 == memop_var_3))
  {
$4:
*(int*)&&$5;
    main_equal = 0;
    goto __CPROVER_DUMP_L8;
  }

$5:
*(int*)&&$4;
  main_shmequal = 1;
  __CPROVER_DUMP_L8:
  ;

  main_i = main_i + 1u;
  signed int memop_var_4;
  memop_var_4 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__4, obsv_ds_bases_size__4, obsv_ds_size__4);
  signed int memop_var_5;
  memop_var_5 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__5, obsv_ds_bases_size__5, obsv_ds_size__5);
  if (!(memop_var_4 == memop_var_5))
  {
$6:
*(int*)&&$7;
    main_equal = 0;
    goto __CPROVER_DUMP_L11;
  }

$7:
*(int*)&&$6;
  main_shmequal = 1;
  __CPROVER_DUMP_L11:
  ;

  main_i = main_i + 1u;
  signed int memop_var_6;
  memop_var_6 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__6, obsv_ds_bases_size__6, obsv_ds_size__6);
  signed int memop_var_7;
  memop_var_7 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__7, obsv_ds_bases_size__7, obsv_ds_size__7);
  if (!(memop_var_6 == memop_var_7))
  {
$8:
*(int*)&&$9;
    main_equal = 0;
    goto __CPROVER_DUMP_L14;
  }

$9:
*(int*)&&$8;
  main_shmequal = 1;
  __CPROVER_DUMP_L14:
  ;

  main_i = main_i + 1u;
  signed int memop_var_8;
  memop_var_8 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__8, obsv_ds_bases_size__8, obsv_ds_size__8);
  signed int memop_var_9;
  memop_var_9 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__9, obsv_ds_bases_size__9, obsv_ds_size__9);
  if (!(memop_var_8 == memop_var_9))
  {
$10:
*(int*)&&$11;
    main_equal = 0;
    goto __CPROVER_DUMP_L17;
  }

$11:
*(int*)&&$10;
  main_shmequal = 1;
  __CPROVER_DUMP_L17:
  ;

  main_i = main_i + 1u;
  signed int memop_var_10;
  memop_var_10 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__10, obsv_ds_bases_size__10, obsv_ds_size__10);
  signed int memop_var_11;
  memop_var_11 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__11, obsv_ds_bases_size__11, obsv_ds_size__11);
  if (!(memop_var_10 == memop_var_11))
  {
$12:
*(int*)&&$13;
    main_equal = 0;
    goto __CPROVER_DUMP_L20;
  }

$13:
*(int*)&&$12;
  main_shmequal = 1;
  __CPROVER_DUMP_L20:
  ;

  main_i = main_i + 1u;
  signed int memop_var_12;
  memop_var_12 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__12, obsv_ds_bases_size__12, obsv_ds_size__12);
  signed int memop_var_13;
  memop_var_13 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__13, obsv_ds_bases_size__13, obsv_ds_size__13);
  if (!(memop_var_12 == memop_var_13))
  {
$14:
*(int*)&&$15;
    main_equal = 0;
    goto __CPROVER_DUMP_L23;
  }

$15:
*(int*)&&$14;
  main_shmequal = 1;
  __CPROVER_DUMP_L23:
  ;

  main_i = main_i + 1u;
  signed int memop_var_14;
  memop_var_14 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__14, obsv_ds_bases_size__14, obsv_ds_size__14);
  signed int memop_var_15;
  memop_var_15 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__15, obsv_ds_bases_size__15, obsv_ds_size__15);
  if (!(memop_var_14 == memop_var_15))
  {
$16:
*(int*)&&$17;
    main_equal = 0;
    goto __CPROVER_DUMP_L26;
  }

$17:
*(int*)&&$16;
  main_shmequal = 1;
  __CPROVER_DUMP_L26:
  ;

  main_i = main_i + 1u;
  signed int memop_var_16;
  memop_var_16 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__16, obsv_ds_bases_size__16, obsv_ds_size__16);
  signed int memop_var_17;
  memop_var_17 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__17, obsv_ds_bases_size__17, obsv_ds_size__17);
  if (!(memop_var_16 == memop_var_17))
  {
$18:
*(int*)&&$19;
    main_equal = 0;
    goto __CPROVER_DUMP_L29;
  }

$19:
*(int*)&&$18;
  main_shmequal = 1;
  __CPROVER_DUMP_L29:
  ;

  main_i = main_i + 1u;
  signed int memop_var_18;
  memop_var_18 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__18, obsv_ds_bases_size__18, obsv_ds_size__18);
  signed int memop_var_19;
  memop_var_19 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__19, obsv_ds_bases_size__19, obsv_ds_size__19);
  if (!(memop_var_18 == memop_var_19))
  {
$20:
*(int*)&&$21;
    main_equal = 0;
    goto __CPROVER_DUMP_L32;
  }

$21:
*(int*)&&$20;
  main_shmequal = 1;
  __CPROVER_DUMP_L32:
  ;

  main_i = main_i + 1u;
  signed int memop_var_20;
  memop_var_20 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__20, obsv_ds_bases_size__20, obsv_ds_size__20);
  signed int memop_var_21;
  memop_var_21 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__21, obsv_ds_bases_size__21, obsv_ds_size__21);
  if (!(memop_var_20 == memop_var_21))
  {
$22:
*(int*)&&$23;
    main_equal = 0;
    goto __CPROVER_DUMP_L35;
  }

$23:
*(int*)&&$22;
  main_shmequal = 1;
  __CPROVER_DUMP_L35:
  ;

  main_i = main_i + 1u;
  signed int memop_var_22;
  memop_var_22 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__22, obsv_ds_bases_size__22, obsv_ds_size__22);
  signed int memop_var_23;
  memop_var_23 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__23, obsv_ds_bases_size__23, obsv_ds_size__23);
  if (!(memop_var_22 == memop_var_23))
  {
$24:
*(int*)&&$25;
    main_equal = 0;
    goto __CPROVER_DUMP_L38;
  }

$25:
*(int*)&&$24;
  main_shmequal = 1;
  __CPROVER_DUMP_L38:
  ;

  main_i = main_i + 1u;
  signed int memop_var_24;
  memop_var_24 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__24, obsv_ds_bases_size__24, obsv_ds_size__24);
  signed int memop_var_25;
  memop_var_25 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__25, obsv_ds_bases_size__25, obsv_ds_size__25);
  if (!(memop_var_24 == memop_var_25))
  {
$26:
*(int*)&&$27;
    main_equal = 0;
    goto __CPROVER_DUMP_L41;
  }

$27:
*(int*)&&$26;
  main_shmequal = 1;
  __CPROVER_DUMP_L41:
  ;

  main_i = main_i + 1u;
  signed int memop_var_26;
  memop_var_26 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__26, obsv_ds_bases_size__26, obsv_ds_size__26);
  signed int memop_var_27;
  memop_var_27 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__27, obsv_ds_bases_size__27, obsv_ds_size__27);
  if (!(memop_var_26 == memop_var_27))
  {
$28:
*(int*)&&$29;
    main_equal = 0;
    goto __CPROVER_DUMP_L44;
  }

$29:
*(int*)&&$28;
  main_shmequal = 1;
  __CPROVER_DUMP_L44:
  ;

  main_i = main_i + 1u;
  signed int memop_var_28;
  memop_var_28 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__28, obsv_ds_bases_size__28, obsv_ds_size__28);
  signed int memop_var_29;
  memop_var_29 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__29, obsv_ds_bases_size__29, obsv_ds_size__29);
  if (!(memop_var_28 == memop_var_29))
  {
$30:
*(int*)&&$31;
    main_equal = 0;
    goto __CPROVER_DUMP_L47;
  }

$31:
*(int*)&&$30;
  main_shmequal = 1;
  __CPROVER_DUMP_L47:
  ;

  main_i = main_i + 1u;
  signed int memop_var_30;
  memop_var_30 = uint32_t_secure_load_single((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds__30, obsv_ds_bases_size__30, obsv_ds_size__30);
  signed int memop_var_31;
  memop_var_31 = uint32_t_secure_load_single((unsigned int *) (&main_b[(signed int) main_i]), obsv_ds__31, obsv_ds_bases_size__31, obsv_ds_size__31);
  if (!(memop_var_30 == memop_var_31))
  {
$32:
*(int*)&&$33;
    main_equal = 0;
    goto __CPROVER_DUMP_L50;
  }

$33:
*(int*)&&$32;
  main_shmequal = 1;
  __CPROVER_DUMP_L50:
  ;

  main_i = main_i + 1u;
  return (signed int) main_equal;
}

