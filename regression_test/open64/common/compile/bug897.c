//OBJ
typedef short int int16_t;
typedef int int32_t;
typedef unsigned char uint8_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
int32_t g_46 = 0L;
int32_t g_71 = 0L;
int32_t *g_311 = &g_46;
int32_t * func_19(int32_t * p_20, int16_t p_21, int32_t * p_22, const uint8_t
                  p_23, int32_t * p_24) {
  int32_t **l_426 = &g_311;
  const uint64_t l_440 = 0x2A1DFCF9L;
  for (p_21 = (-24);
       (p_21 < 1);
       p_21 = safe_add_func_int16_t_s_s(p_21, 3)) {
    int32_t ***l_428 = &l_426;
    (*l_428) = &g_311;
    if ((*p_20)) {
      if (l_440) {
      }
      else {
        uint32_t l_445 = 4U;
        if ((*g_311)) {
          if ((safe_rshift_func_uint16_t_u_s(func_124((&p_22 !=
                                                       &p_24)), 10))) {
            (*g_311) |= l_445;
            (**l_426) |= (*p_24);
            g_311 = &g_71;
          }
        }
      }
    }
  }
}
