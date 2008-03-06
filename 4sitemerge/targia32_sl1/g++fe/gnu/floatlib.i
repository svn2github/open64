# 1 "../../../kg++fe/gnu/floatlib.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/floatlib.c"
# 77 "../../../kg++fe/gnu/floatlib.c"
union double_long {
    double d;






    struct {
      long upper;
      unsigned long lower;
    } l;

    long long ll;
};

union float_long
  {
    float f;
    long l;
  };


float
__addsf3 (float a1, float a2)
{
  long mant1, mant2;
  union float_long fl1, fl2;
  int exp1, exp2;
  int sign = 0;

  fl1.f = a1;
  fl2.f = a2;


  if (!fl1.l) {
      fl1.f = fl2.f;
      goto test_done;
  }
  if (!fl2.l)
      goto test_done;

  exp1 = (((fl1.l) >> 23) & 0xFF);
  exp2 = (((fl2.l) >> 23) & 0xFF);

  if (exp1 > exp2 + 25)
      goto test_done;
  if (exp2 > exp1 + 25) {
      fl1.f = fl2.f;
      goto test_done;
  }


  mant1 = (((fl1.l) & 0x7FFFFF) | (1 << 23)) << 6;
  mant2 = (((fl2.l) & 0x7FFFFF) | (1 << 23)) << 6;

  if (((fl1.l) & 0x80000000))
    mant1 = -mant1;
  if (((fl2.l) & 0x80000000))
    mant2 = -mant2;

  if (exp1 > exp2)
    {
      mant2 >>= exp1 - exp2;
    }
  else
    {
      mant1 >>= exp2 - exp1;
      exp1 = exp2;
    }
  mant1 += mant2;

  if (mant1 < 0)
    {
      mant1 = -mant1;
      sign = 0x80000000;
    }
  else if (!mant1) {
      fl1.f = 0;
      goto test_done;
  }


  while (!(mant1 & 0xE0000000))
    {
      mant1 <<= 1;
      exp1--;
    }


  if (mant1 & (1 << 30))
    {
      mant1 >>= 1;
      exp1++;
    }


  mant1 += (mant1 & 0x40) ? 0x20 : 0x1F;


  if (mant1 & (1 << 30))
    {
      mant1 >>= 1;
      exp1++;
    }


  mant1 >>= 6;


  mant1 &= ~(1 << 23);


  fl1.l = ((sign) | ((exp1) << 23) | (mant1));
test_done:
  return (fl1.f);
}


float
__subsf3 (float a1, float a2)
{
  union float_long fl1, fl2;

  fl1.f = a1;
  fl2.f = a2;


  if (!fl2.l)
    return (fl1.f);
  if (!fl1.l)
    return (-fl2.f);


  fl2.l ^= 0x80000000;
  return __addsf3 (a1, fl2.f);
}


long
__cmpsf2 (float a1, float a2)
{
  union float_long fl1, fl2;

  fl1.f = a1;
  fl2.f = a2;

  if (((fl1.l) & 0x80000000) && ((fl2.l) & 0x80000000))
    {
      fl1.l ^= 0x80000000;
      fl2.l ^= 0x80000000;
    }
  if (fl1.l < fl2.l)
    return (-1);
  if (fl1.l > fl2.l)
    return (1);
  return (0);
}


float
__mulsf3 (float a1, float a2)
{
  union float_long fl1, fl2;
  unsigned long result;
  int exp;
  int sign;

  fl1.f = a1;
  fl2.f = a2;

  if (!fl1.l || !fl2.l) {
      fl1.f = 0;
      goto test_done;
  }


  sign = ((fl1.l) & 0x80000000) ^ ((fl2.l) & 0x80000000);
  exp = (((fl1.l) >> 23) & 0xFF) - 126;
  exp += (((fl2.l) >> 23) & 0xFF);

  fl1.l = (((fl1.l) & 0x7FFFFF) | (1 << 23));
  fl2.l = (((fl2.l) & 0x7FFFFF) | (1 << 23));


  result = (fl1.l >> 8) * (fl2.l >> 8);
  result += ((fl1.l & 0xFF) * (fl2.l >> 8)) >> 8;
  result += ((fl2.l & 0xFF) * (fl1.l >> 8)) >> 8;

  result >>= 2;
  if (result & 0x20000000)
    {

      result += 0x20;
      result >>= 6;
    }
  else
    {

      result += 0x10;
      result >>= 5;
      exp--;
    }
  if (result & ((1 << 23)<<1)) {
    result >>= 1;
    exp++;
  }

  result &= ~(1 << 23);


  fl1.l = ((sign) | ((exp) << 23) | (result));
test_done:
  return (fl1.f);
}


float
__divsf3 (float a1, float a2)
{
  union float_long fl1, fl2;
  int result;
  int mask;
  int exp, sign;

  fl1.f = a1;
  fl2.f = a2;


  exp = (((fl1.l) >> 23) & 0xFF) - (((fl2.l) >> 23) & 0xFF) + 126;


  sign = ((fl1.l) & 0x80000000) ^ ((fl2.l) & 0x80000000);


  if (!fl2.l)

    return (sign ? 0xFFFFFFFF : 0x7FFFFFFF);


  if (!fl1.l)
    return (0);


  fl1.l = (((fl1.l) & 0x7FFFFF) | (1 << 23));
  fl2.l = (((fl2.l) & 0x7FFFFF) | (1 << 23));


  if (fl1.l < fl2.l)
    {
      fl1.l <<= 1;
      exp--;
    }


  mask = 0x1000000;
  result = 0;
  while (mask)
    {
      if (fl1.l >= fl2.l)
 {
   result |= mask;
   fl1.l -= fl2.l;
 }
      fl1.l <<= 1;
      mask >>= 1;
    }


  result += 1;


  exp++;
  result >>= 1;

  result &= ~(1 << 23);


  fl1.l = ((sign) | ((exp) << 23) | (result));
  return (fl1.f);
}


double
__floatsidf (long a1)
{
  int sign = 0, exp = 31 + 1022;
  union double_long dl;

  if (!a1)
    {
      dl.l.upper = dl.l.lower = 0;
      return (dl.d);
    }

  if (a1 < 0)
    {
      sign = 0x80000000;
      a1 = -a1;
    }

  while (a1 < 0x1000000)
    {
      a1 <<= 4;
      exp -= 4;
    }

  while (a1 < 0x40000000)
    {
      a1 <<= 1;
      exp--;
    }


  dl.l.upper = sign;
  dl.l.upper |= exp << 20;
  dl.l.upper |= (a1 >> 10) & ~(1 << 20);
  dl.l.lower = a1 << 22;

  return (dl.d);
}

double
__floatdidf (long long a1)
{
    int exp = 63 + 1022;
    union double_long dl;

    dl.l.upper = dl.l.lower = 0;
    if (a1 == 0)
 return (dl.d);

    if (a1 < 0) {
 dl.l.upper = 0x80000000;
 a1 = -a1;
    }

    while (a1 < (long long)1<<54) {
 a1 <<= 8;
 exp -= 8;
    }
    while (a1 < (long long)1<<62) {
 a1 <<= 1;
 exp -= 1;
    }


    dl.ll |= (a1 >> 10) & ~((long long)1 << 52);
    dl.l.upper |= exp << 20;

    return (dl.d);
}

float
__floatsisf (long a1)
{
    (float)__floatsidf(a1);
}

float
__floatdisf (long long a1)
{
    (float)__floatdidf(a1);
}


float
__negsf2 (float a1)
{
  union float_long fl1;

  fl1.f = a1;
  if (!fl1.l)
    return (0);

  fl1.l ^= 0x80000000;
  return (fl1.f);
}


double
__negdf2 (double a1)
{
  union double_long dl1;

  dl1.d = a1;

  if (!dl1.l.upper && !dl1.l.lower)
      return (dl1.d);

  dl1.l.upper ^= 0x80000000;
  return (dl1.d);
}


double
__extendsfdf2 (float a1)
{
  union float_long fl1;
  union double_long dl;
  int exp;

  fl1.f = a1;

  if (!fl1.l)
    {
      dl.l.upper = dl.l.lower = 0;
      return (dl.d);
    }

  dl.l.upper = ((fl1.l) & 0x80000000);
  exp = (((fl1.l) >> 23) & 0xFF) - 126 + 1022;
  dl.l.upper |= exp << 20;
  dl.l.upper |= ((((fl1.l) & 0x7FFFFF) | (1 << 23)) & ~(1 << 23)) >> 3;
  dl.l.lower = (((fl1.l) & 0x7FFFFF) | (1 << 23)) << 29;

  return (dl.d);
}


float
__truncdfsf2 (double a1)
{
  int exp;
  long mant;
  union float_long fl;
  union double_long dl1;

  dl1.d = a1;

  if (!dl1.l.upper && !dl1.l.lower)
    return (float)(0);

  exp = (((dl1.l.upper) >> 20) & 0x7FF) - 1022 + 126;


  mant = (((((dl1.l.upper) & 0xFFFFF) | (1 << 20)) << 10) | (dl1.l.lower >> 22)) >> 6;


  mant += 1;
  mant >>= 1;


  if (mant & 0xFE000000)
    {
      mant >>= 1;
      exp++;
    }

  mant &= ~(1 << 23);


  fl.l = ((((dl1.l.upper) & 0x80000000)) | ((exp) << 23) | (mant));
  return (fl.f);
}


long
__cmpdf2 (double a1, double a2)
{
  union double_long dl1, dl2;

  dl1.d = a1;
  dl2.d = a2;

  if (((dl1.l.upper) & 0x80000000) && ((dl2.l.upper) & 0x80000000))
    {
      dl1.l.upper ^= 0x80000000;
      dl2.l.upper ^= 0x80000000;
    }
  if (dl1.l.upper < dl2.l.upper)
    return (-1);
  if (dl1.l.upper > dl2.l.upper)
    return (1);
  if (dl1.l.lower < dl2.l.lower)
    return (-1);
  if (dl1.l.lower > dl2.l.lower)
    return (1);
  return (0);
}


long
__fixdfsi (double a1)
{
  union double_long dl1;
  int exp;
  long l;

  dl1.d = a1;

  if (!dl1.l.upper && !dl1.l.lower)
    return (0);

  exp = (((dl1.l.upper) >> 20) & 0x7FF) - 1022 - 31;
  l = (((((dl1.l.upper) & 0xFFFFF) | (1 << 20)) << 10) | (dl1.l.lower >> 22));

  if (exp > 0)
      return ((dl1.l.upper) & 0x80000000) ? (1<<31) : ((1ul<<31)-1);


  if (exp < 0 && exp > -32 && l)
    l >>= -exp;
  else
    return (0);

  return (((dl1.l.upper) & 0x80000000) ? -l : l);
}


long long
__fixdfdi (double a1)
{
    union double_long dl1;
    int exp;
    long long l;

    dl1.d = a1;

    if (!dl1.l.upper && !dl1.l.lower)
 return (0);

    exp = (((dl1.l.upper) >> 20) & 0x7FF) - 1022 - 64;
    l = ((dl1.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52));

    if (exp > 0) {
 l = (long long)1<<63;
 if (!((dl1.l.upper) & 0x80000000))
     l--;
 return l;
    }


    if (exp < 0 && exp > -64 && l)
 l >>= -exp;
    else
 return (0);

    return (((dl1.l.upper) & 0x80000000) ? -l : l);
}


unsigned long
__fixunsdfsi (double a1)
{
  union double_long dl1;
  int exp;
  unsigned long l;

  dl1.d = a1;

  if (!dl1.l.upper && !dl1.l.lower)
    return (0);

  exp = (((dl1.l.upper) >> 20) & 0x7FF) - 1022 - 32;
  l = (((((dl1.l.upper) & 0xFFFFF) | (1 << 20)) << 11) | (dl1.l.lower >> 21));

  if (exp > 0)
    return (0xFFFFFFFFul);


  if (exp < 0 && exp > -32 && l)
    l >>= -exp;
  else
    return (0);

  return (l);
}


unsigned long long
__fixunsdfdi (double a1)
{
    union double_long dl1;
    int exp;
    unsigned long long l;

    dl1.d = a1;

    if (dl1.ll == 0)
 return (0);

    exp = (((dl1.l.upper) >> 20) & 0x7FF) - 1022 - 64;

    l = dl1.ll;

    if (exp > 0)
 return (unsigned long long)-1;


    if (exp < 0 && exp > -64 && l)
 l >>= -exp;
    else
 return (0);

    return (l);
}


double
__adddf3 (double a1, double a2)
{
    long long mant1, mant2;
    union double_long fl1, fl2;
    int exp1, exp2;
    int sign = 0;

    fl1.d = a1;
    fl2.d = a2;


    if (!fl2.ll)
 goto test_done;
    if (!fl1.ll) {
 fl1.d = fl2.d;
 goto test_done;
    }

    exp1 = (((fl1.l.upper) >> 20) & 0x7FF);
    exp2 = (((fl2.l.upper) >> 20) & 0x7FF);

    if (exp1 > exp2 + 54)
 goto test_done;
    if (exp2 > exp1 + 54) {
 fl1.d = fl2.d;
 goto test_done;
    }


    mant1 = ((fl1.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52)) << 9;
    mant2 = ((fl2.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52)) << 9;

    if (((fl1.l.upper) & 0x80000000))
 mant1 = -mant1;
    if (((fl2.l.upper) & 0x80000000))
 mant2 = -mant2;

    if (exp1 > exp2)
 mant2 >>= exp1 - exp2;
    else {
 mant1 >>= exp2 - exp1;
 exp1 = exp2;
    }
    mant1 += mant2;

    if (mant1 < 0) {
 mant1 = -mant1;
 sign = 0x80000000;
    } else if (!mant1) {
 fl1.d = 0;
 goto test_done;
    }


    while (!(mant1 & ((long long)7<<61))) {
 mant1 <<= 1;
 exp1--;
    }


    if (mant1 & ((long long)3<<62)) {
 mant1 >>= 1;
 exp1++;
    }


    mant1 += (mant1 & (1<<9)) ? (1<<8) : ((1<<8)-1);


    if (mant1 & ((long long)3<<62)) {
 mant1 >>= 1;
 exp1++;
    }


    mant1 >>= 9;


    mant1 &= ~((long long)1 << 52);


    fl1.ll = (((long long)((sign)+((exp1)<<20))<<32)|(mant1));

test_done:
    return (fl1.d);
}


double
__subdf3 (double a1, double a2)
{
    union double_long fl1, fl2;

    fl1.d = a1;
    fl2.d = a2;


    if (!fl2.ll)
 return (fl1.d);

    fl2.l.upper ^= 0x80000000;
    if (!fl1.ll)
 return (fl2.d);
    return __adddf3 (a1, fl2.d);
}


double
__muldf3 (double a1, double a2)
{
    union double_long fl1, fl2;
    unsigned long long result;
    int exp;
    int sign;

    fl1.d = a1;
    fl2.d = a2;

    if (!fl1.ll || !fl2.ll) {
 fl1.d = 0;
 goto test_done;
    }


    sign = ((fl1.l.upper) & 0x80000000) ^ ((fl2.l.upper) & 0x80000000);
    exp = (((fl1.l.upper) >> 20) & 0x7FF) - 1022;
    exp += (((fl2.l.upper) >> 20) & 0x7FF);

    fl1.ll = ((fl1.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52));
    fl2.ll = ((fl2.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52));


    result = (fl1.ll >> 21) * (fl2.ll >> 21);
    result += ((fl1.ll & 0x1FFFFF) * (fl2.ll >> 21)) >> 21;
    result += ((fl2.ll & 0x1FFFFF) * (fl1.ll >> 21)) >> 21;

    result >>= 2;
    if (result & ((long long)1<<61)) {

 result += 1<<8;
 result >>= 9;
    } else {

 result += 1<<7;
 result >>= 8;
 exp--;
    }
    if (result & (((long long)1 << 52)<<1)) {
 result >>= 1;
 exp++;
    }

    result &= ~((long long)1 << 52);


    fl1.ll = (((long long)((sign)+((exp)<<20))<<32)|(result));
test_done:
    return (fl1.d);
}


double
__divdf3 (double a1, double a2)
{
    union double_long fl1, fl2;
    long long mask,result;
    int exp, sign;

    fl1.d = a1;
    fl2.d = a2;


    exp = (((fl1.l.upper) >> 20) & 0x7FF) - (((fl2.l.upper) >> 20) & 0x7FF) + 1022;


    sign = ((fl1.l.upper) & 0x80000000) ^ ((fl2.l.upper) & 0x80000000);


    if (fl1.ll == 0) {

 if (fl2.ll == 0)
     fl1.ll = ((unsigned long long)1<<63)-1;
 else
     fl1.ll = 0;
 goto test_done;
    }


    if (fl2.ll == 0) {
 fl1.ll = (((long long)((((fl1.l.upper) & 0x80000000))+((2047)<<20))<<32)|(0));
 goto test_done;
    }



    fl1.ll = ((fl1.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52));
    fl2.ll = ((fl2.ll & (((long long)1 << 52)-1)) | ((long long)1 << 52));


    if (fl1.ll < fl2.ll) {
 fl1.ll <<= 1;
 exp--;
    }


    mask = (long long)1<<53;
    result = 0;
    while (mask) {
 if (fl1.ll >= fl2.ll)
 {
     result |= mask;
     fl1.ll -= fl2.ll;
 }
 fl1.ll <<= 1;
 mask >>= 1;
    }


    result += 1;


    exp++;
    result >>= 1;

    result &= ~((long long)1 << 52);


    fl1.ll = (((long long)((sign)+((exp)<<20))<<32)|(result));

test_done:
    return (fl1.d);
}

int
__gtdf2 (double a1, double a2)
{
    return __cmpdf2 ((float) a1, (float) a2) > 0;
}

int
__gedf2 (double a1, double a2)
{
    return (__cmpdf2 ((float) a1, (float) a2) >= 0) - 1;
}

int
__ltdf2 (double a1, double a2)
{
    return - (__cmpdf2 ((float) a1, (float) a2) < 0);
}

int
__ledf2 (double a1, double a2)
{
    return __cmpdf2 ((float) a1, (float) a2) > 0;
}

int
__eqdf2 (double a1, double a2)
{
    return *(long long *) &a1 == *(long long *) &a2;
}

int
__nedf2 (double a1, double a2)
{
    return *(long long *) &a1 != *(long long *) &a2;
}
