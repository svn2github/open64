(define_conditions [
  (-1 "((GET_MODE (operands[0]) == QImode || GET_MODE (operands[0]) == HImode
    || (TARGET_64BIT && GET_MODE (operands[0]) == SImode))
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)
   && GET_MODE (operands[0]) == GET_MODE (operands[1])
   && GET_MODE (operands[0]) == GET_MODE (operands[2])
   && (GET_MODE (operands[0]) == GET_MODE (operands[3])
       || GET_MODE (operands[3]) == VOIDmode)) && ( reload_completed)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (PLUS, TImode, operands)")
  (-1 "TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (PLUS, HImode, operands)")
  (-1 "TARGET_80387 && !(TARGET_SSE2 && TARGET_SSE_MATH)
   && ix86_unary_operator_ok (GET_CODE (operands[3]), DFmode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (MULT, V2SImode, operands)")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, SImode, operands)")
  (-1 "!TARGET_64BIT && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (EQ, V16QImode, operands)")
  (-1 "TARGET_64BIT
   && INTVAL (operands[4]) + SSE_REGPARM_MAX * 16 - 16 < 128
   && INTVAL (operands[4]) + INTVAL (operands[2]) * 16 >= -128")
  (-1 "TARGET_USE_FANCY_MATH_387
   && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387)
   && flag_unsafe_math_optimizations")
  (-1 "TARGET_SSE3")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, QImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, SImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_SSE2 && !(MEM_P (operands[1]) && MEM_P (operands[2]))")
  (-1 "!TARGET_64BIT && TARGET_GNU_TLS")
  (-1 "TARGET_SSE2")
  (-1 "TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || SImode != DImode))
   && !(reload_completed || reload_in_progress)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (XOR, SImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_unary_operator_ok (NEG, HImode, operands)")
  (-1 "TARGET_80387
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && GET_MODE (operands[1]) == GET_MODE (operands[2])
   && ix86_fp_jump_nontrivial_p (GET_CODE (operands[0]))")
  (-1 "TARGET_64BIT && TARGET_SSE_MATH")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (AND, SImode, operands)")
  (-1 "TARGET_MIX_SSE_I387
   && !COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "!TARGET_64BIT && reload_completed
   && (! MMX_REG_P (operands[1]) && !SSE_REG_P (operands[1]))")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH && TARGET_MIX_SSE_I387
   && !COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "(TARGET_64BIT) && ( reload_completed)")
  (-1 "TARGET_64BIT
   && ix86_binary_operator_ok (IOR, DImode, operands)")
  (-1 "TARGET_PREFETCH_SSE || TARGET_3DNOW")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "!TARGET_64BIT && reload_completed
   && true_regnum (operands[0]) == true_regnum (operands[1])")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || HImode != DImode))
	&& TARGET_SSE_MATH)")
  (-1 "optimize_size
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && (reload_in_progress || reload_completed
       || GET_CODE (operands[1]) != CONST_DOUBLE
       || memory_operand (operands[0], XFmode))")
  (-1 "TARGET_64BIT
   &&  ix86_match_ccmode (insn, CCGCmode)")
  (-1 "reload_completed
   && GET_CODE (operands[1]) == MEM
   && constant_pool_reference_p (operands[1])")
  (-1 "(TARGET_K8 || TARGET_GENERIC64) && !optimize_size")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (PLUS, SImode, operands)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (XOR, V8QImode, operands)")
  (-1 "TARGET_CMOVE && !TARGET_PARTIAL_REG_STALL")
  (-1 "reload_completed
   && ANY_QI_REG_P (operands[0])
   && (ANY_QI_REG_P (operands[1]) || GET_CODE (operands[1]) == MEM)
   && (TARGET_ZERO_EXTEND_WITH_AND && !optimize_size)
   && !reg_overlap_mentioned_p (operands[0], operands[1])")
  (-1 "(!TARGET_64BIT) && ( reload_completed)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "(TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || DImode != DImode))
	&& TARGET_SSE_MATH)
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (LSHIFTRT, HImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "TARGET_QIMODE_MATH")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (MULT, V4HImode, operands)")
  (-1 "!TARGET_64BIT && TARGET_GNU2_TLS")
  (-1 "(TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || DImode != DImode))
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "reload_completed
   && operands[1] == constm1_rtx
   && (TARGET_PENTIUM || optimize_size)")
  (-1 "TARGET_80387
   && !(TARGET_SSE2 && TARGET_SSE_MATH)
   && !TARGET_MIX_SSE_I387")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, HImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || TARGET_DOUBLE_WITH_ADD)))")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (LSHIFTRT, HImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATE, DImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "reload_completed")
  (-1 "(TARGET_XADD) && (TARGET_64BIT)")
  (-1 "((GET_MODE (operands[0]) == QImode || GET_MODE (operands[0]) == HImode
    || (TARGET_64BIT && GET_MODE (operands[0]) == SImode))
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)
   && GET_MODE (operands[0]) == GET_MODE (operands[1])
   && GET_MODE (operands[0]) == GET_MODE (operands[3])) && ( reload_completed)")
  (-1 "TARGET_64BIT && TARGET_CMOVE
   && (GET_CODE (operands[2]) != MEM || GET_CODE (operands[3]) != MEM)")
  (-1 "ix86_binary_operator_ok (AND, QImode, operands)")
  (-1 "! TARGET_PARTIAL_REG_STALL || optimize_size")
  (-1 "TARGET_SSE && ix86_binary_operator_ok (PLUS, V4SFmode, operands)")
  (-1 "TARGET_STACK_PROBE")
  (-1 "TARGET_80387 || (TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "TARGET_SSE2 && reload_completed")
  (-1 "ix86_binary_operator_ok (PLUS, SImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (XOR, V4SImode, operands)")
  (-1 "TARGET_64BIT && !symbolic_operand (operands[1], DImode)
   && !x86_64_immediate_operand (operands[1], DImode)")
  (-1 "ix86_binary_operator_ok (MINUS, HImode, operands)")
  (-1 "(TARGET_SSE && !(MEM_P (operands[0]) && MEM_P (operands[1]))) && ( reload_completed)")
  (-1 "!optimize_size && !TARGET_USE_CLTD")
  (-1 "!TARGET_PARTIAL_REG_STALL || optimize_size")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A)
   && ix86_binary_operator_ok (SMIN, V4HImode, operands)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (PLUS, V2SImode, operands)")
  (-1 "!TARGET_64BIT && reload_completed
   && !SSE_REG_P (operands[0]) && !MMX_REG_P (operands[0])")
  (-1 "TARGET_64BIT && (TARGET_USE_BT || reload_completed)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, SImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || TARGET_DOUBLE_WITH_ADD)))")
  (-1 "(GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && ix86_match_ccmode (insn, CCmode)")
  (-1 "(TARGET_80387 && TARGET_CMOVE) || TARGET_SSE_MATH")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (AND, QImode, operands)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATERT, DImode, operands)")
  (-1 "TARGET_80387 && !TARGET_SSE_MATH
   && ix86_unary_operator_ok (GET_CODE (operands[3]), SFmode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (AND, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, QImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || (TARGET_DOUBLE_WITH_ADD && REG_P (operands[0])))))")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A)
   && ix86_binary_operator_ok (UMIN, V8QImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (MINUS, SImode, operands)")
  (-1 "(TARGET_CMOVE) && ( reload_completed)")
  (-1 "ix86_match_ccmode (insn, CCNOmode) && ! optimize_size")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (PLUS, HImode, operands)")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH && reload_completed")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (EQ, V4SImode, operands)")
  (-1 "reload_completed
   && true_regnum (operands[0]) != true_regnum (operands[1])
   && GET_MODE_SIZE (GET_MODE (operands[0])) <= 4")
  (-1 "TARGET_MMX && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (LSHIFTRT, HImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, QImode, operands)")
  (-1 "TARGET_80387 && !(TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "reload_completed
   && true_regnum (operands[0]) != true_regnum (operands[1])")
  (-1 "ix86_binary_operator_ok (ROTATE, HImode, operands)")
  (-1 "TARGET_SSE_MATH
   && ix86_unary_operator_ok (GET_CODE (operands[3]), SFmode, operands)")
  (-1 "TARGET_64BIT && (TARGET_PENTIUM || optimize_size)
   && reload_completed
   && operands[1] == constm1_rtx")
  (-1 "!SIBLING_CALL_P (insn) && !TARGET_64BIT")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATE, DImode, operands)")
  (-1 "TARGET_64BIT && (TARGET_SINGLE_STRINGOP || optimize_size)")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || HImode != DImode))
	&& TARGET_SSE_MATH)
   && !(reload_completed || reload_in_progress)")
  (-1 "TARGET_MIX_SSE_I387
   && SSE_FLOAT_MODE_P (GET_MODE (operands[0]))
   && GET_MODE (operands[0]) == GET_MODE (operands[1])")
  (-1 "TARGET_80387 && reload_completed")
  (-1 "reload_completed
    && QI_REG_P (operands[0])
    && (!TARGET_PARTIAL_REG_STALL || optimize_size)
    && !(INTVAL (operands[2]) & ~(255 << 8))
    && GET_MODE (operands[0]) != QImode")
  (-1 "TARGET_64BIT
   && ix86_unary_operator_ok (NEG, TImode, operands)")
  (-1 "TARGET_SSE && flag_finite_math_only
   && ix86_binary_operator_ok (SMAX, V4SFmode, operands)")
  (-1 "reload_completed
   && (GET_MODE (operands[0]) == XFmode
       || GET_MODE (operands[0]) == DFmode)
   && !ANY_FP_REG_P (operands[1])")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A) && TARGET_64BIT")
  (-1 "TARGET_64BIT && !TARGET_USE_BT")
  (-1 "TARGET_64BIT
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)")
  (-1 "!TARGET_64BIT && TARGET_CMOVE")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)")
  (-1 "!TARGET_64BIT && flag_pic")
  (-1 "(TARGET_SSE || TARGET_3DNOW)
   && ix86_binary_operator_ok (PLUS, V8QImode, operands)")
  (-1 "ix86_binary_operator_ok (AND, QImode, operands)
   && ix86_match_ccmode (insn,
			 GET_CODE (operands[2]) == CONST_INT
			 && INTVAL (operands[2]) >= 0 ? CCNOmode : CCZmode)")
  (-1 "(GET_MODE (operands[0]) == QImode || GET_MODE (operands[0]) == HImode
    || (TARGET_64BIT && GET_MODE (operands[0]) == SImode))
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)
   && GET_MODE (operands[0]) == GET_MODE (operands[1])
   && (GET_MODE (operands[0]) == GET_MODE (operands[3])
       || GET_MODE (operands[3]) == VOIDmode)")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A)
   && ix86_binary_operator_ok (MULT, V4HImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (IOR, V8HImode, operands)")
  (-1 "TARGET_USE_FANCY_MATH_387
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387)
   && flag_unsafe_math_optimizations")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, DImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || (TARGET_DOUBLE_WITH_ADD && REG_P (operands[0])))))")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH
   && COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "(peep2_reg_dead_p (3, operands[1])
    || operands_match_p (operands[1], operands[3]))
   && ! reg_overlap_mentioned_p (operands[3], operands[0])")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (IOR, SImode, operands)")
  (-1 "(TARGET_MMX && !(MEM_P (operands[0]) && MEM_P (operands[1]))) && ( reload_completed)")
  (-1 "!(MEM_P (operands[0]) && MEM_P (operands[1]))
   && (reload_in_progress || reload_completed
       || (ix86_cmodel == CM_MEDIUM || ix86_cmodel == CM_LARGE)
       || GET_CODE (operands[1]) != CONST_DOUBLE
       || memory_operand (operands[0], SFmode))")
  (-1 "TARGET_64BIT && INTVAL (operands[2]) == 63
   && (TARGET_USE_CLTD || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)")
  (-1 "ix86_binary_operator_ok (ROTATERT, QImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_64BIT && ((optimize > 0 && flag_peephole2)
		    ? flow2_completed : reload_completed)
   && !symbolic_operand (operands[1], DImode)
   && !x86_64_immediate_operand (operands[1], DImode)")
  (-1 "TARGET_64BIT && ix86_check_movabs (insn, 1)")
  (-1 "(! TARGET_PARTIAL_REG_STALL || optimize_size)
   && ix86_match_ccmode (insn, CCNOmode)
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A)
   && ix86_binary_operator_ok (PLUS, V4HImode, operands)")
  (-1 "TARGET_QIMODE_MATH
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !SSE_FLOAT_MODE_P (GET_MODE (operands[1]))")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (SS_PLUS, V8HImode, operands)")
  (-1 "!TARGET_SSE2 && TARGET_SSE
   && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (PLUS, SImode, operands)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "TARGET_80387
   && !(SSE_FLOAT_MODE_P (DFmode) && (!TARGET_FISTTP || TARGET_SSE_MATH))")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (AND, HImode, operands)")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, QImode, operands)")
  (-1 "!optimize_size 
   && (INTVAL (operands[2]) == 3
       || INTVAL (operands[2]) == 5
       || INTVAL (operands[2]) == 9)")
  (-1 "TARGET_USE_FANCY_MATH_387
   && flag_unsafe_math_optimizations")
  (-1 "TARGET_USE_FANCY_MATH_387")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ASHIFT, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCZmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCmode)
   && ix86_binary_operator_ok (MINUS, HImode, operands)")
  (-1 "TARGET_80387 && TARGET_USE_SIMODE_FIOP
   && FLOAT_MODE_P (GET_MODE (operands[3]))
   && GET_MODE (operands[1]) == GET_MODE (operands[3])
   && !ix86_use_fcomi_compare (swap_condition (GET_CODE (operands[0])))
   && ix86_fp_compare_mode (swap_condition (GET_CODE (operands[0]))) == CCFPmode
   && ix86_fp_jump_nontrivial_p (swap_condition (GET_CODE (operands[0])))")
  (-1 "!SIBLING_CALL_P (insn) && TARGET_64BIT")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (MINUS, SImode, operands)")
  (-1 "ix86_binary_operator_ok (XOR, HImode, operands)")
  (-1 "!(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "TARGET_64BIT && (!TARGET_USE_MOV0 || optimize_size)
   && reload_completed")
  (-1 "! optimize_size
   && get_attr_length (insn) >= ix86_cost->large_insn
   && TARGET_SPLIT_LONG_MOVES")
  (-1 "optimize_size || !TARGET_SUB_ESP_4")
  (-1 "TARGET_80387 && (reload_completed || !(TARGET_SSE2 && TARGET_SSE_MATH))")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_3DNOW && ix86_binary_operator_ok (MULT, V2SFmode, operands)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (MINUS, TImode, operands)")
  (-1 "TARGET_80387 && TARGET_CMOVE
   && (!TARGET_SSE_MATH || !SSE_FLOAT_MODE_P (GET_MODE (operands[0])))
   && FLOAT_MODE_P (GET_MODE (operands[0]))
   && GET_MODE (operands[0]) == GET_MODE (operands[1])")
  (-1 "standard_80387_constant_p (operands[3]) == 2")
  (-1 "TARGET_USE_FANCY_MATH_387 && TARGET_MIX_SSE_I387")
  (-1 "reload_completed
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && ! (ANY_FP_REG_P (operands[0]) || 
	 (GET_CODE (operands[0]) == SUBREG
	  && ANY_FP_REG_P (SUBREG_REG (operands[0]))))
   && ! (ANY_FP_REG_P (operands[1]) || 
	 (GET_CODE (operands[1]) == SUBREG
	  && ANY_FP_REG_P (SUBREG_REG (operands[1]))))")
  (-1 "TARGET_MMX && !TARGET_SSE")
  (-1 "ix86_match_ccmode (insn, CCGCmode)
   && (INTVAL (operands[2]) & 0xff) != 0x80")
  (-1 "optimize_size || !TARGET_ADD_ESP_8")
  (-1 "reload_completed && !SSE_REG_P (operands[0])
   && !SSE_REG_P (operands[1])")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (XOR, V4HImode, operands)")
  (-1 "!TARGET_64BIT && TARGET_CMPXCHG8B && flag_pic")
  (-1 "TARGET_64BIT
   && ix86_binary_operator_ok (XOR, DImode, operands)")
  (-1 "ix86_binary_operator_ok (ROTATE, SImode, operands)")
  (-1 "optimize_size")
  (-1 "TARGET_80387 && TARGET_USE_HIMODE_FIOP && !TARGET_SSE_MATH")
  (-1 "(!TARGET_ZERO_EXTEND_WITH_AND || optimize_size) && reload_completed")
  (-1 "TARGET_64BIT && TARGET_SSE2 && (!TARGET_FISTTP || TARGET_SSE_MATH)")
  (-1 "TARGET_USE_FANCY_MATH_387
   && flag_unsafe_math_optimizations
   && !(reload_completed || reload_in_progress)")
  (-1 "TARGET_SSE && ix86_binary_operator_ok (AND, V4SFmode, operands)")
  (-1 "INTVAL (operands[2]) >= 0 && INTVAL (operands[2]) <= 3
   /* Validate MODE for lea.  */
   && ((!TARGET_PARTIAL_REG_STALL
	&& (GET_MODE (operands[0]) == QImode
	    || GET_MODE (operands[0]) == HImode))
       || GET_MODE (operands[0]) == SImode 
       || (TARGET_64BIT && GET_MODE (operands[0]) == DImode))
   /* We reorder load and the shift.  */
   && !rtx_equal_p (operands[1], operands[3])
   && !reg_overlap_mentioned_p (operands[0], operands[4])
   /* Last PLUS must consist of operand 0 and 3.  */
   && !rtx_equal_p (operands[0], operands[3])
   && (rtx_equal_p (operands[3], operands[6])
       || rtx_equal_p (operands[3], operands[7]))
   && (rtx_equal_p (operands[0], operands[6])
       || rtx_equal_p (operands[0], operands[7]))
   /* The intermediate operand 0 must die or be same as output.  */
   && (rtx_equal_p (operands[0], operands[5])
       || peep2_reg_dead_p (3, operands[0]))")
  (-1 "TARGET_80387 && TARGET_USE_SIMODE_FIOP
   && !(TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "! TARGET_PARTIAL_REG_STALL && reload_completed
   && (GET_MODE (operands[0]) == HImode
       || (GET_MODE (operands[0]) == QImode 
	   && (TARGET_PROMOTE_QImode || optimize_size)))")
  (-1 "!TARGET_64BIT && ix86_match_ccmode (insn, CCmode)")
  (-1 "ix86_binary_operator_ok (IOR, HImode, operands)")
  (-1 "ix86_binary_operator_ok (MINUS, SImode, operands)")
  (-1 "TARGET_64BIT && (TARGET_USE_CLTD || optimize_size)
   && INTVAL (operands[2]) == 31
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (MULT, V2DFmode, operands)")
  (-1 "(GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
    && ix86_match_ccmode (insn, CCmode)")
  (-1 "!optimize_size
   && peep2_regno_dead_p (0, FLAGS_REG)
   && ((TARGET_PENTIUM 
        && (GET_CODE (operands[0]) != MEM
            || !memory_displacement_operand (operands[0], QImode)))
       || (TARGET_K6 && long_memory_operand (operands[0], QImode)))")
  (-1 "reload_completed || TARGET_80387")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (US_PLUS, V16QImode, operands)")
  (-1 "ix86_binary_operator_ok (XOR, QImode, operands)")
  (-1 "find_regno_note (insn, REG_UNUSED, REGNO (operands[0]))
   && !reload_completed && !reload_in_progress")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || SImode != DImode))
	&& TARGET_SSE_MATH)
   && !(reload_completed || reload_in_progress)")
  (-1 "TARGET_SSE2 && TARGET_MIX_SSE_I387")
  (-1 "ix86_match_ccmode (insn, CCmode)
   && ix86_binary_operator_ok (MINUS, SImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCZmode)
   && ix86_binary_operator_ok (PLUS, SImode, operands)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (AND, V2SImode, operands)")
  (-1 "!TARGET_64BIT && ((optimize > 0 && flag_peephole2)
		     ? flow2_completed : reload_completed)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (IOR, V2DImode, operands)")
  (-1 "TARGET_CMOVE && TARGET_80387
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && GET_MODE (operands[1]) == GET_MODE (operands[2])
   && ix86_fp_jump_nontrivial_p (GET_CODE (operands[0]))")
  (-1 "(GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && ((optimize_size || !TARGET_INTEGER_DFMODE_MOVES) && !TARGET_64BIT)
   && (reload_in_progress || reload_completed
       || (ix86_cmodel == CM_MEDIUM || ix86_cmodel == CM_LARGE)
       || GET_CODE (operands[1]) != CONST_DOUBLE
       || memory_operand (operands[0], DFmode))")
  (-1 "TARGET_64BIT && !optimize_size && !TARGET_USE_CLTD")
  (-1 "ix86_match_ccmode (insn, CCmode)
   && ix86_binary_operator_ok (MINUS, QImode, operands)")
  (-1 "TARGET_64BIT && TARGET_80387 && TARGET_CMOVE
   && (GET_CODE (operands[2]) != MEM || GET_CODE (operands[3]) != MEM)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (EQ, V2SImode, operands)")
  (-1 "TARGET_XADD")
  (-1 "(!TARGET_PARTIAL_REG_STALL || optimize_size)")
  (-1 "TARGET_SSE2 && (!TARGET_FISTTP || TARGET_SSE_MATH)")
  (-1 "!TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (PLUS, HImode, operands)")
  (-1 "TARGET_SSE && ix86_binary_operator_ok (XOR, V4SFmode, operands)")
  (-1 "reload_completed && TARGET_ZERO_EXTEND_WITH_AND && !optimize_size")
  (-1 "TARGET_64BIT && TARGET_MMX
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "(TARGET_SSE_MATH) && ( reload_completed)")
  (-1 "(TARGET_SSE) && ( reload_completed)")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH
   && !COMMUTATIVE_ARITH_P (operands[3])")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATE, SImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_MMX
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "TARGET_SSE")
  (-1 "TARGET_MIX_SSE_I387
   && SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
   && GET_MODE (operands[1]) == GET_MODE (operands[2])
   && ix86_fp_jump_nontrivial_p (GET_CODE (operands[0]))")
  (-1 "(GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && ix86_match_ccmode (insn, CCNOmode)")
  (-1 "TARGET_3DNOW_A")
  (-1 "TARGET_ZERO_EXTEND_WITH_AND && !optimize_size")
  (-1 "reload_completed
    && ANY_QI_REG_P (operands[0])
    && (!TARGET_PARTIAL_REG_STALL || optimize_size)
    && !(~INTVAL (operands[2]) & ~255)
    && !(INTVAL (operands[2]) & 128)
    && GET_MODE (operands[0]) != QImode")
  (-1 "!TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (ASHIFT, QImode, operands)")
  (-1 "ix86_binary_operator_ok (ROTATERT, SImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_80387 && TARGET_USE_HIMODE_FIOP")
  (-1 "reload_completed 
   && (!TARGET_ZERO_EXTEND_WITH_AND || optimize_size)
   && (!REG_P (operands[1]) || ANY_QI_REG_P (operands[1]))")
  (-1 "! TARGET_PARTIAL_REG_STALL
   && ix86_match_ccmode (insn, CCNOmode)
   && true_regnum (operands[2]) != 0
   && peep2_reg_dead_p (1, operands[2])")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (PLUS, QImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V4SFmode, operands)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (LSHIFTRT, HImode, operands)")
  (-1 "(GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && ((!optimize_size && TARGET_INTEGER_DFMODE_MOVES) || TARGET_64BIT)
   && (reload_in_progress || reload_completed
       || (ix86_cmodel == CM_MEDIUM || ix86_cmodel == CM_LARGE)
       || GET_CODE (operands[1]) != CONST_DOUBLE
       || memory_operand (operands[0], DFmode))")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (US_PLUS, V8HImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, SImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || TARGET_DOUBLE_WITH_ADD)))")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ASHIFT, SImode, operands)")
  (-1 "TARGET_64BIT")
  (-1 "TARGET_MIX_SSE_I387
   && COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_3DNOW && ix86_binary_operator_ok (EQ, V2SFmode, operands)")
  (-1 "TARGET_CMPXCHG")
  (-1 "!optimize_size
   && peep2_regno_dead_p (0, FLAGS_REG)
   && ((TARGET_PENTIUM 
        && (GET_CODE (operands[0]) != MEM
            || !memory_displacement_operand (operands[0], HImode)))
       || (TARGET_K6 && long_memory_operand (operands[0], HImode)))")
  (-1 "TARGET_SSE2 && flag_finite_math_only
   && ix86_binary_operator_ok (SMAX, V2DFmode, operands)")
  (-1 "!TARGET_ZERO_EXTEND_WITH_AND || optimize_size")
  (-1 "TARGET_80387
   && !COMMUTATIVE_ARITH_P (operands[3])")
  (-1 "TARGET_80387 || (TARGET_64BIT && SSE_FLOAT_MODE_P (SFmode))")
  (-1 "ix86_unary_operator_ok (NOT, SImode, operands)")
  (-1 "TARGET_3DNOW && !TARGET_64BIT")
  (-1 "TARGET_MMX")
  (-1 "exact_log2 (INTVAL (operands[2])) >= 0
   && REGNO (operands[0]) == REGNO (operands[1])
   && peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (MINUS, QImode, operands)")
  (-1 "ix86_unary_operator_ok (NEG, QImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFTRT, HImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "TARGET_SSE && ix86_binary_operator_ok (MULT, V4SFmode, operands)")
  (-1 "!optimize_size && !TARGET_PUSH_MEMORY
   && !RTX_FRAME_RELATED_P (peep2_next_insn (0))")
  (-1 "!optimize_size
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && (reload_in_progress || reload_completed
       || GET_CODE (operands[1]) != CONST_DOUBLE
       || memory_operand (operands[0], XFmode))")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (IOR, SImode, operands)")
  (-1 "TARGET_SSE4A")
  (-1 "TARGET_80387
   && COMMUTATIVE_ARITH_P (operands[3])")
  (-1 "(TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || HImode != DImode))
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "TARGET_64BIT && ix86_unary_operator_ok (NOT, SImode, operands)")
  (-1 "!TARGET_64BIT && TARGET_SSE_MATH")
  (-1 "(TARGET_K8 || TARGET_GENERIC64) && !optimize_size
   && satisfies_constraint_K (operands[2])")
  (-1 "TARGET_80387 && TARGET_USE_SIMODE_FIOP && !TARGET_SSE_MATH")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (PLUS, DImode, operands)")
  (-1 "!optimize_size
   && peep2_regno_dead_p (0, FLAGS_REG)
   && ((TARGET_PENTIUM 
        && (GET_CODE (operands[0]) != MEM
            || !memory_displacement_operand (operands[0], SImode)))
       || (TARGET_K6 && long_memory_operand (operands[0], SImode)))")
  (-1 "!TARGET_64BIT && reload_completed")
  (-1 "GET_MODE_SIZE (GET_MODE (operands[0])) <= UNITS_PER_WORD
   && (! TARGET_USE_MOV0 || optimize_size)
   && GENERAL_REG_P (operands[0])
   && peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "ix86_binary_operator_ok (XOR, SImode, operands)")
  (-1 "TARGET_SSE && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "ix86_match_ccmode (insn, CCZmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "(TARGET_64BIT && TARGET_CMOVE) && ( reload_completed)")
  (-1 "TARGET_64BIT && ix86_unary_operator_ok (NEG, SImode, operands)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (AND, V8QImode, operands)")
  (-1 "(INTVAL (operands[3]) == -1
    || INTVAL (operands[3]) == 1
    || INTVAL (operands[3]) == 128)
   && ix86_match_ccmode (insn, CCGCmode)
   && peep2_reg_dead_p (1, operands[2])")
  (-1 "GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM")
  (-1 "ix86_binary_operator_ok (LSHIFTRT, HImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (XOR, QImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (IOR, QImode, operands)")
  (-1 "!TARGET_64BIT && ix86_binary_operator_ok (PLUS, DImode, operands)")
  (-1 "TARGET_80387 || SSE_FLOAT_MODE_P (SFmode)")
  (-1 "(TARGET_USE_FANCY_MATH_387
   && flag_unsafe_math_optimizations
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "TARGET_3DNOW")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)")
  (-1 "! TARGET_PARTIAL_REG_STALL && reload_completed
   && ((GET_MODE (operands[0]) == HImode 
	&& ((!optimize_size && !TARGET_FAST_PREFIX)
            /* ??? next two lines just !satisfies_constraint_K (...) */
	    || GET_CODE (operands[2]) != CONST_INT
	    || satisfies_constraint_K (operands[2])))
       || (GET_MODE (operands[0]) == QImode 
	   && (TARGET_PROMOTE_QImode || optimize_size)))")
  (-1 "TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || DImode != DImode))
   && !(reload_completed || reload_in_progress)")
  (-1 "GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM")
  (-1 "TARGET_64BIT
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (EQ, V8HImode, operands)")
  (-1 "ix86_unary_operator_ok (NEG, HImode, operands)")
  (-1 "ix86_binary_operator_ok (LSHIFTRT, QImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCmode)")
  (-1 "TARGET_SSE2 && !TARGET_64BIT")
  (-1 "!TARGET_64BIT && ix86_binary_operator_ok (MINUS, DImode, operands)")
  (-1 "peep2_regno_dead_p (0, FLAGS_REG) && REGNO (operands[0]) == REGNO (operands[1])")
  (-1 "TARGET_64BIT && TARGET_MIX_SSE_I387")
  (-1 "optimize_size || !TARGET_SUB_ESP_8")
  (-1 "TARGET_SSE && reload_completed")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (XOR, V2DFmode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && ix86_unary_operator_ok (NOT, SImode, operands)")
  (-1 "(GET_MODE (operands[0]) == QImode || GET_MODE (operands[0]) == HImode
    || (TARGET_64BIT && GET_MODE (operands[0]) == SImode))
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)
   && GET_MODE (operands[0]) == GET_MODE (operands[1])
   && GET_MODE (operands[0]) == GET_MODE (operands[2])
   && (GET_MODE (operands[0]) == GET_MODE (operands[3])
       || GET_MODE (operands[3]) == VOIDmode)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (AND, V2DImode, operands)")
  (-1 "ix86_binary_operator_ok (ROTATERT, QImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (MINUS, DImode, operands)")
  (-1 "TARGET_64BIT && !symbolic_operand (operands[1], DImode)
   && !x86_64_immediate_operand (operands[1], DImode) && 1")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (LSHIFTRT, HImode, operands)")
  (-1 "TARGET_64BIT || TARGET_INTEGER_DFMODE_MOVES")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ASHIFTRT, DImode, operands)")
  (-1 "TARGET_64BIT && ix86_check_movabs (insn, 0)")
  (-1 "TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(TARGET_64BIT && SSE_FLOAT_MODE_P (GET_MODE (operands[1])))")
  (-1 "reload_completed
   && TARGET_80387
   && FLOAT_MODE_P (GET_MODE (operands[0]))")
  (-1 "(TARGET_CMPXCHG) && (TARGET_64BIT || TARGET_CMPXCHG8B)")
  (-1 "(TARGET_K8 || TARGET_GENERIC64) && !optimize_size
   && !satisfies_constraint_K (operands[2])")
  (-1 "reload_completed && SSE_REG_P (operands[0])")
  (-1 "TARGET_3DNOW && ix86_binary_operator_ok (SMIN, V2SFmode, operands)")
  (-1 "TARGET_SSE2 && TARGET_64BIT")
  (-1 "TARGET_PREFETCH_SSE && !TARGET_64BIT")
  (-1 "reload_completed
   && ANY_QI_REG_P (operands[0])
   && (TARGET_ZERO_EXTEND_WITH_AND && !optimize_size)
   && !reg_overlap_mentioned_p (operands[0], operands[1])")
  (-1 "SIBLING_CALL_P (insn) && TARGET_64BIT")
  (-1 "TARGET_PARTIAL_REG_STALL")
  (-1 "exact_log2 (INTVAL (operands[1])) >= 0
   && peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "reload_completed
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
   && GET_MODE (operands[0]) == XFmode
   && ! (ANY_FP_REG_P (operands[0]) || 
	 (GET_CODE (operands[0]) == SUBREG
	  && ANY_FP_REG_P (SUBREG_REG (operands[0]))))
   && ! (ANY_FP_REG_P (operands[1]) || 
	 (GET_CODE (operands[1]) == SUBREG
	  && ANY_FP_REG_P (SUBREG_REG (operands[1]))))")
  (-1 "TARGET_SSE2 && TARGET_MIX_SSE_I387
   && COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (AND, SImode, operands)")
  (-1 "ix86_unary_operator_ok (NOT, HImode, operands)")
  (-1 "! TARGET_PARTIAL_REG_STALL && TARGET_CMOVE
   && (GET_MODE (operands[0]) == HImode
       || (GET_MODE (operands[0]) == QImode 
	   && (TARGET_PROMOTE_QImode || optimize_size)))")
  (-1 "TARGET_64BIT
   && ix86_match_ccmode (insn, CCGOCmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "TARGET_80387
   && !(SSE_FLOAT_MODE_P (XFmode) && (!TARGET_FISTTP || TARGET_SSE_MATH))")
  (-1 "TARGET_SSE && flag_finite_math_only
   && ix86_binary_operator_ok (SMIN, V4SFmode, operands)")
  (-1 "TARGET_80387 || (TARGET_64BIT && SSE_FLOAT_MODE_P (DFmode))")
  (-1 "ix86_binary_operator_ok (PLUS, HImode, operands)")
  (-1 "(! TARGET_PARTIAL_REG_STALL || optimize_size)
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "(TARGET_CMOVE && !TARGET_PARTIAL_REG_STALL) && ( reload_completed)")
  (-1 "TARGET_64BIT && TARGET_CMPXCHG16B")
  (-1 "TARGET_SSE && !TARGET_64BIT
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "TARGET_SINGLE_STRINGOP || optimize_size")
  (-1 "TARGET_SSE_MATH && reload_completed")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (IOR, V2SImode, operands)")
  (-1 "TARGET_PREFETCH_SSE && TARGET_64BIT")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (XOR, V2DImode, operands)")
  (-1 "TARGET_64BIT && TARGET_SSE && (!TARGET_FISTTP || TARGET_SSE_MATH)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (UMAX, V16QImode, operands)")
  (-1 "TARGET_80387 && TARGET_USE_HIMODE_FIOP
   && !(TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "TARGET_SSE && (!TARGET_FISTTP || TARGET_SSE_MATH)")
  (-1 "TARGET_64BIT
   && ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (XOR, DImode, operands)")
  (-1 "(reload_completed
    && dead_or_set_p (insn, operands[1])
    && !reg_mentioned_p (operands[1], operands[0]))")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (AND, V16QImode, operands)")
  (-1 "TARGET_SSE_MATH
   && COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || SImode != DImode))
	&& TARGET_SSE_MATH)")
  (-1 "TARGET_SSE3 && !TARGET_64BIT")
  (-1 "INTVAL (operands[2]) == 3
   || INTVAL (operands[2]) == 5
   || INTVAL (operands[2]) == 9")
  (-1 "TARGET_80387 && TARGET_USE_HIMODE_FIOP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && (GET_MODE (operands [3]) == GET_MODE (operands[1]))")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, HImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_SSE_MATH
   && SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
   && GET_MODE (operands[1]) == GET_MODE (operands[2])
   && ix86_fp_jump_nontrivial_p (GET_CODE (operands[0]))")
  (-1 "ix86_binary_operator_ok (LSHIFTRT, QImode, operands)")
  (-1 "optimize_size || TARGET_USE_CLTD")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (MINUS, HImode, operands)")
  (-1 "ix86_binary_operator_ok (ROTATE, QImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "!TARGET_64BIT
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_80387 && (!TARGET_SSE_MATH || TARGET_MIX_SSE_I387)")
  (-1 "TARGET_80387
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && GET_MODE (operands[1]) == GET_MODE (operands[2])
   && !ix86_use_fcomi_compare (GET_CODE (operands[0]))
   && SELECT_CC_MODE (GET_CODE (operands[0]),
		      operands[1], operands[2]) == CCFPmode
   && ix86_fp_jump_nontrivial_p (GET_CODE (operands[0]))")
  (-1 "!TARGET_64BIT
   && ix86_unary_operator_ok (NEG, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && INTVAL (operands[1]) > 0
   && INTVAL (operands[2]) >= 0
   && INTVAL (operands[1]) + INTVAL (operands[2]) <= 32
   && (GET_MODE (operands[0]) == SImode
       || (TARGET_64BIT && GET_MODE (operands[0]) == DImode)
       || GET_MODE (operands[0]) == HImode
       || GET_MODE (operands[0]) == QImode)")
  (-1 "!TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (PLUS, QImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (IOR, HImode, operands)")
  (-1 "ix86_binary_operator_ok (AND, SImode, operands)")
  (-1 "(GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)
    && ix86_match_ccmode (insn,
 			 GET_CODE (operands[1]) == CONST_INT
 			 && INTVAL (operands[1]) >= 0 ? CCNOmode : CCZmode)")
  (-1 "(TARGET_CMPXCHG) && (TARGET_64BIT)")
  (-1 "TARGET_64BIT
   && ix86_match_ccmode (insn, CCNOmode)
   && INTVAL (operands[1]) > 0
   && INTVAL (operands[2]) >= 0
   /* Ensure that resulting mask is zero or sign extended operand.  */
   && (INTVAL (operands[1]) + INTVAL (operands[2]) <= 32
       || (INTVAL (operands[1]) + INTVAL (operands[2]) == 64
	   && INTVAL (operands[1]) > 32))
   && (GET_MODE (operands[0]) == SImode
       || GET_MODE (operands[0]) == DImode
       || GET_MODE (operands[0]) == HImode
       || GET_MODE (operands[0]) == QImode)")
  (-1 "ix86_binary_operator_ok (ASHIFT, SImode, operands)")
  (-1 "(! TARGET_PARTIAL_REG_STALL || optimize_size)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_80387
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && GET_MODE (operands[1]) == GET_MODE (operands[2])")
  (-1 "TARGET_3DNOW && ix86_binary_operator_ok (SMAX, V2SFmode, operands)")
  (-1 "!TARGET_64BIT
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)")
  (-1 "TARGET_80387 || (TARGET_64BIT && TARGET_SSE_MATH)")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	&& (TARGET_64BIT || HImode != DImode))
	&& TARGET_SSE_MATH)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (MULT, V8HImode, operands)")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A)
   && ix86_binary_operator_ok (UMAX, V8QImode, operands)")
  (-1 "! optimize_size && get_attr_length (insn) >= ix86_cost->large_insn
  && TARGET_SPLIT_LONG_MOVES")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (XOR, SImode, operands)")
  (-1 "TARGET_64BIT && reload_completed
   && true_regnum (operands[0]) != true_regnum (operands[1])")
  (-1 "TARGET_80387
   && ix86_unary_operator_ok (GET_CODE (operands[3]), XFmode, operands)")
  (-1 "! TARGET_PARTIAL_REG_STALL && reload_completed
   /* Ensure that the operand will remain sign-extended immediate.  */
   && ix86_match_ccmode (insn, INTVAL (operands[3]) >= 0 ? CCNOmode : CCZmode)
   && ! TARGET_FAST_PREFIX
   && ! optimize_size")
  (-1 "TARGET_MMX && reload_completed")
  (-1 "!TARGET_64BIT && TARGET_SUN_TLS")
  (0 "0")
  (-1 "TARGET_64BIT && (optimize_size || TARGET_USE_CLTD)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (PLUS, SImode, operands)")
  (-1 "optimize_size || (TARGET_FAST_PREFIX && !TARGET_PARTIAL_REG_STALL)")
  (-1 "TARGET_SSE2 && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "(TARGET_80387 && TARGET_CMOVE) || (TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "TARGET_80387 && TARGET_CMOVE")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V4SImode, operands)")
  (-1 "TARGET_USE_FANCY_MATH_387 && TARGET_SSE2 && TARGET_MIX_SSE_I387")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A)
   && ix86_binary_operator_ok (SMAX, V4HImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, DImode, operands)")
  (-1 "reload_completed
   && GET_CODE (operands[1]) == MEM
   && (GET_MODE (operands[0]) == XFmode
       || GET_MODE (operands[0]) == SFmode || GET_MODE (operands[0]) == DFmode)
   && constant_pool_reference_p (operands[1])")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_unary_operator_ok (NOT, SImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (IOR, V16QImode, operands)")
  (-1 "TARGET_64BIT
   && !optimize_size 
   && (INTVAL (operands[2]) == 3
       || INTVAL (operands[2]) == 5
       || INTVAL (operands[2]) == 9)")
  (-1 "!TARGET_64BIT && TARGET_STACK_PROBE")
  (-1 "TARGET_SSE && TARGET_64BIT")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (AND, V4SImode, operands)")
  (-1 "TARGET_CMOVE
   && (GET_CODE (operands[2]) != MEM || GET_CODE (operands[3]) != MEM)")
  (-1 "TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (ASHIFT, HImode, operands)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (AND, V4HImode, operands)")
  (-1 "! optimize_size || TARGET_INLINE_ALL_STRINGOPS")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH
   && ix86_unary_operator_ok (GET_CODE (operands[3]), DFmode, operands)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, HImode, operands)")
  (-1 "TARGET_64BIT && TARGET_SSE2 && TARGET_MIX_SSE_I387")
  (-1 "(TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || SImode != DImode))
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (EQ, V8QImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (IOR, V4SImode, operands)")
  (-1 "TARGET_64BIT
   && ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (IOR, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "ix86_binary_operator_ok (ROTATERT, HImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_SSE2 && flag_finite_math_only
   && ix86_binary_operator_ok (SMIN, V2DFmode, operands)")
  (-1 "TARGET_80387 && !TARGET_SSE_MATH
   && !COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_SSE3 && reload_completed")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (XOR, V2SImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (UMIN, V16QImode, operands)")
  (-1 "TARGET_SSE || TARGET_3DNOW_A")
  (-1 "TARGET_80387 && !(TARGET_SSE2 && TARGET_SSE_MATH)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "(TARGET_SSE2 && TARGET_SSE_MATH) && ( reload_completed)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "(GET_MODE (operands[0]) == QImode
    || GET_MODE (operands[0]) == HImode)
   && (! TARGET_USE_MOV0 || optimize_size)
   && peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "TARGET_64BIT && TARGET_STACK_PROBE")
  (-1 "ix86_binary_operator_ok (PLUS, QImode, operands)")
  (-1 "TARGET_USE_FANCY_MATH_387 || (TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "TARGET_64BIT
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "TARGET_80387 && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387)")
  (-1 "ix86_match_ccmode (insn, CCGCmode)
   && (INTVAL (operands[2]) & 0xffffffff) != 0x80000000")
  (-1 "ix86_binary_operator_ok (ROTATE, SImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_SSE_MATH
   && !COMMUTATIVE_ARITH_P (operands[3])")
  (-1 "TARGET_64BIT && ix86_unary_operator_ok (NEG, DImode, operands)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (IOR, V8QImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCmode)
   && ix86_binary_operator_ok (MINUS, SImode, operands)")
  (-1 "TARGET_SSE2 && TARGET_MIX_SSE_I387
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "ix86_match_ccmode (insn, CCmode)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, SImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || (TARGET_DOUBLE_WITH_ADD && REG_P (operands[0])))))")
  (-1 "!TARGET_64BIT && TARGET_CMPXCHG8B && !flag_pic")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V2DImode, operands)")
  (-1 "!TARGET_64BIT && TARGET_80387 && TARGET_CMOVE
   && (GET_CODE (operands[2]) != MEM || GET_CODE (operands[3]) != MEM)")
  (-1 "TARGET_64BIT && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "TARGET_80387 && reload_completed
   && FLOAT_MODE_P (GET_MODE (operands[0]))")
  (-1 "TARGET_SSE2 && TARGET_MIX_SSE_I387 && flag_unsafe_math_optimizations")
  (-1 "(TARGET_CMPXCHG) && (TARGET_64BIT && TARGET_CMPXCHG16B)")
  (-1 "ix86_binary_operator_ok (ROTATE, HImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (AND, V8HImode, operands)")
  (-1 "reload_completed
   && ((!TARGET_USE_MOV0 && !TARGET_PARTIAL_REG_STALL) || optimize_size)")
  (-1 "TARGET_3DNOW && !(MEM_P (operands[0]) && MEM_P (operands[1]))")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, DImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || TARGET_DOUBLE_WITH_ADD)))")
  (-1 "TARGET_80387 && !TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !(SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || HImode != DImode))
   && !(reload_completed || reload_in_progress)")
  (-1 "TARGET_80387
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATE, SImode, operands)")
  (-1 "ix86_binary_operator_ok (IOR, QImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, QImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || TARGET_DOUBLE_WITH_ADD)))")
  (-1 "TARGET_SSE_MATH && TARGET_MIX_SSE_I387
   && ix86_unary_operator_ok (GET_CODE (operands[3]), SFmode, operands)")
  (-1 "TARGET_SSE && ix86_binary_operator_ok (UNKNOWN, V4SFmode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_unary_operator_ok (NOT, QImode, operands)")
  (-1 "TARGET_80387 && flag_unsafe_math_optimizations")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && (true_regnum (operands[2]) != 0
       || satisfies_constraint_K (operands[3]))
   && peep2_reg_dead_p (1, operands[2])")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ASHIFTRT, DImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (PLUS, DImode, operands)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "TARGET_64BIT && TARGET_SSE2 && TARGET_SSE_MATH")
  (-1 "(optimize_size || !TARGET_PARTIAL_REG_STALL) && reload_completed")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (SMAX, V8HImode, operands)")
  (-1 "TARGET_64BIT && TARGET_GNU2_TLS")
  (-1 "TARGET_HIMODE_MATH")
  (-1 "ix86_binary_operator_ok (ASHIFTRT, QImode, operands)
   && (! TARGET_PARTIAL_REG_STALL || optimize_size)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (PLUS, QImode, operands)")
  (-1 "TARGET_80387 && TARGET_USE_SIMODE_FIOP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && (GET_MODE (operands [3]) == GET_MODE (operands[1]))")
  (-1 "!TARGET_64BIT")
  (-1 "TARGET_80387
   && (GET_MODE (operands[1]) == SFmode || GET_MODE (operands[1]) == DFmode)
   && GET_MODE (operands[1]) == GET_MODE (operands[2])
   && !ix86_use_fcomi_compare (GET_CODE (operands[0]))
   && SELECT_CC_MODE (GET_CODE (operands[0]),
		      operands[1], operands[2]) == CCFPmode
   && ix86_fp_jump_nontrivial_p (GET_CODE (operands[0]))")
  (-1 "TARGET_SSE_MATH
   && SSE_FLOAT_MODE_P (GET_MODE (operands[0]))
   && GET_MODE (operands[0]) == GET_MODE (operands[1])")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (AND, SImode, operands)")
  (-1 "ix86_unary_operator_ok (NEG, SImode, operands)")
  (-1 "TARGET_SSE_MATH")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || DImode != DImode))
	&& TARGET_SSE_MATH)
   && !(reload_completed || reload_in_progress)")
  (-1 "TARGET_MIX_SSE_I387")
  (-1 "TARGET_80387
   && COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "!TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)")
  (-1 "TARGET_80387 && (reload_completed || !TARGET_SSE_MATH)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (XOR, HImode, operands)")
  (-1 "TARGET_64BIT && reload_completed")
  (-1 "TARGET_64BIT && ix86_unary_operator_ok (NOT, DImode, operands)")
  (-1 "TARGET_SSE3 && TARGET_64BIT")
  (-1 "TARGET_80387
   && !(SSE_FLOAT_MODE_P (SFmode) && (!TARGET_FISTTP || TARGET_SSE_MATH))")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATERT, DImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFTRT, QImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "TARGET_80387 || TARGET_SSE")
  (-1 "TARGET_3DNOW && ix86_binary_operator_ok (PLUS, V2SFmode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (AND, V2DFmode, operands)")
  (-1 "TARGET_CMOVE")
  (-1 "TARGET_3DNOW && TARGET_64BIT")
  (-1 "TARGET_64BIT
   && (INTVAL (operands[2]) == 3
       || INTVAL (operands[2]) == 5
       || INTVAL (operands[2]) == 9)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (XOR, V16QImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (LSHIFTRT, QImode, operands)")
  (-1 "!TARGET_64BIT && (TARGET_SINGLE_STRINGOP || optimize_size)")
  (-1 "reload_completed
    && QI_REG_P (operands[0])
    && (!TARGET_PARTIAL_REG_STALL || optimize_size)
    && !(~INTVAL (operands[2]) & ~(255 << 8))
    && GET_MODE (operands[0]) != QImode")
  (-1 "!TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "INTVAL (operands[2]) == 31 && (TARGET_USE_CLTD || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)")
  (-1 "TARGET_USE_FANCY_MATH_387
   && (!(TARGET_SSE2 && TARGET_SSE_MATH) || TARGET_MIX_SSE_I387)")
  (-1 "ix86_can_use_return_insn_p ()")
  (-1 "(TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || SImode != DImode))
	&& TARGET_SSE_MATH)
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "SIBLING_CALL_P (insn) && !TARGET_64BIT")
  (-1 "TARGET_80387 && TARGET_CMOVE
   && (GET_CODE (operands[2]) != MEM || GET_CODE (operands[3]) != MEM)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (LSHIFTRT, QImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "reload_completed && (!TARGET_USE_MOV0 || optimize_size)")
  (-1 "find_regno_note (insn, REG_UNUSED, REGNO (operands[1]))
   && !reload_completed && !reload_in_progress")
  (-1 "!TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (ASHIFT, HImode, operands)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (EQ, V4HImode, operands)")
  (-1 "peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATERT, SImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (SS_PLUS, V16QImode, operands)")
  (-1 "TARGET_SSE && !(MEM_P (operands[1]) && MEM_P (operands[2]))")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ROTATERT, SImode, operands)")
  (-1 "TARGET_USE_FANCY_MATH_387 || TARGET_SSE_MATH")
  (-1 "TARGET_SSE || TARGET_64BIT")
  (-1 "ix86_unary_operator_ok (NOT, QImode, operands)")
  (-1 "ix86_binary_operator_ok (MINUS, QImode, operands)")
  (-1 "TARGET_80387 || (TARGET_64BIT && TARGET_SSE2 && TARGET_SSE_MATH)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (IOR, V2DFmode, operands)")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	&& (TARGET_64BIT || DImode != DImode))
	&& TARGET_SSE_MATH)")
  (-1 "!optimize_size")
  (-1 "ix86_binary_operator_ok (ROTATERT, SImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFTRT, DImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH
   && (GET_CODE (operands[0]) != MEM || GET_CODE (operands[1]) != MEM)")
  (-1 "TARGET_80387")
  (-1 "! optimize_size && ! TARGET_READ_MODIFY")
  (-1 "ix86_binary_operator_ok (LSHIFTRT, HImode, operands)
   && (TARGET_SHIFT1 || optimize_size)")
  (-1 "REGNO (operands[0]) != REGNO (operands[1])")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (PLUS, V4HImode, operands)")
  (-1 "TARGET_80387 && TARGET_USE_SIMODE_FIOP")
  (-1 "TARGET_64BIT && TARGET_CMOVE")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFT, HImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL
       || (operands[2] == const1_rtx
	   && (TARGET_SHIFT1
	       || (TARGET_DOUBLE_WITH_ADD && REG_P (operands[0])))))")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	&& (TARGET_64BIT || SImode != DImode))
	&& TARGET_SSE_MATH)")
  (-1 "TARGET_80387 && !(TARGET_SSE2 && TARGET_SSE_MATH)
   && !COMMUTATIVE_ARITH_P (operands[3])
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)")
  (-1 "TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || DImode != DImode))
	&& TARGET_SSE_MATH)")
  (-1 "(GET_MODE (operands[0]) == HImode
    || GET_MODE (operands[0]) == SImode 
    || (GET_MODE (operands[0]) == DImode && TARGET_64BIT))
   && (optimize_size || TARGET_PENTIUM)
   && peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (MINUS, SImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V2DFmode, operands)")
  (-1 "reload_completed
    && GET_MODE (operands[2]) != QImode
    && (!REG_P (operands[2]) || ANY_QI_REG_P (operands[2]))
    && ((ix86_match_ccmode (insn, CCZmode)
	 && !(INTVAL (operands[3]) & ~255))
	|| (ix86_match_ccmode (insn, CCNOmode)
	    && !(INTVAL (operands[3]) & ~127)))")
  (-1 "ix86_binary_operator_ok (ROTATE, QImode, operands)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (SMIN, V8HImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (ASHIFTRT, HImode, operands)")
  (-1 "TARGET_64BIT
   && ix86_match_ccmode (insn, CCZmode)
   && (GET_CODE (operands[1]) != MEM || GET_CODE (operands[2]) != MEM)
   /* Current assemblers are broken and do not allow @GOTOFF in
      ought but a memory context.  */
   && ! pic_symbolic_operand (operands[2], VOIDmode)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (IOR, V4HImode, operands)")
  (-1 "TARGET_80387 && TARGET_USE_HIMODE_FIOP
   && FLOAT_MODE_P (GET_MODE (operands[3]))
   && GET_MODE (operands[1]) == GET_MODE (operands[3])
   && !ix86_use_fcomi_compare (swap_condition (GET_CODE (operands[0])))
   && ix86_fp_compare_mode (swap_condition (GET_CODE (operands[0]))) == CCFPmode
   && ix86_fp_jump_nontrivial_p (swap_condition (GET_CODE (operands[0])))")
  (-1 "reload_completed
    && ANY_QI_REG_P (operands[0])
    && (!TARGET_PARTIAL_REG_STALL || optimize_size)
    && !(INTVAL (operands[2]) & ~255)
    && (INTVAL (operands[2]) & 128)
    && GET_MODE (operands[0]) != QImode")
  (-1 "reload_completed
    && QI_REG_P (operands[2])
    && GET_MODE (operands[2]) != QImode
    && ((ix86_match_ccmode (insn, CCZmode)
    	 && !(INTVAL (operands[3]) & ~(255 << 8)))
	|| (ix86_match_ccmode (insn, CCNOmode)
	    && !(INTVAL (operands[3]) & ~(127 << 8))))")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (MINUS, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGOCmode)
   && (TARGET_SHIFT1 || optimize_size)
   && ix86_binary_operator_ok (LSHIFTRT, HImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)
   && ix86_binary_operator_ok (IOR, SImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCNOmode)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (XOR, SImode, operands)")
  (-1 "reload_completed
   && true_regnum (operands[0]) == true_regnum (operands[1])")
  (-1 "(GET_MODE (operands[0]) == QImode || GET_MODE (operands[0]) == HImode
    || (TARGET_64BIT && GET_MODE (operands[0]) == SImode))
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)
   && GET_MODE (operands[0]) == GET_MODE (operands[1])
   && GET_MODE (operands[0]) == GET_MODE (operands[3])")
  (-1 "! optimize_size
   && ! TARGET_USE_MOV0
   && TARGET_SPLIT_LONG_MOVES
   && get_attr_length (insn) >= ix86_cost->large_insn
   && peep2_regno_dead_p (0, FLAGS_REG)")
  (-1 "TARGET_80387 || TARGET_SSE_MATH")
  (-1 "TARGET_SSE2 && TARGET_SSE_MATH && TARGET_MIX_SSE_I387
   && ix86_unary_operator_ok (GET_CODE (operands[3]), DFmode, operands)")
  (-1 "TARGET_MMX && ix86_binary_operator_ok (PLUS, V8QImode, operands)")
  (-1 "TARGET_80387 || SSE_FLOAT_MODE_P (DFmode)")
  (-1 "!TARGET_64BIT && reload_completed
   && (!MMX_REG_P (operands[0]) && !SSE_REG_P (operands[0]))
   && (!MMX_REG_P (operands[1]) && !SSE_REG_P (operands[1]))")
  (-1 "ix86_binary_operator_ok (ROTATERT, HImode, operands)")
  (-1 "! TARGET_PARTIAL_REG_STALL && reload_completed
   /* Ensure that the operand will remain sign-extended immediate.  */
   && ix86_match_ccmode (insn, INTVAL (operands[4]) >= 0 ? CCNOmode : CCZmode)
   && ! optimize_size
   && ((GET_MODE (operands[1]) == HImode && ! TARGET_FAST_PREFIX)
       || (GET_MODE (operands[1]) == QImode && TARGET_PROMOTE_QImode))")
  (-1 "(TARGET_FISTTP
   && FLOAT_MODE_P (GET_MODE (operands[1]))
   && !((SSE_FLOAT_MODE_P (GET_MODE (operands[1]))
	 && (TARGET_64BIT || HImode != DImode))
	&& TARGET_SSE_MATH)
   && !(reload_completed || reload_in_progress)) && ( 1)")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (XOR, V8HImode, operands)")
  (-1 "peep2_reg_dead_p (4, operands[7]) && peep2_reg_dead_p (4, operands[8])")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCGOCmode)
   && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)
   && (optimize_size
       || !TARGET_PARTIAL_FLAG_REG_STALL)")
  (-1 "! optimize_size && ! TARGET_READ_MODIFY_WRITE")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V8HImode, operands)")
  (-1 "(TARGET_SSE || TARGET_3DNOW_A) && !TARGET_64BIT")
  (-1 "TARGET_SSE2 && ix86_binary_operator_ok (PLUS, V16QImode, operands)")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (ASHIFTRT, SImode, operands)")
  (-1 "TARGET_SSE && ix86_binary_operator_ok (IOR, V4SFmode, operands)")
  (-1 "ix86_binary_operator_ok (AND, HImode, operands)")
  (-1 "((GET_MODE (operands[0]) == QImode || GET_MODE (operands[0]) == HImode
    || (TARGET_64BIT && GET_MODE (operands[0]) == SImode))
   && (!TARGET_PARTIAL_REG_STALL || optimize_size)
   && GET_MODE (operands[0]) == GET_MODE (operands[1])
   && (GET_MODE (operands[0]) == GET_MODE (operands[3])
       || GET_MODE (operands[3]) == VOIDmode)) && ( reload_completed)")
  (-1 "ix86_binary_operator_ok (IOR, SImode, operands)")
  (-1 "TARGET_64BIT && ix86_match_ccmode (insn, CCNOmode)
   && ix86_unary_operator_ok (NOT, DImode, operands)")
  (-1 "TARGET_SSE3 && !(MEM_P (operands[1]) && MEM_P (operands[2]))")
  (-1 "TARGET_64BIT && ix86_binary_operator_ok (AND, DImode, operands)")
  (-1 "ix86_match_ccmode (insn, CCGCmode)
   && (INTVAL (operands[2]) & 0xffff) != 0x8000")
  (-1 "!TARGET_64BIT && !TARGET_INTEGER_DFMODE_MOVES")
  (-1 "TARGET_PARTIAL_REG_STALL
   && ix86_binary_operator_ok (ASHIFT, QImode, operands)")
  (-1 "TARGET_3DNOW && ix86_binary_operator_ok (MULT, V4HImode, operands)")
  (-1 "optimize_size || !TARGET_ADD_ESP_4")
])
