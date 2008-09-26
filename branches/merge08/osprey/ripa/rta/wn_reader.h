
RTA_API INT32 readword32(BITS pb, BITS b, int sz)
{
  FmtAssert(pb, ("Null pointer to Bits"));
  FmtAssert(pb <= (b+sz), ("pointers to Bits out of bound"));
  return *(INT32 *)(pb);
}

RTA_API INT64  readword64(BITS pb, BITS b, int sz)
{
  FmtAssert(pb, ("Null pointer to Bits"));
  FmtAssert(pb <= (b+sz), ("pointers to Bits out of bound"));
  return *(INT64 *)(pb);
}

extern void Print_whirl_pu_from_bits(FILE *f, BITS b, unsigned int sz);
extern void Print_whirl_global_from_bits(FILE *f, BITS b, unsigned int sz);
extern void Print_whirl_summary_from_bits(FILE *f, BITS b, unsigned int sz);
extern void Print_whirl_flags_from_bits(FILE *f, BITS b, unsigned int sz);
