//TAG: csmith
//OBJ
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned short int uint16_t;
typedef unsigned long int uint64_t;
struct S0 {
  int16_t f1;
  const int16_t f4;
};
struct S1 {
  uint16_t f3;
  int8_t f4;
  volatile int64_t f5;
};
struct S3 {
};
int32_t g_4[3][10][1] = {
  0, 0, 0, 0, 0};
struct S1 g_182 = {
  9U,0xF3D3L,1L,0xD640A94FL,0x2C14L};
struct S0 g_206 = {
  0x5BBE7797L,0xEFB7L,0x6BL,3L,0x8235L};
volatile struct S0 g_213 = {
  (-1L), 0x1F37E9A4L, (-1L), 0x1F37E9A4L, (-1L), 0x1F37E9A4L, (-1L), 0x1F37E9A4L,
  (-1L), 0x1F37E9A4L};
struct S4 ** volatile g_266[6][8][1] = {
  4294967295U,0xE4BAL,1L,1L,0x9218L};
struct S1 g_408 = {
  9L,4U,0x1879BD16L,1U,4L,0L,-1L};
struct S1 g_411 = {
  {
    -7L,18446744073709551611U,4294967295U,0U,0xE4L,-6L,-1L}
  ,255U,0L};
struct S1 g_927 = {
  {
    {
      2L,1U,0x7CA82AD3L,1U,3L,0xF4C2C33BL,0L}
    ,0x1BL,0xE29AL}
  ,0U};
uint16_t func_1(void) {
  int32_t *l_5 = &g_4[2][1][0];
  if ((*l_5)) {
    uint64_t l_1080 = 0xE42DBC25A38390ADLL;
    int32_t *l_1088[5][2][9];
    if (l_1080) {
      int32_t **l_1081 = &l_5;
      int32_t *l_1089 = &g_4[2][1][0];
if
  ((safe_rshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s(func_17(l_1088[3][0][5]),
                                                                                     6U)), func_17(l_1089))), g_206.f4))) {
  for (g_411.f4 = 0;
       g_411.f4 < 4;
       g_411.f4 += 1) {
    for (g_213.f1 = 3;
         g_213.f1 < 4;
         g_213.f1 += 1) {
    }
  }
  for (g_182.f3 = 26;
       (g_182.f3 <= 44);
       g_182.f3 = safe_add_func_uint16_t_u_u(g_182.f3, 1)) {
    int32_t l_1108 = 0x66D3AADEL;
    if (l_1108) break;
    if (((-10L) < g_408.f5)) {
      int16_t l_1117 = 6L;
      (*l_1081) = &l_1108;
      (*l_5) |= l_1117;
      (*l_5) ^= (0 != &g_266[2][1][0]);
    }
  }
 }
    }
  }
}
