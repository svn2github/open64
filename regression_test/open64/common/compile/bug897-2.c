//TAG: csmith
//OBJ

typedef int int32_t;
typedef long int int64_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
struct S0 {
  uint64_t f0;
  uint8_t f2;
  const uint32_t f3;
  uint64_t f5;
  int64_t f7;
};
struct S1 {
  int64_t f1;
  int32_t f4;
};
uint32_t g_2 = 9U;
int32_t g_17 = 0x260389A9L;
int32_t g_24 = 1L;
const int32_t *g_81 = &g_24;
int32_t g_106 = 0x2503B3C4L;
int32_t g_148[10][10][1] = {
};
int32_t g_150 = 3L;
struct S0 g_171[9][10] = {
};
struct S0 g_186 = {
  18446744073709551615U,0xB7L,0U,0x91CDE436L,1L,0xA7FF29F3L,0x5184A0F1L,-1L};
struct S1 g_203 = {
  0L,0x59BD7B0DL,0x6458L,4294967287U,1L,-1L};
struct S0 g_228[5] = {
};
struct S0 g_230[8][10] = {
};
struct S0 g_246[8] = {
};
const struct S0 g_338 = {
};
uint16_t func_121(int32_t p_122) {
  uint8_t l_123 = 250U;
  int32_t *l_124 = &g_17;
  int64_t l_142 = 0x6609A124L;
if
  ((safe_add_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((safe_unary_minus_func_uint64_t_u((safe_div_func_uint16_t_u_u(p_122,
                                                                                                                        (*l_124))))), 0xE927CFDA208E2B08LL)) < (safe_sub_func_int16_t_s_s((&g_81 ==
                                                                                                                                                                                           &g_81), (safe_rshift_func_int16_t_s_u((safe_div_func_uint16_t_u_u((p_122 <
                                                                                                                                                                                                                                                              g_106), (*l_124))), (safe_lshift_func_int8_t_s_u(p_122, 2))))))),
                              ((0x6C05CDAFBE715026LL && 0L) | (0x8584L && l_142))))) {
  for (p_122 = 0;
       p_122 < 10;
       g_186.f7 = safe_sub_func_uint16_t_u_u(g_186.f7, 8)) {
    for (g_203.f4 = (-28);
         (g_203.f4 >= (-21));
         g_203.f4 = safe_add_func_uint16_t_u_u(g_203.f4, 4)) {
    }
  }
  for (g_186.f2 = 6;
       (g_186.f2 > 23);
       g_186.f2 = safe_add_func_int8_t_s_s(g_186.f2, 1)) {
    int32_t **l_324 = &l_124;
    if ((((p_122 || g_2) & p_122) && (safe_sub_func_int8_t_s_s(p_122,
                                                               (safe_mul_func_int8_t_s_s((((safe_div_func_uint32_t_u_u(g_228[1].f5,
                                                                                                                       g_148[(uint32_t)(p_122) % 10][(uint64_t)(l_142) % 10][(g_186.f0) % 1])) >
                                                                                           g_171[7][8].f5) > (*l_124)), g_230[1][7].f3)))))) {
      if ((safe_mul_func_uint16_t_u_u(g_106, g_148[(uint32_t)(p_122) %
                                                   10][(uint64_t)(l_142) % 10][(g_186.f0) % 1]))) {
        for (g_203.f1 = 1;
             g_203.f1 < 10;
             g_203.f1 += 1) {
        }
        for (l_123 = 0;
             (l_123 <= 12);
             l_123 = safe_add_func_int32_t_s_s(l_123, 8)) {
          (*l_324) = &g_150;
          g_150 = (p_122 < ((((*l_124) ^ g_338.f3) != ((-1L) <= ((-2L) &
                                                                 (safe_add_func_uint64_t_u_u(g_150, g_246[1].f2))))) ^ g_186.f0));
        }
      }
    }
  }
 }
}
