//OBJ
//TAG: csmith
typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;
typedef long int int64_t;
typedef unsigned char uint8_t;
typedef unsigned int uint32_t;
typedef unsigned long int uint64_t;
struct S0 {
  uint64_t f4;
};
struct S1 {
  const int32_t f2;
  struct S0 f4;
  uint64_t f5;
  int16_t f6;
};
struct S2 {
  int8_t f1;
  const int64_t f2;
};
struct S3 {
  const uint64_t f4;
};
int32_t g_5 = 0xC38B6B0EL;
int32_t g_12[3] = {
  4L, 4L, 4L};
int32_t *g_31[7][4] = {
};
int32_t *g_74 = &g_5;
uint64_t g_161 = 0x8347750682C58D3ALL;
int32_t g_234 = 6L;
struct S2 g_301 = {
  {
    7L,0x7AL,0x93D23DAAL,3U,0U}
  ,1U,0xC4A103B8L,0x7F8684AF132A05A1LL,0xFA3CC2DD6A5F1134LL,-1L};
struct S1 g_372 = {
  0x0831A354L,0x50C69CE3384BBF30LL,-5L,{
    0xEC74L,0x31L,1U,5U,0U}
  ,0xB39F1051L,0x699EL,0xD2C348A3A0DC721ELL,0x1543B7BEL};
struct S1 g_385 = {
};
struct S2 g_412 = {
  0x2FCA541BL,-7L,0x8D018AF7L,1L,4L};
int64_t g_427[3][2] = {
};
struct S3 g_435 = {
  {
    1L,1L,18446744073709551613U,255U,0xA49FF9D980DC22E9LL}
  ,0xA90F6F71L,4U,-1L,0x32C4DB982C43A242LL,-6L};
uint32_t func_39(int32_t ** const p_40, int8_t p_41, int8_t p_42, uint64_t p_43) {
  int32_t **l_49 = &g_31[2][1];
  int32_t *l_50 = &g_5;
  uint32_t l_51[10] = {
    0x45A15B62L, 5U, 0U, 5U, 0x45A15B62L, 3U, 0x45A15B62L, 5U, 0U, 5U};
  int32_t ***l_54 = &l_49;
  (*l_54) = &l_50;
  if (p_41)     {
    int32_t **l_446 = 0;
    if (p_41)         {
      for (g_161 = 7;
           (p_42 > (-3));
           p_42 = safe_sub_func_int32_t_s_s(p_42, 1))             {
      }
    }
    else         {
      int64_t l_519 = 0xD9073EF57F196D99LL;
      if ((safe_sub_func_uint32_t_u_u((p_42 & ((l_519 & (18446744073709551615U <= func_75(l_446))) & (+((safe_sub_func_uint32_t_u_u(g_385.f2, l_519)) > (l_519 >= g_412.f2))))), func_114(g_234, 252U, p_41, g_372.f6))))             {
        for (g_385.f5 = 5;
             g_385.f5 < 10;
             g_385.f5 += 1)                 {
          for (g_301.f1 = 0;
               g_301.f1 < 3;
               g_301.f1 += 1)                     {
            for (p_42 = 0;
                 p_42 < 2;
                 p_42 += 1)                         {
              int32_t **l_522 = &g_31[1][2];
              (**l_49) = func_101(l_522, l_51[(g_385.f5) % 10], (g_427[(uint32_t)((g_301.f1 + 1)) % 3][(uint8_t)(p_42) % 2] || g_427[(uint32_t)((g_301.f1 + 1)) % 3][(uint8_t)(p_42) % 2]), (safe_sub_func_int32_t_s_s((g_435.f4 < g_12[1]), func_114(g_427[(uint32_t)((g_301.f1 + 1)) % 3][(uint8_t)(p_42) % 2], p_42, g_427[(uint8_t)(g_301.f1) % 3][(uint8_t)(p_42) % 2], (0x48L | (9U != func_75(&g_74)))))), p_42);
              return p_42;
            }
          }
          for (g_385.f4.f4 = 0;
               (g_385.f4.f4 <= 10);
               g_385.f4.f4 = safe_add_func_int8_t_s_s(g_385.f4.f4, 1))                     {
          }
        }
      }
    }
  }
}
