 /* ====================================================================
 * ====================================================================
 *
 * Description:
 *
 *   A description of the properties (attributes) for the instructions
 *   in the ISA. The description exports the following:
 *
 *   BOOL TOP_is_xxx(TOP topcode)
 *       Return true/false if 'topcode' has/does-not-have the property
 *       'xxx'.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef targ_isa_properties_INCLUDED
#define targ_isa_properties_INCLUDED
#ifdef __cplusplus
extern "C" {
#endif

#ifndef defs_INCLUDED
#define defs_INCLUDED
typedef signed int INT;
typedef signed int INT32;
typedef signed long long INT64;
typedef signed char mINT8;
typedef signed short mINT16;
typedef signed int mINT32;
typedef signed long long mINT64;
typedef unsigned int UINT;
typedef unsigned int UINT32;
typedef unsigned long long UINT64;
typedef unsigned char mUINT8;
typedef unsigned short mUINT16;
typedef unsigned int mUINT32;
typedef unsigned long long mUINT64;
typedef int BOOL;
typedef unsigned char mBOOL;
#ifndef TRUE
#define TRUE    ((BOOL) 1)
#endif
#ifndef FALSE
#define FALSE   ((BOOL) 0)
#endif
#if (defined(_LANGUAGE_C) || defined(__GNUC__)) && !defined(inline)
#define inline static __inline
#endif
#endif

extern const mUINT64 ISA_PROPERTIES_flags[];

#define PROP_load             0x1ULL
#define PROP_store            0x2ULL
#define PROP_prefetch         0x4ULL
#define PROP_mem_fill_type    0x8ULL
#define PROP_xfer             0x10ULL
#define PROP_call             0x20ULL
#define PROP_cond             0x40ULL
#define PROP_uniq_res         0x80ULL
#define PROP_same_res         0x100ULL
#define PROP_iadd             0x200ULL
#define PROP_isub             0x400ULL
#define PROP_imul             0x800ULL
#define PROP_flop             0x1000ULL
#define PROP_fadd             0x2000ULL
#define PROP_fsub             0x4000ULL
#define PROP_fmul             0x8000ULL
#define PROP_fmisc            0x10000ULL
#define PROP_madd             0x20000ULL
#define PROP_mmalu            0x40000ULL
#define PROP_mmshf            0x80000ULL
#define PROP_mmmul            0x100000ULL
#define PROP_noop             0x200000ULL
#define PROP_dummy            0x400000ULL
#define PROP_unsafe           0x800000ULL
#define PROP_fdiv             0x1000000ULL
#define PROP_sqrt             0x2000000ULL
#define PROP_memtrap          0x4000000ULL
#define PROP_f_group          0x8000000ULL
#define PROP_l_group          0x10000000ULL
#define PROP_privileged       0x20000000ULL
#define PROP_ior              0x40000000ULL
#define PROP_ijump            0x80000000ULL
#define PROP_ixor             0x100000000ULL
#define PROP_iand             0x200000000ULL
#define PROP_icmp             0x400000000ULL
#define PROP_simulated        0x800000000ULL
#define PROP_predicated       0x1000000000ULL
#define PROP_access_reg_bank  0x2000000000ULL
#define PROP_side_effects     0x4000000000ULL
#define PROP_branch_predict   0x8000000000ULL
#define PROP_var_opnds        0x10000000000ULL


#define TOP_is_load(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_load)
#define TOP_is_store(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_store)
#define TOP_is_prefetch(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_prefetch)
#define TOP_is_mem_fill_type(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_mem_fill_type)
#define TOP_is_xfer(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_xfer)
#define TOP_is_call(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_call)
#define TOP_is_cond(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_cond)
#define TOP_is_uniq_res(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_uniq_res)
#define TOP_is_same_res(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_same_res)
#define TOP_is_iadd(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_iadd)
#define TOP_is_isub(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_isub)
#define TOP_is_imul(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_imul)
#define TOP_is_flop(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_flop)
#define TOP_is_fadd(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_fadd)
#define TOP_is_fsub(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_fsub)
#define TOP_is_fmul(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_fmul)
#define TOP_is_fmisc(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_fmisc)
#define TOP_is_madd(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_madd)
#define TOP_is_mmalu(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_mmalu)
#define TOP_is_mmshf(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_mmshf)
#define TOP_is_mmmul(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_mmmul)
#define TOP_is_noop(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_noop)
#define TOP_is_dummy(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_dummy)
#define TOP_is_unsafe(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_unsafe)
#define TOP_is_fdiv(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_fdiv)
#define TOP_is_sqrt(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_sqrt)
#define TOP_is_memtrap(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_memtrap)
#define TOP_is_f_group(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_f_group)
#define TOP_is_l_group(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_l_group)
#define TOP_is_privileged(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_privileged)
#define TOP_is_ior(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_ior)
#define TOP_is_ijump(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_ijump)
#define TOP_is_ixor(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_ixor)
#define TOP_is_iand(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_iand)
#define TOP_is_icmp(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_icmp)
#define TOP_is_simulated(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_simulated)
#define TOP_is_predicated(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_predicated)
#define TOP_is_access_reg_bank(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_access_reg_bank)
#define TOP_is_side_effects(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_side_effects)
#define TOP_is_branch_predict(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_branch_predict)
#define TOP_is_var_opnds(t)	 (ISA_PROPERTIES_flags[(INT)t] & PROP_var_opnds)

#define TOP_is_likely(t)	 (FALSE)
#define TOP_is_cond_move(t)	 (FALSE)
#define TOP_is_select(t)	 (FALSE)
#define TOP_is_unalign_ld(t)	 (FALSE)
#define TOP_is_unalign_store(t)	 (FALSE)
#define TOP_is_idiv(t)	 (FALSE)
#define TOP_is_itrap(t)	 (FALSE)
#define TOP_is_safe(t)	 (FALSE)
#define TOP_is_ftrap(t)	 (FALSE)
#define TOP_is_defs_fcc(t)	 (FALSE)
#define TOP_is_defs_fcr(t)	 (FALSE)
#define TOP_is_refs_fcr(t)	 (FALSE)
#define TOP_is_defs_fpu_int(t)	 (FALSE)
#define TOP_is_defs_fp(t)	 (FALSE)
#define TOP_is_jump(t)	 (FALSE)

#ifdef __cplusplus
}
#endif
#endif
