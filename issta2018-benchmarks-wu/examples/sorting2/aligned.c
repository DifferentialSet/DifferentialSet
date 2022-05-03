#include <unistd.h>
struct __CPROVER_pipet;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long long int __uint64_t;
typedef unsigned int size_t;
typedef signed int ssize_t;
inline static __uint16_t __bswap_16(__uint16_t __bsx);
inline static __uint32_t __bswap_32(__uint32_t __bsx);
inline static __uint64_t __bswap_64(__uint64_t __bsx);
inline static __uint16_t __uint16_identity(__uint16_t __x);
inline static __uint32_t __uint32_identity(__uint32_t __x);
inline static __uint64_t __uint64_identity(__uint64_t __x);
void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void uint32_t_secure_store(unsigned int, unsigned int *, void **, unsigned int, unsigned int);
struct __CPROVER_pipet
{
  _Bool widowed;
  char data[4];
  signed short int next_avail;
  signed short int next_unread;
};
signed int a[8];
void branch_id(char *str)
{
  ;
}

signed int main()
{
  unsigned int main_temp;
  unsigned int main_min;
  unsigned int main_j;
  unsigned int main_i;
  unsigned int main_a[8];
  read(0, (const void *) a, sizeof(signed int [8]));
  main_i = 0u;
  unsigned int memop_var_0;
  unsigned int memop_var_1;
  unsigned int memop_var_2;
  unsigned int memop_var_3;
  unsigned int memop_var_4;
  unsigned int memop_var_5;
  unsigned int memop_var_6;
  unsigned int memop_var_7;
  unsigned int memop_var_8;
  unsigned int memop_var_9;
  unsigned int memop_var_10;
  unsigned int memop_var_11;
  unsigned int memop_var_12;
  unsigned int memop_var_13;
  unsigned int memop_var_14;
  unsigned int memop_var_15;
  unsigned int memop_var_18;
  unsigned int memop_var_19;
  unsigned int memop_var_20;
  unsigned int memop_var_21;
  unsigned int memop_var_22;
  unsigned int memop_var_23;
  unsigned int memop_var_24;
  unsigned int memop_var_25;
  unsigned int memop_var_26;
  unsigned int memop_var_27;
  unsigned int memop_var_28;
  unsigned int memop_var_29;
  unsigned int memop_var_30;
  unsigned int memop_var_31;
  unsigned int memop_var_32;
  unsigned int memop_var_33;
  unsigned int memop_var_36;
  unsigned int memop_var_37;
  unsigned int memop_var_38;
  unsigned int memop_var_39;
  unsigned int memop_var_40;
  unsigned int memop_var_41;
  unsigned int memop_var_42;
  unsigned int memop_var_43;
  unsigned int memop_var_44;
  unsigned int memop_var_45;
  unsigned int memop_var_46;
  unsigned int memop_var_47;
  unsigned int memop_var_48;
  unsigned int memop_var_49;
  unsigned int memop_var_50;
  unsigned int memop_var_51;
  unsigned int memop_var_54;
  unsigned int memop_var_55;
  unsigned int memop_var_56;
  unsigned int memop_var_57;
  unsigned int memop_var_58;
  unsigned int memop_var_59;
  unsigned int memop_var_60;
  unsigned int memop_var_61;
  unsigned int memop_var_62;
  unsigned int memop_var_63;
  unsigned int memop_var_64;
  unsigned int memop_var_65;
  unsigned int memop_var_66;
  unsigned int memop_var_67;
  unsigned int memop_var_68;
  unsigned int memop_var_69;
  unsigned int memop_var_72;
  unsigned int memop_var_73;
  unsigned int memop_var_74;
  unsigned int memop_var_75;
  unsigned int memop_var_76;
  unsigned int memop_var_77;
  unsigned int memop_var_78;
  unsigned int memop_var_79;
  unsigned int memop_var_80;
  unsigned int memop_var_81;
  unsigned int memop_var_82;
  unsigned int memop_var_83;
  unsigned int memop_var_84;
  unsigned int memop_var_85;
  unsigned int memop_var_86;
  unsigned int memop_var_87;
  unsigned int memop_var_90;
  unsigned int memop_var_91;
  unsigned int memop_var_92;
  unsigned int memop_var_93;
  unsigned int memop_var_94;
  unsigned int memop_var_95;
  unsigned int memop_var_96;
  unsigned int memop_var_97;
  unsigned int memop_var_98;
  unsigned int memop_var_99;
  unsigned int memop_var_100;
  unsigned int memop_var_101;
  unsigned int memop_var_102;
  unsigned int memop_var_103;
  unsigned int memop_var_104;
  unsigned int memop_var_105;
  if (main_i >= 7u)
  {
    branch_id("$1");
  }
  else
  {
    branch_id("$0");
    main_min = main_i;
    main_j = main_i + 1u;
    memop_var_0 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_0, obsv_ds_bases_size_$0_0, obsv_ds_size_$0_0);
    memop_var_1 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_1, obsv_ds_bases_size_$0_1, obsv_ds_size_$0_1);
    if (memop_var_0 >= memop_var_1)
    {
      branch_id("$0$1");
    }
    else
    {
      branch_id("$0$0");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_2 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_2, obsv_ds_bases_size_$0_2, obsv_ds_size_$0_2);
    memop_var_3 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_3, obsv_ds_bases_size_$0_3, obsv_ds_size_$0_3);
    if (memop_var_2 >= memop_var_3)
    {
      branch_id("$0$3");
    }
    else
    {
      branch_id("$0$2");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_4 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_4, obsv_ds_bases_size_$0_4, obsv_ds_size_$0_4);
    memop_var_5 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_5, obsv_ds_bases_size_$0_5, obsv_ds_size_$0_5);
    if (memop_var_4 >= memop_var_5)
    {
      branch_id("$0$5");
    }
    else
    {
      branch_id("$0$4");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_6 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_6, obsv_ds_bases_size_$0_6, obsv_ds_size_$0_6);
    memop_var_7 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_7, obsv_ds_bases_size_$0_7, obsv_ds_size_$0_7);
    if (memop_var_6 >= memop_var_7)
    {
      branch_id("$0$7");
    }
    else
    {
      branch_id("$0$6");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_8 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_8, obsv_ds_bases_size_$0_8, obsv_ds_size_$0_8);
    memop_var_9 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_9, obsv_ds_bases_size_$0_9, obsv_ds_size_$0_9);
    if (memop_var_8 >= memop_var_9)
    {
      branch_id("$0$9");
    }
    else
    {
      branch_id("$0$8");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_10 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_10, obsv_ds_bases_size_$0_10, obsv_ds_size_$0_10);
    memop_var_11 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_11, obsv_ds_bases_size_$0_11, obsv_ds_size_$0_11);
    if (memop_var_10 >= memop_var_11)
    {
      branch_id("$0$11");
    }
    else
    {
      branch_id("$0$10");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_12 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0_12, obsv_ds_bases_size_$0_12, obsv_ds_size_$0_12);
    memop_var_13 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_13, obsv_ds_bases_size_$0_13, obsv_ds_size_$0_13);
    if (memop_var_12 >= memop_var_13)
    {
      branch_id("$0$13");
    }
    else
    {
      branch_id("$0$12");
      main_min = main_j;
    }

    main_j = main_j + 1u;
    memop_var_14 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0_14, obsv_ds_bases_size_$0_14, obsv_ds_size_$0_14);
    main_temp = memop_var_14;
    memop_var_15 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_15, obsv_ds_bases_size_$0_15, obsv_ds_size_$0_15);
    uint32_t_secure_store((unsigned int) memop_var_15, (unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0_16, obsv_ds_bases_size_$0_16, obsv_ds_size_$0_16);
    uint32_t_secure_store((unsigned int) main_temp, (unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0_17, obsv_ds_bases_size_$0_17, obsv_ds_size_$0_17);
    main_i = main_i + 1u;
    if (main_i >= 7u)
    {
      branch_id("$0$15");
    }
    else
    {
      branch_id("$0$14");
      main_min = main_i;
      main_j = main_i + 1u;
      memop_var_18 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_18, obsv_ds_bases_size_$0$14_18, obsv_ds_size_$0$14_18);
      memop_var_19 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_19, obsv_ds_bases_size_$0$14_19, obsv_ds_size_$0$14_19);
      if (memop_var_18 >= memop_var_19)
      {
        branch_id("$0$14$1");
      }
      else
      {
        branch_id("$0$14$0");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_20 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_20, obsv_ds_bases_size_$0$14_20, obsv_ds_size_$0$14_20);
      memop_var_21 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_21, obsv_ds_bases_size_$0$14_21, obsv_ds_size_$0$14_21);
      if (memop_var_20 >= memop_var_21)
      {
        branch_id("$0$14$3");
      }
      else
      {
        branch_id("$0$14$2");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_22 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_22, obsv_ds_bases_size_$0$14_22, obsv_ds_size_$0$14_22);
      memop_var_23 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_23, obsv_ds_bases_size_$0$14_23, obsv_ds_size_$0$14_23);
      if (memop_var_22 >= memop_var_23)
      {
        branch_id("$0$14$5");
      }
      else
      {
        branch_id("$0$14$4");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_24 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_24, obsv_ds_bases_size_$0$14_24, obsv_ds_size_$0$14_24);
      memop_var_25 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_25, obsv_ds_bases_size_$0$14_25, obsv_ds_size_$0$14_25);
      if (memop_var_24 >= memop_var_25)
      {
        branch_id("$0$14$7");
      }
      else
      {
        branch_id("$0$14$6");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_26 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_26, obsv_ds_bases_size_$0$14_26, obsv_ds_size_$0$14_26);
      memop_var_27 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_27, obsv_ds_bases_size_$0$14_27, obsv_ds_size_$0$14_27);
      if (memop_var_26 >= memop_var_27)
      {
        branch_id("$0$14$9");
      }
      else
      {
        branch_id("$0$14$8");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_28 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_28, obsv_ds_bases_size_$0$14_28, obsv_ds_size_$0$14_28);
      memop_var_29 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_29, obsv_ds_bases_size_$0$14_29, obsv_ds_size_$0$14_29);
      if (memop_var_28 >= memop_var_29)
      {
        branch_id("$0$14$11");
      }
      else
      {
        branch_id("$0$14$10");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_30 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14_30, obsv_ds_bases_size_$0$14_30, obsv_ds_size_$0$14_30);
      memop_var_31 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_31, obsv_ds_bases_size_$0$14_31, obsv_ds_size_$0$14_31);
      if (memop_var_30 >= memop_var_31)
      {
        branch_id("$0$14$13");
      }
      else
      {
        branch_id("$0$14$12");
        main_min = main_j;
      }

      main_j = main_j + 1u;
      memop_var_32 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14_32, obsv_ds_bases_size_$0$14_32, obsv_ds_size_$0$14_32);
      main_temp = memop_var_32;
      memop_var_33 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_33, obsv_ds_bases_size_$0$14_33, obsv_ds_size_$0$14_33);
      uint32_t_secure_store((unsigned int) memop_var_33, (unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14_34, obsv_ds_bases_size_$0$14_34, obsv_ds_size_$0$14_34);
      uint32_t_secure_store((unsigned int) main_temp, (unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14_35, obsv_ds_bases_size_$0$14_35, obsv_ds_size_$0$14_35);
      main_i = main_i + 1u;
      if (main_i >= 7u)
      {
        branch_id("$0$14$15");
      }
      else
      {
        branch_id("$0$14$14");
        main_min = main_i;
        main_j = main_i + 1u;
        memop_var_36 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_36, obsv_ds_bases_size_$0$14$14_36, obsv_ds_size_$0$14$14_36);
        memop_var_37 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_37, obsv_ds_bases_size_$0$14$14_37, obsv_ds_size_$0$14$14_37);
        if (memop_var_36 >= memop_var_37)
        {
          branch_id("$0$14$14$1");
        }
        else
        {
          branch_id("$0$14$14$0");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_38 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_38, obsv_ds_bases_size_$0$14$14_38, obsv_ds_size_$0$14$14_38);
        memop_var_39 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_39, obsv_ds_bases_size_$0$14$14_39, obsv_ds_size_$0$14$14_39);
        if (memop_var_38 >= memop_var_39)
        {
          branch_id("$0$14$14$3");
        }
        else
        {
          branch_id("$0$14$14$2");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_40 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_40, obsv_ds_bases_size_$0$14$14_40, obsv_ds_size_$0$14$14_40);
        memop_var_41 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_41, obsv_ds_bases_size_$0$14$14_41, obsv_ds_size_$0$14$14_41);
        if (memop_var_40 >= memop_var_41)
        {
          branch_id("$0$14$14$5");
        }
        else
        {
          branch_id("$0$14$14$4");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_42 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_42, obsv_ds_bases_size_$0$14$14_42, obsv_ds_size_$0$14$14_42);
        memop_var_43 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_43, obsv_ds_bases_size_$0$14$14_43, obsv_ds_size_$0$14$14_43);
        if (memop_var_42 >= memop_var_43)
        {
          branch_id("$0$14$14$7");
        }
        else
        {
          branch_id("$0$14$14$6");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_44 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_44, obsv_ds_bases_size_$0$14$14_44, obsv_ds_size_$0$14$14_44);
        memop_var_45 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_45, obsv_ds_bases_size_$0$14$14_45, obsv_ds_size_$0$14$14_45);
        if (memop_var_44 >= memop_var_45)
        {
          branch_id("$0$14$14$9");
        }
        else
        {
          branch_id("$0$14$14$8");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_46 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_46, obsv_ds_bases_size_$0$14$14_46, obsv_ds_size_$0$14$14_46);
        memop_var_47 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_47, obsv_ds_bases_size_$0$14$14_47, obsv_ds_size_$0$14$14_47);
        if (memop_var_46 >= memop_var_47)
        {
          branch_id("$0$14$14$11");
        }
        else
        {
          branch_id("$0$14$14$10");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_48 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14_48, obsv_ds_bases_size_$0$14$14_48, obsv_ds_size_$0$14$14_48);
        memop_var_49 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_49, obsv_ds_bases_size_$0$14$14_49, obsv_ds_size_$0$14$14_49);
        if (memop_var_48 >= memop_var_49)
        {
          branch_id("$0$14$14$13");
        }
        else
        {
          branch_id("$0$14$14$12");
          main_min = main_j;
        }

        main_j = main_j + 1u;
        memop_var_50 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14_50, obsv_ds_bases_size_$0$14$14_50, obsv_ds_size_$0$14$14_50);
        main_temp = memop_var_50;
        memop_var_51 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_51, obsv_ds_bases_size_$0$14$14_51, obsv_ds_size_$0$14$14_51);
        uint32_t_secure_store((unsigned int) memop_var_51, (unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14_52, obsv_ds_bases_size_$0$14$14_52, obsv_ds_size_$0$14$14_52);
        uint32_t_secure_store((unsigned int) main_temp, (unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14_53, obsv_ds_bases_size_$0$14$14_53, obsv_ds_size_$0$14$14_53);
        main_i = main_i + 1u;
        if (main_i >= 7u)
        {
          branch_id("$0$14$14$15");
        }
        else
        {
          branch_id("$0$14$14$14");
          main_min = main_i;
          main_j = main_i + 1u;
          memop_var_54 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_54, obsv_ds_bases_size_$0$14$14$14_54, obsv_ds_size_$0$14$14$14_54);
          memop_var_55 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_55, obsv_ds_bases_size_$0$14$14$14_55, obsv_ds_size_$0$14$14$14_55);
          if (memop_var_54 >= memop_var_55)
          {
            branch_id("$0$14$14$14$1");
          }
          else
          {
            branch_id("$0$14$14$14$0");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_56 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_56, obsv_ds_bases_size_$0$14$14$14_56, obsv_ds_size_$0$14$14$14_56);
          memop_var_57 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_57, obsv_ds_bases_size_$0$14$14$14_57, obsv_ds_size_$0$14$14$14_57);
          if (memop_var_56 >= memop_var_57)
          {
            branch_id("$0$14$14$14$3");
          }
          else
          {
            branch_id("$0$14$14$14$2");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_58 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_58, obsv_ds_bases_size_$0$14$14$14_58, obsv_ds_size_$0$14$14$14_58);
          memop_var_59 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_59, obsv_ds_bases_size_$0$14$14$14_59, obsv_ds_size_$0$14$14$14_59);
          if (memop_var_58 >= memop_var_59)
          {
            branch_id("$0$14$14$14$5");
          }
          else
          {
            branch_id("$0$14$14$14$4");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_60 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_60, obsv_ds_bases_size_$0$14$14$14_60, obsv_ds_size_$0$14$14$14_60);
          memop_var_61 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_61, obsv_ds_bases_size_$0$14$14$14_61, obsv_ds_size_$0$14$14$14_61);
          if (memop_var_60 >= memop_var_61)
          {
            branch_id("$0$14$14$14$7");
          }
          else
          {
            branch_id("$0$14$14$14$6");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_62 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_62, obsv_ds_bases_size_$0$14$14$14_62, obsv_ds_size_$0$14$14$14_62);
          memop_var_63 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_63, obsv_ds_bases_size_$0$14$14$14_63, obsv_ds_size_$0$14$14$14_63);
          if (memop_var_62 >= memop_var_63)
          {
            branch_id("$0$14$14$14$9");
          }
          else
          {
            branch_id("$0$14$14$14$8");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_64 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_64, obsv_ds_bases_size_$0$14$14$14_64, obsv_ds_size_$0$14$14$14_64);
          memop_var_65 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_65, obsv_ds_bases_size_$0$14$14$14_65, obsv_ds_size_$0$14$14$14_65);
          if (memop_var_64 >= memop_var_65)
          {
            branch_id("$0$14$14$14$11");
          }
          else
          {
            branch_id("$0$14$14$14$10");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_66 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14_66, obsv_ds_bases_size_$0$14$14$14_66, obsv_ds_size_$0$14$14$14_66);
          memop_var_67 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_67, obsv_ds_bases_size_$0$14$14$14_67, obsv_ds_size_$0$14$14$14_67);
          if (memop_var_66 >= memop_var_67)
          {
            branch_id("$0$14$14$14$13");
          }
          else
          {
            branch_id("$0$14$14$14$12");
            main_min = main_j;
          }

          main_j = main_j + 1u;
          memop_var_68 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14$14_68, obsv_ds_bases_size_$0$14$14$14_68, obsv_ds_size_$0$14$14$14_68);
          main_temp = memop_var_68;
          memop_var_69 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_69, obsv_ds_bases_size_$0$14$14$14_69, obsv_ds_size_$0$14$14$14_69);
          uint32_t_secure_store((unsigned int) memop_var_69, (unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14$14_70, obsv_ds_bases_size_$0$14$14$14_70, obsv_ds_size_$0$14$14$14_70);
          uint32_t_secure_store((unsigned int) main_temp, (unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14_71, obsv_ds_bases_size_$0$14$14$14_71, obsv_ds_size_$0$14$14$14_71);
          main_i = main_i + 1u;
          if (main_i >= 7u)
          {
            branch_id("$0$14$14$14$15");
          }
          else
          {
            branch_id("$0$14$14$14$14");
            main_min = main_i;
            main_j = main_i + 1u;
            memop_var_72 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_72, obsv_ds_bases_size_$0$14$14$14$14_72, obsv_ds_size_$0$14$14$14$14_72);
            memop_var_73 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_73, obsv_ds_bases_size_$0$14$14$14$14_73, obsv_ds_size_$0$14$14$14$14_73);
            if (memop_var_72 >= memop_var_73)
            {
              branch_id("$0$14$14$14$14$1");
            }
            else
            {
              branch_id("$0$14$14$14$14$0");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_74 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_74, obsv_ds_bases_size_$0$14$14$14$14_74, obsv_ds_size_$0$14$14$14$14_74);
            memop_var_75 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_75, obsv_ds_bases_size_$0$14$14$14$14_75, obsv_ds_size_$0$14$14$14$14_75);
            if (memop_var_74 >= memop_var_75)
            {
              branch_id("$0$14$14$14$14$3");
            }
            else
            {
              branch_id("$0$14$14$14$14$2");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_76 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_76, obsv_ds_bases_size_$0$14$14$14$14_76, obsv_ds_size_$0$14$14$14$14_76);
            memop_var_77 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_77, obsv_ds_bases_size_$0$14$14$14$14_77, obsv_ds_size_$0$14$14$14$14_77);
            if (memop_var_76 >= memop_var_77)
            {
              branch_id("$0$14$14$14$14$5");
            }
            else
            {
              branch_id("$0$14$14$14$14$4");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_78 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_78, obsv_ds_bases_size_$0$14$14$14$14_78, obsv_ds_size_$0$14$14$14$14_78);
            memop_var_79 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_79, obsv_ds_bases_size_$0$14$14$14$14_79, obsv_ds_size_$0$14$14$14$14_79);
            if (memop_var_78 >= memop_var_79)
            {
              branch_id("$0$14$14$14$14$7");
            }
            else
            {
              branch_id("$0$14$14$14$14$6");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_80 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_80, obsv_ds_bases_size_$0$14$14$14$14_80, obsv_ds_size_$0$14$14$14$14_80);
            memop_var_81 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_81, obsv_ds_bases_size_$0$14$14$14$14_81, obsv_ds_size_$0$14$14$14$14_81);
            if (memop_var_80 >= memop_var_81)
            {
              branch_id("$0$14$14$14$14$9");
            }
            else
            {
              branch_id("$0$14$14$14$14$8");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_82 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_82, obsv_ds_bases_size_$0$14$14$14$14_82, obsv_ds_size_$0$14$14$14$14_82);
            memop_var_83 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_83, obsv_ds_bases_size_$0$14$14$14$14_83, obsv_ds_size_$0$14$14$14$14_83);
            if (memop_var_82 >= memop_var_83)
            {
              branch_id("$0$14$14$14$14$11");
            }
            else
            {
              branch_id("$0$14$14$14$14$10");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_84 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14_84, obsv_ds_bases_size_$0$14$14$14$14_84, obsv_ds_size_$0$14$14$14$14_84);
            memop_var_85 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_85, obsv_ds_bases_size_$0$14$14$14$14_85, obsv_ds_size_$0$14$14$14$14_85);
            if (memop_var_84 >= memop_var_85)
            {
              branch_id("$0$14$14$14$14$13");
            }
            else
            {
              branch_id("$0$14$14$14$14$12");
              main_min = main_j;
            }

            main_j = main_j + 1u;
            memop_var_86 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14$14$14_86, obsv_ds_bases_size_$0$14$14$14$14_86, obsv_ds_size_$0$14$14$14$14_86);
            main_temp = memop_var_86;
            memop_var_87 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_87, obsv_ds_bases_size_$0$14$14$14$14_87, obsv_ds_size_$0$14$14$14$14_87);
            uint32_t_secure_store((unsigned int) memop_var_87, (unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14$14$14_88, obsv_ds_bases_size_$0$14$14$14$14_88, obsv_ds_size_$0$14$14$14$14_88);
            uint32_t_secure_store((unsigned int) main_temp, (unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14_89, obsv_ds_bases_size_$0$14$14$14$14_89, obsv_ds_size_$0$14$14$14$14_89);
            main_i = main_i + 1u;
            if (main_i >= 7u)
            {
              branch_id("$0$14$14$14$14$15");
            }
            else
            {
              branch_id("$0$14$14$14$14$14");
              main_min = main_i;
              main_j = main_i + 1u;
              memop_var_90 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_90, obsv_ds_bases_size_$0$14$14$14$14$14_90, obsv_ds_size_$0$14$14$14$14$14_90);
              memop_var_91 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_91, obsv_ds_bases_size_$0$14$14$14$14$14_91, obsv_ds_size_$0$14$14$14$14$14_91);
              if (memop_var_90 >= memop_var_91)
              {
                branch_id("$0$14$14$14$14$14$1");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$0");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_92 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_92, obsv_ds_bases_size_$0$14$14$14$14$14_92, obsv_ds_size_$0$14$14$14$14$14_92);
              memop_var_93 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_93, obsv_ds_bases_size_$0$14$14$14$14$14_93, obsv_ds_size_$0$14$14$14$14$14_93);
              if (memop_var_92 >= memop_var_93)
              {
                branch_id("$0$14$14$14$14$14$3");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$2");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_94 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_94, obsv_ds_bases_size_$0$14$14$14$14$14_94, obsv_ds_size_$0$14$14$14$14$14_94);
              memop_var_95 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_95, obsv_ds_bases_size_$0$14$14$14$14$14_95, obsv_ds_size_$0$14$14$14$14$14_95);
              if (memop_var_94 >= memop_var_95)
              {
                branch_id("$0$14$14$14$14$14$5");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$4");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_96 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_96, obsv_ds_bases_size_$0$14$14$14$14$14_96, obsv_ds_size_$0$14$14$14$14$14_96);
              memop_var_97 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_97, obsv_ds_bases_size_$0$14$14$14$14$14_97, obsv_ds_size_$0$14$14$14$14$14_97);
              if (memop_var_96 >= memop_var_97)
              {
                branch_id("$0$14$14$14$14$14$7");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$6");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_98 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_98, obsv_ds_bases_size_$0$14$14$14$14$14_98, obsv_ds_size_$0$14$14$14$14$14_98);
              memop_var_99 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_99, obsv_ds_bases_size_$0$14$14$14$14$14_99, obsv_ds_size_$0$14$14$14$14$14_99);
              if (memop_var_98 >= memop_var_99)
              {
                branch_id("$0$14$14$14$14$14$9");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$8");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_100 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_100, obsv_ds_bases_size_$0$14$14$14$14$14_100, obsv_ds_size_$0$14$14$14$14$14_100);
              memop_var_101 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_101, obsv_ds_bases_size_$0$14$14$14$14$14_101, obsv_ds_size_$0$14$14$14$14$14_101);
              if (memop_var_100 >= memop_var_101)
              {
                branch_id("$0$14$14$14$14$14$11");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$10");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_102 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_j]), obsv_ds_$0$14$14$14$14$14_102, obsv_ds_bases_size_$0$14$14$14$14$14_102, obsv_ds_size_$0$14$14$14$14$14_102);
              memop_var_103 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_103, obsv_ds_bases_size_$0$14$14$14$14$14_103, obsv_ds_size_$0$14$14$14$14$14_103);
              if (memop_var_102 >= memop_var_103)
              {
                branch_id("$0$14$14$14$14$14$13");
              }
              else
              {
                branch_id("$0$14$14$14$14$14$12");
                main_min = main_j;
              }

              main_j = main_j + 1u;
              memop_var_104 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14$14$14$14_104, obsv_ds_bases_size_$0$14$14$14$14$14_104, obsv_ds_size_$0$14$14$14$14$14_104);
              main_temp = memop_var_104;
              memop_var_105 = uint32_t_secure_load((unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_105, obsv_ds_bases_size_$0$14$14$14$14$14_105, obsv_ds_size_$0$14$14$14$14$14_105);
              uint32_t_secure_store((unsigned int) memop_var_105, (unsigned int *) (&main_a[(signed int) main_i]), obsv_ds_$0$14$14$14$14$14_106, obsv_ds_bases_size_$0$14$14$14$14$14_106, obsv_ds_size_$0$14$14$14$14$14_106);
              uint32_t_secure_store((unsigned int) main_temp, (unsigned int *) (&main_a[(signed int) main_min]), obsv_ds_$0$14$14$14$14$14_107, obsv_ds_bases_size_$0$14$14$14$14$14_107, obsv_ds_size_$0$14$14$14$14$14_107);
              main_i = main_i + 1u;
            }

          }

        }

      }

    }

  }

  write(1, (const void *) main_a, sizeof(unsigned int [8]));
}

