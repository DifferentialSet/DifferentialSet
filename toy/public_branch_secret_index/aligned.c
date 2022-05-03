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
  signed int main_p_pub;
  signed int memop_var_0;
  if (!(main_p_pub == 0))
  {
    main_index = (signed int) ((main_s_sec % 64u) + 64u);
    memop_var_0 = uint32_t_secure_load_onebase((unsigned int *) (&main_arr[main_index]), (char *) main_arr, (const unsigned long long [64]){256, 260, 264, 268, 272, 276, 280, 284, 288, 292, 296, 300, 304, 308, 312, 316, 320, 324, 328, 332, 336, 340, 344, 348, 352, 356, 360, 364, 368, 372, 376, 380, 384, 388, 392, 396, 400, 404, 408, 412, 416, 420, 424, 428, 432, 436, 440, 444, 448, 452, 456, 460, 464, 468, 472, 476, 480, 484, 488, 492, 496, 500, 504, 508}, 64, 1, 256, 508, 0, 0);
    main_res = memop_var_0;
    goto __CPROVER_DUMP_L3;
  }

  main_index = (signed int) (main_s_sec % 64u);
  signed int memop_var_1;
  memop_var_1 = uint32_t_secure_load_onebase((unsigned int *) (&main_arr[main_index]), (char *) main_arr, (const unsigned long long [64]){0, 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 144, 148, 152, 156, 160, 164, 168, 172, 176, 180, 184, 188, 192, 196, 200, 204, 208, 212, 216, 220, 224, 228, 232, 236, 240, 244, 248, 252}, 64, 1, 0, 252, 0, 0);
  main_res = memop_var_1;
  __CPROVER_DUMP_L3:
  ;

}

