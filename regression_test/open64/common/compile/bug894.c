//OBJ
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
struct S0 {
  uint16_t f1;
  int32_t f5;
  int16_t f7;
};
int32_t g_4 = 3L;
struct S0 g_15 = {
  0x8900FDB6L,0x6893L,65535U,0xA318L,-1L,0xE6B6CD33L,0L,0x7001L};
const int32_t *g_99 = &g_15.f5;
struct S0 g_110 = {
};
struct S0 g_121 = {
  0x3CEB4B62L,0xC330L,3U,0xC8DEL,0x7960L,0x978F22BBL,0xB770L,3L};
const struct S0 * volatile g_175 = 0;
const struct S0 * volatile *g_174 = &g_175;
uint64_t func_42(int32_t * const p_43, uint32_t p_44, int32_t ** p_45, uint64_t
                 p_46, int32_t ** p_47) {
  const int64_t l_58 = (-1L);
  const int32_t *l_68 = 0;
  const int32_t **l_67 = &l_68;
  struct S0 *l_177 = 0;
  struct S0 **l_176 = &l_177;
  if ((safe_add_func_uint8_t_u_u(p_44, g_4))) {
    if (((((safe_div_func_uint16_t_u_u(((safe_add_func_int64_t_s_s(g_15.f7,
                                                                   l_58)) < p_44), func_59((safe_div_func_int8_t_s_s(p_44, p_44)), l_67,
                                                                                           func_69(p_44, p_44, p_44)))) >= (0 == &l_68)) & (g_174 == l_176)) != g_15.f1))
      {
        uint64_t l_181[2][3] = {
        };
        for (g_110.f1 = 0;
             (g_110.f1 < 42);
             g_110.f1 = safe_add_func_int8_t_s_s(g_110.f1, 1)) {
          const int32_t **l_186 = &g_99;
          for (g_121.f5 = 0;
               g_121.f5 < 2;
               g_121.f5 += 1) {
            for (g_121.f1 = 1;
                 g_121.f1 < 3;
                 g_121.f1 += 1) {
              const int32_t ***l_191 = &l_186;
              (*l_191) = &g_99;
              if (l_181[(uint32_t)(g_121.f5) % 2][(g_121.f1) % 3]) {
                (*p_43) |= (*g_99); (*p_43) |= (**l_186); }
            }
          }
        }
      }
  }
}
