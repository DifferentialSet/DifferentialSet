struct anonymous$0;
union anonymous;
typedef struct anonymous$0 V;
void branch_id(char *str);
unsigned long long int uint64_t_secure_load(unsigned long long int *, void **, unsigned int, unsigned int);
typedef union anonymous
{
  signed int i;
  char c[4];
} U;
struct anonymous$0
{
  U u;
};
V my_union;
void branch_id(char *str)
{
  ;
}

signed int main()
{
  signed long long int main_l;
  signed long long int memop_var_0;
  memop_var_0 = uint64_t_secure_load((unsigned long long int *) (&(*((signed long long int *) (&my_union)))), obsv_ds__0, obsv_ds_bases_size__0, obsv_ds_size__0);
  main_l = memop_var_0;
}

