//OBJ
//TAG: csmith
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned long int uint64_t;
struct S0 {
  int32_t f4;
};
struct S1 {
  uint8_t f0;
  uint64_t f1;
  uint64_t f2;
  uint8_t f4;
};
struct S2 {
  volatile int32_t f0;
  int16_t f3;
  int8_t f4;
};
int32_t g_80[8] = {
  0xD1686206L, 0L, 0xD1686206L, 0L, 0xD1686206L, 0L, 0xD1686206L, 0L};
struct S1 g_213 = {
  247U,0xFF6ADF050D5A8CB6LL,0xDCD2DBF4B4AC7E99LL,0x1A22EE4FL,7U};
struct S1 g_217 = {
  0x2CA30342L,-1L,2L,1U,-2L};
struct S2 g_303 = {
  1L,9U,{
    0x13L,3U,0x1C53814E0662998BLL,1U,0U}
  ,-9L,7L};
struct S1 g_356 = {
  0xB8L,0x97772F32E9D030D9LL,0xC73109D701B9DBF9LL,18446744073709551614U,247U};
uint16_t g_390[2] = {
  8U, 8U};
struct S1 g_415 = {
  0xA74702C8L,65528U,{
    0x9CL,0x029102097631E59FLL,0x4BD269E7FABF30F5LL,9U,0U}
  ,0x0B85L,0x96L};
struct S1 g_473 = {
  254U,0xFAEA7D278E8508F9LL,0x39DDDB8344C8DBCBLL,0x18E05712L,0xFDL};
struct S1 g_475 = {
  0xFBL,0x3D6549262EDF9CFBLL,0xC27E4DEB5FC81542LL,18446744073709551607U,1U};
const int32_t *g_528 = &g_80[5];
struct S0 g_549 = {
  0U,0x6136L,0L,8U,-10L};
struct S2 g_619 = {
  0xF0L,7U,0x4E50B78FBFE21B30LL,0x6F659CBDL,0x5DL};
int16_t func_58(const uint64_t p_59) {
  int8_t l_574 = 1L;
  const int32_t **l_575 = &g_528;
  const int32_t ***l_577 = &l_575;
  int32_t l_584 = 0L;
  (*l_577) = l_575;
  for (l_574 = 4;
       (l_574 != (-8));
       l_574 = safe_sub_func_int16_t_s_s(l_574, 9)) {
    const int32_t l_589 = 1L;
    uint8_t l_603 = 0U;
    if (((safe_lshift_func_uint16_t_u_u(p_59, 6)) == l_589)) {
      for (g_473.f4 = 0;
           g_473.f4 < 5;
           g_473.f4 += 1) {
        for (g_473.f2 = 0;
             g_473.f2 < 2;
             g_473.f2 += 1) {
          for (g_475.f0 = 0;
               g_475.f0 < 10;
               g_475.f0 += 6) {
            for (g_415.f1 = (-11);
                 (g_415.f1 != 24);
                 g_415.f1 = safe_add_func_uint32_t_u_u(g_415.f1, 6)) {
              for (g_473.f0 = 14;
                   (g_473.f0 <= 32);
                   g_473.f0 = safe_add_func_int32_t_s_s(g_473.f0, 2)) {
                if (g_213.f0) goto lbl_604;
              }
              for (g_415.f2 = 0;
                   g_415.f2 < 1;
                   g_415.f2 += 1) {
              }
            }
          }
        }
      }
    }
  lbl_604: l_603 = (**l_575);
    l_584 ^= (**l_575);
    int8_t l_609 = 0L;
    if (func_67(0U, (l_609 <= g_390[1]))) {
      for (g_217.f2 = (-27);
           (g_217.f2 >= 50);
           g_217.f2 = safe_add_func_int16_t_s_s(g_217.f2, 1)) {
        for (g_303.f3 = 0;
             (g_303.f3 == (-12));
             g_303.f3 = safe_sub_func_int16_t_s_s(g_303.f3, 4)) {
          struct S2 *l_618 = &g_619;
          for (g_549.f4 = 0;
               (g_549.f4 <= 12);
               g_549.f4 = safe_add_func_uint8_t_u_u(g_549.f4, 1)) {
            int32_t *l_617 = &l_584;
            struct S2 **l_620[1][1];
            int i, j;
            for (i = 0;
                 i < 1;
                 i++) {
              for (j = 0;
                   j < 1;
                   j++) l_620[i][j] = &l_618;
            }
          }
        }
      }
    }
  }
}
