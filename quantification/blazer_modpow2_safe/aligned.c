void branch_id(char *str);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_i;
  signed int main_r1;
  signed int main_r0;
  signed int main_width;
  signed int main_modulus_pub;
  signed int main_base_pub;
  signed int main_exponent;
  main_base_pub = 1794181377;
  main_modulus_pub = 2095143042;
  main_width = 32;
  main_r0 = 1;
  main_r1 = main_base_pub;
  main_i = 0;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$0:
*(int*)&&$1;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L3;
  }

$1:
*(int*)&&$0;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L3:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$2:
*(int*)&&$3;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L6;
  }

$3:
*(int*)&&$2;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L6:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$4:
*(int*)&&$5;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L9;
  }

$5:
*(int*)&&$4;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L9:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$6:
*(int*)&&$7;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L12;
  }

$7:
*(int*)&&$6;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L12:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$8:
*(int*)&&$9;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L15;
  }

$9:
*(int*)&&$8;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L15:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$10:
*(int*)&&$11;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L18;
  }

$11:
*(int*)&&$10;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L18:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$12:
*(int*)&&$13;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L21;
  }

$13:
*(int*)&&$12;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L21:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$14:
*(int*)&&$15;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L24;
  }

$15:
*(int*)&&$14;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L24:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$16:
*(int*)&&$17;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L27;
  }

$17:
*(int*)&&$16;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L27:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$18:
*(int*)&&$19;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L30;
  }

$19:
*(int*)&&$18;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L30:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$20:
*(int*)&&$21;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L33;
  }

$21:
*(int*)&&$20;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L33:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$22:
*(int*)&&$23;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L36;
  }

$23:
*(int*)&&$22;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L36:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$24:
*(int*)&&$25;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L39;
  }

$25:
*(int*)&&$24;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L39:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$26:
*(int*)&&$27;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L42;
  }

$27:
*(int*)&&$26;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L42:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$28:
*(int*)&&$29;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L45;
  }

$29:
*(int*)&&$28;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L45:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$30:
*(int*)&&$31;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L48;
  }

$31:
*(int*)&&$30;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L48:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$32:
*(int*)&&$33;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L51;
  }

$33:
*(int*)&&$32;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L51:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$34:
*(int*)&&$35;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L54;
  }

$35:
*(int*)&&$34;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L54:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$36:
*(int*)&&$37;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L57;
  }

$37:
*(int*)&&$36;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L57:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$38:
*(int*)&&$39;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L60;
  }

$39:
*(int*)&&$38;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L60:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$40:
*(int*)&&$41;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L63;
  }

$41:
*(int*)&&$40;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L63:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$42:
*(int*)&&$43;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L66;
  }

$43:
*(int*)&&$42;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L66:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$44:
*(int*)&&$45;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L69;
  }

$45:
*(int*)&&$44;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L69:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$46:
*(int*)&&$47;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L72;
  }

$47:
*(int*)&&$46;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L72:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$48:
*(int*)&&$49;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L75;
  }

$49:
*(int*)&&$48;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L75:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$50:
*(int*)&&$51;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L78;
  }

$51:
*(int*)&&$50;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L78:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$52:
*(int*)&&$53;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L81;
  }

$53:
*(int*)&&$52;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L81:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$54:
*(int*)&&$55;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L84;
  }

$55:
*(int*)&&$54;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L84:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$56:
*(int*)&&$57;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L87;
  }

$57:
*(int*)&&$56;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L87:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$58:
*(int*)&&$59;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L90;
  }

$59:
*(int*)&&$58;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L90:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$60:
*(int*)&&$61;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L93;
  }

$61:
*(int*)&&$60;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L93:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$62:
*(int*)&&$63;
    main_r1 = (main_r0 * main_r1) % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L96;
  }

$63:
*(int*)&&$62;
  main_r0 = (main_r0 * main_r1) % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L96:
  ;

  main_i = main_i + 1;
}

