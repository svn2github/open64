	.file	"toplev.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl parse_tree_dump
	.bss
	.align 4
	.type	parse_tree_dump, @object
	.size	parse_tree_dump, 4
parse_tree_dump:
	.zero	4
.globl debug_hooks
	.section	.data.rel,"aw",@progbits
	.align 4
	.type	debug_hooks, @object
	.size	debug_hooks, 4
debug_hooks:
	.long	do_nothing_debug_hooks
	.section	.rodata
.LC0:
	.string	"rtl"
.LC1:
	.string	"sibling"
.LC2:
	.string	"eh"
.LC3:
	.string	"jump"
.LC4:
	.string	"ssa"
.LC5:
	.string	"ssaccp"
.LC6:
	.string	"ssadce"
.LC7:
	.string	"ussa"
.LC8:
	.string	"null"
.LC9:
	.string	"cse"
.LC10:
	.string	"addressof"
.LC11:
	.string	"gcse"
.LC12:
	.string	"loop"
.LC13:
	.string	"cfg"
.LC14:
	.string	"bp"
.LC15:
	.string	"ce1"
.LC16:
	.string	"tracer"
.LC17:
	.string	"cse2"
.LC18:
	.string	"life"
.LC19:
	.string	"combine"
.LC20:
	.string	"ce2"
.LC21:
	.string	"regmove"
.LC22:
	.string	"sched"
.LC23:
	.string	"lreg"
.LC24:
	.string	"greg"
.LC25:
	.string	"postreload"
.LC26:
	.string	"flow2"
.LC27:
	.string	"peephole2"
.LC28:
	.string	"rnreg"
.LC29:
	.string	"ce3"
.LC30:
	.string	"sched2"
.LC31:
	.string	"stack"
.LC32:
	.string	"bbro"
.LC33:
	.string	"mach"
.LC34:
	.string	"dbr"
.LC35:
	.string	"tree"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	dump_file, @object
	.size	dump_file, 288
dump_file:
	.long	.LC0
	.byte	114
	.byte	0
	.byte	0
	.byte	0
	.long	.LC1
	.byte	105
	.byte	0
	.byte	0
	.byte	0
	.long	.LC2
	.byte	104
	.byte	0
	.byte	0
	.byte	0
	.long	.LC3
	.byte	106
	.byte	0
	.byte	0
	.byte	0
	.long	.LC4
	.byte	101
	.byte	1
	.byte	0
	.byte	0
	.long	.LC5
	.byte	87
	.byte	1
	.byte	0
	.byte	0
	.long	.LC6
	.byte	88
	.byte	1
	.byte	0
	.byte	0
	.long	.LC7
	.byte	101
	.byte	1
	.byte	0
	.byte	0
	.long	.LC8
	.byte	117
	.byte	0
	.byte	0
	.byte	0
	.long	.LC9
	.byte	115
	.byte	0
	.byte	0
	.byte	0
	.long	.LC10
	.byte	70
	.byte	0
	.byte	0
	.byte	0
	.long	.LC11
	.byte	71
	.byte	1
	.byte	0
	.byte	0
	.long	.LC12
	.byte	76
	.byte	1
	.byte	0
	.byte	0
	.long	.LC13
	.byte	102
	.byte	1
	.byte	0
	.byte	0
	.long	.LC14
	.byte	98
	.byte	1
	.byte	0
	.byte	0
	.long	.LC15
	.byte	67
	.byte	1
	.byte	0
	.byte	0
	.long	.LC16
	.byte	84
	.byte	1
	.byte	0
	.byte	0
	.long	.LC17
	.byte	116
	.byte	1
	.byte	0
	.byte	0
	.long	.LC18
	.byte	102
	.byte	1
	.byte	0
	.byte	0
	.long	.LC19
	.byte	99
	.byte	1
	.byte	0
	.byte	0
	.long	.LC20
	.byte	67
	.byte	1
	.byte	0
	.byte	0
	.long	.LC21
	.byte	78
	.byte	1
	.byte	0
	.byte	0
	.long	.LC22
	.byte	83
	.byte	1
	.byte	0
	.byte	0
	.long	.LC23
	.byte	108
	.byte	1
	.byte	0
	.byte	0
	.long	.LC24
	.byte	103
	.byte	1
	.byte	0
	.byte	0
	.long	.LC25
	.byte	111
	.byte	1
	.byte	0
	.byte	0
	.long	.LC26
	.byte	119
	.byte	1
	.byte	0
	.byte	0
	.long	.LC27
	.byte	122
	.byte	1
	.byte	0
	.byte	0
	.long	.LC28
	.byte	110
	.byte	1
	.byte	0
	.byte	0
	.long	.LC29
	.byte	69
	.byte	1
	.byte	0
	.byte	0
	.long	.LC30
	.byte	82
	.byte	1
	.byte	0
	.byte	0
	.long	.LC31
	.byte	107
	.byte	1
	.byte	0
	.byte	0
	.long	.LC32
	.byte	66
	.byte	1
	.byte	0
	.byte	0
	.long	.LC33
	.byte	77
	.byte	1
	.byte	0
	.byte	0
	.long	.LC34
	.byte	100
	.byte	0
	.byte	0
	.byte	0
	.long	.LC35
	.byte	80
	.byte	0
	.byte	0
	.byte	0
.globl write_symbols
	.bss
	.align 4
	.type	write_symbols, @object
	.size	write_symbols, 4
write_symbols:
	.zero	4
.globl debug_info_level
	.align 4
	.type	debug_info_level, @object
	.size	debug_info_level, 4
debug_info_level:
	.zero	4
.globl use_gnu_debug_info_extensions
	.align 4
	.type	use_gnu_debug_info_extensions, @object
	.size	use_gnu_debug_info_extensions, 4
use_gnu_debug_info_extensions:
	.zero	4
.globl optimize
	.align 4
	.type	optimize, @object
	.size	optimize, 4
optimize:
	.zero	4
.globl optimize_size
	.align 4
	.type	optimize_size, @object
	.size	optimize_size, 4
optimize_size:
	.zero	4
	.local	exit_after_options
	.comm	exit_after_options,4,4
.globl flag_eliminate_dwarf2_dups
	.align 4
	.type	flag_eliminate_dwarf2_dups, @object
	.size	flag_eliminate_dwarf2_dups, 4
flag_eliminate_dwarf2_dups:
	.zero	4
.globl profile_flag
	.align 4
	.type	profile_flag, @object
	.size	profile_flag, 4
profile_flag:
	.zero	4
.globl profile_arc_flag
	.align 4
	.type	profile_arc_flag, @object
	.size	profile_arc_flag, 4
profile_arc_flag:
	.zero	4
.globl flag_test_coverage
	.align 4
	.type	flag_test_coverage, @object
	.size	flag_test_coverage, 4
flag_test_coverage:
	.zero	4
.globl flag_branch_probabilities
	.align 4
	.type	flag_branch_probabilities, @object
	.size	flag_branch_probabilities, 4
flag_branch_probabilities:
	.zero	4
.globl flag_reorder_blocks
	.align 4
	.type	flag_reorder_blocks, @object
	.size	flag_reorder_blocks, 4
flag_reorder_blocks:
	.zero	4
.globl flag_reorder_functions
	.align 4
	.type	flag_reorder_functions, @object
	.size	flag_reorder_functions, 4
flag_reorder_functions:
	.zero	4
.globl flag_rename_registers
	.align 4
	.type	flag_rename_registers, @object
	.size	flag_rename_registers, 4
flag_rename_registers:
	.zero	4
.globl flag_cprop_registers
	.align 4
	.type	flag_cprop_registers, @object
	.size	flag_cprop_registers, 4
flag_cprop_registers:
	.zero	4
.globl pedantic
	.align 4
	.type	pedantic, @object
	.size	pedantic, 4
pedantic:
	.zero	4
.globl in_system_header
	.align 4
	.type	in_system_header, @object
	.size	in_system_header, 4
in_system_header:
	.zero	4
.globl quiet_flag
	.data
	.align 4
	.type	quiet_flag, @object
	.size	quiet_flag, 4
quiet_flag:
	.long	1
.globl pstatic_as_global
	.align 4
	.type	pstatic_as_global, @object
	.size	pstatic_as_global, 4
pstatic_as_global:
	.long	1
.globl time_report
	.bss
	.align 4
	.type	time_report, @object
	.size	time_report, 4
time_report:
	.zero	4
.globl mem_report
	.align 4
	.type	mem_report, @object
	.size	mem_report, 4
mem_report:
	.zero	4
.globl flag_detailed_statistics
	.align 4
	.type	flag_detailed_statistics, @object
	.size	flag_detailed_statistics, 4
flag_detailed_statistics:
	.zero	4
.globl flag_caller_saves
	.align 4
	.type	flag_caller_saves, @object
	.size	flag_caller_saves, 4
flag_caller_saves:
	.zero	4
.globl flag_pcc_struct_return
	.data
	.align 4
	.type	flag_pcc_struct_return, @object
	.size	flag_pcc_struct_return, 4
flag_pcc_struct_return:
	.long	1
.globl flag_force_mem
	.bss
	.align 4
	.type	flag_force_mem, @object
	.size	flag_force_mem, 4
flag_force_mem:
	.zero	4
.globl flag_force_addr
	.align 4
	.type	flag_force_addr, @object
	.size	flag_force_addr, 4
flag_force_addr:
	.zero	4
.globl flag_defer_pop
	.align 4
	.type	flag_defer_pop, @object
	.size	flag_defer_pop, 4
flag_defer_pop:
	.zero	4
.globl flag_float_store
	.align 4
	.type	flag_float_store, @object
	.size	flag_float_store, 4
flag_float_store:
	.zero	4
.globl flag_strength_reduce
	.align 4
	.type	flag_strength_reduce, @object
	.size	flag_strength_reduce, 4
flag_strength_reduce:
	.zero	4
.globl flag_move_all_movables
	.align 4
	.type	flag_move_all_movables, @object
	.size	flag_move_all_movables, 4
flag_move_all_movables:
	.zero	4
.globl flag_reduce_all_givs
	.align 4
	.type	flag_reduce_all_givs, @object
	.size	flag_reduce_all_givs, 4
flag_reduce_all_givs:
	.zero	4
.globl flag_regmove
	.align 4
	.type	flag_regmove, @object
	.size	flag_regmove, 4
flag_regmove:
	.zero	4
.globl flag_writable_strings
	.align 4
	.type	flag_writable_strings, @object
	.size	flag_writable_strings, 4
flag_writable_strings:
	.zero	4
.globl flag_no_function_cse
	.align 4
	.type	flag_no_function_cse, @object
	.size	flag_no_function_cse, 4
flag_no_function_cse:
	.zero	4
.globl flag_omit_frame_pointer
	.align 4
	.type	flag_omit_frame_pointer, @object
	.size	flag_omit_frame_pointer, 4
flag_omit_frame_pointer:
	.zero	4
.globl flag_function_sections
	.align 4
	.type	flag_function_sections, @object
	.size	flag_function_sections, 4
flag_function_sections:
	.zero	4
.globl flag_data_sections
	.align 4
	.type	flag_data_sections, @object
	.size	flag_data_sections, 4
flag_data_sections:
	.zero	4
.globl flag_no_peephole
	.align 4
	.type	flag_no_peephole, @object
	.size	flag_no_peephole, 4
flag_no_peephole:
	.zero	4
.globl flag_optimize_sibling_calls
	.align 4
	.type	flag_optimize_sibling_calls, @object
	.size	flag_optimize_sibling_calls, 4
flag_optimize_sibling_calls:
	.zero	4
.globl flag_errno_math
	.data
	.align 4
	.type	flag_errno_math, @object
	.size	flag_errno_math, 4
flag_errno_math:
	.long	1
.globl flag_unsafe_math_optimizations
	.bss
	.align 4
	.type	flag_unsafe_math_optimizations, @object
	.size	flag_unsafe_math_optimizations, 4
flag_unsafe_math_optimizations:
	.zero	4
.globl flag_finite_math_only
	.align 4
	.type	flag_finite_math_only, @object
	.size	flag_finite_math_only, 4
flag_finite_math_only:
	.zero	4
.globl flag_trapping_math
	.data
	.align 4
	.type	flag_trapping_math, @object
	.size	flag_trapping_math, 4
flag_trapping_math:
	.long	1
.globl flag_signaling_nans
	.bss
	.align 4
	.type	flag_signaling_nans, @object
	.size	flag_signaling_nans, 4
flag_signaling_nans:
	.zero	4
.globl flag_complex_divide_method
	.align 4
	.type	flag_complex_divide_method, @object
	.size	flag_complex_divide_method, 4
flag_complex_divide_method:
	.zero	4
.globl flag_syntax_only
	.align 4
	.type	flag_syntax_only, @object
	.size	flag_syntax_only, 4
flag_syntax_only:
	.zero	4
.globl flag_gcse_lm
	.data
	.align 4
	.type	flag_gcse_lm, @object
	.size	flag_gcse_lm, 4
flag_gcse_lm:
	.long	1
.globl flag_gcse_sm
	.align 4
	.type	flag_gcse_sm, @object
	.size	flag_gcse_sm, 4
flag_gcse_sm:
	.long	1
.globl flag_no_inline
	.align 4
	.type	flag_no_inline, @object
	.size	flag_no_inline, 4
flag_no_inline:
	.long	1
.globl flag_really_no_inline
	.align 4
	.type	flag_really_no_inline, @object
	.size	flag_really_no_inline, 4
flag_really_no_inline:
	.long	2
.globl flag_openmp
	.bss
	.align 4
	.type	flag_openmp, @object
	.size	flag_openmp, 4
flag_openmp:
	.zero	4
.globl flag_keep_static_consts
	.data
	.align 4
	.type	flag_keep_static_consts, @object
	.size	flag_keep_static_consts, 4
flag_keep_static_consts:
	.long	1
.globl flag_gen_aux_info
	.bss
	.align 4
	.type	flag_gen_aux_info, @object
	.size	flag_gen_aux_info, 4
flag_gen_aux_info:
	.zero	4
.globl flag_tls_default
	.data
	.align 4
	.type	flag_tls_default, @object
	.size	flag_tls_default, 4
flag_tls_default:
	.long	1
.globl flag_unwind_tables
	.bss
	.align 4
	.type	flag_unwind_tables, @object
	.size	flag_unwind_tables, 4
flag_unwind_tables:
	.zero	4
.globl flag_asynchronous_unwind_tables
	.align 4
	.type	flag_asynchronous_unwind_tables, @object
	.size	flag_asynchronous_unwind_tables, 4
flag_asynchronous_unwind_tables:
	.zero	4
.globl flag_pedantic_errors
	.align 4
	.type	flag_pedantic_errors, @object
	.size	flag_pedantic_errors, 4
flag_pedantic_errors:
	.zero	4
.globl flag_schedule_insns
	.align 4
	.type	flag_schedule_insns, @object
	.size	flag_schedule_insns, 4
flag_schedule_insns:
	.zero	4
.globl flag_schedule_insns_after_reload
	.align 4
	.type	flag_schedule_insns_after_reload, @object
	.size	flag_schedule_insns_after_reload, 4
flag_schedule_insns_after_reload:
	.zero	4
.globl flag_schedule_interblock
	.data
	.align 4
	.type	flag_schedule_interblock, @object
	.size	flag_schedule_interblock, 4
flag_schedule_interblock:
	.long	1
.globl flag_schedule_speculative
	.align 4
	.type	flag_schedule_speculative, @object
	.size	flag_schedule_speculative, 4
flag_schedule_speculative:
	.long	1
.globl flag_schedule_speculative_load
	.bss
	.align 4
	.type	flag_schedule_speculative_load, @object
	.size	flag_schedule_speculative_load, 4
flag_schedule_speculative_load:
	.zero	4
.globl flag_schedule_speculative_load_dangerous
	.align 4
	.type	flag_schedule_speculative_load_dangerous, @object
	.size	flag_schedule_speculative_load_dangerous, 4
flag_schedule_speculative_load_dangerous:
	.zero	4
.globl flag_branch_on_count_reg
	.data
	.align 4
	.type	flag_branch_on_count_reg, @object
	.size	flag_branch_on_count_reg, 4
flag_branch_on_count_reg:
	.long	1
.globl flag_inhibit_size_directive
	.bss
	.align 4
	.type	flag_inhibit_size_directive, @object
	.size	flag_inhibit_size_directive, 4
flag_inhibit_size_directive:
	.zero	4
.globl flag_verbose_asm
	.align 4
	.type	flag_verbose_asm, @object
	.size	flag_verbose_asm, 4
flag_verbose_asm:
	.zero	4
.globl flag_debug_asm
	.align 4
	.type	flag_debug_asm, @object
	.size	flag_debug_asm, 4
flag_debug_asm:
	.zero	4
.globl flag_bad_asm_constraint_kills_stmt
	.align 4
	.type	flag_bad_asm_constraint_kills_stmt, @object
	.size	flag_bad_asm_constraint_kills_stmt, 4
flag_bad_asm_constraint_kills_stmt:
	.zero	4
.globl flag_dump_rtl_in_asm
	.align 4
	.type	flag_dump_rtl_in_asm, @object
	.size	flag_dump_rtl_in_asm, 4
flag_dump_rtl_in_asm:
	.zero	4
.globl flag_gnu_linker
	.data
	.align 4
	.type	flag_gnu_linker, @object
	.size	flag_gnu_linker, 4
flag_gnu_linker:
	.long	1
.globl flag_zero_initialized_in_bss
	.align 4
	.type	flag_zero_initialized_in_bss, @object
	.size	flag_zero_initialized_in_bss, 4
flag_zero_initialized_in_bss:
	.long	1
.globl flag_ssa
	.bss
	.align 4
	.type	flag_ssa, @object
	.size	flag_ssa, 4
flag_ssa:
	.zero	4
.globl flag_ssa_ccp
	.align 4
	.type	flag_ssa_ccp, @object
	.size	flag_ssa_ccp, 4
flag_ssa_ccp:
	.zero	4
.globl flag_ssa_dce
	.align 4
	.type	flag_ssa_dce, @object
	.size	flag_ssa_dce, 4
flag_ssa_dce:
	.zero	4
.globl flag_pack_struct
	.align 4
	.type	flag_pack_struct, @object
	.size	flag_pack_struct, 4
flag_pack_struct:
	.zero	4
.globl flag_argument_noalias
	.align 4
	.type	flag_argument_noalias, @object
	.size	flag_argument_noalias, 4
flag_argument_noalias:
	.zero	4
.globl flag_strict_aliasing
	.align 4
	.type	flag_strict_aliasing, @object
	.size	flag_strict_aliasing, 4
flag_strict_aliasing:
	.zero	4
.globl flag_instrument_function_entry_exit
	.align 4
	.type	flag_instrument_function_entry_exit, @object
	.size	flag_instrument_function_entry_exit, 4
flag_instrument_function_entry_exit:
	.zero	4
.globl flag_no_ident
	.align 4
	.type	flag_no_ident, @object
	.size	flag_no_ident, 4
flag_no_ident:
	.zero	4
.globl flag_peephole2
	.align 4
	.type	flag_peephole2, @object
	.size	flag_peephole2, 4
flag_peephole2:
	.zero	4
.globl flag_guess_branch_prob
	.align 4
	.type	flag_guess_branch_prob, @object
	.size	flag_guess_branch_prob, 4
flag_guess_branch_prob:
	.zero	4
.globl flag_bounds_check
	.align 4
	.type	flag_bounds_check, @object
	.size	flag_bounds_check, 4
flag_bounds_check:
	.zero	4
.globl flag_merge_constants
	.data
	.align 4
	.type	flag_merge_constants, @object
	.size	flag_merge_constants, 4
flag_merge_constants:
	.long	1
.globl flag_renumber_insns
	.align 4
	.type	flag_renumber_insns, @object
	.size	flag_renumber_insns, 4
flag_renumber_insns:
	.long	1
.globl flag_new_regalloc
	.bss
	.align 4
	.type	flag_new_regalloc, @object
	.size	flag_new_regalloc, 4
flag_new_regalloc:
	.zero	4
.globl flag_honor_shift
	.data
	.align 4
	.type	flag_honor_shift, @object
	.size	flag_honor_shift, 4
flag_honor_shift:
	.long	1
.globl flag_tracer
	.bss
	.align 4
	.type	flag_tracer, @object
	.size	flag_tracer, 4
flag_tracer:
	.zero	4
	.section	.rodata
.LC36:
	.string	""
	.align 4
.LC37:
	.string	"Generate debugging info in default format"
.LC38:
	.string	"gdb"
	.align 4
.LC39:
	.string	"Generate debugging info in default extended format"
.LC40:
	.string	"stabs"
	.align 4
.LC41:
	.string	"Generate STABS format debug info"
.LC42:
	.string	"stabs+"
	.align 4
.LC43:
	.string	"Generate extended STABS format debug info"
.LC44:
	.string	"dwarf"
	.align 4
.LC45:
	.string	"Generate DWARF-1 format debug info"
.LC46:
	.string	"dwarf+"
	.align 4
.LC47:
	.string	"Generate extended DWARF-1 format debug info"
.LC48:
	.string	"dwarf-2"
.LC49:
	.string	"Generate DWARF-2 debug info"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	debug_args, @object
	.size	debug_args, 128
debug_args:
	.long	.LC36
	.long	0
	.long	1
	.long	.LC37
	.long	.LC38
	.long	0
	.long	1
	.long	.LC39
	.long	.LC40
	.long	1
	.long	0
	.long	.LC41
	.long	.LC42
	.long	1
	.long	1
	.long	.LC43
	.long	.LC44
	.long	3
	.long	0
	.long	.LC45
	.long	.LC46
	.long	3
	.long	1
	.long	.LC47
	.long	.LC48
	.long	4
	.long	0
	.long	.LC49
	.long	0
	.long	0
	.long	0
	.long	0
.globl flag_trapv
	.bss
	.align 4
	.type	flag_trapv, @object
	.size	flag_trapv, 4
flag_trapv:
	.zero	4
.globl flag_leading_underscore
	.data
	.align 4
	.type	flag_leading_underscore, @object
	.size	flag_leading_underscore, 4
flag_leading_underscore:
	.long	-1
	.section	.rodata
.LC50:
	.string	"max-inline-insns-single"
	.align 4
.LC51:
	.string	"The maximum number of instructions in a single function eligible for inlining"
.LC52:
	.string	"max-inline-insns-auto"
	.align 4
.LC53:
	.string	"The maximum number of instructions when automatically inlining"
.LC54:
	.string	"max-inline-insns"
	.align 4
.LC55:
	.string	"The maximum number of instructions by repeated inlining before gcc starts to throttle inlining"
.LC56:
	.string	"max-inline-slope"
	.align 4
.LC57:
	.string	"The slope of the linear function throttling inlining after the recursive inlining limit has been reached is given by the negative reciprocal value of this parameter"
.LC58:
	.string	"min-inline-insns"
	.align 4
.LC59:
	.string	"The number of instructions in a single functions still eligible to inlining after a lot recursive inlining"
.LC60:
	.string	"max-inline-insns-rtl"
	.align 4
.LC61:
	.string	"The maximum number of instructions for the RTL inliner"
.LC62:
	.string	"max-delay-slot-insn-search"
	.align 4
.LC63:
	.string	"The maximum number of instructions to consider to fill a delay slot"
.LC64:
	.string	"max-delay-slot-live-search"
	.align 4
.LC65:
	.string	"The maximum number of instructions to consider to find accurate live register information"
.LC66:
	.string	"max-pending-list-length"
	.align 4
.LC67:
	.string	"The maximum length of scheduling's pending operations list"
.LC68:
	.string	"max-gcse-memory"
	.align 4
.LC69:
	.string	"The maximum amount of memory to be allocated by GCSE"
.LC70:
	.string	"max-gcse-passes"
	.align 4
.LC71:
	.string	"The maximum number of passes to make when doing GCSE"
.LC72:
	.string	"max-unrolled-insns"
	.align 4
.LC73:
	.string	"The maximum number of instructions to consider to unroll in a loop"
.LC74:
	.string	"hot-bb-count-fraction"
	.align 4
.LC75:
	.string	"Select fraction of the maximal count of repetitions of basic block in program given basic block needs to have to be considered hot"
.LC76:
	.string	"hot-bb-frequency-fraction"
	.align 4
.LC77:
	.string	"Select fraction of the maximal frequency of executions of basic block in function given basic block needs to have to be considered hot"
	.align 4
.LC78:
	.string	"tracer-dynamic-coverage-feedback"
	.align 4
.LC79:
	.string	"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is available"
.LC80:
	.string	"tracer-dynamic-coverage"
	.align 4
.LC81:
	.string	"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is not available"
.LC82:
	.string	"tracer-max-code-growth"
	.align 4
.LC83:
	.string	"Maximal code growth caused by tail duplication (in percents)"
.LC84:
	.string	"tracer-min-branch-ratio"
	.align 4
.LC85:
	.string	"Stop reverse growth if the reverse probability of best edge is less than this threshold (in percents)"
	.align 4
.LC86:
	.string	"tracer-min-branch-probability-feedback"
	.align 4
.LC87:
	.string	"Stop forward growth if the probability of best edge is less than this threshold (in percents). Used when profile feedback is available"
.LC88:
	.string	"tracer-min-branch-probability"
	.align 4
.LC89:
	.string	"Stop forward growth if the probability of best edge is less than this threshold (in percents). Used when profile feedback is not available"
.LC90:
	.string	"max-crossjump-edges"
	.align 4
.LC91:
	.string	"The maximum number of incoming edges to consider for crossjumping"
.LC92:
	.string	"ggc-min-expand"
	.align 4
.LC93:
	.string	"Minimum heap expansion to trigger garbage collection, as a percentage of the total size of the heap."
.LC94:
	.string	"ggc-min-heapsize"
	.align 4
.LC95:
	.string	"Minimum heap size before we start collecting garbage, in kilobytes."
	.section	.data.rel.ro.local
	.align 32
	.type	lang_independent_params, @object
	.size	lang_independent_params, 288
lang_independent_params:
	.long	.LC50
	.long	300
	.long	.LC51
	.long	.LC52
	.long	300
	.long	.LC53
	.long	.LC54
	.long	600
	.long	.LC55
	.long	.LC56
	.long	32
	.long	.LC57
	.long	.LC58
	.long	130
	.long	.LC59
	.long	.LC60
	.long	600
	.long	.LC61
	.long	.LC62
	.long	100
	.long	.LC63
	.long	.LC64
	.long	333
	.long	.LC65
	.long	.LC66
	.long	32
	.long	.LC67
	.long	.LC68
	.long	52428800
	.long	.LC69
	.long	.LC70
	.long	1
	.long	.LC71
	.long	.LC72
	.long	100
	.long	.LC73
	.long	.LC74
	.long	10000
	.long	.LC75
	.long	.LC76
	.long	1000
	.long	.LC77
	.long	.LC78
	.long	95
	.long	.LC79
	.long	.LC80
	.long	75
	.long	.LC81
	.long	.LC82
	.long	100
	.long	.LC83
	.long	.LC84
	.long	10
	.long	.LC85
	.long	.LC86
	.long	30
	.long	.LC87
	.long	.LC88
	.long	50
	.long	.LC89
	.long	.LC90
	.long	100
	.long	.LC91
	.long	.LC92
	.long	30
	.long	.LC93
	.long	.LC94
	.long	4096
	.long	.LC95
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC96:
	.string	"eliminate-dwarf2-dups"
	.align 4
.LC97:
	.string	"Perform DWARF2 duplicate elimination"
.LC98:
	.string	"float-store"
	.align 4
.LC99:
	.string	"Do not store floats in registers"
.LC100:
	.string	"volatile"
	.align 4
.LC101:
	.string	"Consider all mem refs through pointers as volatile"
.LC102:
	.string	"volatile-global"
	.align 4
.LC103:
	.string	"Consider all mem refs to global data to be volatile"
.LC104:
	.string	"volatile-static"
	.align 4
.LC105:
	.string	"Consider all mem refs to static data to be volatile"
.LC106:
	.string	"defer-pop"
	.align 4
.LC107:
	.string	"Defer popping functions args from stack until later"
.LC108:
	.string	"omit-frame-pointer"
	.align 4
.LC109:
	.string	"When possible do not generate stack frames"
.LC110:
	.string	"optimize-sibling-calls"
	.align 4
.LC111:
	.string	"Optimize sibling and tail recursive calls"
	.align 4
.LC112:
	.string	"Perform superblock formation via tail duplication"
.LC113:
	.string	"cse-follow-jumps"
	.align 4
.LC114:
	.string	"When running CSE, follow jumps to their targets"
.LC115:
	.string	"cse-skip-blocks"
	.align 4
.LC116:
	.string	"When running CSE, follow conditional jumps"
.LC117:
	.string	"expensive-optimizations"
	.align 4
.LC118:
	.string	"Perform a number of minor, expensive optimizations"
.LC119:
	.string	"thread-jumps"
	.align 4
.LC120:
	.string	"Perform jump threading optimizations"
.LC121:
	.string	"strength-reduce"
	.align 4
.LC122:
	.string	"Perform strength reduction optimizations"
.LC123:
	.string	"unroll-loops"
	.align 4
.LC124:
	.string	"Perform loop unrolling when iteration count is known"
.LC125:
	.string	"unroll-all-loops"
	.align 4
.LC126:
	.string	"Perform loop unrolling for all loops"
.LC127:
	.string	"prefetch-loop-arrays"
	.align 4
.LC128:
	.string	"Generate prefetch instructions, if available, for arrays in loops"
.LC129:
	.string	"move-all-movables"
	.align 4
.LC130:
	.string	"Force all loop invariant computations out of loops"
.LC131:
	.string	"reduce-all-givs"
	.align 4
.LC132:
	.string	"Strength reduce all loop general induction variables"
.LC133:
	.string	"writable-strings"
	.align 4
.LC134:
	.string	"Store strings in writable data section"
.LC135:
	.string	"peephole"
	.align 4
.LC136:
	.string	"Enable machine specific peephole optimizations"
.LC137:
	.string	"force-mem"
	.align 4
.LC138:
	.string	"Copy memory operands into registers before using"
.LC139:
	.string	"force-addr"
	.align 4
.LC140:
	.string	"Copy memory address constants into regs before using"
.LC141:
	.string	"function-cse"
	.align 4
.LC142:
	.string	"Allow function addresses to be held in registers"
.LC143:
	.string	"inline-functions"
	.align 4
.LC144:
	.string	"Integrate simple functions into their callers"
.LC145:
	.string	"keep-inline-functions"
	.align 4
.LC146:
	.string	"Generate code for funcs even if they are fully inlined"
.LC147:
	.string	"inline"
	.align 4
.LC148:
	.string	"Pay attention to the 'inline' keyword"
.LC149:
	.string	"keep-static-consts"
	.align 4
.LC150:
	.string	"Emit static const variables even if they are not used"
.LC151:
	.string	"syntax-only"
	.align 4
.LC152:
	.string	"Check for syntax errors, then stop"
.LC153:
	.string	"shared-data"
	.align 4
.LC154:
	.string	"Mark data as shared rather than private"
.LC155:
	.string	"caller-saves"
	.align 4
.LC156:
	.string	"Enable saving registers around function calls"
.LC157:
	.string	"pcc-struct-return"
	.align 4
.LC158:
	.string	"Return 'short' aggregates in memory, not registers"
.LC159:
	.string	"reg-struct-return"
	.align 4
.LC160:
	.string	"Return 'short' aggregates in registers"
.LC161:
	.string	"delayed-branch"
	.align 4
.LC162:
	.string	"Attempt to fill delay slots of branch instructions"
	.align 4
.LC163:
	.string	"Perform the global common subexpression elimination"
.LC164:
	.string	"gcse-lm"
	.align 4
.LC165:
	.string	"Perform enhanced load motion during global subexpression elimination"
.LC166:
	.string	"gcse-sm"
	.align 4
.LC167:
	.string	"Perform store motion after global subexpression elimination"
.LC168:
	.string	"loop-optimize"
	.align 4
.LC169:
	.string	"Perform the loop optimizations"
.LC170:
	.string	"crossjumping"
	.align 4
.LC171:
	.string	"Perform cross-jumping optimization"
.LC172:
	.string	"if-conversion"
	.align 4
.LC173:
	.string	"Perform conversion of conditional jumps to branchless equivalents"
.LC174:
	.string	"if-conversion2"
	.align 4
.LC175:
	.string	"Perform conversion of conditional jumps to conditional execution"
.LC176:
	.string	"rerun-cse-after-loop"
	.align 4
.LC177:
	.string	"Run CSE pass after loop optimizations"
.LC178:
	.string	"rerun-loop-opt"
.LC179:
	.string	"Run the loop optimizer twice"
.LC180:
	.string	"delete-null-pointer-checks"
	.align 4
.LC181:
	.string	"Delete useless null pointer checks"
.LC182:
	.string	"schedule-insns"
	.align 4
.LC183:
	.string	"Reschedule instructions before register allocation"
.LC184:
	.string	"schedule-insns2"
	.align 4
.LC185:
	.string	"Reschedule instructions after register allocation"
.LC186:
	.string	"sched-interblock"
	.align 4
.LC187:
	.string	"Enable scheduling across basic blocks"
.LC188:
	.string	"sched-spec"
	.align 4
.LC189:
	.string	"Allow speculative motion of non-loads"
.LC190:
	.string	"sched-spec-load"
	.align 4
.LC191:
	.string	"Allow speculative motion of some loads"
.LC192:
	.string	"sched-spec-load-dangerous"
	.align 4
.LC193:
	.string	"Allow speculative motion of more loads"
.LC194:
	.string	"branch-count-reg"
	.align 4
.LC195:
	.string	"Replace add,compare,branch with branch on count reg"
.LC196:
	.string	"pic"
	.align 4
.LC197:
	.string	"Generate position independent code, if possible"
.LC198:
	.string	"PIC"
.LC199:
	.string	"pie"
	.align 4
.LC200:
	.string	"Generate position independent code for executables, if possible"
.LC201:
	.string	"PIE"
.LC202:
	.string	"exceptions"
.LC203:
	.string	"Enable exception handling"
.LC204:
	.string	"optimize-regions"
.LC205:
	.string	"Optimize EH region formation"
.LC206:
	.string	"unwind-tables"
	.align 4
.LC207:
	.string	"Just generate unwind tables for exception handling"
.LC208:
	.string	"asynchronous-unwind-tables"
	.align 4
.LC209:
	.string	"Generate unwind tables exact at each instruction boundary"
.LC210:
	.string	"non-call-exceptions"
	.align 4
.LC211:
	.string	"Support synchronous non-call exceptions"
.LC212:
	.string	"profile-arcs"
	.align 4
.LC213:
	.string	"Insert arc based program profiling code"
.LC214:
	.string	"test-coverage"
	.align 4
.LC215:
	.string	"Create data files needed by gcov"
.LC216:
	.string	"branch-probabilities"
	.align 4
.LC217:
	.string	"Use profiling information for branch probabilities"
.LC218:
	.string	"profile"
	.align 4
.LC219:
	.string	"Enable basic program profiling code"
.LC220:
	.string	"reorder-blocks"
	.align 4
.LC221:
	.string	"Reorder basic blocks to improve code placement"
.LC222:
	.string	"reorder-functions"
	.align 4
.LC223:
	.string	"Reorder functions to improve code placement"
.LC224:
	.string	"rename-registers"
	.align 4
.LC225:
	.string	"Do the register renaming optimization pass"
.LC226:
	.string	"cprop-registers"
	.align 4
.LC227:
	.string	"Do the register copy-propagation optimization pass"
.LC228:
	.string	"common"
	.align 4
.LC229:
	.string	"Do not put uninitialized globals in the common section"
.LC230:
	.string	"inhibit-size-directive"
	.align 4
.LC231:
	.string	"Do not generate .size directives"
.LC232:
	.string	"function-sections"
	.align 4
.LC233:
	.string	"place each function into its own section"
.LC234:
	.string	"data-sections"
	.align 4
.LC235:
	.string	"place data items into their own section"
.LC236:
	.string	"verbose-asm"
	.align 4
.LC237:
	.string	"Add extra commentary to assembler output"
.LC238:
	.string	"gnu-linker"
	.align 4
.LC239:
	.string	"Output GNU ld formatted global initializers"
	.align 4
.LC240:
	.string	"Enables a register move optimization"
.LC241:
	.string	"optimize-register-move"
	.align 4
.LC242:
	.string	"Do the full regmove optimization pass"
.LC243:
	.string	"pack-struct"
	.align 4
.LC244:
	.string	"Pack structure members together without holes"
.LC245:
	.string	"stack-check"
	.align 4
.LC246:
	.string	"Insert stack checking code into the program"
.LC247:
	.string	"argument-alias"
	.align 4
.LC248:
	.string	"Specify that arguments may alias each other & globals"
.LC249:
	.string	"argument-noalias"
	.align 4
.LC250:
	.string	"Assume arguments may alias globals but not each other"
.LC251:
	.string	"argument-noalias-global"
	.align 4
.LC252:
	.string	"Assume arguments do not alias each other or globals"
.LC253:
	.string	"strict-aliasing"
	.align 4
.LC254:
	.string	"Assume strict aliasing rules apply"
.LC255:
	.string	"align-loops"
.LC256:
	.string	"Align the start of loops"
.LC257:
	.string	"align-jumps"
	.align 4
.LC258:
	.string	"Align labels which are only reached by jumping"
.LC259:
	.string	"align-labels"
.LC260:
	.string	"Align all labels"
.LC261:
	.string	"align-functions"
.LC262:
	.string	"Align the start of functions"
.LC263:
	.string	"merge-constants"
	.align 4
.LC264:
	.string	"Attempt to merge identical constants across compilation units"
.LC265:
	.string	"merge-all-constants"
	.align 4
.LC266:
	.string	"Attempt to merge identical constants and constant variables"
.LC267:
	.string	"dump-unnumbered"
	.align 4
.LC268:
	.string	"Suppress output of instruction numbers and line number notes in debugging dumps"
.LC269:
	.string	"instrument-functions"
	.align 4
.LC270:
	.string	"Instrument function entry/exit with profiling calls"
.LC271:
	.string	"zero-initialized-in-bss"
	.align 4
.LC272:
	.string	"Put zero initialized data in the bss section"
.LC273:
	.string	"Enable SSA optimizations"
.LC274:
	.string	"ssa-ccp"
	.align 4
.LC275:
	.string	"Enable SSA conditional constant propagation"
.LC276:
	.string	"ssa-dce"
	.align 4
.LC277:
	.string	"Enable aggressive SSA dead code elimination"
.LC278:
	.string	"leading-underscore"
	.align 4
.LC279:
	.string	"External symbols have a leading underscore"
.LC280:
	.string	"ident"
.LC281:
	.string	"Process #ident directives"
	.align 4
.LC282:
	.string	"Enables an rtl peephole pass run before sched2"
.LC283:
	.string	"finite-math-only"
	.align 4
.LC284:
	.string	"Assume no NaNs or +-Infs are generated"
.LC285:
	.string	"guess-branch-probability"
	.align 4
.LC286:
	.string	"Enables guessing of branch probabilities"
.LC287:
	.string	"math-errno"
	.align 4
.LC288:
	.string	"Set errno after built-in math functions"
.LC289:
	.string	"trapping-math"
	.align 4
.LC290:
	.string	"Floating-point operations can trap"
.LC291:
	.string	"unsafe-math-optimizations"
	.align 4
.LC292:
	.string	"Allow math optimizations that may violate IEEE or ANSI standards"
.LC293:
	.string	"signaling-nans"
	.align 4
.LC294:
	.string	"Disable optimizations observable by IEEE signaling NaNs"
.LC295:
	.string	"bounds-check"
	.align 4
.LC296:
	.string	"Generate code to check bounds before indexing arrays"
.LC297:
	.string	"single-precision-constant"
	.align 4
.LC298:
	.string	"Convert floating point constant to single precision constant"
.LC299:
	.string	"time-report"
	.align 4
.LC300:
	.string	"Report time taken by each compiler pass at end of run"
.LC301:
	.string	"mem-report"
	.align 4
.LC302:
	.string	"Report on permanent memory allocation at end of run"
.LC303:
	.string	"trapv"
	.align 4
.LC304:
	.string	"Trap for signed overflow in addition / subtraction / multiplication"
.LC305:
	.string	"new-ra"
	.align 4
.LC306:
	.string	"Use graph coloring register allocation."
.LC307:
	.string	"honor-shift"
	.align 4
.LC308:
	.string	"Retain shift operation as specified by the user."
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	f_options, @object
	.size	f_options, 1760
f_options:
	.long	.LC96
	.long	flag_eliminate_dwarf2_dups
	.long	1
	.long	.LC97
	.long	.LC98
	.long	flag_float_store
	.long	1
	.long	.LC99
	.long	.LC100
	.long	flag_volatile
	.long	1
	.long	.LC101
	.long	.LC102
	.long	flag_volatile_global
	.long	1
	.long	.LC103
	.long	.LC104
	.long	flag_volatile_static
	.long	1
	.long	.LC105
	.long	.LC106
	.long	flag_defer_pop
	.long	1
	.long	.LC107
	.long	.LC108
	.long	flag_omit_frame_pointer
	.long	1
	.long	.LC109
	.long	.LC110
	.long	flag_optimize_sibling_calls
	.long	1
	.long	.LC111
	.long	.LC16
	.long	flag_tracer
	.long	1
	.long	.LC112
	.long	.LC113
	.long	flag_cse_follow_jumps
	.long	1
	.long	.LC114
	.long	.LC115
	.long	flag_cse_skip_blocks
	.long	1
	.long	.LC116
	.long	.LC117
	.long	flag_expensive_optimizations
	.long	1
	.long	.LC118
	.long	.LC119
	.long	flag_thread_jumps
	.long	1
	.long	.LC120
	.long	.LC121
	.long	flag_strength_reduce
	.long	1
	.long	.LC122
	.long	.LC123
	.long	flag_unroll_loops
	.long	1
	.long	.LC124
	.long	.LC125
	.long	flag_unroll_all_loops
	.long	1
	.long	.LC126
	.long	.LC127
	.long	flag_prefetch_loop_arrays
	.long	1
	.long	.LC128
	.long	.LC129
	.long	flag_move_all_movables
	.long	1
	.long	.LC130
	.long	.LC131
	.long	flag_reduce_all_givs
	.long	1
	.long	.LC132
	.long	.LC133
	.long	flag_writable_strings
	.long	1
	.long	.LC134
	.long	.LC135
	.long	flag_no_peephole
	.long	0
	.long	.LC136
	.long	.LC137
	.long	flag_force_mem
	.long	1
	.long	.LC138
	.long	.LC139
	.long	flag_force_addr
	.long	1
	.long	.LC140
	.long	.LC141
	.long	flag_no_function_cse
	.long	0
	.long	.LC142
	.long	.LC143
	.long	flag_inline_functions
	.long	1
	.long	.LC144
	.long	.LC145
	.long	flag_keep_inline_functions
	.long	1
	.long	.LC146
	.long	.LC147
	.long	flag_no_inline
	.long	0
	.long	.LC148
	.long	.LC149
	.long	flag_keep_static_consts
	.long	1
	.long	.LC150
	.long	.LC151
	.long	flag_syntax_only
	.long	1
	.long	.LC152
	.long	.LC153
	.long	flag_shared_data
	.long	1
	.long	.LC154
	.long	.LC155
	.long	flag_caller_saves
	.long	1
	.long	.LC156
	.long	.LC157
	.long	flag_pcc_struct_return
	.long	1
	.long	.LC158
	.long	.LC159
	.long	flag_pcc_struct_return
	.long	0
	.long	.LC160
	.long	.LC161
	.long	flag_delayed_branch
	.long	1
	.long	.LC162
	.long	.LC11
	.long	flag_gcse
	.long	1
	.long	.LC163
	.long	.LC164
	.long	flag_gcse_lm
	.long	1
	.long	.LC165
	.long	.LC166
	.long	flag_gcse_sm
	.long	1
	.long	.LC167
	.long	.LC168
	.long	flag_loop_optimize
	.long	1
	.long	.LC169
	.long	.LC170
	.long	flag_crossjumping
	.long	1
	.long	.LC171
	.long	.LC172
	.long	flag_if_conversion
	.long	1
	.long	.LC173
	.long	.LC174
	.long	flag_if_conversion2
	.long	1
	.long	.LC175
	.long	.LC176
	.long	flag_rerun_cse_after_loop
	.long	1
	.long	.LC177
	.long	.LC178
	.long	flag_rerun_loop_opt
	.long	1
	.long	.LC179
	.long	.LC180
	.long	flag_delete_null_pointer_checks
	.long	1
	.long	.LC181
	.long	.LC182
	.long	flag_schedule_insns
	.long	1
	.long	.LC183
	.long	.LC184
	.long	flag_schedule_insns_after_reload
	.long	1
	.long	.LC185
	.long	.LC186
	.long	flag_schedule_interblock
	.long	1
	.long	.LC187
	.long	.LC188
	.long	flag_schedule_speculative
	.long	1
	.long	.LC189
	.long	.LC190
	.long	flag_schedule_speculative_load
	.long	1
	.long	.LC191
	.long	.LC192
	.long	flag_schedule_speculative_load_dangerous
	.long	1
	.long	.LC193
	.long	.LC194
	.long	flag_branch_on_count_reg
	.long	1
	.long	.LC195
	.long	.LC196
	.long	flag_pic
	.long	1
	.long	.LC197
	.long	.LC198
	.long	flag_pic
	.long	2
	.long	.LC36
	.long	.LC199
	.long	flag_pie
	.long	1
	.long	.LC200
	.long	.LC201
	.long	flag_pie
	.long	2
	.long	.LC36
	.long	.LC202
	.long	key_exceptions
	.long	1
	.long	.LC203
	.long	.LC204
	.long	opt_regions
	.long	1
	.long	.LC205
	.long	.LC206
	.long	flag_unwind_tables
	.long	1
	.long	.LC207
	.long	.LC208
	.long	flag_asynchronous_unwind_tables
	.long	1
	.long	.LC209
	.long	.LC210
	.long	flag_non_call_exceptions
	.long	1
	.long	.LC211
	.long	.LC212
	.long	profile_arc_flag
	.long	1
	.long	.LC213
	.long	.LC214
	.long	flag_test_coverage
	.long	1
	.long	.LC215
	.long	.LC216
	.long	flag_branch_probabilities
	.long	1
	.long	.LC217
	.long	.LC218
	.long	profile_flag
	.long	1
	.long	.LC219
	.long	.LC220
	.long	flag_reorder_blocks
	.long	1
	.long	.LC221
	.long	.LC222
	.long	flag_reorder_functions
	.long	1
	.long	.LC223
	.long	.LC224
	.long	flag_rename_registers
	.long	1
	.long	.LC225
	.long	.LC226
	.long	flag_cprop_registers
	.long	1
	.long	.LC227
	.long	.LC228
	.long	flag_no_common
	.long	0
	.long	.LC229
	.long	.LC230
	.long	flag_inhibit_size_directive
	.long	1
	.long	.LC231
	.long	.LC232
	.long	flag_function_sections
	.long	1
	.long	.LC233
	.long	.LC234
	.long	flag_data_sections
	.long	1
	.long	.LC235
	.long	.LC236
	.long	flag_verbose_asm
	.long	1
	.long	.LC237
	.long	.LC238
	.long	flag_gnu_linker
	.long	1
	.long	.LC239
	.long	.LC21
	.long	flag_regmove
	.long	1
	.long	.LC240
	.long	.LC241
	.long	flag_regmove
	.long	1
	.long	.LC242
	.long	.LC243
	.long	flag_pack_struct
	.long	1
	.long	.LC244
	.long	.LC245
	.long	flag_stack_check
	.long	1
	.long	.LC246
	.long	.LC247
	.long	flag_argument_noalias
	.long	0
	.long	.LC248
	.long	.LC249
	.long	flag_argument_noalias
	.long	1
	.long	.LC250
	.long	.LC251
	.long	flag_argument_noalias
	.long	2
	.long	.LC252
	.long	.LC253
	.long	flag_strict_aliasing
	.long	1
	.long	.LC254
	.long	.LC255
	.long	align_loops
	.long	0
	.long	.LC256
	.long	.LC257
	.long	align_jumps
	.long	0
	.long	.LC258
	.long	.LC259
	.long	align_labels
	.long	0
	.long	.LC260
	.long	.LC261
	.long	align_functions
	.long	0
	.long	.LC262
	.long	.LC263
	.long	flag_merge_constants
	.long	1
	.long	.LC264
	.long	.LC265
	.long	flag_merge_constants
	.long	2
	.long	.LC266
	.long	.LC267
	.long	flag_dump_unnumbered
	.long	1
	.long	.LC268
	.long	.LC269
	.long	flag_instrument_function_entry_exit
	.long	1
	.long	.LC270
	.long	.LC271
	.long	flag_zero_initialized_in_bss
	.long	1
	.long	.LC272
	.long	.LC4
	.long	flag_ssa
	.long	1
	.long	.LC273
	.long	.LC274
	.long	flag_ssa_ccp
	.long	1
	.long	.LC275
	.long	.LC276
	.long	flag_ssa_dce
	.long	1
	.long	.LC277
	.long	.LC278
	.long	flag_leading_underscore
	.long	1
	.long	.LC279
	.long	.LC280
	.long	flag_no_ident
	.long	0
	.long	.LC281
	.long	.LC27
	.long	flag_peephole2
	.long	1
	.long	.LC282
	.long	.LC283
	.long	flag_finite_math_only
	.long	1
	.long	.LC284
	.long	.LC285
	.long	flag_guess_branch_prob
	.long	1
	.long	.LC286
	.long	.LC287
	.long	flag_errno_math
	.long	1
	.long	.LC288
	.long	.LC289
	.long	flag_trapping_math
	.long	1
	.long	.LC290
	.long	.LC291
	.long	flag_unsafe_math_optimizations
	.long	1
	.long	.LC292
	.long	.LC293
	.long	flag_signaling_nans
	.long	1
	.long	.LC294
	.long	.LC295
	.long	flag_bounds_check
	.long	1
	.long	.LC296
	.long	.LC297
	.long	flag_single_precision_constant
	.long	1
	.long	.LC298
	.long	.LC299
	.long	time_report
	.long	1
	.long	.LC300
	.long	.LC301
	.long	mem_report
	.long	1
	.long	.LC302
	.long	.LC303
	.long	flag_trapv
	.long	1
	.long	.LC304
	.long	.LC305
	.long	flag_new_regalloc
	.long	1
	.long	.LC306
	.long	.LC307
	.long	flag_honor_shift
	.long	1
	.long	.LC308
	.section	.rodata
.LC309:
	.string	"-ansi"
.LC310:
	.string	"Compile just for ISO C90"
.LC311:
	.string	"-std= "
.LC312:
	.string	"Determine language standard"
.LC313:
	.string	"-fsigned-bitfields"
.LC314:
	.string	"-funsigned-bitfields"
	.align 4
.LC315:
	.string	"Make bit-fields by unsigned by default"
.LC316:
	.string	"-fno-signed-bitfields"
.LC317:
	.string	"-fno-unsigned-bitfields"
.LC318:
	.string	"-fsigned-char"
	.align 4
.LC319:
	.string	"Make 'char' be signed by default"
.LC320:
	.string	"-funsigned-char"
	.align 4
.LC321:
	.string	"Make 'char' be unsigned by default"
.LC322:
	.string	"-fno-signed-char"
.LC323:
	.string	"-fno-unsigned-char"
.LC324:
	.string	"-fasm"
.LC325:
	.string	"-fno-asm"
	.align 4
.LC326:
	.string	"Do not recognize the 'asm' keyword"
.LC327:
	.string	"-fbuiltin"
.LC328:
	.string	"-fno-builtin"
	.align 4
.LC329:
	.string	"Do not recognize any built in functions"
.LC330:
	.string	"-fhosted"
	.align 4
.LC331:
	.string	"Assume normal C execution environment"
.LC332:
	.string	"-fno-hosted"
.LC333:
	.string	"-ffreestanding"
	.align 4
.LC334:
	.string	"Assume that standard libraries & main might not exist"
.LC335:
	.string	"-fno-freestanding"
.LC336:
	.string	"-fcond-mismatch"
	.align 4
.LC337:
	.string	"Allow different types as args of ? operator"
.LC338:
	.string	"-fno-cond-mismatch"
.LC339:
	.string	"-fdollars-in-identifiers"
	.align 4
.LC340:
	.string	"Allow the use of $ inside identifiers"
.LC341:
	.string	"-fno-dollars-in-identifiers"
.LC342:
	.string	"-fpreprocessed"
.LC343:
	.string	"-fno-preprocessed"
.LC344:
	.string	"-fshort-double"
	.align 4
.LC345:
	.string	"Use the same size for double as for float"
.LC346:
	.string	"-fno-short-double"
.LC347:
	.string	"-fshort-enums"
	.align 4
.LC348:
	.string	"Use the smallest fitting integer to hold enums"
.LC349:
	.string	"-fno-short-enums"
.LC350:
	.string	"-fshort-wchar"
	.align 4
.LC351:
	.string	"Override the underlying type for wchar_t to `unsigned short'"
.LC352:
	.string	"-fno-short-wchar"
.LC353:
	.string	"-Wall"
.LC354:
	.string	"Enable most warning messages"
.LC355:
	.string	"-Wbad-function-cast"
	.align 4
.LC356:
	.string	"Warn about casting functions to incompatible types"
.LC357:
	.string	"-Wno-bad-function-cast"
.LC358:
	.string	"-Wmissing-format-attribute"
	.align 4
.LC359:
	.string	"Warn about functions which might be candidates for format attributes"
.LC360:
	.string	"-Wno-missing-format-attribute"
.LC361:
	.string	"-Wcast-qual"
	.align 4
.LC362:
	.string	"Warn about casts which discard qualifiers"
.LC363:
	.string	"-Wno-cast-qual"
.LC364:
	.string	"-Wchar-subscripts"
	.align 4
.LC365:
	.string	"Warn about subscripts whose type is 'char'"
.LC366:
	.string	"-Wno-char-subscripts"
.LC367:
	.string	"-Wcomment"
	.align 4
.LC368:
	.string	"Warn if nested comments are detected"
.LC369:
	.string	"-Wno-comment"
.LC370:
	.string	"-Wcomments"
.LC371:
	.string	"-Wno-comments"
.LC372:
	.string	"-Wconversion"
	.align 4
.LC373:
	.string	"Warn about possibly confusing type conversions"
.LC374:
	.string	"-Wno-conversion"
.LC375:
	.string	"-Wdeclaration-after-statement"
	.align 4
.LC376:
	.string	"Warn when a declaration is found after a statement"
	.align 4
.LC377:
	.string	"-Wno-declaration-after-statement"
.LC378:
	.string	"-Wdiv-by-zero"
.LC379:
	.string	"-Wno-div-by-zero"
	.align 4
.LC380:
	.string	"Do not warn about compile-time integer division by zero"
.LC381:
	.string	"-Wfloat-equal"
	.align 4
.LC382:
	.string	"Warn about testing equality of floating point numbers"
.LC383:
	.string	"-Wno-float-equal"
.LC384:
	.string	"-Wformat"
	.align 4
.LC385:
	.string	"Warn about printf/scanf/strftime/strfmon format anomalies"
.LC386:
	.string	"-Wno-format"
.LC387:
	.string	"-Wformat-extra-args"
.LC388:
	.string	"-Wno-format-extra-args"
	.align 4
.LC389:
	.string	"Don't warn about too many arguments to format functions"
.LC390:
	.string	"-Wformat-nonliteral"
	.align 4
.LC391:
	.string	"Warn about non-string-literal format strings"
.LC392:
	.string	"-Wno-format-nonliteral"
.LC393:
	.string	"-Wformat-security"
	.align 4
.LC394:
	.string	"Warn about possible security problems with format functions"
.LC395:
	.string	"-Wno-format-security"
.LC396:
	.string	"-Wformat-y2k"
.LC397:
	.string	"-Wno-format-y2k"
	.align 4
.LC398:
	.string	"Don't warn about strftime formats yielding 2 digit years"
	.align 4
.LC399:
	.string	"-Wimplicit-function-declaration"
	.align 4
.LC400:
	.string	"Warn about implicit function declarations"
	.align 4
.LC401:
	.string	"-Wno-implicit-function-declaration"
	.align 4
.LC402:
	.string	"-Werror-implicit-function-declaration"
.LC403:
	.string	"-Wimplicit-int"
	.align 4
.LC404:
	.string	"Warn when a declaration does not specify a type"
.LC405:
	.string	"-Wno-implicit-int"
.LC406:
	.string	"-Wimplicit"
.LC407:
	.string	"-Wno-implicit"
.LC408:
	.string	"-Wimport"
	.align 4
.LC409:
	.string	"Warn about the use of the #import directive"
.LC410:
	.string	"-Wno-import"
.LC411:
	.string	"-Wlong-long"
.LC412:
	.string	"-Wno-long-long"
	.align 4
.LC413:
	.string	"Do not warn about using 'long long' when -pedantic"
.LC414:
	.string	"-Wmain"
	.align 4
.LC415:
	.string	"Warn about suspicious declarations of main"
.LC416:
	.string	"-Wno-main"
.LC417:
	.string	"-Wmissing-braces"
	.align 4
.LC418:
	.string	"Warn about possibly missing braces around initializers"
.LC419:
	.string	"-Wno-missing-braces"
.LC420:
	.string	"-Wmissing-declarations"
	.align 4
.LC421:
	.string	"Warn about global funcs without previous declarations"
.LC422:
	.string	"-Wno-missing-declarations"
.LC423:
	.string	"-Wmissing-prototypes"
	.align 4
.LC424:
	.string	"Warn about global funcs without prototypes"
.LC425:
	.string	"-Wno-missing-prototypes"
.LC426:
	.string	"-Wmultichar"
	.align 4
.LC427:
	.string	"Warn about use of multicharacter literals"
.LC428:
	.string	"-Wno-multichar"
.LC429:
	.string	"-Wnested-externs"
	.align 4
.LC430:
	.string	"Warn about externs not at file scope level"
.LC431:
	.string	"-Wno-nested-externs"
.LC432:
	.string	"-Wparentheses"
	.align 4
.LC433:
	.string	"Warn about possible missing parentheses"
.LC434:
	.string	"-Wno-parentheses"
.LC435:
	.string	"-Wpointer-arith"
	.align 4
.LC436:
	.string	"Warn about function pointer arithmetic"
.LC437:
	.string	"-Wno-pointer-arith"
.LC438:
	.string	"-Wredundant-decls"
	.align 4
.LC439:
	.string	"Warn about multiple declarations of the same object"
.LC440:
	.string	"-Wno-redundant-decls"
.LC441:
	.string	"-Wreturn-type"
	.align 4
.LC442:
	.string	"Warn whenever a function's return-type defaults to int"
.LC443:
	.string	"-Wno-return-type"
.LC444:
	.string	"-Wsequence-point"
	.align 4
.LC445:
	.string	"Warn about possible violations of sequence point rules"
.LC446:
	.string	"-Wno-sequence-point"
.LC447:
	.string	"-Wsign-compare"
	.align 4
.LC448:
	.string	"Warn about signed/unsigned comparisons"
.LC449:
	.string	"-Wno-sign-compare"
.LC450:
	.string	"-Wstrict-prototypes"
	.align 4
.LC451:
	.string	"Warn about non-prototyped function decls"
.LC452:
	.string	"-Wno-strict-prototypes"
.LC453:
	.string	"-Wtraditional"
	.align 4
.LC454:
	.string	"Warn about constructs whose meanings change in ISO C"
.LC455:
	.string	"-Wno-traditional"
.LC456:
	.string	"-Wtrigraphs"
	.align 4
.LC457:
	.string	"Warn when trigraphs are encountered"
.LC458:
	.string	"-Wno-trigraphs"
.LC459:
	.string	"-Wundef"
.LC460:
	.string	"-Wno-undef"
.LC461:
	.string	"-Wunknown-pragmas"
	.align 4
.LC462:
	.string	"Warn about unrecognized pragmas"
.LC463:
	.string	"-Wno-unknown-pragmas"
.LC464:
	.string	"-Wwrite-strings"
	.align 4
.LC465:
	.string	"Mark strings as 'const char *'"
.LC466:
	.string	"-Wno-write-strings"
.LC467:
	.string	"C++"
.LC468:
	.string	"-faccess-control"
.LC469:
	.string	"-fno-access-control"
	.align 4
.LC470:
	.string	"Do not obey access control semantics"
.LC471:
	.string	"-falt-external-templates"
	.align 4
.LC472:
	.string	"Change when template instances are emitted"
.LC473:
	.string	"-fno-alt-external-templates"
.LC474:
	.string	"-fansi-overloading"
.LC475:
	.string	"-fno-ansi-overloading"
.LC476:
	.string	"-fcheck-new"
.LC477:
	.string	"Check the return value of new"
.LC478:
	.string	"-fno-check-new"
.LC479:
	.string	"-fconserve-space"
.LC480:
	.string	"Reduce size of object files"
.LC481:
	.string	"-fno-conserve-space"
.LC482:
	.string	"-fconst-strings"
.LC483:
	.string	"-fno-const-strings"
	.align 4
.LC484:
	.string	"Make string literals `char[]' instead of `const char[]'"
.LC485:
	.string	"-fdefault-inline"
.LC486:
	.string	"-fdump-translation-unit-"
	.align 4
.LC487:
	.string	"Dump the entire translation unit to a file"
.LC488:
	.string	"-fno-default-inline"
	.align 4
.LC489:
	.string	"Do not inline member functions by default"
.LC490:
	.string	"-frtti"
.LC491:
	.string	"-fno-rtti"
	.align 4
.LC492:
	.string	"Do not generate run time type descriptor information"
.LC493:
	.string	"-felide-constructors"
.LC494:
	.string	"-fno-elide-constructors"
.LC495:
	.string	"-fenforce-eh-specs"
.LC496:
	.string	"-fno-enforce-eh-specs"
	.align 4
.LC497:
	.string	"Do not generate code to check exception specifications"
.LC498:
	.string	"-fexternal-templates"
.LC499:
	.string	"-fno-external-templates"
.LC500:
	.string	"-ffor-scope"
.LC501:
	.string	"-fno-for-scope"
	.align 4
.LC502:
	.string	"Scope of for-init-statement vars extends outside"
.LC503:
	.string	"-fgnu-keywords"
.LC504:
	.string	"-fno-gnu-keywords"
	.align 4
.LC505:
	.string	"Do not recognize GNU defined keywords"
.LC506:
	.string	"-fhandle-exceptions"
.LC507:
	.string	"-fno-handle-exceptions"
.LC508:
	.string	"-fhuge-objects"
	.align 4
.LC509:
	.string	"Enable support for huge objects"
.LC510:
	.string	"-fno-huge-objects"
.LC511:
	.string	"-fimplement-inlines"
.LC512:
	.string	"-fno-implement-inlines"
	.align 4
.LC513:
	.string	"Export functions even if they can be inlined"
.LC514:
	.string	"-fimplicit-templates"
.LC515:
	.string	"-fno-implicit-templates"
	.align 4
.LC516:
	.string	"Only emit explicit template instantiations"
.LC517:
	.string	"-fimplicit-inline-templates"
	.align 4
.LC518:
	.string	"-fno-implicit-inline-templates"
	.align 4
.LC519:
	.string	"Only emit explicit instantiations of inline templates"
.LC520:
	.string	"-finit-priority"
.LC521:
	.string	"-fno-init-priority"
.LC522:
	.string	"-fmemoize-lookups"
.LC523:
	.string	"-fno-memoize-lookups"
.LC524:
	.string	"-fms-extensions"
	.align 4
.LC525:
	.string	"Don't pedwarn about uses of Microsoft extensions"
.LC526:
	.string	"-fno-ms-extensions"
.LC527:
	.string	"-foperator-names"
	.align 4
.LC528:
	.string	"Recognize and/bitand/bitor/compl/not/or/xor"
.LC529:
	.string	"-fno-operator-names"
.LC530:
	.string	"-foptional-diags"
.LC531:
	.string	"-fno-optional-diags"
.LC532:
	.string	"Disable optional diagnostics"
.LC533:
	.string	"-fpermissive"
	.align 4
.LC534:
	.string	"Downgrade conformance errors to warnings"
.LC535:
	.string	"-fno-permissive"
.LC536:
	.string	"-frepo"
	.align 4
.LC537:
	.string	"Enable automatic template instantiation"
.LC538:
	.string	"-fno-repo"
.LC539:
	.string	"-fsave-memoized"
.LC540:
	.string	"-fno-save-memoized"
.LC541:
	.string	"-fstats"
	.align 4
.LC542:
	.string	"Display statistics accumulated during compilation"
.LC543:
	.string	"-fno-stats"
.LC544:
	.string	"-ftemplate-depth-"
	.align 4
.LC545:
	.string	"Specify maximum template instantiation depth"
.LC546:
	.string	"-fuse-cxa-atexit"
	.align 4
.LC547:
	.string	"Use __cxa_atexit to register destructors"
.LC548:
	.string	"-fno-use-cxa-atexit"
.LC549:
	.string	"-fvtable-gc"
	.align 4
.LC550:
	.string	"Discard unused virtual functions"
.LC551:
	.string	"-fno-vtable-gc"
.LC552:
	.string	"-fvtable-thunks"
	.align 4
.LC553:
	.string	"Implement vtables using thunks"
.LC554:
	.string	"-fno-vtable-thunks"
.LC555:
	.string	"-fweak"
	.align 4
.LC556:
	.string	"Emit common-like symbols as weak symbols"
.LC557:
	.string	"-fno-weak"
.LC558:
	.string	"-fxref"
	.align 4
.LC559:
	.string	"Emit cross referencing information"
.LC560:
	.string	"-fno-xref"
	.align 4
.LC561:
	.string	"Warn about inconsistent return types"
.LC562:
	.string	"-Woverloaded-virtual"
	.align 4
.LC563:
	.string	"Warn about overloaded virtual function names"
.LC564:
	.string	"-Wno-overloaded-virtual"
.LC565:
	.string	"-Wctor-dtor-privacy"
.LC566:
	.string	"-Wno-ctor-dtor-privacy"
	.align 4
.LC567:
	.string	"Don't warn when all ctors/dtors are private"
.LC568:
	.string	"-Wnon-virtual-dtor"
	.align 4
.LC569:
	.string	"Warn about non virtual destructors"
.LC570:
	.string	"-Wno-non-virtual-dtor"
.LC571:
	.string	"-Wextern-inline"
	.align 4
.LC572:
	.string	"Warn when a function is declared extern, then inline"
.LC573:
	.string	"-Wno-extern-inline"
.LC574:
	.string	"-Wreorder"
	.align 4
.LC575:
	.string	"Warn when the compiler reorders code"
.LC576:
	.string	"-Wno-reorder"
.LC577:
	.string	"-Wsynth"
	.align 4
.LC578:
	.string	"Warn when synthesis behavior differs from Cfront"
.LC579:
	.string	"-Wno-synth"
.LC580:
	.string	"-Wpmf-conversions"
.LC581:
	.string	"-Wno-pmf-conversions"
	.align 4
.LC582:
	.string	"Don't warn when type converting pointers to member functions"
.LC583:
	.string	"-Weffc++"
	.align 4
.LC584:
	.string	"Warn about violations of Effective C++ style rules"
.LC585:
	.string	"-Wno-effc++"
.LC586:
	.string	"-Wsign-promo"
	.align 4
.LC587:
	.string	"Warn when overload promotes from unsigned to signed"
.LC588:
	.string	"-Wno-sign-promo"
.LC589:
	.string	"-Wold-style-cast"
	.align 4
.LC590:
	.string	"Warn if a C style cast is used in a program"
.LC591:
	.string	"-Wno-old-style-cast"
.LC592:
	.string	"-Wnon-template-friend"
.LC593:
	.string	"-Wno-non-template-friend"
	.align 4
.LC594:
	.string	"Don't warn when non-templatized friend functions are declared within a template"
.LC595:
	.string	"-Wdeprecated"
.LC596:
	.string	"-Wno-deprecated"
	.align 4
.LC597:
	.string	"Don't announce deprecation of compiler features"
	.section	.data.rel.ro.local
	.align 32
	.type	documented_lang_options, @object
	.size	documented_lang_options, 1608
documented_lang_options:
	.long	.LC309
	.long	.LC310
	.long	.LC311
	.long	.LC312
	.long	.LC313
	.long	.LC36
	.long	.LC314
	.long	.LC315
	.long	.LC316
	.long	.LC36
	.long	.LC317
	.long	.LC36
	.long	.LC318
	.long	.LC319
	.long	.LC320
	.long	.LC321
	.long	.LC322
	.long	.LC36
	.long	.LC323
	.long	.LC36
	.long	.LC324
	.long	.LC36
	.long	.LC325
	.long	.LC326
	.long	.LC327
	.long	.LC36
	.long	.LC328
	.long	.LC329
	.long	.LC330
	.long	.LC331
	.long	.LC332
	.long	.LC36
	.long	.LC333
	.long	.LC334
	.long	.LC335
	.long	.LC36
	.long	.LC336
	.long	.LC337
	.long	.LC338
	.long	.LC36
	.long	.LC339
	.long	.LC340
	.long	.LC341
	.long	.LC36
	.long	.LC342
	.long	.LC36
	.long	.LC343
	.long	.LC36
	.long	.LC344
	.long	.LC345
	.long	.LC346
	.long	.LC36
	.long	.LC347
	.long	.LC348
	.long	.LC349
	.long	.LC36
	.long	.LC350
	.long	.LC351
	.long	.LC352
	.long	.LC36
	.long	.LC353
	.long	.LC354
	.long	.LC355
	.long	.LC356
	.long	.LC357
	.long	.LC36
	.long	.LC358
	.long	.LC359
	.long	.LC360
	.long	.LC36
	.long	.LC361
	.long	.LC362
	.long	.LC363
	.long	.LC36
	.long	.LC364
	.long	.LC365
	.long	.LC366
	.long	.LC36
	.long	.LC367
	.long	.LC368
	.long	.LC369
	.long	.LC36
	.long	.LC370
	.long	.LC368
	.long	.LC371
	.long	.LC36
	.long	.LC372
	.long	.LC373
	.long	.LC374
	.long	.LC36
	.long	.LC375
	.long	.LC376
	.long	.LC377
	.long	.LC36
	.long	.LC378
	.long	.LC36
	.long	.LC379
	.long	.LC380
	.long	.LC381
	.long	.LC382
	.long	.LC383
	.long	.LC36
	.long	.LC384
	.long	.LC385
	.long	.LC386
	.long	.LC36
	.long	.LC387
	.long	.LC36
	.long	.LC388
	.long	.LC389
	.long	.LC390
	.long	.LC391
	.long	.LC392
	.long	.LC36
	.long	.LC393
	.long	.LC394
	.long	.LC395
	.long	.LC36
	.long	.LC396
	.long	.LC36
	.long	.LC397
	.long	.LC398
	.long	.LC399
	.long	.LC400
	.long	.LC401
	.long	.LC36
	.long	.LC402
	.long	.LC36
	.long	.LC403
	.long	.LC404
	.long	.LC405
	.long	.LC36
	.long	.LC406
	.long	.LC36
	.long	.LC407
	.long	.LC36
	.long	.LC408
	.long	.LC409
	.long	.LC410
	.long	.LC36
	.long	.LC411
	.long	.LC36
	.long	.LC412
	.long	.LC413
	.long	.LC414
	.long	.LC415
	.long	.LC416
	.long	.LC36
	.long	.LC417
	.long	.LC418
	.long	.LC419
	.long	.LC36
	.long	.LC420
	.long	.LC421
	.long	.LC422
	.long	.LC36
	.long	.LC423
	.long	.LC424
	.long	.LC425
	.long	.LC36
	.long	.LC426
	.long	.LC427
	.long	.LC428
	.long	.LC36
	.long	.LC429
	.long	.LC430
	.long	.LC431
	.long	.LC36
	.long	.LC432
	.long	.LC433
	.long	.LC434
	.long	.LC36
	.long	.LC435
	.long	.LC436
	.long	.LC437
	.long	.LC36
	.long	.LC438
	.long	.LC439
	.long	.LC440
	.long	.LC36
	.long	.LC441
	.long	.LC442
	.long	.LC443
	.long	.LC36
	.long	.LC444
	.long	.LC445
	.long	.LC446
	.long	.LC36
	.long	.LC447
	.long	.LC448
	.long	.LC449
	.long	.LC36
	.long	.LC450
	.long	.LC451
	.long	.LC452
	.long	.LC36
	.long	.LC453
	.long	.LC454
	.long	.LC455
	.long	.LC36
	.long	.LC456
	.long	.LC457
	.long	.LC458
	.long	.LC36
	.long	.LC459
	.long	.LC36
	.long	.LC460
	.long	.LC36
	.long	.LC461
	.long	.LC462
	.long	.LC463
	.long	.LC36
	.long	.LC464
	.long	.LC465
	.long	.LC466
	.long	.LC36
	.long	0
	.long	.LC467
	.long	.LC468
	.long	.LC36
	.long	.LC469
	.long	.LC470
	.long	.LC471
	.long	.LC472
	.long	.LC473
	.long	.LC36
	.long	.LC474
	.long	.LC36
	.long	.LC475
	.long	.LC36
	.long	.LC476
	.long	.LC477
	.long	.LC478
	.long	.LC36
	.long	.LC479
	.long	.LC480
	.long	.LC481
	.long	.LC36
	.long	.LC482
	.long	.LC36
	.long	.LC483
	.long	.LC484
	.long	.LC485
	.long	.LC36
	.long	.LC486
	.long	.LC487
	.long	.LC488
	.long	.LC489
	.long	.LC490
	.long	.LC36
	.long	.LC491
	.long	.LC492
	.long	.LC493
	.long	.LC36
	.long	.LC494
	.long	.LC36
	.long	.LC495
	.long	.LC36
	.long	.LC496
	.long	.LC497
	.long	.LC498
	.long	.LC36
	.long	.LC499
	.long	.LC36
	.long	.LC500
	.long	.LC36
	.long	.LC501
	.long	.LC502
	.long	.LC503
	.long	.LC36
	.long	.LC504
	.long	.LC505
	.long	.LC506
	.long	.LC36
	.long	.LC507
	.long	.LC36
	.long	.LC508
	.long	.LC509
	.long	.LC510
	.long	.LC36
	.long	.LC511
	.long	.LC36
	.long	.LC512
	.long	.LC513
	.long	.LC514
	.long	.LC36
	.long	.LC515
	.long	.LC516
	.long	.LC517
	.long	.LC36
	.long	.LC518
	.long	.LC519
	.long	.LC520
	.long	.LC36
	.long	.LC521
	.long	.LC36
	.long	.LC522
	.long	.LC36
	.long	.LC523
	.long	.LC36
	.long	.LC524
	.long	.LC525
	.long	.LC526
	.long	.LC36
	.long	.LC527
	.long	.LC528
	.long	.LC529
	.long	.LC36
	.long	.LC530
	.long	.LC36
	.long	.LC531
	.long	.LC532
	.long	.LC533
	.long	.LC534
	.long	.LC535
	.long	.LC36
	.long	.LC536
	.long	.LC537
	.long	.LC538
	.long	.LC36
	.long	.LC539
	.long	.LC36
	.long	.LC540
	.long	.LC36
	.long	.LC541
	.long	.LC542
	.long	.LC543
	.long	.LC36
	.long	.LC544
	.long	.LC545
	.long	.LC546
	.long	.LC547
	.long	.LC548
	.long	.LC36
	.long	.LC549
	.long	.LC550
	.long	.LC551
	.long	.LC36
	.long	.LC552
	.long	.LC553
	.long	.LC554
	.long	.LC36
	.long	.LC555
	.long	.LC556
	.long	.LC557
	.long	.LC36
	.long	.LC558
	.long	.LC559
	.long	.LC560
	.long	.LC36
	.long	.LC441
	.long	.LC561
	.long	.LC443
	.long	.LC36
	.long	.LC562
	.long	.LC563
	.long	.LC564
	.long	.LC36
	.long	.LC565
	.long	.LC36
	.long	.LC566
	.long	.LC567
	.long	.LC568
	.long	.LC569
	.long	.LC570
	.long	.LC36
	.long	.LC571
	.long	.LC572
	.long	.LC573
	.long	.LC36
	.long	.LC574
	.long	.LC575
	.long	.LC576
	.long	.LC36
	.long	.LC577
	.long	.LC578
	.long	.LC579
	.long	.LC36
	.long	.LC580
	.long	.LC36
	.long	.LC581
	.long	.LC582
	.long	.LC583
	.long	.LC584
	.long	.LC585
	.long	.LC36
	.long	.LC586
	.long	.LC587
	.long	.LC588
	.long	.LC36
	.long	.LC589
	.long	.LC590
	.long	.LC591
	.long	.LC36
	.long	.LC592
	.long	.LC36
	.long	.LC593
	.long	.LC594
	.long	.LC595
	.long	.LC36
	.long	.LC596
	.long	.LC597
	.section	.rodata
.LC598:
	.string	"no-crt0"
.LC599:
	.string	"No default crt0.o"
.LC600:
	.string	"int64"
.LC601:
	.string	"Use 64-bit int type"
.LC602:
	.string	"long64"
.LC603:
	.string	"Use 64-bit long type"
.LC604:
	.string	"long32"
.LC605:
	.string	"Use 32-bit long type"
.LC606:
	.string	"split-addresses"
	.align 4
.LC607:
	.string	"Optimize lui/addiu address loads"
.LC608:
	.string	"no-split-addresses"
	.align 4
.LC609:
	.string	"Don't optimize lui/addiu address loads"
.LC610:
	.string	"mips-as"
.LC611:
	.string	"Use MIPS as"
.LC612:
	.string	"gas"
.LC613:
	.string	"Use GNU as"
.LC614:
	.string	"rnames"
.LC615:
	.string	"Use symbolic register names"
.LC616:
	.string	"no-rnames"
	.align 4
.LC617:
	.string	"Don't use symbolic register names"
.LC618:
	.string	"gpOPT"
	.align 4
.LC619:
	.string	"Use GP relative sdata/sbss sections"
.LC620:
	.string	"gpopt"
.LC621:
	.string	"no-gpOPT"
	.align 4
.LC622:
	.string	"Don't use GP relative sdata/sbss sections"
.LC623:
	.string	"no-gpopt"
.LC624:
	.string	"stats"
.LC625:
	.string	"Output compiler statistics"
.LC626:
	.string	"no-stats"
	.align 4
.LC627:
	.string	"Don't output compiler statistics"
.LC628:
	.string	"memcpy"
.LC629:
	.string	"Don't optimize block moves"
.LC630:
	.string	"no-memcpy"
.LC631:
	.string	"Optimize block moves"
.LC632:
	.string	"mips-tfile"
.LC633:
	.string	"Use mips-tfile asm postpass"
.LC634:
	.string	"no-mips-tfile"
	.align 4
.LC635:
	.string	"Don't use mips-tfile asm postpass"
.LC636:
	.string	"soft-float"
.LC637:
	.string	"Use software floating point"
.LC638:
	.string	"hard-float"
.LC639:
	.string	"Use hardware floating point"
.LC640:
	.string	"fp64"
.LC641:
	.string	"Use 64-bit FP registers"
.LC642:
	.string	"fp32"
.LC643:
	.string	"Use 32-bit FP registers"
.LC644:
	.string	"gp64"
.LC645:
	.string	"Use 64-bit general registers"
.LC646:
	.string	"gp32"
.LC647:
	.string	"Use 32-bit general registers"
.LC648:
	.string	"abicalls"
.LC649:
	.string	"Use Irix PIC"
.LC650:
	.string	"no-abicalls"
.LC651:
	.string	"Don't use Irix PIC"
.LC652:
	.string	"long-calls"
.LC653:
	.string	"Use indirect calls"
.LC654:
	.string	"no-long-calls"
.LC655:
	.string	"Don't use indirect calls"
.LC656:
	.string	"embedded-pic"
.LC657:
	.string	"Use embedded PIC"
.LC658:
	.string	"no-embedded-pic"
.LC659:
	.string	"Don't use embedded PIC"
.LC660:
	.string	"embedded-data"
.LC661:
	.string	"Use ROM instead of RAM"
.LC662:
	.string	"no-embedded-data"
.LC663:
	.string	"Don't use ROM instead of RAM"
.LC664:
	.string	"uninit-const-in-rodata"
	.align 4
.LC665:
	.string	"Put uninitialized constants in ROM (needs -membedded-data)"
.LC666:
	.string	"no-uninit-const-in-rodata"
	.align 4
.LC667:
	.string	"Don't put uninitialized constants in ROM"
.LC668:
	.string	"eb"
.LC669:
	.string	"Use big-endian byte order"
.LC670:
	.string	"el"
.LC671:
	.string	"Use little-endian byte order"
.LC672:
	.string	"single-float"
.LC673:
	.string	"Use single (32-bit) FP only"
.LC674:
	.string	"double-float"
	.align 4
.LC675:
	.string	"Don't use single (32-bit) FP only"
.LC676:
	.string	"mad"
.LC677:
	.string	"Use multiply accumulate"
.LC678:
	.string	"no-mad"
.LC679:
	.string	"Don't use multiply accumulate"
.LC680:
	.string	"no-fused-madd"
	.align 4
.LC681:
	.string	"Don't generate fused multiply/add instructions"
.LC682:
	.string	"fused-madd"
	.align 4
.LC683:
	.string	"Generate fused multiply/add instructions"
.LC684:
	.string	"fix4300"
	.align 4
.LC685:
	.string	"Work around early 4300 hardware bug"
.LC686:
	.string	"no-fix4300"
	.align 4
.LC687:
	.string	"Don't work around early 4300 hardware bug"
.LC688:
	.string	"check-zero-division"
	.align 4
.LC689:
	.string	"Trap on integer divide by zero"
.LC690:
	.string	"no-check-zero-division"
	.align 4
.LC691:
	.string	"Don't trap on integer divide by zero"
.LC692:
	.string	"check-range-division"
	.align 4
.LC693:
	.string	"Trap on integer divide overflow"
.LC694:
	.string	"no-check-range-division"
	.align 4
.LC695:
	.string	"Don't trap on integer divide overflow"
.LC696:
	.string	"branch-likely"
	.align 4
.LC697:
	.string	"Use Branch Likely instructions, overriding default for arch"
.LC698:
	.string	"no-branch-likely"
	.align 4
.LC699:
	.string	"Don't use Branch Likely instructions, overriding default for arch"
.LC700:
	.string	"debug"
.LC701:
	.string	"debuga"
.LC702:
	.string	"debugb"
.LC703:
	.string	"debugc"
.LC704:
	.string	"debugd"
.LC705:
	.string	"debuge"
.LC706:
	.string	"debugf"
.LC707:
	.string	"debugg"
.LC708:
	.string	"debugi"
	.section	.data.rel.ro.local
	.align 32
	.type	target_switches, @object
	.size	target_switches, 744
target_switches:
	.long	.LC598
	.long	0
	.long	.LC599
	.long	.LC600
	.long	3
	.long	.LC601
	.long	.LC602
	.long	2
	.long	.LC603
	.long	.LC604
	.long	-3
	.long	.LC605
	.long	.LC606
	.long	4
	.long	.LC607
	.long	.LC608
	.long	-4
	.long	.LC609
	.long	.LC610
	.long	-16
	.long	.LC611
	.long	.LC612
	.long	16
	.long	.LC613
	.long	.LC614
	.long	32
	.long	.LC615
	.long	.LC616
	.long	-32
	.long	.LC617
	.long	.LC618
	.long	8
	.long	.LC619
	.long	.LC620
	.long	8
	.long	.LC619
	.long	.LC621
	.long	-8
	.long	.LC622
	.long	.LC623
	.long	-8
	.long	.LC622
	.long	.LC624
	.long	64
	.long	.LC625
	.long	.LC626
	.long	-64
	.long	.LC627
	.long	.LC628
	.long	128
	.long	.LC629
	.long	.LC630
	.long	-128
	.long	.LC631
	.long	.LC632
	.long	0
	.long	.LC633
	.long	.LC634
	.long	0
	.long	.LC635
	.long	.LC636
	.long	256
	.long	.LC637
	.long	.LC638
	.long	-256
	.long	.LC639
	.long	.LC640
	.long	512
	.long	.LC641
	.long	.LC642
	.long	-512
	.long	.LC643
	.long	.LC644
	.long	8192
	.long	.LC645
	.long	.LC646
	.long	-8192
	.long	.LC647
	.long	.LC648
	.long	1024
	.long	.LC649
	.long	.LC650
	.long	-1024
	.long	.LC651
	.long	.LC652
	.long	4096
	.long	.LC653
	.long	.LC654
	.long	-4096
	.long	.LC655
	.long	.LC656
	.long	16384
	.long	.LC657
	.long	.LC658
	.long	-16384
	.long	.LC659
	.long	.LC660
	.long	32768
	.long	.LC661
	.long	.LC662
	.long	-32768
	.long	.LC663
	.long	.LC664
	.long	8388608
	.long	.LC665
	.long	.LC666
	.long	-8388608
	.long	.LC667
	.long	.LC668
	.long	65536
	.long	.LC669
	.long	.LC670
	.long	-65536
	.long	.LC671
	.long	.LC672
	.long	131072
	.long	.LC673
	.long	.LC674
	.long	-131072
	.long	.LC675
	.long	.LC676
	.long	262144
	.long	.LC677
	.long	.LC678
	.long	-262144
	.long	.LC679
	.long	.LC680
	.long	16777216
	.long	.LC681
	.long	.LC682
	.long	-16777216
	.long	.LC683
	.long	.LC684
	.long	524288
	.long	.LC685
	.long	.LC686
	.long	-524288
	.long	.LC687
	.long	.LC688
	.long	-2097152
	.long	.LC689
	.long	.LC690
	.long	2097152
	.long	.LC691
	.long	.LC692
	.long	4194304
	.long	.LC693
	.long	.LC694
	.long	-4194304
	.long	.LC695
	.long	.LC696
	.long	33554432
	.long	.LC697
	.long	.LC698
	.long	-33554432
	.long	.LC699
	.long	.LC700
	.long	0
	.long	0
	.long	.LC701
	.long	0
	.long	0
	.long	.LC702
	.long	0
	.long	0
	.long	.LC703
	.long	0
	.long	0
	.long	.LC704
	.long	0
	.long	0
	.long	.LC705
	.long	0
	.long	0
	.long	.LC706
	.long	0
	.long	0
	.long	.LC707
	.long	0
	.long	0
	.long	.LC708
	.long	0
	.long	0
	.long	.LC36
	.long	1040
	.long	0
	.section	.rodata
.LC709:
	.string	"tune="
	.align 4
.LC710:
	.string	"Specify CPU for scheduling purposes"
.LC711:
	.string	"arch="
	.align 4
.LC712:
	.string	"Specify CPU for code generation purposes"
.LC713:
	.string	"abi="
.LC714:
	.string	"Specify an ABI"
.LC715:
	.string	"ips"
.LC716:
	.string	"Specify a Standard MIPS ISA"
.LC717:
	.string	"entry"
	.align 4
.LC718:
	.string	"Use mips16 entry/exit psuedo ops"
.LC719:
	.string	"no-mips16"
.LC720:
	.string	"Don't use MIPS16 instructions"
.LC721:
	.string	"no-flush-func"
	.align 4
.LC722:
	.string	"Don't call any cache flush functions"
.LC723:
	.string	"flush-func="
.LC724:
	.string	"Specify cache flush function"
	.section	.data.rel.ro
	.align 32
	.type	target_options, @object
	.size	target_options, 96
target_options:
	.long	.LC709
	.long	mips_tune_string
	.long	.LC710
	.long	.LC711
	.long	mips_arch_string
	.long	.LC712
	.long	.LC713
	.long	mips_abi_string
	.long	.LC714
	.long	.LC715
	.long	mips_isa_string
	.long	.LC716
	.long	.LC717
	.long	mips_entry_string
	.long	.LC718
	.long	.LC719
	.long	mips_no_mips16_string
	.long	.LC720
	.long	.LC721
	.long	mips_cache_flush_func
	.long	.LC722
	.long	.LC723
	.long	mips_cache_flush_func
	.long	.LC724
.globl inhibit_warnings
	.bss
	.align 4
	.type	inhibit_warnings, @object
	.size	inhibit_warnings, 4
inhibit_warnings:
	.zero	4
.globl warn_system_headers
	.align 4
	.type	warn_system_headers, @object
	.size	warn_system_headers, 4
warn_system_headers:
	.zero	4
.globl extra_warnings
	.align 4
	.type	extra_warnings, @object
	.size	extra_warnings, 4
extra_warnings:
	.zero	4
.globl warnings_are_errors
	.align 4
	.type	warnings_are_errors, @object
	.size	warnings_are_errors, 4
warnings_are_errors:
	.zero	4
.globl warn_deprecated_decl
	.data
	.align 4
	.type	warn_deprecated_decl, @object
	.size	warn_deprecated_decl, 4
warn_deprecated_decl:
	.long	1
	.section	.rodata
.LC725:
	.string	"unused-function"
	.align 4
.LC726:
	.string	"Warn when a function is unused"
.LC727:
	.string	"unused-label"
.LC728:
	.string	"Warn when a label is unused"
.LC729:
	.string	"unused-parameter"
	.align 4
.LC730:
	.string	"Warn when a function parameter is unused"
.LC731:
	.string	"unused-variable"
	.align 4
.LC732:
	.string	"Warn when a variable is unused"
.LC733:
	.string	"unused-value"
	.align 4
.LC734:
	.string	"Warn when an expression value is unused"
.LC735:
	.string	"system-headers"
	.align 4
.LC736:
	.string	"Do not suppress warnings from system headers"
.LC737:
	.string	"error"
.LC738:
	.string	"Treat all warnings as errors"
.LC739:
	.string	"shadow"
	.align 4
.LC740:
	.string	"Warn when one local variable shadows another"
.LC741:
	.string	"switch"
	.align 4
.LC742:
	.string	"Warn about enumerated switches, with no default, missing a case"
.LC743:
	.string	"switch-default"
	.align 4
.LC744:
	.string	"Warn about enumerated switches missing a default case"
.LC745:
	.string	"switch-enum"
	.align 4
.LC746:
	.string	"Warn about all enumerated switches missing a specific case"
.LC747:
	.string	"aggregate-return"
	.align 4
.LC748:
	.string	"Warn about returning structures, unions or arrays"
.LC749:
	.string	"cast-align"
	.align 4
.LC750:
	.string	"Warn about pointer casts which increase alignment"
.LC751:
	.string	"unreachable-code"
	.align 4
.LC752:
	.string	"Warn about code that will never be executed"
.LC753:
	.string	"uninitialized"
	.align 4
.LC754:
	.string	"Warn about uninitialized automatic variables"
	.align 4
.LC755:
	.string	"Warn when an inlined function cannot be inlined"
.LC756:
	.string	"packed"
	.align 4
.LC757:
	.string	"Warn when the packed attribute has no effect on struct layout"
.LC758:
	.string	"padded"
	.align 4
.LC759:
	.string	"Warn when padding is required to align struct members"
.LC760:
	.string	"disabled-optimization"
	.align 4
.LC761:
	.string	"Warn when an optimization pass is disabled"
.LC762:
	.string	"deprecated-declarations"
	.align 4
.LC763:
	.string	"Warn about uses of __attribute__((deprecated)) declarations"
.LC764:
	.string	"missing-noreturn"
	.align 4
.LC765:
	.string	"Warn about functions which might be candidates for attribute noreturn"
	.align 4
.LC766:
	.string	"Warn about code which might break the strict aliasing rules"
	.section	.data.rel.ro
	.align 32
	.type	W_options, @object
	.size	W_options, 352
W_options:
	.long	.LC725
	.long	warn_unused_function
	.long	1
	.long	.LC726
	.long	.LC727
	.long	warn_unused_label
	.long	1
	.long	.LC728
	.long	.LC729
	.long	warn_unused_parameter
	.long	1
	.long	.LC730
	.long	.LC731
	.long	warn_unused_variable
	.long	1
	.long	.LC732
	.long	.LC733
	.long	warn_unused_value
	.long	1
	.long	.LC734
	.long	.LC735
	.long	warn_system_headers
	.long	1
	.long	.LC736
	.long	.LC737
	.long	warnings_are_errors
	.long	1
	.long	.LC738
	.long	.LC739
	.long	warn_shadow
	.long	1
	.long	.LC740
	.long	.LC741
	.long	warn_switch
	.long	1
	.long	.LC742
	.long	.LC743
	.long	warn_switch_default
	.long	1
	.long	.LC744
	.long	.LC745
	.long	warn_switch_enum
	.long	1
	.long	.LC746
	.long	.LC747
	.long	warn_aggregate_return
	.long	1
	.long	.LC748
	.long	.LC749
	.long	warn_cast_align
	.long	1
	.long	.LC750
	.long	.LC751
	.long	warn_notreached
	.long	1
	.long	.LC752
	.long	.LC753
	.long	warn_uninitialized
	.long	1
	.long	.LC754
	.long	.LC147
	.long	warn_inline
	.long	1
	.long	.LC755
	.long	.LC756
	.long	warn_packed
	.long	1
	.long	.LC757
	.long	.LC758
	.long	warn_padded
	.long	1
	.long	.LC759
	.long	.LC760
	.long	warn_disabled_optimization
	.long	1
	.long	.LC761
	.long	.LC762
	.long	warn_deprecated_decl
	.long	1
	.long	.LC763
	.long	.LC764
	.long	warn_missing_noreturn
	.long	1
	.long	.LC765
	.long	.LC253
	.long	warn_strict_aliasing
	.long	1
	.long	.LC766
	.text
.globl set_Wunused
	.type	set_Wunused, @function
set_Wunused:
.LFB15:
	.file 1 "../../../kg++fe/gnu/toplev.c"
	.loc 1 1662 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1663 0
	movl	warn_unused_function@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1664 0
	movl	warn_unused_label@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1668 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 1669 0
	movl	warn_unused_parameter@GOT(%ecx), %eax
	movl	$0, (%eax)
	jmp	.L4
.L2:
	.loc 1 1670 0
	movl	warn_unused_parameter@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L4
	.loc 1 1671 0
	movl	warn_unused_parameter@GOT(%ecx), %eax
	movl	$-1, (%eax)
.L4:
	.loc 1 1672 0
	movl	warn_unused_variable@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1673 0
	movl	warn_unused_value@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1674 0
	popl	%ebp
	ret
.LFE15:
	.size	set_Wunused, .-set_Wunused
.globl set_fast_math_flags
	.type	set_fast_math_flags, @function
set_fast_math_flags:
.LFB16:
	.loc 1 1682 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1683 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	flag_trapping_math@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 1684 0
	movl	flag_unsafe_math_optimizations@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1685 0
	movl	flag_finite_math_only@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1686 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	flag_errno_math@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 1687 0
	cmpl	$0, 8(%ebp)
	je	.L10
	.loc 1 1688 0
	movl	flag_signaling_nans@GOT(%ecx), %eax
	movl	$0, (%eax)
.L10:
	.loc 1 1689 0
	popl	%ebp
	ret
.LFE16:
	.size	set_fast_math_flags, .-set_fast_math_flags
.globl fast_math_flags_set_p
	.type	fast_math_flags_set_p, @function
fast_math_flags_set_p:
.LFB17:
	.loc 1 1694 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$4, %esp
.LCFI6:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1695 0
	movl	flag_trapping_math@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L12
	movl	flag_unsafe_math_optimizations@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L12
	movl	flag_finite_math_only@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L12
	movl	flag_errno_math@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L12
	movl	$1, -4(%ebp)
	jmp	.L17
.L12:
	movl	$0, -4(%ebp)
.L17:
	movzbl	-4(%ebp), %eax
	movzbl	%al, %eax
	.loc 1 1699 0
	leave
	ret
.LFE17:
	.size	fast_math_flags_set_p, .-fast_math_flags_set_p
.globl rtl_dump_file
	.bss
	.align 4
	.type	rtl_dump_file, @object
	.size	rtl_dump_file, 4
rtl_dump_file:
	.zero	4
.globl tree_dump_file
	.align 4
	.type	tree_dump_file, @object
	.size	tree_dump_file, 4
tree_dump_file:
	.zero	4
	.section	.rodata
.LC767:
	.string	"invalid option `%s'"
	.text
.globl read_integral_parameter
	.type	read_integral_parameter, @function
read_integral_parameter:
.LFB18:
	.loc 1 1723 0
	pushl	%ebp
.LCFI7:
	movl	%esp, %ebp
.LCFI8:
	pushl	%ebx
.LCFI9:
	subl	$36, %esp
.LCFI10:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1724 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1726 0
	jmp	.L20
.L21:
	.loc 1 1728 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 1729 0
	addl	$1, -8(%ebp)
.L20:
	.loc 1 1726 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L21
.L22:
	.loc 1 1734 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L24
	.loc 1 1736 0
	cmpl	$0, 12(%ebp)
	je	.L26
	.loc 1 1737 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC767@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L26:
	.loc 1 1738 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L28
.L24:
	.loc 1 1741 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -24(%ebp)
.L28:
	movl	-24(%ebp), %eax
	.loc 1 1742 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	read_integral_parameter, .-read_integral_parameter
	.section	.rodata
.LC768:
	.string	"%s:\n"
	.text
.globl dump_parse_tree
	.type	dump_parse_tree, @function
dump_parse_tree:
.LFB19:
	.loc 1 1748 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$20, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1749 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 1751 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC768@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1752 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_tree@PLT
.L33:
	.loc 1 1758 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	dump_parse_tree, .-dump_parse_tree
	.section	.rodata
	.type	__FUNCTION__.15506, @object
	.size	__FUNCTION__.15506, 9
__FUNCTION__.15506:
	.string	"do_abort"
.LC769:
	.string	"../../../kg++fe/gnu/toplev.c"
	.text
.globl do_abort
	.type	do_abort, @function
do_abort:
.LFB20:
	.loc 1 1766 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%ebx
.LCFI17:
	subl	$20, %esp
.LCFI18:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1767 0
	leal	__FUNCTION__.15506@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1767, 4(%esp)
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.LFE20:
	.size	do_abort, .-do_abort
	.section	.rodata
	.type	__FUNCTION__.15510, @object
	.size	__FUNCTION__.15510, 6
__FUNCTION__.15510:
	.string	"botch"
	.text
.globl botch
	.type	botch, @function
botch:
.LFB21:
	.loc 1 1776 0
	pushl	%ebp
.LCFI19:
	movl	%esp, %ebp
.LCFI20:
	pushl	%ebx
.LCFI21:
	subl	$20, %esp
.LCFI22:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1777 0
	leal	__FUNCTION__.15510@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1777, 4(%esp)
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.LFE21:
	.size	botch, .-botch
.globl exact_log2_wide
	.type	exact_log2_wide, @function
exact_log2_wide:
.LFB22:
	.loc 1 1788 0
	pushl	%ebp
.LCFI23:
	movl	%esp, %ebp
.LCFI24:
	pushl	%edi
.LCFI25:
	pushl	%esi
.LCFI26:
	subl	$32, %esp
.LCFI27:
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1789 0
	movl	$0, -12(%ebp)
	.loc 1 1791 0
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L39
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	negl	%esi
	adcl	$0, %edi
	negl	%edi
	movl	%esi, %eax
	andl	-32(%ebp), %eax
	movl	%edi, %edx
	andl	-28(%ebp), %edx
	movl	%edx, %ecx
	xorl	-28(%ebp), %ecx
	xorl	-32(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L43
.L39:
	.loc 1 1792 0
	movl	$-1, -36(%ebp)
	jmp	.L42
.L44:
	.loc 1 1794 0
	addl	$1, -12(%ebp)
.L43:
	.loc 1 1793 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %eax
	orl	-28(%ebp), %eax
	testl	%eax, %eax
	jne	.L44
	.loc 1 1795 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L42:
	movl	-36(%ebp), %eax
	.loc 1 1796 0
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	exact_log2_wide, .-exact_log2_wide
.globl floor_log2_wide
	.type	floor_log2_wide, @function
floor_log2_wide:
.LFB23:
	.loc 1 1806 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	subl	$24, %esp
.LCFI30:
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1807 0
	movl	$-1, -4(%ebp)
	.loc 1 1808 0
	jmp	.L48
.L49:
	.loc 1 1809 0
	addl	$1, -4(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L48:
	.loc 1 1808 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L49
	.loc 1 1811 0
	movl	-4(%ebp), %eax
	.loc 1 1812 0
	leave
	ret
.LFE23:
	.size	floor_log2_wide, .-floor_log2_wide
	.section	.rodata
.LC770:
	.string	"%s"
	.text
	.type	crash_signal, @function
crash_signal:
.LFB24:
	.loc 1 1820 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	subl	$20, %esp
.LCFI34:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1821 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strsignal@PLT
	movl	%eax, 4(%esp)
	leal	.LC770@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.LFE24:
	.size	crash_signal, .-crash_signal
.globl strip_off_ending
	.type	strip_off_ending, @function
strip_off_ending:
.LFB25:
	.loc 1 1833 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	subl	$16, %esp
.LCFI37:
	.loc 1 1835 0
	movl	$2, -4(%ebp)
	jmp	.L55
.L56:
	.loc 1 1837 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L57
	.loc 1 1839 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	addl	8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1840 0
	jmp	.L61
.L57:
	.loc 1 1835 0
	addl	$1, -4(%ebp)
.L55:
	cmpl	$5, -4(%ebp)
	jg	.L61
	movl	12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jg	.L56
.L61:
	.loc 1 1843 0
	leave
	ret
.LFE25:
	.size	strip_off_ending, .-strip_off_ending
	.section	.rodata
.LC771:
	.string	"\\%03o"
	.text
.globl output_quoted_string
	.type	output_quoted_string, @function
output_quoted_string:
.LFB26:
	.loc 1 1851 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$36, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1857 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1858 0
	jmp	.L72
.L64:
	.loc 1 1860 0
	movzbl	-5(%ebp), %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 1862 0
	cmpb	$34, -5(%ebp)
	je	.L67
	cmpb	$92, -5(%ebp)
	jne	.L69
.L67:
	.loc 1 1863 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	putc_unlocked@PLT
.L69:
	.loc 1 1864 0
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	putc_unlocked@PLT
	jmp	.L63
.L65:
	.loc 1 1867 0
	movzbl	-5(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC771@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L63:
.L72:
	.loc 1 1858 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	cmpb	$0, -5(%ebp)
	setne	%al
	addl	$1, 12(%ebp)
	testb	%al, %al
	jne	.L64
	.loc 1 1869 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1871 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	output_quoted_string, .-output_quoted_string
.globl output_clean_symbol_name
	.type	output_clean_symbol_name, @function
output_clean_symbol_name:
.LFB27:
	.loc 1 1879 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$36, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1881 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1884 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	clean_symbol_name@PLT
	.loc 1 1886 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 1887 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1888 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	output_clean_symbol_name, .-output_clean_symbol_name
.globl output_file_directive
	.type	output_file_directive, @function
output_file_directive:
.LFB28:
	.loc 1 1897 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%edi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$32, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1898 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 1899 0
	movl	-16(%ebp), %eax
	addl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1902 0
	jmp	.L76
.L77:
	.loc 1 1904 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L78
	.loc 1 1906 0
	subl	$1, -12(%ebp)
.L76:
	.loc 1 1902 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	ja	.L77
.L78:
	.loc 1 1913 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_output_filename@PLT
	.loc 1 1920 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	output_file_directive, .-output_file_directive
	.section	.rodata
.LC772:
	.string	".%02d."
.LC773:
	.string	"w"
.LC774:
	.string	"a"
.LC775:
	.string	"can't open %s"
.LC776:
	.string	" (unlikely executed)"
.LC777:
	.string	" (hot)"
.LC778:
	.string	"\n;; Function %s%s\n\n"
	.text
	.type	open_dump_file, @function
open_dump_file:
.LFB29:
	.loc 1 1928 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$68, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1928 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1933 0
	movl	8(%ebp), %eax
	movzbl	6+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	jne	.L82
	.loc 1 1934 0
	movl	$0, -52(%ebp)
	jmp	.L84
.L82:
	.loc 1 1936 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 1937 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 1938 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L85:
	.loc 1 1940 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC772@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1942 0
	movl	8(%ebp), %eax
	movzbl	7+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	jne	.L87
	.loc 1 1945 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L89
	movl	8(%ebp), %eax
	movzbl	5+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L89
	.loc 1 1948 0
	movl	8(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1949 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	clean_graph_dump_file@PLT
	.loc 1 1950 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L89:
	.loc 1 1952 0
	movl	8(%ebp), %eax
	movb	$1, 7+dump_file@GOTOFF(%ebx,%eax,8)
	.loc 1 1953 0
	leal	.LC773@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L92
.L87:
	.loc 1 1956 0
	leal	.LC774@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L92:
	.loc 1 1958 0
	movl	8(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %edx
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	concat@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1961 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1962 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L93
	.loc 1 1963 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC775@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L93:
	.loc 1 1965 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1967 0
	cmpl	$0, -40(%ebp)
	je	.L95
	.loc 1 1968 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	300(%eax), %eax
	cmpl	$2, %eax
	je	.L97
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	300(%eax), %eax
	testl	%eax, %eax
	jne	.L99
	leal	.LC776@GOTOFF(%ebx), %edx
	movl	%edx, -44(%ebp)
	jmp	.L101
.L99:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -44(%ebp)
.L101:
	movl	-44(%ebp), %edx
	movl	%edx, -48(%ebp)
	jmp	.L102
.L97:
	leal	.LC777@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
.L102:
	movl	lang_hooks@GOT(%ebx), %eax
	movl	120(%eax), %edx
	movl	$2, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC778@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L95:
	.loc 1 1976 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
	.loc 1 1977 0
	movl	$1, -52(%ebp)
.L84:
	movl	-52(%ebp), %eax
	.loc 1 1978 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L104
	call	__stack_chk_fail_local
.L104:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	open_dump_file, .-open_dump_file
	.type	close_dump_file, @function
close_dump_file:
.LFB30:
	.loc 1 1987 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$52, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1987 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1988 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L115
	.loc 1 1991 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 1992 0
	cmpl	$0, -44(%ebp)
	je	.L108
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L108
	movl	8(%ebp), %eax
	movzbl	5+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L108
.LBB2:
	.loc 1 1999 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC772@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 2000 0
	movl	8(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2001 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl_graph_with_bb@PLT
	.loc 1 2002 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L108:
.LBE2:
	.loc 1 2005 0
	cmpl	$0, -40(%ebp)
	je	.L112
	cmpl	$0, -44(%ebp)
	je	.L112
	.loc 1 2006 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	-40(%ebp), %eax
	call	*%eax
.L112:
	.loc 1 2008 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 2009 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 2011 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2012 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L115:
	.loc 1 2013 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L116
	call	__stack_chk_fail_local
.L116:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	close_dump_file, .-close_dump_file
.globl wrapup_global_declarations
	.type	wrapup_global_declarations, @function
wrapup_global_declarations:
.LFB31:
	.loc 1 2024 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$52, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2028 0
	movl	$0, -12(%ebp)
	.loc 1 2030 0
	movl	$0, -20(%ebp)
	jmp	.L118
.L119:
	.loc 1 2032 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2036 0
	movl	-24(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L120
	.loc 1 2037 0
	movl	-24(%ebp), %eax
	movzbl	34(%eax), %edx
	andl	$127, %edx
	movb	%dl, 34(%eax)
.L120:
	.loc 1 2039 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L122
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L122
	.loc 1 2040 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L122:
	.loc 1 2030 0
	addl	$1, -20(%ebp)
.L118:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L119
.L125:
	.loc 1 2048 0
	movl	$0, -16(%ebp)
	.loc 1 2049 0
	movl	$0, -20(%ebp)
	jmp	.L126
.L127:
	.loc 1 2051 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2053 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L128
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L128
	.loc 1 2081 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L131
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L131
.LBB3:
	.loc 1 2083 0
	movb	$1, -5(%ebp)
	.loc 1 2085 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L134
	.loc 1 2087 0
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L136
	.loc 1 2088 0
	movb	$0, -5(%ebp)
	jmp	.L134
.L136:
	.loc 1 2089 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L134
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L134
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L140
	movl	flag_keep_static_consts@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L140
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L134
.L140:
	.loc 1 2092 0
	movb	$0, -5(%ebp)
.L134:
	.loc 1 2094 0
	cmpb	$0, -5(%ebp)
	je	.L131
	.loc 1 2096 0
	movl	$1, -16(%ebp)
	.loc 1 2097 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
.L131:
.LBE3:
	.loc 1 2101 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L128
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L128
	movl	-24(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L128
	movl	flag_keep_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L147
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L149
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L147
.L149:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L128
.L147:
	.loc 1 2108 0
	movl	$1, -16(%ebp)
	.loc 1 2109 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	output_inline_function@PLT
.L128:
	.loc 1 2049 0
	addl	$1, -20(%ebp)
.L126:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L127
	.loc 1 2113 0
	cmpl	$0, -16(%ebp)
	je	.L152
	.loc 1 2114 0
	movl	$1, -12(%ebp)
.L152:
	.loc 1 2116 0
	cmpl	$0, -16(%ebp)
	jne	.L125
	.loc 1 2118 0
	movl	-12(%ebp), %eax
	.loc 1 2119 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	wrapup_global_declarations, .-wrapup_global_declarations
	.section	.rodata
.LC779:
	.string	"`%s' used but never defined"
	.align 4
.LC780:
	.string	"`%s' declared `static' but never defined"
.LC781:
	.string	"`%s' defined but not used"
	.text
.globl check_global_declarations
	.type	check_global_declarations, @function
check_global_declarations:
.LFB32:
	.loc 1 2128 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%ebx
.LCFI65:
	subl	$36, %esp
.LCFI66:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2132 0
	movl	$0, -8(%ebp)
	jmp	.L157
.L158:
	.loc 1 2134 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2136 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L159
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L159
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L159
	.loc 1 2141 0
	movl	-12(%ebp), %eax
	movl	$0, 104(%eax)
.L159:
	.loc 1 2148 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L163
	movl	warn_unused_function@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L165
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L163
.L165:
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L163
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L163
	movl	-12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L163
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L163
	.loc 1 2156 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L171
	.loc 1 2157 0
	leal	.LC779@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	jmp	.L173
.L171:
	.loc 1 2160 0
	leal	.LC780@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L173:
	.loc 1 2163 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 2164 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
.L163:
	.loc 1 2168 0
	movl	warn_unused_function@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L174
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L176
.L174:
	movl	warn_unused_variable@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L177
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L177
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L177
.L176:
	movl	-12(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L177
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L177
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L177
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L177
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L177
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L185
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L177
.L185:
	movl	lang_hooks@GOT(%ebx), %eax
	movl	244(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L177
	.loc 1 2184 0
	leal	.LC781@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L177:
	.loc 1 2188 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L188
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	jne	.L188
	.loc 1 2190 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2194 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L188:
	.loc 1 2132 0
	addl	$1, -8(%ebp)
.L157:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L158
	.loc 1 2197 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	check_global_declarations, .-check_global_declarations
.globl push_srcloc
	.type	push_srcloc, @function
push_srcloc:
.LFB33:
	.loc 1 2207 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$20, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2210 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L194
	.loc 1 2212 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 2213 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%edx)
.L194:
	.loc 1 2216 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2217 0
	movl	input_filename@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2218 0
	movl	lineno@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2219 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2220 0
	movl	input_file_stack@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2221 0
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2222 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	push_srcloc, .-push_srcloc
	.section	.rodata
	.type	__FUNCTION__.15926, @object
	.size	__FUNCTION__.15926, 11
__FUNCTION__.15926:
	.string	"pop_srcloc"
	.text
.globl pop_srcloc
	.type	pop_srcloc, @function
pop_srcloc:
.LFB34:
	.loc 1 2230 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	pushl	%ebx
.LCFI73:
	subl	$36, %esp
.LCFI74:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2233 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2234 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	input_file_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2235 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2236 0
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2238 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L198
	.loc 1 2239 0
	leal	__FUNCTION__.15926@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2239, 4(%esp)
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L198:
	.loc 1 2240 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2241 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2242 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	pop_srcloc, .-pop_srcloc
	.section	.rodata
.LC782:
	.string	"gccaux"
.LC783:
	.string	"\t.ident\t"
.LC784:
	.string	"%s\"GCC: (GNU) %s\"\n"
	.text
.globl compile_file
	.type	compile_file, @function
compile_file:
.LFB35:
	.loc 1 2255 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$20, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2259 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L202
	.loc 1 2260 0
	cmpl	$0, 8(%ebp)
	je	.L204
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L206
.L204:
	leal	.LC782@GOTOFF(%ebx), %edx
	movl	%edx, -8(%ebp)
.L206:
	movl	aux_base_name@GOT(%ebx), %eax
	movl	-8(%ebp), %edx
	movl	%edx, (%eax)
.L202:
	.loc 1 2263 0
	movl	main_input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	init_final@PLT
	.loc 1 2264 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	init_branch_prob@PLT
	.loc 1 2266 0
	movl	$10, (%esp)
	call	timevar_push@PLT
	.loc 1 2270 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	set_yydebug@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2274 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	32(%eax), %eax
	call	*%eax
	.loc 1 2277 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L207
	.loc 1 2279 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	close_dump_file
.L207:
	.loc 1 2285 0
	movl	$10, (%esp)
	call	timevar_pop@PLT
	.loc 1 2287 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L220
	.loc 1 2290 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	248(%eax), %eax
	call	*%eax
	.loc 1 2299 0
	call	output_func_start_profiler@PLT
	.loc 1 2303 0
	call	weak_finish@PLT
	.loc 1 2320 0
	call	dw2_output_indirect_constants@PLT
	.loc 1 2322 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	end_final@PLT
	.loc 1 2324 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L211
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L211
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L214
.L211:
	.loc 1 2326 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 2327 0
	movl	$0, 4(%esp)
	movl	$14, (%esp)
	call	open_dump_file
	.loc 1 2329 0
	call	end_branch_prob@PLT
	.loc 1 2331 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$14, (%esp)
	call	close_dump_file
	.loc 1 2332 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L214:
	.loc 1 2345 0
	movl	flag_no_ident@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L215
	.loc 1 2346 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	version_string@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC783@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC784@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L215:
	.loc 1 2350 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L217
	movl	$0, 4(%esp)
	movl	$19, (%esp)
	call	open_dump_file
	testl	%eax, %eax
	je	.L217
	.loc 1 2352 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 2353 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_combine_total_stats@PLT
	.loc 1 2354 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$19, (%esp)
	call	close_dump_file
	.loc 1 2355 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L217:
	.loc 1 2363 0
	call	finalize
	.loc 1 2366 0
	movl	$0, (%esp)
	call	timevar_stop@PLT
	.loc 1 2367 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	timevar_print@PLT
.L220:
	.loc 1 2369 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	compile_file, .-compile_file
	.section	.rodata
.LC785:
	.string	"alias"
.LC786:
	.string	"\t.size\t"
.LC787:
	.string	", "
.LC788:
	.string	"%lld"
	.align 4
.LC789:
	.string	"invalid register name `%s' for register variable"
	.text
.globl rest_of_decl_compilation
	.type	rest_of_decl_compilation, @function
rest_of_decl_compilation:
.LFB36:
	.loc 1 2390 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$68, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB4:
	.loc 1 2403 0
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC785@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2404 0
	cmpl	$0, -16(%ebp)
	je	.L222
	.loc 1 2406 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2407 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2408 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_alias@PLT
	.loc 1 2414 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
.L222:
.LBE4:
	.loc 1 2421 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L224
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L224
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L227
.L224:
	.loc 1 2424 0
	movl	$15, (%esp)
	call	timevar_push@PLT
	.loc 1 2426 0
	cmpl	$0, 12(%ebp)
	je	.L228
	.loc 1 2427 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
.L228:
	.loc 1 2431 0
	cmpl	$0, 20(%ebp)
	jne	.L230
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L232
.L230:
	.loc 1 2432 0
	movl	$0, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_variable@PLT
.L232:
	.loc 1 2433 0
	movl	last_assemble_variable_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, 8(%ebp)
	jne	.L233
.LBB5:
	.loc 1 2435 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L235
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L237
.L235:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -44(%ebp)
.L237:
	movl	-44(%ebp), %edx
	movl	4(%edx), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	flag_inhibit_size_directive@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L233
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L233
	cmpl	$0, 20(%ebp)
	jne	.L233
	cmpl	$0, 16(%ebp)
	je	.L233
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L233
	movl	size_directive_output@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L233
	movl	size_directive_output@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
.LBB6:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC786@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC787@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC788@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L233:
.LBE6:
.LBE5:
	.loc 1 2439 0
	movl	$15, (%esp)
	call	timevar_pop@PLT
	.loc 1 2421 0
	jmp	.L260
.L227:
	.loc 1 2441 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L245
	cmpl	$0, 12(%ebp)
	je	.L245
	.loc 1 2443 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	testl	%eax, %eax
	js	.L248
	.loc 1 2445 0
	movl	8(%ebp), %eax
	movl	$0, 104(%eax)
	.loc 1 2446 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 2451 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	addl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 80(%ecx)
	movl	%edx, 84(%ecx)
	jmp	.L260
.L248:
	.loc 1 2459 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC789@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2460 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-5, %eax
	movb	%al, 33(%edx)
	.loc 1 2461 0
	cmpl	$0, 16(%ebp)
	jne	.L260
	.loc 1 2462 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
	.loc 1 2441 0
	jmp	.L260
.L245:
	.loc 1 2466 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L252
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L254
.L252:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L254
	.loc 1 2469 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2470 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
	.loc 1 2471 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
	.loc 1 2466 0
	jmp	.L260
.L254:
	.loc 1 2484 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L256
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L260
.L256:
	cmpl	$0, 16(%ebp)
	je	.L260
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L260
	.loc 1 2489 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2490 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf2out_decl@PLT
	.loc 1 2491 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L260:
	.loc 1 2494 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	rest_of_decl_compilation, .-rest_of_decl_compilation
.globl rest_of_type_compilation
	.type	rest_of_type_compilation, @function
rest_of_type_compilation:
.LFB37:
	.loc 1 2507 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$20, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2510 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L273
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	je	.L264
	.loc 1 2511 0
	jmp	.L273
.L264:
	.loc 1 2513 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2515 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L266
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L268
.L266:
	.loc 1 2516 0
	cmpl	$0, 12(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
.L268:
	.loc 1 2523 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L269
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	jne	.L271
.L269:
	cmpl	$0, 12(%ebp)
	je	.L271
	.loc 1 2526 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dwarf2out_decl@PLT
.L271:
	.loc 1 2528 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L273:
	.loc 1 2529 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	rest_of_type_compilation, .-rest_of_type_compilation
	.section	.rodata
	.type	__FUNCTION__.16143, @object
	.size	__FUNCTION__.16143, 20
__FUNCTION__.16143:
	.string	"rest_of_compilation"
.LC790:
	.string	";; (integrable)\n\n"
	.text
.globl rest_of_compilation
	.type	rest_of_compilation, @function
rest_of_compilation:
.LFB38:
	.loc 1 2540 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$144, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2543 0
	movl	$0, -76(%ebp)
	.loc 1 2547 0
	movl	$49, (%esp)
	call	timevar_push@PLT
	.loc 1 2551 0
	movl	generating_concat_p@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2555 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	cse_not_expected@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2559 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L275
	.loc 1 2560 0
	call	identify_blocks@PLT
.L275:
	.loc 1 2564 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L277
	.loc 1 2565 0
	call	reorder_blocks@PLT
.L277:
	.loc 1 2567 0
	call	init_flow@PLT
	.loc 1 2572 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	jne	.L279
.LBB7:
	.loc 1 2574 0
	movl	$0, -64(%ebp)
	.loc 1 2582 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2583 0
	jmp	.L281
.L282:
	.loc 1 2585 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L283
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L283
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L283
	.loc 1 2588 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 2589 0
	jmp	.L287
.L283:
	.loc 1 2591 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L288
	.loc 1 2584 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_containing_scope@PLT
	movl	%eax, -60(%ebp)
.L281:
	.loc 1 2583 0
	cmpl	$0, -60(%ebp)
	jne	.L282
.L288:
	.loc 1 2596 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L290
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L292
.L290:
	movl	flag_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L293
.L292:
	.loc 1 2599 0
	movl	$16, (%esp)
	call	timevar_push@PLT
	.loc 1 2600 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_cannot_inline_p@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2601 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
	.loc 1 2602 0
	cmpl	$0, -56(%ebp)
	jne	.L294
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L296
.L294:
	.loc 1 2604 0
	movl	warn_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L297
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L297
	.loc 1 2605 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L297:
	.loc 1 2606 0
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 2610 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L293
	.loc 1 2612 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 2613 0
	jmp	.L287
.L296:
	.loc 1 2623 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L302
	.loc 1 2624 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$8, %edx
	movb	%dl, 37(%eax)
.L302:
	.loc 1 2625 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$8, %eax
	movb	%al, 33(%edx)
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	shrb	$3, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
.L293:
	.loc 1 2629 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2633 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	open_dump_file
	testl	%eax, %eax
	je	.L304
	.loc 1 2635 0
	movl	8(%ebp), %eax
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	.L306
	.loc 1 2636 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC790@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L306:
	.loc 1 2637 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	close_dump_file
.L304:
	.loc 1 2643 0
	call	convert_from_eh_region_ranges@PLT
	.loc 1 2652 0
	cmpl	$0, -64(%ebp)
	jne	.L308
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L310
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L312
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L312
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L312
	movl	flag_keep_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L308
.L312:
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L310
.L308:
	.loc 1 2658 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 34(%eax)
.L310:
	.loc 1 2660 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L316
	.loc 1 2666 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L316:
	.loc 1 2668 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L318
	.loc 1 2674 0
	movl	warn_return_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L320
.LBB8:
	.loc 1 2676 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2678 0
	movl	optimize@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2679 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 2680 0
	call	find_exception_handler_labels@PLT
	.loc 1 2681 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
	.loc 1 2682 0
	movl	$24, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 2683 0
	movl	optimize@GOT(%ebx), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2686 0
	call	free_bb_for_insn@PLT
.L320:
.LBE8:
	.loc 1 2689 0
	call	set_nothrow_function_flags@PLT
	.loc 1 2690 0
	movl	current_function_nothrow@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L322
	.loc 1 2693 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$2, %eax
	movb	%al, 10(%edx)
.L322:
	.loc 1 2695 0
	movl	$16, (%esp)
	call	timevar_push@PLT
	.loc 1 2696 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_for_inline@PLT
	.loc 1 2697 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
	.loc 1 2698 0
	movl	8(%ebp), %eax
	movl	112(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 248(%edx)
	.loc 1 2699 0
	jmp	.L287
.L318:
	.loc 1 2705 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L287
.L279:
.LBE7:
.LBB9:
	.loc 1 2713 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2714 0
	jmp	.L324
.L325:
	.loc 1 2716 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L326
	.loc 1 2717 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
.L326:
	.loc 1 2715 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_containing_scope@PLT
	movl	%eax, -48(%ebp)
.L324:
	.loc 1 2714 0
	cmpl	$0, -48(%ebp)
	jne	.L325
.LBE9:
	.loc 1 2723 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L329
	.loc 1 2724 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	72(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L329:
	.loc 1 2729 0
	call	remove_unnecessary_notes@PLT
	.loc 1 2730 0
	call	reorder_blocks@PLT
	.loc 1 2732 0
	call	ggc_collect@PLT
	.loc 1 2735 0
	call	init_function_for_compilation@PLT
	.loc 1 2737 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L331
	.loc 1 2738 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L331:
	.loc 1 2746 0
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2747 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	purge_hard_subreg_sets@PLT
.L333:
	.loc 1 3783 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	gxx_emits_decl@PLT
	.loc 1 3788 0
	movl	$47, (%esp)
	call	timevar_push@PLT
.LBB10:
	.loc 1 3796 0
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	.L334
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L336
.L334:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -124(%ebp)
.L336:
	movl	-124(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3797 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L337
	.loc 1 3798 0
	leal	__FUNCTION__.16143@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3798, 4(%esp)
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L337:
	.loc 1 3799 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3800 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L339
	.loc 1 3801 0
	leal	__FUNCTION__.16143@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3801, 4(%esp)
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L339:
	.loc 1 3802 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3804 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_start_function@PLT
	.loc 1 3805 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	final_start_function@PLT
	.loc 1 3806 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	final@PLT
	.loc 1 3807 0
	call	final_end_function@PLT
	.loc 1 3815 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_end_function@PLT
	.loc 1 3819 0
	call	output_function_exception_table@PLT
	.loc 1 3822 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L287
	.loc 1 3823 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L287:
.LBE10:
	.loc 1 3864 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3865 0
	movl	flow2_completed@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3866 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3868 0
	movl	$47, (%esp)
	call	timevar_push@PLT
	.loc 1 3872 0
	call	init_insn_lengths@PLT
	.loc 1 3875 0
	call	init_temp_slots@PLT
	.loc 1 3877 0
	movl	$0, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 3878 0
	call	free_bb_for_insn@PLT
	.loc 1 3880 0
	movl	$47, (%esp)
	call	timevar_pop@PLT
	.loc 1 3891 0
	call	init_recog_no_volatile@PLT
	.loc 1 3894 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_parsing@PLT
	.loc 1 3895 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L343
	.loc 1 3897 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_compilation@PLT
	.loc 1 3901 0
	movl	8(%ebp), %eax
	movl	$0, 112(%eax)
.L343:
	.loc 1 3903 0
	movl	cfun@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3905 0
	call	ggc_collect@PLT
	.loc 1 3907 0
	movl	$49, (%esp)
	call	timevar_pop@PLT
	.loc 1 3908 0
	addl	$144, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE38:
	.size	rest_of_compilation, .-rest_of_compilation
	.section	.rodata
	.align 4
.LC791:
	.string	"  -ffixed-<register>      Mark <register> as being unavailable to the compiler"
	.align 4
.LC792:
	.string	"  -fcall-used-<register>  Mark <register> as being corrupted by function calls"
	.align 4
.LC793:
	.string	"  -fcall-saved-<register> Mark <register> as being preserved across functions"
	.align 4
.LC794:
	.string	"  -finline-limit=<number> Limits the size of inlined functions to <number>"
	.align 4
.LC795:
	.string	"  -fmessage-length=<number> Limits diagnostics messages lengths to <number> characters per line.  0 suppresses line-wrapping"
	.align 4
.LC796:
	.string	"  -fdiagnostics-show-location=[once | every-line] Indicates how often source location information should be emitted, as prefix, at the beginning of diagnostics when line-wrapping"
	.align 4
.LC797:
	.string	"  -ftls-model=[global-dynamic | local-dynamic | initial-exec | local-exec] Indicates the default thread-local storage code generation model"
	.align 4
.LC798:
	.string	"  -fstack-limit-register=<register>  Trap if the stack goes past <register>"
	.align 4
.LC799:
	.string	"  -fstack-limit-symbol=<name>  Trap if the stack goes past symbol <name>"
	.align 4
.LC800:
	.string	"  -frandom-seed=<string>  Make compile reproducible using <string>"
.LC801:
	.string	"  -f%-21s %s\n"
	.align 4
.LC802:
	.string	"  -O[number]              Set optimization level to [number]"
	.align 4
.LC803:
	.string	"  -Os                     Optimize for space rather than speed"
.LC804:
	.string	"                     "
.LC805:
	.string	"  --param %s=<value>%.*s%s\n"
	.align 4
.LC806:
	.string	"  -pedantic               Issue warnings needed by strict compliance to ISO C"
	.align 4
.LC807:
	.string	"  -pedantic-errors        Like -pedantic except that errors are produced"
	.align 4
.LC808:
	.string	"  -w                      Suppress warnings"
	.align 4
.LC809:
	.string	"  -W                      Enable extra warnings"
.LC810:
	.string	"  -W%-21s %s\n"
	.align 4
.LC811:
	.string	"  -Wunused                Enable unused warnings"
	.align 4
.LC812:
	.string	"  -Wlarger-than-<number>  Warn if an object is larger than <number> bytes"
	.align 4
.LC813:
	.string	"  -p                      Enable function profiling"
	.align 4
.LC814:
	.string	"  -o <file>               Place output into <file> "
	.align 4
.LC815:
	.string	"  -G <number>             Put global and static data smaller than <number>\n                          bytes into a special section (on some targets)"
.LC816:
	.string	"  -g%-21s %s\n"
	.align 4
.LC817:
	.string	"  -aux-info <file>        Emit declaration info into <file>"
	.align 4
.LC818:
	.string	"  -quiet                  Do not display functions compiled or elapsed time"
	.align 4
.LC819:
	.string	"  -version                Display the compiler's version"
	.align 4
.LC820:
	.string	"  -d[letters]             Enable dumps from specific passes of the compiler"
	.align 4
.LC821:
	.string	"  -dumpbase <file>        Base name to be used for dumps from specific passes"
	.align 4
.LC822:
	.string	"  -fsched-verbose=<number> Set the verbosity level of the scheduler"
	.align 4
.LC823:
	.string	"  --help                  Display this information"
.LC824:
	.string	"language"
.LC825:
	.string	"\nLanguage specific options:"
.LC826:
	.string	"  %-23.23s [undocumented]\n"
	.align 4
.LC827:
	.string	"\nThere are undocumented %s specific options as well.\n"
.LC828:
	.string	"\n Options for %s:\n"
.LC829:
	.string	"  %-23.23s %s\n"
	.text
	.type	display_help, @function
display_help:
.LFB39:
	.loc 1 3912 0
	pushl	%ebp
.LCFI92:
	movl	%esp, %ebp
.LCFI93:
	pushl	%edi
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$80, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3917 0
	leal	.LC791@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3918 0
	leal	.LC792@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3919 0
	leal	.LC793@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3920 0
	leal	.LC794@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3921 0
	leal	.LC795@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3922 0
	leal	.LC796@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3923 0
	leal	.LC797@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3924 0
	leal	.LC798@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3925 0
	leal	.LC799@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3926 0
	leal	.LC800@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3929 0
	movl	$110, -40(%ebp)
	jmp	.L383
.L348:
.LBB11:
	.loc 1 3931 0
	movl	-40(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3933 0
	cmpl	$0, -32(%ebp)
	je	.L347
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L347
	.loc 1 3934 0
	movl	-40(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC801@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L347:
.L383:
.LBE11:
	.loc 1 3929 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L348
	.loc 1 3938 0
	leal	.LC802@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3939 0
	leal	.LC803@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3940 0
	movl	$23, -40(%ebp)
	jmp	.L384
.L353:
.LBB12:
	.loc 1 3942 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3943 0
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	$0, %eax
	cld
	movl	-64(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	$21, %eax
	subl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3945 0
	cmpl	$0, -28(%ebp)
	je	.L352
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L352
	.loc 1 3946 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	jg	.L356
	movl	$1, -60(%ebp)
.L356:
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC804@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC805@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L352:
.L384:
.LBE12:
	.loc 1 3940 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L353
	.loc 1 3951 0
	leal	.LC806@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3952 0
	leal	.LC807@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3953 0
	leal	.LC808@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3954 0
	leal	.LC809@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3956 0
	movl	$22, -40(%ebp)
	jmp	.L385
.L359:
.LBB13:
	.loc 1 3958 0
	movl	-40(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3960 0
	cmpl	$0, -20(%ebp)
	je	.L358
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L358
	.loc 1 3961 0
	movl	-40(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC810@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L358:
.L385:
.LBE13:
	.loc 1 3956 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L359
	.loc 1 3965 0
	leal	.LC811@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3966 0
	leal	.LC812@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3967 0
	leal	.LC813@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3968 0
	leal	.LC814@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3969 0
	leal	.LC815@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3973 0
	movl	$8, -40(%ebp)
	jmp	.L386
.L364:
	.loc 1 3975 0
	movl	-40(%ebp), %eax
	leal	debug_args@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L363
	.loc 1 3976 0
	movl	-40(%ebp), %eax
	leal	debug_args@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %ecx
	movl	-40(%ebp), %eax
	leal	debug_args@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC816@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L363:
.L386:
	.loc 1 3973 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L364
	.loc 1 3980 0
	leal	.LC817@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3981 0
	leal	.LC818@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3982 0
	leal	.LC819@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3983 0
	leal	.LC820@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3984 0
	leal	.LC821@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3986 0
	leal	.LC822@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3988 0
	leal	.LC823@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3990 0
	movl	$0, -44(%ebp)
	.loc 1 3991 0
	leal	.LC824@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 4003 0
	leal	.LC825@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 4005 0
	movl	$0, -40(%ebp)
	jmp	.L367
.L368:
.LBB14:
	.loc 1 4007 0
	movl	-40(%ebp), %eax
	movl	4+documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4008 0
	movl	-40(%ebp), %eax
	movl	documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4010 0
	cmpl	$0, -16(%ebp)
	jne	.L369
	.loc 1 4012 0
	movl	$1, -44(%ebp)
	.loc 1 4014 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L373
	.loc 1 4015 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC826@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L373
.L369:
	.loc 1 4017 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L373
	.loc 1 4019 0
	cmpl	$0, -12(%ebp)
	jne	.L375
	.loc 1 4021 0
	cmpl	$0, -44(%ebp)
	je	.L377
	.loc 1 4022 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC827@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L377:
	.loc 1 4025 0
	movl	$0, -44(%ebp)
	.loc 1 4027 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC828@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 4029 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L373
.L375:
	.loc 1 4032 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC829@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L373:
.LBE14:
	.loc 1 4005 0
	addl	$1, -40(%ebp)
.L367:
	cmpl	$200, -40(%ebp)
	jbe	.L368
	.loc 1 4036 0
	cmpl	$0, -44(%ebp)
	je	.L380
	.loc 1 4037 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC827@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L380:
	.loc 1 4040 0
	call	display_target_options
	.loc 1 4041 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	display_help, .-display_help
	.local	displayed.16848
	.comm	displayed.16848,1,1
	.section	.rodata
.LC830:
	.string	"\nTarget specific options:"
.LC831:
	.string	"  -m%-23.23s [undocumented]\n"
.LC832:
	.string	"  -m%-23.23s %s\n"
	.align 4
.LC833:
	.string	"\nThere are undocumented target specific options as well."
	.align 4
.LC834:
	.string	"  They exist, but they are not documented."
	.text
	.type	display_target_options, @function
display_target_options:
.LFB40:
	.loc 1 4045 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$52, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4050 0
	movzbl	displayed.16848@GOTOFF(%ebx), %eax
	testb	%al, %al
	jne	.L413
	.loc 1 4052 0
	movb	$1, displayed.16848@GOTOFF(%ebx)
.LBB15:
	.loc 1 4060 0
	movl	$0, -24(%ebp)
	.loc 1 4062 0
	movl	$0, -32(%ebp)
	.loc 1 4064 0
	leal	.LC830@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 4066 0
	movl	$62, -28(%ebp)
	jmp	.L414
.L391:
.LBB16:
	.loc 1 4068 0
	movl	-28(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4069 0
	movl	-28(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4071 0
	cmpl	$0, -20(%ebp)
	je	.L390
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L390
	.loc 1 4073 0
	cmpl	$0, -16(%ebp)
	jne	.L394
	.loc 1 4075 0
	movl	$1, -32(%ebp)
	.loc 1 4077 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L390
	.loc 1 4078 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC831@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L390
.L394:
	.loc 1 4080 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L390
	.loc 1 4081 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC832@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	addl	%eax, -24(%ebp)
.L390:
.L414:
.LBE16:
	.loc 1 4066 0
	subl	$1, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	.L391
	.loc 1 4085 0
	movl	$8, -28(%ebp)
	jmp	.L415
.L401:
.LBB17:
	.loc 1 4087 0
	movl	-28(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4088 0
	movl	-28(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4090 0
	cmpl	$0, -12(%ebp)
	je	.L400
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L400
	.loc 1 4092 0
	cmpl	$0, -8(%ebp)
	jne	.L404
	.loc 1 4094 0
	movl	$1, -32(%ebp)
	.loc 1 4096 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L400
	.loc 1 4097 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC831@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L400
.L404:
	.loc 1 4099 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L400
	.loc 1 4100 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC832@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	addl	%eax, -24(%ebp)
.L400:
.L415:
.LBE17:
	.loc 1 4085 0
	subl	$1, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	.L401
	.loc 1 4103 0
	cmpl	$0, -32(%ebp)
	je	.L413
	.loc 1 4105 0
	cmpl	$0, -24(%ebp)
	je	.L411
	.loc 1 4106 0
	leal	.LC833@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L413
.L411:
	.loc 1 4108 0
	leal	.LC834@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L413:
.LBE15:
	.loc 1 4111 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	display_target_options, .-display_target_options
	.section	.rodata
	.align 4
.LC835:
	.string	"unrecognized gcc debugging option: %c"
	.text
	.type	decode_d_option, @function
decode_d_option:
.LFB41:
	.loc 1 4118 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$36, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4121 0
	jmp	.L441
.L418:
	.loc 1 4122 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$1, 8(%ebp)
	subl	$65, %eax
	movl	%eax, -24(%ebp)
	cmpl	$56, -24(%ebp)
	ja	.L419
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L429@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L429:
	.long	.L420@GOTOFF
	.long	.L419@GOTOFF
	.long	.L421@GOTOFF
	.long	.L417@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L417@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L423@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L424@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L425@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L419@GOTOFF
	.long	.L426@GOTOFF
	.long	.L419@GOTOFF
	.long	.L427@GOTOFF
	.long	.L428@GOTOFF
	.text
.L424:
	.loc 1 4125 0
	movl	$0, -16(%ebp)
	jmp	.L430
.L431:
	.loc 1 4126 0
	movl	-16(%ebp), %eax
	movb	$1, 6+dump_file@GOTOFF(%ebx,%eax,8)
	.loc 1 4125 0
	addl	$1, -16(%ebp)
.L430:
	cmpl	$35, -16(%ebp)
	jle	.L431
	.loc 1 4127 0
	jmp	.L417
.L420:
	.loc 1 4129 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4130 0
	jmp	.L417
.L421:
	.loc 1 4133 0
	movl	flag_bad_asm_constraint_kills_stmt@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4134 0
	jmp	.L417
.L425:
	.loc 1 4137 0
	movl	flag_print_asm_name@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4138 0
	jmp	.L417
.L423:
	.loc 1 4141 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4143 0
	movb	$1, 286+dump_file@GOTOFF(%ebx)
	.loc 1 4145 0
	jmp	.L417
.L426:
	.loc 1 4153 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4154 0
	jmp	.L417
.L427:
	.loc 1 4156 0
	movl	rtl_dump_and_exit@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4157 0
	jmp	.L417
.L428:
	.loc 1 4159 0
	movl	$1, set_yydebug@GOTOFF(%ebx)
	.loc 1 4160 0
	jmp	.L417
.L419:
	.loc 1 4166 0
	movl	$0, -8(%ebp)
	.loc 1 4167 0
	movl	$0, -16(%ebp)
	jmp	.L433
.L434:
	.loc 1 4168 0
	movl	-16(%ebp), %eax
	movzbl	4+dump_file@GOTOFF(%ebx,%eax,8), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jne	.L435
	.loc 1 4170 0
	movl	-16(%ebp), %eax
	movb	$1, 6+dump_file@GOTOFF(%ebx,%eax,8)
	.loc 1 4171 0
	movl	$1, -8(%ebp)
.L435:
	.loc 1 4167 0
	addl	$1, -16(%ebp)
.L433:
	cmpl	$35, -16(%ebp)
	jle	.L434
	.loc 1 4174 0
	cmpl	$0, -8(%ebp)
	jne	.L417
	.loc 1 4175 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC835@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L417:
.L441:
	.loc 1 4121 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L418
	.loc 1 4178 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	decode_d_option, .-decode_d_option
	.section	.rodata
.LC836:
	.string	"fast-math"
.LC837:
	.string	"no-fast-math"
.LC838:
	.string	"inline-limit-"
.LC839:
	.string	"inline-limit="
.LC840:
	.string	"tls-model="
.LC841:
	.string	"global-dynamic"
.LC842:
	.string	"local-dynamic"
.LC843:
	.string	"initial-exec"
.LC844:
	.string	"local-exec"
	.align 4
.LC845:
	.string	"`%s': unknown tls-model option"
.LC846:
	.string	"sched-verbose="
.LC847:
	.string	"verbose"
.LC848:
	.string	"fixed-"
.LC849:
	.string	"call-used-"
.LC850:
	.string	"call-saved-"
.LC851:
	.string	"align-loops="
.LC852:
	.string	"align-functions="
.LC853:
	.string	"align-jumps="
.LC854:
	.string	"align-labels="
.LC855:
	.string	"stack-limit-register="
	.align 4
.LC856:
	.string	"unrecognized register name `%s'"
.LC857:
	.string	"stack-limit-symbol="
.LC858:
	.string	"message-length="
.LC859:
	.string	"diagnostics-show-location="
.LC860:
	.string	"once"
.LC861:
	.string	"every-line"
.LC862:
	.string	"unrecognized option `%s'"
.LC863:
	.string	"no-stack-limit"
.LC864:
	.string	"random-seed="
.LC865:
	.string	"no-random-seed"
.LC866:
	.string	"preprocessed"
	.text
	.type	decode_f_option, @function
decode_f_option:
.LFB42:
	.loc 1 4187 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%edi
.LCFI107:
	pushl	%esi
.LCFI108:
	pushl	%ebx
.LCFI109:
	subl	$316, %esp
.LCFI110:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4189 0
	movl	$0, -28(%ebp)
	.loc 1 4192 0
	movl	$110, -32(%ebp)
	jmp	.L572
.L444:
	.loc 1 4194 0
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L445
	.loc 1 4196 0
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %ecx
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, (%ecx)
	.loc 1 4197 0
	movl	$1, -124(%ebp)
	jmp	.L447
.L445:
	.loc 1 4200 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$110, %al
	jne	.L443
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L443
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L443
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	8(%ebp), %edx
	addl	$3, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L443
	.loc 1 4203 0
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %ecx
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%ecx)
	.loc 1 4204 0
	movl	$1, -124(%ebp)
	jmp	.L447
.L443:
.L572:
	.loc 1 4192 0
	subl	$1, -32(%ebp)
	cmpl	$-1, -32(%ebp)
	jne	.L444
	.loc 1 4208 0
	leal	.LC836@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L453
	.loc 1 4209 0
	movl	$1, (%esp)
	call	set_fast_math_flags@PLT
	jmp	.L455
.L453:
	.loc 1 4210 0
	leal	.LC837@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L456
	.loc 1 4211 0
	movl	$0, (%esp)
	call	set_fast_math_flags@PLT
	jmp	.L455
.L456:
	.loc 1 4212 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	leal	.LC838@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	movl	$13, -136(%ebp)
	cld
	movl	-128(%ebp), %esi
	movl	-132(%ebp), %edi
	movl	-136(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L458
	movl	8(%ebp), %esi
	addl	$13, %esi
	movl	%esi, -120(%ebp)
	jmp	.L460
.L458:
	movl	$0, -120(%ebp)
.L460:
	movl	-120(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L461
	movl	8(%ebp), %eax
	movl	%eax, -140(%ebp)
	leal	.LC839@GOTOFF(%ebx), %eax
	movl	%eax, -144(%ebp)
	movl	$13, -148(%ebp)
	cld
	movl	-140(%ebp), %esi
	movl	-144(%ebp), %edi
	movl	-148(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L463
	movl	8(%ebp), %esi
	addl	$13, %esi
	movl	%esi, -116(%ebp)
	jmp	.L465
.L463:
	movl	$0, -116(%ebp)
.L465:
	movl	-116(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L466
.L461:
.LBB18:
	.loc 1 4217 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$24, %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4218 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4219 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4220 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4221 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4222 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$48, %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jge	.L455
	.loc 1 4224 0
	cmpl	$43, -24(%ebp)
	jle	.L469
	.loc 1 4225 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	jmp	.L455
.L469:
	.loc 1 4227 0
	movl	$10, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4212 0
	jmp	.L455
.L466:
.LBE18:
	.loc 1 4230 0
	movl	8(%ebp), %eax
	movl	%eax, -152(%ebp)
	leal	.LC840@GOTOFF(%ebx), %eax
	movl	%eax, -156(%ebp)
	movl	$10, -160(%ebp)
	cld
	movl	-152(%ebp), %esi
	movl	-156(%ebp), %edi
	movl	-160(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L471
	movl	8(%ebp), %esi
	addl	$10, %esi
	movl	%esi, -112(%ebp)
	jmp	.L473
.L471:
	movl	$0, -112(%ebp)
.L473:
	movl	-112(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L474
	.loc 1 4232 0
	leal	.LC841@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L476
	.loc 1 4233 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L455
.L476:
	.loc 1 4234 0
	leal	.LC842@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L479
	.loc 1 4235 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$2, (%eax)
	jmp	.L455
.L479:
	.loc 1 4236 0
	leal	.LC843@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L481
	.loc 1 4237 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$3, (%eax)
	jmp	.L455
.L481:
	.loc 1 4238 0
	leal	.LC844@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L483
	.loc 1 4239 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$4, (%eax)
	jmp	.L455
.L483:
	.loc 1 4241 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC845@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L455
.L474:
	.loc 1 4244 0
	movl	8(%ebp), %eax
	movl	%eax, -164(%ebp)
	leal	.LC846@GOTOFF(%ebx), %eax
	movl	%eax, -168(%ebp)
	movl	$14, -172(%ebp)
	cld
	movl	-164(%ebp), %esi
	movl	-168(%ebp), %edi
	movl	-172(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L485
	movl	8(%ebp), %esi
	addl	$14, %esi
	movl	%esi, -108(%ebp)
	jmp	.L487
.L485:
	movl	$0, -108(%ebp)
.L487:
	movl	-108(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L488
	.loc 1 4245 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC847@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fix_sched_param@PLT
	jmp	.L455
.L488:
	.loc 1 4247 0
	movl	8(%ebp), %eax
	movl	%eax, -176(%ebp)
	leal	.LC848@GOTOFF(%ebx), %eax
	movl	%eax, -180(%ebp)
	movl	$6, -184(%ebp)
	cld
	movl	-176(%ebp), %esi
	movl	-180(%ebp), %edi
	movl	-184(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L490
	movl	8(%ebp), %esi
	addl	$6, %esi
	movl	%esi, -104(%ebp)
	jmp	.L492
.L490:
	movl	$0, -104(%ebp)
.L492:
	movl	-104(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L493
	.loc 1 4248 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_register@PLT
	jmp	.L455
.L493:
	.loc 1 4249 0
	movl	8(%ebp), %eax
	movl	%eax, -188(%ebp)
	leal	.LC849@GOTOFF(%ebx), %eax
	movl	%eax, -192(%ebp)
	movl	$10, -196(%ebp)
	cld
	movl	-188(%ebp), %esi
	movl	-192(%ebp), %edi
	movl	-196(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L495
	movl	8(%ebp), %esi
	addl	$10, %esi
	movl	%esi, -100(%ebp)
	jmp	.L497
.L495:
	movl	$0, -100(%ebp)
.L497:
	movl	-100(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L498
	.loc 1 4250 0
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_register@PLT
	jmp	.L455
.L498:
	.loc 1 4251 0
	movl	8(%ebp), %eax
	movl	%eax, -200(%ebp)
	leal	.LC850@GOTOFF(%ebx), %eax
	movl	%eax, -204(%ebp)
	movl	$11, -208(%ebp)
	cld
	movl	-200(%ebp), %esi
	movl	-204(%ebp), %edi
	movl	-208(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L500
	movl	8(%ebp), %esi
	addl	$11, %esi
	movl	%esi, -96(%ebp)
	jmp	.L502
.L500:
	movl	$0, -96(%ebp)
.L502:
	movl	-96(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L503
	.loc 1 4252 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_register@PLT
	jmp	.L455
.L503:
	.loc 1 4253 0
	movl	8(%ebp), %eax
	movl	%eax, -212(%ebp)
	leal	.LC851@GOTOFF(%ebx), %eax
	movl	%eax, -216(%ebp)
	movl	$12, -220(%ebp)
	cld
	movl	-212(%ebp), %esi
	movl	-216(%ebp), %edi
	movl	-220(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L505
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -92(%ebp)
	jmp	.L507
.L505:
	movl	$0, -92(%ebp)
.L507:
	movl	-92(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L508
	.loc 1 4254 0
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, %edx
	movl	align_loops@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L455
.L508:
	.loc 1 4255 0
	movl	8(%ebp), %eax
	movl	%eax, -224(%ebp)
	leal	.LC852@GOTOFF(%ebx), %eax
	movl	%eax, -228(%ebp)
	movl	$16, -232(%ebp)
	cld
	movl	-224(%ebp), %esi
	movl	-228(%ebp), %edi
	movl	-232(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L510
	movl	8(%ebp), %esi
	addl	$16, %esi
	movl	%esi, -88(%ebp)
	jmp	.L512
.L510:
	movl	$0, -88(%ebp)
.L512:
	movl	-88(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L513
	.loc 1 4256 0
	movl	align_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, %edx
	movl	align_functions@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L455
.L513:
	.loc 1 4258 0
	movl	8(%ebp), %eax
	movl	%eax, -236(%ebp)
	leal	.LC853@GOTOFF(%ebx), %eax
	movl	%eax, -240(%ebp)
	movl	$12, -244(%ebp)
	cld
	movl	-236(%ebp), %esi
	movl	-240(%ebp), %edi
	movl	-244(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L515
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -84(%ebp)
	jmp	.L517
.L515:
	movl	$0, -84(%ebp)
.L517:
	movl	-84(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L518
	.loc 1 4259 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, %edx
	movl	align_jumps@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L455
.L518:
	.loc 1 4260 0
	movl	8(%ebp), %eax
	movl	%eax, -248(%ebp)
	leal	.LC854@GOTOFF(%ebx), %eax
	movl	%eax, -252(%ebp)
	movl	$13, -256(%ebp)
	cld
	movl	-248(%ebp), %esi
	movl	-252(%ebp), %edi
	movl	-256(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L520
	movl	8(%ebp), %esi
	addl	$13, %esi
	movl	%esi, -80(%ebp)
	jmp	.L522
.L520:
	movl	$0, -80(%ebp)
.L522:
	movl	-80(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L523
	.loc 1 4261 0
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, %edx
	movl	align_labels@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L455
.L523:
	.loc 1 4263 0
	movl	8(%ebp), %eax
	movl	%eax, -260(%ebp)
	leal	.LC855@GOTOFF(%ebx), %eax
	movl	%eax, -264(%ebp)
	movl	$21, -268(%ebp)
	cld
	movl	-260(%ebp), %esi
	movl	-264(%ebp), %edi
	movl	-268(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L525
	movl	8(%ebp), %esi
	addl	$21, %esi
	movl	%esi, -76(%ebp)
	jmp	.L527
.L525:
	movl	$0, -76(%ebp)
.L527:
	movl	-76(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L528
.LBB19:
	.loc 1 4266 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4267 0
	cmpl	$0, -20(%ebp)
	jns	.L530
	.loc 1 4268 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC856@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L455
.L530:
	.loc 1 4270 0
	movl	-20(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L533
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L533
	movl	$5, -68(%ebp)
	jmp	.L536
.L533:
	movl	$4, -68(%ebp)
.L536:
	movl	-72(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-68(%ebp), %esi
	movl	%esi, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %edx
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L455
.L528:
.LBE19:
	.loc 1 4272 0
	movl	8(%ebp), %eax
	movl	%eax, -272(%ebp)
	leal	.LC857@GOTOFF(%ebx), %edi
	movl	%edi, -276(%ebp)
	movl	$19, -280(%ebp)
	cld
	movl	-272(%ebp), %esi
	movl	-276(%ebp), %edi
	movl	-280(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L537
	movl	8(%ebp), %esi
	addl	$19, %esi
	movl	%esi, -64(%ebp)
	jmp	.L539
.L537:
	movl	$0, -64(%ebp)
.L539:
	movl	-64(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L540
.LBB20:
	.loc 1 4276 0
	movl	$-1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4277 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L542
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L542
	movl	$5, -60(%ebp)
	jmp	.L545
.L542:
	movl	$4, -60(%ebp)
.L545:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, %edx
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L455
.L540:
.LBE20:
	.loc 1 4279 0
	movl	8(%ebp), %eax
	movl	%eax, -284(%ebp)
	leal	.LC858@GOTOFF(%ebx), %ecx
	movl	%ecx, -288(%ebp)
	movl	$15, -292(%ebp)
	cld
	movl	-284(%ebp), %esi
	movl	-288(%ebp), %edi
	movl	-292(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L546
	movl	8(%ebp), %esi
	addl	$15, %esi
	movl	%esi, -56(%ebp)
	jmp	.L548
.L546:
	movl	$0, -56(%ebp)
.L548:
	movl	-56(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L549
	.loc 1 4281 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, %edx
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_set_maximum_length@PLT
	jmp	.L455
.L549:
	.loc 1 4284 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	leal	.LC859@GOTOFF(%ebx), %eax
	movl	%eax, -300(%ebp)
	movl	$26, -304(%ebp)
	cld
	movl	-296(%ebp), %esi
	movl	-300(%ebp), %edi
	movl	-304(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L551
	movl	8(%ebp), %esi
	addl	$26, %esi
	movl	%esi, -52(%ebp)
	jmp	.L553
.L551:
	movl	$0, -52(%ebp)
.L553:
	movl	-52(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L554
	.loc 1 4287 0
	leal	.LC860@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L556
	.loc 1 4288 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 20(%eax)
	jmp	.L455
.L556:
	.loc 1 4289 0
	leal	.LC861@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L559
	.loc 1 4290 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 20(%eax)
	jmp	.L455
.L559:
	.loc 1 4293 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC862@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L455
.L554:
	.loc 1 4295 0
	leal	.LC863@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L561
	.loc 1 4296 0
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L455
.L561:
	.loc 1 4297 0
	movl	8(%ebp), %eax
	movl	%eax, -308(%ebp)
	leal	.LC864@GOTOFF(%ebx), %eax
	movl	%eax, -312(%ebp)
	movl	$12, -316(%ebp)
	cld
	movl	-308(%ebp), %esi
	movl	-312(%ebp), %edi
	movl	-316(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L563
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -48(%ebp)
	jmp	.L565
.L563:
	movl	$0, -48(%ebp)
.L565:
	movl	-48(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L566
	.loc 1 4298 0
	movl	flag_random_seed@GOT(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L455
.L566:
	.loc 1 4299 0
	leal	.LC865@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L568
	.loc 1 4300 0
	movl	flag_random_seed@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L455
.L568:
	.loc 1 4301 0
	leal	.LC866@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L455
	.loc 1 4306 0
	movl	$0, -124(%ebp)
	jmp	.L447
.L455:
	.loc 1 4308 0
	movl	$1, -124(%ebp)
.L447:
	movl	-124(%ebp), %eax
	.loc 1 4309 0
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	decode_f_option, .-decode_f_option
	.section	.rodata
.LC867:
	.string	"id-clash-"
	.align 4
.LC868:
	.string	"-Wid-clash-LEN is no longer supported"
.LC869:
	.string	"larger-than-"
.LC870:
	.string	"unused"
.LC871:
	.string	"no-unused"
	.text
	.type	decode_W_option, @function
decode_W_option:
.LFB43:
	.loc 1 4318 0
	pushl	%ebp
.LCFI111:
	movl	%esp, %ebp
.LCFI112:
	pushl	%edi
.LCFI113:
	pushl	%esi
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$76, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4319 0
	movl	$0, -20(%ebp)
	.loc 1 4324 0
	movl	$22, -16(%ebp)
	jmp	.L600
.L575:
	.loc 1 4326 0
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L576
	.loc 1 4328 0
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %ecx
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, (%ecx)
	.loc 1 4329 0
	movl	$1, -40(%ebp)
	jmp	.L578
.L576:
	.loc 1 4332 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$110, %al
	jne	.L574
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L574
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L574
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	8(%ebp), %edx
	addl	$3, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L574
	.loc 1 4335 0
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %ecx
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%ecx)
	.loc 1 4336 0
	movl	$1, -40(%ebp)
	jmp	.L578
.L574:
.L600:
	.loc 1 4324 0
	subl	$1, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	.L575
	.loc 1 4340 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC867@GOTOFF(%ebx), %eax
	movl	%eax, -48(%ebp)
	movl	$9, -52(%ebp)
	cld
	movl	-44(%ebp), %esi
	movl	-48(%ebp), %edi
	movl	-52(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L584
	movl	8(%ebp), %esi
	addl	$9, %esi
	movl	%esi, -36(%ebp)
	jmp	.L586
.L584:
	movl	$0, -36(%ebp)
.L586:
	movl	-36(%ebp), %edi
	movl	%edi, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L587
	.loc 1 4341 0
	leal	.LC868@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L589
.L587:
	.loc 1 4342 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC869@GOTOFF(%ebx), %eax
	movl	%eax, -60(%ebp)
	movl	$12, -64(%ebp)
	cld
	movl	-56(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	-64(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L590
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -32(%ebp)
	jmp	.L592
.L590:
	movl	$0, -32(%ebp)
.L592:
	movl	-32(%ebp), %edi
	movl	%edi, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L593
	.loc 1 4344 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, %edx
	sarl	$31, %edx
	movl	larger_than_size@GOT(%ebx), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 4346 0
	movl	larger_than_size@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	andl	%edx, %eax
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %edx
	movl	warn_larger_than@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L589
.L593:
	.loc 1 4348 0
	leal	.LC870@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L595
	.loc 1 4350 0
	movl	$1, (%esp)
	call	set_Wunused@PLT
	jmp	.L589
.L595:
	.loc 1 4352 0
	leal	.LC871@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L597
	.loc 1 4354 0
	movl	$0, (%esp)
	call	set_Wunused@PLT
	jmp	.L589
.L597:
	.loc 1 4357 0
	movl	$0, -40(%ebp)
	jmp	.L578
.L589:
	.loc 1 4359 0
	movl	$1, -40(%ebp)
.L578:
	movl	-40(%ebp), %eax
	.loc 1 4360 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	decode_W_option, .-decode_W_option
	.section	.rodata
	.align 4
	.type	max_debug_level.17294, @object
	.size	max_debug_level.17294, 4
max_debug_level.17294:
	.long	3
.LC872:
	.string	"none"
.LC873:
	.string	"coff"
.LC874:
	.string	"dwarf-1"
.LC875:
	.string	"xcoff"
.LC876:
	.string	"vms"
	.section	.data.rel.ro.local
	.align 4
	.type	debug_type_names.17293, @object
	.size	debug_type_names.17293, 28
debug_type_names.17293:
	.long	.LC872
	.long	.LC40
	.long	.LC873
	.long	.LC874
	.long	.LC48
	.long	.LC875
	.long	.LC876
	.local	type_explicitly_set_p.17292
	.comm	type_explicitly_set_p.17292,4,4
	.local	selected_debug_type.17291
	.comm	selected_debug_type.17291,4,4
	.local	level.17290
	.comm	level.17290,4,4
	.section	.rodata
	.align 4
.LC877:
	.string	"use -gdwarf -g%d for DWARF v1, level %d"
.LC878:
	.string	"use -gdwarf-2   for DWARF v2"
	.align 4
.LC879:
	.string	"ignoring option `%s' due to invalid debug level specification"
	.align 4
.LC880:
	.string	"`%s' ignored, conflicts with `-g%s'"
	.text
	.type	decode_g_option, @function
decode_g_option:
.LFB44:
	.loc 1 4369 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%edi
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$48, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4391 0
	leal	debug_args@GOTOFF(%ebx), %eax
	movl	%eax, da@GOTOFF(%ebx)
	jmp	.L602
.L603:
.LBB21:
	.loc 1 4393 0
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	cld
	movl	-36(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 4395 0
	cmpl	$0, -20(%ebp)
	je	.L604
	movl	-20(%ebp), %edx
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L606
.L604:
.LBB22:
	.loc 1 4397 0
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4398 0
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4400 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L607
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L606
.L607:
	.loc 1 4411 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L609
	.loc 1 4412 0
	movl	max_debug_level.17294@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, level.17290@GOTOFF(%ebx)
	jmp	.L611
.L609:
	.loc 1 4414 0
	movl	level.17290@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L612
	movl	level.17290@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L614
.L612:
	movl	$2, -32(%ebp)
.L614:
	movl	-32(%ebp), %edi
	movl	%edi, level.17290@GOTOFF(%ebx)
.L611:
	.loc 1 4416 0
	cmpl	$1, -20(%ebp)
	jle	.L615
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L615
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L615
	.loc 1 4418 0
	movl	level.17290@GOTOFF(%ebx), %eax
	movl	level.17290@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC877@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4420 0
	movl	level.17290@GOTOFF(%ebx), %eax
	cmpl	$2, %eax
	jne	.L615
	.loc 1 4421 0
	leal	.LC878@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L615:
	.loc 1 4424 0
	movl	level.17290@GOTOFF(%ebx), %edx
	movl	max_debug_level.17294@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jbe	.L620
	.loc 1 4426 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC879@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 4429 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, level.17290@GOTOFF(%ebx)
.L620:
	.loc 1 4432 0
	cmpl	$0, -16(%ebp)
	jne	.L622
	.loc 1 4434 0
	movl	$0, -16(%ebp)
	.loc 1 4436 0
	cmpl	$1, -20(%ebp)
	jle	.L622
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L622
	.loc 1 4439 0
	movl	$4, -16(%ebp)
.L622:
	.loc 1 4456 0
	movl	type_explicitly_set_p.17292@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L626
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L626
	movl	selected_debug_type.17291@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	je	.L626
	.loc 1 4460 0
	movl	selected_debug_type.17291@GOTOFF(%ebx), %eax
	movl	debug_type_names.17293@GOTOFF(%ebx,%eax,4), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC880@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 4456 0
	jmp	.L635
.L626:
	.loc 1 4466 0
	movl	type_explicitly_set_p.17292@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L631
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L631
	jmp	.L634
.L631:
	.loc 1 4471 0
	movl	-16(%ebp), %eax
	movl	%eax, selected_debug_type.17291@GOTOFF(%ebx)
	.loc 1 4472 0
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, type_explicitly_set_p.17292@GOTOFF(%ebx)
.L634:
	.loc 1 4476 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 4482 0
	movl	da@GOTOFF(%ebx), %eax
	movl	8(%eax), %edx
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4483 0
	movl	level.17290@GOTOFF(%ebx), %edx
	movl	debug_info_level@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4486 0
	jmp	.L635
.L606:
.LBE22:
.LBE21:
	.loc 1 4391 0
	movl	da@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	%eax, da@GOTOFF(%ebx)
.L602:
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L603
.L635:
	.loc 1 4490 0
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L636
	.loc 1 4491 0
	movl	$0, -28(%ebp)
	jmp	.L638
.L636:
	.loc 1 4493 0
	movl	$1, -28(%ebp)
.L638:
	movl	-28(%ebp), %eax
	.loc 1 4494 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	decode_g_option, .-decode_g_option
	.section	.rodata
.LC881:
	.string	"-help"
.LC882:
	.string	"-target-help"
.LC883:
	.string	"-version"
.LC884:
	.string	"-param"
	.align 4
.LC885:
	.string	"-param option missing argument"
.LC886:
	.string	"invalid --param option: %s"
.LC887:
	.string	"invalid parameter value `%s'"
.LC888:
	.string	"mp"
.LC889:
	.string	"dumpbase"
.LC890:
	.string	"pedantic"
.LC891:
	.string	"pedantic-errors"
.LC892:
	.string	"pstatic_as_global"
.LC893:
	.string	"quiet"
.LC894:
	.string	"version"
.LC895:
	.string	"aux-info"
.LC896:
	.string	"auxbase"
.LC897:
	.string	"auxbase-strip"
	.text
	.type	independent_decode_option, @function
independent_decode_option:
.LFB45:
	.loc 1 4503 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%edi
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$64, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4504 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4506 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L641
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L643
.L641:
	.loc 1 4508 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L644
	.loc 1 4509 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L644:
	.loc 1 4511 0
	movl	-28(%ebp), %eax
	movl	%eax, filename@GOTOFF(%ebx)
	.loc 1 4513 0
	movl	$1, -44(%ebp)
	jmp	.L646
.L643:
	.loc 1 4516 0
	addl	$1, -28(%ebp)
	.loc 1 4518 0
	leal	.LC881@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L647
	.loc 1 4520 0
	call	display_help
	.loc 1 4521 0
	movl	$1, exit_after_options@GOTOFF(%ebx)
	.loc 1 4522 0
	movl	$1, -44(%ebp)
	jmp	.L646
.L647:
	.loc 1 4525 0
	leal	.LC882@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L649
	.loc 1 4527 0
	call	display_target_options
	.loc 1 4528 0
	movl	$1, exit_after_options@GOTOFF(%ebx)
	.loc 1 4529 0
	movl	$1, -44(%ebp)
	jmp	.L646
.L649:
	.loc 1 4532 0
	leal	.LC883@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L651
	.loc 1 4534 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_version
	.loc 1 4535 0
	movl	$1, exit_after_options@GOTOFF(%ebx)
	.loc 1 4536 0
	movl	$1, -44(%ebp)
	jmp	.L646
.L651:
	.loc 1 4540 0
	leal	.LC884@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L653
.LBB23:
	.loc 1 4544 0
	cmpl	$1, 8(%ebp)
	jne	.L655
	.loc 1 4546 0
	leal	.LC885@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4547 0
	movl	$1, -44(%ebp)
	jmp	.L646
.L655:
	.loc 1 4551 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4553 0
	movl	$61, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4554 0
	cmpl	$0, -24(%ebp)
	jne	.L657
	.loc 1 4555 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC886@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L659
.L657:
.LBB24:
	.loc 1 4561 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 4563 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	$-1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4564 0
	cmpl	$-1, -20(%ebp)
	je	.L660
	.loc 1 4565 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	jmp	.L659
.L660:
	.loc 1 4567 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC887@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L659:
.LBE24:
	.loc 1 4570 0
	movl	$2, -44(%ebp)
	jmp	.L646
.L653:
.LBE23:
	.loc 1 4574 0
	leal	.LC888@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L662
	.loc 1 4576 0
	movl	flag_openmp@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4577 0
	movl	$1, -44(%ebp)
	jmp	.L646
.L662:
	.loc 1 4581 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$89, %al
	jne	.L664
	.loc 1 4582 0
	addl	$1, -28(%ebp)
.L664:
	.loc 1 4584 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$71, %eax
	movl	%eax, -48(%ebp)
	cmpl	$48, -48(%ebp)
	ja	.L666
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L680@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L680:
	.long	.L667@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L681@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L669@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L670@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L671@GOTOFF
	.long	.L666@GOTOFF
	.long	.L672@GOTOFF
	.long	.L673@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L674@GOTOFF
	.long	.L666@GOTOFF
	.long	.L675@GOTOFF
	.long	.L676@GOTOFF
	.long	.L677@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L666@GOTOFF
	.long	.L678@GOTOFF
	.long	.L679@GOTOFF
	.text
.L666:
	.loc 1 4587 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L674:
	.loc 1 4594 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	set_target_switch
	.loc 1 4595 0
	jmp	.L681
.L672:
	.loc 1 4598 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_f_option
	movl	%eax, -44(%ebp)
	jmp	.L646
.L673:
	.loc 1 4601 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_g_option
	movl	%eax, -44(%ebp)
	jmp	.L646
.L671:
	.loc 1 4604 0
	leal	.LC889@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L682
	.loc 1 4606 0
	cmpl	$1, 8(%ebp)
	jne	.L684
	.loc 1 4607 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L684:
	.loc 1 4609 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L686
	.loc 1 4610 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	dump_base_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L686:
	.loc 1 4612 0
	movl	$2, -44(%ebp)
	jmp	.L646
.L682:
	.loc 1 4615 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_d_option
	.loc 1 4616 0
	jmp	.L681
.L676:
	.loc 1 4619 0
	leal	.LC890@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L688
	.loc 1 4620 0
	movl	pedantic@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L681
.L688:
	.loc 1 4621 0
	leal	.LC891@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L691
	.loc 1 4622 0
	movl	pedantic@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_pedantic_errors@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L681
.L691:
	.loc 1 4624 0
	leal	.LC892@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L693
	.loc 1 4625 0
	movl	pstatic_as_global@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L681
.L693:
	.loc 1 4627 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L695
	.loc 1 4628 0
	movl	profile_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L681
.L695:
	.loc 1 4630 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L677:
	.loc 1 4634 0
	leal	.LC893@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L697
	.loc 1 4635 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4638 0
	jmp	.L681
.L697:
	.loc 1 4637 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L678:
	.loc 1 4641 0
	leal	.LC894@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L699
	.loc 1 4642 0
	movl	$1, version_flag@GOTOFF(%ebx)
	.loc 1 4645 0
	jmp	.L681
.L699:
	.loc 1 4644 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L679:
	.loc 1 4648 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L701
	.loc 1 4649 0
	movl	inhibit_warnings@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4652 0
	jmp	.L681
.L701:
	.loc 1 4651 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L669:
	.loc 1 4655 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L703
	.loc 1 4657 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4661 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L681
	.loc 1 4662 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	$2, (%eax)
	.loc 1 4666 0
	jmp	.L681
.L703:
	.loc 1 4665 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_W_option
	movl	%eax, -44(%ebp)
	jmp	.L646
.L670:
	.loc 1 4669 0
	movl	$8, 8(%esp)
	leal	.LC895@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L707
	.loc 1 4671 0
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L709
	.loc 1 4673 0
	cmpl	$1, 8(%ebp)
	jne	.L711
	.loc 1 4674 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L711:
	.loc 1 4676 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, aux_info_file_name@GOTOFF(%ebx)
	.loc 1 4677 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4678 0
	movl	$2, -44(%ebp)
	jmp	.L646
.L709:
	.loc 1 4680 0
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L713
	.loc 1 4682 0
	movl	-28(%ebp), %eax
	addl	$9, %eax
	movl	%eax, aux_info_file_name@GOTOFF(%ebx)
	.loc 1 4683 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4714 0
	jmp	.L681
.L713:
	.loc 1 4686 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L707:
	.loc 1 4688 0
	leal	.LC896@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L715
	.loc 1 4690 0
	cmpl	$1, 8(%ebp)
	jne	.L717
	.loc 1 4691 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L717:
	.loc 1 4693 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L719
	.loc 1 4694 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	aux_base_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L719:
	.loc 1 4696 0
	movl	$2, -44(%ebp)
	jmp	.L646
.L715:
	.loc 1 4698 0
	leal	.LC897@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L721
	.loc 1 4700 0
	cmpl	$1, 8(%ebp)
	jne	.L723
	.loc 1 4701 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L723:
	.loc 1 4703 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L725
	.loc 1 4705 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -52(%ebp)
	movl	$0, %eax
	cld
	movl	-52(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strip_off_ending@PLT
	.loc 1 4706 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L725
	.loc 1 4707 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	aux_base_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L725:
	.loc 1 4710 0
	movl	$2, -44(%ebp)
	jmp	.L646
.L721:
	.loc 1 4713 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L675:
	.loc 1 4717 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L728
	.loc 1 4719 0
	cmpl	$1, 8(%ebp)
	jne	.L730
	.loc 1 4720 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L730:
	.loc 1 4722 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	asm_file_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4723 0
	movl	$2, -44(%ebp)
	jmp	.L646
.L728:
	.loc 1 4725 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L667:
.LBB25:
	.loc 1 4732 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L732
	.loc 1 4734 0
	cmpl	$1, 8(%ebp)
	jne	.L734
	.loc 1 4735 0
	movl	$0, -44(%ebp)
	jmp	.L646
.L734:
	.loc 1 4737 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$-1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4738 0
	movl	$2, -12(%ebp)
	jmp	.L736
.L732:
	.loc 1 4742 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	$-1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4743 0
	movl	$1, -12(%ebp)
.L736:
	.loc 1 4746 0
	cmpl	$-1, -16(%ebp)
	jne	.L737
	.loc 1 4747 0
	movl	$0, -12(%ebp)
	jmp	.L739
.L737:
	.loc 1 4750 0
	movl	g_switch_set@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4751 0
	movl	g_switch_value@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L739:
	.loc 1 4754 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L646
.L681:
.LBE25:
	.loc 1 4758 0
	movl	$1, -44(%ebp)
.L646:
	movl	-44(%ebp), %eax
	.loc 1 4759 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	independent_decode_option, .-independent_decode_option
.globl check_gnu_errors
	.type	check_gnu_errors, @function
check_gnu_errors:
.LFB46:
	.loc 1 4765 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4766 0
	movl	global_dc@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4767 0
	movl	global_dc@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4768 0
	popl	%ebp
	ret
.LFE46:
	.size	check_gnu_errors, .-check_gnu_errors
	.type	set_target_switch, @function
set_target_switch:
.LFB47:
	.loc 1 4777 0
	pushl	%ebp
.LCFI129:
	movl	%esp, %ebp
.LCFI130:
	pushl	%edi
.LCFI131:
	pushl	%esi
.LCFI132:
	pushl	%ebx
.LCFI133:
	subl	$44, %esp
.LCFI134:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4779 0
	movl	$0, -20(%ebp)
	.loc 1 4781 0
	movl	$0, -24(%ebp)
	jmp	.L744
.L745:
	.loc 1 4782 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L746
	.loc 1 4784 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	testl	%eax, %eax
	jns	.L748
	.loc 1 4785 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	leal	-1(%eax), %edx
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	%eax, %edx
	movl	target_flags@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L750
.L748:
	.loc 1 4787 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %edx
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	orl	%eax, %edx
	movl	target_flags@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L750:
	.loc 1 4788 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L751
	.loc 1 4790 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	testl	%eax, %eax
	jns	.L753
	.loc 1 4791 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	%eax, %edx
	negl	%edx
	movl	target_flags_explicit@GOT(%ebx), %eax
	movl	(%eax), %eax
	orl	%eax, %edx
	movl	target_flags_explicit@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L751
.L753:
	.loc 1 4793 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %edx
	movl	target_flags_explicit@GOT(%ebx), %eax
	movl	(%eax), %eax
	orl	%eax, %edx
	movl	target_flags_explicit@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L751:
	.loc 1 4795 0
	movl	$1, -20(%ebp)
.L746:
	.loc 1 4781 0
	addl	$1, -24(%ebp)
.L744:
	cmpl	$61, -24(%ebp)
	jbe	.L745
	.loc 1 4799 0
	cmpl	$0, -20(%ebp)
	jne	.L756
	.loc 1 4800 0
	movl	$0, -24(%ebp)
	jmp	.L758
.L759:
.LBB26:
	.loc 1 4802 0
	movl	-24(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 4803 0
	movl	-16(%ebp), %esi
	movl	-24(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	%esi, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L760
	.loc 1 4805 0
	movl	-24(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %edx
	movl	-16(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4806 0
	movl	$1, -20(%ebp)
.L760:
.LBE26:
	.loc 1 4800 0
	addl	$1, -24(%ebp)
.L758:
	cmpl	$7, -24(%ebp)
	jbe	.L759
.L756:
	.loc 1 4811 0
	cmpl	$0, -20(%ebp)
	jne	.L764
	.loc 1 4812 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC767@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L764:
	.loc 1 4813 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	set_target_switch, .-set_target_switch
	.section	.rodata
.LC898:
	.string	" "
.LC899:
	.string	"4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
.LC900:
	.string	"sl-linux"
	.align 4
.LC901:
	.string	"%s%s%s version %s (%s)\n%s\tcompiled by GNU C version %s.\n"
	.align 4
.LC902:
	.string	"%s%sGGC heuristics: --param ggc-min-expand=%d --param ggc-min-heapsize=%d\n"
	.text
	.type	print_version, @function
print_version:
.LFB48:
	.loc 1 4823 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$68, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4827 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L766
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	jmp	.L768
.L766:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
.L768:
	leal	.LC899@GOTOFF(%ebx), %eax
	movl	%eax, 32(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	.LC900@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	version_string@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC901@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
	.loc 1 4838 0
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$264, %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	compiler_params@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$252, %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L769
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L771
.L769:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L771:
	movl	-16(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC902@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
	.loc 1 4841 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	print_version, .-print_version
	.section	.rodata
.LC903:
	.string	"%s%s%s"
	.text
	.type	print_single_switch, @function
print_single_switch:
.LFB49:
	.loc 1 4852 0
	pushl	%ebp
.LCFI139:
	movl	%esp, %ebp
.LCFI140:
	pushl	%edi
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$64, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4855 0
	movl	24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	32(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -32(%ebp)
	movl	$0, %eax
	cld
	movl	-32(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%eax, %edx
	movl	36(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -36(%ebp)
	movl	$0, %eax
	cld
	movl	-36(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4857 0
	cmpl	$0, 12(%ebp)
	je	.L774
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	.L774
	.loc 1 4860 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 4861 0
	movl	$0, 12(%ebp)
.L774:
	.loc 1 4863 0
	cmpl	$0, 12(%ebp)
	jne	.L777
	.loc 1 4865 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 4866 0
	movl	20(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -40(%ebp)
	movl	$0, %eax
	cld
	movl	-40(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 12(%ebp)
.L777:
	.loc 1 4868 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC903@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 4869 0
	movl	-12(%ebp), %eax
	addl	%eax, 12(%ebp)
	.loc 1 4870 0
	movl	12(%ebp), %eax
	.loc 1 4871 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	print_single_switch, .-print_single_switch
	.section	.rodata
.LC904:
	.string	"options passed: "
.LC905:
	.string	"-o"
.LC906:
	.string	"-quiet"
.LC907:
	.string	"options enabled: "
.LC908:
	.string	"-f"
.LC909:
	.string	"-m"
.LC910:
	.string	"-m%s"
	.text
	.type	print_switch_values, @function
print_switch_values:
.LFB50:
	.loc 1 4883 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%esi
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$336, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -284(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -288(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -292(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -296(%ebp)
	.loc 1 4883 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4891 0
	call	default_flag_random_seed@PLT
	.loc 1 4895 0
	movl	-288(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L781
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, -304(%ebp)
	jmp	.L783
.L781:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -304(%ebp)
.L783:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC904@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	print_single_switch
	movl	%eax, 12(%ebp)
	.loc 1 4898 0
	movl	save_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -272(%ebp)
	jmp	.L784
.L785:
	.loc 1 4899 0
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L786
	.loc 1 4902 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC905@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L788
	.loc 1 4904 0
	movl	-272(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L786
	.loc 1 4905 0
	addl	$4, -272(%ebp)
	.loc 1 4906 0
	jmp	.L786
.L788:
	.loc 1 4908 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC906@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L786
	.loc 1 4910 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC883@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L786
	.loc 1 4912 0
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$100, %al
	je	.L786
	.loc 1 4915 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	print_single_switch
	movl	%eax, 12(%ebp)
.L786:
	.loc 1 4898 0
	addl	$4, -272(%ebp)
.L784:
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L785
	.loc 1 4917 0
	cmpl	$0, 12(%ebp)
	jle	.L796
	.loc 1 4918 0
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
.L796:
	.loc 1 4924 0
	movl	-288(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L798
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, -300(%ebp)
	jmp	.L800
.L798:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -300(%ebp)
.L800:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC907@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-300(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	print_single_switch
	movl	%eax, 12(%ebp)
	.loc 1 4927 0
	movl	$0, -276(%ebp)
	jmp	.L801
.L802:
	.loc 1 4928 0
	movl	-276(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %eax
	movl	(%eax), %ecx
	movl	-276(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	cmpl	%eax, %ecx
	jne	.L803
	.loc 1 4929 0
	movl	-276(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 28(%esp)
	leal	.LC908@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	print_single_switch
	movl	%eax, 12(%ebp)
.L803:
	.loc 1 4927 0
	addl	$1, -276(%ebp)
.L801:
	cmpl	$109, -276(%ebp)
	jbe	.L802
	.loc 1 4934 0
	movl	$0, -276(%ebp)
	jmp	.L806
.L807:
	.loc 1 4935 0
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L808
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	testl	%eax, %eax
	jle	.L808
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %edx
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %esi
	andl	%eax, %esi
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	cmpl	%eax, %esi
	jne	.L808
	.loc 1 4940 0
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 28(%esp)
	leal	.LC909@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	print_single_switch
	movl	%eax, 12(%ebp)
.L808:
	.loc 1 4934 0
	addl	$1, -276(%ebp)
.L806:
	cmpl	$61, -276(%ebp)
	jbe	.L807
	.loc 1 4945 0
	movl	$0, -276(%ebp)
	jmp	.L813
.L814:
	.loc 1 4946 0
	movl	-276(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L815
.LBB27:
	.loc 1 4949 0
	movl	-276(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 8(%esp)
	leal	.LC910@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 4950 0
	movl	-276(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	(%eax), %eax
	movl	%eax, 28(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-292(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-284(%ebp), %eax
	movl	%eax, (%esp)
	call	print_single_switch
	movl	%eax, 12(%ebp)
.L815:
.LBE27:
	.loc 1 4945 0
	addl	$1, -276(%ebp)
.L813:
	cmpl	$7, -276(%ebp)
	jbe	.L814
	.loc 1 4955 0
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 4956 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L819
	call	__stack_chk_fail_local
.L819:
	addl	$336, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE50:
	.size	print_switch_values, .-print_switch_values
	.section	.rodata
.LC911:
	.string	"/dev/null"
	.text
	.type	init_asm_output, @function
init_asm_output:
.LFB51:
	.loc 1 4965 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%ebx
.LCFI151:
	subl	$20, %esp
.LCFI152:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4967 0
	leal	.LC773@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC911@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5020 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	init_asm_output, .-init_asm_output
	.type	general_init, @function
general_init:
.LFB52:
	.loc 1 5028 0
	pushl	%ebp
.LCFI153:
	movl	%esp, %ebp
.LCFI154:
	pushl	%edi
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$32, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5031 0
	movl	8(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 5032 0
	jmp	.L823
.L824:
	.loc 1 5033 0
	subl	$1, -12(%ebp)
.L823:
	.loc 1 5032 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L825
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L824
.L825:
	.loc 1 5034 0
	movl	progname@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5036 0
	movl	progname@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xmalloc_set_program_name@PLT
	.loc 1 5038 0
	call	hex_init@PLT
	.loc 1 5044 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	signal@PLT
	.loc 1 5047 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	signal@PLT
	.loc 1 5050 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	signal@PLT
	.loc 1 5053 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	signal@PLT
	.loc 1 5059 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	signal@PLT
	.loc 1 5064 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	diagnostic_initialize@PLT
	.loc 1 5068 0
	call	init_ggc@PLT
	.loc 1 5069 0
	call	init_stringpool@PLT
	.loc 1 5070 0
	call	init_ttree@PLT
	.loc 1 5071 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	general_init, .-general_init
	.section	.rodata
.LC912:
	.string	"-O"
.LC913:
	.string	"PT:"
	.align 4
.LC914:
	.string	"ignoring command line option '%s'"
	.align 4
.LC915:
	.string	"(it is valid for %s but not the selected language)"
	.align 4
.LC916:
	.string	"`%s': unknown or unsupported -g option"
	.align 4
.LC917:
	.string	"-Wuninitialized is not supported without -O"
	.text
	.type	parse_options_and_default_flags, @function
parse_options_and_default_flags:
.LFB53:
	.loc 1 5087 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%edi
.LCFI160:
	pushl	%esi
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$60, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5091 0
	movl	save_argc@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5092 0
	movl	save_argv@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5095 0
	call	init_reg_sets@PLT
	.loc 1 5098 0
	movl	$23, 4(%esp)
	leal	lang_independent_params@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_params@PLT
	.loc 1 5101 0
	call	init_ggc_heuristics@PLT
	.loc 1 5104 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	8(%eax), %eax
	call	*%eax
	.loc 1 5108 0
	movl	$1, -44(%ebp)
	jmp	.L829
.L830:
	.loc 1 5110 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC912@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L831
	.loc 1 5112 0
	movl	optimize@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5113 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L833
.L831:
	.loc 1 5115 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L833
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$79, %al
	jne	.L833
.LBB28:
	.loc 1 5118 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -40(%ebp)
	.loc 1 5121 0
	movl	$3, 8(%esp)
	leal	.LC913@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L833
	.loc 1 5126 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L837
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L837
	.loc 1 5128 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5131 0
	movl	optimize@GOT(%ebx), %eax
	movl	$2, (%eax)
	.loc 1 5126 0
	jmp	.L833
.L837:
.LBB29:
	.loc 1 5135 0
	movl	-40(%ebp), %eax
	subl	$2, %eax
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5136 0
	cmpl	$-1, -36(%ebp)
	je	.L833
	.loc 1 5138 0
	movl	optimize@GOT(%ebx), %eax
	movl	-36(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 5139 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	$0, (%eax)
.L833:
.LBE29:
.LBE28:
	.loc 1 5108 0
	addl	$1, -44(%ebp)
.L829:
	movl	-44(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L830
	.loc 1 5146 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	Opt_Level@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5149 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L842
	.loc 1 5151 0
	movl	flag_merge_constants@GOT(%ebx), %eax
	movl	$0, (%eax)
.L842:
	.loc 1 5154 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L844
	.loc 1 5156 0
	movl	flag_defer_pop@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5157 0
	movl	flag_thread_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5159 0
	movl	flag_delayed_branch@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5162 0
	movl	flag_omit_frame_pointer@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5164 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5165 0
	movl	flag_cprop_registers@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5166 0
	movl	$1, flag_loop_optimize@GOTOFF(%ebx)
	.loc 1 5167 0
	movl	$1, flag_crossjumping@GOTOFF(%ebx)
	.loc 1 5168 0
	movl	$1, flag_if_conversion@GOTOFF(%ebx)
	.loc 1 5169 0
	movl	$1, flag_if_conversion2@GOTOFF(%ebx)
.L844:
	.loc 1 5172 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L846
	.loc 1 5180 0
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5181 0
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5182 0
	movl	$1, flag_gcse@GOTOFF(%ebx)
	.loc 1 5183 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5184 0
	movl	flag_strength_reduce@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5185 0
	movl	$1, flag_rerun_cse_after_loop@GOTOFF(%ebx)
	.loc 1 5186 0
	movl	flag_rerun_loop_opt@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5187 0
	movl	flag_caller_saves@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5188 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5189 0
	movl	flag_peephole2@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5191 0
	movl	flag_schedule_insns@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5192 0
	movl	flag_schedule_insns_after_reload@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5194 0
	movl	flag_regmove@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5195 0
	movl	flag_strict_aliasing@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5196 0
	movl	$1, flag_delete_null_pointer_checks@GOTOFF(%ebx)
	.loc 1 5197 0
	movl	flag_reorder_blocks@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5198 0
	movl	flag_reorder_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
.L846:
	.loc 1 5201 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jle	.L848
	.loc 1 5203 0
	movl	flag_inline_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5204 0
	movl	flag_rename_registers@GOT(%ebx), %eax
	movl	$1, (%eax)
.L848:
	.loc 1 5207 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L850
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L852
.L850:
	.loc 1 5209 0
	movl	align_loops@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5210 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5211 0
	movl	align_labels@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5212 0
	movl	align_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5221 0
	movl	flag_reorder_blocks@GOT(%ebx), %eax
	movl	$0, (%eax)
.L852:
	.loc 1 5225 0
	movl	flag_signed_char@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5233 0
	movl	target_flags@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5234 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_target_switch
	.loc 1 5248 0
	movl	$1, -44(%ebp)
	jmp	.L892
.L854:
.LBB30:
	.loc 1 5254 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	12(%eax), %esi
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%edx, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	movl	%eax, -32(%ebp)
	.loc 1 5256 0
	cmpl	$0, -32(%ebp)
	js	.L855
	.loc 1 5260 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	12(%ebp), %ecx
	movl	-44(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%edx, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	independent_decode_option
	movl	%eax, -28(%ebp)
	jmp	.L857
.L855:
	.loc 1 5263 0
	negl	-32(%ebp)
	.loc 1 5264 0
	movl	$0, -28(%ebp)
.L857:
	.loc 1 5267 0
	cmpl	$0, -32(%ebp)
	jne	.L858
	cmpl	$0, -28(%ebp)
	je	.L860
.L858:
	.loc 1 5268 0
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-28(%ebp), %edi
	movl	%edi, -48(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jge	.L861
	movl	-52(%ebp), %edi
	movl	%edi, -48(%ebp)
.L861:
	movl	-48(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 5267 0
	jmp	.L853
.L860:
.LBB31:
	.loc 1 5271 0
	movl	$0, -24(%ebp)
	.loc 1 5272 0
	movl	$0, -20(%ebp)
	.loc 1 5282 0
	movl	$0, -16(%ebp)
	jmp	.L862
.L863:
	.loc 1 5284 0
	movl	-16(%ebp), %eax
	movl	documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5286 0
	cmpl	$0, -24(%ebp)
	jne	.L864
	.loc 1 5287 0
	movl	-16(%ebp), %eax
	movl	4+documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -20(%ebp)
	jmp	.L866
.L864:
	.loc 1 5288 0
	movl	-24(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -56(%ebp)
	movl	$0, %eax
	cld
	movl	-56(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %ecx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	%ecx, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L867
.L866:
	.loc 1 5282 0
	addl	$1, -16(%ebp)
.L862:
	cmpl	$200, -16(%ebp)
	jbe	.L863
.L867:
	.loc 1 5292 0
	cmpl	$201, -16(%ebp)
	je	.L868
	.loc 1 5294 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L873
	.loc 1 5296 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC914@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5297 0
	cmpl	$0, -20(%ebp)
	je	.L873
	.loc 1 5298 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC915@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L873
.L868:
	.loc 1 5303 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L874
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$103, %al
	jne	.L874
	.loc 1 5304 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC916@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5303 0
	jmp	.L873
.L874:
	.loc 1 5306 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC862@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L873:
	.loc 1 5308 0
	addl	$1, -44(%ebp)
.L853:
.L892:
.LBE31:
.LBE30:
	.loc 1 5248 0
	movl	-44(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L854
	.loc 1 5322 0
	movl	flag_pie@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L878
	.loc 1 5323 0
	movl	flag_pie@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_pic@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L878:
	.loc 1 5324 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L880
	movl	flag_pie@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L880
	.loc 1 5325 0
	movl	flag_shlib@GOT(%ebx), %eax
	movl	$1, (%eax)
.L880:
	.loc 1 5327 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L883
	.loc 1 5328 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L885
.L883:
	.loc 1 5330 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_really_no_inline@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L885:
	.loc 1 5337 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L886
	.loc 1 5341 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5342 0
	movl	warn_inline@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5347 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L886
	.loc 1 5348 0
	leal	.LC917@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L886:
	.loc 1 5351 0
	movl	flag_really_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L891
	.loc 1 5352 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_really_no_inline@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L891:
	.loc 1 5353 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE53:
	.size	parse_options_and_default_flags, .-parse_options_and_default_flags
	.section	.rodata
.LC918:
	.string	"_"
.LC919:
	.string	"no-"
	.align 4
.LC920:
	.string	"-f%sleading-underscore not supported on this target machine"
.LC921:
	.string	"\n"
	.align 4
.LC922:
	.string	"-ffunction-sections not supported for this target"
	.align 4
.LC923:
	.string	"-fdata-sections not supported for this target"
	.align 4
.LC924:
	.string	"-ffunction-sections disabled; it makes profiling impossible"
	.align 4
.LC925:
	.string	"-fprefetch-loop-arrays not supported for this target (try -march switches)"
	.align 4
.LC926:
	.string	"-fprefetch-loop-arrays is not supported with -Os"
	.text
	.type	process_options, @function
process_options:
.LFB54:
	.loc 1 5358 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$36, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5361 0
	call	override_options@PLT
	.loc 1 5366 0
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L894
	movl	align_loops@GOT(%ebx), %eax
	movl	$1, (%eax)
.L894:
	.loc 1 5367 0
	movl	align_loops_max_skip@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L896
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L898
.L896:
	.loc 1 5368 0
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	align_loops_max_skip@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L898:
	.loc 1 5369 0
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	align_loops_log@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5370 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L899
	movl	align_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
.L899:
	.loc 1 5371 0
	movl	align_jumps_max_skip@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L901
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L903
.L901:
	.loc 1 5372 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	align_jumps_max_skip@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L903:
	.loc 1 5373 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	align_jumps_log@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5374 0
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L904
	movl	align_labels@GOT(%ebx), %eax
	movl	$1, (%eax)
.L904:
	.loc 1 5375 0
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	align_labels_log@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5376 0
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L906
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L908
.L906:
	.loc 1 5377 0
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L908:
	.loc 1 5378 0
	movl	align_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L909
	movl	align_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
.L909:
	.loc 1 5379 0
	movl	align_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, %edx
	movl	align_functions_log@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5383 0
	movl	flag_unroll_all_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L911
	.loc 1 5384 0
	movl	flag_unroll_loops@GOT(%ebx), %eax
	movl	$1, (%eax)
.L911:
	.loc 1 5389 0
	movl	flag_unroll_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L913
	.loc 1 5391 0
	movl	flag_strength_reduce@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5392 0
	movl	$1, flag_rerun_cse_after_loop@GOTOFF(%ebx)
.L913:
	.loc 1 5395 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L915
	.loc 1 5396 0
	movl	flag_asynchronous_unwind_tables@GOT(%ebx), %eax
	movl	$1, (%eax)
.L915:
	.loc 1 5397 0
	movl	flag_asynchronous_unwind_tables@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L917
	.loc 1 5398 0
	movl	flag_unwind_tables@GOT(%ebx), %eax
	movl	$1, (%eax)
.L917:
	.loc 1 5410 0
	movl	user_label_prefix@GOT(%ebx), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 5411 0
	movl	flag_leading_underscore@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L919
	.loc 1 5415 0
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L921
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L923
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L923
.L921:
	.loc 1 5418 0
	movl	flag_leading_underscore@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L925
	leal	.LC918@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L927
.L925:
	leal	.LC36@GOTOFF(%ebx), %edx
	movl	%edx, -12(%ebp)
.L927:
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 5415 0
	jmp	.L919
.L923:
	.loc 1 5421 0
	movl	flag_leading_underscore@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L928
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L930
.L928:
	leal	.LC919@GOTOFF(%ebx), %edx
	movl	%edx, -8(%ebp)
.L930:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC920@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L919:
	.loc 1 5427 0
	movl	version_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L931
	.loc 1 5429 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_version
	.loc 1 5430 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L931
	.loc 1 5431 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC921@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$75, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	print_switch_values
.L931:
	.loc 1 5434 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L934
	movl	flag_detailed_statistics@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L936
.L934:
	.loc 1 5435 0
	movl	time_report@GOT(%ebx), %eax
	movl	$1, (%eax)
.L936:
	.loc 1 5437 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L937
	.loc 1 5439 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5440 0
	movl	profile_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
.L937:
	.loc 1 5446 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L939
	.loc 1 5447 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	dbx_debug_hooks@GOT(%ebx), %edx
	movl	%edx, (%eax)
.L939:
	.loc 1 5458 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L941
	.loc 1 5459 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	dwarf_debug_hooks@GOT(%ebx), %edx
	movl	%edx, (%eax)
.L941:
	.loc 1 5462 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L943
	.loc 1 5463 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	dwarf2_debug_hooks@GOT(%ebx), %edx
	movl	%edx, (%eax)
.L943:
	.loc 1 5473 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L945
	.loc 1 5475 0
	movl	aux_info_file_name@GOTOFF(%ebx), %edx
	leal	.LC773@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, %edx
	movl	aux_info_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5476 0
	movl	aux_info_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L945
	.loc 1 5477 0
	movl	aux_info_file_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC775@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L945:
	.loc 1 5480 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	244(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L948
	.loc 1 5482 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L950
	.loc 1 5484 0
	leal	.LC922@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5485 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	$0, (%eax)
.L950:
	.loc 1 5487 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L948
	.loc 1 5489 0
	leal	.LC923@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5490 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	$0, (%eax)
.L948:
	.loc 1 5494 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L953
	movl	profile_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L953
	.loc 1 5496 0
	leal	.LC924@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5497 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	$0, (%eax)
.L953:
	.loc 1 5507 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L956
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L958
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L958
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L961
.L958:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L956
.L961:
	.loc 1 5509 0
	leal	.LC925@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5510 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	$0, (%eax)
.L956:
	.loc 1 5516 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L962
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L962
	.loc 1 5518 0
	leal	.LC926@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5519 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	$0, (%eax)
.L962:
	.loc 1 5528 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L967
	.loc 1 5529 0
	movl	flag_trapping_math@GOT(%ebx), %eax
	movl	$1, (%eax)
.L967:
	.loc 1 5530 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	process_options, .-process_options
	.type	backend_init, @function
backend_init:
.LFB55:
	.loc 1 5535 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$20, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5538 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L969
	.loc 1 5539 0
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	open_dump_file
.L969:
	.loc 1 5545 0
	call	init_regs@PLT
	.loc 1 5546 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L971
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L971
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L971
	movl	warn_notreached@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L975
.L971:
	movl	$1, -8(%ebp)
	jmp	.L976
.L975:
	movl	$0, -8(%ebp)
.L976:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_emit_once@PLT
	.loc 1 5554 0
	call	init_fake_stack_mems@PLT
	.loc 1 5555 0
	call	init_alias_once@PLT
	.loc 1 5556 0
	call	init_loop@PLT
	.loc 1 5557 0
	call	init_reload@PLT
	.loc 1 5558 0
	call	init_function_once@PLT
	.loc 1 5559 0
	call	init_varasm_once@PLT
	.loc 1 5563 0
	call	init_dummy_function_start@PLT
	.loc 1 5564 0
	call	init_expmed@PLT
	.loc 1 5565 0
	movl	flag_caller_saves@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L977
	.loc 1 5566 0
	call	init_caller_save@PLT
.L977:
	.loc 1 5567 0
	call	expand_dummy_function_end@PLT
	.loc 1 5568 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	backend_init, .-backend_init
	.section	.rodata
.LC927:
	.string	"gccdump"
	.text
	.type	lang_dependent_init, @function
lang_dependent_init:
.LFB56:
	.loc 1 5574 0
	pushl	%ebp
.LCFI172:
	movl	%esp, %ebp
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$20, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5575 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L981
	.loc 1 5576 0
	cmpl	$0, 8(%ebp)
	je	.L983
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L985
.L983:
	leal	.LC927@GOTOFF(%ebx), %edx
	movl	%edx, -12(%ebp)
.L985:
	movl	dump_base_name@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
.L981:
	.loc 1 5582 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%ebp)
	.loc 1 5583 0
	cmpl	$0, 8(%ebp)
	jne	.L986
	.loc 1 5584 0
	movl	$0, -8(%ebp)
	jmp	.L988
.L986:
	.loc 1 5587 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5588 0
	movl	input_filename@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	main_input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5589 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_asm_output
	.loc 1 5593 0
	call	init_eh@PLT
	.loc 1 5594 0
	call	init_optabs@PLT
	.loc 1 5598 0
	call	init_dummy_function_start@PLT
	.loc 1 5599 0
	call	init_expr_once@PLT
	.loc 1 5600 0
	call	expand_dummy_function_end@PLT
	.loc 1 5603 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	push_srcloc@PLT
	.loc 1 5622 0
	movl	$1, -8(%ebp)
.L988:
	movl	-8(%ebp), %eax
	.loc 1 5623 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	lang_dependent_init, .-lang_dependent_init
	.type	finalize, @function
finalize:
.LFB57:
	.loc 1 5629 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%ebx
.LCFI178:
	subl	$52, %esp
.LCFI179:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5629 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 5631 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L991
	.loc 1 5633 0
	movl	aux_info_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 5634 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	je	.L991
	.loc 1 5635 0
	movl	aux_info_file_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
.L991:
	.loc 1 5653 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L994
.LBB32:
	.loc 1 5657 0
	movl	$0, -32(%ebp)
	jmp	.L996
.L997:
	.loc 1 5658 0
	movl	-32(%ebp), %eax
	movzbl	7+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L998
	movl	-32(%ebp), %eax
	movzbl	5+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L998
.LBB33:
	.loc 1 5663 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC772@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 5664 0
	movl	-32(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5665 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_graph_dump_file@PLT
	.loc 1 5666 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L998:
.LBE33:
	.loc 1 5657 0
	addl	$1, -32(%ebp)
.L996:
	cmpl	$35, -32(%ebp)
	jle	.L997
.L994:
.LBE32:
	.loc 1 5670 0
	movl	mem_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1001
	.loc 1 5672 0
	call	ggc_print_statistics@PLT
	.loc 1 5673 0
	call	stringpool_statistics@PLT
	.loc 1 5674 0
	call	dump_tree_statistics@PLT
.L1001:
	.loc 1 5678 0
	call	free_reg_info@PLT
	.loc 1 5681 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	24(%eax), %eax
	call	*%eax
	.loc 1 5682 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1004
	call	__stack_chk_fail_local
.L1004:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	finalize, .-finalize
	.type	do_init_compile, @function
do_init_compile:
.LFB58:
	.loc 1 5689 0
	pushl	%ebp
.LCFI180:
	movl	%esp, %ebp
.LCFI181:
	pushl	%ebx
.LCFI182:
	subl	$36, %esp
.LCFI183:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5692 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	16(%eax), %eax
	call	*%eax
	movb	%al, -5(%ebp)
	.loc 1 5695 0
	call	process_options
	.loc 1 5699 0
	call	init_timevar@PLT
	.loc 1 5700 0
	movl	$0, (%esp)
	call	timevar_start@PLT
	.loc 1 5705 0
	call	backend_init
	.loc 1 5711 0
	movl	filename@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lang_dependent_init
	testl	%eax, %eax
	je	.L1009
	.loc 1 5712 0
	movl	main_input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1005
.L1009:
	.loc 1 5713 0
	jmp	.L1008
.L1005:
	movl	-24(%ebp), %eax
.L1008:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	do_init_compile, .-do_init_compile
	.type	do_compile, @function
do_compile:
.LFB59:
	.loc 1 5718 0
	pushl	%ebp
.LCFI184:
	movl	%esp, %ebp
.LCFI185:
	pushl	%edi
.LCFI186:
	pushl	%ebx
.LCFI187:
	subl	$32, %esp
.LCFI188:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5721 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	16(%eax), %eax
	call	*%eax
	movb	%al, -9(%ebp)
	.loc 1 5724 0
	call	process_options
	.loc 1 5727 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L1019
	.loc 1 5730 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1013
	.loc 1 5732 0
	movl	filename@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1015
.LBB34:
	.loc 1 5734 0
	movl	filename@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lbasename@PLT
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5736 0
	movl	aux_base_name@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5737 0
	movl	-16(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -28(%ebp)
	movl	$0, %eax
	cld
	movl	-28(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	strip_off_ending@PLT
	jmp	.L1013
.L1015:
.LBE34:
	.loc 1 5740 0
	movl	aux_base_name@GOT(%ebx), %edx
	leal	.LC782@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
.L1013:
	.loc 1 5744 0
	call	init_timevar@PLT
	.loc 1 5745 0
	movl	$0, (%esp)
	call	timevar_start@PLT
	.loc 1 5748 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1017
	.loc 1 5749 0
	call	backend_init
.L1017:
	.loc 1 5752 0
	movl	filename@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lang_dependent_init
	.loc 1 5760 0
	call	finalize
	.loc 1 5763 0
	movl	$0, (%esp)
	call	timevar_stop@PLT
	.loc 1 5764 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	timevar_print@PLT
.L1019:
	.loc 1 5765 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE59:
	.size	do_compile, .-do_compile
.globl gnu_init
	.type	gnu_init, @function
gnu_init:
.LFB60:
	.loc 1 5785 0
	pushl	%ebp
.LCFI189:
	movl	%esp, %ebp
.LCFI190:
	pushl	%ebx
.LCFI191:
	subl	$20, %esp
.LCFI192:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5787 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	general_init
	.loc 1 5791 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_options_and_default_flags
	.loc 1 5794 0
	movl	exit_after_options@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1021
	.loc 1 5798 0
	call	do_init_compile
	movl	%eax, -8(%ebp)
	jmp	.L1023
.L1021:
	.loc 1 5801 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L1024
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	je	.L1026
.L1024:
	.loc 1 5802 0
	movl	$1, -8(%ebp)
	jmp	.L1023
.L1026:
	.loc 1 5804 0
	movl	$0, -8(%ebp)
.L1023:
	movl	-8(%ebp), %eax
	.loc 1 5805 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	gnu_init, .-gnu_init
	.local	set_yydebug
	.comm	set_yydebug,4,4
	.local	version_flag
	.comm	version_flag,4,4
	.local	filename
	.comm	filename,4,4
	.local	flag_gcse
	.comm	flag_gcse,4,4
	.local	flag_loop_optimize
	.comm	flag_loop_optimize,4,4
	.local	flag_crossjumping
	.comm	flag_crossjumping,4,4
	.local	flag_if_conversion
	.comm	flag_if_conversion,4,4
	.local	flag_if_conversion2
	.comm	flag_if_conversion2,4,4
	.local	flag_delete_null_pointer_checks
	.comm	flag_delete_null_pointer_checks,4,4
	.local	flag_rerun_cse_after_loop
	.comm	flag_rerun_cse_after_loop,4,4
	.local	aux_info_file_name
	.comm	aux_info_file_name,4,4
	.local	da
	.comm	da,4,4
	.comm	asm_file_name,4,4
	.comm	save_argv,4,4
	.comm	g_switch_value,4,4
	.comm	g_switch_set,4,4
	.comm	input_filename,4,4
	.comm	main_input_filename,4,4
	.comm	lineno,4,4
	.comm	input_file_stack,4,4
	.comm	input_file_stack_tick,4,4
	.comm	no_new_pseudos,4,4
	.comm	stack_limit_rtx,4,4
	.comm	current_function_decl,4,4
	.comm	current_function_func_begin_label,4,4
	.comm	warn_unused_function,4,4
	.comm	warn_unused_label,4,4
	.comm	warn_unused_parameter,4,4
	.comm	warn_unused_variable,4,4
	.comm	warn_unused_value,4,4
	.comm	warn_notreached,4,4
	.comm	warn_inline,4,4
	.comm	warn_uninitialized,4,4
	.comm	warn_shadow,4,4
	.comm	warn_switch,4,4
	.comm	warn_switch_default,4,4
	.comm	warn_switch_enum,4,4
	.comm	warn_return_type,4,4
	.comm	warn_missing_noreturn,4,4
	.comm	warn_cast_align,4,4
	.comm	warn_larger_than,4,4
	.comm	larger_than_size,8,8
	.comm	warn_aggregate_return,4,4
	.comm	warn_packed,4,4
	.comm	warn_padded,4,4
	.comm	warn_disabled_optimization,4,4
	.comm	warn_strict_aliasing,4,4
	.comm	flag_print_asm_name,4,4
	.comm	flag_signed_char,4,4
	.comm	flag_short_enums,4,4
	.comm	flag_unroll_loops,4,4
	.comm	flag_unroll_all_loops,4,4
	.comm	flag_prefetch_loop_arrays,4,4
	.comm	flag_cse_follow_jumps,4,4
	.comm	flag_cse_skip_blocks,4,4
	.comm	flag_expensive_optimizations,4,4
	.comm	flag_volatile,4,4
	.comm	flag_volatile_global,4,4
	.comm	flag_volatile_static,4,4
	.comm	flag_rerun_loop_opt,4,4
	.comm	flag_inline_functions,4,4
	.comm	flag_keep_inline_functions,4,4
	.comm	flag_shared_data,4,4
	.comm	flag_single_precision_constant,4,4
	.comm	flag_delayed_branch,4,4
	.comm	flag_pic,4,4
	.comm	flag_pie,4,4
	.comm	flag_shlib,4,4
	.comm	flag_exceptions,4,4
	.comm	key_exceptions,4,4
	.comm	opt_regions,4,4
	.comm	flag_no_common,4,4
	.comm	flag_stack_check,4,4
	.comm	align_loops,4,4
	.comm	align_loops_log,4,4
	.comm	align_loops_max_skip,4,4
	.comm	align_jumps,4,4
	.comm	align_jumps_log,4,4
	.comm	align_jumps_max_skip,4,4
	.comm	align_labels,4,4
	.comm	align_labels_log,4,4
	.comm	align_labels_max_skip,4,4
	.comm	align_functions,4,4
	.comm	align_functions_log,4,4
	.comm	force_align_functions_log,4,4
	.comm	graph_dump_format,4,4
	.comm	asm_out_file,4,4
	.comm	user_label_prefix,4,4
	.comm	progname,4,4
	.comm	dump_base_name,4,4
	.comm	aux_base_name,4,4
	.comm	target_flags_explicit,4,4
	.comm	save_argc,4,4
	.comm	rtl_dump_and_exit,4,4
	.comm	flag_thread_jumps,4,4
	.comm	aux_info_file,4,4
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI10-.LCFI8
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI11-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI14-.LCFI12
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI15-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI19-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI22-.LCFI20
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI23-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI24
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI28-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI31-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI34-.LCFI32
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI35-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI36-.LCFI35
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI38-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI41-.LCFI39
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI42-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI45-.LCFI43
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI46-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI50-.LCFI47
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI51-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI55-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI56
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI59-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI62-.LCFI60
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI63-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI66-.LCFI64
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI67-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI68
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI71-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI74-.LCFI72
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI75-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI78-.LCFI76
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI79-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI80-.LCFI79
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI80
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI83-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI86-.LCFI84
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI87-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI91-.LCFI88
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI92-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI93-.LCFI92
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI93
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI97-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI100-.LCFI98
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI101-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI102
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI105-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI110-.LCFI106
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI111-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI112-.LCFI111
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI112
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.byte	0x4
	.long	.LCFI117-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI121-.LCFI118
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI122-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI123
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.byte	0x4
	.long	.LCFI127-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI129-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI134-.LCFI130
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.byte	0x4
	.long	.LCFI135-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI136-.LCFI135
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI138-.LCFI136
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI139-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI140-.LCFI139
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI140
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI144-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI145
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI149-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI152-.LCFI150
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI153-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI154
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI158-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI159
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI164-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI167-.LCFI165
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.byte	0x4
	.long	.LCFI168-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI171-.LCFI169
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI172-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI173
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI176-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI179-.LCFI177
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.byte	0x4
	.long	.LCFI180-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI183-.LCFI181
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.byte	0x4
	.long	.LCFI184-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI185-.LCFI184
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI188-.LCFI185
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.byte	0x4
	.long	.LCFI189-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI192-.LCFI190
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/machmode.h"
	.file 6 "../../../kg++fe/gnu/bitmap.h"
	.file 7 "../../../kg++fe/gnu/basic-block.h"
	.file 8 "../../../kg++fe/gnu/sbitmap.h"
	.file 9 "../../../kg++fe/gnu/real.h"
	.file 10 "../../../kg++fe/gnu/hashtable.h"
	.file 11 "../../../kg++fe/gnu/location.h"
	.file 12 "../../../kg++fe/gnu/function.h"
	.file 13 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 14 "../../../kg++fe/omp_types.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kg++fe/gnu/input.h"
	.file 20 "../../../kg++fe/gnu/flags.h"
	.file 21 "../../../kg++fe/gnu/params.h"
	.file 22 "../../../include/gnu/safe-ctype.h"
	.file 23 "../../../kg++fe/gnu/version.h"
	.file 24 "../../../kg++fe/gnu/output.h"
	.file 25 "../../../kg++fe/gnu/regs.h"
	.file 26 "../../../kg++fe/gnu/diagnostic.h"
	.file 27 "../../../include/gnu/obstack.h"
	.file 28 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 29 "../../../kg++fe/gnu/reload.h"
	.file 30 "../../../kg++fe/gnu/debug.h"
	.file 31 "../../../kg++fe/gnu/target.h"
	.file 32 "../../../kg++fe/gnu/langhooks.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB15-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB16-.Ltext0
	.long	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI2-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI3-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI4-.Ltext0
	.long	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI5-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI7-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI8-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI11-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI11-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI12-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI19-.Ltext0
	.long	.LCFI20-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI20-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI23-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI24-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI28-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI28-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI29-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
	.long	.LCFI31-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI31-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI32-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI35-.Ltext0
	.long	.LCFI36-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI36-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI39-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI42-.Ltext0
	.long	.LCFI43-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI43-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI46-.Ltext0
	.long	.LCFI47-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI47-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI55-.Ltext0
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI56-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI59-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI60-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI63-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI63-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI64-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI67-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI68-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI71-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI71-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI72-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI75-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI76-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI79-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI80-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI83-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI83-.Ltext0
	.long	.LCFI84-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI84-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI87-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI88-.Ltext0
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI92-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI93-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI97-.Ltext0
	.long	.LCFI98-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI98-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI101-.Ltext0
	.long	.LCFI102-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI102-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI105-.Ltext0
	.long	.LCFI106-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI106-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI111-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI112-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI117-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI118-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI122-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI122-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI123-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI127-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI128-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI129-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI130-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI135-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI136-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI139-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI140-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI144-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI144-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI145-.Ltext0
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI149-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI150-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI153-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI153-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI154-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI158-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI158-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI159-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI164-.Ltext0
	.long	.LCFI165-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI165-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI168-.Ltext0
	.long	.LCFI169-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI169-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI172-.Ltext0
	.long	.LCFI173-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI173-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI176-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI176-.Ltext0
	.long	.LCFI177-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI177-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI180-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI180-.Ltext0
	.long	.LCFI181-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI181-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI184-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI184-.Ltext0
	.long	.LCFI185-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI185-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI189-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI189-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI190-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xc02f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/toplev.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19c
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x84
	.long	0xae3
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x4
	.byte	0x87
	.long	0x89a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x1702
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a9
	.uleb128 0x3
	.byte	0x4
	.long	0x1af
	.uleb128 0x4
	.long	0x1e4
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x1712
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f6
	.uleb128 0x7
	.long	0x2cc
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x3de6
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x4105
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x414d
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x42b9
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x88b
	.long	0x41fa
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x4264
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x44ee
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x88e
	.long	0x5552
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x88f
	.long	0x4750
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x4525
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x456c
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x45ba
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x4606
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5f2b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d2
	.uleb128 0xa
	.long	0x2d7
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3b8
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x3bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3cf
	.long	0x9b
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x2e6
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x1c
	.byte	0x2b
	.long	0x404
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x2
	.string	"va_list"
	.byte	0x1c
	.byte	0x69
	.long	0x3ee
	.uleb128 0x2
	.string	"size_t"
	.byte	0x12
	.byte	0xd6
	.long	0x3b8
	.uleb128 0xb
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xb
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xb
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xb
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xb
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x11
	.byte	0x3b
	.long	0x47f
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x11
	.byte	0x90
	.long	0x4c9
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x11
	.byte	0x91
	.long	0x4aa
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x2
	.string	"FILE"
	.byte	0xf
	.byte	0x2e
	.long	0x4fa
	.uleb128 0x13
	.long	0x775
	.long	.LASF4
	.byte	0x94
	.byte	0xf
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x10
	.value	0x10c
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x10
	.value	0x111
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x10
	.value	0x112
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x10
	.value	0x113
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x10
	.value	0x114
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x10
	.value	0x115
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x10
	.value	0x116
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x10
	.value	0x117
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x10
	.value	0x118
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x10
	.value	0x11a
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x10
	.value	0x11b
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x10
	.value	0x11c
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x10
	.value	0x11e
	.long	0x7ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x10
	.value	0x120
	.long	0x7f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x10
	.value	0x122
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x10
	.value	0x126
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x10
	.value	0x128
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x10
	.value	0x12c
	.long	0x438
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x10
	.value	0x12d
	.long	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x10
	.value	0x12e
	.long	0x7f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x10
	.value	0x132
	.long	0x809
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x10
	.value	0x13b
	.long	0x4d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x10
	.value	0x144
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x10
	.value	0x145
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x10
	.value	0x146
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x10
	.value	0x147
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x10
	.value	0x148
	.long	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x10
	.value	0x14a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x10
	.value	0x14c
	.long	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xf
	.long	0x785
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78b
	.uleb128 0xa
	.long	0x427
	.uleb128 0x3
	.byte	0x4
	.long	0x427
	.uleb128 0x3
	.byte	0x4
	.long	0x2cc
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x10
	.byte	0xb0
	.uleb128 0x4
	.long	0x7ed
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x10
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x10
	.byte	0xb7
	.long	0x7ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x10
	.byte	0xb8
	.long	0x7f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x10
	.byte	0xbc
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7aa
	.uleb128 0x3
	.byte	0x4
	.long	0x4fa
	.uleb128 0xf
	.long	0x809
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79c
	.uleb128 0xf
	.long	0x81f
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x82f
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x840
	.uleb128 0x15
	.long	0x84c
	.byte	0x1
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x84c
	.uleb128 0x4
	.long	0x894
	.string	"file_stack"
	.byte	0xc
	.byte	0x13
	.byte	0x23
	.uleb128 0x18
	.long	.LASF5
	.byte	0x13
	.byte	0x24
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"next"
	.byte	0x13
	.byte	0x25
	.long	0x894
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"line"
	.byte	0x13
	.byte	0x26
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x854
	.uleb128 0x19
	.long	0xae3
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x1a
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x1a
	.string	"BImode"
	.sleb128 1
	.uleb128 0x1a
	.string	"QImode"
	.sleb128 2
	.uleb128 0x1a
	.string	"HImode"
	.sleb128 3
	.uleb128 0x1a
	.string	"SImode"
	.sleb128 4
	.uleb128 0x1a
	.string	"DImode"
	.sleb128 5
	.uleb128 0x1a
	.string	"TImode"
	.sleb128 6
	.uleb128 0x1a
	.string	"OImode"
	.sleb128 7
	.uleb128 0x1a
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x1a
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x1a
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x1a
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x1a
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x1a
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x1a
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x1a
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x1a
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x1a
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x1a
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x1a
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x1a
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x1a
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x1a
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x1a
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x1a
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x1a
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x1a
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x1a
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x1a
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x1a
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x1a
	.string	"COImode"
	.sleb128 30
	.uleb128 0x1a
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x1a
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x1a
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x1a
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x1a
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x1a
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x1a
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x1a
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x1a
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x1a
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x1a
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x1a
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x1a
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x1a
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x1a
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x1a
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x1a
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x1a
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x1a
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x1a
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x1a
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x1a
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x1a
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x1a
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x19
	.long	0x12b2
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x1a
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x1a
	.string	"NIL"
	.sleb128 1
	.uleb128 0x1a
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x1a
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x1a
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x1a
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x1a
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x1a
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x1a
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x1a
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x1a
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x1a
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x1a
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x1a
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x1a
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x1a
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x1a
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x1a
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x1a
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x1a
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x1a
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x1a
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x1a
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x1a
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x1a
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x1a
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x1a
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x1a
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x1a
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x1a
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x1a
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x1a
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x1a
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x1a
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x1a
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x1a
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x1a
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x1a
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x1a
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x1a
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x1a
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x1a
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x1a
	.string	"INSN"
	.sleb128 42
	.uleb128 0x1a
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x1a
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x1a
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x1a
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x1a
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x1a
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x1a
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x1a
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x1a
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x1a
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x1a
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x1a
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x1a
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x1a
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x1a
	.string	"SET"
	.sleb128 57
	.uleb128 0x1a
	.string	"USE"
	.sleb128 58
	.uleb128 0x1a
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x1a
	.string	"CALL"
	.sleb128 60
	.uleb128 0x1a
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x1a
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x1a
	.string	"RESX"
	.sleb128 63
	.uleb128 0x1a
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x1a
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x1a
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x1a
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x1a
	.string	"CONST"
	.sleb128 68
	.uleb128 0x1a
	.string	"PC"
	.sleb128 69
	.uleb128 0x1a
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x1a
	.string	"REG"
	.sleb128 71
	.uleb128 0x1a
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x1a
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x1a
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x1a
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x1a
	.string	"MEM"
	.sleb128 76
	.uleb128 0x1a
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x1a
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x1a
	.string	"CC0"
	.sleb128 79
	.uleb128 0x1a
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x1a
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x1a
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x1a
	.string	"COND"
	.sleb128 83
	.uleb128 0x1a
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x1a
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x1a
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x1a
	.string	"NEG"
	.sleb128 87
	.uleb128 0x1a
	.string	"MULT"
	.sleb128 88
	.uleb128 0x1a
	.string	"DIV"
	.sleb128 89
	.uleb128 0x1a
	.string	"MOD"
	.sleb128 90
	.uleb128 0x1a
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x1a
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x1a
	.string	"AND"
	.sleb128 93
	.uleb128 0x1a
	.string	"IOR"
	.sleb128 94
	.uleb128 0x1a
	.string	"XOR"
	.sleb128 95
	.uleb128 0x1a
	.string	"NOT"
	.sleb128 96
	.uleb128 0x1a
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x1a
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x1a
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x1a
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x1a
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x1a
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x1a
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x1a
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x1a
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x1a
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x1a
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x1a
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x1a
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x1a
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x1a
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x1a
	.string	"NE"
	.sleb128 112
	.uleb128 0x1a
	.string	"EQ"
	.sleb128 113
	.uleb128 0x1a
	.string	"GE"
	.sleb128 114
	.uleb128 0x1a
	.string	"GT"
	.sleb128 115
	.uleb128 0x1a
	.string	"LE"
	.sleb128 116
	.uleb128 0x1a
	.string	"LT"
	.sleb128 117
	.uleb128 0x1a
	.string	"GEU"
	.sleb128 118
	.uleb128 0x1a
	.string	"GTU"
	.sleb128 119
	.uleb128 0x1a
	.string	"LEU"
	.sleb128 120
	.uleb128 0x1a
	.string	"LTU"
	.sleb128 121
	.uleb128 0x1a
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x1a
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x1a
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x1a
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x1a
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x1a
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x1a
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x1a
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x1a
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x1a
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x1a
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x1a
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x1a
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x1a
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x1a
	.string	"FIX"
	.sleb128 136
	.uleb128 0x1a
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x1a
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x1a
	.string	"ABS"
	.sleb128 139
	.uleb128 0x1a
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x1a
	.string	"FFS"
	.sleb128 141
	.uleb128 0x1a
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x1a
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x1a
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x1a
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x1a
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x1a
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x1a
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x1a
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x1a
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x1a
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x1a
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x1a
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x1a
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x1a
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x1a
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x1a
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x1a
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x1a
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x1a
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x1a
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x1a
	.string	"PHI"
	.sleb128 162
	.uleb128 0x1a
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x1b
	.long	0x138c
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x4
	.byte	0x58
	.long	0x12b2
	.uleb128 0x13
	.long	0x1403
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x4
	.byte	0x68
	.long	0x13a7
	.uleb128 0x7
	.long	0x14e0
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x47f
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2df
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3b8
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2cc
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9b
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19c
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x89a
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x138c
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x14f4
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x155c
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e4
	.uleb128 0x1d
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x16e7
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x16ed
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x14e0
	.uleb128 0x4
	.long	0x155c
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x66b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x66b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14fa
	.uleb128 0x4
	.long	0x16e7
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x7
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x7
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x7
	.byte	0xb8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x7
	.byte	0xb9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x7
	.byte	0xbc
	.long	0x6809
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x6809
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x6739
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x6739
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x6739
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x6739
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0xd0
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x7
	.byte	0xd3
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x7
	.byte	0xd9
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x7
	.byte	0xdc
	.long	0x6a85
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x6747
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x7
	.byte	0xe2
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x7
	.byte	0xe5
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1562
	.uleb128 0x3
	.byte	0x4
	.long	0x1403
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x140e
	.uleb128 0xf
	.long	0x1712
	.long	0x16f3
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1722
	.long	0x9b
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9b
	.uleb128 0x4
	.long	0x1759
	.string	"location_s"
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.uleb128 0x18
	.long	.LASF7
	.byte	0xb
	.byte	0x1e
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0xb
	.byte	0x21
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xb
	.byte	0x23
	.long	0x1728
	.uleb128 0x19
	.long	0x208d
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x1a
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x1a
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x1a
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x1a
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x1a
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x1a
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x1a
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x1a
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x1a
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x1a
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x1a
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x1a
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x1a
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x1a
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x1a
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x1a
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x1a
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x1a
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x1a
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x1a
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x1a
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x1a
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x1a
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x1a
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x1a
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x1a
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x1a
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x1a
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x1a
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x1a
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x1a
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x1a
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x1a
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x1a
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x1a
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x1a
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x1a
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x1a
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x1a
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x1a
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x1a
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x1a
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x1a
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x1a
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x1a
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x1a
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x1a
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x1a
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x1a
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x1a
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x1a
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x1a
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x1a
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x1a
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x1a
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x1a
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x1a
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x1a
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x1a
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x1a
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x1a
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x1a
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x1a
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x1a
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x1a
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x1a
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x1a
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x1a
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x1a
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x1a
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x1a
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x1a
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x1a
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x1a
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x1a
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x1a
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x1a
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x1a
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x1a
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x1a
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x1a
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x1a
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x1a
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x1a
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x1a
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x1a
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x1a
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x1a
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x1a
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x1a
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x1a
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x1a
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x1a
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x1a
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x1a
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x1a
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x1a
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x1a
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x1a
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x1a
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x1a
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x1a
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x1a
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x1a
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x1a
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x1a
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x1a
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x1a
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x1a
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x1a
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x1a
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x1a
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x1a
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x1a
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x1a
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x1a
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x1a
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x1a
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x1a
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x1a
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x1a
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x1a
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x1a
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x1a
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x1a
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x1a
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x1a
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x1a
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x1a
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x1a
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x1a
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x1a
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x1a
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x1a
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x1a
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x1a
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x1a
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x1a
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x1a
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x1a
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x1a
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x1a
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x1a
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x1a
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x1a
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x1a
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x1a
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x1a
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x1a
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x3b8
	.uleb128 0x4
	.long	0x20dd
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x20e7
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.uleb128 0x1f
	.long	0x213c
	.long	.LASF8
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x1a
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x1a
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x1a
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x1a
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x19
	.long	0x3de6
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x1a
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x1a
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x1a
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x1a
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x1a
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x1a
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x1a
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x1a
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x1a
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x1a
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x1a
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x1a
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x1a
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x1a
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x1a
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x1a
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x1a
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x1a
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x1a
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x1a
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x1a
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x1a
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x1a
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x1a
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x1a
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x1a
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x1a
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x1a
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x1a
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x1a
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x1a
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x1a
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x1a
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x1a
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x1a
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x1a
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x1a
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x1a
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x1a
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x1a
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x1a
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x1a
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x1a
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x1a
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x1a
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x1a
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x1a
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x1a
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x1a
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x1a
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x1a
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x1a
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x1a
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x1a
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x1a
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x1a
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x1a
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x1a
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x1a
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x1a
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x1a
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x1a
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x1a
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x1a
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x1a
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x1a
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x1a
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x1a
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x1a
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x1a
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x1a
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x1a
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x1a
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x1a
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x1a
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x1a
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x1a
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x1a
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x1a
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x1a
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x1a
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x1a
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x1a
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x1a
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x1a
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x1a
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x1a
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x1a
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x1a
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x1a
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x1a
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x1a
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x1a
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x1a
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x1a
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x1a
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x1a
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x1a
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x1a
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x1a
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x1a
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x1a
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x1a
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x1a
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x1a
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x1a
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x1a
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x1a
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x1a
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x1a
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x1a
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x1a
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x1a
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x1a
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x1a
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x1a
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x1a
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x1a
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x1a
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x1a
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x1a
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x1a
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x1a
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x1a
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x1a
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x1a
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x1a
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x1a
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x1a
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x1a
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x1a
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x1a
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x1a
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x1a
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x1a
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x1a
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x1a
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x1a
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x1a
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x1a
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x1a
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x1a
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x1a
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x1a
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x1a
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x1a
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x1a
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x1a
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x1a
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x1a
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x1a
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x1a
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x1a
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x1a
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x1a
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x1a
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x1a
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x1a
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x1a
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x1a
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x1a
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x1a
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x1a
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x1a
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x1a
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x1a
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x1a
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x1a
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x1a
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x1a
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x1a
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x1a
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x1a
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x40c9
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x8e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x176b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF9
	.byte	0x3
	.byte	0xa8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF10
	.byte	0x3
	.byte	0xa9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF11
	.byte	0x3
	.byte	0xaa
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF12
	.byte	0x3
	.byte	0xab
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF13
	.byte	0x3
	.byte	0xac
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF14
	.byte	0x3
	.byte	0xad
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF15
	.byte	0x3
	.byte	0xae
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF16
	.byte	0x3
	.byte	0xb0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x4105
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x414d
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x40c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x419b
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x41f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x41f4
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x319
	.uleb128 0x5
	.string	"class"
	.byte	0x9
	.byte	0x35
	.long	0x6ff5
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0x9
	.byte	0x37
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"exp"
	.byte	0x9
	.byte	0x38
	.long	0x2df
	.byte	0x4
	.byte	0x1d
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sig"
	.byte	0x9
	.byte	0x39
	.long	0x703b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x419b
	.uleb128 0xc
	.long	0x425e
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.long	.LASF17
	.byte	0x3
	.value	0x336
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x425e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20dd
	.uleb128 0xc
	.long	0x42b9
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x4301
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x434b
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x1b
	.byte	0xa2
	.uleb128 0x6
	.string	"limit"
	.byte	0x1b
	.byte	0xa3
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x1b
	.byte	0xa4
	.long	0x434b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"contents"
	.byte	0x1b
	.byte	0xa5
	.long	0x775
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4301
	.uleb128 0xc
	.long	0x447e
	.string	"obstack"
	.byte	0x2c
	.byte	0xf
	.value	0x31b
	.uleb128 0x6
	.string	"chunk_size"
	.byte	0x1b
	.byte	0xaa
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"chunk"
	.byte	0x1b
	.byte	0xab
	.long	0x434b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"object_base"
	.byte	0x1b
	.byte	0xac
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next_free"
	.byte	0x1b
	.byte	0xad
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"chunk_limit"
	.byte	0x1b
	.byte	0xae
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"temp"
	.byte	0x1b
	.byte	0xaf
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"alignment_mask"
	.byte	0x1b
	.byte	0xb0
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"chunkfun"
	.byte	0x1b
	.byte	0xb5
	.long	0x4493
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x1b
	.byte	0xb6
	.long	0x44aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"extra_arg"
	.byte	0x1b
	.byte	0xb7
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"use_extra_arg"
	.byte	0x1b
	.byte	0xbd
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"maybe_empty_object"
	.byte	0x1b
	.byte	0xbe
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"alloc_failed"
	.byte	0x1b
	.byte	0xc2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x22
	.long	0x4493
	.byte	0x1
	.long	0x434b
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x4c9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x447e
	.uleb128 0x15
	.long	0x44aa
	.byte	0x1
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x434b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4499
	.uleb128 0x13
	.long	0x44ee
	.long	.LASF18
	.byte	0xc
	.byte	0xa
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0xa
	.byte	0x1c
	.long	0x785
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0xa
	.byte	0x1d
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0xa
	.byte	0x1e
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x4525
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x44b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x456c
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x45aa
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF17
	.byte	0x3
	.value	0x390
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x45aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x45ba
	.long	0x1e4
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x4606
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x45aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x46f6
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF19
	.byte	0x3
	.value	0x40e
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x23
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3b8
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.value	0x414
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x473d
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2df
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4e8
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x474a
	.byte	0x0
	.uleb128 0x1e
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x473d
	.uleb128 0xc
	.long	0x4a9d
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x21
	.long	.LASF21
	.byte	0x3
	.value	0x555
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF22
	.byte	0x3
	.value	0x556
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3b8
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x89a
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x3
	.value	0x562
	.long	0x3b8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF9
	.byte	0x3
	.value	0x564
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x3
	.value	0x565
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x566
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x567
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x568
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x569
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x56a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x3
	.value	0x56b
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x46f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x21
	.long	.LASF5
	.byte	0x3
	.value	0x576
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x21
	.long	.LASF25
	.byte	0x3
	.value	0x57f
	.long	0x4aa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x209e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4a9d
	.uleb128 0xc
	.long	0x4af4
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x23
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x3b8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x4b29
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x213c
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x47f
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x4aaf
	.byte	0x0
	.uleb128 0x25
	.long	0x4b68
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x5514
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9b
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e4
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2df
	.byte	0x0
	.uleb128 0x26
	.long	0x5514
	.long	.LASF26
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x6581
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x6595
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x659b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x65a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x65b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF5
	.byte	0xc
	.byte	0xbe
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF2
	.byte	0xc
	.byte	0xc1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x5514
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.long	.LASF27
	.byte	0xc
	.byte	0xce
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xc
	.byte	0xdb
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xc
	.byte	0xdf
	.long	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xc
	.byte	0xe5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xc
	.byte	0xec
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x65d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xc
	.byte	0xf8
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0xc
	.value	0x138
	.long	0x47f
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0xc
	.value	0x13d
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0xc
	.value	0x151
	.long	0x3b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x1722
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x65e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x6287
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x21
	.long	.LASF28
	.byte	0xc
	.value	0x16d
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0xc
	.value	0x16f
	.long	0x19c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0xc
	.value	0x175
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x65ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x6619
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x23
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x23
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.long	.LASF29
	.byte	0xc
	.value	0x1fa
	.long	0x650b
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b68
	.uleb128 0x27
	.long	0x5552
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x425e
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x208d
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3b8
	.byte	0x0
	.uleb128 0xc
	.long	0x5c9b
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x1759
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x89a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF19
	.byte	0x3
	.value	0x7d3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF8
	.byte	0x3
	.value	0x7ed
	.long	0x20ec
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x3
	.value	0x7f0
	.long	0x3b8
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF24
	.byte	0x3
	.value	0x7f2
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF9
	.byte	0x3
	.value	0x7fa
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF10
	.byte	0x3
	.value	0x7fb
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF11
	.byte	0x3
	.value	0x7fc
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF12
	.byte	0x3
	.value	0x7fd
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF13
	.byte	0x3
	.value	0x7fe
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF14
	.byte	0x3
	.value	0x7ff
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF15
	.byte	0x3
	.value	0x800
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF16
	.byte	0x3
	.value	0x801
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x4af4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF21
	.byte	0x3
	.value	0x81d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x21
	.long	.LASF5
	.byte	0x3
	.value	0x81e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.value	0x82b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x21
	.long	.LASF22
	.byte	0x3
	.value	0x82e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x4b29
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x47f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF25
	.byte	0x3
	.value	0x848
	.long	0x5ca7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x551a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x209e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5c9b
	.uleb128 0x19
	.long	0x5f2b
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.uleb128 0x1a
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x1a
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x1a
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x1a
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x1a
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x1a
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x1a
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x1a
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x1a
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x1a
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x1a
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x1a
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x1a
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x1a
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x1a
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x1a
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x1a
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x1a
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x1a
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x1a
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x1a
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x1a
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x1a
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x1a
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x1a
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x1a
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x1a
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x1a
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x1a
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x1a
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x1a
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x1a
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x1a
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x5f7a
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3de6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x5cad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x28
	.long	0x5ff3
	.string	"tls_model"
	.byte	0x4
	.byte	0x3
	.value	0x96f
	.uleb128 0x1a
	.string	"TLS_MODEL_GLOBAL_DYNAMIC"
	.sleb128 1
	.uleb128 0x1a
	.string	"TLS_MODEL_LOCAL_DYNAMIC"
	.sleb128 2
	.uleb128 0x1a
	.string	"TLS_MODEL_INITIAL_EXEC"
	.sleb128 3
	.uleb128 0x1a
	.string	"TLS_MODEL_LOCAL_EXEC"
	.sleb128 4
	.byte	0x0
	.uleb128 0xc
	.long	0x60ae
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x21
	.long	.LASF5
	.byte	0x3
	.value	0xa20
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x60b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x60b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x60b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x60f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2cc
	.uleb128 0xa
	.long	0x60b8
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x22
	.long	0x60e5
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x60e5
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x60eb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x60b8
	.uleb128 0xa
	.long	0x60f6
	.uleb128 0x3
	.byte	0x4
	.long	0x60c1
	.uleb128 0x19
	.long	0x6186
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x14
	.byte	0x21
	.uleb128 0x1a
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0x1a
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0x1a
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0x1a
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0x1a
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0x1a
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0x1a
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0x1a
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x1f
	.long	0x61e5
	.long	.LASF30
	.byte	0x4
	.byte	0x14
	.byte	0x31
	.uleb128 0x1a
	.string	"DINFO_LEVEL_NONE"
	.sleb128 0
	.uleb128 0x1a
	.string	"DINFO_LEVEL_TERSE"
	.sleb128 1
	.uleb128 0x1a
	.string	"DINFO_LEVEL_NORMAL"
	.sleb128 2
	.uleb128 0x1a
	.string	"DINFO_LEVEL_VERBOSE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x28
	.long	0x6211
	.string	"graph_dump_types"
	.byte	0x4
	.byte	0x14
	.value	0x294
	.uleb128 0x1a
	.string	"no_graph"
	.sleb128 0
	.uleb128 0x1a
	.string	"vcg"
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.long	0x6221
	.long	0x490
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x6287
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0x89a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xc
	.byte	0x1b
	.long	0x6287
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6221
	.uleb128 0x13
	.long	0x62d6
	.long	.LASF31
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xc
	.byte	0x26
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF32
	.byte	0xc
	.byte	0x28
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"next"
	.byte	0xc
	.byte	0x29
	.long	0x62d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x628d
	.uleb128 0x4
	.long	0x642b
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xc
	.byte	0x44
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF32
	.byte	0xc
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF31
	.byte	0xc
	.byte	0x50
	.long	0x62d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x790
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x60e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x1722
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x650b
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xc
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x29
	.long	0x6575
	.long	.LASF29
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x1a
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6575
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6587
	.uleb128 0x3
	.byte	0x4
	.long	0x642b
	.uleb128 0x3
	.byte	0x4
	.long	0x62dc
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65a7
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65bd
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65da
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x65ec
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6605
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x44e
	.uleb128 0x4
	.long	0x668a
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x668a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x668a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x6690
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6632
	.uleb128 0xf
	.long	0x66a0
	.long	0x661f
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x6632
	.uleb128 0x3
	.byte	0x4
	.long	0x66a0
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x155c
	.uleb128 0x4
	.long	0x6724
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x22
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x6211
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x6733
	.uleb128 0x3
	.byte	0x4
	.long	0x66ca
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x66bc
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x47f
	.uleb128 0x4
	.long	0x6803
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x6803
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x6803
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x7
	.byte	0x7d
	.long	0x16e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x7
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0x83
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x7
	.byte	0x85
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x7
	.byte	0x86
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0x87
	.long	0x6747
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6758
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x6803
	.uleb128 0x4
	.long	0x6a85
	.string	"loop"
	.byte	0x80
	.byte	0x7
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x7
	.value	0x176
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x7
	.value	0x179
	.long	0x6a8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x6a8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x6a8b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x7
	.value	0x187
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x7
	.value	0x18b
	.long	0x6a8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x6a8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x6724
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x7
	.value	0x195
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x7
	.value	0x198
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x7
	.value	0x19b
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x7
	.value	0x19e
	.long	0x6a9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x7
	.value	0x1a1
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x7
	.value	0x1a4
	.long	0x6724
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x7
	.value	0x1a7
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x7
	.value	0x1aa
	.long	0x6aa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x7
	.value	0x1ae
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x7
	.value	0x1b1
	.long	0x6a85
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x6a85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x7
	.value	0x1b7
	.long	0x6a85
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x7
	.value	0x1ba
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x7
	.value	0x1bd
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x7
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x7
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x7
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x7
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x7
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x7
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x7
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x7
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x7
	.value	0x1e6
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6815
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x7
	.byte	0xe6
	.long	0x16e7
	.uleb128 0x3
	.byte	0x4
	.long	0x6809
	.uleb128 0x3
	.byte	0x4
	.long	0x6a85
	.uleb128 0xb
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x1b
	.long	0x6ae5
	.byte	0x8
	.byte	0x1a
	.byte	0x1f
	.uleb128 0x6
	.string	"format_spec"
	.byte	0x1a
	.byte	0x20
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"args_ptr"
	.byte	0x1a
	.byte	0x21
	.long	0x6ae5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x40a
	.uleb128 0x2
	.string	"text_info"
	.byte	0x1a
	.byte	0x22
	.long	0x6ab3
	.uleb128 0x2a
	.long	0x6b7c
	.byte	0x4
	.byte	0x1a
	.byte	0x26
	.uleb128 0x1a
	.string	"DK_FATAL"
	.sleb128 0
	.uleb128 0x1a
	.string	"DK_ICE"
	.sleb128 1
	.uleb128 0x1a
	.string	"DK_SORRY"
	.sleb128 2
	.uleb128 0x1a
	.string	"DK_ERROR"
	.sleb128 3
	.uleb128 0x1a
	.string	"DK_WARNING"
	.sleb128 4
	.uleb128 0x1a
	.string	"DK_ANACHRONISM"
	.sleb128 5
	.uleb128 0x1a
	.string	"DK_NOTE"
	.sleb128 6
	.uleb128 0x1a
	.string	"DK_DEBUG"
	.sleb128 7
	.uleb128 0x1a
	.string	"DK_LAST_DIAGNOSTIC_KIND"
	.sleb128 8
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_t"
	.byte	0x1a
	.byte	0x2b
	.long	0x6afc
	.uleb128 0x1b
	.long	0x6bcd
	.byte	0x14
	.byte	0x1a
	.byte	0x31
	.uleb128 0x6
	.string	"message"
	.byte	0x1a
	.byte	0x32
	.long	0x6aeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"location"
	.byte	0x1a
	.byte	0x33
	.long	0x1759
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"kind"
	.byte	0x1a
	.byte	0x35
	.long	0x6b7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x1a
	.byte	0x36
	.long	0x6b90
	.uleb128 0x2a
	.long	0x6c51
	.byte	0x4
	.byte	0x1a
	.byte	0x40
	.uleb128 0x1a
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
	.sleb128 0
	.uleb128 0x1a
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
	.sleb128 1
	.uleb128 0x1a
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_prefixing_rule_t"
	.byte	0x1a
	.byte	0x44
	.long	0x6be4
	.uleb128 0x1b
	.long	0x6d26
	.byte	0x18
	.byte	0x1a
	.byte	0x48
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1a
	.byte	0x4a
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"maximum_length"
	.byte	0x1a
	.byte	0x4e
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"ideal_maximum_length"
	.byte	0x1a
	.byte	0x52
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"indent_skip"
	.byte	0x1a
	.byte	0x55
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"emitted_prefix_p"
	.byte	0x1a
	.byte	0x58
	.long	0x60b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"need_newline_p"
	.byte	0x1a
	.byte	0x5b
	.long	0x60b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x6
	.string	"prefixing_rule"
	.byte	0x1a
	.byte	0x5e
	.long	0x6c51
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x1a
	.byte	0x5f
	.long	0x6c74
	.uleb128 0x1c
	.long	.LASF34
	.byte	0x1a
	.byte	0x64
	.long	0x6d45
	.uleb128 0x13
	.long	0x6dcc
	.long	.LASF34
	.byte	0xd0
	.byte	0x1a
	.byte	0x64
	.uleb128 0x6
	.string	"state"
	.byte	0x1a
	.byte	0x6c
	.long	0x6d26
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stream"
	.byte	0x1a
	.byte	0x6f
	.long	0x6e05
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"obstack"
	.byte	0x1a
	.byte	0x72
	.long	0x4351
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"line_length"
	.byte	0x1a
	.byte	0x75
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"digit_buffer"
	.byte	0x1a
	.byte	0x79
	.long	0x6e0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"format_decoder"
	.byte	0x1a
	.byte	0x83
	.long	0x6dcc
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x1a
	.byte	0x65
	.long	0x6dde
	.uleb128 0x3
	.byte	0x4
	.long	0x6de4
	.uleb128 0x22
	.long	0x6df9
	.byte	0x1
	.long	0x60b8
	.uleb128 0x16
	.long	0x6df9
	.uleb128 0x16
	.long	0x6dff
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6d3a
	.uleb128 0x3
	.byte	0x4
	.long	0x6aeb
	.uleb128 0x3
	.byte	0x4
	.long	0x4ee
	.uleb128 0xf
	.long	0x6e1b
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7f
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x1a
	.byte	0xac
	.long	0x6e26
	.uleb128 0x26
	.long	0x6f2a
	.long	.LASF35
	.value	0x110
	.byte	0x1a
	.byte	0xac
	.uleb128 0x6
	.string	"buffer"
	.byte	0x1a
	.byte	0xb8
	.long	0x6d3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"diagnostic_count"
	.byte	0x1a
	.byte	0xbb
	.long	0x6f89
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"warnings_are_errors_message"
	.byte	0x1a
	.byte	0xbf
	.long	0x60b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"begin_diagnostic"
	.byte	0x1a
	.byte	0xc8
	.long	0x6f2a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x6
	.string	"end_diagnostic"
	.byte	0x1a
	.byte	0xcb
	.long	0x6f6a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x6
	.string	"internal_error"
	.byte	0x1a
	.byte	0xce
	.long	0x6faa
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x6
	.string	"last_function"
	.byte	0x1a
	.byte	0xd3
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.string	"last_module"
	.byte	0x1a
	.byte	0xd6
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x6
	.string	"lock"
	.byte	0x1a
	.byte	0xd8
	.long	0x2df
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x6
	.string	"x_data"
	.byte	0x1a
	.byte	0xdb
	.long	0x4e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_starter_fn"
	.byte	0x1a
	.byte	0xad
	.long	0x6f47
	.uleb128 0x3
	.byte	0x4
	.long	0x6f4d
	.uleb128 0x15
	.long	0x6f5e
	.byte	0x1
	.uleb128 0x16
	.long	0x6f5e
	.uleb128 0x16
	.long	0x6f64
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e1b
	.uleb128 0x3
	.byte	0x4
	.long	0x6bcd
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x1a
	.byte	0xaf
	.long	0x6f2a
	.uleb128 0xf
	.long	0x6f99
	.long	0x2df
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.long	0x6faa
	.byte	0x1
	.uleb128 0x16
	.long	0x2cc
	.uleb128 0x16
	.long	0x6ae5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f99
	.uleb128 0x13
	.long	0x6fea
	.long	.LASF36
	.byte	0xc
	.byte	0x15
	.byte	0x2d
	.uleb128 0x18
	.long	.LASF37
	.byte	0x15
	.byte	0x30
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"value"
	.byte	0x15
	.byte	0x32
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"help"
	.byte	0x15
	.byte	0x34
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x15
	.byte	0x35
	.long	0x6fb0
	.uleb128 0x19
	.long	0x703b
	.string	"real_value_class"
	.byte	0x4
	.byte	0x9
	.byte	0x22
	.uleb128 0x1a
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x1a
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x1a
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x1a
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0xf
	.long	0x704b
	.long	0x44e
	.uleb128 0x10
	.long	0x3cf
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x722e
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x1e
	.byte	0x19
	.uleb128 0x6
	.string	"init"
	.byte	0x1e
	.byte	0x1c
	.long	0x723a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"finish"
	.byte	0x1e
	.byte	0x1f
	.long	0x723a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"define"
	.byte	0x1e
	.byte	0x22
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"undef"
	.byte	0x1e
	.byte	0x25
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"start_source_file"
	.byte	0x1e
	.byte	0x29
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"end_source_file"
	.byte	0x1e
	.byte	0x2d
	.long	0x7263
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"begin_block"
	.byte	0x1e
	.byte	0x31
	.long	0x727a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"end_block"
	.byte	0x1e
	.byte	0x34
	.long	0x727a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"ignore_block"
	.byte	0x1e
	.byte	0x3b
	.long	0x7290
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"source_line"
	.byte	0x1e
	.byte	0x3e
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"begin_prologue"
	.byte	0x1e
	.byte	0x43
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"end_prologue"
	.byte	0x1e
	.byte	0x47
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"end_epilogue"
	.byte	0x1e
	.byte	0x4a
	.long	0x7251
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"begin_function"
	.byte	0x1e
	.byte	0x4d
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"end_function"
	.byte	0x1e
	.byte	0x50
	.long	0x7263
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_decl"
	.byte	0x1e
	.byte	0x56
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"global_decl"
	.byte	0x1e
	.byte	0x5a
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"deferred_inline_function"
	.byte	0x1e
	.byte	0x5e
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"outlining_inline_function"
	.byte	0x1e
	.byte	0x63
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"label"
	.byte	0x1e
	.byte	0x67
	.long	0x72b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x723a
	.byte	0x1
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x722e
	.uleb128 0x15
	.long	0x7251
	.byte	0x1
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7240
	.uleb128 0x15
	.long	0x7263
	.byte	0x1
	.uleb128 0x16
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7257
	.uleb128 0x15
	.long	0x727a
	.byte	0x1
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7269
	.uleb128 0x22
	.long	0x7290
	.byte	0x1
	.long	0x60b8
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7280
	.uleb128 0x15
	.long	0x72a2
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7296
	.uleb128 0x15
	.long	0x72b4
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72a8
	.uleb128 0x4
	.long	0x7302
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x1f
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x1f
	.byte	0x3b
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x1f
	.byte	0x3c
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x1f
	.byte	0x3d
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x1f
	.byte	0x3e
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x7538
	.string	"asm_out"
	.byte	0x70
	.byte	0x1f
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x1f
	.byte	0x35
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x1f
	.byte	0x35
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x1f
	.byte	0x38
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x1f
	.byte	0x3f
	.long	0x72ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x1f
	.byte	0x3f
	.long	0x72ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x1f
	.byte	0x46
	.long	0x7552
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x1f
	.byte	0x49
	.long	0x7569
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x1f
	.byte	0x4d
	.long	0x7580
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x1f
	.byte	0x50
	.long	0x7597
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x1f
	.byte	0x53
	.long	0x75a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x1f
	.byte	0x56
	.long	0x75a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x1f
	.byte	0x59
	.long	0x7597
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x1f
	.byte	0x5d
	.long	0x75c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x1f
	.byte	0x60
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x1f
	.byte	0x63
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x1f
	.byte	0x6a
	.long	0x75dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x1f
	.byte	0x6e
	.long	0x75f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x1f
	.byte	0x73
	.long	0x7580
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x1f
	.byte	0x76
	.long	0x760f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x1f
	.byte	0x79
	.long	0x760f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x1f
	.byte	0x80
	.long	0x7635
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x1f
	.byte	0x8b
	.long	0x765a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x22
	.long	0x7552
	.byte	0x1
	.long	0x60b8
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7538
	.uleb128 0x15
	.long	0x7569
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7558
	.uleb128 0x15
	.long	0x7580
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x756f
	.uleb128 0x15
	.long	0x7597
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x47f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7586
	.uleb128 0x15
	.long	0x75a9
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x759d
	.uleb128 0x15
	.long	0x75c0
	.byte	0x1
	.uleb128 0x16
	.long	0x2cc
	.uleb128 0x16
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75af
	.uleb128 0x15
	.long	0x75dc
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x490
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75c6
	.uleb128 0x15
	.long	0x75f8
	.byte	0x1
	.uleb128 0x16
	.long	0x89a
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x490
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75e2
	.uleb128 0x15
	.long	0x760f
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x75fe
	.uleb128 0x15
	.long	0x7635
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x47f
	.uleb128 0x16
	.long	0x47f
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7615
	.uleb128 0x22
	.long	0x765a
	.byte	0x1
	.long	0x60b8
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x47f
	.uleb128 0x16
	.long	0x47f
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x763b
	.uleb128 0x4
	.long	0x781b
	.string	"sched"
	.byte	0x40
	.byte	0x1f
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x1f
	.byte	0x97
	.long	0x783a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x1f
	.byte	0x9b
	.long	0x7855
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x1f
	.byte	0xa0
	.long	0x7861
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x1f
	.byte	0xa4
	.long	0x7886
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x1f
	.byte	0xa7
	.long	0x78a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x1f
	.byte	0xaa
	.long	0x78b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x1f
	.byte	0xae
	.long	0x78e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x1f
	.byte	0xaf
	.long	0x78e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x1f
	.byte	0xb4
	.long	0x7861
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x1f
	.byte	0xc2
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x1f
	.byte	0xc3
	.long	0x78ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x1f
	.byte	0xc4
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x1f
	.byte	0xc5
	.long	0x78ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x1f
	.byte	0xcd
	.long	0x7861
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x1f
	.byte	0xd8
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x1f
	.byte	0xd9
	.long	0x7905
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x22
	.long	0x783a
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x781b
	.uleb128 0x22
	.long	0x7855
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7840
	.uleb128 0x2b
	.byte	0x1
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x785b
	.uleb128 0x22
	.long	0x7886
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7867
	.uleb128 0x15
	.long	0x78a2
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x788c
	.uleb128 0x15
	.long	0x78b9
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78a8
	.uleb128 0x22
	.long	0x78e3
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x1722
	.uleb128 0x16
	.long	0x834
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78bf
	.uleb128 0x2b
	.byte	0x1
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.long	0x78e9
	.uleb128 0x22
	.long	0x7905
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78f5
	.uleb128 0x4
	.long	0x7be8
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x1f
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x1f
	.byte	0x8f
	.long	0x7302
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x1f
	.byte	0xda
	.long	0x7660
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x1f
	.byte	0xdd
	.long	0x7bfd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x1f
	.byte	0xe0
	.long	0x7bfd
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x18
	.long	.LASF38
	.byte	0x1f
	.byte	0xe4
	.long	0x7c03
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x1f
	.byte	0xe9
	.long	0x7c23
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x1f
	.byte	0xec
	.long	0x72a2
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x1f
	.byte	0xef
	.long	0x7c3a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x1f
	.byte	0xf3
	.long	0x7290
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x1f
	.byte	0xf7
	.long	0x7290
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x1f
	.byte	0xfa
	.long	0x84e
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x1f
	.byte	0xfd
	.long	0x7c64
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x1f
	.value	0x103
	.long	0x7c84
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x1f
	.value	0x107
	.long	0x7c90
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x1f
	.value	0x10a
	.long	0x7ca6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x1f
	.value	0x10d
	.long	0x7290
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x1f
	.value	0x111
	.long	0x7290
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x1f
	.value	0x115
	.long	0x7580
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x1f
	.value	0x118
	.long	0x7cbc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x1f
	.value	0x11d
	.long	0x60b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x1f
	.value	0x121
	.long	0x60b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x1f
	.value	0x124
	.long	0x60b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x1f
	.value	0x127
	.long	0x60b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x1f
	.value	0x12a
	.long	0x60b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x22
	.long	0x7bfd
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7be8
	.uleb128 0x3
	.byte	0x4
	.long	0x7c09
	.uleb128 0xa
	.long	0x5ff3
	.uleb128 0x22
	.long	0x7c23
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c0e
	.uleb128 0x15
	.long	0x7c3a
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x60e5
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c29
	.uleb128 0x22
	.long	0x7c64
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x89a
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c40
	.uleb128 0x22
	.long	0x7c84
	.byte	0x1
	.long	0x3b8
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2cc
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c6a
	.uleb128 0x2b
	.byte	0x1
	.long	0x60b8
	.uleb128 0x3
	.byte	0x4
	.long	0x7c8a
	.uleb128 0x22
	.long	0x7ca6
	.byte	0x1
	.long	0x60b8
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c96
	.uleb128 0x22
	.long	0x7cbc
	.byte	0x1
	.long	0x2cc
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cac
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x20
	.byte	0x1d
	.long	0x7cde
	.uleb128 0x3
	.byte	0x4
	.long	0x7ce4
	.uleb128 0x15
	.long	0x7cfa
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x4
	.long	0x7e80
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x20
	.byte	0x23
	.uleb128 0x6
	.string	"walk_subtrees"
	.byte	0x20
	.byte	0x24
	.long	0x7eca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x20
	.byte	0x29
	.long	0x7ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x20
	.byte	0x2a
	.long	0x7ef6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x20
	.byte	0x2b
	.long	0x7f11
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x20
	.byte	0x2d
	.long	0x7ef6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x20
	.byte	0x2e
	.long	0x7f2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x20
	.byte	0x2f
	.long	0x7f5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x20
	.byte	0x34
	.long	0x7ef6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x20
	.byte	0x35
	.long	0x7f71
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x20
	.byte	0x36
	.long	0x7ef6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x20
	.byte	0x37
	.long	0x7f83
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x20
	.byte	0x38
	.long	0x7fa3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x22
	.long	0x7ea4
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x7ea4
	.uleb128 0x16
	.long	0x834
	.uleb128 0x16
	.long	0x7eaa
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x4e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f0
	.uleb128 0x3
	.byte	0x4
	.long	0x7eb0
	.uleb128 0x22
	.long	0x7eca
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x7ea4
	.uleb128 0x16
	.long	0x834
	.uleb128 0x16
	.long	0x4e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e80
	.uleb128 0x22
	.long	0x7ee0
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x7ea4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ed0
	.uleb128 0x22
	.long	0x7ef6
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ee6
	.uleb128 0x22
	.long	0x7f11
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7efc
	.uleb128 0x22
	.long	0x7f2c
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f17
	.uleb128 0x22
	.long	0x7f5b
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x834
	.uleb128 0x16
	.long	0x4e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f32
	.uleb128 0x22
	.long	0x7f71
	.byte	0x1
	.long	0x60b8
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f61
	.uleb128 0x15
	.long	0x7f83
	.byte	0x1
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f77
	.uleb128 0x22
	.long	0x7fa3
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7f89
	.uleb128 0x4
	.long	0x8018
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x20
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x20
	.byte	0x42
	.long	0x8024
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x20
	.byte	0x45
	.long	0x8024
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x20
	.byte	0x48
	.long	0x8024
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x20
	.byte	0x4b
	.long	0x8024
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x8024
	.byte	0x1
	.uleb128 0x16
	.long	0x5514
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8018
	.uleb128 0x4
	.long	0x8075
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x20
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x20
	.byte	0x54
	.long	0x808a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x20
	.byte	0x57
	.long	0x80a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x22
	.long	0x808a
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8075
	.uleb128 0x22
	.long	0x80a0
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8090
	.uleb128 0x4
	.long	0x8193
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x20
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x20
	.byte	0x60
	.long	0x81a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x20
	.byte	0x64
	.long	0x81be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x20
	.byte	0x68
	.long	0x81d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x20
	.byte	0x6c
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x20
	.byte	0x70
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x20
	.byte	0x74
	.long	0x820a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x20
	.byte	0x7a
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x20
	.byte	0x80
	.long	0x8221
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x22
	.long	0x81a3
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x176b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8193
	.uleb128 0x22
	.long	0x81be
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x89a
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81a9
	.uleb128 0x22
	.long	0x81d9
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81c4
	.uleb128 0x22
	.long	0x81ef
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81df
	.uleb128 0x22
	.long	0x820a
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x81f5
	.uleb128 0x15
	.long	0x8221
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8210
	.uleb128 0x4
	.long	0x832d
	.string	"lang_hooks_for_decls"
	.byte	0x28
	.byte	0x20
	.byte	0x86
	.uleb128 0x6
	.string	"pushlevel"
	.byte	0x20
	.byte	0x89
	.long	0x83a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"poplevel"
	.byte	0x20
	.byte	0x90
	.long	0x8347
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x20
	.byte	0x94
	.long	0x7861
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x20
	.byte	0x99
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x20
	.byte	0x9c
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x20
	.byte	0xa2
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x20
	.byte	0xa5
	.long	0x8353
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x20
	.byte	0xa9
	.long	0x7290
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"final_write_globals"
	.byte	0x20
	.byte	0xad
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"ok_for_sibcall"
	.byte	0x20
	.byte	0xb0
	.long	0x7290
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x22
	.long	0x8347
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x832d
	.uleb128 0x2b
	.byte	0x1
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x834d
	.uleb128 0x26
	.long	0x877e
	.long	.LASF39
	.value	0x120
	.byte	0x20
	.byte	0xb6
	.uleb128 0x18
	.long	.LASF5
	.byte	0x20
	.byte	0xb8
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"identifier_size"
	.byte	0x20
	.byte	0xbc
	.long	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"init_options"
	.byte	0x20
	.byte	0xc0
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"decode_option"
	.byte	0x20
	.byte	0xca
	.long	0x8799
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x20
	.byte	0xd6
	.long	0x7c90
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x20
	.byte	0xde
	.long	0x7cbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"finish"
	.byte	0x20
	.byte	0xe1
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"parse_file"
	.byte	0x20
	.byte	0xe5
	.long	0x83a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"clear_binding_stack"
	.byte	0x20
	.byte	0xe8
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"get_alias_set"
	.byte	0x20
	.byte	0xec
	.long	0x87af
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x20
	.byte	0xf1
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x20
	.byte	0xf5
	.long	0x87d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"truthvalue_conversion"
	.byte	0x20
	.value	0x102
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"insert_default_attributes"
	.byte	0x20
	.value	0x106
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"safe_from_p"
	.byte	0x20
	.value	0x10f
	.long	0x87ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"finish_incomplete_decl"
	.byte	0x20
	.value	0x113
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"unsafe_for_reeval"
	.byte	0x20
	.value	0x118
	.long	0x80a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"mark_addressable"
	.byte	0x20
	.value	0x11d
	.long	0x7290
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"staticp"
	.byte	0x20
	.value	0x120
	.long	0x80a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"dup_lang_specific_decl"
	.byte	0x20
	.value	0x124
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"unsave_expr_now"
	.byte	0x20
	.value	0x129
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"maybe_build_cleanup"
	.byte	0x20
	.value	0x12d
	.long	0x81ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"set_decl_assembler_name"
	.byte	0x20
	.value	0x134
	.long	0x72a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"can_use_bit_fields_p"
	.byte	0x20
	.value	0x138
	.long	0x7c90
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"honor_readonly"
	.byte	0x20
	.value	0x13b
	.long	0x60b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"print_statistics"
	.byte	0x20
	.value	0x13f
	.long	0x84e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"print_xnode"
	.byte	0x20
	.value	0x143
	.long	0x7cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"print_decl"
	.byte	0x20
	.value	0x147
	.long	0x7cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"print_type"
	.byte	0x20
	.value	0x148
	.long	0x7cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"print_identifier"
	.byte	0x20
	.value	0x149
	.long	0x7cc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"decl_printable_name"
	.byte	0x20
	.value	0x151
	.long	0x880a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"print_error_function"
	.byte	0x20
	.value	0x154
	.long	0x8827
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"expr_size"
	.byte	0x20
	.value	0x15b
	.long	0x81ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF38
	.byte	0x20
	.value	0x162
	.long	0x7c03
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"common_attribute_table"
	.byte	0x20
	.value	0x163
	.long	0x7c03
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"format_attribute_table"
	.byte	0x20
	.value	0x164
	.long	0x7c03
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.long	.LASF26
	.byte	0x20
	.value	0x167
	.long	0x7fa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"tree_inlining"
	.byte	0x20
	.value	0x169
	.long	0x7cfa
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"tree_dump"
	.byte	0x20
	.value	0x16b
	.long	0x802a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"decls"
	.byte	0x20
	.value	0x16d
	.long	0x8227
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"types"
	.byte	0x20
	.value	0x16f
	.long	0x80a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x22
	.long	0x8793
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x8793
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4e8
	.uleb128 0x3
	.byte	0x4
	.long	0x877e
	.uleb128 0x22
	.long	0x87af
	.byte	0x1
	.long	0x47f
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x879f
	.uleb128 0x22
	.long	0x87d4
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x89a
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x87b5
	.uleb128 0x22
	.long	0x87ef
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x87da
	.uleb128 0x22
	.long	0x880a
	.byte	0x1
	.long	0x2cc
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x87f5
	.uleb128 0x15
	.long	0x8821
	.byte	0x1
	.uleb128 0x16
	.long	0x8821
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6e26
	.uleb128 0x3
	.byte	0x4
	.long	0x8810
	.uleb128 0x4
	.long	0x88af
	.string	"dump_file_info"
	.byte	0x8
	.byte	0x1
	.byte	0xe0
	.uleb128 0x6
	.string	"extension"
	.byte	0x1
	.byte	0xe2
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"debug_switch"
	.byte	0x1
	.byte	0xe5
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"graph_dump_p"
	.byte	0x1
	.byte	0xe8
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"enabled"
	.byte	0x1
	.byte	0xeb
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.string	"initialized"
	.byte	0x1
	.byte	0xee
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0x19
	.long	0x8a83
	.string	"dump_file_index"
	.byte	0x4
	.byte	0x1
	.byte	0xf4
	.uleb128 0x1a
	.string	"DFI_rtl"
	.sleb128 0
	.uleb128 0x1a
	.string	"DFI_sibling"
	.sleb128 1
	.uleb128 0x1a
	.string	"DFI_eh"
	.sleb128 2
	.uleb128 0x1a
	.string	"DFI_jump"
	.sleb128 3
	.uleb128 0x1a
	.string	"DFI_ssa"
	.sleb128 4
	.uleb128 0x1a
	.string	"DFI_ssa_ccp"
	.sleb128 5
	.uleb128 0x1a
	.string	"DFI_ssa_dce"
	.sleb128 6
	.uleb128 0x1a
	.string	"DFI_ussa"
	.sleb128 7
	.uleb128 0x1a
	.string	"DFI_null"
	.sleb128 8
	.uleb128 0x1a
	.string	"DFI_cse"
	.sleb128 9
	.uleb128 0x1a
	.string	"DFI_addressof"
	.sleb128 10
	.uleb128 0x1a
	.string	"DFI_gcse"
	.sleb128 11
	.uleb128 0x1a
	.string	"DFI_loop"
	.sleb128 12
	.uleb128 0x1a
	.string	"DFI_cfg"
	.sleb128 13
	.uleb128 0x1a
	.string	"DFI_bp"
	.sleb128 14
	.uleb128 0x1a
	.string	"DFI_ce1"
	.sleb128 15
	.uleb128 0x1a
	.string	"DFI_tracer"
	.sleb128 16
	.uleb128 0x1a
	.string	"DFI_cse2"
	.sleb128 17
	.uleb128 0x1a
	.string	"DFI_life"
	.sleb128 18
	.uleb128 0x1a
	.string	"DFI_combine"
	.sleb128 19
	.uleb128 0x1a
	.string	"DFI_ce2"
	.sleb128 20
	.uleb128 0x1a
	.string	"DFI_regmove"
	.sleb128 21
	.uleb128 0x1a
	.string	"DFI_sched"
	.sleb128 22
	.uleb128 0x1a
	.string	"DFI_lreg"
	.sleb128 23
	.uleb128 0x1a
	.string	"DFI_greg"
	.sleb128 24
	.uleb128 0x1a
	.string	"DFI_postreload"
	.sleb128 25
	.uleb128 0x1a
	.string	"DFI_flow2"
	.sleb128 26
	.uleb128 0x1a
	.string	"DFI_peephole2"
	.sleb128 27
	.uleb128 0x1a
	.string	"DFI_rnreg"
	.sleb128 28
	.uleb128 0x1a
	.string	"DFI_ce3"
	.sleb128 29
	.uleb128 0x1a
	.string	"DFI_sched2"
	.sleb128 30
	.uleb128 0x1a
	.string	"DFI_stack"
	.sleb128 31
	.uleb128 0x1a
	.string	"DFI_bbro"
	.sleb128 32
	.uleb128 0x1a
	.string	"DFI_mach"
	.sleb128 33
	.uleb128 0x1a
	.string	"DFI_dbr"
	.sleb128 34
	.uleb128 0x1a
	.string	"DFI_sgi_parse_tree"
	.sleb128 35
	.uleb128 0x1a
	.string	"DFI_MAX"
	.sleb128 36
	.byte	0x0
	.uleb128 0x2c
	.long	0x8add
	.byte	0x10
	.byte	0x1
	.value	0x3e5
	.uleb128 0xd
	.string	"arg"
	.byte	0x1
	.value	0x3e6
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"debug_type"
	.byte	0x1
	.value	0x3e9
	.long	0x8add
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"use_extensions_p"
	.byte	0x1
	.value	0x3ea
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x3eb
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x60fc
	.uleb128 0x2c
	.long	0x8b2d
	.byte	0x10
	.byte	0x1
	.value	0x40c
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.value	0x40d
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.value	0x40e
	.long	0x8b2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"on_value"
	.byte	0x1
	.value	0x40f
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x410
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x834
	.uleb128 0x11
	.string	"lang_independent_options"
	.byte	0x1
	.value	0x412
	.long	0x8ae2
	.uleb128 0xc
	.long	0x8b84
	.string	"lang_opt"
	.byte	0x8
	.byte	0x1
	.value	0x513
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.value	0x514
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x515
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2c
	.long	0x8bbd
	.byte	0xc
	.byte	0x1
	.value	0x5cd
	.uleb128 0x21
	.long	.LASF5
	.byte	0x1
	.value	0x5ce
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"value"
	.byte	0x1
	.value	0x5cf
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x5d0
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2c
	.long	0x8bf4
	.byte	0xc
	.byte	0x1
	.value	0x5d8
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.value	0x5d9
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.value	0x5da
	.long	0x8bf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x5db
	.long	0x60ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x796
	.uleb128 0x2d
	.long	0x8c2f
	.byte	0x1
	.string	"set_Wunused"
	.byte	0x1
	.value	0x67e
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.string	"setting"
	.byte	0x1
	.value	0x67d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8c69
	.byte	0x1
	.string	"set_fast_math_flags"
	.byte	0x1
	.value	0x692
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2e
	.string	"set"
	.byte	0x1
	.value	0x691
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.string	"fast_math_flags_set_p"
	.byte	0x1
	.value	0x69e
	.byte	0x1
	.long	0x60b8
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x30
	.long	0x8d08
	.byte	0x1
	.string	"read_integral_parameter"
	.byte	0x1
	.value	0x6bb
	.byte	0x1
	.long	0x2df
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x6b8
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pname"
	.byte	0x1
	.value	0x6b9
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"defval"
	.byte	0x1
	.value	0x6ba
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"endp"
	.byte	0x1
	.value	0x6bc
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8d4e
	.byte	0x1
	.string	"dump_parse_tree"
	.byte	0x1
	.value	0x6d4
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x2e
	.string	"msg"
	.byte	0x1
	.value	0x6d3
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"node"
	.byte	0x1
	.value	0x6d3
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x8d7e
	.byte	0x1
	.string	"do_abort"
	.byte	0x1
	.value	0x6e6
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x32
	.long	.LASF42
	.long	0xa118
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15506
	.byte	0x0
	.uleb128 0x2d
	.long	0x8db8
	.byte	0x1
	.string	"botch"
	.byte	0x1
	.value	0x6f0
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x6ef
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF42
	.long	0xa103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15510
	.byte	0x0
	.uleb128 0x30
	.long	0x8dff
	.byte	0x1
	.string	"exact_log2_wide"
	.byte	0x1
	.value	0x6fc
	.byte	0x1
	.long	0x2df
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x6fb
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x6fd
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x8e46
	.byte	0x1
	.string	"floor_log2_wide"
	.byte	0x1
	.value	0x70e
	.byte	0x1
	.long	0x2df
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x70d
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x70f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x33
	.long	0x8e7a
	.string	"crash_signal"
	.byte	0x1
	.value	0x71c
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x2e
	.string	"signo"
	.byte	0x1
	.value	0x71b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8ecd
	.byte	0x1
	.string	"strip_off_ending"
	.byte	0x1
	.value	0x729
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x727
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x728
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x72a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x8f24
	.byte	0x1
	.string	"output_quoted_string"
	.byte	0x1
	.value	0x73b
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x34
	.long	.LASF43
	.byte	0x1
	.value	0x739
	.long	0x6e05
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF1
	.byte	0x1
	.value	0x73a
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x73f
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x2d
	.long	0x8f80
	.byte	0x1
	.string	"output_clean_symbol_name"
	.byte	0x1
	.value	0x757
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x755
	.long	0x6e05
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x756
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.value	0x759
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8fef
	.byte	0x1
	.string	"output_file_directive"
	.byte	0x1
	.value	0x769
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x34
	.long	.LASF43
	.byte	0x1
	.value	0x767
	.long	0x6e05
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"input_name"
	.byte	0x1
	.value	0x768
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x76a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"na"
	.byte	0x1
	.value	0x76b
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0x9070
	.string	"open_dump_file"
	.byte	0x1
	.value	0x788
	.byte	0x1
	.long	0x2df
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"index"
	.byte	0x1
	.value	0x786
	.long	0x88af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x787
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"dump_name"
	.byte	0x1
	.value	0x789
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"open_arg"
	.byte	0x1
	.value	0x78a
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x78b
	.long	0x9070
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xf
	.long	0x9080
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xf
	.byte	0x0
	.uleb128 0x33
	.long	0x9103
	.string	"close_dump_file"
	.byte	0x1
	.value	0x7c3
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2e
	.string	"index"
	.byte	0x1
	.value	0x7c0
	.long	0x88af
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"func"
	.byte	0x1
	.value	0x7c1
	.long	0x9114
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"insns"
	.byte	0x1
	.value	0x7c2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x7cc
	.long	0x9070
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"suffix"
	.byte	0x1
	.value	0x7cd
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x9114
	.byte	0x1
	.uleb128 0x16
	.long	0x6e05
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9103
	.uleb128 0x30
	.long	0x91d8
	.byte	0x1
	.string	"wrapup_global_declarations"
	.byte	0x1
	.value	0x7e8
	.byte	0x1
	.long	0x2df
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"vec"
	.byte	0x1
	.value	0x7e6
	.long	0x60e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x7e7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x7e9
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x7ea
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"reconsider"
	.byte	0x1
	.value	0x7eb
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"output_something"
	.byte	0x1
	.value	0x7ec
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x31
	.string	"needed"
	.byte	0x1
	.value	0x823
	.long	0x60b8
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x9243
	.byte	0x1
	.string	"check_global_declarations"
	.byte	0x1
	.value	0x850
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.string	"vec"
	.byte	0x1
	.value	0x84e
	.long	0x60e5
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x84f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF2
	.byte	0x1
	.value	0x851
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x852
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x9293
	.byte	0x1
	.string	"push_srcloc"
	.byte	0x1
	.value	0x89f
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x89d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"line"
	.byte	0x1
	.value	0x89e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"fs"
	.byte	0x1
	.value	0x8a0
	.long	0x894
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x92d3
	.byte	0x1
	.string	"pop_srcloc"
	.byte	0x1
	.value	0x8b6
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x31
	.string	"fs"
	.byte	0x1
	.value	0x8b7
	.long	0x894
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x32
	.long	.LASF42
	.long	0xa0ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15926
	.byte	0x0
	.uleb128 0x2d
	.long	0x9306
	.byte	0x1
	.string	"compile_file"
	.byte	0x1
	.value	0x8cf
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x8cd
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x93e2
	.byte	0x1
	.string	"rest_of_decl_compilation"
	.byte	0x1
	.value	0x956
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x952
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"asmspec"
	.byte	0x1
	.value	0x953
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"top_level"
	.byte	0x1
	.value	0x954
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"at_end"
	.byte	0x1
	.value	0x955
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	0x939d
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x31
	.string	"alias"
	.byte	0x1
	.value	0x962
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x37
	.long	.LASF5
	.byte	0x1
	.value	0x983
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"size"
	.byte	0x1
	.value	0x983
	.long	0x47f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x31
	.string	"size_"
	.byte	0x1
	.value	0x983
	.long	0x47f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x9434
	.byte	0x1
	.string	"rest_of_type_compilation"
	.byte	0x1
	.value	0x9cb
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2e
	.string	"type"
	.byte	0x1
	.value	0x9c5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"toplev"
	.byte	0x1
	.value	0x9c6
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x95fe
	.byte	0x1
	.string	"rest_of_compilation"
	.byte	0x1
	.value	0x9ec
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x34
	.long	.LASF2
	.byte	0x1
	.value	0x9eb
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"insns"
	.byte	0x1
	.value	0x9ed
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x9ee
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"failure"
	.byte	0x1
	.value	0x9ef
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.string	"rebuild_label_notes_after_reload"
	.byte	0x1
	.value	0x9f0
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"register_life_up_to_date"
	.byte	0x1
	.value	0x9f1
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x39
	.string	"exit_rest_of_compilation"
	.byte	0x1
	.value	0xf0e
	.long	.L287
	.uleb128 0x39
	.string	"turn_rtl_into_assembler_code"
	.byte	0x1
	.value	0xeb4
	.long	.L333
	.uleb128 0x38
	.long	0x95a0
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x37
	.long	.LASF28
	.byte	0x1
	.value	0xa0e
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"parent"
	.byte	0x1
	.value	0xa0f
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"lose"
	.byte	0x1
	.value	0xa10
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x31
	.string	"saved_optimize"
	.byte	0x1
	.value	0xa74
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x95c0
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x31
	.string	"parent"
	.byte	0x1
	.value	0xa98
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x38
	.long	0x95ed
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xece
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"fnname"
	.byte	0x1
	.value	0xecf
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	.LASF42
	.long	0xa0d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16143
	.byte	0x0
	.uleb128 0x33
	.long	0x96dd
	.string	"display_help"
	.byte	0x1
	.value	0xf48
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x31
	.string	"undoc"
	.byte	0x1
	.value	0xf49
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xf4a
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"lang"
	.byte	0x1
	.value	0xf4b
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.long	0x966b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0xf5b
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x38
	.long	0x9697
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0xf66
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF17
	.byte	0x1
	.value	0xf67
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x38
	.long	0x96b4
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0xf76
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0xfa7
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0xfa8
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x97b1
	.string	"display_target_options"
	.byte	0x1
	.value	0xfcd
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x31
	.string	"undoc"
	.byte	0x1
	.value	0xfce
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xfce
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	0x9798
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x31
	.string	"doc"
	.byte	0x1
	.value	0xfdc
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	0x976f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0xfe4
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0xfe5
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x36
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0xff7
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x37
	.long	.LASF40
	.byte	0x1
	.value	0xff8
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.string	"displayed"
	.byte	0x1
	.value	0xfcf
	.long	0x60b8
	.byte	0x5
	.byte	0x3
	.long	displayed.16848
	.byte	0x0
	.uleb128 0x33
	.long	0x9813
	.string	"decode_d_option"
	.byte	0x1
	.value	0x1016
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"arg"
	.byte	0x1
	.value	0x1015
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1017
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0x1017
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"matched"
	.byte	0x1
	.value	0x1017
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	0x98ba
	.string	"decode_f_option"
	.byte	0x1
	.value	0x105b
	.byte	0x1
	.long	0x2df
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2e
	.string	"arg"
	.byte	0x1
	.value	0x105a
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x105c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x105d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	0x9884
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x1077
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x38
	.long	0x98a1
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x10aa
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x36
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x31
	.string	"nm"
	.byte	0x1
	.value	0x10b3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x990f
	.string	"decode_W_option"
	.byte	0x1
	.value	0x10de
	.byte	0x1
	.long	0x2df
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2e
	.string	"arg"
	.byte	0x1
	.value	0x10dd
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF44
	.byte	0x1
	.value	0x10df
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x10e0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x35
	.long	0x9a26
	.string	"decode_g_option"
	.byte	0x1
	.value	0x1111
	.byte	0x1
	.long	0x2df
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2e
	.string	"arg"
	.byte	0x1
	.value	0x1110
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	0x998e
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x31
	.string	"da_len"
	.byte	0x1
	.value	0x1129
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x31
	.string	"type"
	.byte	0x1
	.value	0x112d
	.long	0x60fc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x112e
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.string	"level"
	.byte	0x1
	.value	0x1112
	.long	0x3b8
	.byte	0x5
	.byte	0x3
	.long	level.17290
	.uleb128 0x31
	.string	"selected_debug_type"
	.byte	0x1
	.value	0x1118
	.long	0x60fc
	.byte	0x5
	.byte	0x3
	.long	selected_debug_type.17291
	.uleb128 0x31
	.string	"type_explicitly_set_p"
	.byte	0x1
	.value	0x111c
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	type_explicitly_set_p.17292
	.uleb128 0x31
	.string	"debug_type_names"
	.byte	0x1
	.value	0x111e
	.long	0xa0cf
	.byte	0x5
	.byte	0x3
	.long	debug_type_names.17293
	.uleb128 0x31
	.string	"max_debug_level"
	.byte	0x1
	.value	0x1124
	.long	0xa0d4
	.byte	0x5
	.byte	0x3
	.long	max_debug_level.17294
	.byte	0x0
	.uleb128 0x35
	.long	0x9af9
	.string	"independent_decode_option"
	.byte	0x1
	.value	0x1197
	.byte	0x1
	.long	0x3b8
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2e
	.string	"argc"
	.byte	0x1
	.value	0x1195
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"argv"
	.byte	0x1
	.value	0x1196
	.long	0x8793
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.value	0x1198
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	0x9ac0
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x31
	.string	"equal"
	.byte	0x1
	.value	0x11be
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x11ce
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x31
	.string	"g_switch_val"
	.byte	0x1
	.value	0x1279
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"return_val"
	.byte	0x1
	.value	0x127a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x9b4f
	.byte	0x1
	.string	"check_gnu_errors"
	.byte	0x1
	.value	0x129d
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.string	"error_count"
	.byte	0x1
	.value	0x129c
	.long	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"sorry_count"
	.byte	0x1
	.value	0x129c
	.long	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x33
	.long	0x9bcb
	.string	"set_target_switch"
	.byte	0x1
	.value	0x12a9
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x12a8
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x12aa
	.long	0x419
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"valid_target_option"
	.byte	0x1
	.value	0x12ab
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x12c2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x9c0d
	.string	"print_version"
	.byte	0x1
	.value	0x12d7
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x12d5
	.long	0x6e05
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x12d6
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x9cc4
	.string	"print_single_switch"
	.byte	0x1
	.value	0x12f4
	.byte	0x1
	.long	0x2df
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x12f1
	.long	0x6e05
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"pos"
	.byte	0x1
	.value	0x12f2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"max"
	.byte	0x1
	.value	0x12f2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x12f3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"sep"
	.byte	0x1
	.value	0x12f3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.string	"term"
	.byte	0x1
	.value	0x12f3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.string	"type"
	.byte	0x1
	.value	0x12f3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x12f3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x12f7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x9d83
	.string	"print_switch_values"
	.byte	0x1
	.value	0x1313
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x34
	.long	.LASF7
	.byte	0x1
	.value	0x1310
	.long	0x6e05
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2e
	.string	"pos"
	.byte	0x1
	.value	0x1311
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"max"
	.byte	0x1
	.value	0x1311
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	.LASF45
	.byte	0x1
	.value	0x1312
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2e
	.string	"sep"
	.byte	0x1
	.value	0x1312
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2e
	.string	"term"
	.byte	0x1
	.value	0x1312
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x1314
	.long	0x419
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1315
	.long	0x8793
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x36
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x37
	.long	.LASF33
	.byte	0x1
	.value	0x1354
	.long	0x9d83
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x9d93
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xff
	.byte	0x0
	.uleb128 0x33
	.long	0x9dc8
	.string	"init_asm_output"
	.byte	0x1
	.value	0x1365
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x1364
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0x9e09
	.string	"general_init"
	.byte	0x1
	.value	0x13a4
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2e
	.string	"argv0"
	.byte	0x1
	.value	0x13a3
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x13a5
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x9f1e
	.string	"parse_options_and_default_flags"
	.byte	0x1
	.value	0x13df
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x2e
	.string	"argc"
	.byte	0x1
	.value	0x13dd
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"argv"
	.byte	0x1
	.value	0x13de
	.long	0x8793
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x13e0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	0x9ea8
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x13fe
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x31
	.string	"optimize_val"
	.byte	0x1
	.value	0x140f
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x31
	.string	"lang_processed"
	.byte	0x1
	.value	0x1482
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"indep_processed"
	.byte	0x1
	.value	0x1483
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x37
	.long	.LASF37
	.byte	0x1
	.value	0x1497
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"lang"
	.byte	0x1
	.value	0x1498
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x1499
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.string	"process_options"
	.byte	0x1
	.value	0x14ee
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x3a
	.string	"backend_init"
	.byte	0x1
	.value	0x159f
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x35
	.long	0x9f9a
	.string	"lang_dependent_init"
	.byte	0x1
	.value	0x15c6
	.byte	0x1
	.long	0x2df
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x34
	.long	.LASF5
	.byte	0x1
	.value	0x15c5
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0x9ffb
	.string	"finalize"
	.byte	0x1
	.value	0x15fd
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x36
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1617
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x161c
	.long	0x9070
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"suffix"
	.byte	0x1
	.value	0x161d
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0xa033
	.string	"do_init_compile"
	.byte	0x1
	.value	0x1639
	.long	0x2cc
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x163c
	.long	0x60b8
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x33
	.long	0xa07c
	.string	"do_compile"
	.byte	0x1
	.value	0x1656
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x37
	.long	.LASF46
	.byte	0x1
	.value	0x1659
	.long	0x60b8
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x36
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x37
	.long	.LASF5
	.byte	0x1
	.value	0x1666
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.long	0xa0bf
	.byte	0x1
	.string	"gnu_init"
	.byte	0x1
	.value	0x1699
	.long	0x2cc
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x2e
	.string	"argc"
	.byte	0x1
	.value	0x1691
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"argv"
	.byte	0x1
	.value	0x1692
	.long	0x8793
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0xa0cf
	.long	0x2cc
	.uleb128 0x10
	.long	0x3cf
	.byte	0x6
	.byte	0x0
	.uleb128 0xa
	.long	0xa0bf
	.uleb128 0xa
	.long	0x3b8
	.uleb128 0xa
	.long	0x81f
	.uleb128 0xf
	.long	0xa0ee
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0xa0de
	.uleb128 0xf
	.long	0xa103
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0xa0f3
	.uleb128 0xf
	.long	0xa118
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x8
	.byte	0x0
	.uleb128 0xa
	.long	0xa108
	.uleb128 0x3d
	.string	"set_yydebug"
	.byte	0x1
	.byte	0x9b
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	set_yydebug
	.uleb128 0xf
	.long	0xa146
	.long	0x882d
	.uleb128 0x10
	.long	0x3cf
	.byte	0x23
	.byte	0x0
	.uleb128 0x31
	.string	"dump_file"
	.byte	0x1
	.value	0x127
	.long	0xa136
	.byte	0x5
	.byte	0x3
	.long	dump_file
	.uleb128 0x31
	.string	"version_flag"
	.byte	0x1
	.value	0x15d
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	version_flag
	.uleb128 0x31
	.string	"filename"
	.byte	0x1
	.value	0x15e
	.long	0x4e8
	.byte	0x5
	.byte	0x3
	.long	filename
	.uleb128 0x31
	.string	"exit_after_options"
	.byte	0x1
	.value	0x189
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	exit_after_options
	.uleb128 0x31
	.string	"flag_gcse"
	.byte	0x1
	.value	0x29d
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_gcse
	.uleb128 0x31
	.string	"flag_loop_optimize"
	.byte	0x1
	.value	0x2a1
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_loop_optimize
	.uleb128 0x31
	.string	"flag_crossjumping"
	.byte	0x1
	.value	0x2a5
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_crossjumping
	.uleb128 0x31
	.string	"flag_if_conversion"
	.byte	0x1
	.value	0x2a9
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_if_conversion
	.uleb128 0x31
	.string	"flag_if_conversion2"
	.byte	0x1
	.value	0x2ad
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_if_conversion2
	.uleb128 0x31
	.string	"flag_delete_null_pointer_checks"
	.byte	0x1
	.value	0x2b2
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_delete_null_pointer_checks
	.uleb128 0x31
	.string	"flag_rerun_cse_after_loop"
	.byte	0x1
	.value	0x2c3
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_rerun_cse_after_loop
	.uleb128 0x31
	.string	"aux_info_file_name"
	.byte	0x1
	.value	0x2f1
	.long	0x4e8
	.byte	0x5
	.byte	0x3
	.long	aux_info_file_name
	.uleb128 0x31
	.string	"da"
	.byte	0x1
	.value	0x3ec
	.long	0xa2d5
	.byte	0x5
	.byte	0x3
	.long	da
	.uleb128 0x3
	.byte	0x4
	.long	0xa2db
	.uleb128 0xa
	.long	0x8a83
	.uleb128 0xf
	.long	0xa2f0
	.long	0x8a83
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0x31
	.string	"debug_args"
	.byte	0x1
	.value	0x3ed
	.long	0xa309
	.byte	0x5
	.byte	0x3
	.long	debug_args
	.uleb128 0xa
	.long	0xa2e0
	.uleb128 0xf
	.long	0xa31e
	.long	0x6fea
	.uleb128 0x10
	.long	0x3cf
	.byte	0x17
	.byte	0x0
	.uleb128 0x31
	.string	"lang_independent_params"
	.byte	0x1
	.value	0x41c
	.long	0xa344
	.byte	0x5
	.byte	0x3
	.long	lang_independent_params
	.uleb128 0xa
	.long	0xa30e
	.uleb128 0xf
	.long	0xa359
	.long	0x8b32
	.uleb128 0x10
	.long	0x3cf
	.byte	0x6d
	.byte	0x0
	.uleb128 0x31
	.string	"f_options"
	.byte	0x1
	.value	0x42a
	.long	0xa371
	.byte	0x5
	.byte	0x3
	.long	f_options
	.uleb128 0xa
	.long	0xa349
	.uleb128 0xf
	.long	0xa386
	.long	0x8b53
	.uleb128 0x10
	.long	0x3cf
	.byte	0xc8
	.byte	0x0
	.uleb128 0x31
	.string	"documented_lang_options"
	.byte	0x1
	.value	0x517
	.long	0xa3ac
	.byte	0x5
	.byte	0x3
	.long	documented_lang_options
	.uleb128 0xa
	.long	0xa376
	.uleb128 0xf
	.long	0xa3c1
	.long	0x8b84
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3d
	.byte	0x0
	.uleb128 0x31
	.string	"target_switches"
	.byte	0x1
	.value	0x5d2
	.long	0xa3df
	.byte	0x5
	.byte	0x3
	.long	target_switches
	.uleb128 0xa
	.long	0xa3b1
	.uleb128 0xf
	.long	0xa3f4
	.long	0x8bbd
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0x31
	.string	"target_options"
	.byte	0x1
	.value	0x5dd
	.long	0xa411
	.byte	0x5
	.byte	0x3
	.long	target_options
	.uleb128 0xa
	.long	0xa3e4
	.uleb128 0xf
	.long	0xa426
	.long	0x8b32
	.uleb128 0x10
	.long	0x3cf
	.byte	0x15
	.byte	0x0
	.uleb128 0x31
	.string	"W_options"
	.byte	0x1
	.value	0x64b
	.long	0xa43e
	.byte	0x5
	.byte	0x3
	.long	W_options
	.uleb128 0xa
	.long	0xa416
	.uleb128 0x3e
	.string	"asm_file_name"
	.byte	0x1
	.value	0x163
	.long	0x4e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	asm_file_name
	.uleb128 0x3f
	.string	"save_argv"
	.byte	0x1
	.byte	0xa6
	.long	0x8793
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	save_argv
	.uleb128 0x40
	.string	"target_flags"
	.byte	0x1
	.byte	0xd2
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"g_switch_value"
	.byte	0x1
	.value	0x166
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	g_switch_value
	.uleb128 0x3e
	.string	"g_switch_set"
	.byte	0x1
	.value	0x167
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	g_switch_set
	.uleb128 0x40
	.string	"mips_isa"
	.byte	0xd
	.byte	0xa6
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_arch_string"
	.byte	0xd
	.byte	0xaa
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_tune_string"
	.byte	0xd
	.byte	0xab
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_isa_string"
	.byte	0xd
	.byte	0xac
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_abi_string"
	.byte	0xd
	.byte	0xad
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_entry_string"
	.byte	0xd
	.byte	0xae
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_no_mips16_string"
	.byte	0xd
	.byte	0xaf
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"mips_cache_flush_func"
	.byte	0xd
	.byte	0xb0
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"stderr"
	.byte	0xf
	.byte	0x90
	.long	0x7f3
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xa5b9
	.long	0x438
	.uleb128 0x10
	.long	0x3cf
	.byte	0xff
	.byte	0x0
	.uleb128 0x40
	.string	"_sch_istable"
	.byte	0x16
	.byte	0x48
	.long	0xa5cf
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xa5a9
	.uleb128 0x3f
	.string	"input_filename"
	.byte	0x1
	.byte	0xab
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	input_filename
	.uleb128 0x3f
	.string	"main_input_filename"
	.byte	0x1
	.byte	0xb1
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	main_input_filename
	.uleb128 0x3f
	.string	"lineno"
	.byte	0x1
	.byte	0xb5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lineno
	.uleb128 0x3f
	.string	"input_file_stack"
	.byte	0x1
	.byte	0xbc
	.long	0x894
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	input_file_stack
	.uleb128 0x3f
	.string	"input_file_stack_tick"
	.byte	0x1
	.byte	0xbf
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	input_file_stack_tick
	.uleb128 0x41
	.string	"rtx_equal_function_value_matters"
	.byte	0x4
	.value	0x53b
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"generating_concat_p"
	.byte	0x4
	.value	0x53e
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"flow2_completed"
	.byte	0x4
	.value	0x758
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"reload_completed"
	.byte	0x4
	.value	0x75d
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"cse_not_expected"
	.byte	0x4
	.value	0x76a
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"no_new_pseudos"
	.byte	0x1
	.byte	0xb8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	no_new_pseudos
	.uleb128 0x3e
	.string	"stack_limit_rtx"
	.byte	0x1
	.value	0x392
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	stack_limit_rtx
	.uleb128 0xf
	.long	0xa74b
	.long	0x2d7
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x40
	.string	"version_string"
	.byte	0x17
	.byte	0x3
	.long	0xa763
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xa740
	.uleb128 0x40
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x43
	.long	0xa780
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xa740
	.uleb128 0xf
	.long	0xa795
	.long	0x1e4
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3f
	.byte	0x0
	.uleb128 0x41
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0xa785
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_tls_default"
	.byte	0x1
	.value	0x30e
	.long	0x5f7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_tls_default
	.uleb128 0x3e
	.string	"current_function_decl"
	.byte	0x1
	.value	0x18d
	.long	0x1e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_decl
	.uleb128 0x3e
	.string	"current_function_func_begin_label"
	.byte	0x1
	.value	0x191
	.long	0x1e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_func_begin_label
	.uleb128 0x3e
	.string	"write_symbols"
	.byte	0x1
	.value	0x16c
	.long	0x60fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	write_symbols
	.uleb128 0x43
	.long	.LASF30
	.byte	0x1
	.value	0x170
	.long	0x6186
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	debug_info_level
	.uleb128 0x3e
	.string	"use_gnu_debug_info_extensions"
	.byte	0x1
	.value	0x176
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_gnu_debug_info_extensions
	.uleb128 0x3e
	.string	"optimize"
	.byte	0x1
	.value	0x17f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optimize
	.uleb128 0x3e
	.string	"optimize_size"
	.byte	0x1
	.value	0x186
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optimize_size
	.uleb128 0x3e
	.string	"quiet_flag"
	.byte	0x1
	.value	0x1c1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	quiet_flag
	.uleb128 0x3e
	.string	"time_report"
	.byte	0x1
	.value	0x1d0
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_report
	.uleb128 0x3e
	.string	"mem_report"
	.byte	0x1
	.value	0x1d5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mem_report
	.uleb128 0x3e
	.string	"inhibit_warnings"
	.byte	0x1
	.value	0x5e4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	inhibit_warnings
	.uleb128 0x3e
	.string	"warn_system_headers"
	.byte	0x1
	.value	0x5e8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_system_headers
	.uleb128 0x3e
	.string	"extra_warnings"
	.byte	0x1
	.value	0x5ec
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	extra_warnings
	.uleb128 0x3e
	.string	"warn_unused_function"
	.byte	0x1
	.value	0x5f4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_function
	.uleb128 0x3e
	.string	"warn_unused_label"
	.byte	0x1
	.value	0x5f5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_label
	.uleb128 0x3e
	.string	"warn_unused_parameter"
	.byte	0x1
	.value	0x5f6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_parameter
	.uleb128 0x3e
	.string	"warn_unused_variable"
	.byte	0x1
	.value	0x5f7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_variable
	.uleb128 0x3e
	.string	"warn_unused_value"
	.byte	0x1
	.value	0x5f8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_value
	.uleb128 0x3e
	.string	"warn_notreached"
	.byte	0x1
	.value	0x5fc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_notreached
	.uleb128 0x3e
	.string	"warn_inline"
	.byte	0x1
	.value	0x628
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_inline
	.uleb128 0x3e
	.string	"warn_uninitialized"
	.byte	0x1
	.value	0x600
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_uninitialized
	.uleb128 0x3e
	.string	"warn_shadow"
	.byte	0x1
	.value	0x604
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_shadow
	.uleb128 0x3e
	.string	"warn_switch"
	.byte	0x1
	.value	0x609
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_switch
	.uleb128 0x3e
	.string	"warn_switch_default"
	.byte	0x1
	.value	0x60d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_switch_default
	.uleb128 0x3e
	.string	"warn_switch_enum"
	.byte	0x1
	.value	0x612
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_switch_enum
	.uleb128 0x3e
	.string	"warn_return_type"
	.byte	0x1
	.value	0x617
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_return_type
	.uleb128 0x3e
	.string	"warn_missing_noreturn"
	.byte	0x1
	.value	0x63d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_missing_noreturn
	.uleb128 0x3e
	.string	"warn_cast_align"
	.byte	0x1
	.value	0x61d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_cast_align
	.uleb128 0x3e
	.string	"warn_larger_than"
	.byte	0x1
	.value	0x623
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_larger_than
	.uleb128 0x3e
	.string	"larger_than_size"
	.byte	0x1
	.value	0x624
	.long	0x47f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	larger_than_size
	.uleb128 0x3e
	.string	"warn_aggregate_return"
	.byte	0x1
	.value	0x62d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_aggregate_return
	.uleb128 0x3e
	.string	"warn_packed"
	.byte	0x1
	.value	0x631
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_packed
	.uleb128 0x3e
	.string	"warn_padded"
	.byte	0x1
	.value	0x635
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_padded
	.uleb128 0x3e
	.string	"warn_disabled_optimization"
	.byte	0x1
	.value	0x639
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_disabled_optimization
	.uleb128 0x3e
	.string	"warn_deprecated_decl"
	.byte	0x1
	.value	0x642
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_deprecated_decl
	.uleb128 0x3e
	.string	"warn_strict_aliasing"
	.byte	0x1
	.value	0x647
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_strict_aliasing
	.uleb128 0x3e
	.string	"profile_flag"
	.byte	0x1
	.value	0x199
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	profile_flag
	.uleb128 0x3e
	.string	"profile_arc_flag"
	.byte	0x1
	.value	0x19d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	profile_arc_flag
	.uleb128 0x3e
	.string	"flag_test_coverage"
	.byte	0x1
	.value	0x1a1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_test_coverage
	.uleb128 0x3e
	.string	"flag_branch_probabilities"
	.byte	0x1
	.value	0x1a5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_branch_probabilities
	.uleb128 0x3e
	.string	"flag_reorder_blocks"
	.byte	0x1
	.value	0x1a9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_reorder_blocks
	.uleb128 0x3e
	.string	"flag_reorder_functions"
	.byte	0x1
	.value	0x1ad
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_reorder_functions
	.uleb128 0x3e
	.string	"flag_rename_registers"
	.byte	0x1
	.value	0x1b1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_rename_registers
	.uleb128 0x3e
	.string	"pedantic"
	.byte	0x1
	.value	0x1b7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pedantic
	.uleb128 0x3e
	.string	"in_system_header"
	.byte	0x1
	.value	0x1bc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	in_system_header
	.uleb128 0x3e
	.string	"flag_print_asm_name"
	.byte	0x1
	.value	0x15c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_print_asm_name
	.uleb128 0x3e
	.string	"flag_signed_char"
	.byte	0x1
	.value	0x1e0
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_signed_char
	.uleb128 0x3e
	.string	"flag_short_enums"
	.byte	0x1
	.value	0x1e4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_short_enums
	.uleb128 0x3e
	.string	"flag_caller_saves"
	.byte	0x1
	.value	0x1ed
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_caller_saves
	.uleb128 0x3e
	.string	"flag_pcc_struct_return"
	.byte	0x1
	.value	0x1fb
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pcc_struct_return
	.uleb128 0x3e
	.string	"flag_force_mem"
	.byte	0x1
	.value	0x200
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_force_mem
	.uleb128 0x3e
	.string	"flag_force_addr"
	.byte	0x1
	.value	0x205
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_force_addr
	.uleb128 0x3e
	.string	"flag_defer_pop"
	.byte	0x1
	.value	0x20a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_defer_pop
	.uleb128 0x3e
	.string	"flag_float_store"
	.byte	0x1
	.value	0x20f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_float_store
	.uleb128 0x3e
	.string	"flag_strength_reduce"
	.byte	0x1
	.value	0x225
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_strength_reduce
	.uleb128 0x3e
	.string	"flag_unroll_loops"
	.byte	0x1
	.value	0x22c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unroll_loops
	.uleb128 0x3e
	.string	"flag_unroll_all_loops"
	.byte	0x1
	.value	0x231
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unroll_all_loops
	.uleb128 0x3e
	.string	"flag_move_all_movables"
	.byte	0x1
	.value	0x23a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_move_all_movables
	.uleb128 0x3e
	.string	"flag_prefetch_loop_arrays"
	.byte	0x1
	.value	0x235
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_prefetch_loop_arrays
	.uleb128 0x3e
	.string	"flag_reduce_all_givs"
	.byte	0x1
	.value	0x23f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_reduce_all_givs
	.uleb128 0x3e
	.string	"flag_cse_follow_jumps"
	.byte	0x1
	.value	0x214
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_cse_follow_jumps
	.uleb128 0x3e
	.string	"flag_cse_skip_blocks"
	.byte	0x1
	.value	0x218
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_cse_skip_blocks
	.uleb128 0x3e
	.string	"flag_expensive_optimizations"
	.byte	0x1
	.value	0x21c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_expensive_optimizations
	.uleb128 0x3e
	.string	"flag_writable_strings"
	.byte	0x1
	.value	0x249
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_writable_strings
	.uleb128 0x3e
	.string	"flag_no_function_cse"
	.byte	0x1
	.value	0x24f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_function_cse
	.uleb128 0x3e
	.string	"flag_omit_frame_pointer"
	.byte	0x1
	.value	0x254
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_omit_frame_pointer
	.uleb128 0x3e
	.string	"flag_no_peephole"
	.byte	0x1
	.value	0x261
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_peephole
	.uleb128 0x3e
	.string	"flag_volatile"
	.byte	0x1
	.value	0x28d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_volatile
	.uleb128 0x3e
	.string	"flag_volatile_global"
	.byte	0x1
	.value	0x291
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_volatile_global
	.uleb128 0x3e
	.string	"flag_volatile_static"
	.byte	0x1
	.value	0x295
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_volatile_static
	.uleb128 0x3e
	.string	"flag_optimize_sibling_calls"
	.byte	0x1
	.value	0x265
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_optimize_sibling_calls
	.uleb128 0x3e
	.string	"flag_errno_math"
	.byte	0x1
	.value	0x26a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_errno_math
	.uleb128 0x3e
	.string	"flag_unsafe_math_optimizations"
	.byte	0x1
	.value	0x271
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unsafe_math_optimizations
	.uleb128 0x3e
	.string	"flag_finite_math_only"
	.byte	0x1
	.value	0x275
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_finite_math_only
	.uleb128 0x3e
	.string	"flag_trapping_math"
	.byte	0x1
	.value	0x27d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_trapping_math
	.uleb128 0x3e
	.string	"flag_complex_divide_method"
	.byte	0x1
	.value	0x289
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_complex_divide_method
	.uleb128 0x3e
	.string	"flag_rerun_loop_opt"
	.byte	0x1
	.value	0x2c7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_rerun_loop_opt
	.uleb128 0x3e
	.string	"flag_inline_functions"
	.byte	0x1
	.value	0x2cc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_inline_functions
	.uleb128 0x3e
	.string	"flag_keep_inline_functions"
	.byte	0x1
	.value	0x2d2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_keep_inline_functions
	.uleb128 0x3e
	.string	"flag_no_inline"
	.byte	0x1
	.value	0x2d7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_inline
	.uleb128 0x3e
	.string	"flag_really_no_inline"
	.byte	0x1
	.value	0x2df
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_really_no_inline
	.uleb128 0x3e
	.string	"flag_syntax_only"
	.byte	0x1
	.value	0x299
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_syntax_only
	.uleb128 0x3e
	.string	"flag_gen_aux_info"
	.byte	0x1
	.value	0x2ed
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gen_aux_info
	.uleb128 0x3e
	.string	"flag_shared_data"
	.byte	0x1
	.value	0x2f5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_shared_data
	.uleb128 0x3e
	.string	"flag_schedule_insns"
	.byte	0x1
	.value	0x331
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_insns
	.uleb128 0x3e
	.string	"flag_schedule_insns_after_reload"
	.byte	0x1
	.value	0x332
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_insns_after_reload
	.uleb128 0x3e
	.string	"flag_schedule_interblock"
	.byte	0x1
	.value	0x33e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_interblock
	.uleb128 0x3e
	.string	"flag_schedule_speculative"
	.byte	0x1
	.value	0x33f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_speculative
	.uleb128 0x3e
	.string	"flag_schedule_speculative_load"
	.byte	0x1
	.value	0x340
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_speculative_load
	.uleb128 0x3e
	.string	"flag_schedule_speculative_load_dangerous"
	.byte	0x1
	.value	0x341
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_speculative_load_dangerous
	.uleb128 0x3e
	.string	"flag_branch_on_count_reg"
	.byte	0x1
	.value	0x347
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_branch_on_count_reg
	.uleb128 0x3e
	.string	"flag_single_precision_constant"
	.byte	0x1
	.value	0x343
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_single_precision_constant
	.uleb128 0x3e
	.string	"flag_delayed_branch"
	.byte	0x1
	.value	0x2f9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_delayed_branch
	.uleb128 0x41
	.string	"flag_dump_unnumbered"
	.byte	0x14
	.value	0x1d3
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_pedantic_errors"
	.byte	0x1
	.value	0x32a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pedantic_errors
	.uleb128 0x3e
	.string	"flag_pic"
	.byte	0x1
	.value	0x2ff
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pic
	.uleb128 0x3e
	.string	"flag_pie"
	.byte	0x1
	.value	0x305
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pie
	.uleb128 0x3e
	.string	"flag_shlib"
	.byte	0x1
	.value	0x30a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_shlib
	.uleb128 0x3e
	.string	"flag_exceptions"
	.byte	0x1
	.value	0x313
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_exceptions
	.uleb128 0x3e
	.string	"key_exceptions"
	.byte	0x1
	.value	0x316
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	key_exceptions
	.uleb128 0x3e
	.string	"opt_regions"
	.byte	0x1
	.value	0x317
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	opt_regions
	.uleb128 0x3e
	.string	"flag_unwind_tables"
	.byte	0x1
	.value	0x31c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unwind_tables
	.uleb128 0x3e
	.string	"flag_asynchronous_unwind_tables"
	.byte	0x1
	.value	0x320
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_asynchronous_unwind_tables
	.uleb128 0x3e
	.string	"flag_no_common"
	.byte	0x1
	.value	0x325
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_common
	.uleb128 0x3e
	.string	"flag_inhibit_size_directive"
	.byte	0x1
	.value	0x34d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_inhibit_size_directive
	.uleb128 0x3e
	.string	"flag_function_sections"
	.byte	0x1
	.value	0x259
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_function_sections
	.uleb128 0x3e
	.string	"flag_data_sections"
	.byte	0x1
	.value	0x25d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_data_sections
	.uleb128 0x3e
	.string	"flag_verbose_asm"
	.byte	0x1
	.value	0x356
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_verbose_asm
	.uleb128 0x3e
	.string	"flag_debug_asm"
	.byte	0x1
	.value	0x35f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_debug_asm
	.uleb128 0x3e
	.string	"flag_dump_rtl_in_asm"
	.byte	0x1
	.value	0x36d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_dump_rtl_in_asm
	.uleb128 0x3e
	.string	"flag_gnu_linker"
	.byte	0x1
	.value	0x375
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gnu_linker
	.uleb128 0x3e
	.string	"flag_bad_asm_constraint_kills_stmt"
	.byte	0x1
	.value	0x367
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_bad_asm_constraint_kills_stmt
	.uleb128 0x3e
	.string	"flag_pack_struct"
	.byte	0x1
	.value	0x385
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pack_struct
	.uleb128 0x3e
	.string	"flag_argument_noalias"
	.byte	0x1
	.value	0x39a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_argument_noalias
	.uleb128 0x3e
	.string	"flag_strict_aliasing"
	.byte	0x1
	.value	0x3a0
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_strict_aliasing
	.uleb128 0x3e
	.string	"flag_stack_check"
	.byte	0x1
	.value	0x389
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_stack_check
	.uleb128 0x3e
	.string	"flag_regmove"
	.byte	0x1
	.value	0x244
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_regmove
	.uleb128 0x3e
	.string	"flag_instrument_function_entry_exit"
	.byte	0x1
	.value	0x3a3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_instrument_function_entry_exit
	.uleb128 0x3e
	.string	"flag_peephole2"
	.byte	0x1
	.value	0x3ac
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_peephole2
	.uleb128 0x3e
	.string	"flag_guess_branch_prob"
	.byte	0x1
	.value	0x3af
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_guess_branch_prob
	.uleb128 0x3e
	.string	"flag_bounds_check"
	.byte	0x1
	.value	0x3b5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_bounds_check
	.uleb128 0x3e
	.string	"flag_merge_constants"
	.byte	0x1
	.value	0x3ba
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_merge_constants
	.uleb128 0x3e
	.string	"flag_renumber_insns"
	.byte	0x1
	.value	0x3bf
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_renumber_insns
	.uleb128 0x3e
	.string	"flag_trapv"
	.byte	0x1
	.value	0x414
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_trapv
	.uleb128 0x3e
	.string	"flag_honor_shift"
	.byte	0x1
	.value	0x3c7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_honor_shift
	.uleb128 0x3e
	.string	"align_loops"
	.byte	0x1
	.value	0x3d3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_loops
	.uleb128 0x3e
	.string	"align_loops_log"
	.byte	0x1
	.value	0x3d4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_loops_log
	.uleb128 0x3e
	.string	"align_loops_max_skip"
	.byte	0x1
	.value	0x3d5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_loops_max_skip
	.uleb128 0x3e
	.string	"align_jumps"
	.byte	0x1
	.value	0x3d6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_jumps
	.uleb128 0x3e
	.string	"align_jumps_log"
	.byte	0x1
	.value	0x3d7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_jumps_log
	.uleb128 0x3e
	.string	"align_jumps_max_skip"
	.byte	0x1
	.value	0x3d8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_jumps_max_skip
	.uleb128 0x3e
	.string	"align_labels"
	.byte	0x1
	.value	0x3d9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_labels
	.uleb128 0x3e
	.string	"align_labels_log"
	.byte	0x1
	.value	0x3da
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_labels_log
	.uleb128 0x3e
	.string	"align_labels_max_skip"
	.byte	0x1
	.value	0x3db
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_labels_max_skip
	.uleb128 0x3e
	.string	"align_functions"
	.byte	0x1
	.value	0x3dc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_functions
	.uleb128 0x3e
	.string	"align_functions_log"
	.byte	0x1
	.value	0x3dd
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_functions_log
	.uleb128 0x3e
	.string	"force_align_functions_log"
	.byte	0x1
	.value	0x3e1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	force_align_functions_log
	.uleb128 0x3e
	.string	"graph_dump_format"
	.byte	0x1
	.value	0x15f
	.long	0x61e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	graph_dump_format
	.uleb128 0x3e
	.string	"flag_no_ident"
	.byte	0x1
	.value	0x3a9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_ident
	.uleb128 0x3e
	.string	"flag_gcse_lm"
	.byte	0x1
	.value	0x2b8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gcse_lm
	.uleb128 0x3e
	.string	"flag_gcse_sm"
	.byte	0x1
	.value	0x2be
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gcse_sm
	.uleb128 0x3e
	.string	"flag_eliminate_dwarf2_dups"
	.byte	0x1
	.value	0x195
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_eliminate_dwarf2_dups
	.uleb128 0x3e
	.string	"flag_detailed_statistics"
	.byte	0x1
	.value	0x1d9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_detailed_statistics
	.uleb128 0x41
	.string	"flag_non_call_exceptions"
	.byte	0x14
	.value	0x2b2
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_zero_initialized_in_bss"
	.byte	0x1
	.value	0x379
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_zero_initialized_in_bss
	.uleb128 0x3e
	.string	"flag_signaling_nans"
	.byte	0x1
	.value	0x283
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_signaling_nans
	.uleb128 0x41
	.string	"flag_random_seed"
	.byte	0x14
	.value	0x2bd
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"asm_out_file"
	.byte	0x1
	.value	0x6a9
	.long	0x6e05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	asm_out_file
	.uleb128 0x41
	.string	"current_function_is_leaf"
	.byte	0x18
	.value	0x1a2
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"current_function_nothrow"
	.byte	0x18
	.value	0x1a7
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"rtl_dump_file"
	.byte	0x1
	.value	0x6ab
	.long	0x6e05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rtl_dump_file
	.uleb128 0x3e
	.string	"user_label_prefix"
	.byte	0x1
	.value	0x41a
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	user_label_prefix
	.uleb128 0x41
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x5514
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"progname"
	.byte	0x1
	.byte	0xa2
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	progname
	.uleb128 0x3f
	.string	"dump_base_name"
	.byte	0x1
	.byte	0xc3
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_base_name
	.uleb128 0x3f
	.string	"aux_base_name"
	.byte	0x1
	.byte	0xc7
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	aux_base_name
	.uleb128 0x3f
	.string	"target_flags_explicit"
	.byte	0x1
	.byte	0xd7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	target_flags_explicit
	.uleb128 0x40
	.string	"max_regno"
	.byte	0x19
	.byte	0x2c
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"global_dc"
	.byte	0x1a
	.value	0x109
	.long	0x6f5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"compiler_params"
	.byte	0x15
	.byte	0x3a
	.long	0xbcec
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6fea
	.uleb128 0x40
	.string	"reg_equiv_memory_loc"
	.byte	0x1d
	.byte	0xa8
	.long	0x1722
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"debug_hooks"
	.byte	0x1
	.byte	0xdb
	.long	0xbd2a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	debug_hooks
	.uleb128 0x3
	.byte	0x4
	.long	0xbd30
	.uleb128 0xa
	.long	0x704b
	.uleb128 0x40
	.string	"do_nothing_debug_hooks"
	.byte	0x1e
	.byte	0x7f
	.long	0xbd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"dbx_debug_hooks"
	.byte	0x1e
	.byte	0x80
	.long	0xbd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"dwarf_debug_hooks"
	.byte	0x1e
	.byte	0x83
	.long	0xbd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"dwarf2_debug_hooks"
	.byte	0x1e
	.byte	0x84
	.long	0xbd30
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"targetm"
	.byte	0x1f
	.value	0x12d
	.long	0x790b
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.long	.LASF39
	.byte	0x20
	.value	0x176
	.long	0xbdc5
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x8359
	.uleb128 0x40
	.string	"size_directive_output"
	.byte	0x1
	.byte	0x6f
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"last_assemble_variable_decl"
	.byte	0x1
	.byte	0x70
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"parse_tree_dump"
	.byte	0x1
	.byte	0x86
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	parse_tree_dump
	.uleb128 0x3f
	.string	"save_argc"
	.byte	0x1
	.byte	0xa5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	save_argc
	.uleb128 0x3e
	.string	"rtl_dump_and_exit"
	.byte	0x1
	.value	0x15b
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rtl_dump_and_exit
	.uleb128 0x3e
	.string	"flag_cprop_registers"
	.byte	0x1
	.value	0x1b2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_cprop_registers
	.uleb128 0x3e
	.string	"pstatic_as_global"
	.byte	0x1
	.value	0x1c8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pstatic_as_global
	.uleb128 0x3e
	.string	"flag_thread_jumps"
	.byte	0x1
	.value	0x221
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_thread_jumps
	.uleb128 0x3e
	.string	"flag_openmp"
	.byte	0x1
	.value	0x2e3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_openmp
	.uleb128 0x3e
	.string	"flag_keep_static_consts"
	.byte	0x1
	.value	0x2e9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_keep_static_consts
	.uleb128 0x3e
	.string	"flag_ssa"
	.byte	0x1
	.value	0x37c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ssa
	.uleb128 0x3e
	.string	"flag_ssa_ccp"
	.byte	0x1
	.value	0x37f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ssa_ccp
	.uleb128 0x3e
	.string	"flag_ssa_dce"
	.byte	0x1
	.value	0x382
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ssa_dce
	.uleb128 0x3e
	.string	"flag_new_regalloc"
	.byte	0x1
	.value	0x3c2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_new_regalloc
	.uleb128 0x3e
	.string	"flag_tracer"
	.byte	0x1
	.value	0x3cc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_tracer
	.uleb128 0x3e
	.string	"flag_leading_underscore"
	.byte	0x1
	.value	0x417
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_leading_underscore
	.uleb128 0x3e
	.string	"warnings_are_errors"
	.byte	0x1
	.value	0x5f0
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warnings_are_errors
	.uleb128 0x3e
	.string	"aux_info_file"
	.byte	0x1
	.value	0x6aa
	.long	0x6e05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	aux_info_file
	.uleb128 0x3e
	.string	"tree_dump_file"
	.byte	0x1
	.value	0x6ae
	.long	0x6e05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tree_dump_file
	.uleb128 0x41
	.string	"Opt_Level"
	.byte	0x1
	.value	0x13d2
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1213
	.value	0x2
	.long	.Ldebug_info0
	.long	0xc033
	.long	0x8bf9
	.string	"set_Wunused"
	.long	0x8c2f
	.string	"set_fast_math_flags"
	.long	0x8c69
	.string	"fast_math_flags_set_p"
	.long	0x8c95
	.string	"read_integral_parameter"
	.long	0x8d08
	.string	"dump_parse_tree"
	.long	0x8d4e
	.string	"do_abort"
	.long	0x8d7e
	.string	"botch"
	.long	0x8db8
	.string	"exact_log2_wide"
	.long	0x8dff
	.string	"floor_log2_wide"
	.long	0x8e7a
	.string	"strip_off_ending"
	.long	0x8ecd
	.string	"output_quoted_string"
	.long	0x8f24
	.string	"output_clean_symbol_name"
	.long	0x8f80
	.string	"output_file_directive"
	.long	0x911a
	.string	"wrapup_global_declarations"
	.long	0x91d8
	.string	"check_global_declarations"
	.long	0x9243
	.string	"push_srcloc"
	.long	0x9293
	.string	"pop_srcloc"
	.long	0x92d3
	.string	"compile_file"
	.long	0x9306
	.string	"rest_of_decl_compilation"
	.long	0x93e2
	.string	"rest_of_type_compilation"
	.long	0x9434
	.string	"rest_of_compilation"
	.long	0x9af9
	.string	"check_gnu_errors"
	.long	0xa07c
	.string	"gnu_init"
	.long	0xa443
	.string	"asm_file_name"
	.long	0xa460
	.string	"save_argv"
	.long	0xa48e
	.string	"g_switch_value"
	.long	0xa4ac
	.string	"g_switch_set"
	.long	0xa5d4
	.string	"input_filename"
	.long	0xa5f1
	.string	"main_input_filename"
	.long	0xa613
	.string	"lineno"
	.long	0xa628
	.string	"input_file_stack"
	.long	0xa647
	.string	"input_file_stack_tick"
	.long	0xa704
	.string	"no_new_pseudos"
	.long	0xa721
	.string	"stack_limit_rtx"
	.long	0xa7ac
	.string	"flag_tls_default"
	.long	0xa7cc
	.string	"current_function_decl"
	.long	0xa7f1
	.string	"current_function_func_begin_label"
	.long	0xa822
	.string	"write_symbols"
	.long	0xa83f
	.string	"debug_info_level"
	.long	0xa852
	.string	"use_gnu_debug_info_extensions"
	.long	0xa87f
	.string	"optimize"
	.long	0xa897
	.string	"optimize_size"
	.long	0xa8b4
	.string	"quiet_flag"
	.long	0xa8ce
	.string	"time_report"
	.long	0xa8e9
	.string	"mem_report"
	.long	0xa903
	.string	"inhibit_warnings"
	.long	0xa923
	.string	"warn_system_headers"
	.long	0xa946
	.string	"extra_warnings"
	.long	0xa964
	.string	"warn_unused_function"
	.long	0xa988
	.string	"warn_unused_label"
	.long	0xa9a9
	.string	"warn_unused_parameter"
	.long	0xa9ce
	.string	"warn_unused_variable"
	.long	0xa9f2
	.string	"warn_unused_value"
	.long	0xaa13
	.string	"warn_notreached"
	.long	0xaa32
	.string	"warn_inline"
	.long	0xaa4d
	.string	"warn_uninitialized"
	.long	0xaa6f
	.string	"warn_shadow"
	.long	0xaa8a
	.string	"warn_switch"
	.long	0xaaa5
	.string	"warn_switch_default"
	.long	0xaac8
	.string	"warn_switch_enum"
	.long	0xaae8
	.string	"warn_return_type"
	.long	0xab08
	.string	"warn_missing_noreturn"
	.long	0xab2d
	.string	"warn_cast_align"
	.long	0xab4c
	.string	"warn_larger_than"
	.long	0xab6c
	.string	"larger_than_size"
	.long	0xab8c
	.string	"warn_aggregate_return"
	.long	0xabb1
	.string	"warn_packed"
	.long	0xabcc
	.string	"warn_padded"
	.long	0xabe7
	.string	"warn_disabled_optimization"
	.long	0xac11
	.string	"warn_deprecated_decl"
	.long	0xac35
	.string	"warn_strict_aliasing"
	.long	0xac59
	.string	"profile_flag"
	.long	0xac75
	.string	"profile_arc_flag"
	.long	0xac95
	.string	"flag_test_coverage"
	.long	0xacb7
	.string	"flag_branch_probabilities"
	.long	0xace0
	.string	"flag_reorder_blocks"
	.long	0xad03
	.string	"flag_reorder_functions"
	.long	0xad29
	.string	"flag_rename_registers"
	.long	0xad4e
	.string	"pedantic"
	.long	0xad66
	.string	"in_system_header"
	.long	0xad86
	.string	"flag_print_asm_name"
	.long	0xada9
	.string	"flag_signed_char"
	.long	0xadc9
	.string	"flag_short_enums"
	.long	0xade9
	.string	"flag_caller_saves"
	.long	0xae0a
	.string	"flag_pcc_struct_return"
	.long	0xae30
	.string	"flag_force_mem"
	.long	0xae4e
	.string	"flag_force_addr"
	.long	0xae6d
	.string	"flag_defer_pop"
	.long	0xae8b
	.string	"flag_float_store"
	.long	0xaeab
	.string	"flag_strength_reduce"
	.long	0xaecf
	.string	"flag_unroll_loops"
	.long	0xaef0
	.string	"flag_unroll_all_loops"
	.long	0xaf15
	.string	"flag_move_all_movables"
	.long	0xaf3b
	.string	"flag_prefetch_loop_arrays"
	.long	0xaf64
	.string	"flag_reduce_all_givs"
	.long	0xaf88
	.string	"flag_cse_follow_jumps"
	.long	0xafad
	.string	"flag_cse_skip_blocks"
	.long	0xafd1
	.string	"flag_expensive_optimizations"
	.long	0xaffd
	.string	"flag_writable_strings"
	.long	0xb022
	.string	"flag_no_function_cse"
	.long	0xb046
	.string	"flag_omit_frame_pointer"
	.long	0xb06d
	.string	"flag_no_peephole"
	.long	0xb08d
	.string	"flag_volatile"
	.long	0xb0aa
	.string	"flag_volatile_global"
	.long	0xb0ce
	.string	"flag_volatile_static"
	.long	0xb0f2
	.string	"flag_optimize_sibling_calls"
	.long	0xb11d
	.string	"flag_errno_math"
	.long	0xb13c
	.string	"flag_unsafe_math_optimizations"
	.long	0xb16a
	.string	"flag_finite_math_only"
	.long	0xb18f
	.string	"flag_trapping_math"
	.long	0xb1b1
	.string	"flag_complex_divide_method"
	.long	0xb1db
	.string	"flag_rerun_loop_opt"
	.long	0xb1fe
	.string	"flag_inline_functions"
	.long	0xb223
	.string	"flag_keep_inline_functions"
	.long	0xb24d
	.string	"flag_no_inline"
	.long	0xb26b
	.string	"flag_really_no_inline"
	.long	0xb290
	.string	"flag_syntax_only"
	.long	0xb2b0
	.string	"flag_gen_aux_info"
	.long	0xb2d1
	.string	"flag_shared_data"
	.long	0xb2f1
	.string	"flag_schedule_insns"
	.long	0xb314
	.string	"flag_schedule_insns_after_reload"
	.long	0xb344
	.string	"flag_schedule_interblock"
	.long	0xb36c
	.string	"flag_schedule_speculative"
	.long	0xb395
	.string	"flag_schedule_speculative_load"
	.long	0xb3c3
	.string	"flag_schedule_speculative_load_dangerous"
	.long	0xb3fb
	.string	"flag_branch_on_count_reg"
	.long	0xb423
	.string	"flag_single_precision_constant"
	.long	0xb451
	.string	"flag_delayed_branch"
	.long	0xb493
	.string	"flag_pedantic_errors"
	.long	0xb4b7
	.string	"flag_pic"
	.long	0xb4cf
	.string	"flag_pie"
	.long	0xb4e7
	.string	"flag_shlib"
	.long	0xb501
	.string	"flag_exceptions"
	.long	0xb520
	.string	"key_exceptions"
	.long	0xb53e
	.string	"opt_regions"
	.long	0xb559
	.string	"flag_unwind_tables"
	.long	0xb57b
	.string	"flag_asynchronous_unwind_tables"
	.long	0xb5aa
	.string	"flag_no_common"
	.long	0xb5c8
	.string	"flag_inhibit_size_directive"
	.long	0xb5f3
	.string	"flag_function_sections"
	.long	0xb619
	.string	"flag_data_sections"
	.long	0xb63b
	.string	"flag_verbose_asm"
	.long	0xb65b
	.string	"flag_debug_asm"
	.long	0xb679
	.string	"flag_dump_rtl_in_asm"
	.long	0xb69d
	.string	"flag_gnu_linker"
	.long	0xb6bc
	.string	"flag_bad_asm_constraint_kills_stmt"
	.long	0xb6ee
	.string	"flag_pack_struct"
	.long	0xb70e
	.string	"flag_argument_noalias"
	.long	0xb733
	.string	"flag_strict_aliasing"
	.long	0xb757
	.string	"flag_stack_check"
	.long	0xb777
	.string	"flag_regmove"
	.long	0xb793
	.string	"flag_instrument_function_entry_exit"
	.long	0xb7c6
	.string	"flag_peephole2"
	.long	0xb7e4
	.string	"flag_guess_branch_prob"
	.long	0xb80a
	.string	"flag_bounds_check"
	.long	0xb82b
	.string	"flag_merge_constants"
	.long	0xb84f
	.string	"flag_renumber_insns"
	.long	0xb872
	.string	"flag_trapv"
	.long	0xb88c
	.string	"flag_honor_shift"
	.long	0xb8ac
	.string	"align_loops"
	.long	0xb8c7
	.string	"align_loops_log"
	.long	0xb8e6
	.string	"align_loops_max_skip"
	.long	0xb90a
	.string	"align_jumps"
	.long	0xb925
	.string	"align_jumps_log"
	.long	0xb944
	.string	"align_jumps_max_skip"
	.long	0xb968
	.string	"align_labels"
	.long	0xb984
	.string	"align_labels_log"
	.long	0xb9a4
	.string	"align_labels_max_skip"
	.long	0xb9c9
	.string	"align_functions"
	.long	0xb9e8
	.string	"align_functions_log"
	.long	0xba0b
	.string	"force_align_functions_log"
	.long	0xba34
	.string	"graph_dump_format"
	.long	0xba55
	.string	"flag_no_ident"
	.long	0xba72
	.string	"flag_gcse_lm"
	.long	0xba8e
	.string	"flag_gcse_sm"
	.long	0xbaaa
	.string	"flag_eliminate_dwarf2_dups"
	.long	0xbad4
	.string	"flag_detailed_statistics"
	.long	0xbb1f
	.string	"flag_zero_initialized_in_bss"
	.long	0xbb4b
	.string	"flag_signaling_nans"
	.long	0xbb89
	.string	"asm_out_file"
	.long	0xbbeb
	.string	"rtl_dump_file"
	.long	0xbc08
	.string	"user_label_prefix"
	.long	0xbc38
	.string	"progname"
	.long	0xbc4f
	.string	"dump_base_name"
	.long	0xbc6c
	.string	"aux_base_name"
	.long	0xbc88
	.string	"target_flags_explicit"
	.long	0xbd10
	.string	"debug_hooks"
	.long	0xbe0e
	.string	"parse_tree_dump"
	.long	0xbe2c
	.string	"save_argc"
	.long	0xbe44
	.string	"rtl_dump_and_exit"
	.long	0xbe65
	.string	"flag_cprop_registers"
	.long	0xbe89
	.string	"pstatic_as_global"
	.long	0xbeaa
	.string	"flag_thread_jumps"
	.long	0xbecb
	.string	"flag_openmp"
	.long	0xbee6
	.string	"flag_keep_static_consts"
	.long	0xbf0d
	.string	"flag_ssa"
	.long	0xbf25
	.string	"flag_ssa_ccp"
	.long	0xbf41
	.string	"flag_ssa_dce"
	.long	0xbf5d
	.string	"flag_new_regalloc"
	.long	0xbf7e
	.string	"flag_tracer"
	.long	0xbf99
	.string	"flag_leading_underscore"
	.long	0xbfc0
	.string	"warnings_are_errors"
	.long	0xbfe3
	.string	"aux_info_file"
	.long	0xc000
	.string	"tree_dump_file"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF5:
	.string	"name"
.LASF9:
	.string	"lang_flag_0"
.LASF10:
	.string	"lang_flag_1"
.LASF11:
	.string	"lang_flag_2"
.LASF15:
	.string	"lang_flag_6"
.LASF16:
	.string	"lang_flag_7"
.LASF43:
	.string	"asm_file"
.LASF45:
	.string	"indent"
.LASF1:
	.string	"string"
.LASF33:
	.string	"prefix"
.LASF6:
	.string	"mem_attrs"
.LASF35:
	.string	"diagnostic_context"
.LASF0:
	.string	"common"
.LASF25:
	.string	"lang_specific"
.LASF32:
	.string	"sequence_rtl_expr"
.LASF31:
	.string	"sequence_stack"
.LASF29:
	.string	"function_frequency"
.LASF12:
	.string	"lang_flag_3"
.LASF26:
	.string	"function"
.LASF3:
	.string	"unsigned int"
.LASF20:
	.string	"abstract_origin"
.LASF23:
	.string	"pointer_depth"
.LASF24:
	.string	"user_align"
.LASF39:
	.string	"lang_hooks"
.LASF21:
	.string	"size_unit"
.LASF38:
	.string	"attribute_table"
.LASF40:
	.string	"description"
.LASF27:
	.string	"args_size"
.LASF46:
	.string	"no_backend"
.LASF28:
	.string	"inlinable"
.LASF7:
	.string	"file"
.LASF13:
	.string	"lang_flag_4"
.LASF14:
	.string	"lang_flag_5"
.LASF19:
	.string	"abstract_flag"
.LASF34:
	.string	"output_buffer"
.LASF44:
	.string	"option_value"
.LASF36:
	.string	"param_info"
.LASF18:
	.string	"ht_identifier"
.LASF42:
	.string	"__FUNCTION__"
.LASF8:
	.string	"built_in_class"
.LASF30:
	.string	"debug_info_level"
.LASF4:
	.string	"_IO_FILE"
.LASF41:
	.string	"variable"
.LASF22:
	.string	"attributes"
.LASF2:
	.string	"decl"
.LASF37:
	.string	"option"
.LASF17:
	.string	"length"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
