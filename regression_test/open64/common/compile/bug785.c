//OBJ
//TAG: kernel
typedef unsigned char __u8;
typedef unsigned int u32;
struct cpuinfo_x86
{
  __u8 x86_vendor;
  int cpuid_level;
}
  __attribute__ ((__aligned__ ((1 << (6)))));
extern struct cpuinfo_x86 boot_cpu_data;
extern unsigned short num_cache_leaves;
static inline void
native_cpuid (unsigned int *eax, unsigned int *ebx, unsigned int *ecx,
              unsigned int *edx)
{
  asm volatile ("cpuid":"=a" (*eax), "=b" (*ebx), "=c" (*ecx),
                "=d" (*edx):"0" (*eax), "2" (*ecx));
}
static inline void
cpuid_count (unsigned int op, int count, unsigned int *eax, unsigned int *ebx,
             unsigned int *ecx, unsigned int *edx)
{
  native_cpuid (eax, ebx, ecx, edx);
}
enum _cache_type
  {
    CACHE_TYPE_NULL = 0, CACHE_TYPE_DATA = 1, CACHE_TYPE_INST =
    2, CACHE_TYPE_UNIFIED = 3
  };
union _cpuid4_leaf_eax
{
  struct
  {
  }
    split;
  u32 full;
};
union _cpuid4_leaf_ebx
{
  struct
  {
    unsigned int coherency_line_size:12;
    unsigned int physical_line_partition:10;
    unsigned int ways_of_associativity:10;
  }
    split;
  u32 full;
};
union _cpuid4_leaf_ecx
{
  struct
  {
    unsigned int number_of_sets:32;
  }
    split;
  u32 full;
};
struct _cpuid4_info_regs
{
  unsigned long size;
};
static int
__attribute__ ((__section__ (".cpuinit.text")))
cpuid4_cache_lookup_regs (int index, struct _cpuid4_info_regs *this_leaf)
{
  union _cpuid4_leaf_eax eax;
  union _cpuid4_leaf_ebx ebx;
  union _cpuid4_leaf_ecx ecx;
  unsigned edx;
  if (boot_cpu_data.x86_vendor == 2)
    {
    }
  else
    {
      cpuid_count (4, index, &eax.full, &ebx.full, &ecx.full, &edx);
    }
  this_leaf->size =
    (ecx.split.number_of_sets + 1) * (ebx.split.coherency_line_size +
                                      1) *
    (ebx.split.physical_line_partition +
     1) * (ebx.split.ways_of_associativity + 1);
}
unsigned int
__attribute__ ((__section__ (".cpuinit.text"))) init_intel_cacheinfo (struct
                                                                       
cpuinfo_x86
                                                                      *c)
{
  unsigned int new_l2 = 0, new_l3 = 0, i;
  if (c->cpuid_level > 3)
    {
      for (i = 0; i < num_cache_leaves; i++)
        {
          struct _cpuid4_info_regs this_leaf;
          int retval;
          retval = cpuid4_cache_lookup_regs (i, &this_leaf);
          if (retval >= 0)
            {
            }
        }
    }
}
