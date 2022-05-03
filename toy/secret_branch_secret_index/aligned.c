void branch_id(char *str);
unsigned int uint32_t_secure_load(unsigned int *, void **, unsigned int, unsigned int);
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed int main_index;
  signed int main_res;
  signed int main_arr[128];
  unsigned int main_s_sec;
  signed int main_p_sec;
  signed int memop_var_0;
  if ((main_s_sec % 2u) == 0u)
  {
$0:
*(int*)&&$1;
    main_index = (signed int) ((main_s_sec % 64u) + 64u);
    memop_var_0 = uint32_t_secure_load_sensitive_onebase((unsigned int *) (&main_arr[main_index]), (char *) main_arr, (const unsigned long long [64]){4, 12, 20, 28, 36, 44, 52, 60, 68, 76, 84, 92, 100, 108, 116, 124, 132, 140, 148, 156, 164, 172, 180, 188, 196, 204, 212, 220, 228, 236, 244, 252, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504}, 64, 1, 4, 504, 0, 0);
    main_res = memop_var_0;
    goto __CPROVER_DUMP_L3;
  }

$1:
*(int*)&&$0;
  main_index = (signed int) (main_s_sec % 64u);
  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load_sensitive_onebase((unsigned int *) (&main_arr[main_index]), (char *) main_arr, (const unsigned long long [64]){4, 12, 20, 28, 36, 44, 52, 60, 68, 76, 84, 92, 100, 108, 116, 124, 132, 140, 148, 156, 164, 172, 180, 188, 196, 204, 212, 220, 228, 236, 244, 252, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504}, 64, 1, 4, 504, 0, 0);
  main_res = memop_var_1;
  __CPROVER_DUMP_L3:
  ;

}

