#include <emmintrin.h>
#include <stdint.h>

int lo64cmp( uint64_t a, __m128i b ){
  uint64_t blo = _mm_cvtsi128_si64(b);
  return a < blo;
}

int lo32cmp( uint64_t a, __m128i b ){
  uint32_t blo = _mm_cvtsi128_si32(b);
  return a < blo;
}
