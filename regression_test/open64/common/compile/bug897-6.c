//TAG: csmith
//OBJ

typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
int32_t g_4 = 0x7B1891F7L;
int32_t g_8[9] = {
  1L, (-3L), 1L, (-3L), 1L, (-3L), 1L, (-3L), 1L};
int32_t g_59 = 0xA8055A54L;
int32_t g_60 = 1L;
uint8_t g_81[8][8] = {
};
int32_t g_82[3] = {
  1L, 0xEFD7F9B6L, 1L};
int32_t *g_117 = &g_82[2];
int32_t * const *g_116 = &g_117;
int8_t g_324 = 8L;
uint64_t func_45(int8_t p_46, int16_t p_47, uint16_t p_48) {
  int32_t *l_281 = &g_60;
  int32_t l_413 = 0x9094DFB8L;
 lbl_481: if (g_8[3]) {
    int32_t **l_423 = &l_281;
    for (g_59 = 3;
         g_59 < 8;
         g_59 += 4) {
      for (g_4 = 4;
           g_4 < 8;
           g_4 += 1) {
        int32_t *l_430 = &l_413;
      lbl_428: (**l_423) = (g_81[3][4] && func_100(g_324, &g_117, g_8[1]));
        for (g_60 = (-7);
             (g_60 == (-6));
             g_60 = safe_add_func_uint32_t_u_u(g_60, 1)) {
          if ((safe_mod_func_int64_t_s_s((p_47 ^ g_81[(uint32_t)(g_59) %
                                                      8][(uint32_t)(g_4) % 8]), ((*l_281) & (**g_116))))) {
            (*l_423) = l_430;
            if ((*l_281)) {
              (*l_281) &= (safe_rshift_func_uint16_t_u_u(0xE245L, 11));
            }
          }
          return g_59;
        }
      }
    }
  }
}
