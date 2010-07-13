#ifndef WSSA_SYM_UTILS_INCLUDED
#define WSSA_SYM_UTILS_INCLUDED

#include "wssa_defs.h"
#include <vector>
#include <list>
#include "opt_sym.h"

/*
 * marco name is corresponding with AUX_STAB_ENTRY*/


inline OPT_VAR_TYPE
ST_vsym_stype (const ST& s)   { return (OPT_VAR_TYPE)s.storage_class; }
inline void
Set_ST_vsym_stype (ST& s, OPT_VAR_TYPE vt)	{ s.storage_class = (ST_SCLASS)vt; }

inline OPT_VAR_TYPE				// for compatibility
ST_vsym_stype (const ST_IDX s)		{ return ST_vsym_stype (St_Table[s]); }

inline void
Set_ST_vsym_stype (ST_IDX s, OPT_VAR_TYPE vt) { Set_ST_vsym_stype(St_Table[s], vt);}

inline OPT_VAR_TYPE                             // for compatibility
ST_vsym_stype (const ST* s)          { return (OPT_VAR_TYPE)s->storage_class; }

inline void
Set_ST_vsym_stype (ST* s, OPT_VAR_TYPE vt)      { s->storage_class = (ST_SCLASS)vt; }

inline void
ST_vsym_set_more_flags(ST& s, UINT8 more_flags) {s.flags_ext = more_flags;}

inline void
ST_vsym_set_more_flags(ST_IDX s, UINT8 more_flags) {ST_vsym_set_more_flags(St_Table[s], more_flags);}

inline void
ST_vsym_set_more_flags(ST* s, UINT8 more_flags) {s->flags_ext = more_flags;}

inline void
ST_vsym_set_flags(ST& s, UINT32 flags) {s.flags = flags;}

inline void
ST_vsym_set_flags(ST_IDX s, UINT32 flags) {ST_vsym_set_flags(St_Table[s], flags);}

inline void
ST_vsym_set_flags(ST* s, UINT8 flags) {s->flags = flags;}

/* AUX entry flag access with vsym ST */
inline BOOL     Vsym_is_const_init(const ST& s){ return s.flags & AUXF_CONST_INIT; }
inline BOOL     Vsym_is_const_init(ST* s){ return s->flags & AUXF_CONST_INIT; }
inline BOOL     Vsym_is_const_init(ST_IDX s){ return Vsym_is_const_init(St_Table[s]); }

inline void     Vsym_set_const_init(ST& s)  { s.flags |= AUXF_CONST_INIT; }
inline void     Vsym_set_const_init(ST* s)  { s->flags |= AUXF_CONST_INIT; }
inline void     Vsym_set_const_init(ST_IDX s)  { Vsym_set_const_init(St_Table[s]); }

inline BOOL     Vsym_is_lr_shrink_cand(const ST& s){ return s.flags & AUXF_LR_SHRINK_CAND; }
inline BOOL     Vsym_is_lr_shrink_cand(ST* s){ return s->flags & AUXF_LR_SHRINK_CAND; }
inline BOOL     Vsym_is_lr_shrink_cand(ST_IDX s){ return Vsym_is_lr_shrink_cand(St_Table[s]); }

inline void     Vsym_set_lr_shrink_cand(ST& s)  { s.flags |= AUXF_LR_SHRINK_CAND; }
inline void     Vsym_set_lr_shrink_cand(ST* s)  { s->flags |= AUXF_LR_SHRINK_CAND; }
inline void     Vsym_set_lr_shrink_cand(ST_IDX s)  { Vsym_set_lr_shrink_cand(St_Table[s]); }

inline BOOL     Vsym_is_volatile(const ST& s){ return s.flags & AUXF_VOLATILE; }
inline BOOL     Vsym_is_volatile(ST* s){ return s->flags & AUXF_VOLATILE; }
inline BOOL     Vsym_is_volatile(ST_IDX s){ return Vsym_is_volatile(St_Table[s]); }

inline void     Vsym_set_volatile(ST& s)  { s.flags |= AUXF_VOLATILE; }
inline void     Vsym_set_volatile(ST* s)  { s->flags |= AUXF_VOLATILE; }
inline void     Vsym_set_volatile(ST_IDX s)  { Vsym_set_volatile(St_Table[s]); }

inline BOOL     Vsym_is_loop_index(const ST& s){ return s.flags & AUXF_LOOP_INDEX; }
inline BOOL     Vsym_is_loop_index(ST* s){ return s->flags & AUXF_LOOP_INDEX; }
inline BOOL     Vsym_is_loop_index(ST_IDX s){ return Vsym_is_loop_index(St_Table[s]); }

inline void     Vsym_set_loop_index(ST& s)  { s.flags |= AUXF_LOOP_INDEX; }
inline void     Vsym_set_loop_index(ST* s)  { s->flags |= AUXF_LOOP_INDEX; }
inline void     Vsym_set_loop_index(ST_IDX s)  { Vsym_set_loop_index(St_Table[s]); }

inline BOOL     Vsym_is_dmod(const ST& s){ return s.flags & AUXF_DMOD; }
inline BOOL     Vsym_is_dmod(ST* s){ return s->flags & AUXF_DMOD; }
inline BOOL     Vsym_is_dmod(ST_IDX s){ return Vsym_is_dmod(St_Table[s]); }

inline void     Vsym_set_dmod(ST& s)  { s.flags |= AUXF_DMOD; }
inline void     Vsym_set_dmod(ST* s)  { s->flags |= AUXF_DMOD; }
inline void     Vsym_set_dmod(ST_IDX s)  { Vsym_set_dmod(St_Table[s]); }

inline BOOL     Vsym_is_mp_firstprivate(const ST& s){ return s.flags & AUXF_MP_FIRSTPRIVATE; }
inline BOOL     Vsym_is_mp_firstprivate(ST* s){ return s->flags & AUXF_MP_FIRSTPRIVATE; }
inline BOOL     Vsym_is_mp_firstprivate(ST_IDX s){ return Vsym_is_mp_firstprivate(St_Table[s]); }

inline void     Vsym_set_mp_firstprivate(ST& s)  { s.flags |= AUXF_MP_FIRSTPRIVATE; }
inline void     Vsym_set_mp_firstprivate(ST* s)  { s->flags |= AUXF_MP_FIRSTPRIVATE; }
inline void     Vsym_set_mp_firstprivate(ST_IDX s)  { Vsym_set_mp_firstprivate(St_Table[s]); }

inline BOOL     Vsym_is_mp_shared(const ST& s){ return s.flags & AUXF_MP_SHARED; }
inline BOOL     Vsym_is_mp_shared(ST* s){ return s->flags & AUXF_MP_SHARED; }
inline BOOL     Vsym_is_mp_shared(ST_IDX s){ return Vsym_is_mp_shared(St_Table[s]); }

inline void     Vsym_set_mp_shared(ST& s)  { s.flags |= AUXF_MP_SHARED; }
inline void     Vsym_set_mp_shared(ST* s)  { s->flags |= AUXF_MP_SHARED; }
inline void     Vsym_set_mp_shared(ST_IDX s)  { Vsym_set_mp_shared(St_Table[s]); }

inline BOOL     Vsym_is_mp_lastlocal(const ST& s){ return s.flags & AUXF_MP_LASTLOCAL; }
inline BOOL     Vsym_is_mp_lastlocal(ST* s){ return s->flags & AUXF_MP_LASTLOCAL; }
inline BOOL     Vsym_is_mp_lastlocal(ST_IDX s){ return Vsym_is_mp_lastlocal(St_Table[s]); }

inline void     Vsym_set_mp_lastlocal(ST& s)  { s.flags |= AUXF_MP_LASTLOCAL; }
inline void     Vsym_set_mp_lastlocal(ST* s)  { s->flags |= AUXF_MP_LASTLOCAL; }
inline void     Vsym_set_mp_lastlocal(ST_IDX s)  { Vsym_set_mp_lastlocal(St_Table[s]); }

inline BOOL     Vsym_is_nested_ref(const ST& s){ return s.flags & AUXF_NESTED_REF; }
inline BOOL     Vsym_is_nested_ref(ST* s){ return s->flags & AUXF_NESTED_REF; }
inline BOOL     Vsym_is_nested_ref(ST_IDX s){ return Vsym_is_nested_ref(St_Table[s]); }

inline void     Vsym_set_nested_ref(ST& s)  { s.flags |= AUXF_NESTED_REF; }
inline void     Vsym_set_nested_ref(ST* s)  { s->flags |= AUXF_NESTED_REF; }
inline void     Vsym_set_nested_ref(ST_IDX s)  { Vsym_set_nested_ref(St_Table[s]); }

inline BOOL     Vsym_is_mp_reduction(const ST& s){ return s.flags & AUXF_MP_REDUCTION; }
inline BOOL     Vsym_is_mp_reduction(ST* s){ return s->flags & AUXF_MP_REDUCTION; }
inline BOOL     Vsym_is_mp_reduction(ST_IDX s){ return Vsym_is_mp_reduction(St_Table[s]); }

inline void     Vsym_set_mp_reduction(ST& s)  { s.flags |= AUXF_MP_REDUCTION; }
inline void     Vsym_set_mp_reduction(ST* s)  { s->flags |= AUXF_MP_REDUCTION; }
inline void     Vsym_set_mp_reduction(ST_IDX s)  { Vsym_set_mp_reduction(St_Table[s]); }

inline BOOL     Vsym_is_dont_replace_iv(const ST& s){ return s.flags & AUXF_DONT_REPLACE_IV; }
inline BOOL     Vsym_is_dont_replace_iv(ST* s){ return s->flags & AUXF_DONT_REPLACE_IV; }
inline BOOL     Vsym_is_dont_replace_iv(ST_IDX s){ return Vsym_is_dont_replace_iv(St_Table[s]); }

inline void     Vsym_set_dont_replace_iv(ST& s)  { s.flags |= AUXF_DONT_REPLACE_IV; }
inline void     Vsym_set_dont_replace_iv(ST* s)  { s->flags |= AUXF_DONT_REPLACE_IV; }
inline void     Vsym_set_dont_replace_iv(ST_IDX s)  { Vsym_set_dont_replace_iv(St_Table[s]); }

inline BOOL     Vsym_is_disable_local_rvi(const ST& s){ return s.flags & AUXF_DISABLE_LOCAL_RVI; }
inline BOOL     Vsym_is_disable_local_rvi(ST* s){ return s->flags & AUXF_DISABLE_LOCAL_RVI; }
inline BOOL     Vsym_is_disable_local_rvi(ST_IDX s){ return Vsym_is_disable_local_rvi(St_Table[s]); }

inline void     Vsym_set_disable_local_rvi(ST& s)  { s.flags |= AUXF_DISABLE_LOCAL_RVI; }
inline void     Vsym_set_disable_local_rvi(ST* s)  { s->flags |= AUXF_DISABLE_LOCAL_RVI; }
inline void     Vsym_set_disable_local_rvi(ST_IDX s)  { Vsym_set_disable_local_rvi(St_Table[s]); }

inline BOOL     Vsym_is_indirect_access(const ST& s){ return s.flags & AUXF_INDIRECT_ACCESS; }
inline BOOL     Vsym_is_indirect_access(ST* s){ return s->flags & AUXF_INDIRECT_ACCESS; }
inline BOOL     Vsym_is_indirect_access(ST_IDX s){ return Vsym_is_indirect_access(St_Table[s]); }

inline void     Vsym_set_indirect_access(ST& s)  { s.flags |= AUXF_INDIRECT_ACCESS; }
inline void     Vsym_set_indirect_access(ST* s)  { s->flags |= AUXF_INDIRECT_ACCESS; }
inline void     Vsym_set_indirect_access(ST_IDX s)  { Vsym_set_indirect_access(St_Table[s]); }

/* AUX etnry's AUX_F2 flags access with vsym ST */
inline BOOL     Vsym_Has_store_in_PU(const ST& s){ return s.flags_ext & AUXF2_HAS_STORE_IN_PU; }
inline BOOL     Vsym_Has_store_in_PU(ST* s) { return s->flags_ext & AUXF2_HAS_STORE_IN_PU; }
inline BOOL     Vsym_Has_store_in_PU(ST_IDX s) { return Vsym_Has_store_in_PU(St_Table[s]); }

inline void     Vsym_Set_has_store_in_PU(ST& s)  { s.flags_ext |= AUXF2_HAS_STORE_IN_PU; }
inline void     Vsym_Set_has_store_in_PU(ST* s)  { s->flags_ext |= AUXF2_HAS_STORE_IN_PU; }
inline void     Vsym_Set_has_store_in_PU(ST_IDX s)  { Vsym_Set_has_store_in_PU(St_Table[s]); }

inline BOOL     Vsym_Is_sign_extd(const ST& s){ return s.flags_ext & AUXF2_IS_SIGN_EXTD; }
inline BOOL     Vsym_Is_sign_extd(ST* s) { return s->flags_ext & AUXF2_IS_SIGN_EXTD; }
inline BOOL     Vsym_Is_sign_extd(ST_IDX s) { return Vsym_Is_sign_extd(St_Table[s]); }

inline void     Vsym_Set_sign_extd(ST& s)  { s.flags_ext |= AUXF2_IS_SIGN_EXTD; }
inline void     Vsym_Set_sign_extd(ST* s)  { s->flags_ext |= AUXF2_IS_SIGN_EXTD; }
inline void     Vsym_Set_sign_extd(ST_IDX s)  { Vsym_Set_sign_extd(St_Table[s]); }

inline BOOL     Vsym_Is_zero_extd(const ST& s){ return s.flags_ext & AUXF2_IS_ZERO_EXTD; }
inline BOOL     Vsym_Is_zero_extd(ST* s) { return s->flags_ext & AUXF2_IS_ZERO_EXTD; }
inline BOOL     Vsym_Is_zero_extd(ST_IDX s) { return Vsym_Is_zero_extd(St_Table[s]); }

inline void     Vsym_Set_zero_extd(ST& s)  { s.flags_ext |= AUXF2_IS_ZERO_EXTD; }
inline void     Vsym_Set_zero_extd(ST* s)  { s->flags_ext |= AUXF2_IS_ZERO_EXTD; }
inline void     Vsym_Set_zero_extd(ST_IDX s)  { Vsym_Set_zero_extd(St_Table[s]); }

inline BOOL     Vsym_Is_address(const ST& s){ return s.flags_ext & AUXF2_IS_ADDRESS; }
inline BOOL     Vsym_Is_address(ST* s) { return s->flags_ext & AUXF2_IS_ADDRESS; }
inline BOOL     Vsym_Is_address(ST_IDX s) { return Vsym_Is_address(St_Table[s]); }

inline void     Vsym_Set_is_address(ST& s)  { s.flags_ext |= AUXF2_IS_ADDRESS; }
inline void     Vsym_Set_is_address(ST* s)  { s->flags_ext |= AUXF2_IS_ADDRESS; }
inline void     Vsym_Set_is_address(ST_IDX s)  { Vsym_Set_is_address(St_Table[s]); }

inline BOOL     Vsym_Not_address(const ST& s){ return s.flags_ext & AUXF2_NOT_ADDRESS; }
inline BOOL     Vsym_Not_address(ST* s) { return s->flags_ext & AUXF2_NOT_ADDRESS; }
inline BOOL     Vsym_Not_address(ST_IDX s) { return Vsym_Not_address(St_Table[s]); }

inline void     Vsym_Set_not_address(ST& s)  { s.flags_ext |= AUXF2_NOT_ADDRESS; }
inline void     Vsym_Set_not_address(ST* s)  { s->flags_ext |= AUXF2_NOT_ADDRESS; }
inline void     Vsym_Set_not_address(ST_IDX s)  { Vsym_Set_not_address(St_Table[s]); }

inline BOOL     Vsym_Prop_chain_seen(const ST& s){ return s.flags_ext & AUXF2_PROP_CHAIN_SEEN; }
inline BOOL     Vsym_Prop_chain_seen(ST* s) { return s->flags_ext & AUXF2_PROP_CHAIN_SEEN; }
inline BOOL     Vsym_Prop_chain_seen(ST_IDX s) { return Vsym_Prop_chain_seen(St_Table[s]); }

inline void     Vsym_Set_Prop_chain_seen(ST& s)  { s.flags_ext |= AUXF2_PROP_CHAIN_SEEN; }
inline void     Vsym_Set_Prop_chain_seen(ST* s)  { s->flags_ext |= AUXF2_PROP_CHAIN_SEEN; }
inline void     Vsym_Set_Prop_chain_seen(ST_IDX s)  { Vsym_Set_Prop_chain_seen(St_Table[s]); }

inline BOOL     Vsym_No_register(const ST& s){ return s.flags_ext & AUXF2_NO_REG; }
inline BOOL     Vsym_No_register(ST* s) { return s->flags_ext & AUXF2_NO_REG; }
inline BOOL     Vsym_No_register(ST_IDX s) { return Vsym_No_register(St_Table[s]); }

inline void     Vsym_Set_no_register(ST& s)  { s.flags_ext |= AUXF2_NO_REG; }
inline void     Vsym_Set_no_register(ST* s)  { s->flags_ext |= AUXF2_NO_REG; }
inline void     Vsym_Set_no_register(ST_IDX s)  { Vsym_Set_no_register(St_Table[s]); }

inline BOOL     Vsym_LPRE_VNFRE_temp(const ST& s){ return s.flags_ext & AUXF2_LPRE_VNFRE_TEMP; }
inline BOOL     Vsym_LPRE_VNFRE_temp(ST* s) { return s->flags_ext & AUXF2_LPRE_VNFRE_TEMP; }
inline BOOL     Vsym_LPRE_VNFRE_temp(ST_IDX s) { return Vsym_LPRE_VNFRE_temp(St_Table[s]); }

inline void     Vsym_Set_LPRE_VNFRE_temp(ST& s)  { s.flags_ext |= AUXF2_LPRE_VNFRE_TEMP; }
inline void     Vsym_Set_LPRE_VNFRE_temp(ST* s)  { s->flags_ext |= AUXF2_LPRE_VNFRE_TEMP; }
inline void     Vsym_Set_LPRE_VNFRE_temp(ST_IDX s)  { Vsym_Set_LPRE_VNFRE_temp(St_Table[s]); }

inline WSSA::WSSA_VSYM_TYPE
Vsym_type_from_aux(OPT_VAR_TYPE vt) {
  switch( vt ) {
  case VT_LDA_SCALAR:
    return WSSA::WVT_LDA_SCALAR;
  case VT_LDA_VSYM:
    return WSSA::WVT_LDA_VSYM;
  case VT_UNIQUE_VSYM:
    return WSSA::WVT_UNIQUE_VSYM;
  case VT_SPECIAL_VSYM:
    return WSSA::WVT_SPECIAL_VSYM;
  default:
    FmtAssert( FALSE, ("bad vt") );
    return WSSA::WVT_UNKNOWN;
  }
}


#endif  /* WSSA_SYM_UTILS_INCLUDED */
