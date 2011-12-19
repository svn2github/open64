//TAG: csmith
//OBJ

typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned char uint8_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
int32_t g_3 = 0x99FF6065L;
int32_t g_8[8] = {
  0x46507E67L, (-1L), 0x06887E08L, (-1L), 0x46507E67L, 0x813F1A07L, 0x46507E67L,
  (-1L)};
int64_t g_222 = 9L;
const uint8_t func_13(int64_t p_14, int32_t * p_15, int32_t * p_16) {
  int i, j, k;
  for (i = 0;
       i < 3;
       i++) {
    for (j = 0;
         j < 9;
         j++)  {
    }
  }
  for (p_14 = 0;
       p_14 < 8;
       p_14 += 4)     {
    for (g_3 = 19;
         (g_3 < 16);
         g_3 = safe_sub_func_uint8_t_u_u(g_3, 1)) {
      if (g_8[(uint32_t)((p_14 + 1)) % 8]) {
        uint32_t l_636 = 0U;
        for (g_222 = 0;
             (g_222 == 25);
             g_222 = safe_add_func_int64_t_s_s(g_222, 1))  {
          int16_t l_635[10][8] = {  };
          if ((*p_16))                     {
            (*p_15) |= (l_635[0][1] <= (g_8[(uint32_t)((p_14 + 1)) % 8] > g_8[1]));
            (*p_16) ^= l_636;
            (*p_16) ^= (g_8[(uint32_t)((p_14 + 1)) % 8] == g_8[(uint32_t)((p_14 + 7)) %
                                                               8]);
          }
        }
      }
    }
    return g_8[(uint64_t)(p_14) % 8];
  }
}
