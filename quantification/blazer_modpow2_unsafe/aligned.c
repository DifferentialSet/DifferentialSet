#include <stdlib.h>
void branch_id(char *str);
signed int fastMultiply(signed int x, signed int y);
signed int fastMultiply_1(signed int x, signed int y);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_return_value_fastMultiply$0;
  signed int fastMultiply_return_value_fastMultiply_1$1;
  signed int fastMultiply_crossterms;
  signed int fastMultiply_return_value_fastMultiply_1$0;
  signed int fastMultiply_bd;
  signed int fastMultiply_1_return_value_fastMultiply_1$1;
  signed int fastMultiply_1_crossterms;
  signed int fastMultiply_1_return_value_fastMultiply_1$0;
  signed int fastMultiply_1_bd;
  signed int fastMultiply_1_return_value_fastMultiply_1;
  signed int fastMultiply_1_ac;
  signed int fastMultiply_1_c;
  signed int fastMultiply_1_d;
  signed int fastMultiply_1_a;
  signed int fastMultiply_1_b;
  signed int fastMultiply_1_return_value_abs;
  signed int fastMultiply_1_conditionObj1;
  signed int fastMultiply_1_conditionObj0;
  signed int fastMultiply_1_N;
  signed int fastMultiply_1_ret;
  signed int fastMultiply_1_yLen;
  signed int fastMultiply_1_xLen;
  signed int fastMultiply_1_y;
  signed int fastMultiply_1_x;
  signed int fastMultiply_return_value_fastMultiply_1;
  signed int fastMultiply_ac;
  signed int fastMultiply_c;
  signed int fastMultiply_d;
  signed int fastMultiply_a;
  signed int fastMultiply_b;
  signed int fastMultiply_i;
  signed int abs_mask;
  signed int abs_x;
  signed int fastMultiply_return_value_abs;
  signed int fastMultiply_conditionObj1;
  signed int fastMultiply_conditionObj0;
  signed int fastMultiply_N;
  signed int fastMultiply_ret;
  signed int fastMultiply_yLen;
  signed int fastMultiply_xLen;
  signed int fastMultiply_y;
  signed int fastMultiply_x;
  signed int main_return_value_fastMultiply;
  signed int main_i;
  signed int main_r1;
  signed int main_r0;
  signed int main_width;
  signed int main_modulus_pub;
  signed int main_base_pub;
  signed int main_exponent;
  main_width = 32;
  main_r0 = 1;
  main_r1 = main_base_pub;
  main_i = 0;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$0:
*(volatile int*)&&$1;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$0$0:
*(volatile int*)&&$0$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L105;
    }

    if (fastMultiply_y == 1)
    {
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L105;
    }

    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L104;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L104;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L83;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L83;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L82;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L82;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L82:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L83:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L93;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L93;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L92;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L92;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L92:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L93:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L103;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L103;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L102;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L102;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L102:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L103:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L104:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L105:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L211;
  }

$1:
*(volatile int*)&&$0;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$1$0:
*(volatile int*)&&$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L210;
  }

  if (fastMultiply_y == 1)
  {
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L210;
  }

  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L209;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L209;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L188;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L188;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L187;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L187;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L187:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L188:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L198;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L198;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L197;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L197;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L197:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L198:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L208;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L208;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L207;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L207;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L207:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L208:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L209:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L210:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L211:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$2:
*(volatile int*)&&$3;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$2$0:
*(volatile int*)&&$2$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L316;
    }

$2$1:
*(volatile int*)&&$2$0;
    if (fastMultiply_y == 1)
    {
$2$1$0:
*(volatile int*)&&$2$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L316;
    }

$2$1$1:
*(volatile int*)&&$2$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$2$1$1$0:
*(volatile int*)&&$2$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L315;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L315;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L294;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L294;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L293;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L293;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L293:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L294:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L304;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L304;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L303;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L303;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L303:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L304:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L314;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L314;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L313;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L313;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L313:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L314:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L315:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L316:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L422;
  }

$3:
*(volatile int*)&&$2;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$3$0:
*(volatile int*)&&$3$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L421;
  }

$3$1:
*(volatile int*)&&$3$0;
  if (fastMultiply_y == 1)
  {
$3$1$0:
*(volatile int*)&&$3$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L421;
  }

$3$1$1:
*(volatile int*)&&$3$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$3$1$1$0:
*(volatile int*)&&$3$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L420;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L420;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L399;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L399;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L398;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L398;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L398:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L399:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L409;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L409;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L408;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L408;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L408:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L409:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L419;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L419;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L418;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L418;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L418:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L419:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L420:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L421:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L422:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$4:
*(volatile int*)&&$5;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$4$0:
*(volatile int*)&&$4$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L527;
    }

$4$1:
*(volatile int*)&&$4$0;
    if (fastMultiply_y == 1)
    {
$4$1$0:
*(volatile int*)&&$4$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L527;
    }

$4$1$1:
*(volatile int*)&&$4$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$4$1$1$0:
*(volatile int*)&&$4$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L526;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L526;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L505;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L505;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L504;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L504;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L504:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L505:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L515;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L515;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L514;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L514;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L514:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L515:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L525;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L525;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L524;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L524;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L524:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L525:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L526:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L527:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L633;
  }

$5:
*(volatile int*)&&$4;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$5$0:
*(volatile int*)&&$5$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L632;
  }

$5$1:
*(volatile int*)&&$5$0;
  if (fastMultiply_y == 1)
  {
$5$1$0:
*(volatile int*)&&$5$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L632;
  }

$5$1$1:
*(volatile int*)&&$5$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$5$1$1$0:
*(volatile int*)&&$5$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L631;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L631;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L610;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L610;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L609;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L609;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L609:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L610:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L620;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L620;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L619;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L619;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L619:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L620:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L630;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L630;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L629;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L629;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L629:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L630:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L631:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L632:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L633:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$6:
*(volatile int*)&&$7;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$6$0:
*(volatile int*)&&$6$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L738;
    }

$6$1:
*(volatile int*)&&$6$0;
    if (fastMultiply_y == 1)
    {
$6$1$0:
*(volatile int*)&&$6$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L738;
    }

$6$1$1:
*(volatile int*)&&$6$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$6$1$1$0:
*(volatile int*)&&$6$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L737;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L737;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L716;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L716;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L715;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L715;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L715:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L716:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L726;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L726;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L725;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L725;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L725:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L726:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L736;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L736;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L735;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L735;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L735:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L736:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L737:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L738:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L844;
  }

$7:
*(volatile int*)&&$6;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$7$0:
*(volatile int*)&&$7$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L843;
  }

$7$1:
*(volatile int*)&&$7$0;
  if (fastMultiply_y == 1)
  {
$7$1$0:
*(volatile int*)&&$7$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L843;
  }

$7$1$1:
*(volatile int*)&&$7$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$7$1$1$0:
*(volatile int*)&&$7$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L842;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L842;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L821;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L821;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L820;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L820;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L820:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L821:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L831;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L831;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L830;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L830;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L830:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L831:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L841;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L841;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L840;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L840;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L840:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L841:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L842:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L843:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L844:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$8:
*(volatile int*)&&$9;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$8$0:
*(volatile int*)&&$8$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L949;
    }

$8$1:
*(volatile int*)&&$8$0;
    if (fastMultiply_y == 1)
    {
$8$1$0:
*(volatile int*)&&$8$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L949;
    }

$8$1$1:
*(volatile int*)&&$8$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$8$1$1$0:
*(volatile int*)&&$8$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L948;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L948;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L927;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L927;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L926;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L926;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L926:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L927:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L937;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L937;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L936;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L936;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L936:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L937:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L947;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L947;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L946;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L946;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L946:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L947:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L948:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L949:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L1055;
  }

$9:
*(volatile int*)&&$8;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$9$0:
*(volatile int*)&&$9$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L1054;
  }

$9$1:
*(volatile int*)&&$9$0;
  if (fastMultiply_y == 1)
  {
$9$1$0:
*(volatile int*)&&$9$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L1054;
  }

$9$1$1:
*(volatile int*)&&$9$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$9$1$1$0:
*(volatile int*)&&$9$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L1053;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L1053;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1032;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1032;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1031;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1031;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1031:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1032:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1042;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1042;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1041;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1041;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1041:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1042:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1052;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1052;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1051;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1051;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1051:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1052:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L1053:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L1054:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L1055:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$10:
*(volatile int*)&&$11;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$10$0:
*(volatile int*)&&$10$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L1160;
    }

$10$1:
*(volatile int*)&&$10$0;
    if (fastMultiply_y == 1)
    {
$10$1$0:
*(volatile int*)&&$10$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L1160;
    }

$10$1$1:
*(volatile int*)&&$10$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$10$1$1$0:
*(volatile int*)&&$10$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L1159;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L1159;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1138;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1138;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1137;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1137;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1137:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1138:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1148;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1148;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1147;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1147;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1147:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1148:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1158;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1158;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1157;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1157;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1157:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1158:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L1159:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L1160:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L1266;
  }

$11:
*(volatile int*)&&$10;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$11$0:
*(volatile int*)&&$11$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L1265;
  }

$11$1:
*(volatile int*)&&$11$0;
  if (fastMultiply_y == 1)
  {
$11$1$0:
*(volatile int*)&&$11$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L1265;
  }

$11$1$1:
*(volatile int*)&&$11$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$11$1$1$0:
*(volatile int*)&&$11$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L1264;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L1264;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1243;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1243;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1242;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1242;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1242:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1243:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1253;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1253;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1252;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1252;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1252:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1253:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1263;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1263;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1262;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1262;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1262:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1263:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L1264:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L1265:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L1266:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$12:
*(volatile int*)&&$13;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$12$0:
*(volatile int*)&&$12$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L1371;
    }

$12$1:
*(volatile int*)&&$12$0;
    if (fastMultiply_y == 1)
    {
$12$1$0:
*(volatile int*)&&$12$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L1371;
    }

$12$1$1:
*(volatile int*)&&$12$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$12$1$1$0:
*(volatile int*)&&$12$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L1370;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L1370;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1349;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1349;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1348;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1348;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1348:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1349:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1359;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1359;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1358;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1358;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1358:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1359:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1369;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1369;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1368;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1368;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1368:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1369:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L1370:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L1371:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L1477;
  }

$13:
*(volatile int*)&&$12;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$13$0:
*(volatile int*)&&$13$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L1476;
  }

$13$1:
*(volatile int*)&&$13$0;
  if (fastMultiply_y == 1)
  {
$13$1$0:
*(volatile int*)&&$13$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L1476;
  }

$13$1$1:
*(volatile int*)&&$13$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$13$1$1$0:
*(volatile int*)&&$13$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L1475;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L1475;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1454;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1454;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1453;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1453;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1453:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1454:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1464;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1464;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1463;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1463;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1463:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1464:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1474;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1474;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1473;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1473;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1473:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1474:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L1475:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L1476:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L1477:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$14:
*(volatile int*)&&$15;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$14$0:
*(volatile int*)&&$14$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L1582;
    }

$14$1:
*(volatile int*)&&$14$0;
    if (fastMultiply_y == 1)
    {
$14$1$0:
*(volatile int*)&&$14$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L1582;
    }

$14$1$1:
*(volatile int*)&&$14$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$14$1$1$0:
*(volatile int*)&&$14$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L1581;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L1581;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1560;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1560;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1559;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1559;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1559:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1560:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1570;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1570;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1569;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1569;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1569:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1570:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1580;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1580;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1579;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1579;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1579:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1580:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L1581:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L1582:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L1688;
  }

$15:
*(volatile int*)&&$14;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$15$0:
*(volatile int*)&&$15$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L1687;
  }

$15$1:
*(volatile int*)&&$15$0;
  if (fastMultiply_y == 1)
  {
$15$1$0:
*(volatile int*)&&$15$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L1687;
  }

$15$1$1:
*(volatile int*)&&$15$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$15$1$1$0:
*(volatile int*)&&$15$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L1686;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L1686;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1665;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1665;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1664;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1664;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1664:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1665:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1675;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1675;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1674;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1674;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1674:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1675:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1685;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1685;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1684;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1684;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1684:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1685:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L1686:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L1687:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L1688:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$16:
*(volatile int*)&&$17;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$16$0:
*(volatile int*)&&$16$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L1793;
    }

$16$1:
*(volatile int*)&&$16$0;
    if (fastMultiply_y == 1)
    {
$16$1$0:
*(volatile int*)&&$16$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L1793;
    }

$16$1$1:
*(volatile int*)&&$16$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$16$1$1$0:
*(volatile int*)&&$16$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L1792;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L1792;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1771;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1771;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1770;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1770;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1770:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1771:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1781;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1781;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1780;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1780;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1780:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1781:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1791;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1791;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1790;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1790;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1790:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1791:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L1792:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L1793:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L1899;
  }

$17:
*(volatile int*)&&$16;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$17$0:
*(volatile int*)&&$17$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L1898;
  }

$17$1:
*(volatile int*)&&$17$0;
  if (fastMultiply_y == 1)
  {
$17$1$0:
*(volatile int*)&&$17$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L1898;
  }

$17$1$1:
*(volatile int*)&&$17$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$17$1$1$0:
*(volatile int*)&&$17$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L1897;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L1897;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1876;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1876;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1875;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1875;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1875:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1876:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1886;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1886;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1885;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1885;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1885:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1886:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L1896;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L1896;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1895;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L1895;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L1895:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L1896:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L1897:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L1898:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L1899:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$18:
*(volatile int*)&&$19;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$18$0:
*(volatile int*)&&$18$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L2004;
    }

$18$1:
*(volatile int*)&&$18$0;
    if (fastMultiply_y == 1)
    {
$18$1$0:
*(volatile int*)&&$18$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L2004;
    }

$18$1$1:
*(volatile int*)&&$18$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$18$1$1$0:
*(volatile int*)&&$18$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L2003;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L2003;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1982;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1982;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1981;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1981;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1981:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1982:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L1992;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L1992;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1991;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L1991;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L1991:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L1992:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2002;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2002;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2001;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2001;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2001:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2002:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L2003:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L2004:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L2110;
  }

$19:
*(volatile int*)&&$18;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$19$0:
*(volatile int*)&&$19$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L2109;
  }

$19$1:
*(volatile int*)&&$19$0;
  if (fastMultiply_y == 1)
  {
$19$1$0:
*(volatile int*)&&$19$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L2109;
  }

$19$1$1:
*(volatile int*)&&$19$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$19$1$1$0:
*(volatile int*)&&$19$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L2108;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L2108;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2087;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2087;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2086;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2086;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2086:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2087:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2097;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2097;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2096;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2096;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2096:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2097:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2107;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2107;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2106;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2106;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2106:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2107:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L2108:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L2109:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L2110:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$20:
*(volatile int*)&&$21;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$20$0:
*(volatile int*)&&$20$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L2215;
    }

$20$1:
*(volatile int*)&&$20$0;
    if (fastMultiply_y == 1)
    {
$20$1$0:
*(volatile int*)&&$20$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L2215;
    }

$20$1$1:
*(volatile int*)&&$20$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$20$1$1$0:
*(volatile int*)&&$20$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L2214;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L2214;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2193;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2193;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2192;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2192;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2192:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2193:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2203;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2203;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2202;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2202;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2202:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2203:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2213;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2213;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2212;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2212;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2212:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2213:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L2214:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L2215:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L2321;
  }

$21:
*(volatile int*)&&$20;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$21$0:
*(volatile int*)&&$21$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L2320;
  }

$21$1:
*(volatile int*)&&$21$0;
  if (fastMultiply_y == 1)
  {
$21$1$0:
*(volatile int*)&&$21$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L2320;
  }

$21$1$1:
*(volatile int*)&&$21$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$21$1$1$0:
*(volatile int*)&&$21$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L2319;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L2319;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2298;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2298;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2297;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2297;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2297:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2298:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2308;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2308;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2307;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2307;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2307:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2308:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2318;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2318;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2317;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2317;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2317:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2318:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L2319:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L2320:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L2321:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$22:
*(volatile int*)&&$23;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$22$0:
*(volatile int*)&&$22$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L2426;
    }

$22$1:
*(volatile int*)&&$22$0;
    if (fastMultiply_y == 1)
    {
$22$1$0:
*(volatile int*)&&$22$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L2426;
    }

$22$1$1:
*(volatile int*)&&$22$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$22$1$1$0:
*(volatile int*)&&$22$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L2425;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L2425;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2404;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2404;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2403;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2403;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2403:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2404:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2414;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2414;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2413;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2413;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2413:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2414:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2424;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2424;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2423;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2423;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2423:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2424:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L2425:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L2426:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L2532;
  }

$23:
*(volatile int*)&&$22;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$23$0:
*(volatile int*)&&$23$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L2531;
  }

$23$1:
*(volatile int*)&&$23$0;
  if (fastMultiply_y == 1)
  {
$23$1$0:
*(volatile int*)&&$23$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L2531;
  }

$23$1$1:
*(volatile int*)&&$23$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$23$1$1$0:
*(volatile int*)&&$23$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L2530;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L2530;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2509;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2509;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2508;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2508;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2508:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2509:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2519;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2519;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2518;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2518;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2518:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2519:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2529;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2529;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2528;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2528;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2528:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2529:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L2530:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L2531:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L2532:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$24:
*(volatile int*)&&$25;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$24$0:
*(volatile int*)&&$24$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L2637;
    }

$24$1:
*(volatile int*)&&$24$0;
    if (fastMultiply_y == 1)
    {
$24$1$0:
*(volatile int*)&&$24$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L2637;
    }

$24$1$1:
*(volatile int*)&&$24$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$24$1$1$0:
*(volatile int*)&&$24$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L2636;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L2636;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2615;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2615;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2614;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2614;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2614:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2615:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2625;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2625;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2624;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2624;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2624:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2625:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2635;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2635;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2634;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2634;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2634:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2635:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L2636:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L2637:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L2743;
  }

$25:
*(volatile int*)&&$24;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$25$0:
*(volatile int*)&&$25$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L2742;
  }

$25$1:
*(volatile int*)&&$25$0;
  if (fastMultiply_y == 1)
  {
$25$1$0:
*(volatile int*)&&$25$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L2742;
  }

$25$1$1:
*(volatile int*)&&$25$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$25$1$1$0:
*(volatile int*)&&$25$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L2741;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L2741;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2720;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2720;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2719;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2719;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2719:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2720:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2730;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2730;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2729;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2729;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2729:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2730:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2740;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2740;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2739;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2739;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2739:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2740:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L2741:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L2742:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L2743:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$26:
*(volatile int*)&&$27;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$26$0:
*(volatile int*)&&$26$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L2848;
    }

$26$1:
*(volatile int*)&&$26$0;
    if (fastMultiply_y == 1)
    {
$26$1$0:
*(volatile int*)&&$26$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L2848;
    }

$26$1$1:
*(volatile int*)&&$26$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$26$1$1$0:
*(volatile int*)&&$26$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L2847;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L2847;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2826;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2826;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2825;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2825;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2825:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2826:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2836;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2836;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2835;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2835;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2835:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2836:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L2846;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L2846;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2845;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L2845;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L2845:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L2846:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L2847:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L2848:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L2954;
  }

$27:
*(volatile int*)&&$26;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$27$0:
*(volatile int*)&&$27$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L2953;
  }

$27$1:
*(volatile int*)&&$27$0;
  if (fastMultiply_y == 1)
  {
$27$1$0:
*(volatile int*)&&$27$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L2953;
  }

$27$1$1:
*(volatile int*)&&$27$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$27$1$1$0:
*(volatile int*)&&$27$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L2952;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L2952;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2931;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2931;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2930;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2930;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2930:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2931:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2941;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2941;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2940;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2940;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2940:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2941:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L2951;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L2951;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2950;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L2950;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L2950:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L2951:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L2952:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L2953:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L2954:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$28:
*(volatile int*)&&$29;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$28$0:
*(volatile int*)&&$28$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L3059;
    }

$28$1:
*(volatile int*)&&$28$0;
    if (fastMultiply_y == 1)
    {
$28$1$0:
*(volatile int*)&&$28$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L3059;
    }

$28$1$1:
*(volatile int*)&&$28$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$28$1$1$0:
*(volatile int*)&&$28$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L3058;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L3058;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3037;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3037;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3036;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3036;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3036:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3037:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3047;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3047;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3046;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3046;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3046:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3047:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3057;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3057;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3056;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3056;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3056:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3057:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L3058:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L3059:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L3165;
  }

$29:
*(volatile int*)&&$28;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$29$0:
*(volatile int*)&&$29$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L3164;
  }

$29$1:
*(volatile int*)&&$29$0;
  if (fastMultiply_y == 1)
  {
$29$1$0:
*(volatile int*)&&$29$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L3164;
  }

$29$1$1:
*(volatile int*)&&$29$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$29$1$1$0:
*(volatile int*)&&$29$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L3163;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L3163;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3142;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3142;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3141;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3141;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3141:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3142:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3152;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3152;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3151;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3151;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3151:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3152:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3162;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3162;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3161;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3161;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3161:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3162:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L3163:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L3164:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L3165:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$30:
*(volatile int*)&&$31;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$30$0:
*(volatile int*)&&$30$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L3270;
    }

$30$1:
*(volatile int*)&&$30$0;
    if (fastMultiply_y == 1)
    {
$30$1$0:
*(volatile int*)&&$30$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L3270;
    }

$30$1$1:
*(volatile int*)&&$30$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$30$1$1$0:
*(volatile int*)&&$30$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L3269;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L3269;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3248;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3248;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3247;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3247;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3247:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3248:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3258;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3258;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3257;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3257;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3257:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3258:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3268;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3268;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3267;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3267;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3267:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3268:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L3269:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L3270:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L3376;
  }

$31:
*(volatile int*)&&$30;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$31$0:
*(volatile int*)&&$31$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L3375;
  }

$31$1:
*(volatile int*)&&$31$0;
  if (fastMultiply_y == 1)
  {
$31$1$0:
*(volatile int*)&&$31$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L3375;
  }

$31$1$1:
*(volatile int*)&&$31$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$31$1$1$0:
*(volatile int*)&&$31$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L3374;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L3374;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3353;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3353;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3352;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3352;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3352:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3353:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3363;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3363;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3362;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3362;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3362:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3363:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3373;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3373;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3372;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3372;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3372:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3373:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L3374:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L3375:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L3376:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$32:
*(volatile int*)&&$33;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$32$0:
*(volatile int*)&&$32$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L3481;
    }

$32$1:
*(volatile int*)&&$32$0;
    if (fastMultiply_y == 1)
    {
$32$1$0:
*(volatile int*)&&$32$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L3481;
    }

$32$1$1:
*(volatile int*)&&$32$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$32$1$1$0:
*(volatile int*)&&$32$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L3480;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L3480;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3459;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3459;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3458;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3458;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3458:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3459:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3469;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3469;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3468;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3468;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3468:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3469:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3479;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3479;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3478;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3478;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3478:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3479:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L3480:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L3481:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L3587;
  }

$33:
*(volatile int*)&&$32;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$33$0:
*(volatile int*)&&$33$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L3586;
  }

$33$1:
*(volatile int*)&&$33$0;
  if (fastMultiply_y == 1)
  {
$33$1$0:
*(volatile int*)&&$33$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L3586;
  }

$33$1$1:
*(volatile int*)&&$33$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$33$1$1$0:
*(volatile int*)&&$33$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L3585;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L3585;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3564;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3564;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3563;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3563;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3563:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3564:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3574;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3574;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3573;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3573;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3573:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3574:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3584;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3584;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3583;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3583;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3583:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3584:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L3585:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L3586:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L3587:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$34:
*(volatile int*)&&$35;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$34$0:
*(volatile int*)&&$34$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L3692;
    }

$34$1:
*(volatile int*)&&$34$0;
    if (fastMultiply_y == 1)
    {
$34$1$0:
*(volatile int*)&&$34$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L3692;
    }

$34$1$1:
*(volatile int*)&&$34$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$34$1$1$0:
*(volatile int*)&&$34$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L3691;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L3691;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3670;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3670;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3669;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3669;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3669:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3670:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3680;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3680;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3679;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3679;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3679:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3680:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3690;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3690;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3689;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3689;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3689:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3690:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L3691:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L3692:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L3798;
  }

$35:
*(volatile int*)&&$34;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$35$0:
*(volatile int*)&&$35$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L3797;
  }

$35$1:
*(volatile int*)&&$35$0;
  if (fastMultiply_y == 1)
  {
$35$1$0:
*(volatile int*)&&$35$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L3797;
  }

$35$1$1:
*(volatile int*)&&$35$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$35$1$1$0:
*(volatile int*)&&$35$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L3796;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L3796;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3775;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3775;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3774;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3774;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3774:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3775:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3785;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3785;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3784;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3784;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3784:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3785:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3795;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3795;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3794;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3794;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3794:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3795:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L3796:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L3797:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L3798:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$36:
*(volatile int*)&&$37;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$36$0:
*(volatile int*)&&$36$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L3903;
    }

$36$1:
*(volatile int*)&&$36$0;
    if (fastMultiply_y == 1)
    {
$36$1$0:
*(volatile int*)&&$36$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L3903;
    }

$36$1$1:
*(volatile int*)&&$36$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$36$1$1$0:
*(volatile int*)&&$36$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L3902;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L3902;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3881;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3881;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3880;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3880;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3880:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3881:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3891;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3891;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3890;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3890;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3890:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3891:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L3901;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L3901;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3900;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L3900;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L3900:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L3901:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L3902:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L3903:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L4009;
  }

$37:
*(volatile int*)&&$36;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$37$0:
*(volatile int*)&&$37$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L4008;
  }

$37$1:
*(volatile int*)&&$37$0;
  if (fastMultiply_y == 1)
  {
$37$1$0:
*(volatile int*)&&$37$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L4008;
  }

$37$1$1:
*(volatile int*)&&$37$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$37$1$1$0:
*(volatile int*)&&$37$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L4007;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L4007;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3986;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3986;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3985;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3985;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3985:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3986:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L3996;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L3996;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3995;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L3995;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L3995:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L3996:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4006;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4006;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4005;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4005;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4005:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4006:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L4007:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L4008:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L4009:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$38:
*(volatile int*)&&$39;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$38$0:
*(volatile int*)&&$38$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L4114;
    }

$38$1:
*(volatile int*)&&$38$0;
    if (fastMultiply_y == 1)
    {
$38$1$0:
*(volatile int*)&&$38$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L4114;
    }

$38$1$1:
*(volatile int*)&&$38$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$38$1$1$0:
*(volatile int*)&&$38$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L4113;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L4113;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4092;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4092;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4091;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4091;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4091:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4092:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4102;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4102;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4101;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4101;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4101:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4102:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4112;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4112;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4111;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4111;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4111:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4112:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L4113:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L4114:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L4220;
  }

$39:
*(volatile int*)&&$38;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$39$0:
*(volatile int*)&&$39$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L4219;
  }

$39$1:
*(volatile int*)&&$39$0;
  if (fastMultiply_y == 1)
  {
$39$1$0:
*(volatile int*)&&$39$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L4219;
  }

$39$1$1:
*(volatile int*)&&$39$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$39$1$1$0:
*(volatile int*)&&$39$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L4218;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L4218;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4197;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4197;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4196;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4196;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4196:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4197:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4207;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4207;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4206;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4206;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4206:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4207:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4217;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4217;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4216;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4216;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4216:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4217:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L4218:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L4219:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L4220:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$40:
*(volatile int*)&&$41;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$40$0:
*(volatile int*)&&$40$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L4325;
    }

$40$1:
*(volatile int*)&&$40$0;
    if (fastMultiply_y == 1)
    {
$40$1$0:
*(volatile int*)&&$40$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L4325;
    }

$40$1$1:
*(volatile int*)&&$40$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$40$1$1$0:
*(volatile int*)&&$40$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L4324;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L4324;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4303;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4303;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4302;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4302;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4302:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4303:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4313;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4313;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4312;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4312;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4312:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4313:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4323;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4323;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4322;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4322;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4322:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4323:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L4324:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L4325:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L4431;
  }

$41:
*(volatile int*)&&$40;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$41$0:
*(volatile int*)&&$41$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L4430;
  }

$41$1:
*(volatile int*)&&$41$0;
  if (fastMultiply_y == 1)
  {
$41$1$0:
*(volatile int*)&&$41$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L4430;
  }

$41$1$1:
*(volatile int*)&&$41$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$41$1$1$0:
*(volatile int*)&&$41$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L4429;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L4429;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4408;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4408;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4407;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4407;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4407:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4408:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4418;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4418;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4417;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4417;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4417:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4418:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4428;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4428;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4427;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4427;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4427:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4428:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L4429:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L4430:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L4431:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$42:
*(volatile int*)&&$43;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$42$0:
*(volatile int*)&&$42$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L4536;
    }

$42$1:
*(volatile int*)&&$42$0;
    if (fastMultiply_y == 1)
    {
$42$1$0:
*(volatile int*)&&$42$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L4536;
    }

$42$1$1:
*(volatile int*)&&$42$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$42$1$1$0:
*(volatile int*)&&$42$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L4535;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L4535;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4514;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4514;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4513;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4513;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4513:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4514:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4524;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4524;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4523;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4523;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4523:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4524:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4534;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4534;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4533;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4533;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4533:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4534:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L4535:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L4536:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L4642;
  }

$43:
*(volatile int*)&&$42;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$43$0:
*(volatile int*)&&$43$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L4641;
  }

$43$1:
*(volatile int*)&&$43$0;
  if (fastMultiply_y == 1)
  {
$43$1$0:
*(volatile int*)&&$43$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L4641;
  }

$43$1$1:
*(volatile int*)&&$43$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$43$1$1$0:
*(volatile int*)&&$43$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L4640;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L4640;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4619;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4619;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4618;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4618;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4618:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4619:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4629;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4629;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4628;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4628;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4628:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4629:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4639;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4639;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4638;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4638;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4638:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4639:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L4640:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L4641:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L4642:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$44:
*(volatile int*)&&$45;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$44$0:
*(volatile int*)&&$44$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L4747;
    }

$44$1:
*(volatile int*)&&$44$0;
    if (fastMultiply_y == 1)
    {
$44$1$0:
*(volatile int*)&&$44$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L4747;
    }

$44$1$1:
*(volatile int*)&&$44$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$44$1$1$0:
*(volatile int*)&&$44$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L4746;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L4746;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4725;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4725;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4724;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4724;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4724:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4725:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4735;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4735;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4734;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4734;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4734:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4735:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4745;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4745;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4744;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4744;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4744:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4745:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L4746:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L4747:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L4853;
  }

$45:
*(volatile int*)&&$44;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$45$0:
*(volatile int*)&&$45$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L4852;
  }

$45$1:
*(volatile int*)&&$45$0;
  if (fastMultiply_y == 1)
  {
$45$1$0:
*(volatile int*)&&$45$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L4852;
  }

$45$1$1:
*(volatile int*)&&$45$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$45$1$1$0:
*(volatile int*)&&$45$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L4851;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L4851;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4830;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4830;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4829;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4829;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4829:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4830:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4840;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4840;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4839;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4839;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4839:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4840:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L4850;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L4850;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4849;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L4849;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L4849:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L4850:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L4851:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L4852:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L4853:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$46:
*(volatile int*)&&$47;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$46$0:
*(volatile int*)&&$46$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L4958;
    }

$46$1:
*(volatile int*)&&$46$0;
    if (fastMultiply_y == 1)
    {
$46$1$0:
*(volatile int*)&&$46$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L4958;
    }

$46$1$1:
*(volatile int*)&&$46$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$46$1$1$0:
*(volatile int*)&&$46$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L4957;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L4957;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4936;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4936;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4935;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4935;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4935:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4936:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4946;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4946;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4945;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4945;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4945:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4946:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L4956;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L4956;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4955;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L4955;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L4955:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L4956:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L4957:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L4958:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L5064;
  }

$47:
*(volatile int*)&&$46;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$47$0:
*(volatile int*)&&$47$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L5063;
  }

$47$1:
*(volatile int*)&&$47$0;
  if (fastMultiply_y == 1)
  {
$47$1$0:
*(volatile int*)&&$47$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L5063;
  }

$47$1$1:
*(volatile int*)&&$47$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$47$1$1$0:
*(volatile int*)&&$47$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L5062;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L5062;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5041;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5041;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5040;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5040;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5040:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5041:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5051;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5051;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5050;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5050;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5050:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5051:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5061;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5061;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5060;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5060;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5060:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5061:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L5062:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L5063:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L5064:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$48:
*(volatile int*)&&$49;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$48$0:
*(volatile int*)&&$48$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L5169;
    }

$48$1:
*(volatile int*)&&$48$0;
    if (fastMultiply_y == 1)
    {
$48$1$0:
*(volatile int*)&&$48$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L5169;
    }

$48$1$1:
*(volatile int*)&&$48$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$48$1$1$0:
*(volatile int*)&&$48$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L5168;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L5168;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5147;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5147;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5146;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5146;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5146:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5147:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5157;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5157;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5156;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5156;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5156:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5157:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5167;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5167;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5166;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5166;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5166:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5167:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L5168:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L5169:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L5275;
  }

$49:
*(volatile int*)&&$48;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$49$0:
*(volatile int*)&&$49$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L5274;
  }

$49$1:
*(volatile int*)&&$49$0;
  if (fastMultiply_y == 1)
  {
$49$1$0:
*(volatile int*)&&$49$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L5274;
  }

$49$1$1:
*(volatile int*)&&$49$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$49$1$1$0:
*(volatile int*)&&$49$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L5273;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L5273;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5252;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5252;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5251;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5251;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5251:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5252:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5262;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5262;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5261;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5261;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5261:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5262:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5272;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5272;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5271;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5271;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5271:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5272:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L5273:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L5274:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L5275:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$50:
*(volatile int*)&&$51;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$50$0:
*(volatile int*)&&$50$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L5380;
    }

$50$1:
*(volatile int*)&&$50$0;
    if (fastMultiply_y == 1)
    {
$50$1$0:
*(volatile int*)&&$50$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L5380;
    }

$50$1$1:
*(volatile int*)&&$50$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$50$1$1$0:
*(volatile int*)&&$50$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L5379;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L5379;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5358;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5358;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5357;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5357;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5357:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5358:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5368;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5368;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5367;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5367;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5367:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5368:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5378;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5378;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5377;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5377;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5377:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5378:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L5379:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L5380:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L5486;
  }

$51:
*(volatile int*)&&$50;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$51$0:
*(volatile int*)&&$51$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L5485;
  }

$51$1:
*(volatile int*)&&$51$0;
  if (fastMultiply_y == 1)
  {
$51$1$0:
*(volatile int*)&&$51$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L5485;
  }

$51$1$1:
*(volatile int*)&&$51$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$51$1$1$0:
*(volatile int*)&&$51$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L5484;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L5484;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5463;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5463;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5462;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5462;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5462:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5463:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5473;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5473;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5472;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5472;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5472:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5473:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5483;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5483;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5482;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5482;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5482:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5483:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L5484:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L5485:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L5486:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$52:
*(volatile int*)&&$53;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$52$0:
*(volatile int*)&&$52$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L5591;
    }

$52$1:
*(volatile int*)&&$52$0;
    if (fastMultiply_y == 1)
    {
$52$1$0:
*(volatile int*)&&$52$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L5591;
    }

$52$1$1:
*(volatile int*)&&$52$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$52$1$1$0:
*(volatile int*)&&$52$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L5590;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L5590;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5569;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5569;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5568;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5568;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5568:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5569:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5579;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5579;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5578;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5578;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5578:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5579:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5589;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5589;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5588;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5588;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5588:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5589:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L5590:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L5591:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L5697;
  }

$53:
*(volatile int*)&&$52;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$53$0:
*(volatile int*)&&$53$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L5696;
  }

$53$1:
*(volatile int*)&&$53$0;
  if (fastMultiply_y == 1)
  {
$53$1$0:
*(volatile int*)&&$53$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L5696;
  }

$53$1$1:
*(volatile int*)&&$53$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$53$1$1$0:
*(volatile int*)&&$53$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L5695;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L5695;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5674;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5674;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5673;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5673;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5673:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5674:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5684;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5684;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5683;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5683;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5683:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5684:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5694;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5694;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5693;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5693;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5693:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5694:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L5695:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L5696:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L5697:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$54:
*(volatile int*)&&$55;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$54$0:
*(volatile int*)&&$54$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L5802;
    }

$54$1:
*(volatile int*)&&$54$0;
    if (fastMultiply_y == 1)
    {
$54$1$0:
*(volatile int*)&&$54$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L5802;
    }

$54$1$1:
*(volatile int*)&&$54$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$54$1$1$0:
*(volatile int*)&&$54$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L5801;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L5801;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5780;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5780;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5779;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5779;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5779:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5780:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5790;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5790;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5789;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5789;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5789:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5790:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5800;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5800;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5799;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5799;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5799:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5800:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L5801:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L5802:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L5908;
  }

$55:
*(volatile int*)&&$54;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$55$0:
*(volatile int*)&&$55$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L5907;
  }

$55$1:
*(volatile int*)&&$55$0;
  if (fastMultiply_y == 1)
  {
$55$1$0:
*(volatile int*)&&$55$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L5907;
  }

$55$1$1:
*(volatile int*)&&$55$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$55$1$1$0:
*(volatile int*)&&$55$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L5906;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L5906;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5885;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5885;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5884;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5884;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5884:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5885:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5895;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5895;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5894;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5894;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5894:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5895:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L5905;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L5905;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5904;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L5904;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L5904:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L5905:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L5906:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L5907:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L5908:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$56:
*(volatile int*)&&$57;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$56$0:
*(volatile int*)&&$56$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L6013;
    }

$56$1:
*(volatile int*)&&$56$0;
    if (fastMultiply_y == 1)
    {
$56$1$0:
*(volatile int*)&&$56$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L6013;
    }

$56$1$1:
*(volatile int*)&&$56$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$56$1$1$0:
*(volatile int*)&&$56$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L6012;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L6012;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L5991;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L5991;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5990;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L5990;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L5990:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L5991:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6001;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6001;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6000;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6000;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6000:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6001:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6011;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6011;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6010;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6010;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6010:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6011:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L6012:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L6013:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L6119;
  }

$57:
*(volatile int*)&&$56;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$57$0:
*(volatile int*)&&$57$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L6118;
  }

$57$1:
*(volatile int*)&&$57$0;
  if (fastMultiply_y == 1)
  {
$57$1$0:
*(volatile int*)&&$57$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L6118;
  }

$57$1$1:
*(volatile int*)&&$57$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$57$1$1$0:
*(volatile int*)&&$57$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L6117;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L6117;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6096;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6096;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6095;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6095;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6095:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6096:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6106;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6106;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6105;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6105;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6105:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6106:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6116;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6116;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6115;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6115;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6115:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6116:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L6117:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L6118:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L6119:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$58:
*(volatile int*)&&$59;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$58$0:
*(volatile int*)&&$58$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L6224;
    }

$58$1:
*(volatile int*)&&$58$0;
    if (fastMultiply_y == 1)
    {
$58$1$0:
*(volatile int*)&&$58$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L6224;
    }

$58$1$1:
*(volatile int*)&&$58$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$58$1$1$0:
*(volatile int*)&&$58$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L6223;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L6223;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6202;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6202;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6201;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6201;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6201:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6202:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6212;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6212;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6211;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6211;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6211:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6212:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6222;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6222;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6221;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6221;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6221:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6222:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L6223:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L6224:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L6330;
  }

$59:
*(volatile int*)&&$58;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$59$0:
*(volatile int*)&&$59$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L6329;
  }

$59$1:
*(volatile int*)&&$59$0;
  if (fastMultiply_y == 1)
  {
$59$1$0:
*(volatile int*)&&$59$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L6329;
  }

$59$1$1:
*(volatile int*)&&$59$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$59$1$1$0:
*(volatile int*)&&$59$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L6328;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L6328;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6307;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6307;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6306;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6306;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6306:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6307:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6317;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6317;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6316;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6316;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6316:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6317:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6327;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6327;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6326;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6326;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6326:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6327:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L6328:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L6329:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L6330:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$60:
*(volatile int*)&&$61;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$60$0:
*(volatile int*)&&$60$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L6435;
    }

$60$1:
*(volatile int*)&&$60$0;
    if (fastMultiply_y == 1)
    {
$60$1$0:
*(volatile int*)&&$60$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L6435;
    }

$60$1$1:
*(volatile int*)&&$60$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$60$1$1$0:
*(volatile int*)&&$60$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L6434;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L6434;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6413;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6413;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6412;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6412;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6412:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6413:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6423;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6423;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6422;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6422;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6422:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6423:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6433;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6433;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6432;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6432;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6432:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6433:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L6434:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L6435:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L6541;
  }

$61:
*(volatile int*)&&$60;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$61$0:
*(volatile int*)&&$61$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L6540;
  }

$61$1:
*(volatile int*)&&$61$0;
  if (fastMultiply_y == 1)
  {
$61$1$0:
*(volatile int*)&&$61$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L6540;
  }

$61$1$1:
*(volatile int*)&&$61$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$61$1$1$0:
*(volatile int*)&&$61$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L6539;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L6539;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6518;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6518;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6517;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6517;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6517:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6518:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6528;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6528;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6527;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6527;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6527:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6528:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6538;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6538;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6537;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6537;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6537:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6538:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L6539:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L6540:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L6541:
  ;

  main_i = main_i + 1;
  if (!((main_exponent & (1 << ((main_width + (-main_i)) + (-1)))) == 0))
  {
$62:
*(volatile int*)&&$63;
    ;
    fastMultiply_x = main_r0;
    fastMultiply_y = main_r1;
    fastMultiply_xLen = 32;
    fastMultiply_yLen = 32;
    if (fastMultiply_x == 1)
    {
$62$0:
*(volatile int*)&&$62$1;
      main_return_value_fastMultiply = fastMultiply_y;
      goto __CPROVER_DUMP_L6646;
    }

$62$1:
*(volatile int*)&&$62$0;
    if (fastMultiply_y == 1)
    {
$62$1$0:
*(volatile int*)&&$62$1$1;
      main_return_value_fastMultiply = fastMultiply_x;
      goto __CPROVER_DUMP_L6646;
    }

$62$1$1:
*(volatile int*)&&$62$1$0;
    fastMultiply_ret = 0;
    fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
    fastMultiply_conditionObj0 = 800;
    fastMultiply_conditionObj1 = 32;
    if (fastMultiply_conditionObj0 >= fastMultiply_N)
    {
$62$1$1$0:
*(volatile int*)&&$62$1$1$1;
      fastMultiply_ret = fastMultiply_x * fastMultiply_y;
      goto __CPROVER_DUMP_L6645;
    }

    ;
    abs_x = fastMultiply_xLen - fastMultiply_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
    {
      fastMultiply_ret = 0;
      fastMultiply_i = 0;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
      {
      }
      else
      {
        fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
      }

      fastMultiply_i = fastMultiply_i + 1;
      goto __CPROVER_DUMP_L6645;
    }

    fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
    fastMultiply_b = fastMultiply_x >> fastMultiply_N;
    fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
    fastMultiply_d = fastMultiply_y >> fastMultiply_N;
    fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
    ;
    fastMultiply_1_x = fastMultiply_a;
    fastMultiply_1_y = fastMultiply_c;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6624;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6624;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6623;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6623;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6623:
    ;

    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6624:
    ;

    fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
    ;
    fastMultiply_1_x = fastMultiply_b;
    fastMultiply_1_y = fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6634;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6634;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6633;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6633;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6633:
    ;

    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6634:
    ;

    fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
    ;
    fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
    fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
    fastMultiply_1_xLen = 32;
    fastMultiply_1_yLen = 32;
    if (fastMultiply_1_x == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
      goto __CPROVER_DUMP_L6644;
    }

    if (fastMultiply_1_y == 1)
    {
      fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
      goto __CPROVER_DUMP_L6644;
    }

    fastMultiply_1_ret = 0;
    fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
    fastMultiply_1_conditionObj0 = 800;
    fastMultiply_1_conditionObj1 = 32;
    if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6643;
    }

    ;
    abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
    abs_mask = abs_x >> 31;
    fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
    ;
    if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
    {
      fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
      goto __CPROVER_DUMP_L6643;
    }

    fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
    fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
    fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
    fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
    fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
    fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
    fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
    fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
    fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
    __CPROVER_DUMP_L6643:
    ;

    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
    ;
    __CPROVER_DUMP_L6644:
    ;

    fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
    fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
    __CPROVER_DUMP_L6645:
    ;

    main_return_value_fastMultiply = fastMultiply_ret;
    ;
    __CPROVER_DUMP_L6646:
    ;

    main_r1 = main_return_value_fastMultiply % main_modulus_pub;
    main_r0 = (main_r0 * main_r0) % main_modulus_pub;
    goto __CPROVER_DUMP_L6752;
  }

$63:
*(volatile int*)&&$62;
  ;
  fastMultiply_x = main_r0;
  fastMultiply_y = main_r1;
  fastMultiply_xLen = 32;
  fastMultiply_yLen = 32;
  if (fastMultiply_x == 1)
  {
$63$0:
*(volatile int*)&&$63$1;
    main_return_value_fastMultiply$0 = fastMultiply_y;
    goto __CPROVER_DUMP_L6751;
  }

$63$1:
*(volatile int*)&&$63$0;
  if (fastMultiply_y == 1)
  {
$63$1$0:
*(volatile int*)&&$63$1$1;
    main_return_value_fastMultiply$0 = fastMultiply_x;
    goto __CPROVER_DUMP_L6751;
  }

$63$1$1:
*(volatile int*)&&$63$1$0;
  fastMultiply_ret = 0;
  fastMultiply_N = (fastMultiply_xLen < fastMultiply_yLen) ? (fastMultiply_yLen) : (fastMultiply_xLen);
  fastMultiply_conditionObj0 = 800;
  fastMultiply_conditionObj1 = 32;
  if (fastMultiply_conditionObj0 >= fastMultiply_N)
  {
$63$1$1$0:
*(volatile int*)&&$63$1$1$1;
    fastMultiply_ret = fastMultiply_x * fastMultiply_y;
    goto __CPROVER_DUMP_L6750;
  }

  ;
  abs_x = fastMultiply_xLen - fastMultiply_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_return_value_abs >= fastMultiply_conditionObj1)
  {
    fastMultiply_ret = 0;
    fastMultiply_i = 0;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    if ((fastMultiply_y & (1 << fastMultiply_i)) == 0)
    {
    }
    else
    {
      fastMultiply_ret = fastMultiply_ret + (fastMultiply_x << fastMultiply_i);
    }

    fastMultiply_i = fastMultiply_i + 1;
    goto __CPROVER_DUMP_L6750;
  }

  fastMultiply_N = (fastMultiply_N / 2) + (fastMultiply_N % 2);
  fastMultiply_b = fastMultiply_x >> fastMultiply_N;
  fastMultiply_a = fastMultiply_x - (fastMultiply_b << fastMultiply_N);
  fastMultiply_d = fastMultiply_y >> fastMultiply_N;
  fastMultiply_c = fastMultiply_y - (fastMultiply_d << fastMultiply_N);
  ;
  fastMultiply_1_x = fastMultiply_a;
  fastMultiply_1_y = fastMultiply_c;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6729;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6729;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6728;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6728;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6728:
  ;

  fastMultiply_return_value_fastMultiply_1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6729:
  ;

  fastMultiply_ac = fastMultiply_return_value_fastMultiply_1;
  ;
  fastMultiply_1_x = fastMultiply_b;
  fastMultiply_1_y = fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6739;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6739;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6738;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6738;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6738:
  ;

  fastMultiply_return_value_fastMultiply_1$0 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6739:
  ;

  fastMultiply_bd = fastMultiply_return_value_fastMultiply_1$0;
  ;
  fastMultiply_1_x = fastMultiply_a + fastMultiply_b;
  fastMultiply_1_y = fastMultiply_c + fastMultiply_d;
  fastMultiply_1_xLen = 32;
  fastMultiply_1_yLen = 32;
  if (fastMultiply_1_x == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_y;
    goto __CPROVER_DUMP_L6749;
  }

  if (fastMultiply_1_y == 1)
  {
    fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_x;
    goto __CPROVER_DUMP_L6749;
  }

  fastMultiply_1_ret = 0;
  fastMultiply_1_N = (fastMultiply_1_xLen < fastMultiply_1_yLen) ? (fastMultiply_1_yLen) : (fastMultiply_1_xLen);
  fastMultiply_1_conditionObj0 = 800;
  fastMultiply_1_conditionObj1 = 32;
  if (fastMultiply_1_conditionObj0 >= fastMultiply_1_N)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6748;
  }

  ;
  abs_x = fastMultiply_1_xLen - fastMultiply_1_yLen;
  abs_mask = abs_x >> 31;
  fastMultiply_1_return_value_abs = (abs_x + abs_mask) ^ abs_mask;
  ;
  if (fastMultiply_1_return_value_abs >= fastMultiply_1_conditionObj1)
  {
    fastMultiply_1_ret = fastMultiply_1_x * fastMultiply_1_y;
    goto __CPROVER_DUMP_L6748;
  }

  fastMultiply_1_N = (fastMultiply_1_N / 2) + (fastMultiply_1_N % 2);
  fastMultiply_1_b = fastMultiply_1_x >> fastMultiply_1_N;
  fastMultiply_1_a = fastMultiply_1_x - (fastMultiply_1_b << fastMultiply_1_N);
  fastMultiply_1_d = fastMultiply_1_y >> fastMultiply_1_N;
  fastMultiply_1_c = fastMultiply_1_y - (fastMultiply_1_d << fastMultiply_1_N);
  fastMultiply_1_ac = fastMultiply_1_return_value_fastMultiply_1;
  fastMultiply_1_bd = fastMultiply_1_return_value_fastMultiply_1$0;
  fastMultiply_1_crossterms = fastMultiply_1_return_value_fastMultiply_1$1;
  fastMultiply_1_ret = fastMultiply_1_ac + (((((fastMultiply_1_crossterms - fastMultiply_1_ac) - fastMultiply_1_bd) << fastMultiply_1_N) + fastMultiply_1_bd) << (2 * fastMultiply_1_N));
  __CPROVER_DUMP_L6748:
  ;

  fastMultiply_return_value_fastMultiply_1$1 = fastMultiply_1_ret;
  ;
  __CPROVER_DUMP_L6749:
  ;

  fastMultiply_crossterms = fastMultiply_return_value_fastMultiply_1$1;
  fastMultiply_ret = fastMultiply_ac + (((((fastMultiply_crossterms - fastMultiply_ac) - fastMultiply_bd) << fastMultiply_N) + fastMultiply_bd) << (2 * fastMultiply_N));
  __CPROVER_DUMP_L6750:
  ;

  main_return_value_fastMultiply$0 = fastMultiply_ret;
  ;
  __CPROVER_DUMP_L6751:
  ;

  main_r0 = main_return_value_fastMultiply$0 % main_modulus_pub;
  main_r1 = (main_r1 * main_r1) % main_modulus_pub;
  __CPROVER_DUMP_L6752:
  ;

  main_i = main_i + 1;
}

