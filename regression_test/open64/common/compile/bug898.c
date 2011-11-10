//OBJ
//TAG: csmith
typedef int int32_t;
typedef long int int64_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned long int uint64_t;
struct S0 {
  int32_t f0;
  uint64_t f1;
};
volatile int32_t g_39 = (-1L);
volatile int32_t *g_38[9] = {  &g_39, &g_39, &g_39, &g_39, &g_39, &g_39, &g_39,
                               &g_39, &g_39};
volatile int32_t **g_37 = &g_38[0];
int32_t g_51 = 0xE831E341L;
int32_t g_59 = 0x79E46ED4L;
struct S0 g_64 = {1L,18446744073709551614U};
int32_t g_98 = (-1L);
uint16_t g_132 = 0xE483L;
int32_t * const *g_192 = 0;
uint8_t func_80(uint8_t p_81, int32_t *** p_82) {
  struct S0 l_83[10][8] = {  };
  uint64_t l_252 = 18446744073709551612U;
  for (g_59 = 3;  (g_59 != 7);  g_59 = safe_add_func_int64_t_s_s(g_59, 1)) {
    int32_t *l_87 = &l_83[6][1].f0;
    if ((safe_lshift_func_uint8_t_u_u(((0 != (*g_37)) |
                                       (safe_mul_func_int16_t_s_s((((safe_add_func_uint8_t_u_u(g_64.f1, p_81)) >
                                                                    func_94((*l_87), g_192)) != (safe_rshift_func_int16_t_s_s((-1L), 12))),
                                                                  ((~(l_83[6][1].f0 ^ g_64.f1)) |
                                                                   (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(g_132,
                                                                                                                                l_83[6][1].f0)), 5)))))), 1))) {
      int64_t l_212 = 0x8DAE918E3CBC813BLL;
      int i, j, k;
      for (i = 0;
           i < 10;
           g_64.f0 = safe_add_func_int32_t_s_s(g_64.f0, 1)) {
        int32_t * const *l_203 = &l_87;
      lbl_256: if ((safe_rshift_func_int16_t_s_s(g_132,
                                                 (safe_rshift_func_uint8_t_u_s(l_212, (p_81 >= l_83[6][1].f1)))))) {
          if ((**l_203)) {
            (*l_87) = l_252;
          }
          else {
            int32_t *l_253 = &g_98;
            (**l_203) |= (*l_253);
          }
          g_51 = (*l_87);
        }
      }
    }
  }
}
