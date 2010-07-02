/* Generated automatically by the program `genflags'
   from the machine description file `md'.  */

#ifndef GCC_INSN_FLAGS_H
#define GCC_INSN_FLAGS_H

#define HAVE_cmpdi_ccno_1_rex64 (TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode))
#define HAVE_cmpdi_1_insn_rex64 (TARGET_64BIT && ix86_match_ccmode (insn, CCmode))
#define HAVE_cmpqi_ext_3_insn (!TARGET_64BIT && ix86_match_ccmode (insn, CCmode))
#define HAVE_cmpqi_ext_3_insn_rex64 (TARGET_64BIT && ix86_match_ccmode (insn, CCmode))
#define HAVE_x86_fnstsw_1 (TARGET_80387)
#define HAVE_x86_sahf_1 (!TARGET_64BIT)
#define HAVE_popsi1 (!TARGET_64BIT)
#define HAVE_movsi_insv_1 (!TARGET_64BIT)
#define HAVE_movdi_insv_1_rex64 (TARGET_64BIT)
#define HAVE_popdi1 (TARGET_64BIT)
#define HAVE_swapxf (TARGET_80387)
#define HAVE_zero_extendhisi2_and (TARGET_ZERO_EXTEND_WITH_AND && !optimize_size)
#define HAVE_zero_extendsidi2_32 (!TARGET_64BIT)
#define HAVE_zero_extendsidi2_rex64 (TARGET_64BIT)
#define HAVE_zero_extendhidi2 (TARGET_64BIT)
#define HAVE_zero_extendqidi2 (TARGET_64BIT)
#define HAVE_extendsidi2_rex64 (TARGET_64BIT)
#define HAVE_extendhidi2 (TARGET_64BIT)
#define HAVE_extendqidi2 (TARGET_64BIT)
#define HAVE_extendhisi2 1
#define HAVE_extendqihi2 1
#define HAVE_extendqisi2 1
#define HAVE_truncxfsf2_i387_noop (TARGET_80387 && flag_unsafe_math_optimizations)
#define HAVE_truncxfdf2_i387_noop (TARGET_80387 && flag_unsafe_math_optimizations)
#define HAVE_fix_truncsfdi_sse (TARGET_64BIT && TARGET_SSE && (!TARGET_FISTTP || TARGET_SSE_MATH))
#define HAVE_fix_truncdfdi_sse (TARGET_64BIT && TARGET_SSE2 && (!TARGET_FISTTP || TARGET_SSE_MATH))
#define HAVE_fix_truncsfsi_sse (TARGET_SSE && (!TARGET_FISTTP || TARGET_SSE_MATH))
#define HAVE_fix_truncdfsi_sse (TARGET_SSE2 && (!TARGET_FISTTP || TARGET_SSE_MATH))
#define HAVE_fix_trunchi_fisttp_i387_1 (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	 && (TARGET_64BIT || HImode != DImode)) \
	&& TARGET_SSE_MATH) \
   && !(reload_completed || reload_in_progress))
#define HAVE_fix_truncsi_fisttp_i387_1 (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	 && (TARGET_64BIT || SImode != DImode)) \
	&& TARGET_SSE_MATH) \
   && !(reload_completed || reload_in_progress))
#define HAVE_fix_truncdi_fisttp_i387_1 (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	 && (TARGET_64BIT || DImode != DImode)) \
	&& TARGET_SSE_MATH) \
   && !(reload_completed || reload_in_progress))
#define HAVE_fix_trunchi_i387_fisttp (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	 && (TARGET_64BIT || HImode != DImode)) \
	&& TARGET_SSE_MATH))
#define HAVE_fix_truncsi_i387_fisttp (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	 && (TARGET_64BIT || SImode != DImode)) \
	&& TARGET_SSE_MATH))
#define HAVE_fix_truncdi_i387_fisttp (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	 && (TARGET_64BIT || DImode != DImode)) \
	&& TARGET_SSE_MATH))
#define HAVE_fix_trunchi_i387_fisttp_with_temp (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	&& (TARGET_64BIT || HImode != DImode)) \
	&& TARGET_SSE_MATH))
#define HAVE_fix_truncsi_i387_fisttp_with_temp (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	&& (TARGET_64BIT || SImode != DImode)) \
	&& TARGET_SSE_MATH))
#define HAVE_fix_truncdi_i387_fisttp_with_temp (TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1])) \
	&& (TARGET_64BIT || DImode != DImode)) \
	&& TARGET_SSE_MATH))
#define HAVE_fix_truncdi_i387 (TARGET_80387 && !TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !(TARGET_64BIT && SSE_FLOAT_MODE_P (GET_MODE (operands[1]))))
#define HAVE_fix_truncdi_i387_with_temp (TARGET_80387 && !TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !(TARGET_64BIT && SSE_FLOAT_MODE_P (GET_MODE (operands[1]))))
#define HAVE_fix_trunchi_i387 (TARGET_80387 && !TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !SSE_FLOAT_MODE_P (GET_MODE (operands[1])))
#define HAVE_fix_truncsi_i387 (TARGET_80387 && !TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !SSE_FLOAT_MODE_P (GET_MODE (operands[1])))
#define HAVE_fix_trunchi_i387_with_temp (TARGET_80387 && !TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !SSE_FLOAT_MODE_P (GET_MODE (operands[1])))
#define HAVE_fix_truncsi_i387_with_temp (TARGET_80387 && !TARGET_FISTTP \
   && FLOAT_MODE_P (GET_MODE (operands[1])) \
   && !SSE_FLOAT_MODE_P (GET_MODE (operands[1])))
#define HAVE_x86_fnstcw_1 (TARGET_80387)
#define HAVE_x86_fldcw_1 (TARGET_80387)
#define HAVE_floathixf2 (TARGET_80387)
#define HAVE_floatsixf2 (TARGET_80387)
#define HAVE_floatdixf2 (TARGET_80387)
#define HAVE_adddi3_carry_rex64 (TARGET_64BIT && ix86_binary_operator_ok (PLUS, DImode, operands))
#define HAVE_addqi3_carry (ix86_binary_operator_ok (PLUS, QImode, operands))
#define HAVE_addhi3_carry (ix86_binary_operator_ok (PLUS, HImode, operands))
#define HAVE_addsi3_carry (ix86_binary_operator_ok (PLUS, SImode, operands))
#define HAVE_addqi3_cc (ix86_binary_operator_ok (PLUS, QImode, operands))
#define HAVE_addsi_1_zext (TARGET_64BIT && ix86_binary_operator_ok (PLUS, SImode, operands))
#define HAVE_addqi_ext_1 (!TARGET_64BIT)
#define HAVE_subdi3_carry_rex64 (TARGET_64BIT && ix86_binary_operator_ok (MINUS, DImode, operands))
#define HAVE_subqi3_carry (ix86_binary_operator_ok (MINUS, QImode, operands))
#define HAVE_subhi3_carry (ix86_binary_operator_ok (MINUS, HImode, operands))
#define HAVE_subsi3_carry (ix86_binary_operator_ok (MINUS, SImode, operands))
#define HAVE_subsi3_carry_zext (TARGET_64BIT && ix86_binary_operator_ok (MINUS, SImode, operands))
#define HAVE_divqi3 (TARGET_QIMODE_MATH)
#define HAVE_udivqi3 (TARGET_QIMODE_MATH)
#define HAVE_divmodhi4 (TARGET_HIMODE_MATH)
#define HAVE_udivmoddi4 (TARGET_64BIT)
#define HAVE_udivmodsi4 1
#define HAVE_testsi_1 (ix86_match_ccmode (insn, CCNOmode) \
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM))
#define HAVE_andqi_ext_0 1
#define HAVE_iorqi_ext_0 ((!TARGET_PARTIAL_REG_STALL || optimize_size))
#define HAVE_xorqi_ext_0 ((!TARGET_PARTIAL_REG_STALL || optimize_size))
#define HAVE_copysignsf3_const (TARGET_SSE_MATH)
#define HAVE_copysignsf3_var (TARGET_SSE_MATH)
#define HAVE_copysigndf3_const (TARGET_SSE2 && TARGET_SSE_MATH)
#define HAVE_copysigndf3_var (TARGET_SSE2 && TARGET_SSE_MATH)
#define HAVE_ashlti3_1 (TARGET_64BIT)
#define HAVE_x86_64_shld (TARGET_64BIT)
#define HAVE_x86_shld_1 1
#define HAVE_ashrti3_1 (TARGET_64BIT)
#define HAVE_x86_64_shrd (TARGET_64BIT)
#define HAVE_x86_shrd_1 1
#define HAVE_ashrsi3_31 (INTVAL (operands[2]) == 31 && (TARGET_USE_CLTD || optimize_size) \
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands))
#define HAVE_lshrti3_1 (TARGET_64BIT)
#define HAVE_ix86_rotldi3 (!TARGET_64BIT)
#define HAVE_ix86_rotrdi3 (!TARGET_64BIT)
#define HAVE_jump 1
#define HAVE_blockage 1
#define HAVE_return_internal (reload_completed)
#define HAVE_return_internal_long (reload_completed)
#define HAVE_return_pop_internal (reload_completed)
#define HAVE_return_indirect_internal (reload_completed)
#define HAVE_nop 1
#define HAVE_align 1
#define HAVE_set_got (!TARGET_64BIT)
#define HAVE_set_got_labelled (!TARGET_64BIT)
#define HAVE_set_got_rex64 (TARGET_64BIT)
#define HAVE_eh_return_si (!TARGET_64BIT)
#define HAVE_eh_return_di (TARGET_64BIT)
#define HAVE_leave (!TARGET_64BIT)
#define HAVE_leave_rex64 (TARGET_64BIT)
#define HAVE_ctzsi2 1
#define HAVE_ctzdi2 (TARGET_64BIT)
#define HAVE_sqrtxf2 (TARGET_USE_FANCY_MATH_387)
#define HAVE_fpremxf4 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fprem1xf4 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_sincosdf3 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_sincossf3 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_sincosxf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_atan2df3_1 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_atan2sf3_1 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_atan2xf3_1 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fyl2x_xf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fyl2xp1_xf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_frndintxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistdi2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistdi2_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fisthi2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistsi2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fisthi2_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistsi2_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_frndintxf2_floor (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations \
   && !(reload_completed || reload_in_progress))
#define HAVE_frndintxf2_floor_i387 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistdi2_floor (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistdi2_floor_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fisthi2_floor (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistsi2_floor (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fisthi2_floor_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistsi2_floor_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_frndintxf2_ceil (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations \
   && !(reload_completed || reload_in_progress))
#define HAVE_frndintxf2_ceil_i387 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistdi2_ceil (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistdi2_ceil_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fisthi2_ceil (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistsi2_ceil (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fisthi2_ceil_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_fistsi2_ceil_with_temp (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_frndintxf2_trunc (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations \
   && !(reload_completed || reload_in_progress))
#define HAVE_frndintxf2_trunc_i387 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_frndintxf2_mask_pm (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations \
   && !(reload_completed || reload_in_progress))
#define HAVE_frndintxf2_mask_pm_i387 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_cld 1
#define HAVE_x86_movdicc_0_m1_rex64 (TARGET_64BIT)
#define HAVE_x86_movsicc_0_m1 1
#define HAVE_sminsf3 (TARGET_SSE_MATH)
#define HAVE_smaxsf3 (TARGET_SSE_MATH)
#define HAVE_smindf3 (TARGET_SSE2 && TARGET_SSE_MATH)
#define HAVE_smaxdf3 (TARGET_SSE2 && TARGET_SSE_MATH)
#define HAVE_pro_epilogue_adjust_stack_1 (!TARGET_64BIT)
#define HAVE_pro_epilogue_adjust_stack_rex64 (TARGET_64BIT)
#define HAVE_pro_epilogue_adjust_stack_rex64_2 (TARGET_64BIT)
#define HAVE_allocate_stack_worker_1 (!TARGET_64BIT && TARGET_STACK_PROBE)
#define HAVE_allocate_stack_worker_rex64 (TARGET_64BIT && TARGET_STACK_PROBE)
#define HAVE_trap 1
#define HAVE_stack_protect_set_si 1
#define HAVE_stack_protect_set_di (TARGET_64BIT)
#define HAVE_stack_tls_protect_set_si 1
#define HAVE_stack_tls_protect_set_di (TARGET_64BIT)
#define HAVE_stack_protect_test_si 1
#define HAVE_stack_protect_test_di (TARGET_64BIT)
#define HAVE_stack_tls_protect_test_si 1
#define HAVE_stack_tls_protect_test_di (TARGET_64BIT)
#define HAVE_sse_movups (TARGET_SSE && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_sse2_movupd (TARGET_SSE2 && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_sse2_movdqu (TARGET_SSE2 && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_sse_movntv4sf (TARGET_SSE)
#define HAVE_sse2_movntv2df (TARGET_SSE2)
#define HAVE_sse2_movntv2di (TARGET_SSE2)
#define HAVE_sse2_movntsi (TARGET_SSE2)
#define HAVE_sse3_lddqu (TARGET_SSE3)
#define HAVE_sse_vmaddv4sf3 (TARGET_SSE && ix86_binary_operator_ok (PLUS, V4SFmode, operands))
#define HAVE_sse_vmsubv4sf3 (TARGET_SSE)
#define HAVE_sse_vmmulv4sf3 (TARGET_SSE && ix86_binary_operator_ok (MULT, V4SFmode, operands))
#define HAVE_sse_vmdivv4sf3 (TARGET_SSE)
#define HAVE_sse_rcpv4sf2 (TARGET_SSE)
#define HAVE_sse_vmrcpv4sf2 (TARGET_SSE)
#define HAVE_sse_rsqrtv4sf2 (TARGET_SSE)
#define HAVE_sse_vmrsqrtv4sf2 (TARGET_SSE)
#define HAVE_sqrtv4sf2 (TARGET_SSE)
#define HAVE_sse_vmsqrtv4sf2 (TARGET_SSE)
#define HAVE_sse_vmsmaxv4sf3 (TARGET_SSE)
#define HAVE_sse_vmsminv4sf3 (TARGET_SSE)
#define HAVE_sse3_addsubv4sf3 (TARGET_SSE3)
#define HAVE_sse3_haddv4sf3 (TARGET_SSE3)
#define HAVE_sse3_hsubv4sf3 (TARGET_SSE3)
#define HAVE_sse_maskcmpv4sf3 (TARGET_SSE)
#define HAVE_sse_vmmaskcmpv4sf3 (TARGET_SSE)
#define HAVE_sse_comi (TARGET_SSE)
#define HAVE_sse_ucomi (TARGET_SSE)
#define HAVE_sse_nandv4sf3 (TARGET_SSE)
#define HAVE_sse_cvtpi2ps (TARGET_SSE)
#define HAVE_sse_cvtps2pi (TARGET_SSE)
#define HAVE_sse_cvttps2pi (TARGET_SSE)
#define HAVE_sse_cvtsi2ss (TARGET_SSE)
#define HAVE_sse_cvtsi2ssq (TARGET_SSE && TARGET_64BIT)
#define HAVE_sse_cvtss2si (TARGET_SSE)
#define HAVE_sse_cvtss2siq (TARGET_SSE && TARGET_64BIT)
#define HAVE_sse_cvttss2si (TARGET_SSE)
#define HAVE_sse_cvttss2siq (TARGET_SSE && TARGET_64BIT)
#define HAVE_sse2_cvtdq2ps (TARGET_SSE2)
#define HAVE_sse2_cvtps2dq (TARGET_SSE2)
#define HAVE_sse2_cvttps2dq (TARGET_SSE2)
#define HAVE_sse_movhlps (TARGET_SSE && !(MEM_P (operands[1]) && MEM_P (operands[2])))
#define HAVE_sse_movlhps (TARGET_SSE && ix86_binary_operator_ok (UNKNOWN, V4SFmode, operands))
#define HAVE_sse_unpckhps (TARGET_SSE)
#define HAVE_sse_unpcklps (TARGET_SSE)
#define HAVE_sse3_movshdup (TARGET_SSE3)
#define HAVE_sse3_movsldup (TARGET_SSE3)
#define HAVE_sse_shufps_1 (TARGET_SSE)
#define HAVE_sse_storehps (TARGET_SSE)
#define HAVE_sse_loadhps (TARGET_SSE)
#define HAVE_sse_storelps (TARGET_SSE)
#define HAVE_sse_loadlps (TARGET_SSE)
#define HAVE_sse_movss (TARGET_SSE)
#define HAVE_sse2_vmaddv2df3 (TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V4SFmode, operands))
#define HAVE_sse2_vmsubv2df3 (TARGET_SSE2)
#define HAVE_sse2_vmmulv2df3 (TARGET_SSE2 && ix86_binary_operator_ok (MULT, V2DFmode, operands))
#define HAVE_sse2_vmdivv2df3 (TARGET_SSE2)
#define HAVE_sqrtv2df2 (TARGET_SSE2)
#define HAVE_sse2_vmsqrtv2df2 (TARGET_SSE2)
#define HAVE_sse2_vmsmaxv2df3 (TARGET_SSE2)
#define HAVE_sse2_vmsminv2df3 (TARGET_SSE2)
#define HAVE_sse3_addsubv2df3 (TARGET_SSE3)
#define HAVE_sse3_haddv2df3 (TARGET_SSE3)
#define HAVE_sse3_hsubv2df3 (TARGET_SSE3)
#define HAVE_sse2_maskcmpv2df3 (TARGET_SSE2)
#define HAVE_sse2_vmmaskcmpv2df3 (TARGET_SSE2)
#define HAVE_sse2_comi (TARGET_SSE2)
#define HAVE_sse2_ucomi (TARGET_SSE2)
#define HAVE_sse2_nandv2df3 (TARGET_SSE2)
#define HAVE_sse2_cvtpi2pd (TARGET_SSE2)
#define HAVE_sse2_cvtpd2pi (TARGET_SSE2)
#define HAVE_sse2_cvttpd2pi (TARGET_SSE2)
#define HAVE_sse2_cvtsi2sd (TARGET_SSE2)
#define HAVE_sse2_cvtsi2sdq (TARGET_SSE2 && TARGET_64BIT)
#define HAVE_sse2_cvtsd2si (TARGET_SSE2)
#define HAVE_sse2_cvtsd2siq (TARGET_SSE2 && TARGET_64BIT)
#define HAVE_sse2_cvttsd2si (TARGET_SSE2)
#define HAVE_sse2_cvttsd2siq (TARGET_SSE2 && TARGET_64BIT)
#define HAVE_sse2_cvtdq2pd (TARGET_SSE2)
#define HAVE_sse2_cvtsd2ss (TARGET_SSE2)
#define HAVE_sse2_cvtss2sd (TARGET_SSE2)
#define HAVE_sse2_cvtps2pd (TARGET_SSE2)
#define HAVE_sse2_unpckhpd (TARGET_SSE2 && !(MEM_P (operands[1]) && MEM_P (operands[2])))
#define HAVE_sse2_unpcklpd (TARGET_SSE2 && !(MEM_P (operands[1]) && MEM_P (operands[2])))
#define HAVE_sse2_shufpd_1 (TARGET_SSE2)
#define HAVE_sse2_storehpd (TARGET_SSE2 && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_sse2_storelpd (TARGET_SSE2 && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_sse2_loadhpd (TARGET_SSE2 && !(MEM_P (operands[1]) && MEM_P (operands[2])))
#define HAVE_sse2_loadlpd (TARGET_SSE2 && !(MEM_P (operands[1]) && MEM_P (operands[2])))
#define HAVE_sse2_movsd (TARGET_SSE2)
#define HAVE_sse2_ssaddv16qi3 (TARGET_SSE2 && ix86_binary_operator_ok (SS_PLUS, V16QImode, operands))
#define HAVE_sse2_ssaddv8hi3 (TARGET_SSE2 && ix86_binary_operator_ok (SS_PLUS, V8HImode, operands))
#define HAVE_sse2_usaddv16qi3 (TARGET_SSE2 && ix86_binary_operator_ok (US_PLUS, V16QImode, operands))
#define HAVE_sse2_usaddv8hi3 (TARGET_SSE2 && ix86_binary_operator_ok (US_PLUS, V8HImode, operands))
#define HAVE_sse2_sssubv16qi3 (TARGET_SSE2)
#define HAVE_sse2_sssubv8hi3 (TARGET_SSE2)
#define HAVE_sse2_ussubv16qi3 (TARGET_SSE2)
#define HAVE_sse2_ussubv8hi3 (TARGET_SSE2)
#define HAVE_sse2_smulv8hi3_highpart (TARGET_SSE2 && ix86_binary_operator_ok (MULT, V8HImode, operands))
#define HAVE_sse2_umulv8hi3_highpart (TARGET_SSE2 && ix86_binary_operator_ok (MULT, V8HImode, operands))
#define HAVE_sse2_umulv2siv2di3 (TARGET_SSE2 && ix86_binary_operator_ok (MULT, V8HImode, operands))
#define HAVE_sse2_pmaddwd (TARGET_SSE2)
#define HAVE_ashrv8hi3 (TARGET_SSE2)
#define HAVE_ashrv4si3 (TARGET_SSE2)
#define HAVE_lshrv8hi3 (TARGET_SSE2)
#define HAVE_lshrv4si3 (TARGET_SSE2)
#define HAVE_lshrv2di3 (TARGET_SSE2)
#define HAVE_ashlv8hi3 (TARGET_SSE2)
#define HAVE_ashlv4si3 (TARGET_SSE2)
#define HAVE_ashlv2di3 (TARGET_SSE2)
#define HAVE_sse2_ashlti3 (TARGET_SSE2)
#define HAVE_sse2_lshrti3 (TARGET_SSE2)
#define HAVE_sse2_eqv16qi3 (TARGET_SSE2 && ix86_binary_operator_ok (EQ, V16QImode, operands))
#define HAVE_sse2_eqv8hi3 (TARGET_SSE2 && ix86_binary_operator_ok (EQ, V8HImode, operands))
#define HAVE_sse2_eqv4si3 (TARGET_SSE2 && ix86_binary_operator_ok (EQ, V4SImode, operands))
#define HAVE_sse2_gtv16qi3 (TARGET_SSE2)
#define HAVE_sse2_gtv8hi3 (TARGET_SSE2)
#define HAVE_sse2_gtv4si3 (TARGET_SSE2)
#define HAVE_sse2_nandv16qi3 (TARGET_SSE2)
#define HAVE_sse2_nandv8hi3 (TARGET_SSE2)
#define HAVE_sse2_nandv4si3 (TARGET_SSE2)
#define HAVE_sse2_nandv2di3 (TARGET_SSE2)
#define HAVE_sse2_packsswb (TARGET_SSE2)
#define HAVE_sse2_packssdw (TARGET_SSE2)
#define HAVE_sse2_packuswb (TARGET_SSE2)
#define HAVE_sse2_punpckhbw (TARGET_SSE2)
#define HAVE_sse2_punpcklbw (TARGET_SSE2)
#define HAVE_sse2_punpckhwd (TARGET_SSE2)
#define HAVE_sse2_punpcklwd (TARGET_SSE2)
#define HAVE_sse2_punpckhdq (TARGET_SSE2)
#define HAVE_sse2_punpckldq (TARGET_SSE2)
#define HAVE_sse2_punpckhqdq (TARGET_SSE2)
#define HAVE_sse2_punpcklqdq (TARGET_SSE2)
#define HAVE_sse2_pextrw (TARGET_SSE2)
#define HAVE_sse2_pshufd_1 (TARGET_SSE2)
#define HAVE_sse2_pshuflw_1 (TARGET_SSE2)
#define HAVE_sse2_pshufhw_1 (TARGET_SSE2)
#define HAVE_sse2_loadld (TARGET_SSE)
#define HAVE_sse2_stored (TARGET_SSE)
#define HAVE_sse2_uavgv16qi3 (TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V16QImode, operands))
#define HAVE_sse2_uavgv8hi3 (TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V8HImode, operands))
#define HAVE_sse2_psadbw (TARGET_SSE2)
#define HAVE_sse_movmskps (TARGET_SSE)
#define HAVE_sse2_movmskpd (TARGET_SSE2)
#define HAVE_sse2_pmovmskb (TARGET_SSE2)
#define HAVE_sse_ldmxcsr (TARGET_SSE)
#define HAVE_sse_stmxcsr (TARGET_SSE)
#define HAVE_sse2_clflush (TARGET_SSE2)
#define HAVE_sse3_mwait (TARGET_SSE3)
#define HAVE_sse3_monitor (TARGET_SSE3 && !TARGET_64BIT)
#define HAVE_sse3_monitor64 (TARGET_SSE3 && TARGET_64BIT)
#define HAVE_sse4a_vmmovntv2df (TARGET_SSE4A)
#define HAVE_sse4a_movntdf (TARGET_SSE4A)
#define HAVE_sse4a_vmmovntv4sf (TARGET_SSE4A)
#define HAVE_sse4a_movntsf (TARGET_SSE4A)
#define HAVE_sse4a_extrqi (TARGET_SSE4A)
#define HAVE_sse4a_extrq (TARGET_SSE4A)
#define HAVE_sse4a_insertqi (TARGET_SSE4A)
#define HAVE_sse4a_insertq (TARGET_SSE4A)
#define HAVE_sse_movntdi (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_mmx_addv2sf3 (TARGET_3DNOW && ix86_binary_operator_ok (PLUS, V2SFmode, operands))
#define HAVE_mmx_subv2sf3 (TARGET_3DNOW && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_mmx_mulv2sf3 (TARGET_3DNOW && ix86_binary_operator_ok (MULT, V2SFmode, operands))
#define HAVE_mmx_smaxv2sf3 (TARGET_3DNOW && ix86_binary_operator_ok (SMAX, V2SFmode, operands))
#define HAVE_mmx_sminv2sf3 (TARGET_3DNOW && ix86_binary_operator_ok (SMIN, V2SFmode, operands))
#define HAVE_mmx_rcpv2sf2 (TARGET_3DNOW)
#define HAVE_mmx_rcpit1v2sf3 (TARGET_3DNOW)
#define HAVE_mmx_rcpit2v2sf3 (TARGET_3DNOW)
#define HAVE_mmx_rsqrtv2sf2 (TARGET_3DNOW)
#define HAVE_mmx_rsqit1v2sf3 (TARGET_3DNOW)
#define HAVE_mmx_haddv2sf3 (TARGET_3DNOW)
#define HAVE_mmx_hsubv2sf3 (TARGET_3DNOW_A)
#define HAVE_mmx_addsubv2sf3 (TARGET_3DNOW_A)
#define HAVE_mmx_gtv2sf3 (TARGET_3DNOW)
#define HAVE_mmx_gev2sf3 (TARGET_3DNOW)
#define HAVE_mmx_eqv2sf3 (TARGET_3DNOW && ix86_binary_operator_ok (EQ, V2SFmode, operands))
#define HAVE_mmx_pf2id (TARGET_3DNOW)
#define HAVE_mmx_pf2iw (TARGET_3DNOW_A)
#define HAVE_mmx_pi2fw (TARGET_3DNOW_A)
#define HAVE_mmx_floatv2si2 (TARGET_3DNOW)
#define HAVE_mmx_pswapdv2sf2 (TARGET_3DNOW_A)
#define HAVE_mmx_addv8qi3 (TARGET_MMX && ix86_binary_operator_ok (PLUS, V8QImode, operands))
#define HAVE_mmx_addv4hi3 (TARGET_MMX && ix86_binary_operator_ok (PLUS, V4HImode, operands))
#define HAVE_mmx_addv2si3 (TARGET_MMX && ix86_binary_operator_ok (PLUS, V2SImode, operands))
#define HAVE_mmx_adddi3 (TARGET_SSE2 && ix86_binary_operator_ok (PLUS, DImode, operands))
#define HAVE_mmx_ssaddv8qi3 (TARGET_MMX)
#define HAVE_mmx_ssaddv4hi3 (TARGET_MMX)
#define HAVE_mmx_usaddv8qi3 (TARGET_MMX)
#define HAVE_mmx_usaddv4hi3 (TARGET_MMX)
#define HAVE_mmx_subv8qi3 (TARGET_MMX)
#define HAVE_mmx_subv4hi3 (TARGET_MMX)
#define HAVE_mmx_subv2si3 (TARGET_MMX)
#define HAVE_mmx_subdi3 (TARGET_SSE2)
#define HAVE_mmx_sssubv8qi3 (TARGET_MMX)
#define HAVE_mmx_sssubv4hi3 (TARGET_MMX)
#define HAVE_mmx_ussubv8qi3 (TARGET_MMX)
#define HAVE_mmx_ussubv4hi3 (TARGET_MMX)
#define HAVE_mmx_mulv4hi3 (TARGET_MMX && ix86_binary_operator_ok (MULT, V4HImode, operands))
#define HAVE_mmx_smulv4hi3_highpart (TARGET_MMX && ix86_binary_operator_ok (MULT, V4HImode, operands))
#define HAVE_mmx_umulv4hi3_highpart ((TARGET_SSE || TARGET_3DNOW_A) \
   && ix86_binary_operator_ok (MULT, V4HImode, operands))
#define HAVE_mmx_pmaddwd (TARGET_MMX && ix86_binary_operator_ok (MULT, V4HImode, operands))
#define HAVE_mmx_pmulhrwv4hi3 (TARGET_3DNOW && ix86_binary_operator_ok (MULT, V4HImode, operands))
#define HAVE_sse2_umulsidi3 (TARGET_SSE2 && ix86_binary_operator_ok (MULT, V2SImode, operands))
#define HAVE_mmx_umaxv8qi3 ((TARGET_SSE || TARGET_3DNOW_A) \
   && ix86_binary_operator_ok (UMAX, V8QImode, operands))
#define HAVE_mmx_smaxv4hi3 ((TARGET_SSE || TARGET_3DNOW_A) \
   && ix86_binary_operator_ok (SMAX, V4HImode, operands))
#define HAVE_mmx_uminv8qi3 ((TARGET_SSE || TARGET_3DNOW_A) \
   && ix86_binary_operator_ok (UMIN, V8QImode, operands))
#define HAVE_mmx_sminv4hi3 ((TARGET_SSE || TARGET_3DNOW_A) \
   && ix86_binary_operator_ok (SMIN, V4HImode, operands))
#define HAVE_mmx_ashrv4hi3 (TARGET_MMX)
#define HAVE_mmx_ashrv2si3 (TARGET_MMX)
#define HAVE_mmx_lshrv4hi3 (TARGET_MMX)
#define HAVE_mmx_lshrv2si3 (TARGET_MMX)
#define HAVE_mmx_lshrdi3 (TARGET_MMX)
#define HAVE_mmx_ashlv4hi3 (TARGET_MMX)
#define HAVE_mmx_ashlv2si3 (TARGET_MMX)
#define HAVE_mmx_ashldi3 (TARGET_MMX)
#define HAVE_mmx_eqv8qi3 (TARGET_MMX && ix86_binary_operator_ok (EQ, V8QImode, operands))
#define HAVE_mmx_eqv4hi3 (TARGET_MMX && ix86_binary_operator_ok (EQ, V4HImode, operands))
#define HAVE_mmx_eqv2si3 (TARGET_MMX && ix86_binary_operator_ok (EQ, V2SImode, operands))
#define HAVE_mmx_gtv8qi3 (TARGET_MMX)
#define HAVE_mmx_gtv4hi3 (TARGET_MMX)
#define HAVE_mmx_gtv2si3 (TARGET_MMX)
#define HAVE_mmx_andv8qi3 (TARGET_MMX && ix86_binary_operator_ok (AND, V8QImode, operands))
#define HAVE_mmx_andv4hi3 (TARGET_MMX && ix86_binary_operator_ok (AND, V4HImode, operands))
#define HAVE_mmx_andv2si3 (TARGET_MMX && ix86_binary_operator_ok (AND, V2SImode, operands))
#define HAVE_mmx_nandv8qi3 (TARGET_MMX)
#define HAVE_mmx_nandv4hi3 (TARGET_MMX)
#define HAVE_mmx_nandv2si3 (TARGET_MMX)
#define HAVE_mmx_iorv8qi3 (TARGET_MMX && ix86_binary_operator_ok (IOR, V8QImode, operands))
#define HAVE_mmx_iorv4hi3 (TARGET_MMX && ix86_binary_operator_ok (IOR, V4HImode, operands))
#define HAVE_mmx_iorv2si3 (TARGET_MMX && ix86_binary_operator_ok (IOR, V2SImode, operands))
#define HAVE_mmx_xorv8qi3 (TARGET_MMX && ix86_binary_operator_ok (XOR, V8QImode, operands))
#define HAVE_mmx_xorv4hi3 (TARGET_MMX && ix86_binary_operator_ok (XOR, V4HImode, operands))
#define HAVE_mmx_xorv2si3 (TARGET_MMX && ix86_binary_operator_ok (XOR, V2SImode, operands))
#define HAVE_mmx_packsswb (TARGET_MMX)
#define HAVE_mmx_packssdw (TARGET_MMX)
#define HAVE_mmx_packuswb (TARGET_MMX)
#define HAVE_mmx_punpckhbw (TARGET_MMX)
#define HAVE_mmx_punpcklbw (TARGET_MMX)
#define HAVE_mmx_punpckhwd (TARGET_MMX)
#define HAVE_mmx_punpcklwd (TARGET_MMX)
#define HAVE_mmx_punpckhdq (TARGET_MMX)
#define HAVE_mmx_punpckldq (TARGET_MMX)
#define HAVE_mmx_pextrw (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_mmx_pshufw_1 (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_mmx_pswapdv2si2 (TARGET_3DNOW_A)
#define HAVE_mmx_uavgv8qi3 ((TARGET_SSE || TARGET_3DNOW) \
   && ix86_binary_operator_ok (PLUS, V8QImode, operands))
#define HAVE_mmx_uavgv4hi3 ((TARGET_SSE || TARGET_3DNOW_A) \
   && ix86_binary_operator_ok (PLUS, V4HImode, operands))
#define HAVE_mmx_psadbw (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_mmx_pmovmskb (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_mmx_emms (TARGET_MMX)
#define HAVE_mmx_femms (TARGET_3DNOW)
#define HAVE_sync_double_compare_and_swapdi (!TARGET_64BIT && TARGET_CMPXCHG8B && !flag_pic)
#define HAVE_sync_double_compare_and_swapti (TARGET_64BIT && TARGET_CMPXCHG16B)
#define HAVE_sync_double_compare_and_swap_ccdi (!TARGET_64BIT && TARGET_CMPXCHG8B && !flag_pic)
#define HAVE_sync_double_compare_and_swap_ccti (TARGET_64BIT && TARGET_CMPXCHG16B)
#define HAVE_sync_old_addqi (TARGET_XADD)
#define HAVE_sync_old_addhi (TARGET_XADD)
#define HAVE_sync_old_addsi (TARGET_XADD)
#define HAVE_sync_old_adddi ((TARGET_XADD) && (TARGET_64BIT))
#define HAVE_sync_lock_test_and_setqi 1
#define HAVE_sync_lock_test_and_sethi 1
#define HAVE_sync_lock_test_and_setsi 1
#define HAVE_sync_lock_test_and_setdi (TARGET_64BIT)
#define HAVE_sync_addqi 1
#define HAVE_sync_addhi 1
#define HAVE_sync_addsi 1
#define HAVE_sync_adddi (TARGET_64BIT)
#define HAVE_sync_subqi 1
#define HAVE_sync_subhi 1
#define HAVE_sync_subsi 1
#define HAVE_sync_subdi (TARGET_64BIT)
#define HAVE_sync_iorqi 1
#define HAVE_sync_iorhi 1
#define HAVE_sync_iorsi 1
#define HAVE_sync_iordi (TARGET_64BIT)
#define HAVE_sync_andqi 1
#define HAVE_sync_andhi 1
#define HAVE_sync_andsi 1
#define HAVE_sync_anddi (TARGET_64BIT)
#define HAVE_sync_xorqi 1
#define HAVE_sync_xorhi 1
#define HAVE_sync_xorsi 1
#define HAVE_sync_xordi (TARGET_64BIT)
#define HAVE_cmpti (TARGET_64BIT)
#define HAVE_cmpdi 1
#define HAVE_cmpsi 1
#define HAVE_cmphi 1
#define HAVE_cmpqi (TARGET_QIMODE_MATH)
#define HAVE_cmpdi_1_rex64 (TARGET_64BIT)
#define HAVE_cmpsi_1 1
#define HAVE_cmpqi_ext_3 1
#define HAVE_cmpxf (TARGET_80387)
#define HAVE_cmpdf (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_cmpsf (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_movsi 1
#define HAVE_movhi 1
#define HAVE_movstricthi (! TARGET_PARTIAL_REG_STALL || optimize_size)
#define HAVE_movqi 1
#define HAVE_reload_outqi 1
#define HAVE_movstrictqi (! TARGET_PARTIAL_REG_STALL || optimize_size)
#define HAVE_movdi 1
#define HAVE_movti (TARGET_SSE || TARGET_64BIT)
#define HAVE_movsf 1
#define HAVE_movdf 1
#define HAVE_movxf 1
#define HAVE_movtf (TARGET_64BIT)
#define HAVE_zero_extendhisi2 1
#define HAVE_zero_extendqihi2 1
#define HAVE_zero_extendqisi2 1
#define HAVE_zero_extendsidi2 1
#define HAVE_extendsidi2 1
#define HAVE_extendsfdf2 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_extendsfxf2 (TARGET_80387)
#define HAVE_extenddfxf2 (TARGET_80387)
#define HAVE_truncdfsf2 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_truncdfsf2_with_temp 1
#define HAVE_truncxfsf2 (TARGET_80387)
#define HAVE_truncxfdf2 (TARGET_80387)
#define HAVE_fix_truncxfdi2 (TARGET_80387)
#define HAVE_fix_truncsfdi2 (TARGET_80387 || (TARGET_64BIT && SSE_FLOAT_MODE_P (SFmode)))
#define HAVE_fix_truncdfdi2 (TARGET_80387 || (TARGET_64BIT && SSE_FLOAT_MODE_P (DFmode)))
#define HAVE_fix_truncxfsi2 (TARGET_80387)
#define HAVE_fix_truncsfsi2 (TARGET_80387 || SSE_FLOAT_MODE_P (SFmode))
#define HAVE_fix_truncdfsi2 (TARGET_80387 || SSE_FLOAT_MODE_P (DFmode))
#define HAVE_fix_truncsfhi2 (TARGET_80387 \
   && !(SSE_FLOAT_MODE_P (SFmode) && (!TARGET_FISTTP || TARGET_SSE_MATH)))
#define HAVE_fix_truncdfhi2 (TARGET_80387 \
   && !(SSE_FLOAT_MODE_P (DFmode) && (!TARGET_FISTTP || TARGET_SSE_MATH)))
#define HAVE_fix_truncxfhi2 (TARGET_80387 \
   && !(SSE_FLOAT_MODE_P (XFmode) && (!TARGET_FISTTP || TARGET_SSE_MATH)))
#define HAVE_floathisf2 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_floatsisf2 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_floatdisf2 (TARGET_80387 || (TARGET_64BIT && TARGET_SSE_MATH))
#define HAVE_floathidf2 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_floatsidf2 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_floatdidf2 (TARGET_80387 || (TARGET_64BIT && TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_floatunssisf2 (!TARGET_64BIT && TARGET_SSE_MATH)
#define HAVE_floatunsdisf2 (TARGET_64BIT && TARGET_SSE_MATH)
#define HAVE_floatunsdidf2 (TARGET_64BIT && TARGET_SSE2 && TARGET_SSE_MATH)
#define HAVE_addti3 (TARGET_64BIT)
#define HAVE_adddi3 1
#define HAVE_addsi3 1
#define HAVE_addhi3 (TARGET_HIMODE_MATH)
#define HAVE_addqi3 (TARGET_QIMODE_MATH)
#define HAVE_addxf3 (TARGET_80387)
#define HAVE_adddf3 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_addsf3 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_subti3 (TARGET_64BIT)
#define HAVE_subdi3 1
#define HAVE_subsi3 1
#define HAVE_subhi3 (TARGET_HIMODE_MATH)
#define HAVE_subqi3 (TARGET_QIMODE_MATH)
#define HAVE_subxf3 (TARGET_80387)
#define HAVE_subdf3 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_subsf3 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_muldi3 (TARGET_64BIT)
#define HAVE_mulsi3 1
#define HAVE_mulhi3 (TARGET_HIMODE_MATH)
#define HAVE_mulqi3 (TARGET_QIMODE_MATH)
#define HAVE_umulqihi3 (TARGET_QIMODE_MATH)
#define HAVE_mulqihi3 (TARGET_QIMODE_MATH)
#define HAVE_umulditi3 (TARGET_64BIT)
#define HAVE_umulsidi3 (!TARGET_64BIT)
#define HAVE_mulditi3 (TARGET_64BIT)
#define HAVE_mulsidi3 (!TARGET_64BIT)
#define HAVE_umuldi3_highpart (TARGET_64BIT)
#define HAVE_umulsi3_highpart 1
#define HAVE_smuldi3_highpart (TARGET_64BIT)
#define HAVE_smulsi3_highpart 1
#define HAVE_mulxf3 (TARGET_80387)
#define HAVE_muldf3 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_mulsf3 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_divxf3 (TARGET_80387)
#define HAVE_divdf3 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_divsf3 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_divmoddi4 (TARGET_64BIT)
#define HAVE_divmodsi4 1
#define HAVE_udivmodhi4 (TARGET_HIMODE_MATH)
#define HAVE_testsi_ccno_1 1
#define HAVE_testqi_ccz_1 1
#define HAVE_testqi_ext_ccno_0 1
#define HAVE_anddi3 (TARGET_64BIT)
#define HAVE_andsi3 1
#define HAVE_andhi3 (TARGET_HIMODE_MATH)
#define HAVE_andqi3 (TARGET_QIMODE_MATH)
#define HAVE_iordi3 (TARGET_64BIT)
#define HAVE_iorsi3 1
#define HAVE_iorhi3 (TARGET_HIMODE_MATH)
#define HAVE_iorqi3 (TARGET_QIMODE_MATH)
#define HAVE_xordi3 (TARGET_64BIT)
#define HAVE_xorsi3 1
#define HAVE_xorhi3 (TARGET_HIMODE_MATH)
#define HAVE_xorqi3 (TARGET_QIMODE_MATH)
#define HAVE_xorqi_cc_ext_1 1
#define HAVE_negti2 (TARGET_64BIT)
#define HAVE_negdi2 1
#define HAVE_negsi2 1
#define HAVE_neghi2 (TARGET_HIMODE_MATH)
#define HAVE_negqi2 (TARGET_QIMODE_MATH)
#define HAVE_negsf2 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_abssf2 (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_copysignsf3 (TARGET_SSE_MATH)
#define HAVE_negdf2 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_absdf2 (TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_copysigndf3 (TARGET_SSE2 && TARGET_SSE_MATH)
#define HAVE_negxf2 (TARGET_80387)
#define HAVE_absxf2 (TARGET_80387)
#define HAVE_one_cmpldi2 (TARGET_64BIT)
#define HAVE_one_cmplsi2 1
#define HAVE_one_cmplhi2 (TARGET_HIMODE_MATH)
#define HAVE_one_cmplqi2 (TARGET_QIMODE_MATH)
#define HAVE_ashlti3 (TARGET_64BIT)
#define HAVE_x86_64_shift_adj (TARGET_64BIT)
#define HAVE_ashldi3 1
#define HAVE_x86_shift_adj_1 (TARGET_CMOVE)
#define HAVE_x86_shift_adj_2 1
#define HAVE_ashlsi3 1
#define HAVE_ashlhi3 (TARGET_HIMODE_MATH)
#define HAVE_ashlqi3 (TARGET_QIMODE_MATH)
#define HAVE_ashrti3 (TARGET_64BIT)
#define HAVE_ashrdi3 1
#define HAVE_x86_shift_adj_3 1
#define HAVE_ashrsi3 1
#define HAVE_ashrhi3 (TARGET_HIMODE_MATH)
#define HAVE_ashrqi3 (TARGET_QIMODE_MATH)
#define HAVE_lshrti3 (TARGET_64BIT)
#define HAVE_lshrdi3 1
#define HAVE_lshrsi3 1
#define HAVE_lshrhi3 (TARGET_HIMODE_MATH)
#define HAVE_lshrqi3 (TARGET_QIMODE_MATH)
#define HAVE_rotldi3 1
#define HAVE_rotlsi3 1
#define HAVE_rotlhi3 (TARGET_HIMODE_MATH)
#define HAVE_rotlqi3 (TARGET_QIMODE_MATH)
#define HAVE_rotrdi3 1
#define HAVE_rotrsi3 1
#define HAVE_rotrhi3 (TARGET_HIMODE_MATH)
#define HAVE_rotrqi3 (TARGET_QIMODE_MATH)
#define HAVE_extv 1
#define HAVE_extzv 1
#define HAVE_insv 1
#define HAVE_seq 1
#define HAVE_sne 1
#define HAVE_sgt 1
#define HAVE_sgtu 1
#define HAVE_slt 1
#define HAVE_sltu 1
#define HAVE_sge 1
#define HAVE_sgeu 1
#define HAVE_sle 1
#define HAVE_sleu 1
#define HAVE_sunordered (TARGET_80387 || TARGET_SSE)
#define HAVE_sordered (TARGET_80387)
#define HAVE_suneq (TARGET_80387 || TARGET_SSE)
#define HAVE_sunge (TARGET_80387 || TARGET_SSE)
#define HAVE_sungt (TARGET_80387 || TARGET_SSE)
#define HAVE_sunle (TARGET_80387 || TARGET_SSE)
#define HAVE_sunlt (TARGET_80387 || TARGET_SSE)
#define HAVE_sltgt (TARGET_80387 || TARGET_SSE)
#define HAVE_beq 1
#define HAVE_bne 1
#define HAVE_bgt 1
#define HAVE_bgtu 1
#define HAVE_blt 1
#define HAVE_bltu 1
#define HAVE_bge 1
#define HAVE_bgeu 1
#define HAVE_ble 1
#define HAVE_bleu 1
#define HAVE_bunordered (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_bordered (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_buneq (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_bunge (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_bungt (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_bunle (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_bunlt (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_bltgt (TARGET_80387 || TARGET_SSE_MATH)
#define HAVE_indirect_jump 1
#define HAVE_tablejump 1
#define HAVE_call_pop (!TARGET_64BIT)
#define HAVE_call 1
#define HAVE_sibcall 1
#define HAVE_call_value_pop (!TARGET_64BIT)
#define HAVE_call_value 1
#define HAVE_sibcall_value 1
#define HAVE_untyped_call 1
#define HAVE_return (ix86_can_use_return_insn_p ())
#define HAVE_prologue 1
#define HAVE_epilogue 1
#define HAVE_sibcall_epilogue 1
#define HAVE_eh_return 1
#define HAVE_ffssi2 1
#define HAVE_ffsdi2 (TARGET_64BIT && TARGET_CMOVE)
#define HAVE_clzsi2 1
#define HAVE_clzdi2 (TARGET_64BIT)
#define HAVE_tls_global_dynamic_32 1
#define HAVE_tls_global_dynamic_64 1
#define HAVE_tls_local_dynamic_base_32 1
#define HAVE_tls_local_dynamic_base_64 1
#define HAVE_tls_dynamic_gnu2_32 (!TARGET_64BIT && TARGET_GNU2_TLS)
#define HAVE_tls_dynamic_gnu2_64 (TARGET_64BIT && TARGET_GNU2_TLS)
#define HAVE_sqrtsf2 (TARGET_USE_FANCY_MATH_387 || TARGET_SSE_MATH)
#define HAVE_sqrtdf2 (TARGET_USE_FANCY_MATH_387 || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_fmodsf3 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_fmoddf3 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_fmodxf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_dremsf3 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_dremdf3 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_dremxf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_tandf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_tansf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_tanxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_atan2df3 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_atandf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_atan2sf3 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_atansf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_atan2xf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_atanxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_asindf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_asinsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_asinxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_acosdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_acossf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_acosxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_logsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_logdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_logxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_log10sf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_log10df2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_log10xf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_log2sf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_log2df2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_log2xf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_log1psf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_log1pdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_log1pxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_logbsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_logbdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_logbxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_ilogbsi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_expsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_expdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_expxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_exp10sf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_exp10df2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_exp10xf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_exp2sf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_exp2df2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_exp2xf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_expm1df2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_expm1sf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_expm1xf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_ldexpdf3 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_ldexpsf3 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_ldexpxf3 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_rintdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_rintsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_rintxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_lrinthi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lrintsi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lrintdi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_floorxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_floordf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_floorsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lfloorhi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lfloorsi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lfloordi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_ceilxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_ceildf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_ceilsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lceilhi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lceilsi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_lceildi2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_btruncxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_btruncdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_btruncsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_nearbyintxf2 (TARGET_USE_FANCY_MATH_387 \
   && flag_unsafe_math_optimizations)
#define HAVE_nearbyintdf2 (TARGET_USE_FANCY_MATH_387 \
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_nearbyintsf2 (TARGET_USE_FANCY_MATH_387 \
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387) \
   && flag_unsafe_math_optimizations)
#define HAVE_movmemsi (! optimize_size || TARGET_INLINE_ALL_STRINGOPS)
#define HAVE_movmemdi (TARGET_64BIT)
#define HAVE_strmov 1
#define HAVE_strmov_singleop (TARGET_SINGLE_STRINGOP || optimize_size)
#define HAVE_rep_mov 1
#define HAVE_setmemsi 1
#define HAVE_setmemdi (TARGET_64BIT)
#define HAVE_strset 1
#define HAVE_strset_singleop (TARGET_SINGLE_STRINGOP || optimize_size)
#define HAVE_rep_stos 1
#define HAVE_cmpstrnsi (! optimize_size || TARGET_INLINE_ALL_STRINGOPS)
#define HAVE_cmpintqi 1
#define HAVE_cmpstrnqi_nz_1 1
#define HAVE_cmpstrnqi_1 1
#define HAVE_strlensi 1
#define HAVE_strlendi 1
#define HAVE_strlenqi_1 1
#define HAVE_movdicc (TARGET_64BIT)
#define HAVE_movsicc 1
#define HAVE_movhicc (TARGET_HIMODE_MATH)
#define HAVE_movqicc (TARGET_QIMODE_MATH)
#define HAVE_movsfcc ((TARGET_80387 && TARGET_CMOVE) || TARGET_SSE_MATH)
#define HAVE_movdfcc ((TARGET_80387 && TARGET_CMOVE) || (TARGET_SSE2 && TARGET_SSE_MATH))
#define HAVE_movxfcc (TARGET_80387 && TARGET_CMOVE)
#define HAVE_addqicc 1
#define HAVE_addhicc 1
#define HAVE_addsicc 1
#define HAVE_adddicc (TARGET_64BIT)
#define HAVE_allocate_stack_worker (TARGET_STACK_PROBE)
#define HAVE_allocate_stack_worker_postreload 1
#define HAVE_allocate_stack_worker_rex64_postreload 1
#define HAVE_allocate_stack (TARGET_STACK_PROBE)
#define HAVE_builtin_setjmp_receiver (!TARGET_64BIT && flag_pic)
#define HAVE_sse_prologue_save (TARGET_64BIT)
#define HAVE_prefetch (TARGET_PREFETCH_SSE || TARGET_3DNOW)
#define HAVE_stack_protect_set 1
#define HAVE_stack_protect_test 1
#define HAVE_movv16qi (TARGET_SSE)
#define HAVE_movv8hi (TARGET_SSE)
#define HAVE_movv4si (TARGET_SSE)
#define HAVE_movv2di (TARGET_SSE)
#define HAVE_movv4sf (TARGET_SSE)
#define HAVE_movv2df (TARGET_SSE)
#define HAVE_pushv16qi1 (TARGET_SSE)
#define HAVE_pushv8hi1 (TARGET_SSE)
#define HAVE_pushv4si1 (TARGET_SSE)
#define HAVE_pushv2di1 (TARGET_SSE)
#define HAVE_pushv4sf1 (TARGET_SSE)
#define HAVE_pushv2df1 (TARGET_SSE)
#define HAVE_movmisalignv16qi (TARGET_SSE)
#define HAVE_movmisalignv8hi (TARGET_SSE)
#define HAVE_movmisalignv4si (TARGET_SSE)
#define HAVE_movmisalignv2di (TARGET_SSE)
#define HAVE_movmisalignv4sf (TARGET_SSE)
#define HAVE_movmisalignv2df (TARGET_SSE)
#define HAVE_negv4sf2 (TARGET_SSE)
#define HAVE_absv4sf2 (TARGET_SSE)
#define HAVE_addv4sf3 (TARGET_SSE)
#define HAVE_subv4sf3 (TARGET_SSE)
#define HAVE_mulv4sf3 (TARGET_SSE)
#define HAVE_divv4sf3 (TARGET_SSE)
#define HAVE_smaxv4sf3 (TARGET_SSE)
#define HAVE_sminv4sf3 (TARGET_SSE)
#define HAVE_reduc_splus_v4sf (TARGET_SSE)
#define HAVE_reduc_smax_v4sf (TARGET_SSE)
#define HAVE_reduc_smin_v4sf (TARGET_SSE)
#define HAVE_vcondv4sf (TARGET_SSE)
#define HAVE_andv4sf3 (TARGET_SSE)
#define HAVE_iorv4sf3 (TARGET_SSE)
#define HAVE_xorv4sf3 (TARGET_SSE)
#define HAVE_sse_shufps (TARGET_SSE)
#define HAVE_vec_initv4sf (TARGET_SSE)
#define HAVE_vec_setv4sf (TARGET_SSE)
#define HAVE_vec_extractv4sf (TARGET_SSE)
#define HAVE_negv2df2 (TARGET_SSE2)
#define HAVE_absv2df2 (TARGET_SSE2)
#define HAVE_addv2df3 (TARGET_SSE2)
#define HAVE_subv2df3 (TARGET_SSE2)
#define HAVE_mulv2df3 (TARGET_SSE2)
#define HAVE_divv2df3 (TARGET_SSE2)
#define HAVE_smaxv2df3 (TARGET_SSE2)
#define HAVE_sminv2df3 (TARGET_SSE2)
#define HAVE_reduc_splus_v2df (TARGET_SSE3)
#define HAVE_vcondv2df (TARGET_SSE2)
#define HAVE_andv2df3 (TARGET_SSE2)
#define HAVE_iorv2df3 (TARGET_SSE2)
#define HAVE_xorv2df3 (TARGET_SSE2)
#define HAVE_sse2_cvtpd2dq (TARGET_SSE2)
#define HAVE_sse2_cvttpd2dq (TARGET_SSE2)
#define HAVE_sse2_cvtpd2ps (TARGET_SSE2)
#define HAVE_sse2_shufpd (TARGET_SSE2)
#define HAVE_vec_setv2df (TARGET_SSE)
#define HAVE_vec_extractv2df (TARGET_SSE)
#define HAVE_vec_initv2df (TARGET_SSE)
#define HAVE_negv16qi2 (TARGET_SSE2)
#define HAVE_negv8hi2 (TARGET_SSE2)
#define HAVE_negv4si2 (TARGET_SSE2)
#define HAVE_negv2di2 (TARGET_SSE2)
#define HAVE_addv16qi3 (TARGET_SSE2)
#define HAVE_addv8hi3 (TARGET_SSE2)
#define HAVE_addv4si3 (TARGET_SSE2)
#define HAVE_addv2di3 (TARGET_SSE2)
#define HAVE_subv16qi3 (TARGET_SSE2)
#define HAVE_subv8hi3 (TARGET_SSE2)
#define HAVE_subv4si3 (TARGET_SSE2)
#define HAVE_subv2di3 (TARGET_SSE2)
#define HAVE_mulv16qi3 (TARGET_SSE2)
#define HAVE_mulv8hi3 (TARGET_SSE2)
#define HAVE_mulv4si3 (TARGET_SSE2)
#define HAVE_mulv2di3 (TARGET_SSE2)
#define HAVE_sdot_prodv8hi (TARGET_SSE2)
#define HAVE_udot_prodv4si (TARGET_SSE2)
#define HAVE_vec_shl_v16qi (TARGET_SSE2)
#define HAVE_vec_shl_v8hi (TARGET_SSE2)
#define HAVE_vec_shl_v4si (TARGET_SSE2)
#define HAVE_vec_shl_v2di (TARGET_SSE2)
#define HAVE_vec_shr_v16qi (TARGET_SSE2)
#define HAVE_vec_shr_v8hi (TARGET_SSE2)
#define HAVE_vec_shr_v4si (TARGET_SSE2)
#define HAVE_vec_shr_v2di (TARGET_SSE2)
#define HAVE_umaxv16qi3 (TARGET_SSE2)
#define HAVE_smaxv8hi3 (TARGET_SSE2)
#define HAVE_umaxv8hi3 (TARGET_SSE2)
#define HAVE_smaxv16qi3 (TARGET_SSE2)
#define HAVE_smaxv4si3 (TARGET_SSE2)
#define HAVE_umaxv4si3 (TARGET_SSE2)
#define HAVE_uminv16qi3 (TARGET_SSE2)
#define HAVE_sminv8hi3 (TARGET_SSE2)
#define HAVE_sminv16qi3 (TARGET_SSE2)
#define HAVE_sminv4si3 (TARGET_SSE2)
#define HAVE_uminv8hi3 (TARGET_SSE2)
#define HAVE_uminv4si3 (TARGET_SSE2)
#define HAVE_vcondv16qi (TARGET_SSE2)
#define HAVE_vcondv8hi (TARGET_SSE2)
#define HAVE_vcondv4si (TARGET_SSE2)
#define HAVE_vconduv16qi (TARGET_SSE2)
#define HAVE_vconduv8hi (TARGET_SSE2)
#define HAVE_vconduv4si (TARGET_SSE2)
#define HAVE_one_cmplv16qi2 (TARGET_SSE2)
#define HAVE_one_cmplv8hi2 (TARGET_SSE2)
#define HAVE_one_cmplv4si2 (TARGET_SSE2)
#define HAVE_one_cmplv2di2 (TARGET_SSE2)
#define HAVE_andv16qi3 (TARGET_SSE2)
#define HAVE_andv8hi3 (TARGET_SSE2)
#define HAVE_andv4si3 (TARGET_SSE2)
#define HAVE_andv2di3 (TARGET_SSE2)
#define HAVE_iorv16qi3 (TARGET_SSE2)
#define HAVE_iorv8hi3 (TARGET_SSE2)
#define HAVE_iorv4si3 (TARGET_SSE2)
#define HAVE_iorv2di3 (TARGET_SSE2)
#define HAVE_xorv16qi3 (TARGET_SSE2)
#define HAVE_xorv8hi3 (TARGET_SSE2)
#define HAVE_xorv4si3 (TARGET_SSE2)
#define HAVE_xorv2di3 (TARGET_SSE2)
#define HAVE_sse2_pinsrw (TARGET_SSE2)
#define HAVE_sse2_pshufd (TARGET_SSE2)
#define HAVE_sse2_pshuflw (TARGET_SSE2)
#define HAVE_sse2_pshufhw (TARGET_SSE2)
#define HAVE_sse2_loadd (TARGET_SSE)
#define HAVE_sse_storeq (TARGET_SSE)
#define HAVE_vec_setv2di (TARGET_SSE)
#define HAVE_vec_extractv2di (TARGET_SSE)
#define HAVE_vec_initv2di (TARGET_SSE)
#define HAVE_vec_setv4si (TARGET_SSE)
#define HAVE_vec_extractv4si (TARGET_SSE)
#define HAVE_vec_initv4si (TARGET_SSE)
#define HAVE_vec_setv8hi (TARGET_SSE)
#define HAVE_vec_extractv8hi (TARGET_SSE)
#define HAVE_vec_initv8hi (TARGET_SSE)
#define HAVE_vec_setv16qi (TARGET_SSE)
#define HAVE_vec_extractv16qi (TARGET_SSE)
#define HAVE_vec_initv16qi (TARGET_SSE)
#define HAVE_sse2_maskmovdqu (TARGET_SSE2)
#define HAVE_sse_sfence (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_sse2_mfence (TARGET_SSE2)
#define HAVE_sse2_lfence (TARGET_SSE2)
#define HAVE_movv8qi (TARGET_MMX)
#define HAVE_movv4hi (TARGET_MMX)
#define HAVE_movv2si (TARGET_MMX)
#define HAVE_movv2sf (TARGET_MMX)
#define HAVE_pushv8qi1 (TARGET_MMX)
#define HAVE_pushv4hi1 (TARGET_MMX)
#define HAVE_pushv2si1 (TARGET_MMX)
#define HAVE_pushv2sf1 (TARGET_MMX)
#define HAVE_movmisalignv8qi (TARGET_MMX)
#define HAVE_movmisalignv4hi (TARGET_MMX)
#define HAVE_movmisalignv2si (TARGET_MMX)
#define HAVE_movmisalignv2sf (TARGET_MMX)
#define HAVE_mmx_subrv2sf3 (TARGET_3DNOW && !(MEM_P (operands[0]) && MEM_P (operands[1])))
#define HAVE_vec_setv2sf (TARGET_MMX)
#define HAVE_vec_extractv2sf (TARGET_MMX)
#define HAVE_vec_initv2sf (TARGET_SSE)
#define HAVE_mmx_pinsrw (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_mmx_pshufw (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_vec_setv2si (TARGET_MMX)
#define HAVE_vec_extractv2si (TARGET_MMX)
#define HAVE_vec_initv2si (TARGET_SSE)
#define HAVE_vec_setv4hi (TARGET_MMX)
#define HAVE_vec_extractv4hi (TARGET_MMX)
#define HAVE_vec_initv4hi (TARGET_SSE)
#define HAVE_vec_setv8qi (TARGET_MMX)
#define HAVE_vec_extractv8qi (TARGET_MMX)
#define HAVE_vec_initv8qi (TARGET_SSE)
#define HAVE_mmx_maskmovq (TARGET_SSE || TARGET_3DNOW_A)
#define HAVE_sync_compare_and_swapqi (TARGET_CMPXCHG)
#define HAVE_sync_compare_and_swaphi (TARGET_CMPXCHG)
#define HAVE_sync_compare_and_swapsi (TARGET_CMPXCHG)
#define HAVE_sync_compare_and_swapdi ((TARGET_CMPXCHG) && (TARGET_64BIT || TARGET_CMPXCHG8B))
#define HAVE_sync_compare_and_swapti ((TARGET_CMPXCHG) && (TARGET_64BIT && TARGET_CMPXCHG16B))
#define HAVE_sync_compare_and_swap_ccqi (TARGET_CMPXCHG)
#define HAVE_sync_compare_and_swap_cchi (TARGET_CMPXCHG)
#define HAVE_sync_compare_and_swap_ccsi (TARGET_CMPXCHG)
#define HAVE_sync_compare_and_swap_ccdi ((TARGET_CMPXCHG) && (TARGET_64BIT || TARGET_CMPXCHG8B))
#define HAVE_sync_compare_and_swap_ccti ((TARGET_CMPXCHG) && (TARGET_64BIT && TARGET_CMPXCHG16B))
extern rtx        gen_cmpdi_ccno_1_rex64                     (rtx, rtx);
extern rtx        gen_cmpdi_1_insn_rex64                     (rtx, rtx);
extern rtx        gen_cmpqi_ext_3_insn                       (rtx, rtx);
extern rtx        gen_cmpqi_ext_3_insn_rex64                 (rtx, rtx);
extern rtx        gen_x86_fnstsw_1                           (rtx);
extern rtx        gen_x86_sahf_1                             (rtx);
extern rtx        gen_popsi1                                 (rtx);
extern rtx        gen_movsi_insv_1                           (rtx, rtx);
extern rtx        gen_movdi_insv_1_rex64                     (rtx, rtx);
extern rtx        gen_popdi1                                 (rtx);
extern rtx        gen_swapxf                                 (rtx, rtx);
extern rtx        gen_zero_extendhisi2_and                   (rtx, rtx);
extern rtx        gen_zero_extendsidi2_32                    (rtx, rtx);
extern rtx        gen_zero_extendsidi2_rex64                 (rtx, rtx);
extern rtx        gen_zero_extendhidi2                       (rtx, rtx);
extern rtx        gen_zero_extendqidi2                       (rtx, rtx);
extern rtx        gen_extendsidi2_rex64                      (rtx, rtx);
extern rtx        gen_extendhidi2                            (rtx, rtx);
extern rtx        gen_extendqidi2                            (rtx, rtx);
extern rtx        gen_extendhisi2                            (rtx, rtx);
extern rtx        gen_extendqihi2                            (rtx, rtx);
extern rtx        gen_extendqisi2                            (rtx, rtx);
extern rtx        gen_truncxfsf2_i387_noop                   (rtx, rtx);
extern rtx        gen_truncxfdf2_i387_noop                   (rtx, rtx);
extern rtx        gen_fix_truncsfdi_sse                      (rtx, rtx);
extern rtx        gen_fix_truncdfdi_sse                      (rtx, rtx);
extern rtx        gen_fix_truncsfsi_sse                      (rtx, rtx);
extern rtx        gen_fix_truncdfsi_sse                      (rtx, rtx);
extern rtx        gen_fix_trunchi_fisttp_i387_1              (rtx, rtx);
extern rtx        gen_fix_truncsi_fisttp_i387_1              (rtx, rtx);
extern rtx        gen_fix_truncdi_fisttp_i387_1              (rtx, rtx);
extern rtx        gen_fix_trunchi_i387_fisttp                (rtx, rtx);
extern rtx        gen_fix_truncsi_i387_fisttp                (rtx, rtx);
extern rtx        gen_fix_truncdi_i387_fisttp                (rtx, rtx);
extern rtx        gen_fix_trunchi_i387_fisttp_with_temp      (rtx, rtx, rtx);
extern rtx        gen_fix_truncsi_i387_fisttp_with_temp      (rtx, rtx, rtx);
extern rtx        gen_fix_truncdi_i387_fisttp_with_temp      (rtx, rtx, rtx);
extern rtx        gen_fix_truncdi_i387                       (rtx, rtx, rtx, rtx);
extern rtx        gen_fix_truncdi_i387_with_temp             (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_fix_trunchi_i387                       (rtx, rtx, rtx, rtx);
extern rtx        gen_fix_truncsi_i387                       (rtx, rtx, rtx, rtx);
extern rtx        gen_fix_trunchi_i387_with_temp             (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_fix_truncsi_i387_with_temp             (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_x86_fnstcw_1                           (rtx);
extern rtx        gen_x86_fldcw_1                            (rtx);
extern rtx        gen_floathixf2                             (rtx, rtx);
extern rtx        gen_floatsixf2                             (rtx, rtx);
extern rtx        gen_floatdixf2                             (rtx, rtx);
extern rtx        gen_adddi3_carry_rex64                     (rtx, rtx, rtx, rtx);
extern rtx        gen_addqi3_carry                           (rtx, rtx, rtx, rtx);
extern rtx        gen_addhi3_carry                           (rtx, rtx, rtx, rtx);
extern rtx        gen_addsi3_carry                           (rtx, rtx, rtx, rtx);
extern rtx        gen_addqi3_cc                              (rtx, rtx, rtx);
extern rtx        gen_addsi_1_zext                           (rtx, rtx, rtx);
extern rtx        gen_addqi_ext_1                            (rtx, rtx, rtx);
extern rtx        gen_subdi3_carry_rex64                     (rtx, rtx, rtx, rtx);
extern rtx        gen_subqi3_carry                           (rtx, rtx, rtx, rtx);
extern rtx        gen_subhi3_carry                           (rtx, rtx, rtx, rtx);
extern rtx        gen_subsi3_carry                           (rtx, rtx, rtx, rtx);
extern rtx        gen_subsi3_carry_zext                      (rtx, rtx, rtx, rtx);
extern rtx        gen_divqi3                                 (rtx, rtx, rtx);
extern rtx        gen_udivqi3                                (rtx, rtx, rtx);
extern rtx        gen_divmodhi4                              (rtx, rtx, rtx, rtx);
extern rtx        gen_udivmoddi4                             (rtx, rtx, rtx, rtx);
extern rtx        gen_udivmodsi4                             (rtx, rtx, rtx, rtx);
extern rtx        gen_testsi_1                               (rtx, rtx);
extern rtx        gen_andqi_ext_0                            (rtx, rtx, rtx);
extern rtx        gen_iorqi_ext_0                            (rtx, rtx, rtx);
extern rtx        gen_xorqi_ext_0                            (rtx, rtx, rtx);
extern rtx        gen_copysignsf3_const                      (rtx, rtx, rtx, rtx);
extern rtx        gen_copysignsf3_var                        (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_copysigndf3_const                      (rtx, rtx, rtx, rtx);
extern rtx        gen_copysigndf3_var                        (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_ashlti3_1                              (rtx, rtx, rtx);
extern rtx        gen_x86_64_shld                            (rtx, rtx, rtx);
extern rtx        gen_x86_shld_1                             (rtx, rtx, rtx);
extern rtx        gen_ashrti3_1                              (rtx, rtx, rtx);
extern rtx        gen_x86_64_shrd                            (rtx, rtx, rtx);
extern rtx        gen_x86_shrd_1                             (rtx, rtx, rtx);
extern rtx        gen_ashrsi3_31                             (rtx, rtx, rtx);
extern rtx        gen_lshrti3_1                              (rtx, rtx, rtx);
extern rtx        gen_ix86_rotldi3                           (rtx, rtx, rtx);
extern rtx        gen_ix86_rotrdi3                           (rtx, rtx, rtx);
extern rtx        gen_jump                                   (rtx);
extern rtx        gen_blockage                               (rtx);
extern rtx        gen_return_internal                        (void);
extern rtx        gen_return_internal_long                   (void);
extern rtx        gen_return_pop_internal                    (rtx);
extern rtx        gen_return_indirect_internal               (rtx);
extern rtx        gen_nop                                    (void);
extern rtx        gen_align                                  (rtx);
extern rtx        gen_set_got                                (rtx);
extern rtx        gen_set_got_labelled                       (rtx, rtx);
extern rtx        gen_set_got_rex64                          (rtx);
extern rtx        gen_eh_return_si                           (rtx);
extern rtx        gen_eh_return_di                           (rtx);
extern rtx        gen_leave                                  (void);
extern rtx        gen_leave_rex64                            (void);
extern rtx        gen_ctzsi2                                 (rtx, rtx);
extern rtx        gen_ctzdi2                                 (rtx, rtx);
extern rtx        gen_sqrtxf2                                (rtx, rtx);
extern rtx        gen_fpremxf4                               (rtx, rtx, rtx, rtx);
extern rtx        gen_fprem1xf4                              (rtx, rtx, rtx, rtx);
extern rtx        gen_sincosdf3                              (rtx, rtx, rtx);
extern rtx        gen_sincossf3                              (rtx, rtx, rtx);
extern rtx        gen_sincosxf3                              (rtx, rtx, rtx);
extern rtx        gen_atan2df3_1                             (rtx, rtx, rtx);
extern rtx        gen_atan2sf3_1                             (rtx, rtx, rtx);
extern rtx        gen_atan2xf3_1                             (rtx, rtx, rtx);
extern rtx        gen_fyl2x_xf3                              (rtx, rtx, rtx);
extern rtx        gen_fyl2xp1_xf3                            (rtx, rtx, rtx);
extern rtx        gen_frndintxf2                             (rtx, rtx);
extern rtx        gen_fistdi2                                (rtx, rtx);
extern rtx        gen_fistdi2_with_temp                      (rtx, rtx, rtx);
extern rtx        gen_fisthi2                                (rtx, rtx);
extern rtx        gen_fistsi2                                (rtx, rtx);
extern rtx        gen_fisthi2_with_temp                      (rtx, rtx, rtx);
extern rtx        gen_fistsi2_with_temp                      (rtx, rtx, rtx);
extern rtx        gen_frndintxf2_floor                       (rtx, rtx);
extern rtx        gen_frndintxf2_floor_i387                  (rtx, rtx, rtx, rtx);
extern rtx        gen_fistdi2_floor                          (rtx, rtx, rtx, rtx);
extern rtx        gen_fistdi2_floor_with_temp                (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_fisthi2_floor                          (rtx, rtx, rtx, rtx);
extern rtx        gen_fistsi2_floor                          (rtx, rtx, rtx, rtx);
extern rtx        gen_fisthi2_floor_with_temp                (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_fistsi2_floor_with_temp                (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_frndintxf2_ceil                        (rtx, rtx);
extern rtx        gen_frndintxf2_ceil_i387                   (rtx, rtx, rtx, rtx);
extern rtx        gen_fistdi2_ceil                           (rtx, rtx, rtx, rtx);
extern rtx        gen_fistdi2_ceil_with_temp                 (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_fisthi2_ceil                           (rtx, rtx, rtx, rtx);
extern rtx        gen_fistsi2_ceil                           (rtx, rtx, rtx, rtx);
extern rtx        gen_fisthi2_ceil_with_temp                 (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_fistsi2_ceil_with_temp                 (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_frndintxf2_trunc                       (rtx, rtx);
extern rtx        gen_frndintxf2_trunc_i387                  (rtx, rtx, rtx, rtx);
extern rtx        gen_frndintxf2_mask_pm                     (rtx, rtx);
extern rtx        gen_frndintxf2_mask_pm_i387                (rtx, rtx, rtx, rtx);
extern rtx        gen_cld                                    (void);
extern rtx        gen_x86_movdicc_0_m1_rex64                 (rtx, rtx);
extern rtx        gen_x86_movsicc_0_m1                       (rtx, rtx);
extern rtx        gen_sminsf3                                (rtx, rtx, rtx);
extern rtx        gen_smaxsf3                                (rtx, rtx, rtx);
extern rtx        gen_smindf3                                (rtx, rtx, rtx);
extern rtx        gen_smaxdf3                                (rtx, rtx, rtx);
extern rtx        gen_pro_epilogue_adjust_stack_1            (rtx, rtx, rtx);
extern rtx        gen_pro_epilogue_adjust_stack_rex64        (rtx, rtx, rtx);
extern rtx        gen_pro_epilogue_adjust_stack_rex64_2      (rtx, rtx, rtx, rtx);
extern rtx        gen_allocate_stack_worker_1                (rtx);
extern rtx        gen_allocate_stack_worker_rex64            (rtx);
extern rtx        gen_trap                                   (void);
extern rtx        gen_stack_protect_set_si                   (rtx, rtx);
extern rtx        gen_stack_protect_set_di                   (rtx, rtx);
extern rtx        gen_stack_tls_protect_set_si               (rtx, rtx);
extern rtx        gen_stack_tls_protect_set_di               (rtx, rtx);
extern rtx        gen_stack_protect_test_si                  (rtx, rtx, rtx);
extern rtx        gen_stack_protect_test_di                  (rtx, rtx, rtx);
extern rtx        gen_stack_tls_protect_test_si              (rtx, rtx, rtx);
extern rtx        gen_stack_tls_protect_test_di              (rtx, rtx, rtx);
extern rtx        gen_sse_movups                             (rtx, rtx);
extern rtx        gen_sse2_movupd                            (rtx, rtx);
extern rtx        gen_sse2_movdqu                            (rtx, rtx);
extern rtx        gen_sse_movntv4sf                          (rtx, rtx);
extern rtx        gen_sse2_movntv2df                         (rtx, rtx);
extern rtx        gen_sse2_movntv2di                         (rtx, rtx);
extern rtx        gen_sse2_movntsi                           (rtx, rtx);
extern rtx        gen_sse3_lddqu                             (rtx, rtx);
extern rtx        gen_sse_vmaddv4sf3                         (rtx, rtx, rtx);
extern rtx        gen_sse_vmsubv4sf3                         (rtx, rtx, rtx);
extern rtx        gen_sse_vmmulv4sf3                         (rtx, rtx, rtx);
extern rtx        gen_sse_vmdivv4sf3                         (rtx, rtx, rtx);
extern rtx        gen_sse_rcpv4sf2                           (rtx, rtx);
extern rtx        gen_sse_vmrcpv4sf2                         (rtx, rtx, rtx);
extern rtx        gen_sse_rsqrtv4sf2                         (rtx, rtx);
extern rtx        gen_sse_vmrsqrtv4sf2                       (rtx, rtx, rtx);
extern rtx        gen_sqrtv4sf2                              (rtx, rtx);
extern rtx        gen_sse_vmsqrtv4sf2                        (rtx, rtx, rtx);
extern rtx        gen_sse_vmsmaxv4sf3                        (rtx, rtx, rtx);
extern rtx        gen_sse_vmsminv4sf3                        (rtx, rtx, rtx);
extern rtx        gen_sse3_addsubv4sf3                       (rtx, rtx, rtx);
extern rtx        gen_sse3_haddv4sf3                         (rtx, rtx, rtx);
extern rtx        gen_sse3_hsubv4sf3                         (rtx, rtx, rtx);
extern rtx        gen_sse_maskcmpv4sf3                       (rtx, rtx, rtx, rtx);
extern rtx        gen_sse_vmmaskcmpv4sf3                     (rtx, rtx, rtx, rtx);
extern rtx        gen_sse_comi                               (rtx, rtx);
extern rtx        gen_sse_ucomi                              (rtx, rtx);
extern rtx        gen_sse_nandv4sf3                          (rtx, rtx, rtx);
extern rtx        gen_sse_cvtpi2ps                           (rtx, rtx, rtx);
extern rtx        gen_sse_cvtps2pi                           (rtx, rtx);
extern rtx        gen_sse_cvttps2pi                          (rtx, rtx);
extern rtx        gen_sse_cvtsi2ss                           (rtx, rtx, rtx);
extern rtx        gen_sse_cvtsi2ssq                          (rtx, rtx, rtx);
extern rtx        gen_sse_cvtss2si                           (rtx, rtx);
extern rtx        gen_sse_cvtss2siq                          (rtx, rtx);
extern rtx        gen_sse_cvttss2si                          (rtx, rtx);
extern rtx        gen_sse_cvttss2siq                         (rtx, rtx);
extern rtx        gen_sse2_cvtdq2ps                          (rtx, rtx);
extern rtx        gen_sse2_cvtps2dq                          (rtx, rtx);
extern rtx        gen_sse2_cvttps2dq                         (rtx, rtx);
extern rtx        gen_sse_movhlps                            (rtx, rtx, rtx);
extern rtx        gen_sse_movlhps                            (rtx, rtx, rtx);
extern rtx        gen_sse_unpckhps                           (rtx, rtx, rtx);
extern rtx        gen_sse_unpcklps                           (rtx, rtx, rtx);
extern rtx        gen_sse3_movshdup                          (rtx, rtx);
extern rtx        gen_sse3_movsldup                          (rtx, rtx);
extern rtx        gen_sse_shufps_1                           (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sse_storehps                           (rtx, rtx);
extern rtx        gen_sse_loadhps                            (rtx, rtx, rtx);
extern rtx        gen_sse_storelps                           (rtx, rtx);
extern rtx        gen_sse_loadlps                            (rtx, rtx, rtx);
extern rtx        gen_sse_movss                              (rtx, rtx, rtx);
extern rtx        gen_sse2_vmaddv2df3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_vmsubv2df3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_vmmulv2df3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_vmdivv2df3                        (rtx, rtx, rtx);
extern rtx        gen_sqrtv2df2                              (rtx, rtx);
extern rtx        gen_sse2_vmsqrtv2df2                       (rtx, rtx, rtx);
extern rtx        gen_sse2_vmsmaxv2df3                       (rtx, rtx, rtx);
extern rtx        gen_sse2_vmsminv2df3                       (rtx, rtx, rtx);
extern rtx        gen_sse3_addsubv2df3                       (rtx, rtx, rtx);
extern rtx        gen_sse3_haddv2df3                         (rtx, rtx, rtx);
extern rtx        gen_sse3_hsubv2df3                         (rtx, rtx, rtx);
extern rtx        gen_sse2_maskcmpv2df3                      (rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_vmmaskcmpv2df3                    (rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_comi                              (rtx, rtx);
extern rtx        gen_sse2_ucomi                             (rtx, rtx);
extern rtx        gen_sse2_nandv2df3                         (rtx, rtx, rtx);
extern rtx        gen_sse2_cvtpi2pd                          (rtx, rtx);
extern rtx        gen_sse2_cvtpd2pi                          (rtx, rtx);
extern rtx        gen_sse2_cvttpd2pi                         (rtx, rtx);
extern rtx        gen_sse2_cvtsi2sd                          (rtx, rtx, rtx);
extern rtx        gen_sse2_cvtsi2sdq                         (rtx, rtx, rtx);
extern rtx        gen_sse2_cvtsd2si                          (rtx, rtx);
extern rtx        gen_sse2_cvtsd2siq                         (rtx, rtx);
extern rtx        gen_sse2_cvttsd2si                         (rtx, rtx);
extern rtx        gen_sse2_cvttsd2siq                        (rtx, rtx);
extern rtx        gen_sse2_cvtdq2pd                          (rtx, rtx);
extern rtx        gen_sse2_cvtsd2ss                          (rtx, rtx, rtx);
extern rtx        gen_sse2_cvtss2sd                          (rtx, rtx, rtx);
extern rtx        gen_sse2_cvtps2pd                          (rtx, rtx);
extern rtx        gen_sse2_unpckhpd                          (rtx, rtx, rtx);
extern rtx        gen_sse2_unpcklpd                          (rtx, rtx, rtx);
extern rtx        gen_sse2_shufpd_1                          (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_storehpd                          (rtx, rtx);
extern rtx        gen_sse2_storelpd                          (rtx, rtx);
extern rtx        gen_sse2_loadhpd                           (rtx, rtx, rtx);
extern rtx        gen_sse2_loadlpd                           (rtx, rtx, rtx);
extern rtx        gen_sse2_movsd                             (rtx, rtx, rtx);
extern rtx        gen_sse2_ssaddv16qi3                       (rtx, rtx, rtx);
extern rtx        gen_sse2_ssaddv8hi3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_usaddv16qi3                       (rtx, rtx, rtx);
extern rtx        gen_sse2_usaddv8hi3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_sssubv16qi3                       (rtx, rtx, rtx);
extern rtx        gen_sse2_sssubv8hi3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_ussubv16qi3                       (rtx, rtx, rtx);
extern rtx        gen_sse2_ussubv8hi3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_smulv8hi3_highpart                (rtx, rtx, rtx);
extern rtx        gen_sse2_umulv8hi3_highpart                (rtx, rtx, rtx);
extern rtx        gen_sse2_umulv2siv2di3                     (rtx, rtx, rtx);
extern rtx        gen_sse2_pmaddwd                           (rtx, rtx, rtx);
extern rtx        gen_ashrv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_ashrv4si3                              (rtx, rtx, rtx);
extern rtx        gen_lshrv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_lshrv4si3                              (rtx, rtx, rtx);
extern rtx        gen_lshrv2di3                              (rtx, rtx, rtx);
extern rtx        gen_ashlv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_ashlv4si3                              (rtx, rtx, rtx);
extern rtx        gen_ashlv2di3                              (rtx, rtx, rtx);
extern rtx        gen_sse2_ashlti3                           (rtx, rtx, rtx);
extern rtx        gen_sse2_lshrti3                           (rtx, rtx, rtx);
extern rtx        gen_sse2_eqv16qi3                          (rtx, rtx, rtx);
extern rtx        gen_sse2_eqv8hi3                           (rtx, rtx, rtx);
extern rtx        gen_sse2_eqv4si3                           (rtx, rtx, rtx);
extern rtx        gen_sse2_gtv16qi3                          (rtx, rtx, rtx);
extern rtx        gen_sse2_gtv8hi3                           (rtx, rtx, rtx);
extern rtx        gen_sse2_gtv4si3                           (rtx, rtx, rtx);
extern rtx        gen_sse2_nandv16qi3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_nandv8hi3                         (rtx, rtx, rtx);
extern rtx        gen_sse2_nandv4si3                         (rtx, rtx, rtx);
extern rtx        gen_sse2_nandv2di3                         (rtx, rtx, rtx);
extern rtx        gen_sse2_packsswb                          (rtx, rtx, rtx);
extern rtx        gen_sse2_packssdw                          (rtx, rtx, rtx);
extern rtx        gen_sse2_packuswb                          (rtx, rtx, rtx);
extern rtx        gen_sse2_punpckhbw                         (rtx, rtx, rtx);
extern rtx        gen_sse2_punpcklbw                         (rtx, rtx, rtx);
extern rtx        gen_sse2_punpckhwd                         (rtx, rtx, rtx);
extern rtx        gen_sse2_punpcklwd                         (rtx, rtx, rtx);
extern rtx        gen_sse2_punpckhdq                         (rtx, rtx, rtx);
extern rtx        gen_sse2_punpckldq                         (rtx, rtx, rtx);
extern rtx        gen_sse2_punpckhqdq                        (rtx, rtx, rtx);
extern rtx        gen_sse2_punpcklqdq                        (rtx, rtx, rtx);
extern rtx        gen_sse2_pextrw                            (rtx, rtx, rtx);
extern rtx        gen_sse2_pshufd_1                          (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_pshuflw_1                         (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_pshufhw_1                         (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_loadld                            (rtx, rtx, rtx);
extern rtx        gen_sse2_stored                            (rtx, rtx);
extern rtx        gen_sse2_uavgv16qi3                        (rtx, rtx, rtx);
extern rtx        gen_sse2_uavgv8hi3                         (rtx, rtx, rtx);
extern rtx        gen_sse2_psadbw                            (rtx, rtx, rtx);
extern rtx        gen_sse_movmskps                           (rtx, rtx);
extern rtx        gen_sse2_movmskpd                          (rtx, rtx);
extern rtx        gen_sse2_pmovmskb                          (rtx, rtx);
extern rtx        gen_sse_ldmxcsr                            (rtx);
extern rtx        gen_sse_stmxcsr                            (rtx);
extern rtx        gen_sse2_clflush                           (rtx);
extern rtx        gen_sse3_mwait                             (rtx, rtx);
extern rtx        gen_sse3_monitor                           (rtx, rtx, rtx);
extern rtx        gen_sse3_monitor64                         (rtx, rtx, rtx);
extern rtx        gen_sse4a_vmmovntv2df                      (rtx, rtx);
extern rtx        gen_sse4a_movntdf                          (rtx, rtx);
extern rtx        gen_sse4a_vmmovntv4sf                      (rtx, rtx);
extern rtx        gen_sse4a_movntsf                          (rtx, rtx);
extern rtx        gen_sse4a_extrqi                           (rtx, rtx, rtx, rtx);
extern rtx        gen_sse4a_extrq                            (rtx, rtx, rtx);
extern rtx        gen_sse4a_insertqi                         (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sse4a_insertq                          (rtx, rtx, rtx);
extern rtx        gen_sse_movntdi                            (rtx, rtx);
extern rtx        gen_mmx_addv2sf3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_subv2sf3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_mulv2sf3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_smaxv2sf3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_sminv2sf3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_rcpv2sf2                           (rtx, rtx);
extern rtx        gen_mmx_rcpit1v2sf3                        (rtx, rtx, rtx);
extern rtx        gen_mmx_rcpit2v2sf3                        (rtx, rtx, rtx);
extern rtx        gen_mmx_rsqrtv2sf2                         (rtx, rtx);
extern rtx        gen_mmx_rsqit1v2sf3                        (rtx, rtx, rtx);
extern rtx        gen_mmx_haddv2sf3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_hsubv2sf3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_addsubv2sf3                        (rtx, rtx, rtx);
extern rtx        gen_mmx_gtv2sf3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_gev2sf3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_eqv2sf3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_pf2id                              (rtx, rtx);
extern rtx        gen_mmx_pf2iw                              (rtx, rtx);
extern rtx        gen_mmx_pi2fw                              (rtx, rtx);
extern rtx        gen_mmx_floatv2si2                         (rtx, rtx);
extern rtx        gen_mmx_pswapdv2sf2                        (rtx, rtx);
extern rtx        gen_mmx_addv8qi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_addv4hi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_addv2si3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_adddi3                             (rtx, rtx, rtx);
extern rtx        gen_mmx_ssaddv8qi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_ssaddv4hi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_usaddv8qi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_usaddv4hi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_subv8qi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_subv4hi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_subv2si3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_subdi3                             (rtx, rtx, rtx);
extern rtx        gen_mmx_sssubv8qi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_sssubv4hi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_ussubv8qi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_ussubv4hi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_mulv4hi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_smulv4hi3_highpart                 (rtx, rtx, rtx);
extern rtx        gen_mmx_umulv4hi3_highpart                 (rtx, rtx, rtx);
extern rtx        gen_mmx_pmaddwd                            (rtx, rtx, rtx);
extern rtx        gen_mmx_pmulhrwv4hi3                       (rtx, rtx, rtx);
extern rtx        gen_sse2_umulsidi3                         (rtx, rtx, rtx);
extern rtx        gen_mmx_umaxv8qi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_smaxv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_uminv8qi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_sminv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_ashrv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_ashrv2si3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_lshrv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_lshrv2si3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_lshrdi3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_ashlv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_ashlv2si3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_ashldi3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_eqv8qi3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_eqv4hi3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_eqv2si3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_gtv8qi3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_gtv4hi3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_gtv2si3                            (rtx, rtx, rtx);
extern rtx        gen_mmx_andv8qi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_andv4hi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_andv2si3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_nandv8qi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_nandv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_nandv2si3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_iorv8qi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_iorv4hi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_iorv2si3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_xorv8qi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_xorv4hi3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_xorv2si3                           (rtx, rtx, rtx);
extern rtx        gen_mmx_packsswb                           (rtx, rtx, rtx);
extern rtx        gen_mmx_packssdw                           (rtx, rtx, rtx);
extern rtx        gen_mmx_packuswb                           (rtx, rtx, rtx);
extern rtx        gen_mmx_punpckhbw                          (rtx, rtx, rtx);
extern rtx        gen_mmx_punpcklbw                          (rtx, rtx, rtx);
extern rtx        gen_mmx_punpckhwd                          (rtx, rtx, rtx);
extern rtx        gen_mmx_punpcklwd                          (rtx, rtx, rtx);
extern rtx        gen_mmx_punpckhdq                          (rtx, rtx, rtx);
extern rtx        gen_mmx_punpckldq                          (rtx, rtx, rtx);
extern rtx        gen_mmx_pextrw                             (rtx, rtx, rtx);
extern rtx        gen_mmx_pshufw_1                           (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_mmx_pswapdv2si2                        (rtx, rtx);
extern rtx        gen_mmx_uavgv8qi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_uavgv4hi3                          (rtx, rtx, rtx);
extern rtx        gen_mmx_psadbw                             (rtx, rtx, rtx);
extern rtx        gen_mmx_pmovmskb                           (rtx, rtx);
extern rtx        gen_mmx_emms                               (void);
extern rtx        gen_mmx_femms                              (void);
extern rtx        gen_sync_double_compare_and_swapdi         (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sync_double_compare_and_swapti         (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sync_double_compare_and_swap_ccdi      (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sync_double_compare_and_swap_ccti      (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_sync_old_addqi                         (rtx, rtx, rtx);
extern rtx        gen_sync_old_addhi                         (rtx, rtx, rtx);
extern rtx        gen_sync_old_addsi                         (rtx, rtx, rtx);
extern rtx        gen_sync_old_adddi                         (rtx, rtx, rtx);
extern rtx        gen_sync_lock_test_and_setqi               (rtx, rtx, rtx);
extern rtx        gen_sync_lock_test_and_sethi               (rtx, rtx, rtx);
extern rtx        gen_sync_lock_test_and_setsi               (rtx, rtx, rtx);
extern rtx        gen_sync_lock_test_and_setdi               (rtx, rtx, rtx);
extern rtx        gen_sync_addqi                             (rtx, rtx);
extern rtx        gen_sync_addhi                             (rtx, rtx);
extern rtx        gen_sync_addsi                             (rtx, rtx);
extern rtx        gen_sync_adddi                             (rtx, rtx);
extern rtx        gen_sync_subqi                             (rtx, rtx);
extern rtx        gen_sync_subhi                             (rtx, rtx);
extern rtx        gen_sync_subsi                             (rtx, rtx);
extern rtx        gen_sync_subdi                             (rtx, rtx);
extern rtx        gen_sync_iorqi                             (rtx, rtx);
extern rtx        gen_sync_iorhi                             (rtx, rtx);
extern rtx        gen_sync_iorsi                             (rtx, rtx);
extern rtx        gen_sync_iordi                             (rtx, rtx);
extern rtx        gen_sync_andqi                             (rtx, rtx);
extern rtx        gen_sync_andhi                             (rtx, rtx);
extern rtx        gen_sync_andsi                             (rtx, rtx);
extern rtx        gen_sync_anddi                             (rtx, rtx);
extern rtx        gen_sync_xorqi                             (rtx, rtx);
extern rtx        gen_sync_xorhi                             (rtx, rtx);
extern rtx        gen_sync_xorsi                             (rtx, rtx);
extern rtx        gen_sync_xordi                             (rtx, rtx);
extern rtx        gen_cmpti                                  (rtx, rtx);
extern rtx        gen_cmpdi                                  (rtx, rtx);
extern rtx        gen_cmpsi                                  (rtx, rtx);
extern rtx        gen_cmphi                                  (rtx, rtx);
extern rtx        gen_cmpqi                                  (rtx, rtx);
extern rtx        gen_cmpdi_1_rex64                          (rtx, rtx);
extern rtx        gen_cmpsi_1                                (rtx, rtx);
extern rtx        gen_cmpqi_ext_3                            (rtx, rtx);
extern rtx        gen_cmpxf                                  (rtx, rtx);
extern rtx        gen_cmpdf                                  (rtx, rtx);
extern rtx        gen_cmpsf                                  (rtx, rtx);
extern rtx        gen_movsi                                  (rtx, rtx);
extern rtx        gen_movhi                                  (rtx, rtx);
extern rtx        gen_movstricthi                            (rtx, rtx);
extern rtx        gen_movqi                                  (rtx, rtx);
extern rtx        gen_reload_outqi                           (rtx, rtx, rtx);
extern rtx        gen_movstrictqi                            (rtx, rtx);
extern rtx        gen_movdi                                  (rtx, rtx);
extern rtx        gen_movti                                  (rtx, rtx);
extern rtx        gen_movsf                                  (rtx, rtx);
extern rtx        gen_movdf                                  (rtx, rtx);
extern rtx        gen_movxf                                  (rtx, rtx);
extern rtx        gen_movtf                                  (rtx, rtx);
extern rtx        gen_zero_extendhisi2                       (rtx, rtx);
extern rtx        gen_zero_extendqihi2                       (rtx, rtx);
extern rtx        gen_zero_extendqisi2                       (rtx, rtx);
extern rtx        gen_zero_extendsidi2                       (rtx, rtx);
extern rtx        gen_extendsidi2                            (rtx, rtx);
extern rtx        gen_extendsfdf2                            (rtx, rtx);
extern rtx        gen_extendsfxf2                            (rtx, rtx);
extern rtx        gen_extenddfxf2                            (rtx, rtx);
extern rtx        gen_truncdfsf2                             (rtx, rtx);
extern rtx        gen_truncdfsf2_with_temp                   (rtx, rtx, rtx);
extern rtx        gen_truncxfsf2                             (rtx, rtx);
extern rtx        gen_truncxfdf2                             (rtx, rtx);
extern rtx        gen_fix_truncxfdi2                         (rtx, rtx);
extern rtx        gen_fix_truncsfdi2                         (rtx, rtx);
extern rtx        gen_fix_truncdfdi2                         (rtx, rtx);
extern rtx        gen_fix_truncxfsi2                         (rtx, rtx);
extern rtx        gen_fix_truncsfsi2                         (rtx, rtx);
extern rtx        gen_fix_truncdfsi2                         (rtx, rtx);
extern rtx        gen_fix_truncsfhi2                         (rtx, rtx);
extern rtx        gen_fix_truncdfhi2                         (rtx, rtx);
extern rtx        gen_fix_truncxfhi2                         (rtx, rtx);
extern rtx        gen_floathisf2                             (rtx, rtx);
extern rtx        gen_floatsisf2                             (rtx, rtx);
extern rtx        gen_floatdisf2                             (rtx, rtx);
extern rtx        gen_floathidf2                             (rtx, rtx);
extern rtx        gen_floatsidf2                             (rtx, rtx);
extern rtx        gen_floatdidf2                             (rtx, rtx);
extern rtx        gen_floatunssisf2                          (rtx, rtx);
extern rtx        gen_floatunsdisf2                          (rtx, rtx);
extern rtx        gen_floatunsdidf2                          (rtx, rtx);
extern rtx        gen_addti3                                 (rtx, rtx, rtx);
extern rtx        gen_adddi3                                 (rtx, rtx, rtx);
extern rtx        gen_addsi3                                 (rtx, rtx, rtx);
extern rtx        gen_addhi3                                 (rtx, rtx, rtx);
extern rtx        gen_addqi3                                 (rtx, rtx, rtx);
extern rtx        gen_addxf3                                 (rtx, rtx, rtx);
extern rtx        gen_adddf3                                 (rtx, rtx, rtx);
extern rtx        gen_addsf3                                 (rtx, rtx, rtx);
extern rtx        gen_subti3                                 (rtx, rtx, rtx);
extern rtx        gen_subdi3                                 (rtx, rtx, rtx);
extern rtx        gen_subsi3                                 (rtx, rtx, rtx);
extern rtx        gen_subhi3                                 (rtx, rtx, rtx);
extern rtx        gen_subqi3                                 (rtx, rtx, rtx);
extern rtx        gen_subxf3                                 (rtx, rtx, rtx);
extern rtx        gen_subdf3                                 (rtx, rtx, rtx);
extern rtx        gen_subsf3                                 (rtx, rtx, rtx);
extern rtx        gen_muldi3                                 (rtx, rtx, rtx);
extern rtx        gen_mulsi3                                 (rtx, rtx, rtx);
extern rtx        gen_mulhi3                                 (rtx, rtx, rtx);
extern rtx        gen_mulqi3                                 (rtx, rtx, rtx);
extern rtx        gen_umulqihi3                              (rtx, rtx, rtx);
extern rtx        gen_mulqihi3                               (rtx, rtx, rtx);
extern rtx        gen_umulditi3                              (rtx, rtx, rtx);
extern rtx        gen_umulsidi3                              (rtx, rtx, rtx);
extern rtx        gen_mulditi3                               (rtx, rtx, rtx);
extern rtx        gen_mulsidi3                               (rtx, rtx, rtx);
extern rtx        gen_umuldi3_highpart                       (rtx, rtx, rtx);
extern rtx        gen_umulsi3_highpart                       (rtx, rtx, rtx);
extern rtx        gen_smuldi3_highpart                       (rtx, rtx, rtx);
extern rtx        gen_smulsi3_highpart                       (rtx, rtx, rtx);
extern rtx        gen_mulxf3                                 (rtx, rtx, rtx);
extern rtx        gen_muldf3                                 (rtx, rtx, rtx);
extern rtx        gen_mulsf3                                 (rtx, rtx, rtx);
extern rtx        gen_divxf3                                 (rtx, rtx, rtx);
extern rtx        gen_divdf3                                 (rtx, rtx, rtx);
extern rtx        gen_divsf3                                 (rtx, rtx, rtx);
extern rtx        gen_divmoddi4                              (rtx, rtx, rtx, rtx);
extern rtx        gen_divmodsi4                              (rtx, rtx, rtx, rtx);
extern rtx        gen_udivmodhi4                             (rtx, rtx, rtx, rtx);
extern rtx        gen_testsi_ccno_1                          (rtx, rtx);
extern rtx        gen_testqi_ccz_1                           (rtx, rtx);
extern rtx        gen_testqi_ext_ccno_0                      (rtx, rtx);
extern rtx        gen_anddi3                                 (rtx, rtx, rtx);
extern rtx        gen_andsi3                                 (rtx, rtx, rtx);
extern rtx        gen_andhi3                                 (rtx, rtx, rtx);
extern rtx        gen_andqi3                                 (rtx, rtx, rtx);
extern rtx        gen_iordi3                                 (rtx, rtx, rtx);
extern rtx        gen_iorsi3                                 (rtx, rtx, rtx);
extern rtx        gen_iorhi3                                 (rtx, rtx, rtx);
extern rtx        gen_iorqi3                                 (rtx, rtx, rtx);
extern rtx        gen_xordi3                                 (rtx, rtx, rtx);
extern rtx        gen_xorsi3                                 (rtx, rtx, rtx);
extern rtx        gen_xorhi3                                 (rtx, rtx, rtx);
extern rtx        gen_xorqi3                                 (rtx, rtx, rtx);
extern rtx        gen_xorqi_cc_ext_1                         (rtx, rtx, rtx);
extern rtx        gen_negti2                                 (rtx, rtx);
extern rtx        gen_negdi2                                 (rtx, rtx);
extern rtx        gen_negsi2                                 (rtx, rtx);
extern rtx        gen_neghi2                                 (rtx, rtx);
extern rtx        gen_negqi2                                 (rtx, rtx);
extern rtx        gen_negsf2                                 (rtx, rtx);
extern rtx        gen_abssf2                                 (rtx, rtx);
extern rtx        gen_copysignsf3                            (rtx, rtx, rtx);
extern rtx        gen_negdf2                                 (rtx, rtx);
extern rtx        gen_absdf2                                 (rtx, rtx);
extern rtx        gen_copysigndf3                            (rtx, rtx, rtx);
extern rtx        gen_negxf2                                 (rtx, rtx);
extern rtx        gen_absxf2                                 (rtx, rtx);
extern rtx        gen_one_cmpldi2                            (rtx, rtx);
extern rtx        gen_one_cmplsi2                            (rtx, rtx);
extern rtx        gen_one_cmplhi2                            (rtx, rtx);
extern rtx        gen_one_cmplqi2                            (rtx, rtx);
extern rtx        gen_ashlti3                                (rtx, rtx, rtx);
extern rtx        gen_x86_64_shift_adj                       (rtx, rtx, rtx, rtx);
extern rtx        gen_ashldi3                                (rtx, rtx, rtx);
extern rtx        gen_x86_shift_adj_1                        (rtx, rtx, rtx, rtx);
extern rtx        gen_x86_shift_adj_2                        (rtx, rtx, rtx);
extern rtx        gen_ashlsi3                                (rtx, rtx, rtx);
extern rtx        gen_ashlhi3                                (rtx, rtx, rtx);
extern rtx        gen_ashlqi3                                (rtx, rtx, rtx);
extern rtx        gen_ashrti3                                (rtx, rtx, rtx);
extern rtx        gen_ashrdi3                                (rtx, rtx, rtx);
extern rtx        gen_x86_shift_adj_3                        (rtx, rtx, rtx);
extern rtx        gen_ashrsi3                                (rtx, rtx, rtx);
extern rtx        gen_ashrhi3                                (rtx, rtx, rtx);
extern rtx        gen_ashrqi3                                (rtx, rtx, rtx);
extern rtx        gen_lshrti3                                (rtx, rtx, rtx);
extern rtx        gen_lshrdi3                                (rtx, rtx, rtx);
extern rtx        gen_lshrsi3                                (rtx, rtx, rtx);
extern rtx        gen_lshrhi3                                (rtx, rtx, rtx);
extern rtx        gen_lshrqi3                                (rtx, rtx, rtx);
extern rtx        gen_rotldi3                                (rtx, rtx, rtx);
extern rtx        gen_rotlsi3                                (rtx, rtx, rtx);
extern rtx        gen_rotlhi3                                (rtx, rtx, rtx);
extern rtx        gen_rotlqi3                                (rtx, rtx, rtx);
extern rtx        gen_rotrdi3                                (rtx, rtx, rtx);
extern rtx        gen_rotrsi3                                (rtx, rtx, rtx);
extern rtx        gen_rotrhi3                                (rtx, rtx, rtx);
extern rtx        gen_rotrqi3                                (rtx, rtx, rtx);
extern rtx        gen_extv                                   (rtx, rtx, rtx, rtx);
extern rtx        gen_extzv                                  (rtx, rtx, rtx, rtx);
extern rtx        gen_insv                                   (rtx, rtx, rtx, rtx);
extern rtx        gen_seq                                    (rtx);
extern rtx        gen_sne                                    (rtx);
extern rtx        gen_sgt                                    (rtx);
extern rtx        gen_sgtu                                   (rtx);
extern rtx        gen_slt                                    (rtx);
extern rtx        gen_sltu                                   (rtx);
extern rtx        gen_sge                                    (rtx);
extern rtx        gen_sgeu                                   (rtx);
extern rtx        gen_sle                                    (rtx);
extern rtx        gen_sleu                                   (rtx);
extern rtx        gen_sunordered                             (rtx);
extern rtx        gen_sordered                               (rtx);
extern rtx        gen_suneq                                  (rtx);
extern rtx        gen_sunge                                  (rtx);
extern rtx        gen_sungt                                  (rtx);
extern rtx        gen_sunle                                  (rtx);
extern rtx        gen_sunlt                                  (rtx);
extern rtx        gen_sltgt                                  (rtx);
extern rtx        gen_beq                                    (rtx);
extern rtx        gen_bne                                    (rtx);
extern rtx        gen_bgt                                    (rtx);
extern rtx        gen_bgtu                                   (rtx);
extern rtx        gen_blt                                    (rtx);
extern rtx        gen_bltu                                   (rtx);
extern rtx        gen_bge                                    (rtx);
extern rtx        gen_bgeu                                   (rtx);
extern rtx        gen_ble                                    (rtx);
extern rtx        gen_bleu                                   (rtx);
extern rtx        gen_bunordered                             (rtx);
extern rtx        gen_bordered                               (rtx);
extern rtx        gen_buneq                                  (rtx);
extern rtx        gen_bunge                                  (rtx);
extern rtx        gen_bungt                                  (rtx);
extern rtx        gen_bunle                                  (rtx);
extern rtx        gen_bunlt                                  (rtx);
extern rtx        gen_bltgt                                  (rtx);
extern rtx        gen_indirect_jump                          (rtx);
extern rtx        gen_tablejump                              (rtx, rtx);
#define GEN_CALL_POP(A, B, C, D) gen_call_pop ((A), (B), (C), (D))
extern rtx        gen_call_pop                               (rtx, rtx, rtx, rtx);
#define GEN_CALL(A, B, C, D) gen_call ((A), (B), (C))
extern rtx        gen_call                                   (rtx, rtx, rtx);
#define GEN_SIBCALL(A, B, C, D) gen_sibcall ((A), (B), (C))
extern rtx        gen_sibcall                                (rtx, rtx, rtx);
#define GEN_CALL_VALUE_POP(A, B, C, D, E) gen_call_value_pop ((A), (B), (C), (D), (E))
extern rtx        gen_call_value_pop                         (rtx, rtx, rtx, rtx, rtx);
#define GEN_CALL_VALUE(A, B, C, D, E) gen_call_value ((A), (B), (C), (D))
extern rtx        gen_call_value                             (rtx, rtx, rtx, rtx);
#define GEN_SIBCALL_VALUE(A, B, C, D, E) gen_sibcall_value ((A), (B), (C), (D))
extern rtx        gen_sibcall_value                          (rtx, rtx, rtx, rtx);
extern rtx        gen_untyped_call                           (rtx, rtx, rtx);
extern rtx        gen_return                                 (void);
extern rtx        gen_prologue                               (void);
extern rtx        gen_epilogue                               (void);
extern rtx        gen_sibcall_epilogue                       (void);
extern rtx        gen_eh_return                              (rtx);
extern rtx        gen_ffssi2                                 (rtx, rtx);
extern rtx        gen_ffsdi2                                 (rtx, rtx);
extern rtx        gen_clzsi2                                 (rtx, rtx);
extern rtx        gen_clzdi2                                 (rtx, rtx);
extern rtx        gen_tls_global_dynamic_32                  (rtx, rtx);
extern rtx        gen_tls_global_dynamic_64                  (rtx, rtx);
extern rtx        gen_tls_local_dynamic_base_32              (rtx);
extern rtx        gen_tls_local_dynamic_base_64              (rtx);
extern rtx        gen_tls_dynamic_gnu2_32                    (rtx, rtx, rtx);
extern rtx        gen_tls_dynamic_gnu2_64                    (rtx, rtx);
extern rtx        gen_sqrtsf2                                (rtx, rtx);
extern rtx        gen_sqrtdf2                                (rtx, rtx);
extern rtx        gen_fmodsf3                                (rtx, rtx, rtx);
extern rtx        gen_fmoddf3                                (rtx, rtx, rtx);
extern rtx        gen_fmodxf3                                (rtx, rtx, rtx);
extern rtx        gen_dremsf3                                (rtx, rtx, rtx);
extern rtx        gen_dremdf3                                (rtx, rtx, rtx);
extern rtx        gen_dremxf3                                (rtx, rtx, rtx);
extern rtx        gen_tandf2                                 (rtx, rtx);
extern rtx        gen_tansf2                                 (rtx, rtx);
extern rtx        gen_tanxf2                                 (rtx, rtx);
extern rtx        gen_atan2df3                               (rtx, rtx, rtx);
extern rtx        gen_atandf2                                (rtx, rtx);
extern rtx        gen_atan2sf3                               (rtx, rtx, rtx);
extern rtx        gen_atansf2                                (rtx, rtx);
extern rtx        gen_atan2xf3                               (rtx, rtx, rtx);
extern rtx        gen_atanxf2                                (rtx, rtx);
extern rtx        gen_asindf2                                (rtx, rtx);
extern rtx        gen_asinsf2                                (rtx, rtx);
extern rtx        gen_asinxf2                                (rtx, rtx);
extern rtx        gen_acosdf2                                (rtx, rtx);
extern rtx        gen_acossf2                                (rtx, rtx);
extern rtx        gen_acosxf2                                (rtx, rtx);
extern rtx        gen_logsf2                                 (rtx, rtx);
extern rtx        gen_logdf2                                 (rtx, rtx);
extern rtx        gen_logxf2                                 (rtx, rtx);
extern rtx        gen_log10sf2                               (rtx, rtx);
extern rtx        gen_log10df2                               (rtx, rtx);
extern rtx        gen_log10xf2                               (rtx, rtx);
extern rtx        gen_log2sf2                                (rtx, rtx);
extern rtx        gen_log2df2                                (rtx, rtx);
extern rtx        gen_log2xf2                                (rtx, rtx);
extern rtx        gen_log1psf2                               (rtx, rtx);
extern rtx        gen_log1pdf2                               (rtx, rtx);
extern rtx        gen_log1pxf2                               (rtx, rtx);
extern rtx        gen_logbsf2                                (rtx, rtx);
extern rtx        gen_logbdf2                                (rtx, rtx);
extern rtx        gen_logbxf2                                (rtx, rtx);
extern rtx        gen_ilogbsi2                               (rtx, rtx, rtx, rtx);
extern rtx        gen_expsf2                                 (rtx, rtx);
extern rtx        gen_expdf2                                 (rtx, rtx);
extern rtx        gen_expxf2                                 (rtx, rtx);
extern rtx        gen_exp10sf2                               (rtx, rtx);
extern rtx        gen_exp10df2                               (rtx, rtx);
extern rtx        gen_exp10xf2                               (rtx, rtx);
extern rtx        gen_exp2sf2                                (rtx, rtx);
extern rtx        gen_exp2df2                                (rtx, rtx);
extern rtx        gen_exp2xf2                                (rtx, rtx);
extern rtx        gen_expm1df2                               (rtx, rtx);
extern rtx        gen_expm1sf2                               (rtx, rtx);
extern rtx        gen_expm1xf2                               (rtx, rtx);
extern rtx        gen_ldexpdf3                               (rtx, rtx, rtx);
extern rtx        gen_ldexpsf3                               (rtx, rtx, rtx);
extern rtx        gen_ldexpxf3                               (rtx, rtx, rtx);
extern rtx        gen_rintdf2                                (rtx, rtx);
extern rtx        gen_rintsf2                                (rtx, rtx);
extern rtx        gen_rintxf2                                (rtx, rtx);
extern rtx        gen_lrinthi2                               (rtx, rtx);
extern rtx        gen_lrintsi2                               (rtx, rtx);
extern rtx        gen_lrintdi2                               (rtx, rtx);
extern rtx        gen_floorxf2                               (rtx, rtx);
extern rtx        gen_floordf2                               (rtx, rtx);
extern rtx        gen_floorsf2                               (rtx, rtx);
extern rtx        gen_lfloorhi2                              (rtx, rtx);
extern rtx        gen_lfloorsi2                              (rtx, rtx);
extern rtx        gen_lfloordi2                              (rtx, rtx);
extern rtx        gen_ceilxf2                                (rtx, rtx);
extern rtx        gen_ceildf2                                (rtx, rtx);
extern rtx        gen_ceilsf2                                (rtx, rtx);
extern rtx        gen_lceilhi2                               (rtx, rtx);
extern rtx        gen_lceilsi2                               (rtx, rtx);
extern rtx        gen_lceildi2                               (rtx, rtx);
extern rtx        gen_btruncxf2                              (rtx, rtx);
extern rtx        gen_btruncdf2                              (rtx, rtx);
extern rtx        gen_btruncsf2                              (rtx, rtx);
extern rtx        gen_nearbyintxf2                           (rtx, rtx);
extern rtx        gen_nearbyintdf2                           (rtx, rtx);
extern rtx        gen_nearbyintsf2                           (rtx, rtx);
extern rtx        gen_movmemsi                               (rtx, rtx, rtx, rtx);
extern rtx        gen_movmemdi                               (rtx, rtx, rtx, rtx);
extern rtx        gen_strmov                                 (rtx, rtx, rtx, rtx);
extern rtx        gen_strmov_singleop                        (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_rep_mov                                (rtx, rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_setmemsi                               (rtx, rtx, rtx, rtx);
extern rtx        gen_setmemdi                               (rtx, rtx, rtx, rtx);
extern rtx        gen_strset                                 (rtx, rtx, rtx);
extern rtx        gen_strset_singleop                        (rtx, rtx, rtx, rtx);
extern rtx        gen_rep_stos                               (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_cmpstrnsi                              (rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_cmpintqi                               (rtx);
extern rtx        gen_cmpstrnqi_nz_1                         (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_cmpstrnqi_1                            (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_strlensi                               (rtx, rtx, rtx, rtx);
extern rtx        gen_strlendi                               (rtx, rtx, rtx, rtx);
extern rtx        gen_strlenqi_1                             (rtx, rtx, rtx);
extern rtx        gen_movdicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_movsicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_movhicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_movqicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_movsfcc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_movdfcc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_movxfcc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_addqicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_addhicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_addsicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_adddicc                                (rtx, rtx, rtx, rtx);
extern rtx        gen_allocate_stack_worker                  (rtx);
extern rtx        gen_allocate_stack_worker_postreload       (rtx);
extern rtx        gen_allocate_stack_worker_rex64_postreload (rtx);
extern rtx        gen_allocate_stack                         (rtx, rtx);
extern rtx        gen_builtin_setjmp_receiver                (rtx);
extern rtx        gen_sse_prologue_save                      (rtx, rtx, rtx, rtx);
extern rtx        gen_prefetch                               (rtx, rtx, rtx);
extern rtx        gen_stack_protect_set                      (rtx, rtx);
extern rtx        gen_stack_protect_test                     (rtx, rtx, rtx);
extern rtx        gen_movv16qi                               (rtx, rtx);
extern rtx        gen_movv8hi                                (rtx, rtx);
extern rtx        gen_movv4si                                (rtx, rtx);
extern rtx        gen_movv2di                                (rtx, rtx);
extern rtx        gen_movv4sf                                (rtx, rtx);
extern rtx        gen_movv2df                                (rtx, rtx);
extern rtx        gen_pushv16qi1                             (rtx);
extern rtx        gen_pushv8hi1                              (rtx);
extern rtx        gen_pushv4si1                              (rtx);
extern rtx        gen_pushv2di1                              (rtx);
extern rtx        gen_pushv4sf1                              (rtx);
extern rtx        gen_pushv2df1                              (rtx);
extern rtx        gen_movmisalignv16qi                       (rtx, rtx);
extern rtx        gen_movmisalignv8hi                        (rtx, rtx);
extern rtx        gen_movmisalignv4si                        (rtx, rtx);
extern rtx        gen_movmisalignv2di                        (rtx, rtx);
extern rtx        gen_movmisalignv4sf                        (rtx, rtx);
extern rtx        gen_movmisalignv2df                        (rtx, rtx);
extern rtx        gen_negv4sf2                               (rtx, rtx);
extern rtx        gen_absv4sf2                               (rtx, rtx);
extern rtx        gen_addv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_subv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_mulv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_divv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_smaxv4sf3                              (rtx, rtx, rtx);
extern rtx        gen_sminv4sf3                              (rtx, rtx, rtx);
extern rtx        gen_reduc_splus_v4sf                       (rtx, rtx);
extern rtx        gen_reduc_smax_v4sf                        (rtx, rtx);
extern rtx        gen_reduc_smin_v4sf                        (rtx, rtx);
extern rtx        gen_vcondv4sf                              (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_andv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_iorv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_xorv4sf3                               (rtx, rtx, rtx);
extern rtx        gen_sse_shufps                             (rtx, rtx, rtx, rtx);
extern rtx        gen_vec_initv4sf                           (rtx, rtx);
extern rtx        gen_vec_setv4sf                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv4sf                        (rtx, rtx, rtx);
extern rtx        gen_negv2df2                               (rtx, rtx);
extern rtx        gen_absv2df2                               (rtx, rtx);
extern rtx        gen_addv2df3                               (rtx, rtx, rtx);
extern rtx        gen_subv2df3                               (rtx, rtx, rtx);
extern rtx        gen_mulv2df3                               (rtx, rtx, rtx);
extern rtx        gen_divv2df3                               (rtx, rtx, rtx);
extern rtx        gen_smaxv2df3                              (rtx, rtx, rtx);
extern rtx        gen_sminv2df3                              (rtx, rtx, rtx);
extern rtx        gen_reduc_splus_v2df                       (rtx, rtx);
extern rtx        gen_vcondv2df                              (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_andv2df3                               (rtx, rtx, rtx);
extern rtx        gen_iorv2df3                               (rtx, rtx, rtx);
extern rtx        gen_xorv2df3                               (rtx, rtx, rtx);
extern rtx        gen_sse2_cvtpd2dq                          (rtx, rtx);
extern rtx        gen_sse2_cvttpd2dq                         (rtx, rtx);
extern rtx        gen_sse2_cvtpd2ps                          (rtx, rtx);
extern rtx        gen_sse2_shufpd                            (rtx, rtx, rtx, rtx);
extern rtx        gen_vec_setv2df                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv2df                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv2df                           (rtx, rtx);
extern rtx        gen_negv16qi2                              (rtx, rtx);
extern rtx        gen_negv8hi2                               (rtx, rtx);
extern rtx        gen_negv4si2                               (rtx, rtx);
extern rtx        gen_negv2di2                               (rtx, rtx);
extern rtx        gen_addv16qi3                              (rtx, rtx, rtx);
extern rtx        gen_addv8hi3                               (rtx, rtx, rtx);
extern rtx        gen_addv4si3                               (rtx, rtx, rtx);
extern rtx        gen_addv2di3                               (rtx, rtx, rtx);
extern rtx        gen_subv16qi3                              (rtx, rtx, rtx);
extern rtx        gen_subv8hi3                               (rtx, rtx, rtx);
extern rtx        gen_subv4si3                               (rtx, rtx, rtx);
extern rtx        gen_subv2di3                               (rtx, rtx, rtx);
extern rtx        gen_mulv16qi3                              (rtx, rtx, rtx);
extern rtx        gen_mulv8hi3                               (rtx, rtx, rtx);
extern rtx        gen_mulv4si3                               (rtx, rtx, rtx);
extern rtx        gen_mulv2di3                               (rtx, rtx, rtx);
extern rtx        gen_sdot_prodv8hi                          (rtx, rtx, rtx, rtx);
extern rtx        gen_udot_prodv4si                          (rtx, rtx, rtx, rtx);
extern rtx        gen_vec_shl_v16qi                          (rtx, rtx, rtx);
extern rtx        gen_vec_shl_v8hi                           (rtx, rtx, rtx);
extern rtx        gen_vec_shl_v4si                           (rtx, rtx, rtx);
extern rtx        gen_vec_shl_v2di                           (rtx, rtx, rtx);
extern rtx        gen_vec_shr_v16qi                          (rtx, rtx, rtx);
extern rtx        gen_vec_shr_v8hi                           (rtx, rtx, rtx);
extern rtx        gen_vec_shr_v4si                           (rtx, rtx, rtx);
extern rtx        gen_vec_shr_v2di                           (rtx, rtx, rtx);
extern rtx        gen_umaxv16qi3                             (rtx, rtx, rtx);
extern rtx        gen_smaxv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_umaxv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_smaxv16qi3                             (rtx, rtx, rtx);
extern rtx        gen_smaxv4si3                              (rtx, rtx, rtx);
extern rtx        gen_umaxv4si3                              (rtx, rtx, rtx);
extern rtx        gen_uminv16qi3                             (rtx, rtx, rtx);
extern rtx        gen_sminv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_sminv16qi3                             (rtx, rtx, rtx);
extern rtx        gen_sminv4si3                              (rtx, rtx, rtx);
extern rtx        gen_uminv8hi3                              (rtx, rtx, rtx);
extern rtx        gen_uminv4si3                              (rtx, rtx, rtx);
extern rtx        gen_vcondv16qi                             (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_vcondv8hi                              (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_vcondv4si                              (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_vconduv16qi                            (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_vconduv8hi                             (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_vconduv4si                             (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx        gen_one_cmplv16qi2                         (rtx, rtx);
extern rtx        gen_one_cmplv8hi2                          (rtx, rtx);
extern rtx        gen_one_cmplv4si2                          (rtx, rtx);
extern rtx        gen_one_cmplv2di2                          (rtx, rtx);
extern rtx        gen_andv16qi3                              (rtx, rtx, rtx);
extern rtx        gen_andv8hi3                               (rtx, rtx, rtx);
extern rtx        gen_andv4si3                               (rtx, rtx, rtx);
extern rtx        gen_andv2di3                               (rtx, rtx, rtx);
extern rtx        gen_iorv16qi3                              (rtx, rtx, rtx);
extern rtx        gen_iorv8hi3                               (rtx, rtx, rtx);
extern rtx        gen_iorv4si3                               (rtx, rtx, rtx);
extern rtx        gen_iorv2di3                               (rtx, rtx, rtx);
extern rtx        gen_xorv16qi3                              (rtx, rtx, rtx);
extern rtx        gen_xorv8hi3                               (rtx, rtx, rtx);
extern rtx        gen_xorv4si3                               (rtx, rtx, rtx);
extern rtx        gen_xorv2di3                               (rtx, rtx, rtx);
extern rtx        gen_sse2_pinsrw                            (rtx, rtx, rtx, rtx);
extern rtx        gen_sse2_pshufd                            (rtx, rtx, rtx);
extern rtx        gen_sse2_pshuflw                           (rtx, rtx, rtx);
extern rtx        gen_sse2_pshufhw                           (rtx, rtx, rtx);
extern rtx        gen_sse2_loadd                             (rtx, rtx);
extern rtx        gen_sse_storeq                             (rtx, rtx);
extern rtx        gen_vec_setv2di                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv2di                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv2di                           (rtx, rtx);
extern rtx        gen_vec_setv4si                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv4si                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv4si                           (rtx, rtx);
extern rtx        gen_vec_setv8hi                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv8hi                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv8hi                           (rtx, rtx);
extern rtx        gen_vec_setv16qi                           (rtx, rtx, rtx);
extern rtx        gen_vec_extractv16qi                       (rtx, rtx, rtx);
extern rtx        gen_vec_initv16qi                          (rtx, rtx);
extern rtx        gen_sse2_maskmovdqu                        (rtx, rtx, rtx);
extern rtx        gen_sse_sfence                             (void);
extern rtx        gen_sse2_mfence                            (void);
extern rtx        gen_sse2_lfence                            (void);
extern rtx        gen_movv8qi                                (rtx, rtx);
extern rtx        gen_movv4hi                                (rtx, rtx);
extern rtx        gen_movv2si                                (rtx, rtx);
extern rtx        gen_movv2sf                                (rtx, rtx);
extern rtx        gen_pushv8qi1                              (rtx);
extern rtx        gen_pushv4hi1                              (rtx);
extern rtx        gen_pushv2si1                              (rtx);
extern rtx        gen_pushv2sf1                              (rtx);
extern rtx        gen_movmisalignv8qi                        (rtx, rtx);
extern rtx        gen_movmisalignv4hi                        (rtx, rtx);
extern rtx        gen_movmisalignv2si                        (rtx, rtx);
extern rtx        gen_movmisalignv2sf                        (rtx, rtx);
extern rtx        gen_mmx_subrv2sf3                          (rtx, rtx, rtx);
extern rtx        gen_vec_setv2sf                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv2sf                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv2sf                           (rtx, rtx);
extern rtx        gen_mmx_pinsrw                             (rtx, rtx, rtx, rtx);
extern rtx        gen_mmx_pshufw                             (rtx, rtx, rtx);
extern rtx        gen_vec_setv2si                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv2si                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv2si                           (rtx, rtx);
extern rtx        gen_vec_setv4hi                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv4hi                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv4hi                           (rtx, rtx);
extern rtx        gen_vec_setv8qi                            (rtx, rtx, rtx);
extern rtx        gen_vec_extractv8qi                        (rtx, rtx, rtx);
extern rtx        gen_vec_initv8qi                           (rtx, rtx);
extern rtx        gen_mmx_maskmovq                           (rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swapqi                (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swaphi                (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swapsi                (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swapdi                (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swapti                (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swap_ccqi             (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swap_cchi             (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swap_ccsi             (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swap_ccdi             (rtx, rtx, rtx, rtx);
extern rtx        gen_sync_compare_and_swap_ccti             (rtx, rtx, rtx, rtx);

#endif /* GCC_INSN_FLAGS_H */
