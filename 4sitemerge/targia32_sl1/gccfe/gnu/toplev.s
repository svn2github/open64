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
	.bss
	.align 4
	.type	pstatic_as_global, @object
	.size	pstatic_as_global, 4
pstatic_as_global:
	.zero	4
.globl time_report
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
	.long	1
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
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	debug_args, @object
	.size	debug_args, 112
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
.LC48:
	.string	"max-inline-insns-single"
	.align 4
.LC49:
	.string	"The maximum number of instructions in a single function eligible for inlining"
.LC50:
	.string	"max-inline-insns-auto"
	.align 4
.LC51:
	.string	"The maximum number of instructions when automatically inlining"
.LC52:
	.string	"max-inline-insns"
	.align 4
.LC53:
	.string	"The maximum number of instructions by repeated inlining before gcc starts to throttle inlining"
.LC54:
	.string	"max-inline-slope"
	.align 4
.LC55:
	.string	"The slope of the linear function throttling inlining after the recursive inlining limit has been reached is given by the negative reciprocal value of this parameter"
.LC56:
	.string	"min-inline-insns"
	.align 4
.LC57:
	.string	"The number of instructions in a single functions still eligible to inlining after a lot recursive inlining"
.LC58:
	.string	"max-inline-insns-rtl"
	.align 4
.LC59:
	.string	"The maximum number of instructions for the RTL inliner"
.LC60:
	.string	"max-delay-slot-insn-search"
	.align 4
.LC61:
	.string	"The maximum number of instructions to consider to fill a delay slot"
.LC62:
	.string	"max-delay-slot-live-search"
	.align 4
.LC63:
	.string	"The maximum number of instructions to consider to find accurate live register information"
.LC64:
	.string	"max-pending-list-length"
	.align 4
.LC65:
	.string	"The maximum length of scheduling's pending operations list"
.LC66:
	.string	"max-gcse-memory"
	.align 4
.LC67:
	.string	"The maximum amount of memory to be allocated by GCSE"
.LC68:
	.string	"max-gcse-passes"
	.align 4
.LC69:
	.string	"The maximum number of passes to make when doing GCSE"
.LC70:
	.string	"max-unrolled-insns"
	.align 4
.LC71:
	.string	"The maximum number of instructions to consider to unroll in a loop"
.LC72:
	.string	"hot-bb-count-fraction"
	.align 4
.LC73:
	.string	"Select fraction of the maximal count of repetitions of basic block in program given basic block needs to have to be considered hot"
.LC74:
	.string	"hot-bb-frequency-fraction"
	.align 4
.LC75:
	.string	"Select fraction of the maximal frequency of executions of basic block in function given basic block needs to have to be considered hot"
	.align 4
.LC76:
	.string	"tracer-dynamic-coverage-feedback"
	.align 4
.LC77:
	.string	"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is available"
.LC78:
	.string	"tracer-dynamic-coverage"
	.align 4
.LC79:
	.string	"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is not available"
.LC80:
	.string	"tracer-max-code-growth"
	.align 4
.LC81:
	.string	"Maximal code growth caused by tail duplication (in percents)"
.LC82:
	.string	"tracer-min-branch-ratio"
	.align 4
.LC83:
	.string	"Stop reverse growth if the reverse probability of best edge is less than this threshold (in percents)"
	.align 4
.LC84:
	.string	"tracer-min-branch-probability-feedback"
	.align 4
.LC85:
	.string	"Stop forward growth if the probability of best edge is less than this threshold (in percents). Used when profile feedback is available"
.LC86:
	.string	"tracer-min-branch-probability"
	.align 4
.LC87:
	.string	"Stop forward growth if the probability of best edge is less than this threshold (in percents). Used when profile feedback is not available"
.LC88:
	.string	"max-crossjump-edges"
	.align 4
.LC89:
	.string	"The maximum number of incoming edges to consider for crossjumping"
.LC90:
	.string	"ggc-min-expand"
	.align 4
.LC91:
	.string	"Minimum heap expansion to trigger garbage collection, as a percentage of the total size of the heap."
.LC92:
	.string	"ggc-min-heapsize"
	.align 4
.LC93:
	.string	"Minimum heap size before we start collecting garbage, in kilobytes."
	.section	.data.rel.ro.local
	.align 32
	.type	lang_independent_params, @object
	.size	lang_independent_params, 288
lang_independent_params:
	.long	.LC48
	.long	300
	.long	.LC49
	.long	.LC50
	.long	300
	.long	.LC51
	.long	.LC52
	.long	600
	.long	.LC53
	.long	.LC54
	.long	32
	.long	.LC55
	.long	.LC56
	.long	130
	.long	.LC57
	.long	.LC58
	.long	600
	.long	.LC59
	.long	.LC60
	.long	100
	.long	.LC61
	.long	.LC62
	.long	333
	.long	.LC63
	.long	.LC64
	.long	32
	.long	.LC65
	.long	.LC66
	.long	52428800
	.long	.LC67
	.long	.LC68
	.long	1
	.long	.LC69
	.long	.LC70
	.long	100
	.long	.LC71
	.long	.LC72
	.long	10000
	.long	.LC73
	.long	.LC74
	.long	1000
	.long	.LC75
	.long	.LC76
	.long	95
	.long	.LC77
	.long	.LC78
	.long	75
	.long	.LC79
	.long	.LC80
	.long	100
	.long	.LC81
	.long	.LC82
	.long	10
	.long	.LC83
	.long	.LC84
	.long	30
	.long	.LC85
	.long	.LC86
	.long	50
	.long	.LC87
	.long	.LC88
	.long	100
	.long	.LC89
	.long	.LC90
	.long	30
	.long	.LC91
	.long	.LC92
	.long	4096
	.long	.LC93
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC94:
	.string	"eliminate-dwarf2-dups"
	.align 4
.LC95:
	.string	"Perform DWARF2 duplicate elimination"
.LC96:
	.string	"float-store"
	.align 4
.LC97:
	.string	"Do not store floats in registers"
.LC98:
	.string	"volatile"
	.align 4
.LC99:
	.string	"Consider all mem refs through pointers as volatile"
.LC100:
	.string	"volatile-global"
	.align 4
.LC101:
	.string	"Consider all mem refs to global data to be volatile"
.LC102:
	.string	"volatile-static"
	.align 4
.LC103:
	.string	"Consider all mem refs to static data to be volatile"
.LC104:
	.string	"defer-pop"
	.align 4
.LC105:
	.string	"Defer popping functions args from stack until later"
.LC106:
	.string	"omit-frame-pointer"
	.align 4
.LC107:
	.string	"When possible do not generate stack frames"
.LC108:
	.string	"optimize-sibling-calls"
	.align 4
.LC109:
	.string	"Optimize sibling and tail recursive calls"
	.align 4
.LC110:
	.string	"Perform superblock formation via tail duplication"
.LC111:
	.string	"cse-follow-jumps"
	.align 4
.LC112:
	.string	"When running CSE, follow jumps to their targets"
.LC113:
	.string	"cse-skip-blocks"
	.align 4
.LC114:
	.string	"When running CSE, follow conditional jumps"
.LC115:
	.string	"expensive-optimizations"
	.align 4
.LC116:
	.string	"Perform a number of minor, expensive optimizations"
.LC117:
	.string	"thread-jumps"
	.align 4
.LC118:
	.string	"Perform jump threading optimizations"
.LC119:
	.string	"strength-reduce"
	.align 4
.LC120:
	.string	"Perform strength reduction optimizations"
.LC121:
	.string	"unroll-loops"
	.align 4
.LC122:
	.string	"Perform loop unrolling when iteration count is known"
.LC123:
	.string	"unroll-all-loops"
	.align 4
.LC124:
	.string	"Perform loop unrolling for all loops"
.LC125:
	.string	"prefetch-loop-arrays"
	.align 4
.LC126:
	.string	"Generate prefetch instructions, if available, for arrays in loops"
.LC127:
	.string	"move-all-movables"
	.align 4
.LC128:
	.string	"Force all loop invariant computations out of loops"
.LC129:
	.string	"reduce-all-givs"
	.align 4
.LC130:
	.string	"Strength reduce all loop general induction variables"
.LC131:
	.string	"writable-strings"
	.align 4
.LC132:
	.string	"Store strings in writable data section"
.LC133:
	.string	"peephole"
	.align 4
.LC134:
	.string	"Enable machine specific peephole optimizations"
.LC135:
	.string	"force-mem"
	.align 4
.LC136:
	.string	"Copy memory operands into registers before using"
.LC137:
	.string	"force-addr"
	.align 4
.LC138:
	.string	"Copy memory address constants into regs before using"
.LC139:
	.string	"function-cse"
	.align 4
.LC140:
	.string	"Allow function addresses to be held in registers"
.LC141:
	.string	"inline-functions"
	.align 4
.LC142:
	.string	"Integrate simple functions into their callers"
.LC143:
	.string	"keep-inline-functions"
	.align 4
.LC144:
	.string	"Generate code for funcs even if they are fully inlined"
.LC145:
	.string	"inline"
	.align 4
.LC146:
	.string	"Pay attention to the 'inline' keyword"
.LC147:
	.string	"keep-static-consts"
	.align 4
.LC148:
	.string	"Emit static const variables even if they are not used"
.LC149:
	.string	"syntax-only"
	.align 4
.LC150:
	.string	"Check for syntax errors, then stop"
.LC151:
	.string	"shared-data"
	.align 4
.LC152:
	.string	"Mark data as shared rather than private"
.LC153:
	.string	"caller-saves"
	.align 4
.LC154:
	.string	"Enable saving registers around function calls"
.LC155:
	.string	"pcc-struct-return"
	.align 4
.LC156:
	.string	"Return 'short' aggregates in memory, not registers"
.LC157:
	.string	"reg-struct-return"
	.align 4
.LC158:
	.string	"Return 'short' aggregates in registers"
.LC159:
	.string	"delayed-branch"
	.align 4
.LC160:
	.string	"Attempt to fill delay slots of branch instructions"
	.align 4
.LC161:
	.string	"Perform the global common subexpression elimination"
.LC162:
	.string	"gcse-lm"
	.align 4
.LC163:
	.string	"Perform enhanced load motion during global subexpression elimination"
.LC164:
	.string	"gcse-sm"
	.align 4
.LC165:
	.string	"Perform store motion after global subexpression elimination"
.LC166:
	.string	"loop-optimize"
	.align 4
.LC167:
	.string	"Perform the loop optimizations"
.LC168:
	.string	"crossjumping"
	.align 4
.LC169:
	.string	"Perform cross-jumping optimization"
.LC170:
	.string	"if-conversion"
	.align 4
.LC171:
	.string	"Perform conversion of conditional jumps to branchless equivalents"
.LC172:
	.string	"if-conversion2"
	.align 4
.LC173:
	.string	"Perform conversion of conditional jumps to conditional execution"
.LC174:
	.string	"rerun-cse-after-loop"
	.align 4
.LC175:
	.string	"Run CSE pass after loop optimizations"
.LC176:
	.string	"rerun-loop-opt"
.LC177:
	.string	"Run the loop optimizer twice"
.LC178:
	.string	"delete-null-pointer-checks"
	.align 4
.LC179:
	.string	"Delete useless null pointer checks"
.LC180:
	.string	"schedule-insns"
	.align 4
.LC181:
	.string	"Reschedule instructions before register allocation"
.LC182:
	.string	"schedule-insns2"
	.align 4
.LC183:
	.string	"Reschedule instructions after register allocation"
.LC184:
	.string	"sched-interblock"
	.align 4
.LC185:
	.string	"Enable scheduling across basic blocks"
.LC186:
	.string	"sched-spec"
	.align 4
.LC187:
	.string	"Allow speculative motion of non-loads"
.LC188:
	.string	"sched-spec-load"
	.align 4
.LC189:
	.string	"Allow speculative motion of some loads"
.LC190:
	.string	"sched-spec-load-dangerous"
	.align 4
.LC191:
	.string	"Allow speculative motion of more loads"
.LC192:
	.string	"branch-count-reg"
	.align 4
.LC193:
	.string	"Replace add,compare,branch with branch on count reg"
.LC194:
	.string	"pic"
	.align 4
.LC195:
	.string	"Generate position independent code, if possible"
.LC196:
	.string	"PIC"
.LC197:
	.string	"pie"
	.align 4
.LC198:
	.string	"Generate position independent code for executables, if possible"
.LC199:
	.string	"PIE"
.LC200:
	.string	"exceptions"
.LC201:
	.string	"Enable exception handling"
.LC202:
	.string	"unwind-tables"
	.align 4
.LC203:
	.string	"Just generate unwind tables for exception handling"
.LC204:
	.string	"asynchronous-unwind-tables"
	.align 4
.LC205:
	.string	"Generate unwind tables exact at each instruction boundary"
.LC206:
	.string	"non-call-exceptions"
	.align 4
.LC207:
	.string	"Support synchronous non-call exceptions"
.LC208:
	.string	"profile-arcs"
	.align 4
.LC209:
	.string	"Insert arc based program profiling code"
.LC210:
	.string	"test-coverage"
	.align 4
.LC211:
	.string	"Create data files needed by gcov"
.LC212:
	.string	"branch-probabilities"
	.align 4
.LC213:
	.string	"Use profiling information for branch probabilities"
.LC214:
	.string	"profile"
	.align 4
.LC215:
	.string	"Enable basic program profiling code"
.LC216:
	.string	"reorder-blocks"
	.align 4
.LC217:
	.string	"Reorder basic blocks to improve code placement"
.LC218:
	.string	"reorder-functions"
	.align 4
.LC219:
	.string	"Reorder functions to improve code placement"
.LC220:
	.string	"rename-registers"
	.align 4
.LC221:
	.string	"Do the register renaming optimization pass"
.LC222:
	.string	"cprop-registers"
	.align 4
.LC223:
	.string	"Do the register copy-propagation optimization pass"
.LC224:
	.string	"common"
	.align 4
.LC225:
	.string	"Do not put uninitialized globals in the common section"
.LC226:
	.string	"inhibit-size-directive"
	.align 4
.LC227:
	.string	"Do not generate .size directives"
.LC228:
	.string	"function-sections"
	.align 4
.LC229:
	.string	"place each function into its own section"
.LC230:
	.string	"data-sections"
	.align 4
.LC231:
	.string	"place data items into their own section"
.LC232:
	.string	"verbose-asm"
	.align 4
.LC233:
	.string	"Add extra commentary to assembler output"
.LC234:
	.string	"gnu-linker"
	.align 4
.LC235:
	.string	"Output GNU ld formatted global initializers"
	.align 4
.LC236:
	.string	"Enables a register move optimization"
.LC237:
	.string	"optimize-register-move"
	.align 4
.LC238:
	.string	"Do the full regmove optimization pass"
.LC239:
	.string	"pack-struct"
	.align 4
.LC240:
	.string	"Pack structure members together without holes"
.LC241:
	.string	"stack-check"
	.align 4
.LC242:
	.string	"Insert stack checking code into the program"
.LC243:
	.string	"argument-alias"
	.align 4
.LC244:
	.string	"Specify that arguments may alias each other & globals"
.LC245:
	.string	"argument-noalias"
	.align 4
.LC246:
	.string	"Assume arguments may alias globals but not each other"
.LC247:
	.string	"argument-noalias-global"
	.align 4
.LC248:
	.string	"Assume arguments do not alias each other or globals"
.LC249:
	.string	"strict-aliasing"
	.align 4
.LC250:
	.string	"Assume strict aliasing rules apply"
.LC251:
	.string	"align-loops"
.LC252:
	.string	"Align the start of loops"
.LC253:
	.string	"align-jumps"
	.align 4
.LC254:
	.string	"Align labels which are only reached by jumping"
.LC255:
	.string	"align-labels"
.LC256:
	.string	"Align all labels"
.LC257:
	.string	"align-functions"
.LC258:
	.string	"Align the start of functions"
.LC259:
	.string	"merge-constants"
	.align 4
.LC260:
	.string	"Attempt to merge identical constants across compilation units"
.LC261:
	.string	"merge-all-constants"
	.align 4
.LC262:
	.string	"Attempt to merge identical constants and constant variables"
.LC263:
	.string	"dump-unnumbered"
	.align 4
.LC264:
	.string	"Suppress output of instruction numbers and line number notes in debugging dumps"
.LC265:
	.string	"instrument-functions"
	.align 4
.LC266:
	.string	"Instrument function entry/exit with profiling calls"
.LC267:
	.string	"zero-initialized-in-bss"
	.align 4
.LC268:
	.string	"Put zero initialized data in the bss section"
.LC269:
	.string	"Enable SSA optimizations"
.LC270:
	.string	"ssa-ccp"
	.align 4
.LC271:
	.string	"Enable SSA conditional constant propagation"
.LC272:
	.string	"ssa-dce"
	.align 4
.LC273:
	.string	"Enable aggressive SSA dead code elimination"
.LC274:
	.string	"leading-underscore"
	.align 4
.LC275:
	.string	"External symbols have a leading underscore"
.LC276:
	.string	"ident"
.LC277:
	.string	"Process #ident directives"
	.align 4
.LC278:
	.string	"Enables an rtl peephole pass run before sched2"
.LC279:
	.string	"finite-math-only"
	.align 4
.LC280:
	.string	"Assume no NaNs or +-Infs are generated"
.LC281:
	.string	"guess-branch-probability"
	.align 4
.LC282:
	.string	"Enables guessing of branch probabilities"
.LC283:
	.string	"math-errno"
	.align 4
.LC284:
	.string	"Set errno after built-in math functions"
.LC285:
	.string	"trapping-math"
	.align 4
.LC286:
	.string	"Floating-point operations can trap"
.LC287:
	.string	"unsafe-math-optimizations"
	.align 4
.LC288:
	.string	"Allow math optimizations that may violate IEEE or ANSI standards"
.LC289:
	.string	"signaling-nans"
	.align 4
.LC290:
	.string	"Disable optimizations observable by IEEE signaling NaNs"
.LC291:
	.string	"bounds-check"
	.align 4
.LC292:
	.string	"Generate code to check bounds before indexing arrays"
.LC293:
	.string	"single-precision-constant"
	.align 4
.LC294:
	.string	"Convert floating point constant to single precision constant"
.LC295:
	.string	"time-report"
	.align 4
.LC296:
	.string	"Report time taken by each compiler pass at end of run"
.LC297:
	.string	"mem-report"
	.align 4
.LC298:
	.string	"Report on permanent memory allocation at end of run"
.LC299:
	.string	"trapv"
	.align 4
.LC300:
	.string	"Trap for signed overflow in addition / subtraction / multiplication"
.LC301:
	.string	"new-ra"
	.align 4
.LC302:
	.string	"Use graph coloring register allocation."
.LC303:
	.string	"honor-shift"
	.align 4
.LC304:
	.string	"Retain shift operation as specified by the user."
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	f_options, @object
	.size	f_options, 1744
f_options:
	.long	.LC94
	.long	flag_eliminate_dwarf2_dups
	.long	1
	.long	.LC95
	.long	.LC96
	.long	flag_float_store
	.long	1
	.long	.LC97
	.long	.LC98
	.long	flag_volatile
	.long	1
	.long	.LC99
	.long	.LC100
	.long	flag_volatile_global
	.long	1
	.long	.LC101
	.long	.LC102
	.long	flag_volatile_static
	.long	1
	.long	.LC103
	.long	.LC104
	.long	flag_defer_pop
	.long	1
	.long	.LC105
	.long	.LC106
	.long	flag_omit_frame_pointer
	.long	1
	.long	.LC107
	.long	.LC108
	.long	flag_optimize_sibling_calls
	.long	1
	.long	.LC109
	.long	.LC16
	.long	flag_tracer
	.long	1
	.long	.LC110
	.long	.LC111
	.long	flag_cse_follow_jumps
	.long	1
	.long	.LC112
	.long	.LC113
	.long	flag_cse_skip_blocks
	.long	1
	.long	.LC114
	.long	.LC115
	.long	flag_expensive_optimizations
	.long	1
	.long	.LC116
	.long	.LC117
	.long	flag_thread_jumps
	.long	1
	.long	.LC118
	.long	.LC119
	.long	flag_strength_reduce
	.long	1
	.long	.LC120
	.long	.LC121
	.long	flag_unroll_loops
	.long	1
	.long	.LC122
	.long	.LC123
	.long	flag_unroll_all_loops
	.long	1
	.long	.LC124
	.long	.LC125
	.long	flag_prefetch_loop_arrays
	.long	1
	.long	.LC126
	.long	.LC127
	.long	flag_move_all_movables
	.long	1
	.long	.LC128
	.long	.LC129
	.long	flag_reduce_all_givs
	.long	1
	.long	.LC130
	.long	.LC131
	.long	flag_writable_strings
	.long	1
	.long	.LC132
	.long	.LC133
	.long	flag_no_peephole
	.long	0
	.long	.LC134
	.long	.LC135
	.long	flag_force_mem
	.long	1
	.long	.LC136
	.long	.LC137
	.long	flag_force_addr
	.long	1
	.long	.LC138
	.long	.LC139
	.long	flag_no_function_cse
	.long	0
	.long	.LC140
	.long	.LC141
	.long	flag_inline_functions
	.long	1
	.long	.LC142
	.long	.LC143
	.long	flag_keep_inline_functions
	.long	1
	.long	.LC144
	.long	.LC145
	.long	flag_no_inline
	.long	0
	.long	.LC146
	.long	.LC147
	.long	flag_keep_static_consts
	.long	1
	.long	.LC148
	.long	.LC149
	.long	flag_syntax_only
	.long	1
	.long	.LC150
	.long	.LC151
	.long	flag_shared_data
	.long	1
	.long	.LC152
	.long	.LC153
	.long	flag_caller_saves
	.long	1
	.long	.LC154
	.long	.LC155
	.long	flag_pcc_struct_return
	.long	1
	.long	.LC156
	.long	.LC157
	.long	flag_pcc_struct_return
	.long	0
	.long	.LC158
	.long	.LC159
	.long	flag_delayed_branch
	.long	1
	.long	.LC160
	.long	.LC11
	.long	flag_gcse
	.long	1
	.long	.LC161
	.long	.LC162
	.long	flag_gcse_lm
	.long	1
	.long	.LC163
	.long	.LC164
	.long	flag_gcse_sm
	.long	1
	.long	.LC165
	.long	.LC166
	.long	flag_loop_optimize
	.long	1
	.long	.LC167
	.long	.LC168
	.long	flag_crossjumping
	.long	1
	.long	.LC169
	.long	.LC170
	.long	flag_if_conversion
	.long	1
	.long	.LC171
	.long	.LC172
	.long	flag_if_conversion2
	.long	1
	.long	.LC173
	.long	.LC174
	.long	flag_rerun_cse_after_loop
	.long	1
	.long	.LC175
	.long	.LC176
	.long	flag_rerun_loop_opt
	.long	1
	.long	.LC177
	.long	.LC178
	.long	flag_delete_null_pointer_checks
	.long	1
	.long	.LC179
	.long	.LC180
	.long	flag_schedule_insns
	.long	1
	.long	.LC181
	.long	.LC182
	.long	flag_schedule_insns_after_reload
	.long	1
	.long	.LC183
	.long	.LC184
	.long	flag_schedule_interblock
	.long	1
	.long	.LC185
	.long	.LC186
	.long	flag_schedule_speculative
	.long	1
	.long	.LC187
	.long	.LC188
	.long	flag_schedule_speculative_load
	.long	1
	.long	.LC189
	.long	.LC190
	.long	flag_schedule_speculative_load_dangerous
	.long	1
	.long	.LC191
	.long	.LC192
	.long	flag_branch_on_count_reg
	.long	1
	.long	.LC193
	.long	.LC194
	.long	flag_pic
	.long	1
	.long	.LC195
	.long	.LC196
	.long	flag_pic
	.long	2
	.long	.LC36
	.long	.LC197
	.long	flag_pie
	.long	1
	.long	.LC198
	.long	.LC199
	.long	flag_pie
	.long	2
	.long	.LC36
	.long	.LC200
	.long	flag_exceptions
	.long	1
	.long	.LC201
	.long	.LC202
	.long	flag_unwind_tables
	.long	1
	.long	.LC203
	.long	.LC204
	.long	flag_asynchronous_unwind_tables
	.long	1
	.long	.LC205
	.long	.LC206
	.long	flag_non_call_exceptions
	.long	1
	.long	.LC207
	.long	.LC208
	.long	profile_arc_flag
	.long	1
	.long	.LC209
	.long	.LC210
	.long	flag_test_coverage
	.long	1
	.long	.LC211
	.long	.LC212
	.long	flag_branch_probabilities
	.long	1
	.long	.LC213
	.long	.LC214
	.long	profile_flag
	.long	1
	.long	.LC215
	.long	.LC216
	.long	flag_reorder_blocks
	.long	1
	.long	.LC217
	.long	.LC218
	.long	flag_reorder_functions
	.long	1
	.long	.LC219
	.long	.LC220
	.long	flag_rename_registers
	.long	1
	.long	.LC221
	.long	.LC222
	.long	flag_cprop_registers
	.long	1
	.long	.LC223
	.long	.LC224
	.long	flag_no_common
	.long	0
	.long	.LC225
	.long	.LC226
	.long	flag_inhibit_size_directive
	.long	1
	.long	.LC227
	.long	.LC228
	.long	flag_function_sections
	.long	1
	.long	.LC229
	.long	.LC230
	.long	flag_data_sections
	.long	1
	.long	.LC231
	.long	.LC232
	.long	flag_verbose_asm
	.long	1
	.long	.LC233
	.long	.LC234
	.long	flag_gnu_linker
	.long	1
	.long	.LC235
	.long	.LC21
	.long	flag_regmove
	.long	1
	.long	.LC236
	.long	.LC237
	.long	flag_regmove
	.long	1
	.long	.LC238
	.long	.LC239
	.long	flag_pack_struct
	.long	1
	.long	.LC240
	.long	.LC241
	.long	flag_stack_check
	.long	1
	.long	.LC242
	.long	.LC243
	.long	flag_argument_noalias
	.long	0
	.long	.LC244
	.long	.LC245
	.long	flag_argument_noalias
	.long	1
	.long	.LC246
	.long	.LC247
	.long	flag_argument_noalias
	.long	2
	.long	.LC248
	.long	.LC249
	.long	flag_strict_aliasing
	.long	1
	.long	.LC250
	.long	.LC251
	.long	align_loops
	.long	0
	.long	.LC252
	.long	.LC253
	.long	align_jumps
	.long	0
	.long	.LC254
	.long	.LC255
	.long	align_labels
	.long	0
	.long	.LC256
	.long	.LC257
	.long	align_functions
	.long	0
	.long	.LC258
	.long	.LC259
	.long	flag_merge_constants
	.long	1
	.long	.LC260
	.long	.LC261
	.long	flag_merge_constants
	.long	2
	.long	.LC262
	.long	.LC263
	.long	flag_dump_unnumbered
	.long	1
	.long	.LC264
	.long	.LC265
	.long	flag_instrument_function_entry_exit
	.long	1
	.long	.LC266
	.long	.LC267
	.long	flag_zero_initialized_in_bss
	.long	1
	.long	.LC268
	.long	.LC4
	.long	flag_ssa
	.long	1
	.long	.LC269
	.long	.LC270
	.long	flag_ssa_ccp
	.long	1
	.long	.LC271
	.long	.LC272
	.long	flag_ssa_dce
	.long	1
	.long	.LC273
	.long	.LC274
	.long	flag_leading_underscore
	.long	1
	.long	.LC275
	.long	.LC276
	.long	flag_no_ident
	.long	0
	.long	.LC277
	.long	.LC27
	.long	flag_peephole2
	.long	1
	.long	.LC278
	.long	.LC279
	.long	flag_finite_math_only
	.long	1
	.long	.LC280
	.long	.LC281
	.long	flag_guess_branch_prob
	.long	1
	.long	.LC282
	.long	.LC283
	.long	flag_errno_math
	.long	1
	.long	.LC284
	.long	.LC285
	.long	flag_trapping_math
	.long	1
	.long	.LC286
	.long	.LC287
	.long	flag_unsafe_math_optimizations
	.long	1
	.long	.LC288
	.long	.LC289
	.long	flag_signaling_nans
	.long	1
	.long	.LC290
	.long	.LC291
	.long	flag_bounds_check
	.long	1
	.long	.LC292
	.long	.LC293
	.long	flag_single_precision_constant
	.long	1
	.long	.LC294
	.long	.LC295
	.long	time_report
	.long	1
	.long	.LC296
	.long	.LC297
	.long	mem_report
	.long	1
	.long	.LC298
	.long	.LC299
	.long	flag_trapv
	.long	1
	.long	.LC300
	.long	.LC301
	.long	flag_new_regalloc
	.long	1
	.long	.LC302
	.long	.LC303
	.long	flag_honor_shift
	.long	1
	.long	.LC304
	.section	.rodata
.LC305:
	.string	"-ansi"
.LC306:
	.string	"Compile just for ISO C90"
.LC307:
	.string	"-std= "
.LC308:
	.string	"Determine language standard"
.LC309:
	.string	"-fsigned-bitfields"
.LC310:
	.string	"-funsigned-bitfields"
	.align 4
.LC311:
	.string	"Make bit-fields by unsigned by default"
.LC312:
	.string	"-fno-signed-bitfields"
.LC313:
	.string	"-fno-unsigned-bitfields"
.LC314:
	.string	"-fsigned-char"
	.align 4
.LC315:
	.string	"Make 'char' be signed by default"
.LC316:
	.string	"-funsigned-char"
	.align 4
.LC317:
	.string	"Make 'char' be unsigned by default"
.LC318:
	.string	"-fno-signed-char"
.LC319:
	.string	"-fno-unsigned-char"
.LC320:
	.string	"-fasm"
.LC321:
	.string	"-fno-asm"
	.align 4
.LC322:
	.string	"Do not recognize the 'asm' keyword"
.LC323:
	.string	"-fbuiltin"
.LC324:
	.string	"-fno-builtin"
	.align 4
.LC325:
	.string	"Do not recognize any built in functions"
.LC326:
	.string	"-fhosted"
	.align 4
.LC327:
	.string	"Assume normal C execution environment"
.LC328:
	.string	"-fno-hosted"
.LC329:
	.string	"-ffreestanding"
	.align 4
.LC330:
	.string	"Assume that standard libraries & main might not exist"
.LC331:
	.string	"-fno-freestanding"
.LC332:
	.string	"-fcond-mismatch"
	.align 4
.LC333:
	.string	"Allow different types as args of ? operator"
.LC334:
	.string	"-fno-cond-mismatch"
.LC335:
	.string	"-fdollars-in-identifiers"
	.align 4
.LC336:
	.string	"Allow the use of $ inside identifiers"
.LC337:
	.string	"-fno-dollars-in-identifiers"
.LC338:
	.string	"-fpreprocessed"
.LC339:
	.string	"-fno-preprocessed"
.LC340:
	.string	"-fshort-double"
	.align 4
.LC341:
	.string	"Use the same size for double as for float"
.LC342:
	.string	"-fno-short-double"
.LC343:
	.string	"-fshort-enums"
	.align 4
.LC344:
	.string	"Use the smallest fitting integer to hold enums"
.LC345:
	.string	"-fno-short-enums"
.LC346:
	.string	"-fshort-wchar"
	.align 4
.LC347:
	.string	"Override the underlying type for wchar_t to `unsigned short'"
.LC348:
	.string	"-fno-short-wchar"
.LC349:
	.string	"-Wall"
.LC350:
	.string	"Enable most warning messages"
.LC351:
	.string	"-Wbad-function-cast"
	.align 4
.LC352:
	.string	"Warn about casting functions to incompatible types"
.LC353:
	.string	"-Wno-bad-function-cast"
.LC354:
	.string	"-Wmissing-format-attribute"
	.align 4
.LC355:
	.string	"Warn about functions which might be candidates for format attributes"
.LC356:
	.string	"-Wno-missing-format-attribute"
.LC357:
	.string	"-Wcast-qual"
	.align 4
.LC358:
	.string	"Warn about casts which discard qualifiers"
.LC359:
	.string	"-Wno-cast-qual"
.LC360:
	.string	"-Wchar-subscripts"
	.align 4
.LC361:
	.string	"Warn about subscripts whose type is 'char'"
.LC362:
	.string	"-Wno-char-subscripts"
.LC363:
	.string	"-Wcomment"
	.align 4
.LC364:
	.string	"Warn if nested comments are detected"
.LC365:
	.string	"-Wno-comment"
.LC366:
	.string	"-Wcomments"
.LC367:
	.string	"-Wno-comments"
.LC368:
	.string	"-Wconversion"
	.align 4
.LC369:
	.string	"Warn about possibly confusing type conversions"
.LC370:
	.string	"-Wno-conversion"
.LC371:
	.string	"-Wdeclaration-after-statement"
	.align 4
.LC372:
	.string	"Warn when a declaration is found after a statement"
	.align 4
.LC373:
	.string	"-Wno-declaration-after-statement"
.LC374:
	.string	"-Wdiv-by-zero"
.LC375:
	.string	"-Wno-div-by-zero"
	.align 4
.LC376:
	.string	"Do not warn about compile-time integer division by zero"
.LC377:
	.string	"-Wfloat-equal"
	.align 4
.LC378:
	.string	"Warn about testing equality of floating point numbers"
.LC379:
	.string	"-Wno-float-equal"
.LC380:
	.string	"-Wformat"
	.align 4
.LC381:
	.string	"Warn about printf/scanf/strftime/strfmon format anomalies"
.LC382:
	.string	"-Wno-format"
.LC383:
	.string	"-Wformat-extra-args"
.LC384:
	.string	"-Wno-format-extra-args"
	.align 4
.LC385:
	.string	"Don't warn about too many arguments to format functions"
.LC386:
	.string	"-Wformat-nonliteral"
	.align 4
.LC387:
	.string	"Warn about non-string-literal format strings"
.LC388:
	.string	"-Wno-format-nonliteral"
.LC389:
	.string	"-Wformat-security"
	.align 4
.LC390:
	.string	"Warn about possible security problems with format functions"
.LC391:
	.string	"-Wno-format-security"
.LC392:
	.string	"-Wformat-y2k"
.LC393:
	.string	"-Wno-format-y2k"
	.align 4
.LC394:
	.string	"Don't warn about strftime formats yielding 2 digit years"
	.align 4
.LC395:
	.string	"-Wimplicit-function-declaration"
	.align 4
.LC396:
	.string	"Warn about implicit function declarations"
	.align 4
.LC397:
	.string	"-Wno-implicit-function-declaration"
	.align 4
.LC398:
	.string	"-Werror-implicit-function-declaration"
.LC399:
	.string	"-Wimplicit-int"
	.align 4
.LC400:
	.string	"Warn when a declaration does not specify a type"
.LC401:
	.string	"-Wno-implicit-int"
.LC402:
	.string	"-Wimplicit"
.LC403:
	.string	"-Wno-implicit"
.LC404:
	.string	"-Wimport"
	.align 4
.LC405:
	.string	"Warn about the use of the #import directive"
.LC406:
	.string	"-Wno-import"
.LC407:
	.string	"-Wlong-long"
.LC408:
	.string	"-Wno-long-long"
	.align 4
.LC409:
	.string	"Do not warn about using 'long long' when -pedantic"
.LC410:
	.string	"-Wmain"
	.align 4
.LC411:
	.string	"Warn about suspicious declarations of main"
.LC412:
	.string	"-Wno-main"
.LC413:
	.string	"-Wmissing-braces"
	.align 4
.LC414:
	.string	"Warn about possibly missing braces around initializers"
.LC415:
	.string	"-Wno-missing-braces"
.LC416:
	.string	"-Wmissing-declarations"
	.align 4
.LC417:
	.string	"Warn about global funcs without previous declarations"
.LC418:
	.string	"-Wno-missing-declarations"
.LC419:
	.string	"-Wmissing-prototypes"
	.align 4
.LC420:
	.string	"Warn about global funcs without prototypes"
.LC421:
	.string	"-Wno-missing-prototypes"
.LC422:
	.string	"-Wmultichar"
	.align 4
.LC423:
	.string	"Warn about use of multicharacter literals"
.LC424:
	.string	"-Wno-multichar"
.LC425:
	.string	"-Wnested-externs"
	.align 4
.LC426:
	.string	"Warn about externs not at file scope level"
.LC427:
	.string	"-Wno-nested-externs"
.LC428:
	.string	"-Wparentheses"
	.align 4
.LC429:
	.string	"Warn about possible missing parentheses"
.LC430:
	.string	"-Wno-parentheses"
.LC431:
	.string	"-Wpointer-arith"
	.align 4
.LC432:
	.string	"Warn about function pointer arithmetic"
.LC433:
	.string	"-Wno-pointer-arith"
.LC434:
	.string	"-Wredundant-decls"
	.align 4
.LC435:
	.string	"Warn about multiple declarations of the same object"
.LC436:
	.string	"-Wno-redundant-decls"
.LC437:
	.string	"-Wreturn-type"
	.align 4
.LC438:
	.string	"Warn whenever a function's return-type defaults to int"
.LC439:
	.string	"-Wno-return-type"
.LC440:
	.string	"-Wsequence-point"
	.align 4
.LC441:
	.string	"Warn about possible violations of sequence point rules"
.LC442:
	.string	"-Wno-sequence-point"
.LC443:
	.string	"-Wsign-compare"
	.align 4
.LC444:
	.string	"Warn about signed/unsigned comparisons"
.LC445:
	.string	"-Wno-sign-compare"
.LC446:
	.string	"-Wstrict-prototypes"
	.align 4
.LC447:
	.string	"Warn about non-prototyped function decls"
.LC448:
	.string	"-Wno-strict-prototypes"
.LC449:
	.string	"-Wtraditional"
	.align 4
.LC450:
	.string	"Warn about constructs whose meanings change in ISO C"
.LC451:
	.string	"-Wno-traditional"
.LC452:
	.string	"-Wtrigraphs"
	.align 4
.LC453:
	.string	"Warn when trigraphs are encountered"
.LC454:
	.string	"-Wno-trigraphs"
.LC455:
	.string	"-Wundef"
.LC456:
	.string	"-Wno-undef"
.LC457:
	.string	"-Wunknown-pragmas"
	.align 4
.LC458:
	.string	"Warn about unrecognized pragmas"
.LC459:
	.string	"-Wno-unknown-pragmas"
.LC460:
	.string	"-Wwrite-strings"
	.align 4
.LC461:
	.string	"Mark strings as 'const char *'"
.LC462:
	.string	"-Wno-write-strings"
.LC463:
	.string	"C++"
.LC464:
	.string	"-faccess-control"
.LC465:
	.string	"-fno-access-control"
	.align 4
.LC466:
	.string	"Do not obey access control semantics"
.LC467:
	.string	"-falt-external-templates"
	.align 4
.LC468:
	.string	"Change when template instances are emitted"
.LC469:
	.string	"-fno-alt-external-templates"
.LC470:
	.string	"-fansi-overloading"
.LC471:
	.string	"-fno-ansi-overloading"
.LC472:
	.string	"-fcheck-new"
.LC473:
	.string	"Check the return value of new"
.LC474:
	.string	"-fno-check-new"
.LC475:
	.string	"-fconserve-space"
.LC476:
	.string	"Reduce size of object files"
.LC477:
	.string	"-fno-conserve-space"
.LC478:
	.string	"-fconst-strings"
.LC479:
	.string	"-fno-const-strings"
	.align 4
.LC480:
	.string	"Make string literals `char[]' instead of `const char[]'"
.LC481:
	.string	"-fdefault-inline"
.LC482:
	.string	"-fdump-translation-unit-"
	.align 4
.LC483:
	.string	"Dump the entire translation unit to a file"
.LC484:
	.string	"-fno-default-inline"
	.align 4
.LC485:
	.string	"Do not inline member functions by default"
.LC486:
	.string	"-frtti"
.LC487:
	.string	"-fno-rtti"
	.align 4
.LC488:
	.string	"Do not generate run time type descriptor information"
.LC489:
	.string	"-felide-constructors"
.LC490:
	.string	"-fno-elide-constructors"
.LC491:
	.string	"-fenforce-eh-specs"
.LC492:
	.string	"-fno-enforce-eh-specs"
	.align 4
.LC493:
	.string	"Do not generate code to check exception specifications"
.LC494:
	.string	"-fexternal-templates"
.LC495:
	.string	"-fno-external-templates"
.LC496:
	.string	"-ffor-scope"
.LC497:
	.string	"-fno-for-scope"
	.align 4
.LC498:
	.string	"Scope of for-init-statement vars extends outside"
.LC499:
	.string	"-fgnu-keywords"
.LC500:
	.string	"-fno-gnu-keywords"
	.align 4
.LC501:
	.string	"Do not recognize GNU defined keywords"
.LC502:
	.string	"-fhandle-exceptions"
.LC503:
	.string	"-fno-handle-exceptions"
.LC504:
	.string	"-fhuge-objects"
	.align 4
.LC505:
	.string	"Enable support for huge objects"
.LC506:
	.string	"-fno-huge-objects"
.LC507:
	.string	"-fimplement-inlines"
.LC508:
	.string	"-fno-implement-inlines"
	.align 4
.LC509:
	.string	"Export functions even if they can be inlined"
.LC510:
	.string	"-fimplicit-templates"
.LC511:
	.string	"-fno-implicit-templates"
	.align 4
.LC512:
	.string	"Only emit explicit template instantiations"
.LC513:
	.string	"-fimplicit-inline-templates"
	.align 4
.LC514:
	.string	"-fno-implicit-inline-templates"
	.align 4
.LC515:
	.string	"Only emit explicit instantiations of inline templates"
.LC516:
	.string	"-finit-priority"
.LC517:
	.string	"-fno-init-priority"
.LC518:
	.string	"-fmemoize-lookups"
.LC519:
	.string	"-fno-memoize-lookups"
.LC520:
	.string	"-fms-extensions"
	.align 4
.LC521:
	.string	"Don't pedwarn about uses of Microsoft extensions"
.LC522:
	.string	"-fno-ms-extensions"
.LC523:
	.string	"-foperator-names"
	.align 4
.LC524:
	.string	"Recognize and/bitand/bitor/compl/not/or/xor"
.LC525:
	.string	"-fno-operator-names"
.LC526:
	.string	"-foptional-diags"
.LC527:
	.string	"-fno-optional-diags"
.LC528:
	.string	"Disable optional diagnostics"
.LC529:
	.string	"-fpermissive"
	.align 4
.LC530:
	.string	"Downgrade conformance errors to warnings"
.LC531:
	.string	"-fno-permissive"
.LC532:
	.string	"-frepo"
	.align 4
.LC533:
	.string	"Enable automatic template instantiation"
.LC534:
	.string	"-fno-repo"
.LC535:
	.string	"-fsave-memoized"
.LC536:
	.string	"-fno-save-memoized"
.LC537:
	.string	"-fstats"
	.align 4
.LC538:
	.string	"Display statistics accumulated during compilation"
.LC539:
	.string	"-fno-stats"
.LC540:
	.string	"-ftemplate-depth-"
	.align 4
.LC541:
	.string	"Specify maximum template instantiation depth"
.LC542:
	.string	"-fuse-cxa-atexit"
	.align 4
.LC543:
	.string	"Use __cxa_atexit to register destructors"
.LC544:
	.string	"-fno-use-cxa-atexit"
.LC545:
	.string	"-fvtable-gc"
	.align 4
.LC546:
	.string	"Discard unused virtual functions"
.LC547:
	.string	"-fno-vtable-gc"
.LC548:
	.string	"-fvtable-thunks"
	.align 4
.LC549:
	.string	"Implement vtables using thunks"
.LC550:
	.string	"-fno-vtable-thunks"
.LC551:
	.string	"-fweak"
	.align 4
.LC552:
	.string	"Emit common-like symbols as weak symbols"
.LC553:
	.string	"-fno-weak"
.LC554:
	.string	"-fxref"
	.align 4
.LC555:
	.string	"Emit cross referencing information"
.LC556:
	.string	"-fno-xref"
	.align 4
.LC557:
	.string	"Warn about inconsistent return types"
.LC558:
	.string	"-Woverloaded-virtual"
	.align 4
.LC559:
	.string	"Warn about overloaded virtual function names"
.LC560:
	.string	"-Wno-overloaded-virtual"
.LC561:
	.string	"-Wctor-dtor-privacy"
.LC562:
	.string	"-Wno-ctor-dtor-privacy"
	.align 4
.LC563:
	.string	"Don't warn when all ctors/dtors are private"
.LC564:
	.string	"-Wnon-virtual-dtor"
	.align 4
.LC565:
	.string	"Warn about non virtual destructors"
.LC566:
	.string	"-Wno-non-virtual-dtor"
.LC567:
	.string	"-Wextern-inline"
	.align 4
.LC568:
	.string	"Warn when a function is declared extern, then inline"
.LC569:
	.string	"-Wno-extern-inline"
.LC570:
	.string	"-Wreorder"
	.align 4
.LC571:
	.string	"Warn when the compiler reorders code"
.LC572:
	.string	"-Wno-reorder"
.LC573:
	.string	"-Wsynth"
	.align 4
.LC574:
	.string	"Warn when synthesis behavior differs from Cfront"
.LC575:
	.string	"-Wno-synth"
.LC576:
	.string	"-Wpmf-conversions"
.LC577:
	.string	"-Wno-pmf-conversions"
	.align 4
.LC578:
	.string	"Don't warn when type converting pointers to member functions"
.LC579:
	.string	"-Weffc++"
	.align 4
.LC580:
	.string	"Warn about violations of Effective C++ style rules"
.LC581:
	.string	"-Wno-effc++"
.LC582:
	.string	"-Wsign-promo"
	.align 4
.LC583:
	.string	"Warn when overload promotes from unsigned to signed"
.LC584:
	.string	"-Wno-sign-promo"
.LC585:
	.string	"-Wold-style-cast"
	.align 4
.LC586:
	.string	"Warn if a C style cast is used in a program"
.LC587:
	.string	"-Wno-old-style-cast"
.LC588:
	.string	"-Wnon-template-friend"
.LC589:
	.string	"-Wno-non-template-friend"
	.align 4
.LC590:
	.string	"Don't warn when non-templatized friend functions are declared within a template"
.LC591:
	.string	"-Wdeprecated"
.LC592:
	.string	"-Wno-deprecated"
	.align 4
.LC593:
	.string	"Don't announce deprecation of compiler features"
	.section	.data.rel.ro.local
	.align 32
	.type	documented_lang_options, @object
	.size	documented_lang_options, 1608
documented_lang_options:
	.long	.LC305
	.long	.LC306
	.long	.LC307
	.long	.LC308
	.long	.LC309
	.long	.LC36
	.long	.LC310
	.long	.LC311
	.long	.LC312
	.long	.LC36
	.long	.LC313
	.long	.LC36
	.long	.LC314
	.long	.LC315
	.long	.LC316
	.long	.LC317
	.long	.LC318
	.long	.LC36
	.long	.LC319
	.long	.LC36
	.long	.LC320
	.long	.LC36
	.long	.LC321
	.long	.LC322
	.long	.LC323
	.long	.LC36
	.long	.LC324
	.long	.LC325
	.long	.LC326
	.long	.LC327
	.long	.LC328
	.long	.LC36
	.long	.LC329
	.long	.LC330
	.long	.LC331
	.long	.LC36
	.long	.LC332
	.long	.LC333
	.long	.LC334
	.long	.LC36
	.long	.LC335
	.long	.LC336
	.long	.LC337
	.long	.LC36
	.long	.LC338
	.long	.LC36
	.long	.LC339
	.long	.LC36
	.long	.LC340
	.long	.LC341
	.long	.LC342
	.long	.LC36
	.long	.LC343
	.long	.LC344
	.long	.LC345
	.long	.LC36
	.long	.LC346
	.long	.LC347
	.long	.LC348
	.long	.LC36
	.long	.LC349
	.long	.LC350
	.long	.LC351
	.long	.LC352
	.long	.LC353
	.long	.LC36
	.long	.LC354
	.long	.LC355
	.long	.LC356
	.long	.LC36
	.long	.LC357
	.long	.LC358
	.long	.LC359
	.long	.LC36
	.long	.LC360
	.long	.LC361
	.long	.LC362
	.long	.LC36
	.long	.LC363
	.long	.LC364
	.long	.LC365
	.long	.LC36
	.long	.LC366
	.long	.LC364
	.long	.LC367
	.long	.LC36
	.long	.LC368
	.long	.LC369
	.long	.LC370
	.long	.LC36
	.long	.LC371
	.long	.LC372
	.long	.LC373
	.long	.LC36
	.long	.LC374
	.long	.LC36
	.long	.LC375
	.long	.LC376
	.long	.LC377
	.long	.LC378
	.long	.LC379
	.long	.LC36
	.long	.LC380
	.long	.LC381
	.long	.LC382
	.long	.LC36
	.long	.LC383
	.long	.LC36
	.long	.LC384
	.long	.LC385
	.long	.LC386
	.long	.LC387
	.long	.LC388
	.long	.LC36
	.long	.LC389
	.long	.LC390
	.long	.LC391
	.long	.LC36
	.long	.LC392
	.long	.LC36
	.long	.LC393
	.long	.LC394
	.long	.LC395
	.long	.LC396
	.long	.LC397
	.long	.LC36
	.long	.LC398
	.long	.LC36
	.long	.LC399
	.long	.LC400
	.long	.LC401
	.long	.LC36
	.long	.LC402
	.long	.LC36
	.long	.LC403
	.long	.LC36
	.long	.LC404
	.long	.LC405
	.long	.LC406
	.long	.LC36
	.long	.LC407
	.long	.LC36
	.long	.LC408
	.long	.LC409
	.long	.LC410
	.long	.LC411
	.long	.LC412
	.long	.LC36
	.long	.LC413
	.long	.LC414
	.long	.LC415
	.long	.LC36
	.long	.LC416
	.long	.LC417
	.long	.LC418
	.long	.LC36
	.long	.LC419
	.long	.LC420
	.long	.LC421
	.long	.LC36
	.long	.LC422
	.long	.LC423
	.long	.LC424
	.long	.LC36
	.long	.LC425
	.long	.LC426
	.long	.LC427
	.long	.LC36
	.long	.LC428
	.long	.LC429
	.long	.LC430
	.long	.LC36
	.long	.LC431
	.long	.LC432
	.long	.LC433
	.long	.LC36
	.long	.LC434
	.long	.LC435
	.long	.LC436
	.long	.LC36
	.long	.LC437
	.long	.LC438
	.long	.LC439
	.long	.LC36
	.long	.LC440
	.long	.LC441
	.long	.LC442
	.long	.LC36
	.long	.LC443
	.long	.LC444
	.long	.LC445
	.long	.LC36
	.long	.LC446
	.long	.LC447
	.long	.LC448
	.long	.LC36
	.long	.LC449
	.long	.LC450
	.long	.LC451
	.long	.LC36
	.long	.LC452
	.long	.LC453
	.long	.LC454
	.long	.LC36
	.long	.LC455
	.long	.LC36
	.long	.LC456
	.long	.LC36
	.long	.LC457
	.long	.LC458
	.long	.LC459
	.long	.LC36
	.long	.LC460
	.long	.LC461
	.long	.LC462
	.long	.LC36
	.long	0
	.long	.LC463
	.long	.LC464
	.long	.LC36
	.long	.LC465
	.long	.LC466
	.long	.LC467
	.long	.LC468
	.long	.LC469
	.long	.LC36
	.long	.LC470
	.long	.LC36
	.long	.LC471
	.long	.LC36
	.long	.LC472
	.long	.LC473
	.long	.LC474
	.long	.LC36
	.long	.LC475
	.long	.LC476
	.long	.LC477
	.long	.LC36
	.long	.LC478
	.long	.LC36
	.long	.LC479
	.long	.LC480
	.long	.LC481
	.long	.LC36
	.long	.LC482
	.long	.LC483
	.long	.LC484
	.long	.LC485
	.long	.LC486
	.long	.LC36
	.long	.LC487
	.long	.LC488
	.long	.LC489
	.long	.LC36
	.long	.LC490
	.long	.LC36
	.long	.LC491
	.long	.LC36
	.long	.LC492
	.long	.LC493
	.long	.LC494
	.long	.LC36
	.long	.LC495
	.long	.LC36
	.long	.LC496
	.long	.LC36
	.long	.LC497
	.long	.LC498
	.long	.LC499
	.long	.LC36
	.long	.LC500
	.long	.LC501
	.long	.LC502
	.long	.LC36
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
	.long	.LC512
	.long	.LC513
	.long	.LC36
	.long	.LC514
	.long	.LC515
	.long	.LC516
	.long	.LC36
	.long	.LC517
	.long	.LC36
	.long	.LC518
	.long	.LC36
	.long	.LC519
	.long	.LC36
	.long	.LC520
	.long	.LC521
	.long	.LC522
	.long	.LC36
	.long	.LC523
	.long	.LC524
	.long	.LC525
	.long	.LC36
	.long	.LC526
	.long	.LC36
	.long	.LC527
	.long	.LC528
	.long	.LC529
	.long	.LC530
	.long	.LC531
	.long	.LC36
	.long	.LC532
	.long	.LC533
	.long	.LC534
	.long	.LC36
	.long	.LC535
	.long	.LC36
	.long	.LC536
	.long	.LC36
	.long	.LC537
	.long	.LC538
	.long	.LC539
	.long	.LC36
	.long	.LC540
	.long	.LC541
	.long	.LC542
	.long	.LC543
	.long	.LC544
	.long	.LC36
	.long	.LC545
	.long	.LC546
	.long	.LC547
	.long	.LC36
	.long	.LC548
	.long	.LC549
	.long	.LC550
	.long	.LC36
	.long	.LC551
	.long	.LC552
	.long	.LC553
	.long	.LC36
	.long	.LC554
	.long	.LC555
	.long	.LC556
	.long	.LC36
	.long	.LC437
	.long	.LC557
	.long	.LC439
	.long	.LC36
	.long	.LC558
	.long	.LC559
	.long	.LC560
	.long	.LC36
	.long	.LC561
	.long	.LC36
	.long	.LC562
	.long	.LC563
	.long	.LC564
	.long	.LC565
	.long	.LC566
	.long	.LC36
	.long	.LC567
	.long	.LC568
	.long	.LC569
	.long	.LC36
	.long	.LC570
	.long	.LC571
	.long	.LC572
	.long	.LC36
	.long	.LC573
	.long	.LC574
	.long	.LC575
	.long	.LC36
	.long	.LC576
	.long	.LC36
	.long	.LC577
	.long	.LC578
	.long	.LC579
	.long	.LC580
	.long	.LC581
	.long	.LC36
	.long	.LC582
	.long	.LC583
	.long	.LC584
	.long	.LC36
	.long	.LC585
	.long	.LC586
	.long	.LC587
	.long	.LC36
	.long	.LC588
	.long	.LC36
	.long	.LC589
	.long	.LC590
	.long	.LC591
	.long	.LC36
	.long	.LC592
	.long	.LC593
	.section	.rodata
.LC594:
	.string	"no-crt0"
.LC595:
	.string	"No default crt0.o"
.LC596:
	.string	"int64"
.LC597:
	.string	"Use 64-bit int type"
.LC598:
	.string	"long64"
.LC599:
	.string	"Use 64-bit long type"
.LC600:
	.string	"long32"
.LC601:
	.string	"Use 32-bit long type"
.LC602:
	.string	"split-addresses"
	.align 4
.LC603:
	.string	"Optimize lui/addiu address loads"
.LC604:
	.string	"no-split-addresses"
	.align 4
.LC605:
	.string	"Don't optimize lui/addiu address loads"
.LC606:
	.string	"mips-as"
.LC607:
	.string	"Use MIPS as"
.LC608:
	.string	"gas"
.LC609:
	.string	"Use GNU as"
.LC610:
	.string	"rnames"
.LC611:
	.string	"Use symbolic register names"
.LC612:
	.string	"no-rnames"
	.align 4
.LC613:
	.string	"Don't use symbolic register names"
.LC614:
	.string	"gpOPT"
	.align 4
.LC615:
	.string	"Use GP relative sdata/sbss sections"
.LC616:
	.string	"gpopt"
.LC617:
	.string	"no-gpOPT"
	.align 4
.LC618:
	.string	"Don't use GP relative sdata/sbss sections"
.LC619:
	.string	"no-gpopt"
.LC620:
	.string	"stats"
.LC621:
	.string	"Output compiler statistics"
.LC622:
	.string	"no-stats"
	.align 4
.LC623:
	.string	"Don't output compiler statistics"
.LC624:
	.string	"memcpy"
.LC625:
	.string	"Don't optimize block moves"
.LC626:
	.string	"no-memcpy"
.LC627:
	.string	"Optimize block moves"
.LC628:
	.string	"mips-tfile"
.LC629:
	.string	"Use mips-tfile asm postpass"
.LC630:
	.string	"no-mips-tfile"
	.align 4
.LC631:
	.string	"Don't use mips-tfile asm postpass"
.LC632:
	.string	"soft-float"
.LC633:
	.string	"Use software floating point"
.LC634:
	.string	"hard-float"
.LC635:
	.string	"Use hardware floating point"
.LC636:
	.string	"fp64"
.LC637:
	.string	"Use 64-bit FP registers"
.LC638:
	.string	"fp32"
.LC639:
	.string	"Use 32-bit FP registers"
.LC640:
	.string	"gp64"
.LC641:
	.string	"Use 64-bit general registers"
.LC642:
	.string	"gp32"
.LC643:
	.string	"Use 32-bit general registers"
.LC644:
	.string	"abicalls"
.LC645:
	.string	"Use Irix PIC"
.LC646:
	.string	"no-abicalls"
.LC647:
	.string	"Don't use Irix PIC"
.LC648:
	.string	"long-calls"
.LC649:
	.string	"Use indirect calls"
.LC650:
	.string	"no-long-calls"
.LC651:
	.string	"Don't use indirect calls"
.LC652:
	.string	"embedded-pic"
.LC653:
	.string	"Use embedded PIC"
.LC654:
	.string	"no-embedded-pic"
.LC655:
	.string	"Don't use embedded PIC"
.LC656:
	.string	"embedded-data"
.LC657:
	.string	"Use ROM instead of RAM"
.LC658:
	.string	"no-embedded-data"
.LC659:
	.string	"Don't use ROM instead of RAM"
.LC660:
	.string	"uninit-const-in-rodata"
	.align 4
.LC661:
	.string	"Put uninitialized constants in ROM (needs -membedded-data)"
.LC662:
	.string	"no-uninit-const-in-rodata"
	.align 4
.LC663:
	.string	"Don't put uninitialized constants in ROM"
.LC664:
	.string	"eb"
.LC665:
	.string	"Use big-endian byte order"
.LC666:
	.string	"el"
.LC667:
	.string	"Use little-endian byte order"
.LC668:
	.string	"single-float"
.LC669:
	.string	"Use single (32-bit) FP only"
.LC670:
	.string	"double-float"
	.align 4
.LC671:
	.string	"Don't use single (32-bit) FP only"
.LC672:
	.string	"mad"
.LC673:
	.string	"Use multiply accumulate"
.LC674:
	.string	"no-mad"
.LC675:
	.string	"Don't use multiply accumulate"
.LC676:
	.string	"no-fused-madd"
	.align 4
.LC677:
	.string	"Don't generate fused multiply/add instructions"
.LC678:
	.string	"fused-madd"
	.align 4
.LC679:
	.string	"Generate fused multiply/add instructions"
.LC680:
	.string	"fix4300"
	.align 4
.LC681:
	.string	"Work around early 4300 hardware bug"
.LC682:
	.string	"no-fix4300"
	.align 4
.LC683:
	.string	"Don't work around early 4300 hardware bug"
.LC684:
	.string	"check-zero-division"
	.align 4
.LC685:
	.string	"Trap on integer divide by zero"
.LC686:
	.string	"no-check-zero-division"
	.align 4
.LC687:
	.string	"Don't trap on integer divide by zero"
.LC688:
	.string	"check-range-division"
	.align 4
.LC689:
	.string	"Trap on integer divide overflow"
.LC690:
	.string	"no-check-range-division"
	.align 4
.LC691:
	.string	"Don't trap on integer divide overflow"
.LC692:
	.string	"branch-likely"
	.align 4
.LC693:
	.string	"Use Branch Likely instructions, overriding default for arch"
.LC694:
	.string	"no-branch-likely"
	.align 4
.LC695:
	.string	"Don't use Branch Likely instructions, overriding default for arch"
.LC696:
	.string	"debug"
.LC697:
	.string	"debuga"
.LC698:
	.string	"debugb"
.LC699:
	.string	"debugc"
.LC700:
	.string	"debugd"
.LC701:
	.string	"debuge"
.LC702:
	.string	"debugf"
.LC703:
	.string	"debugg"
.LC704:
	.string	"debugi"
	.section	.data.rel.ro.local
	.align 32
	.type	target_switches, @object
	.size	target_switches, 744
target_switches:
	.long	.LC594
	.long	0
	.long	.LC595
	.long	.LC596
	.long	3
	.long	.LC597
	.long	.LC598
	.long	2
	.long	.LC599
	.long	.LC600
	.long	-3
	.long	.LC601
	.long	.LC602
	.long	4
	.long	.LC603
	.long	.LC604
	.long	-4
	.long	.LC605
	.long	.LC606
	.long	-16
	.long	.LC607
	.long	.LC608
	.long	16
	.long	.LC609
	.long	.LC610
	.long	32
	.long	.LC611
	.long	.LC612
	.long	-32
	.long	.LC613
	.long	.LC614
	.long	8
	.long	.LC615
	.long	.LC616
	.long	8
	.long	.LC615
	.long	.LC617
	.long	-8
	.long	.LC618
	.long	.LC619
	.long	-8
	.long	.LC618
	.long	.LC620
	.long	64
	.long	.LC621
	.long	.LC622
	.long	-64
	.long	.LC623
	.long	.LC624
	.long	128
	.long	.LC625
	.long	.LC626
	.long	-128
	.long	.LC627
	.long	.LC628
	.long	0
	.long	.LC629
	.long	.LC630
	.long	0
	.long	.LC631
	.long	.LC632
	.long	256
	.long	.LC633
	.long	.LC634
	.long	-256
	.long	.LC635
	.long	.LC636
	.long	512
	.long	.LC637
	.long	.LC638
	.long	-512
	.long	.LC639
	.long	.LC640
	.long	8192
	.long	.LC641
	.long	.LC642
	.long	-8192
	.long	.LC643
	.long	.LC644
	.long	1024
	.long	.LC645
	.long	.LC646
	.long	-1024
	.long	.LC647
	.long	.LC648
	.long	4096
	.long	.LC649
	.long	.LC650
	.long	-4096
	.long	.LC651
	.long	.LC652
	.long	16384
	.long	.LC653
	.long	.LC654
	.long	-16384
	.long	.LC655
	.long	.LC656
	.long	32768
	.long	.LC657
	.long	.LC658
	.long	-32768
	.long	.LC659
	.long	.LC660
	.long	8388608
	.long	.LC661
	.long	.LC662
	.long	-8388608
	.long	.LC663
	.long	.LC664
	.long	65536
	.long	.LC665
	.long	.LC666
	.long	-65536
	.long	.LC667
	.long	.LC668
	.long	131072
	.long	.LC669
	.long	.LC670
	.long	-131072
	.long	.LC671
	.long	.LC672
	.long	262144
	.long	.LC673
	.long	.LC674
	.long	-262144
	.long	.LC675
	.long	.LC676
	.long	16777216
	.long	.LC677
	.long	.LC678
	.long	-16777216
	.long	.LC679
	.long	.LC680
	.long	524288
	.long	.LC681
	.long	.LC682
	.long	-524288
	.long	.LC683
	.long	.LC684
	.long	-2097152
	.long	.LC685
	.long	.LC686
	.long	2097152
	.long	.LC687
	.long	.LC688
	.long	4194304
	.long	.LC689
	.long	.LC690
	.long	-4194304
	.long	.LC691
	.long	.LC692
	.long	33554432
	.long	.LC693
	.long	.LC694
	.long	-33554432
	.long	.LC695
	.long	.LC696
	.long	0
	.long	0
	.long	.LC697
	.long	0
	.long	0
	.long	.LC698
	.long	0
	.long	0
	.long	.LC699
	.long	0
	.long	0
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
	.long	.LC36
	.long	1040
	.long	0
	.section	.rodata
.LC705:
	.string	"tune="
	.align 4
.LC706:
	.string	"Specify CPU for scheduling purposes"
.LC707:
	.string	"arch="
	.align 4
.LC708:
	.string	"Specify CPU for code generation purposes"
.LC709:
	.string	"abi="
.LC710:
	.string	"Specify an ABI"
.LC711:
	.string	"ips"
.LC712:
	.string	"Specify a Standard MIPS ISA"
.LC713:
	.string	"entry"
	.align 4
.LC714:
	.string	"Use mips16 entry/exit psuedo ops"
.LC715:
	.string	"no-mips16"
.LC716:
	.string	"Don't use MIPS16 instructions"
.LC717:
	.string	"no-flush-func"
	.align 4
.LC718:
	.string	"Don't call any cache flush functions"
.LC719:
	.string	"flush-func="
.LC720:
	.string	"Specify cache flush function"
	.section	.data.rel.ro
	.align 32
	.type	target_options, @object
	.size	target_options, 96
target_options:
	.long	.LC705
	.long	mips_tune_string
	.long	.LC706
	.long	.LC707
	.long	mips_arch_string
	.long	.LC708
	.long	.LC709
	.long	mips_abi_string
	.long	.LC710
	.long	.LC711
	.long	mips_isa_string
	.long	.LC712
	.long	.LC713
	.long	mips_entry_string
	.long	.LC714
	.long	.LC715
	.long	mips_no_mips16_string
	.long	.LC716
	.long	.LC717
	.long	mips_cache_flush_func
	.long	.LC718
	.long	.LC719
	.long	mips_cache_flush_func
	.long	.LC720
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
.LC721:
	.string	"unused-function"
	.align 4
.LC722:
	.string	"Warn when a function is unused"
.LC723:
	.string	"unused-label"
.LC724:
	.string	"Warn when a label is unused"
.LC725:
	.string	"unused-parameter"
	.align 4
.LC726:
	.string	"Warn when a function parameter is unused"
.LC727:
	.string	"unused-variable"
	.align 4
.LC728:
	.string	"Warn when a variable is unused"
.LC729:
	.string	"unused-value"
	.align 4
.LC730:
	.string	"Warn when an expression value is unused"
.LC731:
	.string	"system-headers"
	.align 4
.LC732:
	.string	"Do not suppress warnings from system headers"
.LC733:
	.string	"error"
.LC734:
	.string	"Treat all warnings as errors"
.LC735:
	.string	"shadow"
	.align 4
.LC736:
	.string	"Warn when one local variable shadows another"
.LC737:
	.string	"switch"
	.align 4
.LC738:
	.string	"Warn about enumerated switches, with no default, missing a case"
.LC739:
	.string	"switch-default"
	.align 4
.LC740:
	.string	"Warn about enumerated switches missing a default case"
.LC741:
	.string	"switch-enum"
	.align 4
.LC742:
	.string	"Warn about all enumerated switches missing a specific case"
.LC743:
	.string	"aggregate-return"
	.align 4
.LC744:
	.string	"Warn about returning structures, unions or arrays"
.LC745:
	.string	"cast-align"
	.align 4
.LC746:
	.string	"Warn about pointer casts which increase alignment"
.LC747:
	.string	"unreachable-code"
	.align 4
.LC748:
	.string	"Warn about code that will never be executed"
.LC749:
	.string	"uninitialized"
	.align 4
.LC750:
	.string	"Warn about uninitialized automatic variables"
	.align 4
.LC751:
	.string	"Warn when an inlined function cannot be inlined"
.LC752:
	.string	"packed"
	.align 4
.LC753:
	.string	"Warn when the packed attribute has no effect on struct layout"
.LC754:
	.string	"padded"
	.align 4
.LC755:
	.string	"Warn when padding is required to align struct members"
.LC756:
	.string	"disabled-optimization"
	.align 4
.LC757:
	.string	"Warn when an optimization pass is disabled"
.LC758:
	.string	"deprecated-declarations"
	.align 4
.LC759:
	.string	"Warn about uses of __attribute__((deprecated)) declarations"
.LC760:
	.string	"missing-noreturn"
	.align 4
.LC761:
	.string	"Warn about functions which might be candidates for attribute noreturn"
	.align 4
.LC762:
	.string	"Warn about code which might break the strict aliasing rules"
	.section	.data.rel.ro
	.align 32
	.type	W_options, @object
	.size	W_options, 352
W_options:
	.long	.LC721
	.long	warn_unused_function
	.long	1
	.long	.LC722
	.long	.LC723
	.long	warn_unused_label
	.long	1
	.long	.LC724
	.long	.LC725
	.long	warn_unused_parameter
	.long	1
	.long	.LC726
	.long	.LC727
	.long	warn_unused_variable
	.long	1
	.long	.LC728
	.long	.LC729
	.long	warn_unused_value
	.long	1
	.long	.LC730
	.long	.LC731
	.long	warn_system_headers
	.long	1
	.long	.LC732
	.long	.LC733
	.long	warnings_are_errors
	.long	1
	.long	.LC734
	.long	.LC735
	.long	warn_shadow
	.long	1
	.long	.LC736
	.long	.LC737
	.long	warn_switch
	.long	1
	.long	.LC738
	.long	.LC739
	.long	warn_switch_default
	.long	1
	.long	.LC740
	.long	.LC741
	.long	warn_switch_enum
	.long	1
	.long	.LC742
	.long	.LC743
	.long	warn_aggregate_return
	.long	1
	.long	.LC744
	.long	.LC745
	.long	warn_cast_align
	.long	1
	.long	.LC746
	.long	.LC747
	.long	warn_notreached
	.long	1
	.long	.LC748
	.long	.LC749
	.long	warn_uninitialized
	.long	1
	.long	.LC750
	.long	.LC145
	.long	warn_inline
	.long	1
	.long	.LC751
	.long	.LC752
	.long	warn_packed
	.long	1
	.long	.LC753
	.long	.LC754
	.long	warn_padded
	.long	1
	.long	.LC755
	.long	.LC756
	.long	warn_disabled_optimization
	.long	1
	.long	.LC757
	.long	.LC758
	.long	warn_deprecated_decl
	.long	1
	.long	.LC759
	.long	.LC760
	.long	warn_missing_noreturn
	.long	1
	.long	.LC761
	.long	.LC249
	.long	warn_strict_aliasing
	.long	1
	.long	.LC762
	.text
.globl set_Wunused
	.type	set_Wunused, @function
set_Wunused:
.LFB15:
	.file 1 "../../../kgccfe/gnu/toplev.c"
	.loc 1 1649 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1650 0
	movl	warn_unused_function@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1651 0
	movl	warn_unused_label@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1655 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 1656 0
	movl	warn_unused_parameter@GOT(%ecx), %eax
	movl	$0, (%eax)
	jmp	.L4
.L2:
	.loc 1 1657 0
	movl	warn_unused_parameter@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L4
	.loc 1 1658 0
	movl	warn_unused_parameter@GOT(%ecx), %eax
	movl	$-1, (%eax)
.L4:
	.loc 1 1659 0
	movl	warn_unused_variable@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1660 0
	movl	warn_unused_value@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1661 0
	popl	%ebp
	ret
.LFE15:
	.size	set_Wunused, .-set_Wunused
.globl set_fast_math_flags
	.type	set_fast_math_flags, @function
set_fast_math_flags:
.LFB16:
	.loc 1 1669 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1670 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	flag_trapping_math@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 1671 0
	movl	flag_unsafe_math_optimizations@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1672 0
	movl	flag_finite_math_only@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1673 0
	cmpl	$0, 8(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	flag_errno_math@GOT(%ecx), %eax
	movl	%edx, (%eax)
	.loc 1 1674 0
	cmpl	$0, 8(%ebp)
	je	.L10
	.loc 1 1675 0
	movl	flag_signaling_nans@GOT(%ecx), %eax
	movl	$0, (%eax)
.L10:
	.loc 1 1676 0
	popl	%ebp
	ret
.LFE16:
	.size	set_fast_math_flags, .-set_fast_math_flags
.globl fast_math_flags_set_p
	.type	fast_math_flags_set_p, @function
fast_math_flags_set_p:
.LFB17:
	.loc 1 1681 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	subl	$4, %esp
.LCFI6:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1682 0
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
	.loc 1 1686 0
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
.LC763:
	.string	"invalid option `%s'"
	.text
.globl read_integral_parameter
	.type	read_integral_parameter, @function
read_integral_parameter:
.LFB18:
	.loc 1 1710 0
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
	.loc 1 1711 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1713 0
	jmp	.L20
.L21:
	.loc 1 1715 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 1716 0
	addl	$1, -8(%ebp)
.L20:
	.loc 1 1713 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L21
.L22:
	.loc 1 1721 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L24
	.loc 1 1723 0
	cmpl	$0, 12(%ebp)
	je	.L26
	.loc 1 1724 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC763@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L26:
	.loc 1 1725 0
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L28
.L24:
	.loc 1 1728 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -24(%ebp)
.L28:
	movl	-24(%ebp), %eax
	.loc 1 1729 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	read_integral_parameter, .-read_integral_parameter
	.section	.rodata
.LC764:
	.string	"%s:\n"
	.text
.globl dump_parse_tree
	.type	dump_parse_tree, @function
dump_parse_tree:
.LFB19:
	.loc 1 1734 0
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
	.loc 1 1735 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 1737 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC764@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 1738 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_tree@PLT
.L33:
	.loc 1 1744 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	dump_parse_tree, .-dump_parse_tree
	.section	.rodata
	.type	__FUNCTION__.15500, @object
	.size	__FUNCTION__.15500, 9
__FUNCTION__.15500:
	.string	"do_abort"
.LC765:
	.string	"../../../kgccfe/gnu/toplev.c"
	.text
.globl do_abort
	.type	do_abort, @function
do_abort:
.LFB20:
	.loc 1 1753 0
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
	.loc 1 1754 0
	leal	__FUNCTION__.15500@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1754, 4(%esp)
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.LFE20:
	.size	do_abort, .-do_abort
	.section	.rodata
	.type	__FUNCTION__.15504, @object
	.size	__FUNCTION__.15504, 6
__FUNCTION__.15504:
	.string	"botch"
	.text
.globl botch
	.type	botch, @function
botch:
.LFB21:
	.loc 1 1763 0
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
	.loc 1 1764 0
	leal	__FUNCTION__.15504@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1764, 4(%esp)
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.LFE21:
	.size	botch, .-botch
.globl exact_log2_wide
	.type	exact_log2_wide, @function
exact_log2_wide:
.LFB22:
	.loc 1 1775 0
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
	.loc 1 1776 0
	movl	$0, -12(%ebp)
	.loc 1 1778 0
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
	.loc 1 1779 0
	movl	$-1, -36(%ebp)
	jmp	.L42
.L44:
	.loc 1 1781 0
	addl	$1, -12(%ebp)
.L43:
	.loc 1 1780 0
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
	.loc 1 1782 0
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
.L42:
	movl	-36(%ebp), %eax
	.loc 1 1783 0
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
	.loc 1 1793 0
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
	.loc 1 1794 0
	movl	$-1, -4(%ebp)
	.loc 1 1795 0
	jmp	.L48
.L49:
	.loc 1 1796 0
	addl	$1, -4(%ebp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
.L48:
	.loc 1 1795 0
	movl	-24(%ebp), %eax
	orl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L49
	.loc 1 1798 0
	movl	-4(%ebp), %eax
	.loc 1 1799 0
	leave
	ret
.LFE23:
	.size	floor_log2_wide, .-floor_log2_wide
	.section	.rodata
.LC766:
	.string	"%s"
	.text
	.type	crash_signal, @function
crash_signal:
.LFB24:
	.loc 1 1807 0
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
	.loc 1 1808 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strsignal@PLT
	movl	%eax, 4(%esp)
	leal	.LC766@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.LFE24:
	.size	crash_signal, .-crash_signal
.globl strip_off_ending
	.type	strip_off_ending, @function
strip_off_ending:
.LFB25:
	.loc 1 1820 0
	pushl	%ebp
.LCFI35:
	movl	%esp, %ebp
.LCFI36:
	subl	$16, %esp
.LCFI37:
	.loc 1 1822 0
	movl	$2, -4(%ebp)
	jmp	.L55
.L56:
	.loc 1 1824 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	addl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L57
	.loc 1 1826 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	subl	%edx, %eax
	addl	8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 1827 0
	jmp	.L61
.L57:
	.loc 1 1822 0
	addl	$1, -4(%ebp)
.L55:
	cmpl	$5, -4(%ebp)
	jg	.L61
	movl	12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jg	.L56
.L61:
	.loc 1 1830 0
	leave
	ret
.LFE25:
	.size	strip_off_ending, .-strip_off_ending
	.section	.rodata
.LC767:
	.string	"\\%03o"
	.text
.globl output_quoted_string
	.type	output_quoted_string, @function
output_quoted_string:
.LFB26:
	.loc 1 1838 0
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
	.loc 1 1844 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1845 0
	jmp	.L72
.L64:
	.loc 1 1847 0
	movzbl	-5(%ebp), %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 1849 0
	cmpb	$34, -5(%ebp)
	je	.L67
	cmpb	$92, -5(%ebp)
	jne	.L69
.L67:
	.loc 1 1850 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$92, (%esp)
	call	putc_unlocked@PLT
.L69:
	.loc 1 1851 0
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	putc_unlocked@PLT
	jmp	.L63
.L65:
	.loc 1 1854 0
	movzbl	-5(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC767@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L63:
.L72:
	.loc 1 1845 0
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -5(%ebp)
	cmpb	$0, -5(%ebp)
	setne	%al
	addl	$1, 12(%ebp)
	testb	%al, %al
	jne	.L64
	.loc 1 1856 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1858 0
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
	.loc 1 1866 0
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
	.loc 1 1868 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1871 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	clean_symbol_name@PLT
	.loc 1 1873 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 1874 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1875 0
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
	.loc 1 1884 0
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
	.loc 1 1885 0
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
	.loc 1 1886 0
	movl	-16(%ebp), %eax
	addl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1889 0
	jmp	.L76
.L77:
	.loc 1 1891 0
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	je	.L78
	.loc 1 1893 0
	subl	$1, -12(%ebp)
.L76:
	.loc 1 1889 0
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	ja	.L77
.L78:
	.loc 1 1900 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_output_filename@PLT
	.loc 1 1907 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	output_file_directive, .-output_file_directive
	.section	.rodata
.LC768:
	.string	".%02d."
.LC769:
	.string	"w"
.LC770:
	.string	"a"
.LC771:
	.string	"can't open %s"
.LC772:
	.string	" (unlikely executed)"
.LC773:
	.string	" (hot)"
.LC774:
	.string	"\n;; Function %s%s\n\n"
	.text
	.type	open_dump_file, @function
open_dump_file:
.LFB29:
	.loc 1 1915 0
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
	.loc 1 1915 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1920 0
	movl	8(%ebp), %eax
	movzbl	6+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	jne	.L82
	.loc 1 1921 0
	movl	$0, -52(%ebp)
	jmp	.L84
.L82:
	.loc 1 1923 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 1924 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 1925 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
.L85:
	.loc 1 1927 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC768@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1929 0
	movl	8(%ebp), %eax
	movzbl	7+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	jne	.L87
	.loc 1 1932 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L89
	movl	8(%ebp), %eax
	movzbl	5+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L89
	.loc 1 1935 0
	movl	8(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1936 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	clean_graph_dump_file@PLT
	.loc 1 1937 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L89:
	.loc 1 1939 0
	movl	8(%ebp), %eax
	movb	$1, 7+dump_file@GOTOFF(%ebx,%eax,8)
	.loc 1 1940 0
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L92
.L87:
	.loc 1 1943 0
	leal	.LC770@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L92:
	.loc 1 1945 0
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
	.loc 1 1948 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	fopen@PLT
	movl	%eax, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1949 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L93
	.loc 1 1950 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC771@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L93:
	.loc 1 1952 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1954 0
	cmpl	$0, -40(%ebp)
	je	.L95
	.loc 1 1955 0
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
	leal	.LC772@GOTOFF(%ebx), %edx
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
	leal	.LC773@GOTOFF(%ebx), %eax
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
	leal	.LC774@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L95:
	.loc 1 1963 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
	.loc 1 1964 0
	movl	$1, -52(%ebp)
.L84:
	movl	-52(%ebp), %eax
	.loc 1 1965 0
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
	.loc 1 1974 0
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
	.loc 1 1974 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 1975 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L115
	.loc 1 1978 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 1979 0
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
	.loc 1 1986 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC768@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 1987 0
	movl	8(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1988 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl_graph_with_bb@PLT
	.loc 1 1989 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L108:
.LBE2:
	.loc 1 1992 0
	cmpl	$0, -40(%ebp)
	je	.L112
	cmpl	$0, -44(%ebp)
	je	.L112
	.loc 1 1993 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	movl	-40(%ebp), %eax
	call	*%eax
.L112:
	.loc 1 1995 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
	.loc 1 1996 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 1998 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1999 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L115:
	.loc 1 2000 0
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
	.loc 1 2011 0
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
	.loc 1 2015 0
	movl	$0, -12(%ebp)
	.loc 1 2017 0
	movl	$0, -20(%ebp)
	jmp	.L118
.L119:
	.loc 1 2019 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2023 0
	movl	-24(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L120
	.loc 1 2024 0
	movl	-24(%ebp), %eax
	movzbl	34(%eax), %edx
	andl	$127, %edx
	movb	%dl, 34(%eax)
.L120:
	.loc 1 2026 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L122
	movl	-24(%ebp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L122
	.loc 1 2027 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L122:
	.loc 1 2017 0
	addl	$1, -20(%ebp)
.L118:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L119
.L125:
	.loc 1 2035 0
	movl	$0, -16(%ebp)
	.loc 1 2036 0
	movl	$0, -20(%ebp)
	jmp	.L126
.L127:
	.loc 1 2038 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2040 0
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
	.loc 1 2068 0
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
	.loc 1 2070 0
	movb	$1, -5(%ebp)
	.loc 1 2072 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L134
	.loc 1 2074 0
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L136
	.loc 1 2075 0
	movb	$0, -5(%ebp)
	jmp	.L134
.L136:
	.loc 1 2076 0
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
	.loc 1 2079 0
	movb	$0, -5(%ebp)
.L134:
	.loc 1 2081 0
	cmpb	$0, -5(%ebp)
	je	.L131
	.loc 1 2083 0
	movl	$1, -16(%ebp)
	.loc 1 2084 0
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	rest_of_decl_compilation@PLT
.L131:
.LBE3:
	.loc 1 2088 0
	movl	-24(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L144
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	.L144
	movl	-24(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L144
	movl	flag_keep_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L148
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L150
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L148
.L150:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L144
.L148:
	.loc 1 2095 0
	movl	$1, -16(%ebp)
	.loc 1 2096 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	output_inline_function@PLT
.L144:
	.loc 1 2100 0
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L128:
	.loc 1 2036 0
	addl	$1, -20(%ebp)
.L126:
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L127
	.loc 1 2104 0
	cmpl	$0, -16(%ebp)
	je	.L153
	.loc 1 2105 0
	movl	$1, -12(%ebp)
.L153:
	.loc 1 2107 0
	cmpl	$0, -16(%ebp)
	jne	.L125
	.loc 1 2109 0
	movl	-12(%ebp), %eax
	.loc 1 2110 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	wrapup_global_declarations, .-wrapup_global_declarations
	.section	.rodata
.LC775:
	.string	"`%s' used but never defined"
	.align 4
.LC776:
	.string	"`%s' declared `static' but never defined"
.LC777:
	.string	"`%s' defined but not used"
	.text
.globl check_global_declarations
	.type	check_global_declarations, @function
check_global_declarations:
.LFB32:
	.loc 1 2119 0
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
	.loc 1 2123 0
	movl	$0, -8(%ebp)
	jmp	.L158
.L159:
	.loc 1 2125 0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2127 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L160
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L160
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L160
	.loc 1 2132 0
	movl	-12(%ebp), %eax
	movl	$0, 88(%eax)
.L160:
	.loc 1 2139 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L164
	movl	warn_unused_function@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L166
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L164
.L166:
	movl	-12(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	jne	.L164
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L164
	movl	-12(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L164
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L164
	.loc 1 2147 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L172
	.loc 1 2148 0
	leal	.LC775@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pedwarn_with_decl@PLT
	jmp	.L174
.L172:
	.loc 1 2151 0
	leal	.LC776@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L174:
	.loc 1 2154 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 2155 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_external@PLT
.L164:
	.loc 1 2159 0
	movl	warn_unused_function@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L175
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	je	.L177
.L175:
	movl	warn_unused_variable@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L178
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L178
	movl	-12(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L178
.L177:
	movl	-12(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L178
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L178
	movl	-12(%ebp), %eax
	movl	52(%eax), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L178
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L178
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L178
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L186
	movl	-12(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L178
.L186:
	movl	lang_hooks@GOT(%ebx), %eax
	movl	244(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	testb	%al, %al
	je	.L178
	.loc 1 2175 0
	leal	.LC777@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L178:
	.loc 1 2179 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L189
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	jne	.L189
	.loc 1 2181 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2185 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L189:
	.loc 1 2123 0
	addl	$1, -8(%ebp)
.L158:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L159
	.loc 1 2188 0
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
	.loc 1 2198 0
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
	.loc 1 2201 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L195
	.loc 1 2203 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 2204 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%edx)
.L195:
	.loc 1 2207 0
	movl	$12, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2208 0
	movl	input_filename@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2209 0
	movl	lineno@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 2210 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2211 0
	movl	input_file_stack@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2212 0
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2213 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	push_srcloc, .-push_srcloc
	.section	.rodata
	.type	__FUNCTION__.15920, @object
	.size	__FUNCTION__.15920, 11
__FUNCTION__.15920:
	.string	"pop_srcloc"
	.text
.globl pop_srcloc
	.type	pop_srcloc, @function
pop_srcloc:
.LFB34:
	.loc 1 2221 0
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
	.loc 1 2224 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2225 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	input_file_stack@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2226 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2227 0
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	input_file_stack_tick@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2229 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L199
	.loc 1 2230 0
	leal	__FUNCTION__.15920@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2230, 4(%esp)
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L199:
	.loc 1 2231 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2232 0
	movl	input_file_stack@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2233 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	pop_srcloc, .-pop_srcloc
	.section	.rodata
.LC778:
	.string	"gccaux"
	.text
.globl compile_file
	.type	compile_file, @function
compile_file:
.LFB35:
	.loc 1 2250 0
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
	.loc 1 2254 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L203
	.loc 1 2255 0
	cmpl	$0, 8(%ebp)
	je	.L205
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L207
.L205:
	leal	.LC778@GOTOFF(%ebx), %edx
	movl	%edx, -8(%ebp)
.L207:
	movl	aux_base_name@GOT(%ebx), %eax
	movl	-8(%ebp), %edx
	movl	%edx, (%eax)
.L203:
	.loc 1 2258 0
	movl	main_input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	init_final@PLT
	.loc 1 2259 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	init_branch_prob@PLT
	.loc 1 2261 0
	movl	$10, (%esp)
	call	timevar_push@PLT
	.loc 1 2265 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	28(%eax), %edx
	movl	set_yydebug@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2269 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	32(%eax), %eax
	call	*%eax
	.loc 1 2272 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L208
	.loc 1 2274 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	close_dump_file
.L208:
	.loc 1 2280 0
	movl	$10, (%esp)
	call	timevar_pop@PLT
	.loc 1 2282 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L219
	.loc 1 2285 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	248(%eax), %eax
	call	*%eax
	.loc 1 2294 0
	call	output_func_start_profiler@PLT
	.loc 1 2298 0
	call	weak_finish@PLT
	.loc 1 2300 0
	call	WFE_Alias_Finish@PLT
	.loc 1 2318 0
	call	dw2_output_indirect_constants@PLT
	.loc 1 2320 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	end_final@PLT
	.loc 1 2322 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L212
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L212
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L215
.L212:
	.loc 1 2324 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 2325 0
	movl	$0, 4(%esp)
	movl	$14, (%esp)
	call	open_dump_file
	.loc 1 2327 0
	call	end_branch_prob@PLT
	.loc 1 2329 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$14, (%esp)
	call	close_dump_file
	.loc 1 2330 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L215:
	.loc 1 2350 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L216
	movl	$0, 4(%esp)
	movl	$19, (%esp)
	call	open_dump_file
	testl	%eax, %eax
	je	.L216
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
.L216:
	.loc 1 2359 0
	call	finalize
	.loc 1 2362 0
	movl	$0, (%esp)
	call	timevar_stop@PLT
	.loc 1 2363 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	timevar_print@PLT
.L219:
	.loc 1 2365 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	compile_file, .-compile_file
	.section	.rodata
.LC779:
	.string	"alias"
	.align 4
.LC780:
	.string	"invalid register name `%s' for register variable"
	.text
.globl rest_of_decl_compilation
	.type	rest_of_decl_compilation, @function
rest_of_decl_compilation:
.LFB36:
	.loc 1 2386 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$36, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB4:
	.loc 1 2399 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC779@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lookup_attribute@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2400 0
	cmpl	$0, -8(%ebp)
	je	.L221
	.loc 1 2402 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2403 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2404 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_alias@PLT
.L221:
.LBE4:
	.loc 1 2410 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L223
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L223
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L226
.L223:
	.loc 1 2413 0
	movl	$15, (%esp)
	call	timevar_push@PLT
	.loc 1 2415 0
	cmpl	$0, 12(%ebp)
	je	.L227
	.loc 1 2416 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
.L227:
	.loc 1 2430 0
	movl	$15, (%esp)
	call	timevar_pop@PLT
	.loc 1 2410 0
	jmp	.L240
.L226:
	.loc 1 2432 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L230
	cmpl	$0, 12(%ebp)
	je	.L230
	.loc 1 2434 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	testl	%eax, %eax
	js	.L233
	.loc 1 2436 0
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 2437 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	.loc 1 2439 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	WFE_Record_Asmspec_For_ST@PLT
	jmp	.L240
.L233:
	.loc 1 2444 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC780@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 2445 0
	movl	8(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-5, %eax
	movb	%al, 33(%edx)
	.loc 1 2446 0
	cmpl	$0, 16(%ebp)
	jne	.L240
	.loc 1 2447 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	expand_decl@PLT
	.loc 1 2432 0
	jmp	.L240
.L230:
	.loc 1 2451 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L237
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L240
.L237:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L240
	.loc 1 2454 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2455 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
	.loc 1 2456 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L240:
	.loc 1 2481 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	rest_of_decl_compilation, .-rest_of_decl_compilation
.globl rest_of_type_compilation
	.type	rest_of_type_compilation, @function
rest_of_type_compilation:
.LFB37:
	.loc 1 2494 0
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
	.loc 1 2497 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L249
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	je	.L244
	.loc 1 2498 0
	jmp	.L249
.L244:
	.loc 1 2500 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 2502 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L246
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$5, %eax
	jne	.L248
.L246:
	.loc 1 2503 0
	cmpl	$0, 12(%ebp)
	sete	%al
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	dbxout_symbol@PLT
.L248:
	.loc 1 2517 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L249:
	.loc 1 2518 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	rest_of_type_compilation, .-rest_of_type_compilation
	.section	.rodata
	.type	__FUNCTION__.16073, @object
	.size	__FUNCTION__.16073, 20
__FUNCTION__.16073:
	.string	"rest_of_compilation"
.LC781:
	.string	";; (integrable)\n\n"
	.text
.globl rest_of_compilation
	.type	rest_of_compilation, @function
rest_of_compilation:
.LFB38:
	.loc 1 2529 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%esi
.LCFI89:
	pushl	%ebx
.LCFI90:
	subl	$176, %esp
.LCFI91:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2532 0
	movl	$0, -76(%ebp)
	.loc 1 2536 0
	movl	$49, (%esp)
	call	timevar_push@PLT
	.loc 1 2540 0
	movl	generating_concat_p@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2544 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	cse_not_expected@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2548 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L251
	.loc 1 2549 0
	call	identify_blocks@PLT
.L251:
	.loc 1 2553 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L253
	.loc 1 2554 0
	call	reorder_blocks@PLT
.L253:
	.loc 1 2556 0
	call	init_flow@PLT
	.loc 1 2561 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	jne	.L255
.LBB5:
	.loc 1 2563 0
	movl	$0, -64(%ebp)
	.loc 1 2571 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2572 0
	jmp	.L257
.L258:
	.loc 1 2574 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L259
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L259
	movl	-60(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L259
	.loc 1 2577 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 2578 0
	jmp	.L263
.L259:
	.loc 1 2580 0
	movl	-60(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %edx
	movl	tree_code_type@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$116, %al
	je	.L264
	.loc 1 2573 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	get_containing_scope@PLT
	movl	%eax, -60(%ebp)
.L257:
	.loc 1 2572 0
	cmpl	$0, -60(%ebp)
	jne	.L258
.L264:
	.loc 1 2585 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L266
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L268
.L266:
	movl	flag_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L269
.L268:
	.loc 1 2588 0
	movl	$16, (%esp)
	call	timevar_push@PLT
	.loc 1 2589 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	function_cannot_inline_p@PLT
	movl	%eax, -56(%ebp)
	.loc 1 2590 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
	.loc 1 2591 0
	cmpl	$0, -56(%ebp)
	jne	.L270
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L272
.L270:
	.loc 1 2593 0
	movl	warn_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L273
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L273
	.loc 1 2594 0
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	warning_with_decl@PLT
.L273:
	.loc 1 2595 0
	movl	8(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 2599 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L269
	.loc 1 2601 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 2602 0
	jmp	.L263
.L272:
	.loc 1 2612 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L278
	.loc 1 2613 0
	movl	8(%ebp), %eax
	movzbl	37(%eax), %edx
	orl	$8, %edx
	movb	%dl, 37(%eax)
.L278:
	.loc 1 2614 0
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
.L269:
	.loc 1 2618 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2622 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	open_dump_file
	testl	%eax, %eax
	je	.L280
	.loc 1 2624 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	je	.L282
	.loc 1 2625 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$17, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC781@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
.L282:
	.loc 1 2626 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	close_dump_file
.L280:
	.loc 1 2632 0
	call	convert_from_eh_region_ranges@PLT
	.loc 1 2641 0
	cmpl	$0, -64(%ebp)
	jne	.L284
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L286
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L288
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L288
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L288
	movl	flag_keep_inline_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L284
.L288:
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L286
.L284:
	.loc 1 2647 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 34(%eax)
.L286:
	.loc 1 2649 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L292
	.loc 1 2655 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L292:
	.loc 1 2657 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L294
	.loc 1 2663 0
	movl	warn_return_type@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L296
.LBB6:
	.loc 1 2665 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2667 0
	movl	optimize@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2668 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 2669 0
	call	find_exception_handler_labels@PLT
	.loc 1 2670 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
	.loc 1 2671 0
	movl	$24, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 2672 0
	movl	optimize@GOT(%ebx), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2675 0
	call	free_bb_for_insn@PLT
.L296:
.LBE6:
	.loc 1 2678 0
	call	set_nothrow_function_flags@PLT
	.loc 1 2679 0
	movl	current_function_nothrow@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L298
	.loc 1 2682 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$2, %eax
	movb	%al, 10(%edx)
.L298:
	.loc 1 2684 0
	movl	$16, (%esp)
	call	timevar_push@PLT
	.loc 1 2685 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_for_inline@PLT
	.loc 1 2686 0
	movl	$16, (%esp)
	call	timevar_pop@PLT
	.loc 1 2687 0
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	-64(%ebp), %eax
	movl	%eax, 248(%edx)
	.loc 1 2688 0
	jmp	.L263
.L294:
	.loc 1 2694 0
	movl	8(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L263
.L255:
.LBE5:
.LBB7:
	.loc 1 2702 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2703 0
	jmp	.L300
.L301:
	.loc 1 2705 0
	movl	-48(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L302
	.loc 1 2706 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
.L302:
	.loc 1 2704 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	get_containing_scope@PLT
	movl	%eax, -48(%ebp)
.L300:
	.loc 1 2703 0
	cmpl	$0, -48(%ebp)
	jne	.L301
.LBE7:
	.loc 1 2720 0
	call	remove_unnecessary_notes@PLT
	.loc 1 2721 0
	call	reorder_blocks@PLT
	.loc 1 2723 0
	call	ggc_collect@PLT
	.loc 1 2726 0
	call	init_function_for_compilation@PLT
	.loc 1 2728 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L305
	.loc 1 2729 0
	movl	8(%ebp), %eax
	movzbl	9(%eax), %edx
	orl	$64, %edx
	movb	%dl, 9(%eax)
.L305:
	.loc 1 2737 0
	movl	rtx_equal_function_value_matters@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2738 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	purge_hard_subreg_sets@PLT
	.loc 1 2743 0
	movl	rtl_dump_and_exit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	.loc 1 2754 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 2755 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	open_dump_file
	.loc 1 2756 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2757 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 2758 0
	call	find_exception_handler_labels@PLT
	.loc 1 2759 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
	.loc 1 2761 0
	call	delete_unreachable_blocks@PLT
	.loc 1 2765 0
	call	check_function_return_warnings@PLT
	.loc 1 2768 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L311
	.loc 1 2770 0
	movl	$23, (%esp)
	call	timevar_push@PLT
	.loc 1 2771 0
	call	note_prediction_to_br_prob@PLT
	.loc 1 2772 0
	movl	$23, (%esp)
	call	timevar_pop@PLT
.L311:
	.loc 1 2777 0
	movl	flag_optimize_sibling_calls@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L313
.LBB8:
	.loc 1 2780 0
	call	optimize_sibling_and_tail_recursive_calls@PLT
	.loc 1 2783 0
	call	free_bb_for_insn@PLT
	.loc 1 2784 0
	call	find_exception_handler_labels@PLT
	.loc 1 2785 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 2786 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
	.loc 1 2794 0
	call	get_insns@PLT
	movl	%eax, -44(%ebp)
	jmp	.L315
.L316:
	.loc 1 2795 0
	movl	-44(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L317
	movl	-44(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-81, %eax
	jne	.L317
	.loc 1 2797 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L317:
	.loc 1 2794 0
	movl	-44(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
.L315:
	cmpl	$0, -44(%ebp)
	jne	.L316
.L313:
.LBE8:
	.loc 1 2799 0
	call	get_insns@PLT
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	close_dump_file
	.loc 1 2800 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
	.loc 1 2802 0
	call	scope_to_insns_initialize@PLT
	.loc 1 2804 0
	movl	$0, (%esp)
	call	doing_eh@PLT
	testl	%eax, %eax
	je	.L320
	.loc 1 2806 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 2807 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	open_dump_file
	.loc 1 2809 0
	call	finish_eh_generation@PLT
	.loc 1 2811 0
	call	get_insns@PLT
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$2, (%esp)
	call	close_dump_file
	.loc 1 2812 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
.L320:
	.loc 1 2817 0
	call	emit_initial_value_sets@PLT
	.loc 1 2828 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2831 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	unshare_all_rtl@PLT
	.loc 1 2843 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	instantiate_virtual_regs@PLT
	.loc 1 2845 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	open_dump_file
	.loc 1 2851 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 2854 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L322
	.loc 1 2855 0
	call	expected_value_to_br_prob@PLT
.L322:
	.loc 1 2857 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 2858 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 2859 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
	.loc 1 2860 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 2861 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L324
	.loc 1 2862 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L324:
	.loc 1 2863 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L326
	movl	$17, -164(%ebp)
	jmp	.L328
.L326:
	movl	$16, -164(%ebp)
.L328:
	movl	flag_thread_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L329
	movl	$64, -160(%ebp)
	jmp	.L331
.L329:
	movl	$0, -160(%ebp)
.L331:
	movl	-164(%ebp), %eax
	orl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 2867 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L332
	.loc 1 2869 0
	call	free_bb_for_insn@PLT
	.loc 1 2870 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	copy_loop_headers@PLT
	.loc 1 2871 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
.L332:
	.loc 1 2873 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_line_number_notes@PLT
	.loc 1 2875 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
	.loc 1 2876 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	close_dump_file
	.loc 1 2879 0
	movl	rtl_dump_and_exit@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L263
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L263
	.loc 1 2887 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L337
	movl	flag_ssa@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L337
	.loc 1 2891 0
	movl	$43, (%esp)
	call	timevar_push@PLT
	.loc 1 2892 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	open_dump_file
	.loc 1 2894 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 2895 0
	call	convert_to_ssa@PLT
	.loc 1 2897 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	close_dump_file
	.loc 1 2898 0
	movl	$43, (%esp)
	call	timevar_pop@PLT
	.loc 1 2901 0
	movl	flag_ssa_ccp@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L340
	.loc 1 2903 0
	movl	$44, (%esp)
	call	timevar_push@PLT
	.loc 1 2904 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	open_dump_file
	.loc 1 2906 0
	call	ssa_const_prop@PLT
	.loc 1 2908 0
	call	get_insns@PLT
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$5, (%esp)
	call	close_dump_file
	.loc 1 2909 0
	movl	$44, (%esp)
	call	timevar_pop@PLT
.L340:
	.loc 1 2921 0
	movl	flag_ssa_dce@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L342
	.loc 1 2925 0
	movl	$45, (%esp)
	call	timevar_push@PLT
	.loc 1 2926 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	open_dump_file
	.loc 1 2928 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	.loc 1 2929 0
	call	ssa_eliminate_dead_code@PLT
	.loc 1 2931 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	close_dump_file
	.loc 1 2932 0
	movl	$45, (%esp)
	call	timevar_pop@PLT
.L342:
	.loc 1 2937 0
	movl	$46, (%esp)
	call	timevar_push@PLT
	.loc 1 2938 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	open_dump_file
	.loc 1 2940 0
	call	convert_from_ssa@PLT
	.loc 1 2942 0
	call	max_reg_num@PLT
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 2944 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	close_dump_file
	.loc 1 2945 0
	movl	$46, (%esp)
	call	timevar_pop@PLT
	.loc 1 2947 0
	call	ggc_collect@PLT
.L337:
	.loc 1 2950 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 2951 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L344
	.loc 1 2952 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
.L344:
	.loc 1 2955 0
	movl	flag_delete_null_pointer_checks@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L346
	.loc 1 2957 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	open_dump_file
	.loc 1 2958 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L348
	.loc 1 2959 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L348:
	.loc 1 2961 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_null_pointer_checks@PLT
	testl	%eax, %eax
	je	.L350
	.loc 1 2962 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
.L350:
	.loc 1 2964 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	close_dump_file
.L346:
	.loc 1 2972 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	renumber_insns@PLT
	.loc 1 2973 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
	.loc 1 2975 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$3, (%esp)
	call	close_dump_file
	.loc 1 2977 0
	call	ggc_collect@PLT
	.loc 1 2984 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L352
	.loc 1 2986 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	open_dump_file
	.loc 1 2987 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L354
	.loc 1 2988 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L354:
	.loc 1 2989 0
	movl	$18, (%esp)
	call	timevar_push@PLT
	.loc 1 2991 0
	call	max_reg_num@PLT
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 2993 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_main@PLT
	movl	%eax, -80(%ebp)
	.loc 1 2994 0
	cmpl	$0, -80(%ebp)
	je	.L356
	.loc 1 2995 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
.L356:
	.loc 1 2996 0
	movl	$0, (%esp)
	call	purge_all_dead_edges@PLT
	.loc 1 2998 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3002 0
	movl	flag_rerun_cse_after_loop@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L358
	movl	flag_gcse@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L358
	movl	$1, -156(%ebp)
	jmp	.L361
.L358:
	movl	$0, -156(%ebp)
.L361:
	movl	cse_not_expected@GOT(%ebx), %eax
	movl	-156(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 3004 0
	cmpl	$0, -80(%ebp)
	jne	.L362
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L364
.L362:
	.loc 1 3005 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
.L364:
	.loc 1 3007 0
	movl	flag_delete_null_pointer_checks@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L365
	.loc 1 3009 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 3011 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_null_pointer_checks@PLT
	testl	%eax, %eax
	je	.L367
	.loc 1 3012 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
.L367:
	.loc 1 3013 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
.L365:
	.loc 1 3018 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	renumber_insns@PLT
	.loc 1 3020 0
	movl	$18, (%esp)
	call	timevar_pop@PLT
	.loc 1 3021 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	close_dump_file
.L352:
	.loc 1 3024 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	open_dump_file
	.loc 1 3026 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_addressof@PLT
	.loc 1 3027 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L369
	movl	$0, (%esp)
	call	purge_all_dead_edges@PLT
	testb	%al, %al
	je	.L369
	.loc 1 3028 0
	call	delete_unreachable_blocks@PLT
.L369:
	.loc 1 3029 0
	call	max_reg_num@PLT
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3031 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	close_dump_file
	.loc 1 3033 0
	call	ggc_collect@PLT
	.loc 1 3037 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L372
	movl	flag_gcse@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L372
.LBB9:
	.loc 1 3040 0
	movl	$0, -32(%ebp)
	.loc 1 3042 0
	movl	$19, (%esp)
	call	timevar_push@PLT
	.loc 1 3043 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	open_dump_file
	.loc 1 3045 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	gcse_main@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3046 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 3047 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3049 0
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 3050 0
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3051 0
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3055 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L528
	.loc 1 3057 0
	movl	$18, (%esp)
	call	timevar_push@PLT
	.loc 1 3058 0
	call	max_reg_num@PLT
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3059 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_main@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3060 0
	movl	$0, (%esp)
	call	purge_all_dead_edges@PLT
	.loc 1 3061 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3062 0
	movl	$18, (%esp)
	call	timevar_pop@PLT
	.loc 1 3063 0
	movl	flag_rerun_cse_after_loop@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	cse_not_expected@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3068 0
	jmp	.L528
.L378:
	.loc 1 3070 0
	movl	$0, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 3071 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 3072 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 3073 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3074 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
	.loc 1 3076 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L377
	.loc 1 3078 0
	movl	$18, (%esp)
	call	timevar_push@PLT
	.loc 1 3079 0
	call	max_reg_num@PLT
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3080 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_main@PLT
	movl	%eax, -32(%ebp)
	.loc 1 3081 0
	movl	$0, (%esp)
	call	purge_all_dead_edges@PLT
	.loc 1 3082 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3083 0
	movl	$18, (%esp)
	call	timevar_pop@PLT
.L377:
.L528:
	.loc 1 3068 0
	cmpl	$0, -80(%ebp)
	jne	.L378
	cmpl	$0, -32(%ebp)
	jne	.L378
	.loc 1 3087 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	close_dump_file
	.loc 1 3088 0
	movl	$19, (%esp)
	call	timevar_pop@PLT
	.loc 1 3090 0
	call	ggc_collect@PLT
	.loc 1 3091 0
	movl	flag_cse_skip_blocks@GOT(%ebx), %edx
	movl	-40(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3092 0
	movl	flag_cse_follow_jumps@GOT(%ebx), %edx
	movl	-36(%ebp), %eax
	movl	%eax, (%edx)
.L372:
.LBE9:
	.loc 1 3100 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L382
	movl	flag_loop_optimize@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L382
.LBB10:
	.loc 1 3104 0
	movl	$20, (%esp)
	call	timevar_push@PLT
	.loc 1 3105 0
	call	delete_dead_jumptables@PLT
	.loc 1 3106 0
	movl	$17, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3107 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$12, (%esp)
	call	open_dump_file
	.loc 1 3109 0
	call	free_bb_for_insn@PLT
	.loc 1 3111 0
	movl	flag_unroll_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L385
	movl	$1, -152(%ebp)
	jmp	.L387
.L385:
	movl	$8, -152(%ebp)
.L387:
	movl	-152(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 3112 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L388
	movl	$4, -148(%ebp)
	jmp	.L390
.L388:
	movl	$0, -148(%ebp)
.L390:
	movl	-148(%ebp), %edx
	movl	%edx, -24(%ebp)
	.loc 1 3113 0
	movl	flag_rerun_loop_opt@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L391
	.loc 1 3115 0
	call	cleanup_barriers@PLT
	.loc 1 3118 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_optimize@PLT
	.loc 1 3119 0
	movl	$0, -28(%ebp)
	.loc 1 3125 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3129 0
	call	max_reg_num@PLT
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
.L391:
	.loc 1 3131 0
	call	cleanup_barriers@PLT
	.loc 1 3132 0
	movl	-24(%ebp), %eax
	orl	-28(%ebp), %eax
	movl	%eax, %edx
	orl	$2, %edx
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	loop_optimize@PLT
	.loc 1 3135 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3136 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$12, (%esp)
	call	close_dump_file
	.loc 1 3137 0
	movl	$20, (%esp)
	call	timevar_pop@PLT
	.loc 1 3138 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	find_basic_blocks@PLT
	.loc 1 3140 0
	call	ggc_collect@PLT
.L382:
.LBE10:
	.loc 1 3146 0
	movl	$24, (%esp)
	call	timevar_push@PLT
	.loc 1 3147 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$13, (%esp)
	call	open_dump_file
	.loc 1 3148 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L393
	.loc 1 3149 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L393:
	.loc 1 3150 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L395
	.loc 1 3151 0
	movl	flag_thread_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L397
	movl	$65, -144(%ebp)
	jmp	.L399
.L397:
	movl	$1, -144(%ebp)
.L399:
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	cleanup_cfg@PLT
.L395:
	.loc 1 3161 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L400
	.loc 1 3162 0
	call	mark_constant_function@PLT
.L400:
	.loc 1 3164 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$13, (%esp)
	call	close_dump_file
	.loc 1 3167 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L402
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L402
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L405
.L402:
.LBB11:
	.loc 1 3171 0
	movl	$23, (%esp)
	call	timevar_push@PLT
	.loc 1 3172 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$14, (%esp)
	call	open_dump_file
	.loc 1 3173 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L406
	movl	flag_branch_probabilities@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L408
.L406:
	.loc 1 3174 0
	call	branch_prob@PLT
.L408:
	.loc 1 3178 0
	movl	$1, 4(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_find@PLT
	.loc 1 3180 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L409
	.loc 1 3181 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_dump@PLT
.L409:
	.loc 1 3184 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L411
	.loc 1 3185 0
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	estimate_probability@PLT
.L411:
	.loc 1 3187 0
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	flow_loops_free@PLT
	.loc 1 3188 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$14, (%esp)
	call	close_dump_file
	.loc 1 3189 0
	movl	$23, (%esp)
	call	timevar_pop@PLT
.L405:
.LBE11:
	.loc 1 3191 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L413
	.loc 1 3193 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	call	open_dump_file
	.loc 1 3194 0
	movl	flag_if_conversion@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L415
	.loc 1 3196 0
	movl	$26, (%esp)
	call	timevar_push@PLT
	.loc 1 3197 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L417
	.loc 1 3198 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L417:
	.loc 1 3199 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3200 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3201 0
	movl	$0, (%esp)
	call	if_convert@PLT
	.loc 1 3202 0
	movl	$26, (%esp)
	call	timevar_pop@PLT
.L415:
	.loc 1 3204 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 3205 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3206 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3207 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
	.loc 1 3208 0
	call	get_insns@PLT
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$15, (%esp)
	call	close_dump_file
.L413:
	.loc 1 3210 0
	movl	flag_tracer@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L419
	.loc 1 3212 0
	movl	$21, (%esp)
	call	timevar_push@PLT
	.loc 1 3213 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	open_dump_file
	.loc 1 3214 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L421
	.loc 1 3215 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L421:
	.loc 1 3216 0
	call	tracer@PLT
	.loc 1 3217 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3218 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3219 0
	call	get_insns@PLT
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	close_dump_file
	.loc 1 3220 0
	movl	$21, (%esp)
	call	timevar_pop@PLT
.L419:
	.loc 1 3223 0
	movl	flag_rerun_cse_after_loop@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L423
	.loc 1 3225 0
	movl	$22, (%esp)
	call	timevar_push@PLT
	.loc 1 3226 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$17, (%esp)
	call	open_dump_file
	.loc 1 3227 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L425
	.loc 1 3228 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
.L425:
	.loc 1 3230 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	cse_main@PLT
	movl	%eax, -80(%ebp)
	.loc 1 3231 0
	movl	$0, (%esp)
	call	purge_all_dead_edges@PLT
	.loc 1 3232 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3234 0
	cmpl	$0, -80(%ebp)
	je	.L427
	.loc 1 3236 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 3237 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 3238 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3239 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
.L427:
	.loc 1 3241 0
	call	max_reg_num@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reg_scan@PLT
	.loc 1 3242 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$17, (%esp)
	call	close_dump_file
	.loc 1 3243 0
	call	ggc_collect@PLT
	.loc 1 3244 0
	movl	$22, (%esp)
	call	timevar_pop@PLT
.L423:
	.loc 1 3247 0
	movl	cse_not_expected@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 3249 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$18, (%esp)
	call	open_dump_file
	.loc 1 3250 0
	call	regclass_init@PLT
	.loc 1 3255 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$383, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	life_analysis@PLT
	.loc 1 3256 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L429
	.loc 1 3257 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L431
	movl	$33, -140(%ebp)
	jmp	.L433
.L431:
	movl	$32, -140(%ebp)
.L433:
	movl	flag_thread_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L434
	movl	$64, -136(%ebp)
	jmp	.L436
.L434:
	movl	$0, -136(%ebp)
.L436:
	movl	-140(%ebp), %eax
	orl	-136(%ebp), %eax
	movl	%eax, (%esp)
	call	cleanup_cfg@PLT
.L429:
	.loc 1 3259 0
	movl	$24, (%esp)
	call	timevar_pop@PLT
	.loc 1 3261 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L437
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L439
.L437:
	.loc 1 3263 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, (%esp)
	call	uninitialized_vars_warning@PLT
	.loc 1 3264 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L439
	.loc 1 3265 0
	call	setjmp_args_warning@PLT
.L439:
	.loc 1 3268 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L441
	.loc 1 3270 0
	movl	flag_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L441
	call	initialize_uninitialized_subregs@PLT
	testl	%eax, %eax
	je	.L441
	.loc 1 3274 0
	call	get_insns@PLT
	movl	%eax, -84(%ebp)
	.loc 1 3275 0
	call	allocate_reg_life_data@PLT
	.loc 1 3276 0
	movl	$7, 8(%esp)
	movl	$2, 4(%esp)
	movl	$0, (%esp)
	call	update_life_info@PLT
.L441:
	.loc 1 3281 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 3283 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$18, (%esp)
	call	close_dump_file
	.loc 1 3285 0
	call	ggc_collect@PLT
	.loc 1 3289 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L445
.LBB12:
	.loc 1 3291 0
	movl	$0, -20(%ebp)
	.loc 1 3293 0
	movl	$25, (%esp)
	call	timevar_push@PLT
	.loc 1 3294 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$19, (%esp)
	call	open_dump_file
	.loc 1 3296 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_instructions@PLT
	movl	%eax, -20(%ebp)
	.loc 1 3302 0
	cmpl	$0, -20(%ebp)
	je	.L447
	.loc 1 3304 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 3305 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 3306 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
	.loc 1 3308 0
	movl	$33, (%esp)
	call	cleanup_cfg@PLT
.L447:
	.loc 1 3311 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$19, (%esp)
	call	close_dump_file
	.loc 1 3312 0
	movl	$25, (%esp)
	call	timevar_pop@PLT
	.loc 1 3314 0
	call	ggc_collect@PLT
.L445:
.LBE12:
	.loc 1 3319 0
	movl	flag_if_conversion@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L449
	.loc 1 3321 0
	movl	$26, (%esp)
	call	timevar_push@PLT
	.loc 1 3322 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$20, (%esp)
	call	open_dump_file
	.loc 1 3324 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3325 0
	movl	$1, (%esp)
	call	if_convert@PLT
	.loc 1 3326 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 3328 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$20, (%esp)
	call	close_dump_file
	.loc 1 3329 0
	movl	$26, (%esp)
	call	timevar_pop@PLT
.L449:
	.loc 1 3334 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L451
	movl	flag_regmove@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L453
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L451
.L453:
	.loc 1 3336 0
	movl	$27, (%esp)
	call	timevar_push@PLT
	.loc 1 3337 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$21, (%esp)
	call	open_dump_file
	.loc 1 3339 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	regmove_optimize@PLT
	.loc 1 3341 0
	movl	$33, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3342 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$21, (%esp)
	call	close_dump_file
	.loc 1 3343 0
	movl	$27, (%esp)
	call	timevar_pop@PLT
	.loc 1 3345 0
	call	ggc_collect@PLT
.L451:
	.loc 1 3350 0
	movl	$1, (%esp)
	call	split_all_insns@PLT
	.loc 1 3354 0
	movl	$0, -68(%ebp)
	.loc 1 3366 0
	movl	$29, (%esp)
	call	timevar_push@PLT
	.loc 1 3372 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L455
	movl	flag_schedule_insns@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L455
	.loc 1 3374 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$22, (%esp)
	call	open_dump_file
	.loc 1 3379 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	schedule_insns@PLT
	.loc 1 3381 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$22, (%esp)
	call	close_dump_file
	.loc 1 3385 0
	movl	$1, -68(%ebp)
.L455:
	.loc 1 3388 0
	movl	$29, (%esp)
	call	timevar_pop@PLT
	.loc 1 3390 0
	call	ggc_collect@PLT
	.loc 1 3395 0
	call	leaf_function_p@PLT
	movl	current_function_is_leaf@GOT(%ebx), %edx
	movl	%eax, (%edx)
	.loc 1 3397 0
	movl	$30, (%esp)
	call	timevar_push@PLT
	.loc 1 3398 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$23, (%esp)
	call	open_dump_file
	.loc 1 3405 0
	cmpl	$0, -68(%ebp)
	jne	.L458
	.loc 1 3406 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	recompute_reg_usage@PLT
.L458:
	.loc 1 3408 0
	movl	flag_new_regalloc@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L460
	.loc 1 3410 0
	call	max_reg_num@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_trivially_dead_insns@PLT
	.loc 1 3411 0
	call	reg_alloc@PLT
	.loc 1 3413 0
	movl	$30, (%esp)
	call	timevar_pop@PLT
	.loc 1 3414 0
	movzbl	190+dump_file@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L462
	.loc 1 3416 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 3418 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$23, (%esp)
	call	close_dump_file
	.loc 1 3419 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L462:
	.loc 1 3423 0
	movl	$31, (%esp)
	call	timevar_push@PLT
	.loc 1 3424 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$24, (%esp)
	call	open_dump_file
	.loc 1 3426 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	build_insn_chain@PLT
	.loc 1 3427 0
	movl	$0, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reload@PLT
	movl	%eax, -76(%ebp)
	.loc 1 3429 0
	movl	$31, (%esp)
	call	timevar_pop@PLT
	.loc 1 3431 0
	movzbl	198+dump_file@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L464
	.loc 1 3433 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 3435 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_global_regs@PLT
	.loc 1 3437 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$24, (%esp)
	call	close_dump_file
	.loc 1 3438 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L464:
	.loc 1 3441 0
	cmpl	$0, -76(%ebp)
	jne	.L263
	.loc 1 3443 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 3444 0
	movl	$0, -72(%ebp)
	jmp	.L467
.L460:
	.loc 1 3449 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	allocate_reg_info@PLT
	.loc 1 3452 0
	movl	max_regno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, %edx
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 3454 0
	movl	reg_equiv_memory_loc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	allocate_initial_values@PLT
	.loc 1 3456 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	call	max_reg_num@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	regclass@PLT
	.loc 1 3457 0
	call	local_alloc@PLT
	movl	%eax, -72(%ebp)
	.loc 1 3459 0
	movl	$30, (%esp)
	call	timevar_pop@PLT
	.loc 1 3461 0
	movzbl	190+dump_file@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L468
	.loc 1 3463 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 3465 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_flow_info@PLT
	.loc 1 3466 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_local_alloc@PLT
	.loc 1 3468 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$23, (%esp)
	call	close_dump_file
	.loc 1 3469 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L468:
	.loc 1 3472 0
	call	ggc_collect@PLT
	.loc 1 3474 0
	movl	$31, (%esp)
	call	timevar_push@PLT
	.loc 1 3475 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$24, (%esp)
	call	open_dump_file
	.loc 1 3480 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L470
	.loc 1 3481 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	global_alloc@PLT
	movl	%eax, -76(%ebp)
	jmp	.L472
.L470:
	.loc 1 3484 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	build_insn_chain@PLT
	.loc 1 3485 0
	movl	$0, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reload@PLT
	movl	%eax, -76(%ebp)
.L472:
	.loc 1 3488 0
	movl	$31, (%esp)
	call	timevar_pop@PLT
	.loc 1 3490 0
	movzbl	198+dump_file@GOTOFF(%ebx), %eax
	testb	%al, %al
	je	.L473
	.loc 1 3492 0
	movl	$2, (%esp)
	call	timevar_push@PLT
	.loc 1 3494 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	dump_global_regs@PLT
	.loc 1 3496 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$24, (%esp)
	call	close_dump_file
	.loc 1 3497 0
	movl	$2, (%esp)
	call	timevar_pop@PLT
.L473:
	.loc 1 3500 0
	cmpl	$0, -76(%ebp)
	jne	.L263
.L467:
	.loc 1 3504 0
	call	ggc_collect@PLT
	.loc 1 3506 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$25, (%esp)
	call	open_dump_file
	.loc 1 3509 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L475
	.loc 1 3511 0
	movl	$32, (%esp)
	call	timevar_push@PLT
	.loc 1 3512 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	reload_cse_regs@PLT
	.loc 1 3513 0
	movl	$32, (%esp)
	call	timevar_pop@PLT
.L475:
	.loc 1 3519 0
	cmpl	$0, -72(%ebp)
	je	.L477
	.loc 1 3521 0
	movl	$17, (%esp)
	call	timevar_push@PLT
	.loc 1 3523 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	rebuild_jump_labels@PLT
	.loc 1 3524 0
	movl	$0, (%esp)
	call	purge_all_dead_edges@PLT
	.loc 1 3526 0
	movl	$17, (%esp)
	call	timevar_pop@PLT
.L477:
	.loc 1 3529 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$25, (%esp)
	call	close_dump_file
	.loc 1 3532 0
	movl	$33, (%esp)
	call	timevar_push@PLT
	.loc 1 3533 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$26, (%esp)
	call	open_dump_file
	.loc 1 3541 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L479
	.loc 1 3543 0
	movl	$0, (%esp)
	call	split_all_insns@PLT
.L479:
	.loc 1 3545 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L481
	.loc 1 3546 0
	movl	$1, (%esp)
	call	cleanup_cfg@PLT
.L481:
	.loc 1 3552 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	thread_prologue_and_epilogue_insns@PLT
	.loc 1 3554 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L483
	.loc 1 3556 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$383, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	life_analysis@PLT
	.loc 1 3557 0
	movl	flag_crossjumping@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L485
	movl	$35, -132(%ebp)
	jmp	.L487
.L485:
	movl	$33, -132(%ebp)
.L487:
	movl	-132(%ebp), %edx
	movl	%edx, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3569 0
	call	ggc_collect@PLT
.L483:
	.loc 1 3572 0
	movl	flow2_completed@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 3574 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$26, (%esp)
	call	close_dump_file
	.loc 1 3575 0
	movl	$33, (%esp)
	call	timevar_pop@PLT
	.loc 1 3578 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L488
	movl	flag_peephole2@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L488
	.loc 1 3580 0
	movl	$35, (%esp)
	call	timevar_push@PLT
	.loc 1 3581 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$27, (%esp)
	call	open_dump_file
	.loc 1 3583 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	peephole2_optimize@PLT
	.loc 1 3585 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$27, (%esp)
	call	close_dump_file
	.loc 1 3586 0
	movl	$35, (%esp)
	call	timevar_pop@PLT
.L488:
	.loc 1 3590 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L491
	movl	flag_rename_registers@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L493
	movl	flag_cprop_registers@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L491
.L493:
	.loc 1 3592 0
	movl	$36, (%esp)
	call	timevar_push@PLT
	.loc 1 3593 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$28, (%esp)
	call	open_dump_file
	.loc 1 3595 0
	movl	flag_rename_registers@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L495
	.loc 1 3596 0
	call	regrename_optimize@PLT
.L495:
	.loc 1 3597 0
	movl	flag_cprop_registers@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L497
	.loc 1 3598 0
	call	copyprop_hardreg_forward@PLT
.L497:
	.loc 1 3600 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$28, (%esp)
	call	close_dump_file
	.loc 1 3601 0
	movl	$36, (%esp)
	call	timevar_pop@PLT
.L491:
	.loc 1 3604 0
	movl	flag_if_conversion2@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L499
	.loc 1 3606 0
	movl	$34, (%esp)
	call	timevar_push@PLT
	.loc 1 3607 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$29, (%esp)
	call	open_dump_file
	.loc 1 3609 0
	movl	$1, (%esp)
	call	if_convert@PLT
	.loc 1 3611 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$29, (%esp)
	call	close_dump_file
	.loc 1 3612 0
	movl	$34, (%esp)
	call	timevar_pop@PLT
.L499:
	.loc 1 3616 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L501
	movl	flag_schedule_insns_after_reload@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L501
	.loc 1 3618 0
	movl	$37, (%esp)
	call	timevar_push@PLT
	.loc 1 3619 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$30, (%esp)
	call	open_dump_file
	.loc 1 3624 0
	movl	$1, (%esp)
	call	split_all_insns@PLT
	.loc 1 3626 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	schedule_insns@PLT
	.loc 1 3628 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$30, (%esp)
	call	close_dump_file
	.loc 1 3629 0
	movl	$37, (%esp)
	call	timevar_pop@PLT
	.loc 1 3631 0
	call	ggc_collect@PLT
.L501:
	.loc 1 3669 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L504
	.loc 1 3671 0
	movl	$40, (%esp)
	call	timevar_push@PLT
	.loc 1 3672 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	open_dump_file
	.loc 1 3678 0
	movl	flag_crossjumping@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L506
	movl	$7, -128(%ebp)
	jmp	.L508
.L506:
	movl	$5, -128(%ebp)
.L508:
	movl	-128(%ebp), %eax
	movl	%eax, (%esp)
	call	cleanup_cfg@PLT
	.loc 1 3680 0
	movl	flag_reorder_blocks@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L509
	.loc 1 3682 0
	call	reorder_basic_blocks@PLT
	.loc 1 3683 0
	movl	$5, (%esp)
	call	cleanup_cfg@PLT
.L509:
	.loc 1 3686 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl_with_bb@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	call	close_dump_file
	.loc 1 3687 0
	movl	$40, (%esp)
	call	timevar_pop@PLT
.L504:
	.loc 1 3689 0
	call	compute_alignments@PLT
	.loc 1 3692 0
	call	free_bb_for_insn@PLT
	.loc 1 3696 0
	movl	$38, (%esp)
	call	timevar_push@PLT
	.loc 1 3697 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$33, (%esp)
	call	open_dump_file
	.loc 1 3699 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	machine_dependent_reorg@PLT
	.loc 1 3701 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$33, (%esp)
	call	close_dump_file
	.loc 1 3702 0
	movl	$38, (%esp)
	call	timevar_pop@PLT
	.loc 1 3704 0
	call	ggc_collect@PLT
	.loc 1 3707 0
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	purge_line_number_notes@PLT
	.loc 1 3708 0
	call	cleanup_barriers@PLT
	.loc 1 3714 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L511
	movl	flag_delayed_branch@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L511
	.loc 1 3716 0
	movl	$39, (%esp)
	call	timevar_push@PLT
	.loc 1 3717 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	open_dump_file
	.loc 1 3719 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	dbr_schedule@PLT
	.loc 1 3721 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	print_rtl@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$34, (%esp)
	call	close_dump_file
	.loc 1 3722 0
	movl	$39, (%esp)
	call	timevar_pop@PLT
	.loc 1 3724 0
	call	ggc_collect@PLT
.L511:
	.loc 1 3729 0
	movl	$41, (%esp)
	call	timevar_push@PLT
	.loc 1 3730 0
	call	split_all_insns_noflow@PLT
	.loc 1 3731 0
	movl	$41, (%esp)
	call	timevar_pop@PLT
	.loc 1 3734 0
	call	convert_to_eh_region_ranges@PLT
	.loc 1 3737 0
	movl	$41, (%esp)
	call	timevar_push@PLT
	.loc 1 3738 0
	call	get_insns@PLT
	movl	%eax, (%esp)
	call	shorten_branches@PLT
	.loc 1 3739 0
	movl	$41, (%esp)
	call	timevar_pop@PLT
	.loc 1 3741 0
	call	set_nothrow_function_flags@PLT
	.loc 1 3742 0
	movl	current_function_nothrow@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L514
	.loc 1 3745 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %edx
	movzbl	10(%edx), %eax
	orl	$2, %eax
	movb	%al, 10(%edx)
.L514:
	.loc 1 3749 0
	movl	$47, (%esp)
	call	timevar_push@PLT
.LBB13:
	.loc 1 3757 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L516
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -124(%ebp)
	jmp	.L518
.L516:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	make_decl_rtl@PLT
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -124(%ebp)
.L518:
	movl	-124(%ebp), %edx
	movl	%edx, -16(%ebp)
	.loc 1 3758 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L519
	.loc 1 3759 0
	leal	__FUNCTION__.16073@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3759, 4(%esp)
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L519:
	.loc 1 3760 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3761 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L521
	.loc 1 3762 0
	leal	__FUNCTION__.16073@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3762, 4(%esp)
	leal	.LC765@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L521:
	.loc 1 3763 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3765 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_start_function@PLT
	.loc 1 3766 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	final_start_function@PLT
	.loc 1 3767 0
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
	.loc 1 3768 0
	call	final_end_function@PLT
	.loc 1 3776 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_end_function@PLT
	.loc 1 3780 0
	call	output_function_exception_table@PLT
	.loc 1 3783 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L523
	.loc 1 3784 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fflush@PLT
.L523:
	.loc 1 3787 0
	movl	$0, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 3790 0
	call	regset_release_memory@PLT
.LBE13:
	.loc 1 3792 0
	movl	$47, (%esp)
	call	timevar_pop@PLT
	.loc 1 3794 0
	call	ggc_collect@PLT
	.loc 1 3807 0
	movl	$48, (%esp)
	call	timevar_push@PLT
	.loc 1 3808 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	60(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 3809 0
	movl	$48, (%esp)
	call	timevar_pop@PLT
.L263:
	.loc 1 3821 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3822 0
	movl	flow2_completed@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3823 0
	movl	no_new_pseudos@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3825 0
	movl	$47, (%esp)
	call	timevar_push@PLT
	.loc 1 3829 0
	call	init_insn_lengths@PLT
	.loc 1 3832 0
	call	init_temp_slots@PLT
	.loc 1 3834 0
	movl	$0, (%esp)
	call	free_basic_block_vars@PLT
	.loc 1 3835 0
	call	free_bb_for_insn@PLT
	.loc 1 3837 0
	movl	$47, (%esp)
	call	timevar_pop@PLT
	.loc 1 3848 0
	call	init_recog_no_volatile@PLT
	.loc 1 3851 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_parsing@PLT
	.loc 1 3852 0
	movl	8(%ebp), %eax
	movzbl	34(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L525
	.loc 1 3854 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	free_after_compilation@PLT
	.loc 1 3858 0
	movl	8(%ebp), %eax
	movl	$0, 96(%eax)
.L525:
	.loc 1 3860 0
	movl	cfun@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 3862 0
	call	ggc_collect@PLT
	.loc 1 3864 0
	movl	$49, (%esp)
	call	timevar_pop@PLT
	.loc 1 3865 0
	addl	$176, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE38:
	.size	rest_of_compilation, .-rest_of_compilation
	.section	.rodata
	.align 4
.LC782:
	.string	"  -ffixed-<register>      Mark <register> as being unavailable to the compiler"
	.align 4
.LC783:
	.string	"  -fcall-used-<register>  Mark <register> as being corrupted by function calls"
	.align 4
.LC784:
	.string	"  -fcall-saved-<register> Mark <register> as being preserved across functions"
	.align 4
.LC785:
	.string	"  -finline-limit=<number> Limits the size of inlined functions to <number>"
	.align 4
.LC786:
	.string	"  -fmessage-length=<number> Limits diagnostics messages lengths to <number> characters per line.  0 suppresses line-wrapping"
	.align 4
.LC787:
	.string	"  -fdiagnostics-show-location=[once | every-line] Indicates how often source location information should be emitted, as prefix, at the beginning of diagnostics when line-wrapping"
	.align 4
.LC788:
	.string	"  -ftls-model=[global-dynamic | local-dynamic | initial-exec | local-exec] Indicates the default thread-local storage code generation model"
	.align 4
.LC789:
	.string	"  -fstack-limit-register=<register>  Trap if the stack goes past <register>"
	.align 4
.LC790:
	.string	"  -fstack-limit-symbol=<name>  Trap if the stack goes past symbol <name>"
	.align 4
.LC791:
	.string	"  -frandom-seed=<string>  Make compile reproducible using <string>"
.LC792:
	.string	"  -f%-21s %s\n"
	.align 4
.LC793:
	.string	"  -O[number]              Set optimization level to [number]"
	.align 4
.LC794:
	.string	"  -Os                     Optimize for space rather than speed"
.LC795:
	.string	"                     "
.LC796:
	.string	"  --param %s=<value>%.*s%s\n"
	.align 4
.LC797:
	.string	"  -pedantic               Issue warnings needed by strict compliance to ISO C"
	.align 4
.LC798:
	.string	"  -pedantic-errors        Like -pedantic except that errors are produced"
	.align 4
.LC799:
	.string	"  -w                      Suppress warnings"
	.align 4
.LC800:
	.string	"  -W                      Enable extra warnings"
.LC801:
	.string	"  -W%-21s %s\n"
	.align 4
.LC802:
	.string	"  -Wunused                Enable unused warnings"
	.align 4
.LC803:
	.string	"  -Wlarger-than-<number>  Warn if an object is larger than <number> bytes"
	.align 4
.LC804:
	.string	"  -p                      Enable function profiling"
	.align 4
.LC805:
	.string	"  -o <file>               Place output into <file> "
	.align 4
.LC806:
	.string	"  -G <number>             Put global and static data smaller than <number>\n                          bytes into a special section (on some targets)"
.LC807:
	.string	"  -g%-21s %s\n"
	.align 4
.LC808:
	.string	"  -aux-info <file>        Emit declaration info into <file>"
	.align 4
.LC809:
	.string	"  -quiet                  Do not display functions compiled or elapsed time"
	.align 4
.LC810:
	.string	"  -version                Display the compiler's version"
	.align 4
.LC811:
	.string	"  -d[letters]             Enable dumps from specific passes of the compiler"
	.align 4
.LC812:
	.string	"  -dumpbase <file>        Base name to be used for dumps from specific passes"
	.align 4
.LC813:
	.string	"  -fsched-verbose=<number> Set the verbosity level of the scheduler"
	.align 4
.LC814:
	.string	"  --help                  Display this information"
.LC815:
	.string	"language"
.LC816:
	.string	"\nLanguage specific options:"
.LC817:
	.string	"  %-23.23s [undocumented]\n"
	.align 4
.LC818:
	.string	"\nThere are undocumented %s specific options as well.\n"
.LC819:
	.string	"\n Options for %s:\n"
.LC820:
	.string	"  %-23.23s %s\n"
	.text
	.type	display_help, @function
display_help:
.LFB39:
	.loc 1 3869 0
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
	.loc 1 3874 0
	leal	.LC782@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3875 0
	leal	.LC783@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3876 0
	leal	.LC784@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3877 0
	leal	.LC785@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3878 0
	leal	.LC786@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3879 0
	leal	.LC787@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3880 0
	leal	.LC788@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3881 0
	leal	.LC789@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3882 0
	leal	.LC790@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3883 0
	leal	.LC791@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3886 0
	movl	$109, -40(%ebp)
	jmp	.L566
.L531:
.LBB14:
	.loc 1 3888 0
	movl	-40(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	movl	%eax, -32(%ebp)
	.loc 1 3890 0
	cmpl	$0, -32(%ebp)
	je	.L530
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L530
	.loc 1 3891 0
	movl	-40(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC792@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L530:
.L566:
.LBE14:
	.loc 1 3886 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L531
	.loc 1 3895 0
	leal	.LC793@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3896 0
	leal	.LC794@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3897 0
	movl	$23, -40(%ebp)
	jmp	.L567
.L536:
.LBB15:
	.loc 1 3899 0
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
	.loc 1 3900 0
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
	.loc 1 3902 0
	cmpl	$0, -28(%ebp)
	je	.L535
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L535
	.loc 1 3903 0
	movl	-24(%ebp), %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	jg	.L539
	movl	$1, -60(%ebp)
.L539:
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
	leal	.LC795@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC796@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L535:
.L567:
.LBE15:
	.loc 1 3897 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L536
	.loc 1 3908 0
	leal	.LC797@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3909 0
	leal	.LC798@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3910 0
	leal	.LC799@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3911 0
	leal	.LC800@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3913 0
	movl	$22, -40(%ebp)
	jmp	.L568
.L542:
.LBB16:
	.loc 1 3915 0
	movl	-40(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 3917 0
	cmpl	$0, -20(%ebp)
	je	.L541
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L541
	.loc 1 3918 0
	movl	-40(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC801@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L541:
.L568:
.LBE16:
	.loc 1 3913 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L542
	.loc 1 3922 0
	leal	.LC802@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3923 0
	leal	.LC803@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3924 0
	leal	.LC804@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3925 0
	leal	.LC805@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3926 0
	leal	.LC806@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3930 0
	movl	$7, -40(%ebp)
	jmp	.L569
.L547:
	.loc 1 3932 0
	movl	-40(%ebp), %eax
	leal	debug_args@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	12(%eax,%edx), %eax
	testl	%eax, %eax
	je	.L546
	.loc 1 3933 0
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
	leal	.LC807@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L546:
.L569:
	.loc 1 3930 0
	subl	$1, -40(%ebp)
	cmpl	$-1, -40(%ebp)
	jne	.L547
	.loc 1 3937 0
	leal	.LC808@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3938 0
	leal	.LC809@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3939 0
	leal	.LC810@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3940 0
	leal	.LC811@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3941 0
	leal	.LC812@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3943 0
	leal	.LC813@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3945 0
	leal	.LC814@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3947 0
	movl	$0, -44(%ebp)
	.loc 1 3948 0
	leal	.LC815@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 3960 0
	leal	.LC816@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 3962 0
	movl	$0, -40(%ebp)
	jmp	.L550
.L551:
.LBB17:
	.loc 1 3964 0
	movl	-40(%ebp), %eax
	movl	4+documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3965 0
	movl	-40(%ebp), %eax
	movl	documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3967 0
	cmpl	$0, -16(%ebp)
	jne	.L552
	.loc 1 3969 0
	movl	$1, -44(%ebp)
	.loc 1 3971 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L556
	.loc 1 3972 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC817@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L556
.L552:
	.loc 1 3974 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L556
	.loc 1 3976 0
	cmpl	$0, -12(%ebp)
	jne	.L558
	.loc 1 3978 0
	cmpl	$0, -44(%ebp)
	je	.L560
	.loc 1 3979 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC818@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L560:
	.loc 1 3982 0
	movl	$0, -44(%ebp)
	.loc 1 3984 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC819@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 3986 0
	movl	-16(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L556
.L558:
	.loc 1 3989 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC820@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L556:
.LBE17:
	.loc 1 3962 0
	addl	$1, -40(%ebp)
.L550:
	cmpl	$200, -40(%ebp)
	jbe	.L551
	.loc 1 3993 0
	cmpl	$0, -44(%ebp)
	je	.L563
	.loc 1 3994 0
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC818@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L563:
	.loc 1 3997 0
	call	display_target_options
	.loc 1 3998 0
	addl	$80, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE39:
	.size	display_help, .-display_help
	.local	displayed.16779
	.comm	displayed.16779,1,1
	.section	.rodata
.LC821:
	.string	"\nTarget specific options:"
.LC822:
	.string	"  -m%-23.23s [undocumented]\n"
.LC823:
	.string	"  -m%-23.23s %s\n"
	.align 4
.LC824:
	.string	"\nThere are undocumented target specific options as well."
	.align 4
.LC825:
	.string	"  They exist, but they are not documented."
	.text
	.type	display_target_options, @function
display_target_options:
.LFB40:
	.loc 1 4002 0
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
	.loc 1 4007 0
	movzbl	displayed.16779@GOTOFF(%ebx), %eax
	testb	%al, %al
	jne	.L596
	.loc 1 4009 0
	movb	$1, displayed.16779@GOTOFF(%ebx)
.LBB18:
	.loc 1 4017 0
	movl	$0, -24(%ebp)
	.loc 1 4019 0
	movl	$0, -32(%ebp)
	.loc 1 4021 0
	leal	.LC821@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 4023 0
	movl	$62, -28(%ebp)
	jmp	.L597
.L574:
.LBB19:
	.loc 1 4025 0
	movl	-28(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4026 0
	movl	-28(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4028 0
	cmpl	$0, -20(%ebp)
	je	.L573
	movl	-20(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L573
	.loc 1 4030 0
	cmpl	$0, -16(%ebp)
	jne	.L577
	.loc 1 4032 0
	movl	$1, -32(%ebp)
	.loc 1 4034 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L573
	.loc 1 4035 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC822@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L573
.L577:
	.loc 1 4037 0
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L573
	.loc 1 4038 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC823@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	addl	%eax, -24(%ebp)
.L573:
.L597:
.LBE19:
	.loc 1 4023 0
	subl	$1, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	.L574
	.loc 1 4042 0
	movl	$8, -28(%ebp)
	jmp	.L598
.L584:
.LBB20:
	.loc 1 4044 0
	movl	-28(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4045 0
	movl	-28(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	8(%eax,%ecx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4047 0
	cmpl	$0, -12(%ebp)
	je	.L583
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L583
	.loc 1 4049 0
	cmpl	$0, -8(%ebp)
	jne	.L587
	.loc 1 4051 0
	movl	$1, -32(%ebp)
	.loc 1 4053 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L583
	.loc 1 4054 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC822@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	jmp	.L583
.L587:
	.loc 1 4056 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L583
	.loc 1 4057 0
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC823@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	addl	%eax, -24(%ebp)
.L583:
.L598:
.LBE20:
	.loc 1 4042 0
	subl	$1, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	.L584
	.loc 1 4060 0
	cmpl	$0, -32(%ebp)
	je	.L596
	.loc 1 4062 0
	cmpl	$0, -24(%ebp)
	je	.L594
	.loc 1 4063 0
	leal	.LC824@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	jmp	.L596
.L594:
	.loc 1 4065 0
	leal	.LC825@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.L596:
.LBE18:
	.loc 1 4068 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	display_target_options, .-display_target_options
	.section	.rodata
	.align 4
.LC826:
	.string	"unrecognized gcc debugging option: %c"
	.text
	.type	decode_d_option, @function
decode_d_option:
.LFB41:
	.loc 1 4075 0
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
	.loc 1 4078 0
	jmp	.L624
.L601:
	.loc 1 4079 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$1, 8(%ebp)
	subl	$65, %eax
	movl	%eax, -24(%ebp)
	cmpl	$56, -24(%ebp)
	ja	.L602
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L612@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L612:
	.long	.L603@GOTOFF
	.long	.L602@GOTOFF
	.long	.L604@GOTOFF
	.long	.L600@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L600@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L606@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L607@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L608@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L602@GOTOFF
	.long	.L609@GOTOFF
	.long	.L602@GOTOFF
	.long	.L610@GOTOFF
	.long	.L611@GOTOFF
	.text
.L607:
	.loc 1 4082 0
	movl	$0, -16(%ebp)
	jmp	.L613
.L614:
	.loc 1 4083 0
	movl	-16(%ebp), %eax
	movb	$1, 6+dump_file@GOTOFF(%ebx,%eax,8)
	.loc 1 4082 0
	addl	$1, -16(%ebp)
.L613:
	cmpl	$35, -16(%ebp)
	jle	.L614
	.loc 1 4084 0
	jmp	.L600
.L603:
	.loc 1 4086 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4087 0
	jmp	.L600
.L604:
	.loc 1 4090 0
	movl	flag_bad_asm_constraint_kills_stmt@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4091 0
	jmp	.L600
.L608:
	.loc 1 4094 0
	movl	flag_print_asm_name@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4095 0
	jmp	.L600
.L606:
	.loc 1 4098 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4100 0
	movb	$1, 286+dump_file@GOTOFF(%ebx)
	.loc 1 4102 0
	jmp	.L600
.L609:
	.loc 1 4110 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4111 0
	jmp	.L600
.L610:
	.loc 1 4113 0
	movl	rtl_dump_and_exit@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4114 0
	jmp	.L600
.L611:
	.loc 1 4116 0
	movl	$1, set_yydebug@GOTOFF(%ebx)
	.loc 1 4117 0
	jmp	.L600
.L602:
	.loc 1 4123 0
	movl	$0, -8(%ebp)
	.loc 1 4124 0
	movl	$0, -16(%ebp)
	jmp	.L616
.L617:
	.loc 1 4125 0
	movl	-16(%ebp), %eax
	movzbl	4+dump_file@GOTOFF(%ebx,%eax,8), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jne	.L618
	.loc 1 4127 0
	movl	-16(%ebp), %eax
	movb	$1, 6+dump_file@GOTOFF(%ebx,%eax,8)
	.loc 1 4128 0
	movl	$1, -8(%ebp)
.L618:
	.loc 1 4124 0
	addl	$1, -16(%ebp)
.L616:
	cmpl	$35, -16(%ebp)
	jle	.L617
	.loc 1 4131 0
	cmpl	$0, -8(%ebp)
	jne	.L600
	.loc 1 4132 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC826@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L600:
.L624:
	.loc 1 4078 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L601
	.loc 1 4135 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	decode_d_option, .-decode_d_option
	.section	.rodata
.LC827:
	.string	"fast-math"
.LC828:
	.string	"no-fast-math"
.LC829:
	.string	"inline-limit-"
.LC830:
	.string	"inline-limit="
.LC831:
	.string	"tls-model="
.LC832:
	.string	"global-dynamic"
.LC833:
	.string	"local-dynamic"
.LC834:
	.string	"initial-exec"
.LC835:
	.string	"local-exec"
	.align 4
.LC836:
	.string	"`%s': unknown tls-model option"
.LC837:
	.string	"sched-verbose="
.LC838:
	.string	"verbose"
.LC839:
	.string	"fixed-"
.LC840:
	.string	"call-used-"
.LC841:
	.string	"call-saved-"
.LC842:
	.string	"align-loops="
.LC843:
	.string	"align-functions="
.LC844:
	.string	"align-jumps="
.LC845:
	.string	"align-labels="
.LC846:
	.string	"stack-limit-register="
	.align 4
.LC847:
	.string	"unrecognized register name `%s'"
.LC848:
	.string	"stack-limit-symbol="
.LC849:
	.string	"message-length="
.LC850:
	.string	"diagnostics-show-location="
.LC851:
	.string	"once"
.LC852:
	.string	"every-line"
.LC853:
	.string	"unrecognized option `%s'"
.LC854:
	.string	"no-stack-limit"
.LC855:
	.string	"random-seed="
.LC856:
	.string	"no-random-seed"
.LC857:
	.string	"preprocessed"
	.text
	.type	decode_f_option, @function
decode_f_option:
.LFB42:
	.loc 1 4144 0
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
	.loc 1 4146 0
	movl	$0, -28(%ebp)
	.loc 1 4149 0
	movl	$109, -32(%ebp)
	jmp	.L755
.L627:
	.loc 1 4151 0
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L628
	.loc 1 4153 0
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %ecx
	movl	-32(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, (%ecx)
	.loc 1 4154 0
	movl	$1, -124(%ebp)
	jmp	.L630
.L628:
	.loc 1 4157 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$110, %al
	jne	.L626
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L626
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L626
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
	jne	.L626
	.loc 1 4160 0
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
	.loc 1 4161 0
	movl	$1, -124(%ebp)
	jmp	.L630
.L626:
.L755:
	.loc 1 4149 0
	subl	$1, -32(%ebp)
	cmpl	$-1, -32(%ebp)
	jne	.L627
	.loc 1 4165 0
	leal	.LC827@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L636
	.loc 1 4166 0
	movl	$1, (%esp)
	call	set_fast_math_flags@PLT
	jmp	.L638
.L636:
	.loc 1 4167 0
	leal	.LC828@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L639
	.loc 1 4168 0
	movl	$0, (%esp)
	call	set_fast_math_flags@PLT
	jmp	.L638
.L639:
	.loc 1 4169 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	leal	.LC829@GOTOFF(%ebx), %eax
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
	jne	.L641
	movl	8(%ebp), %esi
	addl	$13, %esi
	movl	%esi, -120(%ebp)
	jmp	.L643
.L641:
	movl	$0, -120(%ebp)
.L643:
	movl	-120(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L644
	movl	8(%ebp), %eax
	movl	%eax, -140(%ebp)
	leal	.LC830@GOTOFF(%ebx), %eax
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
	jne	.L646
	movl	8(%ebp), %esi
	addl	$13, %esi
	movl	%esi, -116(%ebp)
	jmp	.L648
.L646:
	movl	$0, -116(%ebp)
.L648:
	movl	-116(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L649
.L644:
.LBB21:
	.loc 1 4174 0
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
	.loc 1 4175 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4176 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4177 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4178 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4179 0
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
	jge	.L638
	.loc 1 4181 0
	cmpl	$43, -24(%ebp)
	jle	.L652
	.loc 1 4182 0
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	jmp	.L638
.L652:
	.loc 1 4184 0
	movl	$10, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	.loc 1 4169 0
	jmp	.L638
.L649:
.LBE21:
	.loc 1 4187 0
	movl	8(%ebp), %eax
	movl	%eax, -152(%ebp)
	leal	.LC831@GOTOFF(%ebx), %eax
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
	jne	.L654
	movl	8(%ebp), %esi
	addl	$10, %esi
	movl	%esi, -112(%ebp)
	jmp	.L656
.L654:
	movl	$0, -112(%ebp)
.L656:
	movl	-112(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L657
	.loc 1 4189 0
	leal	.LC832@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L659
	.loc 1 4190 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L638
.L659:
	.loc 1 4191 0
	leal	.LC833@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L662
	.loc 1 4192 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$2, (%eax)
	jmp	.L638
.L662:
	.loc 1 4193 0
	leal	.LC834@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L664
	.loc 1 4194 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$3, (%eax)
	jmp	.L638
.L664:
	.loc 1 4195 0
	leal	.LC835@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L666
	.loc 1 4196 0
	movl	flag_tls_default@GOT(%ebx), %eax
	movl	$4, (%eax)
	jmp	.L638
.L666:
	.loc 1 4198 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC836@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L638
.L657:
	.loc 1 4201 0
	movl	8(%ebp), %eax
	movl	%eax, -164(%ebp)
	leal	.LC837@GOTOFF(%ebx), %eax
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
	jne	.L668
	movl	8(%ebp), %esi
	addl	$14, %esi
	movl	%esi, -108(%ebp)
	jmp	.L670
.L668:
	movl	$0, -108(%ebp)
.L670:
	movl	-108(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L671
	.loc 1 4202 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC838@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fix_sched_param@PLT
	jmp	.L638
.L671:
	.loc 1 4204 0
	movl	8(%ebp), %eax
	movl	%eax, -176(%ebp)
	leal	.LC839@GOTOFF(%ebx), %eax
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
	jne	.L673
	movl	8(%ebp), %esi
	addl	$6, %esi
	movl	%esi, -104(%ebp)
	jmp	.L675
.L673:
	movl	$0, -104(%ebp)
.L675:
	movl	-104(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L676
	.loc 1 4205 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_register@PLT
	jmp	.L638
.L676:
	.loc 1 4206 0
	movl	8(%ebp), %eax
	movl	%eax, -188(%ebp)
	leal	.LC840@GOTOFF(%ebx), %eax
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
	jne	.L678
	movl	8(%ebp), %esi
	addl	$10, %esi
	movl	%esi, -100(%ebp)
	jmp	.L680
.L678:
	movl	$0, -100(%ebp)
.L680:
	movl	-100(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L681
	.loc 1 4207 0
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_register@PLT
	jmp	.L638
.L681:
	.loc 1 4208 0
	movl	8(%ebp), %eax
	movl	%eax, -200(%ebp)
	leal	.LC841@GOTOFF(%ebx), %eax
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
	jne	.L683
	movl	8(%ebp), %esi
	addl	$11, %esi
	movl	%esi, -96(%ebp)
	jmp	.L685
.L683:
	movl	$0, -96(%ebp)
.L685:
	movl	-96(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L686
	.loc 1 4209 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	fix_register@PLT
	jmp	.L638
.L686:
	.loc 1 4210 0
	movl	8(%ebp), %eax
	movl	%eax, -212(%ebp)
	leal	.LC842@GOTOFF(%ebx), %eax
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
	jne	.L688
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -92(%ebp)
	jmp	.L690
.L688:
	movl	$0, -92(%ebp)
.L690:
	movl	-92(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L691
	.loc 1 4211 0
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
	jmp	.L638
.L691:
	.loc 1 4212 0
	movl	8(%ebp), %eax
	movl	%eax, -224(%ebp)
	leal	.LC843@GOTOFF(%ebx), %eax
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
	jne	.L693
	movl	8(%ebp), %esi
	addl	$16, %esi
	movl	%esi, -88(%ebp)
	jmp	.L695
.L693:
	movl	$0, -88(%ebp)
.L695:
	movl	-88(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L696
	.loc 1 4213 0
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
	jmp	.L638
.L696:
	.loc 1 4215 0
	movl	8(%ebp), %eax
	movl	%eax, -236(%ebp)
	leal	.LC844@GOTOFF(%ebx), %eax
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
	jne	.L698
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -84(%ebp)
	jmp	.L700
.L698:
	movl	$0, -84(%ebp)
.L700:
	movl	-84(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L701
	.loc 1 4216 0
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
	jmp	.L638
.L701:
	.loc 1 4217 0
	movl	8(%ebp), %eax
	movl	%eax, -248(%ebp)
	leal	.LC845@GOTOFF(%ebx), %eax
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
	jne	.L703
	movl	8(%ebp), %esi
	addl	$13, %esi
	movl	%esi, -80(%ebp)
	jmp	.L705
.L703:
	movl	$0, -80(%ebp)
.L705:
	movl	-80(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L706
	.loc 1 4218 0
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
	jmp	.L638
.L706:
	.loc 1 4220 0
	movl	8(%ebp), %eax
	movl	%eax, -260(%ebp)
	leal	.LC846@GOTOFF(%ebx), %eax
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
	jne	.L708
	movl	8(%ebp), %esi
	addl	$21, %esi
	movl	%esi, -76(%ebp)
	jmp	.L710
.L708:
	movl	$0, -76(%ebp)
.L710:
	movl	-76(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L711
.LBB22:
	.loc 1 4223 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_reg_name@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4224 0
	cmpl	$0, -20(%ebp)
	jns	.L713
	.loc 1 4225 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC847@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L638
.L713:
	.loc 1 4227 0
	movl	-20(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L716
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L716
	movl	$5, -68(%ebp)
	jmp	.L719
.L716:
	movl	$4, -68(%ebp)
.L719:
	movl	-72(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-68(%ebp), %esi
	movl	%esi, (%esp)
	call	gen_rtx_REG@PLT
	movl	%eax, %edx
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L638
.L711:
.LBE22:
	.loc 1 4229 0
	movl	8(%ebp), %eax
	movl	%eax, -272(%ebp)
	leal	.LC848@GOTOFF(%ebx), %edi
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
	jne	.L720
	movl	8(%ebp), %esi
	addl	$19, %esi
	movl	%esi, -64(%ebp)
	jmp	.L722
.L720:
	movl	$0, -64(%ebp)
.L722:
	movl	-64(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L723
.LBB23:
	.loc 1 4233 0
	movl	$-1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4234 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L725
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L725
	movl	$5, -60(%ebp)
	jmp	.L728
.L725:
	movl	$4, -60(%ebp)
.L728:
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$78, (%esp)
	call	gen_rtx_fmt_s@PLT
	movl	%eax, %edx
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L638
.L723:
.LBE23:
	.loc 1 4236 0
	movl	8(%ebp), %eax
	movl	%eax, -284(%ebp)
	leal	.LC849@GOTOFF(%ebx), %ecx
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
	jne	.L729
	movl	8(%ebp), %esi
	addl	$15, %esi
	movl	%esi, -56(%ebp)
	jmp	.L731
.L729:
	movl	$0, -56(%ebp)
.L731:
	movl	-56(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L732
	.loc 1 4238 0
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
	jmp	.L638
.L732:
	.loc 1 4241 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	leal	.LC850@GOTOFF(%ebx), %eax
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
	jne	.L734
	movl	8(%ebp), %esi
	addl	$26, %esi
	movl	%esi, -52(%ebp)
	jmp	.L736
.L734:
	movl	$0, -52(%ebp)
.L736:
	movl	-52(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L737
	.loc 1 4244 0
	leal	.LC851@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L739
	.loc 1 4245 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 20(%eax)
	jmp	.L638
.L739:
	.loc 1 4246 0
	leal	.LC852@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L742
	.loc 1 4247 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$2, 20(%eax)
	jmp	.L638
.L742:
	.loc 1 4250 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC853@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L638
.L737:
	.loc 1 4252 0
	leal	.LC854@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L744
	.loc 1 4253 0
	movl	stack_limit_rtx@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L638
.L744:
	.loc 1 4254 0
	movl	8(%ebp), %eax
	movl	%eax, -308(%ebp)
	leal	.LC855@GOTOFF(%ebx), %eax
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
	jne	.L746
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -48(%ebp)
	jmp	.L748
.L746:
	movl	$0, -48(%ebp)
.L748:
	movl	-48(%ebp), %edi
	movl	%edi, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L749
	.loc 1 4255 0
	movl	flag_random_seed@GOT(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L638
.L749:
	.loc 1 4256 0
	leal	.LC856@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L751
	.loc 1 4257 0
	movl	flag_random_seed@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L638
.L751:
	.loc 1 4258 0
	leal	.LC857@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L638
	.loc 1 4263 0
	movl	$0, -124(%ebp)
	jmp	.L630
.L638:
	.loc 1 4265 0
	movl	$1, -124(%ebp)
.L630:
	movl	-124(%ebp), %eax
	.loc 1 4266 0
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	decode_f_option, .-decode_f_option
	.section	.rodata
.LC858:
	.string	"id-clash-"
	.align 4
.LC859:
	.string	"-Wid-clash-LEN is no longer supported"
.LC860:
	.string	"larger-than-"
.LC861:
	.string	"unused"
.LC862:
	.string	"no-unused"
	.text
	.type	decode_W_option, @function
decode_W_option:
.LFB43:
	.loc 1 4275 0
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
	.loc 1 4276 0
	movl	$0, -20(%ebp)
	.loc 1 4281 0
	movl	$22, -16(%ebp)
	jmp	.L783
.L758:
	.loc 1 4283 0
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L759
	.loc 1 4285 0
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	4(%eax,%edx), %ecx
	movl	-16(%ebp), %eax
	leal	W_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, (%ecx)
	.loc 1 4286 0
	movl	$1, -40(%ebp)
	jmp	.L761
.L759:
	.loc 1 4289 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$110, %al
	jne	.L757
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	jne	.L757
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L757
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
	jne	.L757
	.loc 1 4292 0
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
	.loc 1 4293 0
	movl	$1, -40(%ebp)
	jmp	.L761
.L757:
.L783:
	.loc 1 4281 0
	subl	$1, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	.L758
	.loc 1 4297 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC858@GOTOFF(%ebx), %eax
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
	jne	.L767
	movl	8(%ebp), %esi
	addl	$9, %esi
	movl	%esi, -36(%ebp)
	jmp	.L769
.L767:
	movl	$0, -36(%ebp)
.L769:
	movl	-36(%ebp), %edi
	movl	%edi, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L770
	.loc 1 4298 0
	leal	.LC859@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L772
.L770:
	.loc 1 4299 0
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC860@GOTOFF(%ebx), %eax
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
	jne	.L773
	movl	8(%ebp), %esi
	addl	$12, %esi
	movl	%esi, -32(%ebp)
	jmp	.L775
.L773:
	movl	$0, -32(%ebp)
.L775:
	movl	-32(%ebp), %edi
	movl	%edi, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	.L776
	.loc 1 4301 0
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
	.loc 1 4303 0
	movl	larger_than_size@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	andl	%edx, %eax
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %edx
	movl	warn_larger_than@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L772
.L776:
	.loc 1 4305 0
	leal	.LC861@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L778
	.loc 1 4307 0
	movl	$1, (%esp)
	call	set_Wunused@PLT
	jmp	.L772
.L778:
	.loc 1 4309 0
	leal	.LC862@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L780
	.loc 1 4311 0
	movl	$0, (%esp)
	call	set_Wunused@PLT
	jmp	.L772
.L780:
	.loc 1 4314 0
	movl	$0, -40(%ebp)
	jmp	.L761
.L772:
	.loc 1 4316 0
	movl	$1, -40(%ebp)
.L761:
	movl	-40(%ebp), %eax
	.loc 1 4317 0
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
	.type	max_debug_level.17225, @object
	.size	max_debug_level.17225, 4
max_debug_level.17225:
	.long	3
.LC863:
	.string	"none"
.LC864:
	.string	"coff"
.LC865:
	.string	"dwarf-1"
.LC866:
	.string	"dwarf-2"
.LC867:
	.string	"xcoff"
.LC868:
	.string	"vms"
	.section	.data.rel.ro.local
	.align 4
	.type	debug_type_names.17224, @object
	.size	debug_type_names.17224, 28
debug_type_names.17224:
	.long	.LC863
	.long	.LC40
	.long	.LC864
	.long	.LC865
	.long	.LC866
	.long	.LC867
	.long	.LC868
	.local	type_explicitly_set_p.17223
	.comm	type_explicitly_set_p.17223,4,4
	.local	selected_debug_type.17222
	.comm	selected_debug_type.17222,4,4
	.local	level.17221
	.comm	level.17221,4,4
	.section	.rodata
	.align 4
.LC869:
	.string	"use -gdwarf -g%d for DWARF v1, level %d"
.LC870:
	.string	"use -gdwarf-2   for DWARF v2"
	.align 4
.LC871:
	.string	"ignoring option `%s' due to invalid debug level specification"
	.align 4
.LC872:
	.string	"`%s': unknown or unsupported -g option"
	.align 4
.LC873:
	.string	"`%s' ignored, conflicts with `-g%s'"
	.text
	.type	decode_g_option, @function
decode_g_option:
.LFB44:
	.loc 1 4326 0
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
	.loc 1 4348 0
	leal	debug_args@GOTOFF(%ebx), %eax
	movl	%eax, da@GOTOFF(%ebx)
	jmp	.L785
.L786:
.LBB24:
	.loc 1 4350 0
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
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
	movl	%eax, -20(%ebp)
	.loc 1 4352 0
	cmpl	$0, -20(%ebp)
	je	.L787
	movl	-20(%ebp), %edx
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L789
.L787:
.LBB25:
	.loc 1 4354 0
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 4355 0
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4357 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L790
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L789
.L790:
	.loc 1 4368 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L792
	.loc 1 4369 0
	movl	max_debug_level.17225@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, level.17221@GOTOFF(%ebx)
	jmp	.L794
.L792:
	.loc 1 4371 0
	movl	level.17221@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L795
	movl	level.17221@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L797
.L795:
	movl	$2, -36(%ebp)
.L797:
	movl	-36(%ebp), %edx
	movl	%edx, level.17221@GOTOFF(%ebx)
.L794:
	.loc 1 4373 0
	cmpl	$1, -20(%ebp)
	jle	.L798
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L798
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L798
	.loc 1 4375 0
	movl	level.17221@GOTOFF(%ebx), %eax
	movl	level.17221@GOTOFF(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC869@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4377 0
	movl	level.17221@GOTOFF(%ebx), %eax
	cmpl	$2, %eax
	jne	.L798
	.loc 1 4378 0
	leal	.LC870@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L798:
	.loc 1 4381 0
	movl	level.17221@GOTOFF(%ebx), %edx
	movl	max_debug_level.17225@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jbe	.L803
	.loc 1 4383 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC871@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 4386 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, level.17221@GOTOFF(%ebx)
.L803:
	.loc 1 4389 0
	cmpl	$0, -16(%ebp)
	jne	.L805
	.loc 1 4391 0
	movl	$4, -16(%ebp)
	.loc 1 4393 0
	cmpl	$1, -20(%ebp)
	jle	.L805
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L805
	.loc 1 4399 0
	movl	$1, -16(%ebp)
.L805:
	.loc 1 4405 0
	cmpl	$0, -16(%ebp)
	jne	.L809
	.loc 1 4406 0
	movl	8(%ebp), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC872@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L809:
	.loc 1 4409 0
	movl	type_explicitly_set_p.17223@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L811
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L811
	movl	selected_debug_type.17222@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	je	.L811
	.loc 1 4413 0
	movl	selected_debug_type.17222@GOTOFF(%ebx), %eax
	movl	debug_type_names.17224@GOTOFF(%ebx,%eax,4), %eax
	movl	8(%ebp), %edx
	subl	$2, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	.LC873@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 4409 0
	jmp	.L823
.L811:
	.loc 1 4419 0
	movl	type_explicitly_set_p.17223@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L816
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L816
	jmp	.L819
.L816:
	.loc 1 4424 0
	movl	-16(%ebp), %eax
	movl	%eax, selected_debug_type.17222@GOTOFF(%ebx)
	.loc 1 4425 0
	movl	da@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, type_explicitly_set_p.17223@GOTOFF(%ebx)
.L819:
	.loc 1 4428 0
	movl	level.17221@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L820
	movl	selected_debug_type.17222@GOTOFF(%ebx), %edi
	movl	%edi, -32(%ebp)
	jmp	.L822
.L820:
	movl	$0, -32(%ebp)
.L822:
	movl	write_symbols@GOT(%ebx), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 4431 0
	movl	da@GOTOFF(%ebx), %eax
	movl	8(%eax), %edx
	movl	use_gnu_debug_info_extensions@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4432 0
	movl	level.17221@GOTOFF(%ebx), %edx
	movl	debug_info_level@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4435 0
	jmp	.L823
.L789:
.LBE25:
.LBE24:
	.loc 1 4348 0
	movl	da@GOTOFF(%ebx), %eax
	addl	$16, %eax
	movl	%eax, da@GOTOFF(%ebx)
.L785:
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L786
.L823:
	.loc 1 4439 0
	movl	da@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L824
	.loc 1 4440 0
	movl	$0, -28(%ebp)
	jmp	.L826
.L824:
	.loc 1 4442 0
	movl	$1, -28(%ebp)
.L826:
	movl	-28(%ebp), %eax
	.loc 1 4443 0
	addl	$48, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	decode_g_option, .-decode_g_option
	.section	.rodata
.LC874:
	.string	"-help"
.LC875:
	.string	"-target-help"
.LC876:
	.string	"-version"
.LC877:
	.string	"-param"
	.align 4
.LC878:
	.string	"-param option missing argument"
.LC879:
	.string	"invalid --param option: %s"
.LC880:
	.string	"invalid parameter value `%s'"
.LC881:
	.string	"mp"
.LC882:
	.string	"dumpbase"
.LC883:
	.string	"pedantic"
.LC884:
	.string	"pedantic-errors"
.LC885:
	.string	"pstatic_as_global"
.LC886:
	.string	"quiet"
.LC887:
	.string	"version"
.LC888:
	.string	"aux-info"
.LC889:
	.string	"auxbase"
.LC890:
	.string	"auxbase-strip"
	.text
	.type	independent_decode_option, @function
independent_decode_option:
.LFB45:
	.loc 1 4452 0
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
	.loc 1 4453 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4455 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L829
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L831
.L829:
	.loc 1 4457 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L832
	.loc 1 4458 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L832:
	.loc 1 4460 0
	movl	-28(%ebp), %eax
	movl	%eax, filename@GOTOFF(%ebx)
	.loc 1 4462 0
	movl	$1, -44(%ebp)
	jmp	.L834
.L831:
	.loc 1 4465 0
	addl	$1, -28(%ebp)
	.loc 1 4467 0
	leal	.LC874@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L835
	.loc 1 4469 0
	call	display_help
	.loc 1 4470 0
	movl	$1, exit_after_options@GOTOFF(%ebx)
	.loc 1 4471 0
	movl	$1, -44(%ebp)
	jmp	.L834
.L835:
	.loc 1 4474 0
	leal	.LC875@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L837
	.loc 1 4476 0
	call	display_target_options
	.loc 1 4477 0
	movl	$1, exit_after_options@GOTOFF(%ebx)
	.loc 1 4478 0
	movl	$1, -44(%ebp)
	jmp	.L834
.L837:
	.loc 1 4481 0
	leal	.LC876@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L839
	.loc 1 4483 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_version
	.loc 1 4484 0
	movl	$1, exit_after_options@GOTOFF(%ebx)
	.loc 1 4485 0
	movl	$1, -44(%ebp)
	jmp	.L834
.L839:
	.loc 1 4489 0
	leal	.LC877@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L841
.LBB26:
	.loc 1 4493 0
	cmpl	$1, 8(%ebp)
	jne	.L843
	.loc 1 4495 0
	leal	.LC878@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 4496 0
	movl	$1, -44(%ebp)
	jmp	.L834
.L843:
	.loc 1 4500 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4502 0
	movl	$61, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	movl	%eax, -24(%ebp)
	.loc 1 4503 0
	cmpl	$0, -24(%ebp)
	jne	.L845
	.loc 1 4504 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC879@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L847
.L845:
.LBB27:
	.loc 1 4510 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 4512 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	$-1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -20(%ebp)
	.loc 1 4513 0
	cmpl	$-1, -20(%ebp)
	je	.L848
	.loc 1 4514 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	set_param_value@PLT
	jmp	.L847
.L848:
	.loc 1 4516 0
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	.LC880@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L847:
.LBE27:
	.loc 1 4519 0
	movl	$2, -44(%ebp)
	jmp	.L834
.L841:
.LBE26:
	.loc 1 4523 0
	leal	.LC881@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L850
	.loc 1 4525 0
	movl	flag_openmp@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4526 0
	movl	$1, -44(%ebp)
	jmp	.L834
.L850:
	.loc 1 4530 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$89, %al
	jne	.L852
	.loc 1 4531 0
	addl	$1, -28(%ebp)
.L852:
	.loc 1 4533 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$71, %eax
	movl	%eax, -48(%ebp)
	cmpl	$48, -48(%ebp)
	ja	.L854
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L868@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L868:
	.long	.L855@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L869@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L857@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L858@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L859@GOTOFF
	.long	.L854@GOTOFF
	.long	.L860@GOTOFF
	.long	.L861@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L862@GOTOFF
	.long	.L854@GOTOFF
	.long	.L863@GOTOFF
	.long	.L864@GOTOFF
	.long	.L865@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L854@GOTOFF
	.long	.L866@GOTOFF
	.long	.L867@GOTOFF
	.text
.L854:
	.loc 1 4536 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L862:
	.loc 1 4543 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	set_target_switch
	.loc 1 4544 0
	jmp	.L869
.L860:
	.loc 1 4547 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_f_option
	movl	%eax, -44(%ebp)
	jmp	.L834
.L861:
	.loc 1 4550 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_g_option
	movl	%eax, -44(%ebp)
	jmp	.L834
.L859:
	.loc 1 4553 0
	leal	.LC882@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L870
	.loc 1 4555 0
	cmpl	$1, 8(%ebp)
	jne	.L872
	.loc 1 4556 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L872:
	.loc 1 4558 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L874
	.loc 1 4559 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	dump_base_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L874:
	.loc 1 4561 0
	movl	$2, -44(%ebp)
	jmp	.L834
.L870:
	.loc 1 4564 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_d_option
	.loc 1 4565 0
	jmp	.L869
.L864:
	.loc 1 4568 0
	leal	.LC883@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L876
	.loc 1 4569 0
	movl	pedantic@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L869
.L876:
	.loc 1 4570 0
	leal	.LC884@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L879
	.loc 1 4571 0
	movl	pedantic@GOT(%ebx), %eax
	movl	$1, (%eax)
	movl	pedantic@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_pedantic_errors@GOT(%ebx), %eax
	movl	%edx, (%eax)
	jmp	.L869
.L879:
	.loc 1 4573 0
	leal	.LC885@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L881
	.loc 1 4574 0
	movl	pstatic_as_global@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L869
.L881:
	.loc 1 4576 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L883
	.loc 1 4577 0
	movl	profile_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L869
.L883:
	.loc 1 4579 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L865:
	.loc 1 4583 0
	leal	.LC886@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L885
	.loc 1 4584 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4587 0
	jmp	.L869
.L885:
	.loc 1 4586 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L866:
	.loc 1 4590 0
	leal	.LC887@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L887
	.loc 1 4591 0
	movl	$1, version_flag@GOTOFF(%ebx)
	.loc 1 4594 0
	jmp	.L869
.L887:
	.loc 1 4593 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L867:
	.loc 1 4597 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L889
	.loc 1 4598 0
	movl	inhibit_warnings@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4601 0
	jmp	.L869
.L889:
	.loc 1 4600 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L857:
	.loc 1 4604 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L891
	.loc 1 4606 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4610 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L869
	.loc 1 4611 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	$2, (%eax)
	.loc 1 4615 0
	jmp	.L869
.L891:
	.loc 1 4614 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	decode_W_option
	movl	%eax, -44(%ebp)
	jmp	.L834
.L858:
	.loc 1 4618 0
	movl	$8, 8(%esp)
	leal	.LC888@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L895
	.loc 1 4620 0
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L897
	.loc 1 4622 0
	cmpl	$1, 8(%ebp)
	jne	.L899
	.loc 1 4623 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L899:
	.loc 1 4625 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, aux_info_file_name@GOTOFF(%ebx)
	.loc 1 4626 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4627 0
	movl	$2, -44(%ebp)
	jmp	.L834
.L897:
	.loc 1 4629 0
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L901
	.loc 1 4631 0
	movl	-28(%ebp), %eax
	addl	$9, %eax
	movl	%eax, aux_info_file_name@GOTOFF(%ebx)
	.loc 1 4632 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4663 0
	jmp	.L869
.L901:
	.loc 1 4635 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L895:
	.loc 1 4637 0
	leal	.LC889@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L903
	.loc 1 4639 0
	cmpl	$1, 8(%ebp)
	jne	.L905
	.loc 1 4640 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L905:
	.loc 1 4642 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L907
	.loc 1 4643 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	aux_base_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L907:
	.loc 1 4645 0
	movl	$2, -44(%ebp)
	jmp	.L834
.L903:
	.loc 1 4647 0
	leal	.LC890@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L909
	.loc 1 4649 0
	cmpl	$1, 8(%ebp)
	jne	.L911
	.loc 1 4650 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L911:
	.loc 1 4652 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L913
	.loc 1 4654 0
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
	.loc 1 4655 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L913
	.loc 1 4656 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	aux_base_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L913:
	.loc 1 4659 0
	movl	$2, -44(%ebp)
	jmp	.L834
.L909:
	.loc 1 4662 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L863:
	.loc 1 4666 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L916
	.loc 1 4668 0
	cmpl	$1, 8(%ebp)
	jne	.L918
	.loc 1 4669 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L918:
	.loc 1 4671 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	asm_file_name@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 4672 0
	movl	$2, -44(%ebp)
	jmp	.L834
.L916:
	.loc 1 4674 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L855:
.LBB28:
	.loc 1 4681 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L920
	.loc 1 4683 0
	cmpl	$1, 8(%ebp)
	jne	.L922
	.loc 1 4684 0
	movl	$0, -44(%ebp)
	jmp	.L834
.L922:
	.loc 1 4686 0
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$-1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4687 0
	movl	$2, -12(%ebp)
	jmp	.L924
.L920:
	.loc 1 4691 0
	movl	-28(%ebp), %eax
	addl	$1, %eax
	movl	$-1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -16(%ebp)
	.loc 1 4692 0
	movl	$1, -12(%ebp)
.L924:
	.loc 1 4695 0
	cmpl	$-1, -16(%ebp)
	jne	.L925
	.loc 1 4696 0
	movl	$0, -12(%ebp)
	jmp	.L927
.L925:
	.loc 1 4699 0
	movl	g_switch_set@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 4700 0
	movl	g_switch_value@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
.L927:
	.loc 1 4703 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	.L834
.L869:
.LBE28:
	.loc 1 4707 0
	movl	$1, -44(%ebp)
.L834:
	movl	-44(%ebp), %eax
	.loc 1 4708 0
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
	.loc 1 4714 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4715 0
	movl	global_dc@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4716 0
	movl	global_dc@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4717 0
	popl	%ebp
	ret
.LFE46:
	.size	check_gnu_errors, .-check_gnu_errors
	.type	set_target_switch, @function
set_target_switch:
.LFB47:
	.loc 1 4726 0
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
	.loc 1 4728 0
	movl	$0, -20(%ebp)
	.loc 1 4730 0
	movl	$0, -24(%ebp)
	jmp	.L932
.L933:
	.loc 1 4731 0
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
	jne	.L934
	.loc 1 4733 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	testl	%eax, %eax
	jns	.L936
	.loc 1 4734 0
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
	jmp	.L938
.L936:
	.loc 1 4736 0
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
.L938:
	.loc 1 4737 0
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L939
	.loc 1 4739 0
	movl	-24(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	testl	%eax, %eax
	jns	.L941
	.loc 1 4740 0
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
	jmp	.L939
.L941:
	.loc 1 4742 0
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
.L939:
	.loc 1 4744 0
	movl	$1, -20(%ebp)
.L934:
	.loc 1 4730 0
	addl	$1, -24(%ebp)
.L932:
	cmpl	$61, -24(%ebp)
	jbe	.L933
	.loc 1 4748 0
	cmpl	$0, -20(%ebp)
	jne	.L944
	.loc 1 4749 0
	movl	$0, -24(%ebp)
	jmp	.L946
.L947:
.LBB29:
	.loc 1 4751 0
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
	.loc 1 4752 0
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
	jne	.L948
	.loc 1 4754 0
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
	.loc 1 4755 0
	movl	$1, -20(%ebp)
.L948:
.LBE29:
	.loc 1 4749 0
	addl	$1, -24(%ebp)
.L946:
	cmpl	$7, -24(%ebp)
	jbe	.L947
.L944:
	.loc 1 4760 0
	cmpl	$0, -20(%ebp)
	jne	.L952
	.loc 1 4761 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC763@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L952:
	.loc 1 4762 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	set_target_switch, .-set_target_switch
	.section	.rodata
.LC891:
	.string	" "
.LC892:
	.string	"4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
.LC893:
	.string	"key-linux"
	.align 4
.LC894:
	.string	"%s%s%s version %s (%s)\n%s\tcompiled by GNU C version %s.\n"
.LC895:
	.string	"ChangeSet %s (%s)\n"
.LC896:
	.string	"Built by %s@%s in %s\n"
.LC897:
	.string	"Built on %s\n"
	.text
	.type	print_version, @function
print_version:
.LFB48:
	.loc 1 4772 0
	pushl	%ebp
.LCFI135:
	movl	%esp, %ebp
.LCFI136:
	pushl	%ebx
.LCFI137:
	subl	$52, %esp
.LCFI138:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4776 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L954
	leal	.LC891@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L956
.L954:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
.L956:
	leal	.LC892@GOTOFF(%ebx), %eax
	movl	%eax, 32(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	.LC893@GOTOFF(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	version_string@GOT(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC894@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
	.loc 1 4786 0
	movl	cset_key@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	cset_rev@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC895@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
	.loc 1 4787 0
	movl	build_root@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	build_host@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	build_user@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC896@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
	.loc 1 4788 0
	movl	build_date@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC897@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fnotice@PLT
	.loc 1 4796 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	print_version, .-print_version
	.section	.rodata
.LC898:
	.string	"%s%s%s"
	.text
	.type	print_single_switch, @function
print_single_switch:
.LFB49:
	.loc 1 4807 0
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
	.loc 1 4810 0
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
	.loc 1 4812 0
	cmpl	$0, 12(%ebp)
	je	.L959
	movl	-12(%ebp), %eax
	addl	12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	.L959
	.loc 1 4815 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	28(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 4816 0
	movl	$0, 12(%ebp)
.L959:
	.loc 1 4818 0
	cmpl	$0, 12(%ebp)
	jne	.L962
	.loc 1 4820 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 4821 0
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
.L962:
	.loc 1 4823 0
	movl	36(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC898@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 4824 0
	movl	-12(%ebp), %eax
	addl	%eax, 12(%ebp)
	.loc 1 4825 0
	movl	12(%ebp), %eax
	.loc 1 4826 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	print_single_switch, .-print_single_switch
	.section	.rodata
.LC899:
	.string	"options passed: "
.LC900:
	.string	"-o"
.LC901:
	.string	"-quiet"
.LC902:
	.string	"options enabled: "
.LC903:
	.string	"-f"
.LC904:
	.string	"-m"
.LC905:
	.string	"-m%s"
	.text
	.type	print_switch_values, @function
print_switch_values:
.LFB50:
	.loc 1 4838 0
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
	.loc 1 4838 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4846 0
	call	default_flag_random_seed@PLT
	.loc 1 4850 0
	movl	-288(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L966
	leal	.LC891@GOTOFF(%ebx), %eax
	movl	%eax, -304(%ebp)
	jmp	.L968
.L966:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -304(%ebp)
.L968:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC899@GOTOFF(%ebx), %eax
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
	.loc 1 4853 0
	movl	save_argv@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, -272(%ebp)
	jmp	.L969
.L970:
	.loc 1 4854 0
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L971
	.loc 1 4857 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC900@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L973
	.loc 1 4859 0
	movl	-272(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L971
	.loc 1 4860 0
	addl	$4, -272(%ebp)
	.loc 1 4861 0
	jmp	.L971
.L973:
	.loc 1 4863 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC901@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L971
	.loc 1 4865 0
	movl	-272(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC876@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L971
	.loc 1 4867 0
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$100, %al
	je	.L971
	.loc 1 4870 0
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
.L971:
	.loc 1 4853 0
	addl	$4, -272(%ebp)
.L969:
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L970
	.loc 1 4872 0
	cmpl	$0, 12(%ebp)
	jle	.L981
	.loc 1 4873 0
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
.L981:
	.loc 1 4879 0
	movl	-288(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L983
	leal	.LC891@GOTOFF(%ebx), %eax
	movl	%eax, -300(%ebp)
	jmp	.L985
.L983:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -300(%ebp)
.L985:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 28(%esp)
	leal	.LC902@GOTOFF(%ebx), %eax
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
	.loc 1 4882 0
	movl	$0, -276(%ebp)
	jmp	.L986
.L987:
	.loc 1 4883 0
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
	jne	.L988
	.loc 1 4884 0
	movl	-276(%ebp), %eax
	leal	f_options@GOTOFF(%ebx), %edx
	sall	$4, %eax
	movl	(%eax,%edx), %eax
	movl	%eax, 28(%esp)
	leal	.LC903@GOTOFF(%ebx), %eax
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
.L988:
	.loc 1 4882 0
	addl	$1, -276(%ebp)
.L986:
	cmpl	$108, -276(%ebp)
	jbe	.L987
	.loc 1 4889 0
	movl	$0, -276(%ebp)
	jmp	.L991
.L992:
	.loc 1 4890 0
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L993
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	testl	%eax, %eax
	jle	.L993
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
	jne	.L993
	.loc 1 4895 0
	movl	-276(%ebp), %edx
	leal	target_switches@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 28(%esp)
	leal	.LC904@GOTOFF(%ebx), %eax
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
.L993:
	.loc 1 4889 0
	addl	$1, -276(%ebp)
.L991:
	cmpl	$61, -276(%ebp)
	jbe	.L992
	.loc 1 4900 0
	movl	$0, -276(%ebp)
	jmp	.L998
.L999:
	.loc 1 4901 0
	movl	-276(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	4(%eax,%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1000
.LBB30:
	.loc 1 4904 0
	movl	-276(%ebp), %edx
	leal	target_options@GOTOFF(%ebx), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %eax
	movl	%eax, 8(%esp)
	leal	.LC905@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-268(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 4905 0
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
.L1000:
.LBE30:
	.loc 1 4900 0
	addl	$1, -276(%ebp)
.L998:
	cmpl	$7, -276(%ebp)
	jbe	.L999
	.loc 1 4910 0
	movl	-284(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	fputs@PLT
	.loc 1 4911 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1004
	call	__stack_chk_fail_local
.L1004:
	addl	$336, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE50:
	.size	print_switch_values, .-print_switch_values
	.type	init_asm_output, @function
init_asm_output:
.LFB51:
	.loc 1 4920 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 4922 0
	movl	asm_out_file@GOT(%ecx), %eax
	movl	$0, (%eax)
	.loc 1 4972 0
	popl	%ebp
	ret
.LFE51:
	.size	init_asm_output, .-init_asm_output
	.type	general_init, @function
general_init:
.LFB52:
	.loc 1 4980 0
	pushl	%ebp
.LCFI151:
	movl	%esp, %ebp
.LCFI152:
	pushl	%edi
.LCFI153:
	pushl	%ebx
.LCFI154:
	subl	$32, %esp
.LCFI155:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4983 0
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
	.loc 1 4984 0
	jmp	.L1008
.L1009:
	.loc 1 4985 0
	subl	$1, -12(%ebp)
.L1008:
	.loc 1 4984 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.L1010
	movl	-12(%ebp), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	.L1009
.L1010:
	.loc 1 4986 0
	movl	progname@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 4988 0
	movl	progname@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	xmalloc_set_program_name@PLT
	.loc 1 4990 0
	call	hex_init@PLT
	.loc 1 4996 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$11, (%esp)
	call	signal@PLT
	.loc 1 4999 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	signal@PLT
	.loc 1 5002 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$7, (%esp)
	call	signal@PLT
	.loc 1 5005 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$6, (%esp)
	call	signal@PLT
	.loc 1 5011 0
	leal	crash_signal@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	signal@PLT
	.loc 1 5016 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	diagnostic_initialize@PLT
	.loc 1 5020 0
	call	init_ggc@PLT
	.loc 1 5021 0
	call	init_stringpool@PLT
	.loc 1 5022 0
	call	init_ttree@PLT
	.loc 1 5023 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE52:
	.size	general_init, .-general_init
	.section	.rodata
.LC906:
	.string	"-O"
.LC907:
	.string	"PT:"
	.align 4
.LC908:
	.string	"ignoring command line option '%s'"
	.align 4
.LC909:
	.string	"(it is valid for %s but not the selected language)"
	.align 4
.LC910:
	.string	"-Wuninitialized is not supported without -O"
	.text
	.type	parse_options_and_default_flags, @function
parse_options_and_default_flags:
.LFB53:
	.loc 1 5040 0
	pushl	%ebp
.LCFI156:
	movl	%esp, %ebp
.LCFI157:
	pushl	%edi
.LCFI158:
	pushl	%esi
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$60, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5044 0
	movl	save_argc@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5045 0
	movl	save_argv@GOT(%ebx), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5048 0
	call	init_reg_sets@PLT
	.loc 1 5051 0
	movl	$23, 4(%esp)
	leal	lang_independent_params@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	add_params@PLT
	.loc 1 5054 0
	call	init_ggc_heuristics@PLT
	.loc 1 5057 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	8(%eax), %eax
	call	*%eax
	.loc 1 5061 0
	movl	$1, -44(%ebp)
	jmp	.L1014
.L1015:
	.loc 1 5063 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %edx
	leal	.LC906@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L1016
	.loc 1 5065 0
	movl	optimize@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5066 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L1018
.L1016:
	.loc 1 5068 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L1018
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$79, %al
	jne	.L1018
.LBB31:
	.loc 1 5071 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -40(%ebp)
	.loc 1 5074 0
	movl	$3, 8(%esp)
	leal	.LC907@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L1018
	.loc 1 5079 0
	movl	-40(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L1022
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1022
	.loc 1 5081 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5084 0
	movl	optimize@GOT(%ebx), %eax
	movl	$2, (%eax)
	.loc 1 5079 0
	jmp	.L1018
.L1022:
.LBB32:
	.loc 1 5088 0
	movl	-40(%ebp), %eax
	subl	$2, %eax
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	read_integral_parameter@PLT
	movl	%eax, -36(%ebp)
	.loc 1 5089 0
	cmpl	$-1, -36(%ebp)
	je	.L1018
	.loc 1 5091 0
	movl	optimize@GOT(%ebx), %eax
	movl	-36(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 5092 0
	movl	optimize_size@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1018:
.LBE32:
.LBE31:
	.loc 1 5061 0
	addl	$1, -44(%ebp)
.L1014:
	movl	-44(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L1015
	.loc 1 5099 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	Opt_Level@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5102 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1027
	.loc 1 5104 0
	movl	flag_merge_constants@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1027:
	.loc 1 5107 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L1029
	.loc 1 5109 0
	movl	flag_defer_pop@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5110 0
	movl	flag_thread_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5112 0
	movl	flag_delayed_branch@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5115 0
	movl	flag_omit_frame_pointer@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5117 0
	movl	flag_guess_branch_prob@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5118 0
	movl	flag_cprop_registers@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5119 0
	movl	$1, flag_loop_optimize@GOTOFF(%ebx)
	.loc 1 5120 0
	movl	$1, flag_crossjumping@GOTOFF(%ebx)
	.loc 1 5121 0
	movl	$1, flag_if_conversion@GOTOFF(%ebx)
	.loc 1 5122 0
	movl	$1, flag_if_conversion2@GOTOFF(%ebx)
.L1029:
	.loc 1 5125 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1031
	.loc 1 5127 0
	movl	flag_optimize_sibling_calls@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5128 0
	movl	flag_cse_follow_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5129 0
	movl	flag_cse_skip_blocks@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5130 0
	movl	$1, flag_gcse@GOTOFF(%ebx)
	.loc 1 5131 0
	movl	flag_expensive_optimizations@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5132 0
	movl	flag_strength_reduce@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5133 0
	movl	$1, flag_rerun_cse_after_loop@GOTOFF(%ebx)
	.loc 1 5134 0
	movl	flag_rerun_loop_opt@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5135 0
	movl	flag_caller_saves@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5136 0
	movl	flag_force_mem@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5137 0
	movl	flag_peephole2@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5139 0
	movl	flag_schedule_insns@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5140 0
	movl	flag_schedule_insns_after_reload@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5142 0
	movl	flag_regmove@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5143 0
	movl	flag_strict_aliasing@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5144 0
	movl	$1, flag_delete_null_pointer_checks@GOTOFF(%ebx)
	.loc 1 5145 0
	movl	flag_reorder_blocks@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5146 0
	movl	flag_reorder_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1031:
	.loc 1 5149 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jle	.L1033
	.loc 1 5151 0
	movl	flag_inline_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5152 0
	movl	flag_rename_registers@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1033:
	.loc 1 5155 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L1035
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1037
.L1035:
	.loc 1 5157 0
	movl	align_loops@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5158 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5159 0
	movl	align_labels@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5160 0
	movl	align_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5169 0
	movl	flag_reorder_blocks@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1037:
	.loc 1 5173 0
	movl	flag_signed_char@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5181 0
	movl	target_flags@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5182 0
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	set_target_switch
	.loc 1 5196 0
	movl	$1, -44(%ebp)
	jmp	.L1077
.L1039:
.LBB33:
	.loc 1 5202 0
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
	.loc 1 5204 0
	cmpl	$0, -32(%ebp)
	js	.L1040
	.loc 1 5208 0
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
	jmp	.L1042
.L1040:
	.loc 1 5211 0
	negl	-32(%ebp)
	.loc 1 5212 0
	movl	$0, -28(%ebp)
.L1042:
	.loc 1 5215 0
	cmpl	$0, -32(%ebp)
	jne	.L1043
	cmpl	$0, -28(%ebp)
	je	.L1045
.L1043:
	.loc 1 5216 0
	movl	-32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-28(%ebp), %edi
	movl	%edi, -48(%ebp)
	movl	-52(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jge	.L1046
	movl	-52(%ebp), %edi
	movl	%edi, -48(%ebp)
.L1046:
	movl	-48(%ebp), %eax
	addl	%eax, -44(%ebp)
	.loc 1 5215 0
	jmp	.L1038
.L1045:
.LBB34:
	.loc 1 5219 0
	movl	$0, -24(%ebp)
	.loc 1 5220 0
	movl	$0, -20(%ebp)
	.loc 1 5230 0
	movl	$0, -16(%ebp)
	jmp	.L1047
.L1048:
	.loc 1 5232 0
	movl	-16(%ebp), %eax
	movl	documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -24(%ebp)
	.loc 1 5234 0
	cmpl	$0, -24(%ebp)
	jne	.L1049
	.loc 1 5235 0
	movl	-16(%ebp), %eax
	movl	4+documented_lang_options@GOTOFF(%ebx,%eax,8), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1051
.L1049:
	.loc 1 5236 0
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
	je	.L1052
.L1051:
	.loc 1 5230 0
	addl	$1, -16(%ebp)
.L1047:
	cmpl	$200, -16(%ebp)
	jbe	.L1048
.L1052:
	.loc 1 5240 0
	cmpl	$201, -16(%ebp)
	je	.L1053
	.loc 1 5242 0
	movl	extra_warnings@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1058
	.loc 1 5244 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC908@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5245 0
	cmpl	$0, -20(%ebp)
	je	.L1058
	.loc 1 5246 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC909@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	jmp	.L1058
.L1053:
	.loc 1 5251 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L1059
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$103, %al
	jne	.L1059
	.loc 1 5252 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC872@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5251 0
	jmp	.L1058
.L1059:
	.loc 1 5254 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC853@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L1058:
	.loc 1 5256 0
	addl	$1, -44(%ebp)
.L1038:
.L1077:
.LBE34:
.LBE33:
	.loc 1 5196 0
	movl	-44(%ebp), %eax
	cmpl	8(%ebp), %eax
	jl	.L1039
	.loc 1 5262 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5265 0
	movl	flag_pie@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1063
	.loc 1 5266 0
	movl	flag_pie@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_pic@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1063:
	.loc 1 5267 0
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1065
	movl	flag_pie@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1065
	.loc 1 5268 0
	movl	flag_shlib@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1065:
	.loc 1 5270 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1068
	.loc 1 5271 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L1070
.L1068:
	.loc 1 5273 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_really_no_inline@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1070:
	.loc 1 5280 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1071
	.loc 1 5284 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5285 0
	movl	warn_inline@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5290 0
	movl	warn_uninitialized@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1071
	.loc 1 5291 0
	leal	.LC910@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1071:
	.loc 1 5294 0
	movl	flag_really_no_inline@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L1076
	.loc 1 5295 0
	movl	flag_no_inline@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	flag_really_no_inline@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1076:
	.loc 1 5296 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE53:
	.size	parse_options_and_default_flags, .-parse_options_and_default_flags
	.section	.rodata
.LC911:
	.string	"_"
.LC912:
	.string	"no-"
	.align 4
.LC913:
	.string	"-f%sleading-underscore not supported on this target machine"
.LC914:
	.string	"\n"
	.align 4
.LC915:
	.string	"-ffunction-sections not supported for this target"
	.align 4
.LC916:
	.string	"-fdata-sections not supported for this target"
	.align 4
.LC917:
	.string	"-ffunction-sections disabled; it makes profiling impossible"
	.align 4
.LC918:
	.string	"-fprefetch-loop-arrays not supported for this target (try -march switches)"
	.align 4
.LC919:
	.string	"-fprefetch-loop-arrays is not supported with -Os"
	.text
	.type	process_options, @function
process_options:
.LFB54:
	.loc 1 5301 0
	pushl	%ebp
.LCFI162:
	movl	%esp, %ebp
.LCFI163:
	pushl	%ebx
.LCFI164:
	subl	$36, %esp
.LCFI165:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5304 0
	call	override_options@PLT
	.loc 1 5309 0
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L1079
	movl	align_loops@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1079:
	.loc 1 5310 0
	movl	align_loops_max_skip@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L1081
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1083
.L1081:
	.loc 1 5311 0
	movl	align_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	align_loops_max_skip@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1083:
	.loc 1 5312 0
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
	.loc 1 5313 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L1084
	movl	align_jumps@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1084:
	.loc 1 5314 0
	movl	align_jumps_max_skip@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L1086
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1088
.L1086:
	.loc 1 5315 0
	movl	align_jumps@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	align_jumps_max_skip@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1088:
	.loc 1 5316 0
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
	.loc 1 5317 0
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L1089
	movl	align_labels@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1089:
	.loc 1 5318 0
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
	.loc 1 5319 0
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jg	.L1091
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1093
.L1091:
	.loc 1 5320 0
	movl	align_labels@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L1093:
	.loc 1 5321 0
	movl	align_functions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	.L1094
	movl	align_functions@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1094:
	.loc 1 5322 0
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
	.loc 1 5326 0
	movl	flag_unroll_all_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1096
	.loc 1 5327 0
	movl	flag_unroll_loops@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1096:
	.loc 1 5332 0
	movl	flag_unroll_loops@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1098
	.loc 1 5334 0
	movl	flag_strength_reduce@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 5335 0
	movl	$1, flag_rerun_cse_after_loop@GOTOFF(%ebx)
.L1098:
	.loc 1 5338 0
	movl	flag_non_call_exceptions@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1100
	.loc 1 5339 0
	movl	flag_asynchronous_unwind_tables@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1100:
	.loc 1 5340 0
	movl	flag_asynchronous_unwind_tables@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1102
	.loc 1 5341 0
	movl	flag_unwind_tables@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1102:
	.loc 1 5353 0
	movl	user_label_prefix@GOT(%ebx), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 5354 0
	movl	flag_leading_underscore@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L1104
	.loc 1 5358 0
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L1106
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$95, %al
	jne	.L1108
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L1108
.L1106:
	.loc 1 5361 0
	movl	flag_leading_underscore@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1110
	leal	.LC911@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1112
.L1110:
	leal	.LC36@GOTOFF(%ebx), %edx
	movl	%edx, -12(%ebp)
.L1112:
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 5358 0
	jmp	.L1104
.L1108:
	.loc 1 5364 0
	movl	flag_leading_underscore@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1113
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L1115
.L1113:
	leal	.LC912@GOTOFF(%ebx), %edx
	movl	%edx, -8(%ebp)
.L1115:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC913@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
.L1104:
	.loc 1 5370 0
	movl	version_flag@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1116
	.loc 1 5372 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_version
	.loc 1 5373 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1116
	.loc 1 5374 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	.LC914@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	leal	.LC891@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$75, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	print_switch_values
.L1116:
	.loc 1 5377 0
	movl	quiet_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1119
	movl	flag_detailed_statistics@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1121
.L1119:
	.loc 1 5378 0
	movl	time_report@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1121:
	.loc 1 5380 0
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1122
	.loc 1 5382 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 5383 0
	movl	profile_flag@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1122:
	.loc 1 5389 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	.L1124
	.loc 1 5390 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	dbx_debug_hooks@GOT(%ebx), %edx
	movl	%edx, (%eax)
.L1124:
	.loc 1 5401 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	jne	.L1126
	.loc 1 5402 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	dwarf_debug_hooks@GOT(%ebx), %edx
	movl	%edx, (%eax)
.L1126:
	.loc 1 5416 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1128
	.loc 1 5418 0
	movl	aux_info_file_name@GOTOFF(%ebx), %edx
	leal	.LC769@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, %edx
	movl	aux_info_file@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5419 0
	movl	aux_info_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1128
	.loc 1 5420 0
	movl	aux_info_file_name@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC771@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal_io_error@PLT
.L1128:
	.loc 1 5423 0
	movl	targetm@GOT(%ebx), %eax
	movzbl	244(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1131
	.loc 1 5425 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1133
	.loc 1 5427 0
	leal	.LC915@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5428 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1133:
	.loc 1 5430 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1131
	.loc 1 5432 0
	leal	.LC916@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5433 0
	movl	flag_data_sections@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1131:
	.loc 1 5437 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1136
	movl	profile_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1136
	.loc 1 5439 0
	leal	.LC917@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5440 0
	movl	flag_function_sections@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1136:
	.loc 1 5450 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1139
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L1141
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$32, %eax
	je	.L1141
	movl	mips_isa@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$64, %eax
	jne	.L1144
.L1141:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L1139
.L1144:
	.loc 1 5452 0
	leal	.LC918@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5453 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1139:
	.loc 1 5459 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1145
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1145
	.loc 1 5461 0
	leal	.LC919@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 5462 0
	movl	flag_prefetch_loop_arrays@GOT(%ebx), %eax
	movl	$0, (%eax)
.L1145:
	.loc 1 5471 0
	movl	flag_signaling_nans@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1150
	.loc 1 5472 0
	movl	flag_trapping_math@GOT(%ebx), %eax
	movl	$1, (%eax)
.L1150:
	.loc 1 5473 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	process_options, .-process_options
	.type	backend_init, @function
backend_init:
.LFB55:
	.loc 1 5478 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$20, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5483 0
	movl	parse_tree_dump@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1152
	.loc 1 5484 0
	movl	$0, 4(%esp)
	movl	$35, (%esp)
	call	open_dump_file
.L1152:
	.loc 1 5488 0
	call	init_regs@PLT
	.loc 1 5489 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L1154
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L1154
	movl	flag_test_coverage@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1154
	movl	warn_notreached@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1158
.L1154:
	movl	$1, -8(%ebp)
	jmp	.L1159
.L1158:
	movl	$0, -8(%ebp)
.L1159:
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_emit_once@PLT
	.loc 1 5497 0
	call	init_fake_stack_mems@PLT
	.loc 1 5498 0
	call	init_alias_once@PLT
	.loc 1 5499 0
	call	init_loop@PLT
	.loc 1 5500 0
	call	init_reload@PLT
	.loc 1 5501 0
	call	init_function_once@PLT
	.loc 1 5502 0
	call	init_varasm_once@PLT
	.loc 1 5506 0
	call	init_dummy_function_start@PLT
	.loc 1 5507 0
	call	init_expmed@PLT
	.loc 1 5508 0
	movl	flag_caller_saves@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1160
	.loc 1 5509 0
	call	init_caller_save@PLT
.L1160:
	.loc 1 5510 0
	call	expand_dummy_function_end@PLT
	.loc 1 5511 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	backend_init, .-backend_init
	.section	.rodata
.LC920:
	.string	"gccdump"
	.text
	.type	lang_dependent_init, @function
lang_dependent_init:
.LFB56:
	.loc 1 5517 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%ebx
.LCFI172:
	subl	$20, %esp
.LCFI173:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5518 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1164
	.loc 1 5519 0
	cmpl	$0, 8(%ebp)
	je	.L1166
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1168
.L1166:
	leal	.LC920@GOTOFF(%ebx), %edx
	movl	%edx, -12(%ebp)
.L1168:
	movl	dump_base_name@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
.L1164:
	.loc 1 5525 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 8(%ebp)
	.loc 1 5526 0
	cmpl	$0, 8(%ebp)
	jne	.L1169
	.loc 1 5527 0
	movl	$0, -8(%ebp)
	jmp	.L1171
.L1169:
	.loc 1 5530 0
	movl	$-1, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_alloc_string@PLT
	movl	%eax, 8(%ebp)
	.loc 1 5531 0
	movl	input_filename@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	main_input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 5532 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	init_asm_output
	.loc 1 5536 0
	call	init_eh@PLT
	.loc 1 5537 0
	call	init_optabs@PLT
	.loc 1 5541 0
	call	init_dummy_function_start@PLT
	.loc 1 5542 0
	call	init_expr_once@PLT
	.loc 1 5543 0
	call	expand_dummy_function_end@PLT
	.loc 1 5546 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	push_srcloc@PLT
	.loc 1 5565 0
	movl	$1, -8(%ebp)
.L1171:
	movl	-8(%ebp), %eax
	.loc 1 5566 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	lang_dependent_init, .-lang_dependent_init
	.type	finalize, @function
finalize:
.LFB57:
	.loc 1 5572 0
	pushl	%ebp
.LCFI174:
	movl	%esp, %ebp
.LCFI175:
	pushl	%ebx
.LCFI176:
	subl	$52, %esp
.LCFI177:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5572 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 5574 0
	movl	flag_gen_aux_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1174
	.loc 1 5576 0
	movl	aux_info_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	fclose@PLT
	.loc 1 5577 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	je	.L1174
	.loc 1 5578 0
	movl	aux_info_file_name@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	unlink@PLT
.L1174:
	.loc 1 5596 0
	movl	graph_dump_format@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1177
.LBB35:
	.loc 1 5600 0
	movl	$0, -32(%ebp)
	jmp	.L1179
.L1180:
	.loc 1 5601 0
	movl	-32(%ebp), %eax
	movzbl	7+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L1181
	movl	-32(%ebp), %eax
	movzbl	5+dump_file@GOTOFF(%ebx,%eax,8), %eax
	testb	%al, %al
	je	.L1181
.LBB36:
	.loc 1 5606 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC768@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 5607 0
	movl	-32(%ebp), %eax
	movl	dump_file@GOTOFF(%ebx,%eax,8), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	concat@PLT
	movl	%eax, -28(%ebp)
	.loc 1 5608 0
	movl	dump_base_name@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	finish_graph_dump_file@PLT
	.loc 1 5609 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1181:
.LBE36:
	.loc 1 5600 0
	addl	$1, -32(%ebp)
.L1179:
	cmpl	$35, -32(%ebp)
	jle	.L1180
.L1177:
.LBE35:
	.loc 1 5613 0
	movl	mem_report@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1184
	.loc 1 5615 0
	call	ggc_print_statistics@PLT
	.loc 1 5616 0
	call	stringpool_statistics@PLT
	.loc 1 5617 0
	call	dump_tree_statistics@PLT
.L1184:
	.loc 1 5621 0
	call	free_reg_info@PLT
	.loc 1 5624 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	24(%eax), %eax
	call	*%eax
	.loc 1 5625 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L1187
	call	__stack_chk_fail_local
.L1187:
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	finalize, .-finalize
	.type	do_init_compile, @function
do_init_compile:
.LFB58:
	.loc 1 5631 0
	pushl	%ebp
.LCFI178:
	movl	%esp, %ebp
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$36, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5634 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	16(%eax), %eax
	call	*%eax
	movb	%al, -5(%ebp)
	.loc 1 5637 0
	call	process_options
	.loc 1 5641 0
	call	init_timevar@PLT
	.loc 1 5642 0
	movl	$0, (%esp)
	call	timevar_start@PLT
	.loc 1 5647 0
	call	backend_init
	.loc 1 5653 0
	movl	filename@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lang_dependent_init
	testl	%eax, %eax
	je	.L1192
	.loc 1 5654 0
	movl	main_input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1188
.L1192:
	.loc 1 5655 0
	jmp	.L1191
.L1188:
	movl	-24(%ebp), %eax
.L1191:
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE58:
	.size	do_init_compile, .-do_init_compile
	.type	do_compile, @function
do_compile:
.LFB59:
	.loc 1 5660 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%edi
.LCFI184:
	pushl	%ebx
.LCFI185:
	subl	$32, %esp
.LCFI186:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5663 0
	movl	lang_hooks@GOT(%ebx), %eax
	movl	16(%eax), %eax
	call	*%eax
	movb	%al, -9(%ebp)
	.loc 1 5666 0
	call	process_options
	.loc 1 5669 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L1202
	.loc 1 5672 0
	movl	aux_base_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1196
	.loc 1 5674 0
	movl	filename@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1198
.LBB37:
	.loc 1 5676 0
	movl	filename@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lbasename@PLT
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, -16(%ebp)
	.loc 1 5678 0
	movl	aux_base_name@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 5679 0
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
	jmp	.L1196
.L1198:
.LBE37:
	.loc 1 5682 0
	movl	aux_base_name@GOT(%ebx), %edx
	leal	.LC778@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
.L1196:
	.loc 1 5686 0
	call	init_timevar@PLT
	.loc 1 5687 0
	movl	$0, (%esp)
	call	timevar_start@PLT
	.loc 1 5690 0
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L1200
	.loc 1 5691 0
	call	backend_init
.L1200:
	.loc 1 5694 0
	movl	filename@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	lang_dependent_init
	.loc 1 5702 0
	call	finalize
	.loc 1 5705 0
	movl	$0, (%esp)
	call	timevar_stop@PLT
	.loc 1 5706 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	timevar_print@PLT
.L1202:
	.loc 1 5707 0
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
	.loc 1 5727 0
	pushl	%ebp
.LCFI187:
	movl	%esp, %ebp
.LCFI188:
	pushl	%ebx
.LCFI189:
	subl	$20, %esp
.LCFI190:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 5729 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	general_init
	.loc 1 5733 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	parse_options_and_default_flags
	.loc 1 5745 0
	movl	exit_after_options@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1204
	.loc 1 5746 0
	call	do_init_compile
	movl	%eax, -8(%ebp)
	jmp	.L1206
.L1204:
	.loc 1 5748 0
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L1207
	movl	global_dc@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	216(%eax), %eax
	testl	%eax, %eax
	je	.L1209
.L1207:
	.loc 1 5749 0
	movl	$1, -8(%ebp)
	jmp	.L1206
.L1209:
	.loc 1 5751 0
	movl	$0, -8(%ebp)
.L1206:
	movl	-8(%ebp), %eax
	.loc 1 5753 0
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
	.align 4
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI151-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI152-.LCFI151
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI155-.LCFI152
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
	.long	.LCFI156-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI157
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
	.long	.LCFI162-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI163-.LCFI162
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI165-.LCFI163
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
	.long	.LCFI166-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI167-.LCFI166
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI169-.LCFI167
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
	.long	.LCFI170-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI173-.LCFI171
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
	.long	.LCFI174-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI175-.LCFI174
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI177-.LCFI175
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
	.long	.LCFI178-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI179-.LCFI178
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI179
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
	.long	.LCFI182-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI186-.LCFI183
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
	.long	.LCFI187-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI188-.LCFI187
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI190-.LCFI188
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
	.file 2 "../../../kgccfe/gnu/MIPS/config.h"
	.file 3 "../../../kgccfe/gnu/tree.h"
	.file 4 "../../../kgccfe/gnu/rtl.h"
	.file 5 "../../../kgccfe/gnu/machmode.h"
	.file 6 "../../../kgccfe/gnu/bitmap.h"
	.file 7 "../../../kgccfe/gnu/basic-block.h"
	.file 8 "../../../kgccfe/gnu/sbitmap.h"
	.file 9 "../../../kgccfe/gnu/real.h"
	.file 10 "../../../kgccfe/gnu/hashtable.h"
	.file 11 "../../../kgccfe/gnu/location.h"
	.file 12 "../../../kgccfe/gnu/function.h"
	.file 13 "../../../kgccfe/gnu/MIPS/mips.h"
	.file 14 "../../../kgccfe/omp_types.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/libio.h"
	.file 17 "/usr/include/bits/types.h"
	.file 18 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 19 "../../../kgccfe/gnu/input.h"
	.file 20 "../../../kgccfe/gnu/flags.h"
	.file 21 "../../../kgccfe/gnu/params.h"
	.file 22 "../../../include/gnu/safe-ctype.h"
	.file 23 "../../../kgccfe/gnu/version.h"
	.file 24 "../../../kgccfe/gnu/output.h"
	.file 25 "../../../kgccfe/gnu/regs.h"
	.file 26 "../../../kgccfe/gnu/diagnostic.h"
	.file 27 "../../../include/gnu/obstack.h"
	.file 28 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 29 "../../../kgccfe/gnu/reload.h"
	.file 30 "../../../kgccfe/gnu/debug.h"
	.file 31 "../../../kgccfe/gnu/target.h"
	.file 32 "../../../kgccfe/gnu/langhooks.h"
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
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI151-.Ltext0
	.long	.LCFI152-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI152-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI156-.Ltext0
	.long	.LCFI157-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI157-.Ltext0
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
	.long	.LCFI162-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI162-.Ltext0
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI163-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI166-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI166-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI167-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI170-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI170-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI171-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI174-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI174-.Ltext0
	.long	.LCFI175-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI175-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI178-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI178-.Ltext0
	.long	.LCFI179-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI179-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI182-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI182-.Ltext0
	.long	.LCFI183-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI183-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI187-.Ltext0
	.long	.LCFI188-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI188-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xbcef
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/toplev.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
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
	.byte	0x8a
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
	.byte	0x8d
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
	.byte	0x94
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
	.byte	0x97
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
	.byte	0x9f
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
	.byte	0xa8
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
	.byte	0xba
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
	.byte	0xc1
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
	.byte	0xc6
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
	.byte	0xcf
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
	.byte	0xd4
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
	.byte	0xf8
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf9
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
	.byte	0x94
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x855
	.long	0x399a
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x3cb4
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x3cfc
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x3e68
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x859
	.long	0x3da9
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3e13
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x409d
	.uleb128 0x8
	.long	.LASF2
	.byte	0x3
	.value	0x85c
	.long	0x511c
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x85d
	.long	0x42ff
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x40d4
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x411b
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x4169
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x41b5
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x5abb
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
	.byte	0x2f
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
	.byte	0x4d
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x4f
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x54
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
	.byte	0x56
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
	.byte	0x58
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
	.byte	0x5b
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
	.byte	0x5d
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
	.byte	0x5e
	.long	0x12b2
	.uleb128 0x13
	.long	0x1403
	.long	.LASF6
	.byte	0x18
	.byte	0x4
	.byte	0x68
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x69
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x6a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x6b
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x4
	.byte	0x6d
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x4
	.byte	0x6e
	.long	0x13a7
	.uleb128 0x7
	.long	0x14e0
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x47f
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2df
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x3b8
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2cc
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9b
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19c
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x89a
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x138c
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x14f4
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x155c
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e4
	.uleb128 0x1d
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x16e7
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
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
	.byte	0x7d
	.uleb128 0x6
	.string	"first"
	.byte	0x6
	.byte	0x3d
	.long	0x6246
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x6246
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
	.byte	0x7f
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
	.long	0x6399
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x6399
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x62c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x62c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x62c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x62c9
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
	.long	0x6615
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x62d7
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
	.byte	0x82
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
	.byte	0x27
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
	.byte	0x31
	.long	0x3b8
	.uleb128 0x4
	.long	0x20dd
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x32
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x32
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x32
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x36
	.long	0x20e7
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.uleb128 0x1f
	.long	0x213c
	.long	.LASF8
	.byte	0x4
	.byte	0x3
	.byte	0x5a
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
	.long	0x399a
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
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
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x1a
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x1a
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x1a
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x1a
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x1a
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x1a
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x1a
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x1a
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x1a
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x1a
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x1a
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x1a
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x1a
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x1a
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x1a
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x1a
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x1a
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x1a
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x1a
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x1a
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x1a
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x1a
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x1a
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x1a
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x1a
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x1a
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x1a
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x1a
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x1a
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x1a
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x1a
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x1a
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x1a
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x1a
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x1a
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x1a
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x1a
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x1a
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x1a
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x1a
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x1a
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x1a
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x1a
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x1a
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x1a
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x1a
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x1a
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x1a
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x1a
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x1a
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x1a
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x1a
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x1a
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x1a
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x1a
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x1a
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x1a
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x1a
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x1a
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x1a
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x1a
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x1a
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x1a
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x1a
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x1a
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x1a
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x1a
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x1a
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x1a
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x1a
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x1a
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x1a
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x1a
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x1a
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x1a
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x1a
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x1a
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x1a
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x1a
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x1a
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x1a
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x1a
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x1a
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x1a
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x1a
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x1a
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x1a
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x1a
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x1a
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x1a
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x1a
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x1a
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x1a
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x1a
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x1a
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x1a
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x1a
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x1a
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x1a
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x1a
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x1a
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x1a
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x1a
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x1a
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x1a
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x1a
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x1a
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x1a
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x1a
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x1a
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x1a
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x1a
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x1a
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x1a
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x3c78
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x90
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x92
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
	.byte	0x94
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
	.byte	0x95
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
	.byte	0x96
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
	.byte	0x97
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
	.byte	0x98
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
	.byte	0x99
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
	.byte	0x9a
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_0"
	.byte	0x3
	.byte	0x9b
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
	.byte	0x9d
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
	.byte	0x9e
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
	.byte	0x9f
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
	.byte	0xa0
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
	.byte	0xa1
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
	.byte	0xa2
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
	.byte	0xa3
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
	.byte	0xa4
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
	.byte	0xa6
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
	.byte	0xa7
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
	.byte	0xa8
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
	.byte	0xa9
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
	.byte	0xaa
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
	.byte	0xab
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
	.byte	0xac
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"unused_1"
	.byte	0x3
	.byte	0xad
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
	.byte	0xaf
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
	.byte	0xb0
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
	.byte	0xb1
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
	.byte	0xb2
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
	.byte	0xb3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x3cb4
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x2f6
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x2f7
	.long	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x2f8
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x3cfc
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x2f0
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x3c78
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3d4a
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x30c
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x3da3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3da3
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x305
	.uleb128 0x5
	.string	"class"
	.byte	0x9
	.byte	0x37
	.long	0x6c75
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"sign"
	.byte	0x9
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
	.long	0x6cbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3d4a
	.uleb128 0xc
	.long	0x3e0d
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x399a
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
	.uleb128 0x21
	.long	.LASF16
	.byte	0x3
	.value	0x322
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x323
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x325
	.long	0x3e0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x20dd
	.uleb128 0xc
	.long	0x3e68
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x32f
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x3eb0
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x341
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x3efa
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
	.long	0x3efa
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
	.long	0x3eb0
	.uleb128 0xc
	.long	0x402d
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
	.long	0x3efa
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
	.long	0x4042
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"freefun"
	.byte	0x1b
	.byte	0xb6
	.long	0x4059
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
	.long	0x4042
	.byte	0x1
	.long	0x3efa
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x4c9
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x402d
	.uleb128 0x15
	.long	0x4059
	.byte	0x1
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x3efa
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4048
	.uleb128 0x13
	.long	0x409d
	.long	.LASF17
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
	.long	0x40d4
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x360
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x405f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x411b
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x36a
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x36c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4159
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x378
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF16
	.byte	0x3
	.value	0x379
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x37a
	.long	0x4159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x4169
	.long	0x1e4
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x41b5
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x3be
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3bf
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"operands"
	.byte	0x3
	.value	0x3c2
	.long	0x4159
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x42a5
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x3f4
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x23
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x3f6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x24
	.long	.LASF18
	.byte	0x3
	.value	0x3f7
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
	.value	0x3f8
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
	.value	0x3fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x3fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x25
	.long	0x42ec
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x562
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x563
	.long	0x2df
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x564
	.long	0x4e8
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x565
	.long	0x42f9
	.byte	0x0
	.uleb128 0x1e
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x42ec
	.uleb128 0xc
	.long	0x4651
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x540
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x542
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.value	0x543
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x21
	.long	.LASF21
	.byte	0x3
	.value	0x544
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x545
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x23
	.string	"precision"
	.byte	0x3
	.value	0x547
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
	.value	0x548
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
	.value	0x54a
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
	.value	0x54b
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
	.value	0x54c
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
	.value	0x54d
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
	.value	0x54e
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
	.value	0x54f
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF22
	.byte	0x3
	.value	0x550
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
	.value	0x552
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
	.value	0x553
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
	.value	0x554
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
	.value	0x555
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
	.value	0x556
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
	.value	0x557
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
	.value	0x558
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x3
	.value	0x559
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"defer_expansion"
	.byte	0x3
	.value	0x55c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"align"
	.byte	0x3
	.value	0x55f
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x560
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x42a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x21
	.long	.LASF5
	.byte	0x3
	.value	0x568
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x56e
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x56f
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x571
	.long	0x465d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x573
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x574
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x575
	.long	0x209e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4651
	.uleb128 0xc
	.long	0x46a8
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x23
	.string	"align"
	.byte	0x3
	.value	0x7f1
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
	.value	0x7f2
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x46dd
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x213c
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x47f
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x4663
	.byte	0x0
	.uleb128 0x25
	.long	0x471c
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x50c8
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9b
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e4
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2df
	.byte	0x0
	.uleb128 0x26
	.long	0x50c8
	.long	.LASF25
	.value	0x134
	.byte	0x4
	.byte	0x1f
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x6111
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x6125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x612b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x6131
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x6147
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
	.long	0x50c8
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
	.long	.LASF26
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
	.long	0x6164
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
	.long	0x6176
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
	.long	0x5e17
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x21
	.long	.LASF27
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
	.long	0x618f
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
	.long	0x61a9
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
	.long	.LASF28
	.byte	0xc
	.value	0x1fa
	.long	0x609b
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
	.long	0x471c
	.uleb128 0x27
	.long	0x5106
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x3e0d
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x208d
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x3b8
	.byte	0x0
	.uleb128 0x27
	.long	0x511c
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x3e0d
	.byte	0x0
	.uleb128 0xc
	.long	0x5858
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x7a1
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0x1759
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7a3
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7a4
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x23
	.string	"mode"
	.byte	0x3
	.value	0x7a5
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
	.value	0x7a7
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
	.value	0x7a8
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
	.value	0x7a9
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
	.value	0x7aa
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
	.value	0x7ab
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
	.value	0x7ac
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
	.value	0x7ad
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x24
	.long	.LASF18
	.byte	0x3
	.value	0x7ae
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
	.value	0x7b2
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
	.value	0x7b3
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
	.value	0x7b4
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
	.value	0x7b5
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
	.value	0x7b6
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
	.value	0x7ba
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
	.value	0x7bb
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
	.value	0x7bc
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
	.value	0x7bd
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
	.value	0x7be
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
	.value	0x7bf
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
	.value	0x7c0
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
	.value	0x7c1
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
	.value	0x7c3
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
	.value	0x7c4
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
	.value	0x7c5
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
	.value	0x7c6
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
	.value	0x7c7
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
	.value	0x7c8
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
	.value	0x7c9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF22
	.byte	0x3
	.value	0x7cb
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
	.value	0x7cc
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x24
	.long	.LASF23
	.byte	0x3
	.value	0x7cd
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
	.value	0x7ce
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
	.value	0x7cf
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
	.value	0x7d0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"noinline_attrib"
	.byte	0x3
	.value	0x7d2
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
	.value	0x7d5
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
	.value	0x7d6
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
	.value	0x7d7
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
	.value	0x7d8
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
	.value	0x7d9
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
	.value	0x7da
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
	.value	0x7db
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"lang_flag_7"
	.byte	0x3
	.value	0x7dc
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
	.value	0x7df
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
	.value	0x7e0
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"promote_static"
	.byte	0x3
	.value	0x7e3
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x23
	.string	"always_inline_attrib"
	.byte	0x3
	.value	0x7e4
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"u1"
	.byte	0x3
	.value	0x7f4
	.long	0x46a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.long	.LASF20
	.byte	0x3
	.value	0x7f6
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x21
	.long	.LASF5
	.byte	0x3
	.value	0x7f7
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x7f8
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x7fa
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x21
	.long	.LASF19
	.byte	0x3
	.value	0x7fc
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x21
	.long	.LASF21
	.byte	0x3
	.value	0x7ff
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x46dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x817
	.long	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x21
	.long	.LASF24
	.byte	0x3
	.value	0x819
	.long	0x5864
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x23
	.string	"symtab_idx"
	.byte	0x3
	.value	0x81b
	.long	0x3b8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x23
	.string	"label_defined"
	.byte	0x3
	.value	0x81c
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"sgi_u1"
	.byte	0x3
	.value	0x822
	.long	0x50ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x5106
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x209e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5858
	.uleb128 0x19
	.long	0x5abb
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1e
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
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x1a
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x1a
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x1a
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x1a
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x1a
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x1a
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x1a
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x1a
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x1a
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xc
	.long	0x5b0a
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x21
	.long	.LASF0
	.byte	0x3
	.value	0x833
	.long	0x399a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x586a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x835
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x28
	.long	0x5b83
	.string	"tls_model"
	.byte	0x4
	.byte	0x3
	.value	0x92d
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
	.long	0x5c3e
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x21
	.long	.LASF5
	.byte	0x3
	.value	0x9de
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x5c43
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x5c43
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x5c43
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x5c81
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2cc
	.uleb128 0xa
	.long	0x5c48
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x22
	.long	0x5c75
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x5c75
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x5c7b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x5c48
	.uleb128 0xa
	.long	0x5c86
	.uleb128 0x3
	.byte	0x4
	.long	0x5c51
	.uleb128 0x19
	.long	0x5d16
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x14
	.byte	0x23
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
	.long	0x5d75
	.long	.LASF29
	.byte	0x4
	.byte	0x14
	.byte	0x33
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
	.long	0x5da1
	.string	"graph_dump_types"
	.byte	0x4
	.byte	0x14
	.value	0x290
	.uleb128 0x1a
	.string	"no_graph"
	.sleb128 0
	.uleb128 0x1a
	.string	"vcg"
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.long	0x5db1
	.long	0x490
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x5e17
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
	.long	0x5e17
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5db1
	.uleb128 0x13
	.long	0x5e66
	.long	.LASF30
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
	.long	.LASF31
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
	.long	0x5e66
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e1d
	.uleb128 0x4
	.long	0x5fbb
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
	.long	.LASF31
	.byte	0xc
	.byte	0x4a
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF30
	.byte	0xc
	.byte	0x50
	.long	0x5e66
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
	.long	0x5c75
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
	.long	0x609b
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
	.long	0x6105
	.long	.LASF28
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
	.long	0x6105
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6117
	.uleb128 0x3
	.byte	0x4
	.long	0x5fbb
	.uleb128 0x3
	.byte	0x4
	.long	0x5e6c
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6137
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x614d
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x616a
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x617c
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6195
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x44e
	.uleb128 0x4
	.long	0x621a
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x6
	.string	"next"
	.byte	0x6
	.byte	0x35
	.long	0x621a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x621a
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
	.long	0x6220
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x61c2
	.uleb128 0xf
	.long	0x6230
	.long	0x61af
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x61c2
	.uleb128 0x3
	.byte	0x4
	.long	0x6230
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x155c
	.uleb128 0x4
	.long	0x62b4
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
	.long	0x5da1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x62c3
	.uleb128 0x3
	.byte	0x4
	.long	0x625a
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x624c
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x47f
	.uleb128 0x4
	.long	0x6393
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x6393
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x6393
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
	.long	0x62d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62e8
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x6393
	.uleb128 0x4
	.long	0x6615
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
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x6646
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
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x661b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x62b4
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
	.long	0x6646
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
	.long	0x6646
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
	.long	0x62b4
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
	.long	0x664c
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
	.long	0x6615
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x6615
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"next"
	.byte	0x7
	.value	0x1b7
	.long	0x6615
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
	.long	0x63a5
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x7
	.byte	0xe6
	.long	0x16e7
	.uleb128 0x2a
	.long	.LASF32
	.byte	0x7
	.value	0x170
	.long	0x663a
	.uleb128 0x3
	.byte	0x4
	.long	0x6640
	.uleb128 0x2b
	.long	.LASF32
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6399
	.uleb128 0x3
	.byte	0x4
	.long	0x6615
	.uleb128 0xc
	.long	0x6698
	.string	"cfg"
	.byte	0xc
	.byte	0x7
	.value	0x201
	.uleb128 0xd
	.string	"dom"
	.byte	0x7
	.value	0x203
	.long	0x662e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"dfs_order"
	.byte	0x7
	.value	0x206
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"rc_order"
	.byte	0x7
	.value	0x20a
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x672a
	.string	"loops"
	.byte	0x24
	.byte	0x7
	.value	0x1ec
	.uleb128 0xd
	.string	"num"
	.byte	0x7
	.value	0x1ee
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"levels"
	.byte	0x7
	.value	0x1f1
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"array"
	.byte	0x7
	.value	0x1f5
	.long	0x6615
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"parray"
	.byte	0x7
	.value	0x1fa
	.long	0x664c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"tree_root"
	.byte	0x7
	.value	0x1fd
	.long	0x6615
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"cfg"
	.byte	0x7
	.value	0x20b
	.long	0x6652
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"shared_headers"
	.byte	0x7
	.value	0x20e
	.long	0x62b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xb
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x1b
	.long	0x6765
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
	.long	0x6765
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
	.long	0x6733
	.uleb128 0x2c
	.long	0x67fc
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
	.long	0x677c
	.uleb128 0x1b
	.long	0x684d
	.byte	0x14
	.byte	0x1a
	.byte	0x31
	.uleb128 0x6
	.string	"message"
	.byte	0x1a
	.byte	0x32
	.long	0x676b
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
	.long	0x67fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"diagnostic_info"
	.byte	0x1a
	.byte	0x36
	.long	0x6810
	.uleb128 0x2c
	.long	0x68d1
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
	.long	0x6864
	.uleb128 0x1b
	.long	0x69a6
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
	.long	0x5c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"need_newline_p"
	.byte	0x1a
	.byte	0x5b
	.long	0x5c48
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x6
	.string	"prefixing_rule"
	.byte	0x1a
	.byte	0x5e
	.long	0x68d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x2
	.string	"output_state"
	.byte	0x1a
	.byte	0x5f
	.long	0x68f4
	.uleb128 0x1c
	.long	.LASF34
	.byte	0x1a
	.byte	0x64
	.long	0x69c5
	.uleb128 0x13
	.long	0x6a4c
	.long	.LASF34
	.byte	0xd0
	.byte	0x1a
	.byte	0x64
	.uleb128 0x6
	.string	"state"
	.byte	0x1a
	.byte	0x6c
	.long	0x69a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stream"
	.byte	0x1a
	.byte	0x6f
	.long	0x6a85
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"obstack"
	.byte	0x1a
	.byte	0x72
	.long	0x3f00
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
	.long	0x6a8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"format_decoder"
	.byte	0x1a
	.byte	0x83
	.long	0x6a4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x2
	.string	"printer_fn"
	.byte	0x1a
	.byte	0x65
	.long	0x6a5e
	.uleb128 0x3
	.byte	0x4
	.long	0x6a64
	.uleb128 0x22
	.long	0x6a79
	.byte	0x1
	.long	0x5c48
	.uleb128 0x16
	.long	0x6a79
	.uleb128 0x16
	.long	0x6a7f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x69ba
	.uleb128 0x3
	.byte	0x4
	.long	0x676b
	.uleb128 0x3
	.byte	0x4
	.long	0x4ee
	.uleb128 0xf
	.long	0x6a9b
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7f
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x1a
	.byte	0xac
	.long	0x6aa6
	.uleb128 0x26
	.long	0x6baa
	.long	.LASF35
	.value	0x110
	.byte	0x1a
	.byte	0xac
	.uleb128 0x6
	.string	"buffer"
	.byte	0x1a
	.byte	0xb8
	.long	0x69ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"diagnostic_count"
	.byte	0x1a
	.byte	0xbb
	.long	0x6c09
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"warnings_are_errors_message"
	.byte	0x1a
	.byte	0xbf
	.long	0x5c48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"begin_diagnostic"
	.byte	0x1a
	.byte	0xc8
	.long	0x6baa
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x6
	.string	"end_diagnostic"
	.byte	0x1a
	.byte	0xcb
	.long	0x6bea
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x6
	.string	"internal_error"
	.byte	0x1a
	.byte	0xce
	.long	0x6c2a
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
	.long	0x6bc7
	.uleb128 0x3
	.byte	0x4
	.long	0x6bcd
	.uleb128 0x15
	.long	0x6bde
	.byte	0x1
	.uleb128 0x16
	.long	0x6bde
	.uleb128 0x16
	.long	0x6be4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6a9b
	.uleb128 0x3
	.byte	0x4
	.long	0x684d
	.uleb128 0x2
	.string	"diagnostic_finalizer_fn"
	.byte	0x1a
	.byte	0xaf
	.long	0x6baa
	.uleb128 0xf
	.long	0x6c19
	.long	0x2df
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.long	0x6c2a
	.byte	0x1
	.uleb128 0x16
	.long	0x2cc
	.uleb128 0x16
	.long	0x6765
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6c19
	.uleb128 0x13
	.long	0x6c6a
	.long	.LASF36
	.byte	0xc
	.byte	0x15
	.byte	0x2d
	.uleb128 0x18
	.long	.LASF37
	.byte	0x15
	.byte	0x30
	.long	0x5c3e
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
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x15
	.byte	0x35
	.long	0x6c30
	.uleb128 0x19
	.long	0x6cbb
	.string	"real_value_class"
	.byte	0x4
	.byte	0x9
	.byte	0x24
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
	.long	0x6ccb
	.long	0x44e
	.uleb128 0x10
	.long	0x3cf
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x6eae
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x1e
	.byte	0x19
	.uleb128 0x6
	.string	"init"
	.byte	0x1e
	.byte	0x1c
	.long	0x6eba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"finish"
	.byte	0x1e
	.byte	0x1f
	.long	0x6eba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"define"
	.byte	0x1e
	.byte	0x22
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"undef"
	.byte	0x1e
	.byte	0x25
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"start_source_file"
	.byte	0x1e
	.byte	0x29
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"end_source_file"
	.byte	0x1e
	.byte	0x2d
	.long	0x6ee3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"begin_block"
	.byte	0x1e
	.byte	0x31
	.long	0x6efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"end_block"
	.byte	0x1e
	.byte	0x34
	.long	0x6efa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"ignore_block"
	.byte	0x1e
	.byte	0x3b
	.long	0x6f10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"source_line"
	.byte	0x1e
	.byte	0x3e
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"begin_prologue"
	.byte	0x1e
	.byte	0x43
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"end_prologue"
	.byte	0x1e
	.byte	0x47
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"end_epilogue"
	.byte	0x1e
	.byte	0x4a
	.long	0x6ed1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"begin_function"
	.byte	0x1e
	.byte	0x4d
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"end_function"
	.byte	0x1e
	.byte	0x50
	.long	0x6ee3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_decl"
	.byte	0x1e
	.byte	0x56
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"global_decl"
	.byte	0x1e
	.byte	0x5a
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"deferred_inline_function"
	.byte	0x1e
	.byte	0x5e
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"outlining_inline_function"
	.byte	0x1e
	.byte	0x63
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"label"
	.byte	0x1e
	.byte	0x67
	.long	0x6f34
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x15
	.long	0x6eba
	.byte	0x1
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6eae
	.uleb128 0x15
	.long	0x6ed1
	.byte	0x1
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ec0
	.uleb128 0x15
	.long	0x6ee3
	.byte	0x1
	.uleb128 0x16
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ed7
	.uleb128 0x15
	.long	0x6efa
	.byte	0x1
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ee9
	.uleb128 0x22
	.long	0x6f10
	.byte	0x1
	.long	0x5c48
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f00
	.uleb128 0x15
	.long	0x6f22
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f16
	.uleb128 0x15
	.long	0x6f34
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f28
	.uleb128 0x4
	.long	0x6f82
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
	.long	0x71b8
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
	.long	0x6f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x1f
	.byte	0x3f
	.long	0x6f3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x1f
	.byte	0x46
	.long	0x71d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x1f
	.byte	0x49
	.long	0x71e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x1f
	.byte	0x4d
	.long	0x7200
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x1f
	.byte	0x50
	.long	0x7217
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x1f
	.byte	0x53
	.long	0x7229
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x1f
	.byte	0x56
	.long	0x7229
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x1f
	.byte	0x59
	.long	0x7217
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x1f
	.byte	0x5d
	.long	0x7240
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
	.long	0x725c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x1f
	.byte	0x6e
	.long	0x7278
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x1f
	.byte	0x73
	.long	0x7200
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x1f
	.byte	0x76
	.long	0x728f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x1f
	.byte	0x79
	.long	0x728f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x1f
	.byte	0x80
	.long	0x72b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x1f
	.byte	0x8b
	.long	0x72da
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x22
	.long	0x71d2
	.byte	0x1
	.long	0x5c48
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71b8
	.uleb128 0x15
	.long	0x71e9
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71d8
	.uleb128 0x15
	.long	0x7200
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x71ef
	.uleb128 0x15
	.long	0x7217
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x47f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7206
	.uleb128 0x15
	.long	0x7229
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x721d
	.uleb128 0x15
	.long	0x7240
	.byte	0x1
	.uleb128 0x16
	.long	0x2cc
	.uleb128 0x16
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x722f
	.uleb128 0x15
	.long	0x725c
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
	.long	0x7246
	.uleb128 0x15
	.long	0x7278
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
	.long	0x7262
	.uleb128 0x15
	.long	0x728f
	.byte	0x1
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x727e
	.uleb128 0x15
	.long	0x72b5
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
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
	.long	0x7295
	.uleb128 0x22
	.long	0x72da
	.byte	0x1
	.long	0x5c48
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
	.long	0x72bb
	.uleb128 0x4
	.long	0x749b
	.string	"sched"
	.byte	0x40
	.byte	0x1f
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x1f
	.byte	0x97
	.long	0x74ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x1f
	.byte	0x9b
	.long	0x74d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x1f
	.byte	0xa0
	.long	0x74e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x1f
	.byte	0xa4
	.long	0x7506
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x1f
	.byte	0xa7
	.long	0x7522
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x1f
	.byte	0xaa
	.long	0x7539
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x1f
	.byte	0xae
	.long	0x7563
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x1f
	.byte	0xaf
	.long	0x7563
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x1f
	.byte	0xb4
	.long	0x74e1
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
	.long	0x756f
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
	.long	0x756f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x1f
	.byte	0xcd
	.long	0x74e1
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
	.long	0x7585
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x22
	.long	0x74ba
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
	.long	0x749b
	.uleb128 0x22
	.long	0x74d5
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74c0
	.uleb128 0x2d
	.byte	0x1
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x74db
	.uleb128 0x22
	.long	0x7506
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74e7
	.uleb128 0x15
	.long	0x7522
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x750c
	.uleb128 0x15
	.long	0x7539
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7528
	.uleb128 0x22
	.long	0x7563
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x6a85
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
	.long	0x753f
	.uleb128 0x2d
	.byte	0x1
	.long	0x9b
	.uleb128 0x3
	.byte	0x4
	.long	0x7569
	.uleb128 0x22
	.long	0x7585
	.byte	0x1
	.long	0x9b
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7575
	.uleb128 0x4
	.long	0x7868
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x1f
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x1f
	.byte	0x8f
	.long	0x6f82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x1f
	.byte	0xda
	.long	0x72e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x1f
	.byte	0xdd
	.long	0x787d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x1f
	.byte	0xe0
	.long	0x787d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x18
	.long	.LASF38
	.byte	0x1f
	.byte	0xe4
	.long	0x7883
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x1f
	.byte	0xe9
	.long	0x78a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x1f
	.byte	0xec
	.long	0x6f22
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x1f
	.byte	0xef
	.long	0x78ba
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x1f
	.byte	0xf3
	.long	0x6f10
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x1f
	.byte	0xf7
	.long	0x6f10
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
	.long	0x78e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x1f
	.value	0x103
	.long	0x7904
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x1f
	.value	0x107
	.long	0x7910
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x1f
	.value	0x10a
	.long	0x7926
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x1f
	.value	0x10d
	.long	0x6f10
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x1f
	.value	0x111
	.long	0x6f10
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x1f
	.value	0x115
	.long	0x7200
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x1f
	.value	0x118
	.long	0x793c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x1f
	.value	0x11d
	.long	0x5c48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x1f
	.value	0x121
	.long	0x5c48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x1f
	.value	0x124
	.long	0x5c48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x1f
	.value	0x127
	.long	0x5c48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x1f
	.value	0x12a
	.long	0x5c48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x22
	.long	0x787d
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7868
	.uleb128 0x3
	.byte	0x4
	.long	0x7889
	.uleb128 0xa
	.long	0x5b83
	.uleb128 0x22
	.long	0x78a3
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x788e
	.uleb128 0x15
	.long	0x78ba
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x5c75
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x78a9
	.uleb128 0x22
	.long	0x78e4
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
	.long	0x78c0
	.uleb128 0x22
	.long	0x7904
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
	.long	0x78ea
	.uleb128 0x2d
	.byte	0x1
	.long	0x5c48
	.uleb128 0x3
	.byte	0x4
	.long	0x790a
	.uleb128 0x22
	.long	0x7926
	.byte	0x1
	.long	0x5c48
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7916
	.uleb128 0x22
	.long	0x793c
	.byte	0x1
	.long	0x2cc
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x792c
	.uleb128 0x2
	.string	"lang_print_tree_hook"
	.byte	0x20
	.byte	0x1d
	.long	0x795e
	.uleb128 0x3
	.byte	0x4
	.long	0x7964
	.uleb128 0x15
	.long	0x797a
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x4
	.long	0x7b00
	.string	"lang_hooks_for_tree_inlining"
	.byte	0x30
	.byte	0x20
	.byte	0x23
	.uleb128 0x6
	.string	"walk_subtrees"
	.byte	0x20
	.byte	0x24
	.long	0x7b4a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"cannot_inline_tree_fn"
	.byte	0x20
	.byte	0x29
	.long	0x7b60
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"disregard_inline_limits"
	.byte	0x20
	.byte	0x2a
	.long	0x7b76
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"add_pending_fn_decls"
	.byte	0x20
	.byte	0x2b
	.long	0x7b91
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"tree_chain_matters_p"
	.byte	0x20
	.byte	0x2d
	.long	0x7b76
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"auto_var_in_fn_p"
	.byte	0x20
	.byte	0x2e
	.long	0x7bac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"copy_res_decl_for_inlining"
	.byte	0x20
	.byte	0x2f
	.long	0x7bdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"anon_aggr_type_p"
	.byte	0x20
	.byte	0x34
	.long	0x7b76
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"var_mod_type_p"
	.byte	0x20
	.byte	0x35
	.long	0x7bf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"start_inlining"
	.byte	0x20
	.byte	0x36
	.long	0x7b76
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"end_inlining"
	.byte	0x20
	.byte	0x37
	.long	0x7c03
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"convert_parm_for_inlining"
	.byte	0x20
	.byte	0x38
	.long	0x7c23
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x22
	.long	0x7b24
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x7b24
	.uleb128 0x16
	.long	0x834
	.uleb128 0x16
	.long	0x7b2a
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
	.long	0x7b30
	.uleb128 0x22
	.long	0x7b4a
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x7b24
	.uleb128 0x16
	.long	0x834
	.uleb128 0x16
	.long	0x4e6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b00
	.uleb128 0x22
	.long	0x7b60
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x7b24
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b50
	.uleb128 0x22
	.long	0x7b76
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b66
	.uleb128 0x22
	.long	0x7b91
	.byte	0x1
	.long	0x1f0
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b7c
	.uleb128 0x22
	.long	0x7bac
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1f0
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b97
	.uleb128 0x22
	.long	0x7bdb
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
	.long	0x7bb2
	.uleb128 0x22
	.long	0x7bf1
	.byte	0x1
	.long	0x5c48
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7be1
	.uleb128 0x15
	.long	0x7c03
	.byte	0x1
	.uleb128 0x16
	.long	0x1f0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7bf7
	.uleb128 0x22
	.long	0x7c23
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
	.long	0x7c09
	.uleb128 0x4
	.long	0x7c98
	.string	"lang_hooks_for_functions"
	.byte	0x10
	.byte	0x20
	.byte	0x40
	.uleb128 0x6
	.string	"init"
	.byte	0x20
	.byte	0x42
	.long	0x7ca4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"final"
	.byte	0x20
	.byte	0x45
	.long	0x7ca4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"enter_nested"
	.byte	0x20
	.byte	0x48
	.long	0x7ca4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"leave_nested"
	.byte	0x20
	.byte	0x4b
	.long	0x7ca4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.long	0x7ca4
	.byte	0x1
	.uleb128 0x16
	.long	0x50c8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7c98
	.uleb128 0x4
	.long	0x7cf5
	.string	"lang_hooks_for_tree_dump"
	.byte	0x8
	.byte	0x20
	.byte	0x51
	.uleb128 0x6
	.string	"dump_tree"
	.byte	0x20
	.byte	0x54
	.long	0x7d0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_quals"
	.byte	0x20
	.byte	0x57
	.long	0x7d20
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x22
	.long	0x7d0a
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x4e6
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7cf5
	.uleb128 0x22
	.long	0x7d20
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d10
	.uleb128 0x4
	.long	0x7e13
	.string	"lang_hooks_for_types"
	.byte	0x20
	.byte	0x20
	.byte	0x5d
	.uleb128 0x6
	.string	"make_type"
	.byte	0x20
	.byte	0x60
	.long	0x7e23
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type_for_mode"
	.byte	0x20
	.byte	0x64
	.long	0x7e3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type_for_size"
	.byte	0x20
	.byte	0x68
	.long	0x7e59
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"unsigned_type"
	.byte	0x20
	.byte	0x6c
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"signed_type"
	.byte	0x20
	.byte	0x70
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"signed_or_unsigned_type"
	.byte	0x20
	.byte	0x74
	.long	0x7e8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"type_promotes_to"
	.byte	0x20
	.byte	0x7a
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"incomplete_type_error"
	.byte	0x20
	.byte	0x80
	.long	0x7ea1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x22
	.long	0x7e23
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x176b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e13
	.uleb128 0x22
	.long	0x7e3e
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x89a
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e29
	.uleb128 0x22
	.long	0x7e59
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x3b8
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e44
	.uleb128 0x22
	.long	0x7e6f
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e5f
	.uleb128 0x22
	.long	0x7e8a
	.byte	0x1
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e75
	.uleb128 0x15
	.long	0x7ea1
	.byte	0x1
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e90
	.uleb128 0x4
	.long	0x7fad
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
	.long	0x7fc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"global_bindings_p"
	.byte	0x20
	.byte	0x94
	.long	0x74e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"insert_block"
	.byte	0x20
	.byte	0x99
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"set_block"
	.byte	0x20
	.byte	0x9c
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"pushdecl"
	.byte	0x20
	.byte	0xa2
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getdecls"
	.byte	0x20
	.byte	0xa5
	.long	0x7fd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"warn_unused_global"
	.byte	0x20
	.byte	0xa9
	.long	0x6f10
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
	.long	0x6f10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x22
	.long	0x7fc7
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
	.long	0x7fad
	.uleb128 0x2d
	.byte	0x1
	.long	0x1e4
	.uleb128 0x3
	.byte	0x4
	.long	0x7fcd
	.uleb128 0x26
	.long	0x83fe
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
	.long	0x8419
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"post_options"
	.byte	0x20
	.byte	0xd6
	.long	0x7910
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"init"
	.byte	0x20
	.byte	0xde
	.long	0x793c
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
	.long	0x842f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"expand_constant"
	.byte	0x20
	.byte	0xf1
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"expand_expr"
	.byte	0x20
	.byte	0xf5
	.long	0x8454
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"truthvalue_conversion"
	.byte	0x20
	.value	0x102
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"insert_default_attributes"
	.byte	0x20
	.value	0x106
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"safe_from_p"
	.byte	0x20
	.value	0x10f
	.long	0x846f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"finish_incomplete_decl"
	.byte	0x20
	.value	0x113
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"unsafe_for_reeval"
	.byte	0x20
	.value	0x118
	.long	0x7d20
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"mark_addressable"
	.byte	0x20
	.value	0x11d
	.long	0x6f10
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"staticp"
	.byte	0x20
	.value	0x120
	.long	0x7d20
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"dup_lang_specific_decl"
	.byte	0x20
	.value	0x124
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"unsave_expr_now"
	.byte	0x20
	.value	0x129
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"maybe_build_cleanup"
	.byte	0x20
	.value	0x12d
	.long	0x7e6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"set_decl_assembler_name"
	.byte	0x20
	.value	0x134
	.long	0x6f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"can_use_bit_fields_p"
	.byte	0x20
	.value	0x138
	.long	0x7910
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"honor_readonly"
	.byte	0x20
	.value	0x13b
	.long	0x5c48
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
	.long	0x7942
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"print_decl"
	.byte	0x20
	.value	0x147
	.long	0x7942
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"print_type"
	.byte	0x20
	.value	0x148
	.long	0x7942
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"print_identifier"
	.byte	0x20
	.value	0x149
	.long	0x7942
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"decl_printable_name"
	.byte	0x20
	.value	0x151
	.long	0x848a
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"print_error_function"
	.byte	0x20
	.value	0x154
	.long	0x84a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"expr_size"
	.byte	0x20
	.value	0x15b
	.long	0x7e6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x21
	.long	.LASF38
	.byte	0x20
	.value	0x162
	.long	0x7883
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"common_attribute_table"
	.byte	0x20
	.value	0x163
	.long	0x7883
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"format_attribute_table"
	.byte	0x20
	.value	0x164
	.long	0x7883
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.long	.LASF25
	.byte	0x20
	.value	0x167
	.long	0x7c29
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"tree_inlining"
	.byte	0x20
	.value	0x169
	.long	0x797a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"tree_dump"
	.byte	0x20
	.value	0x16b
	.long	0x7caa
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"decls"
	.byte	0x20
	.value	0x16d
	.long	0x7ea7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"types"
	.byte	0x20
	.value	0x16f
	.long	0x7d26
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0x0
	.uleb128 0x22
	.long	0x8413
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x2df
	.uleb128 0x16
	.long	0x8413
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4e8
	.uleb128 0x3
	.byte	0x4
	.long	0x83fe
	.uleb128 0x22
	.long	0x842f
	.byte	0x1
	.long	0x47f
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x841f
	.uleb128 0x22
	.long	0x8454
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
	.long	0x8435
	.uleb128 0x22
	.long	0x846f
	.byte	0x1
	.long	0x2df
	.uleb128 0x16
	.long	0x9b
	.uleb128 0x16
	.long	0x1e4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x845a
	.uleb128 0x22
	.long	0x848a
	.byte	0x1
	.long	0x2cc
	.uleb128 0x16
	.long	0x1e4
	.uleb128 0x16
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8475
	.uleb128 0x15
	.long	0x84a1
	.byte	0x1
	.uleb128 0x16
	.long	0x84a1
	.uleb128 0x16
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6aa6
	.uleb128 0x3
	.byte	0x4
	.long	0x8490
	.uleb128 0x4
	.long	0x852f
	.string	"dump_file_info"
	.byte	0x8
	.byte	0x1
	.byte	0xdd
	.uleb128 0x6
	.string	"extension"
	.byte	0x1
	.byte	0xdf
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"debug_switch"
	.byte	0x1
	.byte	0xe2
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"graph_dump_p"
	.byte	0x1
	.byte	0xe5
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"enabled"
	.byte	0x1
	.byte	0xe8
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.string	"initialized"
	.byte	0x1
	.byte	0xeb
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0x19
	.long	0x8703
	.string	"dump_file_index"
	.byte	0x4
	.byte	0x1
	.byte	0xf1
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
	.uleb128 0x2e
	.long	0x875d
	.byte	0x10
	.byte	0x1
	.value	0x3df
	.uleb128 0xd
	.string	"arg"
	.byte	0x1
	.value	0x3e0
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"debug_type"
	.byte	0x1
	.value	0x3e3
	.long	0x875d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"use_extensions_p"
	.byte	0x1
	.value	0x3e4
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x3e5
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x5c8c
	.uleb128 0x2e
	.long	0x87ad
	.byte	0x10
	.byte	0x1
	.value	0x406
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.value	0x407
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.value	0x408
	.long	0x87ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"on_value"
	.byte	0x1
	.value	0x409
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x40a
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x834
	.uleb128 0x11
	.string	"lang_independent_options"
	.byte	0x1
	.value	0x40c
	.long	0x8762
	.uleb128 0xc
	.long	0x8804
	.string	"lang_opt"
	.byte	0x8
	.byte	0x1
	.value	0x506
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.value	0x507
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x508
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2e
	.long	0x883d
	.byte	0xc
	.byte	0x1
	.value	0x5c0
	.uleb128 0x21
	.long	.LASF5
	.byte	0x1
	.value	0x5c1
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"value"
	.byte	0x1
	.value	0x5c2
	.long	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x5c3
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2e
	.long	0x8874
	.byte	0xc
	.byte	0x1
	.value	0x5cb
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.value	0x5cc
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.value	0x5cd
	.long	0x8874
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x21
	.long	.LASF40
	.byte	0x1
	.value	0x5ce
	.long	0x5c3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x796
	.uleb128 0x2f
	.long	0x88af
	.byte	0x1
	.string	"set_Wunused"
	.byte	0x1
	.value	0x671
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x30
	.string	"setting"
	.byte	0x1
	.value	0x670
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x88e9
	.byte	0x1
	.string	"set_fast_math_flags"
	.byte	0x1
	.value	0x685
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x30
	.string	"set"
	.byte	0x1
	.value	0x684
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"fast_math_flags_set_p"
	.byte	0x1
	.value	0x691
	.byte	0x1
	.long	0x5c48
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x32
	.long	0x8988
	.byte	0x1
	.string	"read_integral_parameter"
	.byte	0x1
	.value	0x6ae
	.byte	0x1
	.long	0x2df
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x6ab
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"pname"
	.byte	0x1
	.value	0x6ac
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"defval"
	.byte	0x1
	.value	0x6ad
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"endp"
	.byte	0x1
	.value	0x6af
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x89ce
	.byte	0x1
	.string	"dump_parse_tree"
	.byte	0x1
	.value	0x6c6
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.value	0x6c5
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"node"
	.byte	0x1
	.value	0x6c5
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x89fe
	.byte	0x1
	.string	"do_abort"
	.byte	0x1
	.value	0x6d9
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x34
	.long	.LASF42
	.long	0x9e24
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15500
	.byte	0x0
	.uleb128 0x2f
	.long	0x8a38
	.byte	0x1
	.string	"botch"
	.byte	0x1
	.value	0x6e3
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x30
	.string	"s"
	.byte	0x1
	.value	0x6e2
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LASF42
	.long	0x9e0f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15504
	.byte	0x0
	.uleb128 0x32
	.long	0x8a7f
	.byte	0x1
	.string	"exact_log2_wide"
	.byte	0x1
	.value	0x6ef
	.byte	0x1
	.long	0x2df
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x6ee
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"log"
	.byte	0x1
	.value	0x6f0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x8ac6
	.byte	0x1
	.string	"floor_log2_wide"
	.byte	0x1
	.value	0x701
	.byte	0x1
	.long	0x2df
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x700
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"log"
	.byte	0x1
	.value	0x702
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x35
	.long	0x8afa
	.string	"crash_signal"
	.byte	0x1
	.value	0x70f
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x30
	.string	"signo"
	.byte	0x1
	.value	0x70e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8b4d
	.byte	0x1
	.string	"strip_off_ending"
	.byte	0x1
	.value	0x71c
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x71a
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x71b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x71d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2f
	.long	0x8ba4
	.byte	0x1
	.string	"output_quoted_string"
	.byte	0x1
	.value	0x72e
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x36
	.long	.LASF43
	.byte	0x1
	.value	0x72c
	.long	0x6a85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0x72d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0x732
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x2f
	.long	0x8c00
	.byte	0x1
	.string	"output_clean_symbol_name"
	.byte	0x1
	.value	0x74a
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x748
	.long	0x6a85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x749
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x74c
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x8c6f
	.byte	0x1
	.string	"output_file_directive"
	.byte	0x1
	.value	0x75c
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x36
	.long	.LASF43
	.byte	0x1
	.value	0x75a
	.long	0x6a85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"input_name"
	.byte	0x1
	.value	0x75b
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x75d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"na"
	.byte	0x1
	.value	0x75e
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x8cf0
	.string	"open_dump_file"
	.byte	0x1
	.value	0x77b
	.byte	0x1
	.long	0x2df
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x30
	.string	"index"
	.byte	0x1
	.value	0x779
	.long	0x852f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x77a
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"dump_name"
	.byte	0x1
	.value	0x77c
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"open_arg"
	.byte	0x1
	.value	0x77d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x77e
	.long	0x8cf0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0xf
	.long	0x8d00
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xf
	.byte	0x0
	.uleb128 0x35
	.long	0x8d83
	.string	"close_dump_file"
	.byte	0x1
	.value	0x7b6
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x30
	.string	"index"
	.byte	0x1
	.value	0x7b3
	.long	0x852f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"func"
	.byte	0x1
	.value	0x7b4
	.long	0x8d94
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"insns"
	.byte	0x1
	.value	0x7b5
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x7bf
	.long	0x8cf0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"suffix"
	.byte	0x1
	.value	0x7c0
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0x8d94
	.byte	0x1
	.uleb128 0x16
	.long	0x6a85
	.uleb128 0x16
	.long	0x9b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8d83
	.uleb128 0x32
	.long	0x8e58
	.byte	0x1
	.string	"wrapup_global_declarations"
	.byte	0x1
	.value	0x7db
	.byte	0x1
	.long	0x2df
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x30
	.string	"vec"
	.byte	0x1
	.value	0x7d9
	.long	0x5c75
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x7da
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF2
	.byte	0x1
	.value	0x7dc
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x7dd
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"reconsider"
	.byte	0x1
	.value	0x7de
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"output_something"
	.byte	0x1
	.value	0x7df
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x33
	.string	"needed"
	.byte	0x1
	.value	0x816
	.long	0x5c48
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x8ec3
	.byte	0x1
	.string	"check_global_declarations"
	.byte	0x1
	.value	0x847
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x30
	.string	"vec"
	.byte	0x1
	.value	0x845
	.long	0x5c75
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x846
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.long	.LASF2
	.byte	0x1
	.value	0x848
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x849
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x8f13
	.byte	0x1
	.string	"push_srcloc"
	.byte	0x1
	.value	0x896
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x894
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"line"
	.byte	0x1
	.value	0x895
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"fs"
	.byte	0x1
	.value	0x897
	.long	0x894
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.long	0x8f53
	.byte	0x1
	.string	"pop_srcloc"
	.byte	0x1
	.value	0x8ad
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x33
	.string	"fs"
	.byte	0x1
	.value	0x8ae
	.long	0x894
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.long	.LASF42
	.long	0x9dfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15920
	.byte	0x0
	.uleb128 0x2f
	.long	0x8f86
	.byte	0x1
	.string	"compile_file"
	.byte	0x1
	.value	0x8ca
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x8c8
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2f
	.long	0x901a
	.byte	0x1
	.string	"rest_of_decl_compilation"
	.byte	0x1
	.value	0x952
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x94e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"asmspec"
	.byte	0x1
	.value	0x94f
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"top_level"
	.byte	0x1
	.value	0x950
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"at_end"
	.byte	0x1
	.value	0x951
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x33
	.string	"alias"
	.byte	0x1
	.value	0x95e
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x906c
	.byte	0x1
	.string	"rest_of_type_compilation"
	.byte	0x1
	.value	0x9be
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x30
	.string	"type"
	.byte	0x1
	.value	0x9b8
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"toplev"
	.byte	0x1
	.value	0x9b9
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.long	0x930a
	.byte	0x1
	.string	"rest_of_compilation"
	.byte	0x1
	.value	0x9e1
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x36
	.long	.LASF2
	.byte	0x1
	.value	0x9e0
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"insns"
	.byte	0x1
	.value	0x9e2
	.long	0x9b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0x9e3
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"failure"
	.byte	0x1
	.value	0x9e4
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"rebuild_label_notes_after_reload"
	.byte	0x1
	.value	0x9e5
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"register_life_up_to_date"
	.byte	0x1
	.value	0x9e6
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3a
	.string	"exit_rest_of_compilation"
	.byte	0x1
	.value	0xee3
	.long	.L263
	.uleb128 0x3b
	.long	0x91b3
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x39
	.long	.LASF27
	.byte	0x1
	.value	0xa03
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"parent"
	.byte	0x1
	.value	0xa04
	.long	0x1e4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"lose"
	.byte	0x1
	.value	0xa05
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x33
	.string	"saved_optimize"
	.byte	0x1
	.value	0xa69
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.long	0x91d3
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x33
	.string	"parent"
	.byte	0x1
	.value	0xa8d
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x3b
	.long	0x91f1
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x33
	.string	"insn"
	.byte	0x1
	.value	0xadb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x3b
	.long	0x9237
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x33
	.string	"save_csb"
	.byte	0x1
	.value	0xbdf
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"save_cfj"
	.byte	0x1
	.value	0xbdf
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.string	"tem2"
	.byte	0x1
	.value	0xbe0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3b
	.long	0x9271
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x33
	.string	"do_unroll"
	.byte	0x1
	.value	0xc1e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"do_prefetch"
	.byte	0x1
	.value	0xc1e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	0x9291
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x33
	.string	"loops"
	.byte	0x1
	.value	0xc61
	.long	0x6698
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x3b
	.long	0x92cc
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x33
	.string	"rebuild_jump_labels_after_combine"
	.byte	0x1
	.value	0xcdb
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x3b
	.long	0x92f9
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xea7
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"fnname"
	.byte	0x1
	.value	0xea8
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x34
	.long	.LASF42
	.long	0x9de5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16073
	.byte	0x0
	.uleb128 0x35
	.long	0x93e9
	.string	"display_help"
	.byte	0x1
	.value	0xf1d
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x33
	.string	"undoc"
	.byte	0x1
	.value	0xf1e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xf1f
	.long	0x44e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"lang"
	.byte	0x1
	.value	0xf20
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3b
	.long	0x9377
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf30
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x3b
	.long	0x93a3
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf3b
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.long	.LASF16
	.byte	0x1
	.value	0xf3c
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	0x93c0
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf4b
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x38
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xf7c
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0xf7d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x94bd
	.string	"display_target_options"
	.byte	0x1
	.value	0xfa2
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x33
	.string	"undoc"
	.byte	0x1
	.value	0xfa3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xfa3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	0x94a4
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x33
	.string	"doc"
	.byte	0x1
	.value	0xfb1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.long	0x947b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0xfb9
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xfba
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x38
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0xfcc
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x39
	.long	.LASF40
	.byte	0x1
	.value	0xfcd
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.string	"displayed"
	.byte	0x1
	.value	0xfa4
	.long	0x5c48
	.byte	0x5
	.byte	0x3
	.long	displayed.16779
	.byte	0x0
	.uleb128 0x35
	.long	0x951f
	.string	"decode_d_option"
	.byte	0x1
	.value	0xfeb
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x30
	.string	"arg"
	.byte	0x1
	.value	0xfea
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xfec
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"c"
	.byte	0x1
	.value	0xfec
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.string	"matched"
	.byte	0x1
	.value	0xfec
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x95c6
	.string	"decode_f_option"
	.byte	0x1
	.value	0x1030
	.byte	0x1
	.long	0x2df
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x30
	.string	"arg"
	.byte	0x1
	.value	0x102f
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x1031
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x1032
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	0x9590
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x104c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x3b
	.long	0x95ad
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x33
	.string	"reg"
	.byte	0x1
	.value	0x107f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x38
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x33
	.string	"nm"
	.byte	0x1
	.value	0x1088
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x961b
	.string	"decode_W_option"
	.byte	0x1
	.value	0x10b3
	.byte	0x1
	.long	0x2df
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x30
	.string	"arg"
	.byte	0x1
	.value	0x10b2
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF44
	.byte	0x1
	.value	0x10b4
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x10b5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x37
	.long	0x9732
	.string	"decode_g_option"
	.byte	0x1
	.value	0x10e6
	.byte	0x1
	.long	0x2df
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x30
	.string	"arg"
	.byte	0x1
	.value	0x10e5
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	0x969a
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x33
	.string	"da_len"
	.byte	0x1
	.value	0x10fe
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x33
	.string	"type"
	.byte	0x1
	.value	0x1102
	.long	0x5c8c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1103
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.string	"level"
	.byte	0x1
	.value	0x10e7
	.long	0x3b8
	.byte	0x5
	.byte	0x3
	.long	level.17221
	.uleb128 0x33
	.string	"selected_debug_type"
	.byte	0x1
	.value	0x10ed
	.long	0x5c8c
	.byte	0x5
	.byte	0x3
	.long	selected_debug_type.17222
	.uleb128 0x33
	.string	"type_explicitly_set_p"
	.byte	0x1
	.value	0x10f1
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	type_explicitly_set_p.17223
	.uleb128 0x33
	.string	"debug_type_names"
	.byte	0x1
	.value	0x10f3
	.long	0x9ddb
	.byte	0x5
	.byte	0x3
	.long	debug_type_names.17224
	.uleb128 0x33
	.string	"max_debug_level"
	.byte	0x1
	.value	0x10f9
	.long	0x9de0
	.byte	0x5
	.byte	0x3
	.long	max_debug_level.17225
	.byte	0x0
	.uleb128 0x37
	.long	0x9805
	.string	"independent_decode_option"
	.byte	0x1
	.value	0x1164
	.byte	0x1
	.long	0x3b8
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x30
	.string	"argc"
	.byte	0x1
	.value	0x1162
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"argv"
	.byte	0x1
	.value	0x1163
	.long	0x8413
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"arg"
	.byte	0x1
	.value	0x1165
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3b
	.long	0x97cc
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x33
	.string	"equal"
	.byte	0x1
	.value	0x118b
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x119b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x33
	.string	"g_switch_val"
	.byte	0x1
	.value	0x1246
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"return_val"
	.byte	0x1
	.value	0x1247
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	0x985b
	.byte	0x1
	.string	"check_gnu_errors"
	.byte	0x1
	.value	0x126a
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x30
	.string	"error_count"
	.byte	0x1
	.value	0x1269
	.long	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"sorry_count"
	.byte	0x1
	.value	0x1269
	.long	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x35
	.long	0x98d7
	.string	"set_target_switch"
	.byte	0x1
	.value	0x1276
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x1275
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x1277
	.long	0x419
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"valid_target_option"
	.byte	0x1
	.value	0x1278
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x128f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.long	0x9919
	.string	"print_version"
	.byte	0x1
	.value	0x12a4
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x12a2
	.long	0x6a85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF45
	.byte	0x1
	.value	0x12a3
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x99d0
	.string	"print_single_switch"
	.byte	0x1
	.value	0x12c7
	.byte	0x1
	.long	0x2df
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x12c4
	.long	0x6a85
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"pos"
	.byte	0x1
	.value	0x12c5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"max"
	.byte	0x1
	.value	0x12c5
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF45
	.byte	0x1
	.value	0x12c6
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"sep"
	.byte	0x1
	.value	0x12c6
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x30
	.string	"term"
	.byte	0x1
	.value	0x12c6
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x30
	.string	"type"
	.byte	0x1
	.value	0x12c6
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x12c6
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x12ca
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0x9a8f
	.string	"print_switch_values"
	.byte	0x1
	.value	0x12e6
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x36
	.long	.LASF7
	.byte	0x1
	.value	0x12e3
	.long	0x6a85
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x30
	.string	"pos"
	.byte	0x1
	.value	0x12e4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"max"
	.byte	0x1
	.value	0x12e4
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF45
	.byte	0x1
	.value	0x12e5
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x30
	.string	"sep"
	.byte	0x1
	.value	0x12e5
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x30
	.string	"term"
	.byte	0x1
	.value	0x12e5
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x12e7
	.long	0x419
	.byte	0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x12e8
	.long	0x8413
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x38
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x39
	.long	.LASF33
	.byte	0x1
	.value	0x1327
	.long	0x9a8f
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x9a9f
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xff
	.byte	0x0
	.uleb128 0x35
	.long	0x9ad4
	.string	"init_asm_output"
	.byte	0x1
	.value	0x1338
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x1337
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x9b15
	.string	"general_init"
	.byte	0x1
	.value	0x1374
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x30
	.string	"argv0"
	.byte	0x1
	.value	0x1373
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1375
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	0x9c2a
	.string	"parse_options_and_default_flags"
	.byte	0x1
	.value	0x13b0
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x30
	.string	"argc"
	.byte	0x1
	.value	0x13ae
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"argv"
	.byte	0x1
	.value	0x13af
	.long	0x8413
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x13b1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.long	0x9bb4
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x13cf
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x33
	.string	"optimize_val"
	.byte	0x1
	.value	0x13e0
	.long	0x82f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x33
	.string	"lang_processed"
	.byte	0x1
	.value	0x144e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"indep_processed"
	.byte	0x1
	.value	0x144f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x38
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x39
	.long	.LASF37
	.byte	0x1
	.value	0x1463
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"lang"
	.byte	0x1
	.value	0x1464
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x1465
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.string	"process_options"
	.byte	0x1
	.value	0x14b5
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x3c
	.string	"backend_init"
	.byte	0x1
	.value	0x1566
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x37
	.long	0x9ca6
	.string	"lang_dependent_init"
	.byte	0x1
	.value	0x158d
	.byte	0x1
	.long	0x2df
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x36
	.long	.LASF5
	.byte	0x1
	.value	0x158c
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x35
	.long	0x9d07
	.string	"finalize"
	.byte	0x1
	.value	0x15c4
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x38
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x15de
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x33
	.string	"seq"
	.byte	0x1
	.value	0x15e3
	.long	0x8cf0
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"suffix"
	.byte	0x1
	.value	0x15e4
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x9d3f
	.string	"do_init_compile"
	.byte	0x1
	.value	0x15ff
	.long	0x2cc
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x39
	.long	.LASF46
	.byte	0x1
	.value	0x1602
	.long	0x5c48
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0x0
	.uleb128 0x35
	.long	0x9d88
	.string	"do_compile"
	.byte	0x1
	.value	0x161c
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x39
	.long	.LASF46
	.byte	0x1
	.value	0x161f
	.long	0x5c48
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x38
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x39
	.long	.LASF5
	.byte	0x1
	.value	0x162c
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.long	0x9dcb
	.byte	0x1
	.string	"gnu_init"
	.byte	0x1
	.value	0x165f
	.long	0x2cc
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x30
	.string	"argc"
	.byte	0x1
	.value	0x1657
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"argv"
	.byte	0x1
	.value	0x1658
	.long	0x8413
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.long	0x9ddb
	.long	0x2cc
	.uleb128 0x10
	.long	0x3cf
	.byte	0x6
	.byte	0x0
	.uleb128 0xa
	.long	0x9dcb
	.uleb128 0xa
	.long	0x3b8
	.uleb128 0xa
	.long	0x81f
	.uleb128 0xf
	.long	0x9dfa
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xa
	.byte	0x0
	.uleb128 0xa
	.long	0x9dea
	.uleb128 0xf
	.long	0x9e0f
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0x9dff
	.uleb128 0xf
	.long	0x9e24
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x9e14
	.uleb128 0x3f
	.string	"set_yydebug"
	.byte	0x1
	.byte	0x98
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	set_yydebug
	.uleb128 0xf
	.long	0x9e52
	.long	0x84ad
	.uleb128 0x10
	.long	0x3cf
	.byte	0x23
	.byte	0x0
	.uleb128 0x33
	.string	"dump_file"
	.byte	0x1
	.value	0x124
	.long	0x9e42
	.byte	0x5
	.byte	0x3
	.long	dump_file
	.uleb128 0x33
	.string	"version_flag"
	.byte	0x1
	.value	0x15a
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	version_flag
	.uleb128 0x33
	.string	"filename"
	.byte	0x1
	.value	0x15b
	.long	0x4e8
	.byte	0x5
	.byte	0x3
	.long	filename
	.uleb128 0x33
	.string	"exit_after_options"
	.byte	0x1
	.value	0x186
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	exit_after_options
	.uleb128 0x33
	.string	"flag_gcse"
	.byte	0x1
	.value	0x296
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_gcse
	.uleb128 0x33
	.string	"flag_loop_optimize"
	.byte	0x1
	.value	0x29a
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_loop_optimize
	.uleb128 0x33
	.string	"flag_crossjumping"
	.byte	0x1
	.value	0x29e
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_crossjumping
	.uleb128 0x33
	.string	"flag_if_conversion"
	.byte	0x1
	.value	0x2a2
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_if_conversion
	.uleb128 0x33
	.string	"flag_if_conversion2"
	.byte	0x1
	.value	0x2a6
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_if_conversion2
	.uleb128 0x33
	.string	"flag_delete_null_pointer_checks"
	.byte	0x1
	.value	0x2ab
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_delete_null_pointer_checks
	.uleb128 0x33
	.string	"flag_rerun_cse_after_loop"
	.byte	0x1
	.value	0x2bc
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	flag_rerun_cse_after_loop
	.uleb128 0x33
	.string	"aux_info_file_name"
	.byte	0x1
	.value	0x2f0
	.long	0x4e8
	.byte	0x5
	.byte	0x3
	.long	aux_info_file_name
	.uleb128 0x33
	.string	"da"
	.byte	0x1
	.value	0x3e6
	.long	0x9fe1
	.byte	0x5
	.byte	0x3
	.long	da
	.uleb128 0x3
	.byte	0x4
	.long	0x9fe7
	.uleb128 0xa
	.long	0x8703
	.uleb128 0xf
	.long	0x9ffc
	.long	0x8703
	.uleb128 0x10
	.long	0x3cf
	.byte	0x6
	.byte	0x0
	.uleb128 0x33
	.string	"debug_args"
	.byte	0x1
	.value	0x3e7
	.long	0xa015
	.byte	0x5
	.byte	0x3
	.long	debug_args
	.uleb128 0xa
	.long	0x9fec
	.uleb128 0xf
	.long	0xa02a
	.long	0x6c6a
	.uleb128 0x10
	.long	0x3cf
	.byte	0x17
	.byte	0x0
	.uleb128 0x33
	.string	"lang_independent_params"
	.byte	0x1
	.value	0x416
	.long	0xa050
	.byte	0x5
	.byte	0x3
	.long	lang_independent_params
	.uleb128 0xa
	.long	0xa01a
	.uleb128 0xf
	.long	0xa065
	.long	0x87b2
	.uleb128 0x10
	.long	0x3cf
	.byte	0x6c
	.byte	0x0
	.uleb128 0x33
	.string	"f_options"
	.byte	0x1
	.value	0x424
	.long	0xa07d
	.byte	0x5
	.byte	0x3
	.long	f_options
	.uleb128 0xa
	.long	0xa055
	.uleb128 0xf
	.long	0xa092
	.long	0x87d3
	.uleb128 0x10
	.long	0x3cf
	.byte	0xc8
	.byte	0x0
	.uleb128 0x33
	.string	"documented_lang_options"
	.byte	0x1
	.value	0x50a
	.long	0xa0b8
	.byte	0x5
	.byte	0x3
	.long	documented_lang_options
	.uleb128 0xa
	.long	0xa082
	.uleb128 0xf
	.long	0xa0cd
	.long	0x8804
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3d
	.byte	0x0
	.uleb128 0x33
	.string	"target_switches"
	.byte	0x1
	.value	0x5c5
	.long	0xa0eb
	.byte	0x5
	.byte	0x3
	.long	target_switches
	.uleb128 0xa
	.long	0xa0bd
	.uleb128 0xf
	.long	0xa100
	.long	0x883d
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0x33
	.string	"target_options"
	.byte	0x1
	.value	0x5d0
	.long	0xa11d
	.byte	0x5
	.byte	0x3
	.long	target_options
	.uleb128 0xa
	.long	0xa0f0
	.uleb128 0xf
	.long	0xa132
	.long	0x87b2
	.uleb128 0x10
	.long	0x3cf
	.byte	0x15
	.byte	0x0
	.uleb128 0x33
	.string	"W_options"
	.byte	0x1
	.value	0x63e
	.long	0xa14a
	.byte	0x5
	.byte	0x3
	.long	W_options
	.uleb128 0xa
	.long	0xa122
	.uleb128 0x40
	.string	"asm_file_name"
	.byte	0x1
	.value	0x160
	.long	0x4e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	asm_file_name
	.uleb128 0x41
	.string	"save_argv"
	.byte	0x1
	.byte	0xa3
	.long	0x8413
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	save_argv
	.uleb128 0x42
	.string	"target_flags"
	.byte	0x1
	.byte	0xcf
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"g_switch_value"
	.byte	0x1
	.value	0x163
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	g_switch_value
	.uleb128 0x40
	.string	"g_switch_set"
	.byte	0x1
	.value	0x164
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	g_switch_set
	.uleb128 0x42
	.string	"mips_isa"
	.byte	0xd
	.byte	0xa6
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_arch_string"
	.byte	0xd
	.byte	0xaa
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_tune_string"
	.byte	0xd
	.byte	0xab
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_isa_string"
	.byte	0xd
	.byte	0xac
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_abi_string"
	.byte	0xd
	.byte	0xad
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_entry_string"
	.byte	0xd
	.byte	0xae
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_no_mips16_string"
	.byte	0xd
	.byte	0xaf
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"mips_cache_flush_func"
	.byte	0xd
	.byte	0xb0
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"stderr"
	.byte	0xf
	.byte	0x90
	.long	0x7f3
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0xa2c5
	.long	0x438
	.uleb128 0x10
	.long	0x3cf
	.byte	0xff
	.byte	0x0
	.uleb128 0x42
	.string	"_sch_istable"
	.byte	0x16
	.byte	0x48
	.long	0xa2db
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xa2b5
	.uleb128 0x41
	.string	"input_filename"
	.byte	0x1
	.byte	0xa8
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	input_filename
	.uleb128 0x41
	.string	"main_input_filename"
	.byte	0x1
	.byte	0xae
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	main_input_filename
	.uleb128 0x41
	.string	"lineno"
	.byte	0x1
	.byte	0xb2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lineno
	.uleb128 0x41
	.string	"input_file_stack"
	.byte	0x1
	.byte	0xb9
	.long	0x894
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	input_file_stack
	.uleb128 0x41
	.string	"input_file_stack_tick"
	.byte	0x1
	.byte	0xbc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	input_file_stack_tick
	.uleb128 0x43
	.string	"rtx_equal_function_value_matters"
	.byte	0x4
	.value	0x541
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"generating_concat_p"
	.byte	0x4
	.value	0x544
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"flow2_completed"
	.byte	0x4
	.value	0x75e
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"reload_completed"
	.byte	0x4
	.value	0x763
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"cse_not_expected"
	.byte	0x4
	.value	0x770
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"no_new_pseudos"
	.byte	0x1
	.byte	0xb5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	no_new_pseudos
	.uleb128 0x40
	.string	"stack_limit_rtx"
	.byte	0x1
	.value	0x38c
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	stack_limit_rtx
	.uleb128 0xf
	.long	0xa457
	.long	0x2d7
	.uleb128 0x44
	.byte	0x0
	.uleb128 0x42
	.string	"version_string"
	.byte	0x17
	.byte	0x1a
	.long	0xa46f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xa44c
	.uleb128 0x42
	.string	"cset_rev"
	.byte	0x17
	.byte	0x1c
	.long	0x5c3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"cset_key"
	.byte	0x17
	.byte	0x1d
	.long	0x5c3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"build_root"
	.byte	0x17
	.byte	0x1e
	.long	0x5c3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"build_host"
	.byte	0x17
	.byte	0x1f
	.long	0x5c3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"build_user"
	.byte	0x17
	.byte	0x20
	.long	0x5c3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"build_date"
	.byte	0x17
	.byte	0x21
	.long	0x5c3e
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"tree_code_type"
	.byte	0x3
	.byte	0x45
	.long	0xa500
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xa44c
	.uleb128 0x40
	.string	"flag_tls_default"
	.byte	0x1
	.value	0x30d
	.long	0x5b0a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_tls_default
	.uleb128 0x40
	.string	"current_function_decl"
	.byte	0x1
	.value	0x18a
	.long	0x1e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_decl
	.uleb128 0x40
	.string	"current_function_func_begin_label"
	.byte	0x1
	.value	0x18e
	.long	0x1e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_function_func_begin_label
	.uleb128 0x40
	.string	"write_symbols"
	.byte	0x1
	.value	0x169
	.long	0x5c8c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	write_symbols
	.uleb128 0x45
	.long	.LASF29
	.byte	0x1
	.value	0x16d
	.long	0x5d16
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	debug_info_level
	.uleb128 0x40
	.string	"use_gnu_debug_info_extensions"
	.byte	0x1
	.value	0x173
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	use_gnu_debug_info_extensions
	.uleb128 0x40
	.string	"optimize"
	.byte	0x1
	.value	0x17c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optimize
	.uleb128 0x40
	.string	"optimize_size"
	.byte	0x1
	.value	0x183
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optimize_size
	.uleb128 0x40
	.string	"quiet_flag"
	.byte	0x1
	.value	0x1be
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	quiet_flag
	.uleb128 0x40
	.string	"time_report"
	.byte	0x1
	.value	0x1c9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_report
	.uleb128 0x40
	.string	"mem_report"
	.byte	0x1
	.value	0x1ce
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mem_report
	.uleb128 0x40
	.string	"inhibit_warnings"
	.byte	0x1
	.value	0x5d7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	inhibit_warnings
	.uleb128 0x40
	.string	"warn_system_headers"
	.byte	0x1
	.value	0x5db
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_system_headers
	.uleb128 0x40
	.string	"extra_warnings"
	.byte	0x1
	.value	0x5df
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	extra_warnings
	.uleb128 0x40
	.string	"warn_unused_function"
	.byte	0x1
	.value	0x5e7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_function
	.uleb128 0x40
	.string	"warn_unused_label"
	.byte	0x1
	.value	0x5e8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_label
	.uleb128 0x40
	.string	"warn_unused_parameter"
	.byte	0x1
	.value	0x5e9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_parameter
	.uleb128 0x40
	.string	"warn_unused_variable"
	.byte	0x1
	.value	0x5ea
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_variable
	.uleb128 0x40
	.string	"warn_unused_value"
	.byte	0x1
	.value	0x5eb
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_unused_value
	.uleb128 0x40
	.string	"warn_notreached"
	.byte	0x1
	.value	0x5ef
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_notreached
	.uleb128 0x40
	.string	"warn_inline"
	.byte	0x1
	.value	0x61b
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_inline
	.uleb128 0x40
	.string	"warn_uninitialized"
	.byte	0x1
	.value	0x5f3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_uninitialized
	.uleb128 0x40
	.string	"warn_shadow"
	.byte	0x1
	.value	0x5f7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_shadow
	.uleb128 0x40
	.string	"warn_switch"
	.byte	0x1
	.value	0x5fc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_switch
	.uleb128 0x40
	.string	"warn_switch_default"
	.byte	0x1
	.value	0x600
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_switch_default
	.uleb128 0x40
	.string	"warn_switch_enum"
	.byte	0x1
	.value	0x605
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_switch_enum
	.uleb128 0x40
	.string	"warn_return_type"
	.byte	0x1
	.value	0x60a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_return_type
	.uleb128 0x40
	.string	"warn_missing_noreturn"
	.byte	0x1
	.value	0x630
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_missing_noreturn
	.uleb128 0x40
	.string	"warn_cast_align"
	.byte	0x1
	.value	0x610
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_cast_align
	.uleb128 0x40
	.string	"warn_larger_than"
	.byte	0x1
	.value	0x616
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_larger_than
	.uleb128 0x40
	.string	"larger_than_size"
	.byte	0x1
	.value	0x617
	.long	0x47f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	larger_than_size
	.uleb128 0x40
	.string	"warn_aggregate_return"
	.byte	0x1
	.value	0x620
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_aggregate_return
	.uleb128 0x40
	.string	"warn_packed"
	.byte	0x1
	.value	0x624
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_packed
	.uleb128 0x40
	.string	"warn_padded"
	.byte	0x1
	.value	0x628
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_padded
	.uleb128 0x40
	.string	"warn_disabled_optimization"
	.byte	0x1
	.value	0x62c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_disabled_optimization
	.uleb128 0x40
	.string	"warn_deprecated_decl"
	.byte	0x1
	.value	0x635
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_deprecated_decl
	.uleb128 0x40
	.string	"warn_strict_aliasing"
	.byte	0x1
	.value	0x63a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warn_strict_aliasing
	.uleb128 0x40
	.string	"profile_flag"
	.byte	0x1
	.value	0x196
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	profile_flag
	.uleb128 0x40
	.string	"profile_arc_flag"
	.byte	0x1
	.value	0x19a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	profile_arc_flag
	.uleb128 0x40
	.string	"flag_test_coverage"
	.byte	0x1
	.value	0x19e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_test_coverage
	.uleb128 0x40
	.string	"flag_branch_probabilities"
	.byte	0x1
	.value	0x1a2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_branch_probabilities
	.uleb128 0x40
	.string	"flag_reorder_blocks"
	.byte	0x1
	.value	0x1a6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_reorder_blocks
	.uleb128 0x40
	.string	"flag_reorder_functions"
	.byte	0x1
	.value	0x1aa
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_reorder_functions
	.uleb128 0x40
	.string	"flag_rename_registers"
	.byte	0x1
	.value	0x1ae
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_rename_registers
	.uleb128 0x40
	.string	"pedantic"
	.byte	0x1
	.value	0x1b4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pedantic
	.uleb128 0x40
	.string	"in_system_header"
	.byte	0x1
	.value	0x1b9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	in_system_header
	.uleb128 0x40
	.string	"flag_print_asm_name"
	.byte	0x1
	.value	0x159
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_print_asm_name
	.uleb128 0x40
	.string	"flag_signed_char"
	.byte	0x1
	.value	0x1d9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_signed_char
	.uleb128 0x40
	.string	"flag_short_enums"
	.byte	0x1
	.value	0x1dd
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_short_enums
	.uleb128 0x40
	.string	"flag_caller_saves"
	.byte	0x1
	.value	0x1e6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_caller_saves
	.uleb128 0x40
	.string	"flag_pcc_struct_return"
	.byte	0x1
	.value	0x1f4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pcc_struct_return
	.uleb128 0x40
	.string	"flag_force_mem"
	.byte	0x1
	.value	0x1f9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_force_mem
	.uleb128 0x40
	.string	"flag_force_addr"
	.byte	0x1
	.value	0x1fe
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_force_addr
	.uleb128 0x40
	.string	"flag_defer_pop"
	.byte	0x1
	.value	0x203
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_defer_pop
	.uleb128 0x40
	.string	"flag_float_store"
	.byte	0x1
	.value	0x208
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_float_store
	.uleb128 0x40
	.string	"flag_strength_reduce"
	.byte	0x1
	.value	0x21e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_strength_reduce
	.uleb128 0x40
	.string	"flag_unroll_loops"
	.byte	0x1
	.value	0x225
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unroll_loops
	.uleb128 0x40
	.string	"flag_unroll_all_loops"
	.byte	0x1
	.value	0x22a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unroll_all_loops
	.uleb128 0x40
	.string	"flag_move_all_movables"
	.byte	0x1
	.value	0x233
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_move_all_movables
	.uleb128 0x40
	.string	"flag_prefetch_loop_arrays"
	.byte	0x1
	.value	0x22e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_prefetch_loop_arrays
	.uleb128 0x40
	.string	"flag_reduce_all_givs"
	.byte	0x1
	.value	0x238
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_reduce_all_givs
	.uleb128 0x40
	.string	"flag_cse_follow_jumps"
	.byte	0x1
	.value	0x20d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_cse_follow_jumps
	.uleb128 0x40
	.string	"flag_cse_skip_blocks"
	.byte	0x1
	.value	0x211
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_cse_skip_blocks
	.uleb128 0x40
	.string	"flag_expensive_optimizations"
	.byte	0x1
	.value	0x215
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_expensive_optimizations
	.uleb128 0x40
	.string	"flag_writable_strings"
	.byte	0x1
	.value	0x242
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_writable_strings
	.uleb128 0x40
	.string	"flag_no_function_cse"
	.byte	0x1
	.value	0x248
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_function_cse
	.uleb128 0x40
	.string	"flag_omit_frame_pointer"
	.byte	0x1
	.value	0x24d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_omit_frame_pointer
	.uleb128 0x40
	.string	"flag_no_peephole"
	.byte	0x1
	.value	0x25a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_peephole
	.uleb128 0x40
	.string	"flag_volatile"
	.byte	0x1
	.value	0x286
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_volatile
	.uleb128 0x40
	.string	"flag_volatile_global"
	.byte	0x1
	.value	0x28a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_volatile_global
	.uleb128 0x40
	.string	"flag_volatile_static"
	.byte	0x1
	.value	0x28e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_volatile_static
	.uleb128 0x40
	.string	"flag_optimize_sibling_calls"
	.byte	0x1
	.value	0x25e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_optimize_sibling_calls
	.uleb128 0x40
	.string	"flag_errno_math"
	.byte	0x1
	.value	0x263
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_errno_math
	.uleb128 0x40
	.string	"flag_unsafe_math_optimizations"
	.byte	0x1
	.value	0x26a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unsafe_math_optimizations
	.uleb128 0x40
	.string	"flag_finite_math_only"
	.byte	0x1
	.value	0x26e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_finite_math_only
	.uleb128 0x40
	.string	"flag_trapping_math"
	.byte	0x1
	.value	0x276
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_trapping_math
	.uleb128 0x40
	.string	"flag_complex_divide_method"
	.byte	0x1
	.value	0x282
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_complex_divide_method
	.uleb128 0x40
	.string	"flag_rerun_loop_opt"
	.byte	0x1
	.value	0x2c0
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_rerun_loop_opt
	.uleb128 0x40
	.string	"flag_inline_functions"
	.byte	0x1
	.value	0x2c5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_inline_functions
	.uleb128 0x40
	.string	"flag_keep_inline_functions"
	.byte	0x1
	.value	0x2cb
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_keep_inline_functions
	.uleb128 0x40
	.string	"flag_no_inline"
	.byte	0x1
	.value	0x2d1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_inline
	.uleb128 0x40
	.string	"flag_really_no_inline"
	.byte	0x1
	.value	0x2db
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_really_no_inline
	.uleb128 0x40
	.string	"flag_syntax_only"
	.byte	0x1
	.value	0x292
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_syntax_only
	.uleb128 0x40
	.string	"flag_gen_aux_info"
	.byte	0x1
	.value	0x2ec
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gen_aux_info
	.uleb128 0x40
	.string	"flag_shared_data"
	.byte	0x1
	.value	0x2f4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_shared_data
	.uleb128 0x40
	.string	"flag_schedule_insns"
	.byte	0x1
	.value	0x32b
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_insns
	.uleb128 0x40
	.string	"flag_schedule_insns_after_reload"
	.byte	0x1
	.value	0x32c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_insns_after_reload
	.uleb128 0x40
	.string	"flag_schedule_interblock"
	.byte	0x1
	.value	0x338
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_interblock
	.uleb128 0x40
	.string	"flag_schedule_speculative"
	.byte	0x1
	.value	0x339
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_speculative
	.uleb128 0x40
	.string	"flag_schedule_speculative_load"
	.byte	0x1
	.value	0x33a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_speculative_load
	.uleb128 0x40
	.string	"flag_schedule_speculative_load_dangerous"
	.byte	0x1
	.value	0x33b
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_schedule_speculative_load_dangerous
	.uleb128 0x40
	.string	"flag_branch_on_count_reg"
	.byte	0x1
	.value	0x341
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_branch_on_count_reg
	.uleb128 0x40
	.string	"flag_single_precision_constant"
	.byte	0x1
	.value	0x33d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_single_precision_constant
	.uleb128 0x40
	.string	"flag_delayed_branch"
	.byte	0x1
	.value	0x2f8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_delayed_branch
	.uleb128 0x43
	.string	"flag_dump_unnumbered"
	.byte	0x14
	.value	0x1d5
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_pedantic_errors"
	.byte	0x1
	.value	0x324
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pedantic_errors
	.uleb128 0x40
	.string	"flag_pic"
	.byte	0x1
	.value	0x2fe
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pic
	.uleb128 0x40
	.string	"flag_pie"
	.byte	0x1
	.value	0x304
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pie
	.uleb128 0x40
	.string	"flag_shlib"
	.byte	0x1
	.value	0x309
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_shlib
	.uleb128 0x40
	.string	"flag_exceptions"
	.byte	0x1
	.value	0x312
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_exceptions
	.uleb128 0x40
	.string	"flag_unwind_tables"
	.byte	0x1
	.value	0x316
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_unwind_tables
	.uleb128 0x40
	.string	"flag_asynchronous_unwind_tables"
	.byte	0x1
	.value	0x31a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_asynchronous_unwind_tables
	.uleb128 0x40
	.string	"flag_no_common"
	.byte	0x1
	.value	0x31f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_common
	.uleb128 0x40
	.string	"flag_inhibit_size_directive"
	.byte	0x1
	.value	0x347
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_inhibit_size_directive
	.uleb128 0x40
	.string	"flag_function_sections"
	.byte	0x1
	.value	0x252
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_function_sections
	.uleb128 0x40
	.string	"flag_data_sections"
	.byte	0x1
	.value	0x256
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_data_sections
	.uleb128 0x40
	.string	"flag_verbose_asm"
	.byte	0x1
	.value	0x350
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_verbose_asm
	.uleb128 0x40
	.string	"flag_debug_asm"
	.byte	0x1
	.value	0x359
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_debug_asm
	.uleb128 0x40
	.string	"flag_dump_rtl_in_asm"
	.byte	0x1
	.value	0x367
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_dump_rtl_in_asm
	.uleb128 0x40
	.string	"flag_gnu_linker"
	.byte	0x1
	.value	0x36f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gnu_linker
	.uleb128 0x40
	.string	"flag_bad_asm_constraint_kills_stmt"
	.byte	0x1
	.value	0x361
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_bad_asm_constraint_kills_stmt
	.uleb128 0x40
	.string	"flag_pack_struct"
	.byte	0x1
	.value	0x37f
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_pack_struct
	.uleb128 0x40
	.string	"flag_argument_noalias"
	.byte	0x1
	.value	0x394
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_argument_noalias
	.uleb128 0x40
	.string	"flag_strict_aliasing"
	.byte	0x1
	.value	0x39a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_strict_aliasing
	.uleb128 0x40
	.string	"flag_stack_check"
	.byte	0x1
	.value	0x383
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_stack_check
	.uleb128 0x40
	.string	"flag_regmove"
	.byte	0x1
	.value	0x23d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_regmove
	.uleb128 0x40
	.string	"flag_instrument_function_entry_exit"
	.byte	0x1
	.value	0x39d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_instrument_function_entry_exit
	.uleb128 0x40
	.string	"flag_peephole2"
	.byte	0x1
	.value	0x3a6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_peephole2
	.uleb128 0x40
	.string	"flag_guess_branch_prob"
	.byte	0x1
	.value	0x3a9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_guess_branch_prob
	.uleb128 0x40
	.string	"flag_bounds_check"
	.byte	0x1
	.value	0x3af
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_bounds_check
	.uleb128 0x40
	.string	"flag_merge_constants"
	.byte	0x1
	.value	0x3b4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_merge_constants
	.uleb128 0x40
	.string	"flag_renumber_insns"
	.byte	0x1
	.value	0x3b9
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_renumber_insns
	.uleb128 0x40
	.string	"flag_trapv"
	.byte	0x1
	.value	0x40e
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_trapv
	.uleb128 0x40
	.string	"flag_honor_shift"
	.byte	0x1
	.value	0x3c1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_honor_shift
	.uleb128 0x40
	.string	"align_loops"
	.byte	0x1
	.value	0x3cd
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_loops
	.uleb128 0x40
	.string	"align_loops_log"
	.byte	0x1
	.value	0x3ce
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_loops_log
	.uleb128 0x40
	.string	"align_loops_max_skip"
	.byte	0x1
	.value	0x3cf
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_loops_max_skip
	.uleb128 0x40
	.string	"align_jumps"
	.byte	0x1
	.value	0x3d0
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_jumps
	.uleb128 0x40
	.string	"align_jumps_log"
	.byte	0x1
	.value	0x3d1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_jumps_log
	.uleb128 0x40
	.string	"align_jumps_max_skip"
	.byte	0x1
	.value	0x3d2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_jumps_max_skip
	.uleb128 0x40
	.string	"align_labels"
	.byte	0x1
	.value	0x3d3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_labels
	.uleb128 0x40
	.string	"align_labels_log"
	.byte	0x1
	.value	0x3d4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_labels_log
	.uleb128 0x40
	.string	"align_labels_max_skip"
	.byte	0x1
	.value	0x3d5
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_labels_max_skip
	.uleb128 0x40
	.string	"align_functions"
	.byte	0x1
	.value	0x3d6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_functions
	.uleb128 0x40
	.string	"align_functions_log"
	.byte	0x1
	.value	0x3d7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	align_functions_log
	.uleb128 0x40
	.string	"force_align_functions_log"
	.byte	0x1
	.value	0x3db
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	force_align_functions_log
	.uleb128 0x40
	.string	"graph_dump_format"
	.byte	0x1
	.value	0x15c
	.long	0x5d75
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	graph_dump_format
	.uleb128 0x40
	.string	"flag_no_ident"
	.byte	0x1
	.value	0x3a3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_no_ident
	.uleb128 0x40
	.string	"flag_gcse_lm"
	.byte	0x1
	.value	0x2b1
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gcse_lm
	.uleb128 0x40
	.string	"flag_gcse_sm"
	.byte	0x1
	.value	0x2b7
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_gcse_sm
	.uleb128 0x40
	.string	"flag_eliminate_dwarf2_dups"
	.byte	0x1
	.value	0x192
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_eliminate_dwarf2_dups
	.uleb128 0x40
	.string	"flag_detailed_statistics"
	.byte	0x1
	.value	0x1d2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_detailed_statistics
	.uleb128 0x43
	.string	"flag_non_call_exceptions"
	.byte	0x14
	.value	0x2ae
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"flag_zero_initialized_in_bss"
	.byte	0x1
	.value	0x373
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_zero_initialized_in_bss
	.uleb128 0x40
	.string	"flag_signaling_nans"
	.byte	0x1
	.value	0x27c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_signaling_nans
	.uleb128 0x43
	.string	"flag_random_seed"
	.byte	0x14
	.value	0x2b9
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"asm_out_file"
	.byte	0x1
	.value	0x69c
	.long	0x6a85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	asm_out_file
	.uleb128 0x43
	.string	"current_function_is_leaf"
	.byte	0x18
	.value	0x1a2
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"current_function_nothrow"
	.byte	0x18
	.value	0x1a7
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"rtl_dump_file"
	.byte	0x1
	.value	0x69e
	.long	0x6a85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rtl_dump_file
	.uleb128 0x40
	.string	"user_label_prefix"
	.byte	0x1
	.value	0x414
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	user_label_prefix
	.uleb128 0x43
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x50c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"progname"
	.byte	0x1
	.byte	0x9f
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	progname
	.uleb128 0x41
	.string	"dump_base_name"
	.byte	0x1
	.byte	0xc0
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	dump_base_name
	.uleb128 0x41
	.string	"aux_base_name"
	.byte	0x1
	.byte	0xc4
	.long	0x2cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	aux_base_name
	.uleb128 0x41
	.string	"target_flags_explicit"
	.byte	0x1
	.byte	0xd4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	target_flags_explicit
	.uleb128 0x42
	.string	"max_regno"
	.byte	0x19
	.byte	0x2c
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"global_dc"
	.byte	0x1a
	.value	0x109
	.long	0x6bde
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"compiler_params"
	.byte	0x15
	.byte	0x3a
	.long	0xba0c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c6a
	.uleb128 0x42
	.string	"reg_equiv_memory_loc"
	.byte	0x1d
	.byte	0xa8
	.long	0x1722
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"debug_hooks"
	.byte	0x1
	.byte	0xd8
	.long	0xba4a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	debug_hooks
	.uleb128 0x3
	.byte	0x4
	.long	0xba50
	.uleb128 0xa
	.long	0x6ccb
	.uleb128 0x42
	.string	"do_nothing_debug_hooks"
	.byte	0x1e
	.byte	0x7f
	.long	0xba50
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"dbx_debug_hooks"
	.byte	0x1e
	.byte	0x80
	.long	0xba50
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"dwarf_debug_hooks"
	.byte	0x1e
	.byte	0x83
	.long	0xba50
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.string	"targetm"
	.byte	0x1f
	.value	0x12d
	.long	0x758b
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.long	.LASF39
	.byte	0x20
	.value	0x176
	.long	0xbac9
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x7fd9
	.uleb128 0x41
	.string	"parse_tree_dump"
	.byte	0x1
	.byte	0x83
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	parse_tree_dump
	.uleb128 0x41
	.string	"save_argc"
	.byte	0x1
	.byte	0xa2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	save_argc
	.uleb128 0x40
	.string	"rtl_dump_and_exit"
	.byte	0x1
	.value	0x158
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rtl_dump_and_exit
	.uleb128 0x40
	.string	"flag_cprop_registers"
	.byte	0x1
	.value	0x1af
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_cprop_registers
	.uleb128 0x40
	.string	"pstatic_as_global"
	.byte	0x1
	.value	0x1c4
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pstatic_as_global
	.uleb128 0x40
	.string	"flag_thread_jumps"
	.byte	0x1
	.value	0x21a
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_thread_jumps
	.uleb128 0x40
	.string	"flag_openmp"
	.byte	0x1
	.value	0x2e2
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_openmp
	.uleb128 0x40
	.string	"flag_keep_static_consts"
	.byte	0x1
	.value	0x2e8
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_keep_static_consts
	.uleb128 0x40
	.string	"flag_ssa"
	.byte	0x1
	.value	0x376
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ssa
	.uleb128 0x40
	.string	"flag_ssa_ccp"
	.byte	0x1
	.value	0x379
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ssa_ccp
	.uleb128 0x40
	.string	"flag_ssa_dce"
	.byte	0x1
	.value	0x37c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_ssa_dce
	.uleb128 0x40
	.string	"flag_new_regalloc"
	.byte	0x1
	.value	0x3bc
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_new_regalloc
	.uleb128 0x40
	.string	"flag_tracer"
	.byte	0x1
	.value	0x3c6
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_tracer
	.uleb128 0x40
	.string	"flag_leading_underscore"
	.byte	0x1
	.value	0x411
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	flag_leading_underscore
	.uleb128 0x40
	.string	"warnings_are_errors"
	.byte	0x1
	.value	0x5e3
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	warnings_are_errors
	.uleb128 0x40
	.string	"aux_info_file"
	.byte	0x1
	.value	0x69d
	.long	0x6a85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	aux_info_file
	.uleb128 0x40
	.string	"tree_dump_file"
	.byte	0x1
	.value	0x6a1
	.long	0x6a85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tree_dump_file
	.uleb128 0x43
	.string	"Opt_Level"
	.byte	0x1
	.value	0x13a3
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
	.uleb128 0x16
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.long	0x11f0
	.value	0x2
	.long	.Ldebug_info0
	.long	0xbcf3
	.long	0x8879
	.string	"set_Wunused"
	.long	0x88af
	.string	"set_fast_math_flags"
	.long	0x88e9
	.string	"fast_math_flags_set_p"
	.long	0x8915
	.string	"read_integral_parameter"
	.long	0x8988
	.string	"dump_parse_tree"
	.long	0x89ce
	.string	"do_abort"
	.long	0x89fe
	.string	"botch"
	.long	0x8a38
	.string	"exact_log2_wide"
	.long	0x8a7f
	.string	"floor_log2_wide"
	.long	0x8afa
	.string	"strip_off_ending"
	.long	0x8b4d
	.string	"output_quoted_string"
	.long	0x8ba4
	.string	"output_clean_symbol_name"
	.long	0x8c00
	.string	"output_file_directive"
	.long	0x8d9a
	.string	"wrapup_global_declarations"
	.long	0x8e58
	.string	"check_global_declarations"
	.long	0x8ec3
	.string	"push_srcloc"
	.long	0x8f13
	.string	"pop_srcloc"
	.long	0x8f53
	.string	"compile_file"
	.long	0x8f86
	.string	"rest_of_decl_compilation"
	.long	0x901a
	.string	"rest_of_type_compilation"
	.long	0x906c
	.string	"rest_of_compilation"
	.long	0x9805
	.string	"check_gnu_errors"
	.long	0x9d88
	.string	"gnu_init"
	.long	0xa14f
	.string	"asm_file_name"
	.long	0xa16c
	.string	"save_argv"
	.long	0xa19a
	.string	"g_switch_value"
	.long	0xa1b8
	.string	"g_switch_set"
	.long	0xa2e0
	.string	"input_filename"
	.long	0xa2fd
	.string	"main_input_filename"
	.long	0xa31f
	.string	"lineno"
	.long	0xa334
	.string	"input_file_stack"
	.long	0xa353
	.string	"input_file_stack_tick"
	.long	0xa410
	.string	"no_new_pseudos"
	.long	0xa42d
	.string	"stack_limit_rtx"
	.long	0xa505
	.string	"flag_tls_default"
	.long	0xa525
	.string	"current_function_decl"
	.long	0xa54a
	.string	"current_function_func_begin_label"
	.long	0xa57b
	.string	"write_symbols"
	.long	0xa598
	.string	"debug_info_level"
	.long	0xa5ab
	.string	"use_gnu_debug_info_extensions"
	.long	0xa5d8
	.string	"optimize"
	.long	0xa5f0
	.string	"optimize_size"
	.long	0xa60d
	.string	"quiet_flag"
	.long	0xa627
	.string	"time_report"
	.long	0xa642
	.string	"mem_report"
	.long	0xa65c
	.string	"inhibit_warnings"
	.long	0xa67c
	.string	"warn_system_headers"
	.long	0xa69f
	.string	"extra_warnings"
	.long	0xa6bd
	.string	"warn_unused_function"
	.long	0xa6e1
	.string	"warn_unused_label"
	.long	0xa702
	.string	"warn_unused_parameter"
	.long	0xa727
	.string	"warn_unused_variable"
	.long	0xa74b
	.string	"warn_unused_value"
	.long	0xa76c
	.string	"warn_notreached"
	.long	0xa78b
	.string	"warn_inline"
	.long	0xa7a6
	.string	"warn_uninitialized"
	.long	0xa7c8
	.string	"warn_shadow"
	.long	0xa7e3
	.string	"warn_switch"
	.long	0xa7fe
	.string	"warn_switch_default"
	.long	0xa821
	.string	"warn_switch_enum"
	.long	0xa841
	.string	"warn_return_type"
	.long	0xa861
	.string	"warn_missing_noreturn"
	.long	0xa886
	.string	"warn_cast_align"
	.long	0xa8a5
	.string	"warn_larger_than"
	.long	0xa8c5
	.string	"larger_than_size"
	.long	0xa8e5
	.string	"warn_aggregate_return"
	.long	0xa90a
	.string	"warn_packed"
	.long	0xa925
	.string	"warn_padded"
	.long	0xa940
	.string	"warn_disabled_optimization"
	.long	0xa96a
	.string	"warn_deprecated_decl"
	.long	0xa98e
	.string	"warn_strict_aliasing"
	.long	0xa9b2
	.string	"profile_flag"
	.long	0xa9ce
	.string	"profile_arc_flag"
	.long	0xa9ee
	.string	"flag_test_coverage"
	.long	0xaa10
	.string	"flag_branch_probabilities"
	.long	0xaa39
	.string	"flag_reorder_blocks"
	.long	0xaa5c
	.string	"flag_reorder_functions"
	.long	0xaa82
	.string	"flag_rename_registers"
	.long	0xaaa7
	.string	"pedantic"
	.long	0xaabf
	.string	"in_system_header"
	.long	0xaadf
	.string	"flag_print_asm_name"
	.long	0xab02
	.string	"flag_signed_char"
	.long	0xab22
	.string	"flag_short_enums"
	.long	0xab42
	.string	"flag_caller_saves"
	.long	0xab63
	.string	"flag_pcc_struct_return"
	.long	0xab89
	.string	"flag_force_mem"
	.long	0xaba7
	.string	"flag_force_addr"
	.long	0xabc6
	.string	"flag_defer_pop"
	.long	0xabe4
	.string	"flag_float_store"
	.long	0xac04
	.string	"flag_strength_reduce"
	.long	0xac28
	.string	"flag_unroll_loops"
	.long	0xac49
	.string	"flag_unroll_all_loops"
	.long	0xac6e
	.string	"flag_move_all_movables"
	.long	0xac94
	.string	"flag_prefetch_loop_arrays"
	.long	0xacbd
	.string	"flag_reduce_all_givs"
	.long	0xace1
	.string	"flag_cse_follow_jumps"
	.long	0xad06
	.string	"flag_cse_skip_blocks"
	.long	0xad2a
	.string	"flag_expensive_optimizations"
	.long	0xad56
	.string	"flag_writable_strings"
	.long	0xad7b
	.string	"flag_no_function_cse"
	.long	0xad9f
	.string	"flag_omit_frame_pointer"
	.long	0xadc6
	.string	"flag_no_peephole"
	.long	0xade6
	.string	"flag_volatile"
	.long	0xae03
	.string	"flag_volatile_global"
	.long	0xae27
	.string	"flag_volatile_static"
	.long	0xae4b
	.string	"flag_optimize_sibling_calls"
	.long	0xae76
	.string	"flag_errno_math"
	.long	0xae95
	.string	"flag_unsafe_math_optimizations"
	.long	0xaec3
	.string	"flag_finite_math_only"
	.long	0xaee8
	.string	"flag_trapping_math"
	.long	0xaf0a
	.string	"flag_complex_divide_method"
	.long	0xaf34
	.string	"flag_rerun_loop_opt"
	.long	0xaf57
	.string	"flag_inline_functions"
	.long	0xaf7c
	.string	"flag_keep_inline_functions"
	.long	0xafa6
	.string	"flag_no_inline"
	.long	0xafc4
	.string	"flag_really_no_inline"
	.long	0xafe9
	.string	"flag_syntax_only"
	.long	0xb009
	.string	"flag_gen_aux_info"
	.long	0xb02a
	.string	"flag_shared_data"
	.long	0xb04a
	.string	"flag_schedule_insns"
	.long	0xb06d
	.string	"flag_schedule_insns_after_reload"
	.long	0xb09d
	.string	"flag_schedule_interblock"
	.long	0xb0c5
	.string	"flag_schedule_speculative"
	.long	0xb0ee
	.string	"flag_schedule_speculative_load"
	.long	0xb11c
	.string	"flag_schedule_speculative_load_dangerous"
	.long	0xb154
	.string	"flag_branch_on_count_reg"
	.long	0xb17c
	.string	"flag_single_precision_constant"
	.long	0xb1aa
	.string	"flag_delayed_branch"
	.long	0xb1ec
	.string	"flag_pedantic_errors"
	.long	0xb210
	.string	"flag_pic"
	.long	0xb228
	.string	"flag_pie"
	.long	0xb240
	.string	"flag_shlib"
	.long	0xb25a
	.string	"flag_exceptions"
	.long	0xb279
	.string	"flag_unwind_tables"
	.long	0xb29b
	.string	"flag_asynchronous_unwind_tables"
	.long	0xb2ca
	.string	"flag_no_common"
	.long	0xb2e8
	.string	"flag_inhibit_size_directive"
	.long	0xb313
	.string	"flag_function_sections"
	.long	0xb339
	.string	"flag_data_sections"
	.long	0xb35b
	.string	"flag_verbose_asm"
	.long	0xb37b
	.string	"flag_debug_asm"
	.long	0xb399
	.string	"flag_dump_rtl_in_asm"
	.long	0xb3bd
	.string	"flag_gnu_linker"
	.long	0xb3dc
	.string	"flag_bad_asm_constraint_kills_stmt"
	.long	0xb40e
	.string	"flag_pack_struct"
	.long	0xb42e
	.string	"flag_argument_noalias"
	.long	0xb453
	.string	"flag_strict_aliasing"
	.long	0xb477
	.string	"flag_stack_check"
	.long	0xb497
	.string	"flag_regmove"
	.long	0xb4b3
	.string	"flag_instrument_function_entry_exit"
	.long	0xb4e6
	.string	"flag_peephole2"
	.long	0xb504
	.string	"flag_guess_branch_prob"
	.long	0xb52a
	.string	"flag_bounds_check"
	.long	0xb54b
	.string	"flag_merge_constants"
	.long	0xb56f
	.string	"flag_renumber_insns"
	.long	0xb592
	.string	"flag_trapv"
	.long	0xb5ac
	.string	"flag_honor_shift"
	.long	0xb5cc
	.string	"align_loops"
	.long	0xb5e7
	.string	"align_loops_log"
	.long	0xb606
	.string	"align_loops_max_skip"
	.long	0xb62a
	.string	"align_jumps"
	.long	0xb645
	.string	"align_jumps_log"
	.long	0xb664
	.string	"align_jumps_max_skip"
	.long	0xb688
	.string	"align_labels"
	.long	0xb6a4
	.string	"align_labels_log"
	.long	0xb6c4
	.string	"align_labels_max_skip"
	.long	0xb6e9
	.string	"align_functions"
	.long	0xb708
	.string	"align_functions_log"
	.long	0xb72b
	.string	"force_align_functions_log"
	.long	0xb754
	.string	"graph_dump_format"
	.long	0xb775
	.string	"flag_no_ident"
	.long	0xb792
	.string	"flag_gcse_lm"
	.long	0xb7ae
	.string	"flag_gcse_sm"
	.long	0xb7ca
	.string	"flag_eliminate_dwarf2_dups"
	.long	0xb7f4
	.string	"flag_detailed_statistics"
	.long	0xb83f
	.string	"flag_zero_initialized_in_bss"
	.long	0xb86b
	.string	"flag_signaling_nans"
	.long	0xb8a9
	.string	"asm_out_file"
	.long	0xb90b
	.string	"rtl_dump_file"
	.long	0xb928
	.string	"user_label_prefix"
	.long	0xb958
	.string	"progname"
	.long	0xb96f
	.string	"dump_base_name"
	.long	0xb98c
	.string	"aux_base_name"
	.long	0xb9a8
	.string	"target_flags_explicit"
	.long	0xba30
	.string	"debug_hooks"
	.long	0xbace
	.string	"parse_tree_dump"
	.long	0xbaec
	.string	"save_argc"
	.long	0xbb04
	.string	"rtl_dump_and_exit"
	.long	0xbb25
	.string	"flag_cprop_registers"
	.long	0xbb49
	.string	"pstatic_as_global"
	.long	0xbb6a
	.string	"flag_thread_jumps"
	.long	0xbb8b
	.string	"flag_openmp"
	.long	0xbba6
	.string	"flag_keep_static_consts"
	.long	0xbbcd
	.string	"flag_ssa"
	.long	0xbbe5
	.string	"flag_ssa_ccp"
	.long	0xbc01
	.string	"flag_ssa_dce"
	.long	0xbc1d
	.string	"flag_new_regalloc"
	.long	0xbc3e
	.string	"flag_tracer"
	.long	0xbc59
	.string	"flag_leading_underscore"
	.long	0xbc80
	.string	"warnings_are_errors"
	.long	0xbca3
	.string	"aux_info_file"
	.long	0xbcc0
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
.LASF24:
	.string	"lang_specific"
.LASF31:
	.string	"sequence_rtl_expr"
.LASF30:
	.string	"sequence_stack"
.LASF28:
	.string	"function_frequency"
.LASF12:
	.string	"lang_flag_3"
.LASF25:
	.string	"function"
.LASF32:
	.string	"dominance_info"
.LASF3:
	.string	"unsigned int"
.LASF19:
	.string	"abstract_origin"
.LASF22:
	.string	"pointer_depth"
.LASF23:
	.string	"user_align"
.LASF39:
	.string	"lang_hooks"
.LASF20:
	.string	"size_unit"
.LASF38:
	.string	"attribute_table"
.LASF40:
	.string	"description"
.LASF26:
	.string	"args_size"
.LASF46:
	.string	"no_backend"
.LASF27:
	.string	"inlinable"
.LASF7:
	.string	"file"
.LASF13:
	.string	"lang_flag_4"
.LASF14:
	.string	"lang_flag_5"
.LASF18:
	.string	"abstract_flag"
.LASF34:
	.string	"output_buffer"
.LASF44:
	.string	"option_value"
.LASF36:
	.string	"param_info"
.LASF41:
	.string	"variable"
.LASF17:
	.string	"ht_identifier"
.LASF42:
	.string	"__FUNCTION__"
.LASF8:
	.string	"built_in_class"
.LASF29:
	.string	"debug_info_level"
.LASF4:
	.string	"_IO_FILE"
.LASF21:
	.string	"attributes"
.LASF2:
	.string	"decl"
.LASF37:
	.string	"option"
.LASF16:
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
