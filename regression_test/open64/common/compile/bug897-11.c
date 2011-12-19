//OBJ
//TAG: csmith
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
int16_t g_4 = 0x48C6L;
int32_t g_26 = 0L;
int32_t * volatile g_25 = &g_26;
int32_t * volatile g_102 = &g_26;
uint64_t func_104(int32_t ** p_105, const uint32_t p_106, int32_t * p_107, int64_t p_108, uint64_t p_109) {
  int32_t *l_134 = 0;
  int32_t **l_133 = &l_134;
  int32_t **l_135 = 0;
  for (g_4 = 0;
       g_4 < 5;
       g_4 += 1)     {
    int32_t l_128 = 0x0C33ADB5L;
    if ((((l_133 == &l_134) & (0 != l_135)) && l_128))         {
      int32_t l_138 = 0x2751B8D9L;
      if ((*p_107))             {
        if (l_128)                 {
          if ((!(safe_mul_func_int8_t_s_s(l_138, (&g_102 != 0)))))                     {
            const int32_t l_143 = 0x2C646EC4L;
            (*l_133) = &g_26;
            (*p_107) ^= (safe_lshift_func_uint8_t_u_s((func_50(&l_138, g_26, (safe_mul_func_int8_t_s_s(0L, ((g_26 > p_108) >= l_143)))) >= 0xAD5AL), (&g_25 == &p_107)));
            (*p_107) ^= (*l_134);
          }
        }
      }
    }
  }
}
