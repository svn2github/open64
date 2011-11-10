//OBJ
//TAG: csmith
typedef short int int16_t;
typedef int int32_t;
typedef unsigned long int uint64_t;
int32_t g_3 = 0L;
uint64_t func_1(void) {
  int32_t *l_2 = &g_3;
  int32_t **l_4 = &l_2;
  const int16_t l_5 = 0xFC55L;
  (*l_4) = l_2;
  (*l_2) = g_3;
  (*l_2) ^= l_5;
}

