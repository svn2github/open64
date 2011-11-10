//OBJ
//TAG: csmith
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned long int uint64_t;
struct S0 {
  uint64_t f1;
  int8_t f2;
  volatile uint64_t f3;
  const uint64_t f4;
};
int64_t g_19 = 0xCA70051EFDB7B241LL;
int32_t g_24 = 7L;
int32_t g_67[6][8][1] = {
};
int32_t *g_102 = &g_67[5][0][0];
int32_t ** volatile g_101 = &g_102;
int32_t *g_146 = &g_67[3][1][0];
int32_t g_167 = 0L;
int32_t *g_174 = &g_67[3][0][0];
struct S0 g_197 = {
  4294967292U,18446744073709551615U,0xD1L,18446744073709551606U,0xABCCD47DF34B8501LL};
struct S0 g_199 = {
  1U,0U,0x33L,0xEDE0B67276F1C910LL,0U};
struct S0 g_264[7] = {
};
struct S0 g_266 = {
  0xF4C75CBCL,9U,0x27L,0x8A352BA2A9D10A57LL,0x6C017785D073137ELL};
int32_t ** volatile g_529 = &g_146;
int32_t * func_63(int32_t * p_64, int16_t p_65, int32_t * p_66) {
  int32_t *l_432[2];
  int32_t **l_553 = &l_432[1];
  int32_t ***l_552 = &l_553;
  if ((((**g_101) >= g_24) !=
       (safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(0x1FL, (func_35(g_197.f2)
                                                                    < g_199.f1))),
                                 (safe_mul_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((*g_146) < (*g_146))
                                                                                         == func_35(g_264[5].f4)), (safe_add_func_int16_t_s_s(g_264[5].f1, 0x1018L)))),
                                                            p_65)))))) {
    const int64_t l_556 = 1L;
    int32_t ***l_567 = &l_553;
    if ((safe_lshift_func_uint16_t_u_s(l_556, (func_68(g_197.f3) &&
                                               (safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(p_65,
                                                                                                                                  2)), (***l_552))), (safe_div_func_int32_t_s_s(1L, g_266.f2)))))))) {
      int8_t l_609[4] = {
        0L, 0L, (-9L), 0L};
      if (((~(safe_lshift_func_int8_t_s_s((p_65 != (~l_609[1])), p_65))) >
           0x0577B84EL)) {
        (*l_553) = p_66;
      }
      else {
        (**l_567) = p_64;
      }
      if (((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((p_65 |
                                                                   (***l_567)), g_167)), (func_68(p_65) | 0x8008L))) == l_609[1])) {
      lbl_645: (*l_552) = &g_174;
        if ((safe_sub_func_int16_t_s_s(g_199.f1,
                                       ((safe_unary_minus_func_int32_t_s((**g_529))) > func_68(g_266.f2))))) {
          if (g_19) goto lbl_645;
        }
      }
    }
  }
}

