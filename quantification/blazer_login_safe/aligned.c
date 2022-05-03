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
      main_matches = 0;
      goto __CPROVER_DUMP_L6;
    }

$1$0$1:
*(volatile int*)&&$1$0$0;
    main_unused = 1;
    __CPROVER_DUMP_L6:
    ;

    goto __CPROVER_DUMP_L8;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L8:
  ;

  main_i = main_i + 1;
  char memop_var_2;
  char memop_var_3;
  if (!(main_i >= 16))
  {
    memop_var_2 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$2_2, obsv_ds_bases_size_$1$2_2, obsv_ds_size_$1$2_2);
    memop_var_3 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$2_3, obsv_ds_bases_size_$1$2_3, obsv_ds_size_$1$2_3);
    if (!(memop_var_2 == memop_var_3))
    {
$1$2$0:
*(volatile int*)&&$1$2$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L12;
    }

$1$2$1:
*(volatile int*)&&$1$2$0;
    main_unused = 1;
    __CPROVER_DUMP_L12:
    ;

    goto __CPROVER_DUMP_L14;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L14:
  ;

  main_i = main_i + 1;
  char memop_var_4;
  char memop_var_5;
  if (!(main_i >= 16))
  {
    memop_var_4 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$4_4, obsv_ds_bases_size_$1$4_4, obsv_ds_size_$1$4_4);
    memop_var_5 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$4_5, obsv_ds_bases_size_$1$4_5, obsv_ds_size_$1$4_5);
    if (!(memop_var_4 == memop_var_5))
    {
$1$4$0:
*(volatile int*)&&$1$4$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L18;
    }

$1$4$1:
*(volatile int*)&&$1$4$0;
    main_unused = 1;
    __CPROVER_DUMP_L18:
    ;

    goto __CPROVER_DUMP_L20;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L20:
  ;

  main_i = main_i + 1;
  char memop_var_6;
  char memop_var_7;
  if (!(main_i >= 16))
  {
    memop_var_6 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$6_6, obsv_ds_bases_size_$1$6_6, obsv_ds_size_$1$6_6);
    memop_var_7 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$6_7, obsv_ds_bases_size_$1$6_7, obsv_ds_size_$1$6_7);
    if (!(memop_var_6 == memop_var_7))
    {
$1$6$0:
*(volatile int*)&&$1$6$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L24;
    }

$1$6$1:
*(volatile int*)&&$1$6$0;
    main_unused = 1;
    __CPROVER_DUMP_L24:
    ;

    goto __CPROVER_DUMP_L26;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L26:
  ;

  main_i = main_i + 1;
  char memop_var_8;
  char memop_var_9;
  if (!(main_i >= 16))
  {
    memop_var_8 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$8_8, obsv_ds_bases_size_$1$8_8, obsv_ds_size_$1$8_8);
    memop_var_9 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$8_9, obsv_ds_bases_size_$1$8_9, obsv_ds_size_$1$8_9);
    if (!(memop_var_8 == memop_var_9))
    {
$1$8$0:
*(volatile int*)&&$1$8$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L30;
    }

$1$8$1:
*(volatile int*)&&$1$8$0;
    main_unused = 1;
    __CPROVER_DUMP_L30:
    ;

    goto __CPROVER_DUMP_L32;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L32:
  ;

  main_i = main_i + 1;
  char memop_var_10;
  char memop_var_11;
  if (!(main_i >= 16))
  {
    memop_var_10 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$10_10, obsv_ds_bases_size_$1$10_10, obsv_ds_size_$1$10_10);
    memop_var_11 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$10_11, obsv_ds_bases_size_$1$10_11, obsv_ds_size_$1$10_11);
    if (!(memop_var_10 == memop_var_11))
    {
$1$10$0:
*(volatile int*)&&$1$10$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L36;
    }

$1$10$1:
*(volatile int*)&&$1$10$0;
    main_unused = 1;
    __CPROVER_DUMP_L36:
    ;

    goto __CPROVER_DUMP_L38;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L38:
  ;

  main_i = main_i + 1;
  char memop_var_12;
  char memop_var_13;
  if (!(main_i >= 16))
  {
    memop_var_12 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$12_12, obsv_ds_bases_size_$1$12_12, obsv_ds_size_$1$12_12);
    memop_var_13 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$12_13, obsv_ds_bases_size_$1$12_13, obsv_ds_size_$1$12_13);
    if (!(memop_var_12 == memop_var_13))
    {
$1$12$0:
*(volatile int*)&&$1$12$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L42;
    }

$1$12$1:
*(volatile int*)&&$1$12$0;
    main_unused = 1;
    __CPROVER_DUMP_L42:
    ;

    goto __CPROVER_DUMP_L44;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L44:
  ;

  main_i = main_i + 1;
  char memop_var_14;
  char memop_var_15;
  if (!(main_i >= 16))
  {
    memop_var_14 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$14_14, obsv_ds_bases_size_$1$14_14, obsv_ds_size_$1$14_14);
    memop_var_15 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$14_15, obsv_ds_bases_size_$1$14_15, obsv_ds_size_$1$14_15);
    if (!(memop_var_14 == memop_var_15))
    {
$1$14$0:
*(volatile int*)&&$1$14$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L48;
    }

$1$14$1:
*(volatile int*)&&$1$14$0;
    main_unused = 1;
    __CPROVER_DUMP_L48:
    ;

    goto __CPROVER_DUMP_L50;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L50:
  ;

  main_i = main_i + 1;
  char memop_var_16;
  char memop_var_17;
  if (!(main_i >= 16))
  {
    memop_var_16 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$16_16, obsv_ds_bases_size_$1$16_16, obsv_ds_size_$1$16_16);
    memop_var_17 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$16_17, obsv_ds_bases_size_$1$16_17, obsv_ds_size_$1$16_17);
    if (!(memop_var_16 == memop_var_17))
    {
$1$16$0:
*(volatile int*)&&$1$16$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L54;
    }

$1$16$1:
*(volatile int*)&&$1$16$0;
    main_unused = 1;
    __CPROVER_DUMP_L54:
    ;

    goto __CPROVER_DUMP_L56;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L56:
  ;

  main_i = main_i + 1;
  char memop_var_18;
  char memop_var_19;
  if (!(main_i >= 16))
  {
    memop_var_18 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$18_18, obsv_ds_bases_size_$1$18_18, obsv_ds_size_$1$18_18);
    memop_var_19 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$18_19, obsv_ds_bases_size_$1$18_19, obsv_ds_size_$1$18_19);
    if (!(memop_var_18 == memop_var_19))
    {
$1$18$0:
*(volatile int*)&&$1$18$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L60;
    }

$1$18$1:
*(volatile int*)&&$1$18$0;
    main_unused = 1;
    __CPROVER_DUMP_L60:
    ;

    goto __CPROVER_DUMP_L62;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L62:
  ;

  main_i = main_i + 1;
  char memop_var_20;
  char memop_var_21;
  if (!(main_i >= 16))
  {
    memop_var_20 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$20_20, obsv_ds_bases_size_$1$20_20, obsv_ds_size_$1$20_20);
    memop_var_21 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$20_21, obsv_ds_bases_size_$1$20_21, obsv_ds_size_$1$20_21);
    if (!(memop_var_20 == memop_var_21))
    {
$1$20$0:
*(volatile int*)&&$1$20$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L66;
    }

$1$20$1:
*(volatile int*)&&$1$20$0;
    main_unused = 1;
    __CPROVER_DUMP_L66:
    ;

    goto __CPROVER_DUMP_L68;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L68:
  ;

  main_i = main_i + 1;
  char memop_var_22;
  char memop_var_23;
  if (!(main_i >= 16))
  {
    memop_var_22 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$22_22, obsv_ds_bases_size_$1$22_22, obsv_ds_size_$1$22_22);
    memop_var_23 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$22_23, obsv_ds_bases_size_$1$22_23, obsv_ds_size_$1$22_23);
    if (!(memop_var_22 == memop_var_23))
    {
$1$22$0:
*(volatile int*)&&$1$22$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L72;
    }

$1$22$1:
*(volatile int*)&&$1$22$0;
    main_unused = 1;
    __CPROVER_DUMP_L72:
    ;

    goto __CPROVER_DUMP_L74;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L74:
  ;

  main_i = main_i + 1;
  char memop_var_24;
  char memop_var_25;
  if (!(main_i >= 16))
  {
    memop_var_24 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$24_24, obsv_ds_bases_size_$1$24_24, obsv_ds_size_$1$24_24);
    memop_var_25 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$24_25, obsv_ds_bases_size_$1$24_25, obsv_ds_size_$1$24_25);
    if (!(memop_var_24 == memop_var_25))
    {
$1$24$0:
*(volatile int*)&&$1$24$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L78;
    }

$1$24$1:
*(volatile int*)&&$1$24$0;
    main_unused = 1;
    __CPROVER_DUMP_L78:
    ;

    goto __CPROVER_DUMP_L80;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L80:
  ;

  main_i = main_i + 1;
  char memop_var_26;
  char memop_var_27;
  if (!(main_i >= 16))
  {
    memop_var_26 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$26_26, obsv_ds_bases_size_$1$26_26, obsv_ds_size_$1$26_26);
    memop_var_27 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$26_27, obsv_ds_bases_size_$1$26_27, obsv_ds_size_$1$26_27);
    if (!(memop_var_26 == memop_var_27))
    {
$1$26$0:
*(volatile int*)&&$1$26$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L84;
    }

$1$26$1:
*(volatile int*)&&$1$26$0;
    main_unused = 1;
    __CPROVER_DUMP_L84:
    ;

    goto __CPROVER_DUMP_L86;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L86:
  ;

  main_i = main_i + 1;
  char memop_var_28;
  char memop_var_29;
  if (!(main_i >= 16))
  {
    memop_var_28 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$28_28, obsv_ds_bases_size_$1$28_28, obsv_ds_size_$1$28_28);
    memop_var_29 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$28_29, obsv_ds_bases_size_$1$28_29, obsv_ds_size_$1$28_29);
    if (!(memop_var_28 == memop_var_29))
    {
$1$28$0:
*(volatile int*)&&$1$28$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L90;
    }

$1$28$1:
*(volatile int*)&&$1$28$0;
    main_unused = 1;
    __CPROVER_DUMP_L90:
    ;

    goto __CPROVER_DUMP_L92;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L92:
  ;

  main_i = main_i + 1;
  char memop_var_30;
  char memop_var_31;
  if (!(main_i >= 16))
  {
    memop_var_30 = uint8_t_secure_load((unsigned char *) (&main_guess_pub[main_i]), obsv_ds_$1$30_30, obsv_ds_bases_size_$1$30_30, obsv_ds_size_$1$30_30);
    memop_var_31 = uint8_t_secure_load((unsigned char *) (&main_real_password[main_i]), obsv_ds_$1$30_31, obsv_ds_bases_size_$1$30_31, obsv_ds_size_$1$30_31);
    if (!(memop_var_30 == memop_var_31))
    {
$1$30$0:
*(volatile int*)&&$1$30$1;
      main_matches = 0;
      goto __CPROVER_DUMP_L96;
    }

$1$30$1:
*(volatile int*)&&$1$30$0;
    main_unused = 1;
    __CPROVER_DUMP_L96:
    ;

    goto __CPROVER_DUMP_L98;
  }

  main_unused = 0;
  main_unused = 1;
  main_matches = 0;
  __CPROVER_DUMP_L98:
  ;

  main_i = main_i + 1;
}

