//OBJ
static inline void cpuid_count(int op, int count, int *eax, int *ebx, int *ecx,
                               int *edx)
{
  __asm__("cpuid"
          : "=a" (*eax),
            "=b" (*ebx),
            "=c" (*ecx),
            "=d" (*edx)
          : "0" (op), "c" (count));
}

union _cpuid4_leaf_ebx {
  struct {
    unsigned int      coherency_line_size:12;
    unsigned int      physical_line_partition:10;
    unsigned int      ways_of_associativity:10;
  } split;
  int full;
};


static int cpuid4_cache_lookup(int index)
{
  union _cpuid4_leaf_ebx  ebx;

  cpuid_count(4, 4, 0, &ebx.full, 0,  0);

  return ebx.split.physical_line_partition ;
}
void foo(){
  cpuid4_cache_lookup(1);
}
