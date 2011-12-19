//OBJ
//TAG: csmith
typedef short int int16_t;
typedef int int32_t;
typedef unsigned char uint8_t;
struct S0 {
  int32_t f4;
  volatile uint8_t f8;
};
int32_t g_20[4][1][1] = {
};
int32_t g_27 = 0x32B7B88CL;
int32_t g_29 = 0xC6581630L;
struct S0 g_149 = {
  0U,4U,0xFE829D69L,-7L,-9L,0xB1BBL,249U,-4L,0xCEL,-1L};
struct S0 g_205[10] = {
};
int32_t * func_42(int16_t p_43) {
  int32_t *l_44 = &g_20[3][0][0];
  int32_t *l_288 = &g_27;
  if ((l_44 == l_44))     {
    if (((((0 == l_44) <= (safe_div_func_uint32_t_u_u(((safe_mod_func_uint32_t_u_u(p_43, p_43)) ^ (safe_rshift_func_uint8_t_u_s((*l_44), 1))), p_43))) ^ p_43) && p_43))         {
      for (g_149.f4 = 0;
           (g_149.f4 == (-30));
           g_149.f4 = safe_sub_func_int16_t_s_s(g_149.f4, 2))             {
      }
      struct S0 *l_290 = &g_149;
      int32_t * const l_301 = &g_29;
      int32_t **l_308 = &l_288;
      (*l_308) = l_301;
      if ((safe_lshift_func_int8_t_s_s(p_43, g_205[4].f8)))             {
        const struct S0 *l_334 = &g_149;
        const struct S0 **l_333 = &l_334;
        int32_t l_336 = 0x4A4EDF46L;
        if (p_43)                 {
        }
        else                 {
          struct S0 **l_332 = &l_290;
          if ((l_332 != l_333))                     {
            (*l_288) = (-6L);
            (*l_288) |= l_336;
          }
        }
      lbl_354:                 (*l_301) ^= (&l_44 != &l_288);
      }
    }
  }
}
