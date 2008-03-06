	.file	"rtti.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	doing_runtime
	.comm	doing_runtime,4,4
	.section	.rodata
.LC0:
	.string	"type_info"
	.text
.globl init_rtti_processing
	.type	init_rtti_processing, @function
init_rtti_processing:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/rtti.c"
	.loc 1 114 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$20, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 115 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	244(%eax), %eax
	movl	%eax, (%esp)
	call	push_namespace@PLT
	.loc 1 116 0
	movl	$9, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	xref_tag@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 136(%eax)
	.loc 1 119 0
	call	pop_namespace@PLT
	.loc 1 120 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 140(%eax)
	.loc 1 124 0
	call	create_tinfo_types
	.loc 1 125 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	init_rtti_processing, .-init_rtti_processing
	.section	.rodata
	.type	__FUNCTION__.13237, @object
	.size	__FUNCTION__.13237, 13
__FUNCTION__.13237:
	.string	"build_headof"
.LC1:
	.string	"../../../kg++fe/gnu/cp/rtti.c"
	.text
	.type	build_headof, @function
build_headof:
.LFB16:
	.loc 1 135 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$36, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 136 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 140 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L4
	leal	__FUNCTION__.13237@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$140, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L4:
	.loc 1 141 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 143 0
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L6
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L8
.L6:
	.loc 1 147 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 8(%ebp)
	.loc 1 150 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-2, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -8(%ebp)
	.loc 1 152 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_vtbl_ref@PLT
	movl	%eax, -12(%ebp)
	.loc 1 154 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 156 0
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cp_convert@PLT
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -24(%ebp)
.L8:
	movl	-24(%ebp), %eax
	.loc 1 158 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	build_headof, .-build_headof
	.section	.rodata
.LC2:
	.string	"__cxa_bad_cast"
	.text
	.type	throw_bad_cast, @function
throw_bad_cast:
.LFB17:
	.loc 1 166 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ebx
.LCFI10:
	subl	$36, %esp
.LCFI11:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 167 0
	movl	$14, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, -8(%ebp)
	.loc 1 168 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	testl	%eax, %eax
	je	.L11
	.loc 1 169 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -8(%ebp)
	jmp	.L13
.L11:
	.loc 1 171 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_throw_library_fn@PLT
	movl	%eax, -8(%ebp)
.L13:
	.loc 1 174 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cxx_call@PLT
	.loc 1 175 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	throw_bad_cast, .-throw_bad_cast
	.section	.rodata
.LC3:
	.string	"__cxa_bad_typeid"
	.text
	.type	throw_bad_typeid, @function
throw_bad_typeid:
.LFB18:
	.loc 1 179 0
	pushl	%ebp
.LCFI12:
	movl	%esp, %ebp
.LCFI13:
	pushl	%esi
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$32, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 180 0
	movl	$16, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, -16(%ebp)
	.loc 1 181 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	testl	%eax, %eax
	je	.L16
	.loc 1 182 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -16(%ebp)
	jmp	.L18
.L16:
.LBB2:
	.loc 1 185 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 186 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %esi
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 187 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_throw_library_fn@PLT
	movl	%eax, -16(%ebp)
.L18:
.LBE2:
	.loc 1 190 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cxx_call@PLT
	.loc 1 191 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE18:
	.size	throw_bad_typeid, .-throw_bad_typeid
	.type	get_tinfo_decl_dynamic, @function
get_tinfo_decl_dynamic:
.LFB19:
	.loc 1 200 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$36, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 203 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L21
	.loc 1 204 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L21:
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 209 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L24
	.loc 1 210 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L24:
	.loc 1 213 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 215 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L26
	.loc 1 216 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	movl	%eax, -16(%ebp)
.L26:
	.loc 1 218 0
	cmpl	$0, -16(%ebp)
	jne	.L28
	.loc 1 219 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L28:
	.loc 1 222 0
	movl	-16(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L30
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolves_to_fixed_type_p@PLT
	testl	%eax, %eax
	jne	.L30
.LBB3:
	.loc 1 229 0
	movl	$-1, 8(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -8(%ebp)
	.loc 1 230 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_vtbl_ref@PLT
	movl	%eax, -12(%ebp)
	.loc 1 231 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 232 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L30:
.LBE3:
	.loc 1 236 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	%eax, -24(%ebp)
.L23:
	movl	-24(%ebp), %eax
	.loc 1 237 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	get_tinfo_decl_dynamic, .-get_tinfo_decl_dynamic
	.section	.rodata
	.align 4
.LC4:
	.string	"cannot use typeid with -fno-rtti"
	.align 4
.LC5:
	.string	"must #include <typeinfo> before using typeid"
	.text
	.type	typeid_ok_p, @function
typeid_ok_p:
.LFB20:
	.loc 1 241 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$20, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 242 0
	movl	flag_rtti@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L35
	.loc 1 244 0
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 245 0
	movl	$0, -8(%ebp)
	jmp	.L37
.L35:
	.loc 1 248 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L38
	.loc 1 250 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 251 0
	movl	$0, -8(%ebp)
	jmp	.L37
.L38:
	.loc 1 254 0
	movl	$1, -8(%ebp)
.L37:
	movl	-8(%ebp), %eax
	.loc 1 255 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	typeid_ok_p, .-typeid_ok_p
.globl build_typeid
	.type	build_typeid, @function
build_typeid:
.LFB21:
	.loc 1 260 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$52, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 261 0
	movl	$0, -12(%ebp)
	.loc 1 262 0
	movl	$0, -16(%ebp)
	.loc 1 264 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L42
	call	typeid_ok_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L44
.L42:
	.loc 1 265 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L45
.L44:
	.loc 1 267 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L46
	.loc 1 268 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$214, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -24(%ebp)
	jmp	.L45
.L46:
	.loc 1 270 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$42, %al
	jne	.L48
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L48
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L48
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	resolves_to_fixed_type_p@PLT
	testl	%eax, %eax
	jne	.L48
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	.L48
	.loc 1 276 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	stabilize_reference@PLT
	movl	%eax, 8(%ebp)
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -12(%ebp)
.L48:
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl_dynamic
	movl	%eax, 8(%ebp)
	.loc 1 282 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L54
	.loc 1 283 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L45
.L54:
	.loc 1 285 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, 8(%ebp)
	.loc 1 287 0
	cmpl	$0, -12(%ebp)
	je	.L56
.LBB4:
	.loc 1 289 0
	call	throw_bad_typeid
	movl	%eax, -8(%ebp)
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, 8(%ebp)
.L56:
.LBE4:
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -24(%ebp)
.L45:
	movl	-24(%ebp), %eax
	.loc 1 295 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	build_typeid, .-build_typeid
	.type	tinfo_name, @function
tinfo_name:
.LFB22:
	.loc 1 301 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%edi
.LCFI31:
	pushl	%ebx
.LCFI32:
	subl	$32, %esp
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_type_string@PLT
	movl	%eax, -16(%ebp)
	.loc 1 306 0
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
	addl	$1, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_string@PLT
	movl	%eax, (%esp)
	call	fix_string_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 307 0
	movl	-12(%ebp), %eax
	.loc 1 308 0
	addl	$32, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE22:
	.size	tinfo_name, .-tinfo_name
	.section	.rodata
	.align 4
.LC6:
	.string	"cannot create type information for type `%T' because its size is variable"
	.text
.globl get_tinfo_decl
	.type	get_tinfo_decl, @function
get_tinfo_decl:
.LFB23:
	.loc 1 317 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$36, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L62
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	je	.L62
	.loc 1 324 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 326 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L65
.L62:
	.loc 1 329 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L66
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L66:
	.loc 1 331 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$17, %al
	jne	.L68
	.loc 1 332 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_function_type@PLT
	movl	%eax, 8(%ebp)
.L68:
	.loc 1 337 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L70
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L72
.L70:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L73
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L73
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L73
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L73
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L72
.L73:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	92(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 340 0
	cmpl	$0, -12(%ebp)
	je	.L72
	.loc 1 341 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L65
.L72:
	.loc 1 344 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_typeinfo_for_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 346 0
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	movl	%eax, -12(%ebp)
	.loc 1 347 0
	cmpl	$0, -12(%ebp)
	jne	.L79
.LBB5:
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pseudo_ti_desc
	movl	%eax, -8(%ebp)
	.loc 1 351 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, -12(%ebp)
	.loc 1 353 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 354 0
	movl	-12(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 355 0
	movl	-12(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 356 0
	movl	-12(%ebp), %edx
	movzbl	33(%edx), %eax
	orl	$1, %eax
	movb	%al, 33(%edx)
	.loc 1 357 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 92(%edx)
	.loc 1 358 0
	movl	-12(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$-128, %eax
	movb	%al, 35(%edx)
	.loc 1 360 0
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_top_level_and_finish@PLT
	.loc 1 362 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L81
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L83
.L81:
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L84
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L84
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L84
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L84
	movl	8(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L83
.L84:
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	92(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 28(%edx)
.L83:
	.loc 1 366 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
.L79:
.LBE5:
	.loc 1 369 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
.L65:
	movl	-24(%ebp), %eax
	.loc 1 370 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	get_tinfo_decl, .-get_tinfo_decl
	.type	get_tinfo_ptr, @function
get_tinfo_ptr:
.LFB24:
	.loc 1 378 0
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
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 382 0
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 383 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %edx
	movl	$0, 12(%esp)
	movl	$8, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	ocp_convert@PLT
	movl	%eax, -8(%ebp)
	.loc 1 385 0
	movl	-8(%ebp), %eax
	.loc 1 386 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	get_tinfo_ptr, .-get_tinfo_ptr
.globl get_typeid
	.type	get_typeid, @function
get_typeid:
.LFB25:
	.loc 1 393 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$20, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 394 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L93
	call	typeid_ok_p
	xorl	$1, %eax
	testb	%al, %al
	je	.L95
.L93:
	.loc 1 395 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L96
.L95:
	.loc 1 397 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L97
	.loc 1 398 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$214, (%esp)
	call	build_min_nt@PLT
	movl	%eax, -8(%ebp)
	jmp	.L96
.L97:
	.loc 1 403 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	jne	.L99
	.loc 1 404 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L99:
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 410 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L101
	.loc 1 411 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	complete_type_or_diagnostic@PLT
	movl	%eax, 8(%ebp)
.L101:
	.loc 1 413 0
	cmpl	$0, 8(%ebp)
	jne	.L103
	.loc 1 414 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L96
.L103:
	.loc 1 416 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_indirect_ref@PLT
	movl	%eax, -8(%ebp)
.L96:
	movl	-8(%ebp), %eax
	.loc 1 417 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	get_typeid, .-get_typeid
	.type	ifnonnull, @function
ifnonnull:
.LFB26:
	.loc 1 425 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%esi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$32, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 426 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, %esi
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	c_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$103, (%esp)
	call	build@PLT
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	.loc 1 430 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE26:
	.size	ifnonnull, .-ifnonnull
	.section	.rodata
	.align 4
.LC7:
	.string	"target is not pointer or reference to class"
	.align 4
.LC8:
	.string	"target is not pointer or reference to complete type"
	.align 4
.LC9:
	.string	"target is not pointer or reference"
.LC10:
	.string	"source is not a pointer"
	.align 4
.LC11:
	.string	"source is not a pointer to class"
	.align 4
.LC12:
	.string	"source is a pointer to incomplete type"
.LC13:
	.string	"source is not of class type"
	.align 4
.LC14:
	.string	"source is of incomplete class type"
	.align 4
.LC15:
	.string	"conversion casts away constness"
	.align 4
.LC16:
	.string	"dynamic_cast of `%#D' to `%#T' can never succeed"
.LC17:
	.string	"__class_type_info"
.LC18:
	.string	"__dynamic_cast"
	.align 4
.LC19:
	.string	"source type is not polymorphic"
	.align 4
.LC20:
	.string	"cannot dynamic_cast `%E' (of type `%#T') to type `%#T' (%s)"
	.text
	.type	build_dynamic_cast_1, @function
build_dynamic_cast_1:
.LFB27:
	.loc 1 438 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$132, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 439 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	.loc 1 440 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 442 0
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	.loc 1 443 0
	movl	$0, -76(%ebp)
	.loc 1 447 0
	movl	-92(%ebp), %eax
	movl	%eax, -108(%ebp)
	cmpl	$14, -108(%ebp)
	je	.L110
	cmpl	$16, -108(%ebp)
	je	.L111
	jmp	.L109
.L110:
	.loc 1 450 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L112
.L111:
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L113
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L113
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L113
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L113
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L113
	.loc 1 455 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 456 0
	jmp	.L119
.L113:
	.loc 1 458 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L112
	.loc 1 460 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 461 0
	jmp	.L119
.L109:
	.loc 1 466 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 467 0
	jmp	.L119
.L112:
	.loc 1 470 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-77, %al
	jne	.L122
	.loc 1 472 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	resolve_offset_ref@PLT
	movl	%eax, 12(%ebp)
	.loc 1 473 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
.L122:
	.loc 1 476 0
	cmpl	$14, -92(%ebp)
	jne	.L124
	.loc 1 477 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, 12(%ebp)
	jmp	.L126
.L124:
	.loc 1 478 0
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$16, %al
	je	.L126
	.loc 1 481 0
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	build_reference_type@PLT
	movl	%eax, -88(%ebp)
	.loc 1 482 0
	movl	$0, 16(%esp)
	movl	$3, 12(%esp)
	movl	$1, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_to_reference@PLT
	movl	%eax, 12(%ebp)
.L126:
	.loc 1 486 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -88(%ebp)
	.loc 1 488 0
	cmpl	$14, -92(%ebp)
	jne	.L128
	.loc 1 493 0
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L130
	.loc 1 495 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 496 0
	jmp	.L119
.L130:
	.loc 1 498 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L132
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L132
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L132
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L132
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L132
	.loc 1 500 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 501 0
	jmp	.L119
.L132:
	.loc 1 503 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L140
	.loc 1 505 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 506 0
	jmp	.L119
.L128:
	.loc 1 514 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L141
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L141
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L141
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L141
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L141
	.loc 1 516 0
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 517 0
	jmp	.L119
.L141:
	.loc 1 519 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	complete_type@PLT
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L140
	.loc 1 521 0
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 522 0
	jmp	.L119
.L140:
	.loc 1 528 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	at_least_as_qualified_p@PLT
	testl	%eax, %eax
	jne	.L148
	.loc 1 531 0
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
	.loc 1 532 0
	jmp	.L119
.L148:
.LBB6:
	.loc 1 540 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_base@PLT
	movl	%eax, -72(%ebp)
	.loc 1 543 0
	cmpl	$0, -72(%ebp)
	je	.L150
	.loc 1 545 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, %edx
	movl	$0, 12(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$60, (%esp)
	call	build_base_path@PLT
	movl	%eax, 12(%ebp)
	.loc 1 547 0
	movl	-88(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L152
	.loc 1 548 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	non_lvalue@PLT
	movl	%eax, 12(%ebp)
.L152:
	.loc 1 549 0
	movl	12(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L154
.L150:
.LBE6:
	.loc 1 554 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	11(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L155
.LBB7:
	.loc 1 558 0
	cmpl	$14, -92(%ebp)
	jne	.L157
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	jne	.L157
	.loc 1 561 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L160
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L160
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L160
	.loc 1 564 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -104(%ebp)
	jmp	.L154
.L160:
	.loc 1 567 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 569 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_headof
	movl	%eax, -68(%ebp)
	.loc 1 570 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L164
	.loc 1 571 0
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$117, (%esp)
	call	build1@PLT
	movl	%eax, -68(%ebp)
.L164:
	.loc 1 572 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ifnonnull
	movl	%eax, -104(%ebp)
	jmp	.L154
.L157:
.LBB8:
	.loc 1 582 0
	cmpl	$16, -92(%ebp)
	jne	.L166
	.loc 1 584 0
	movl	-80(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L171
	movl	-80(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L171
.LBB9:
	.loc 1 587 0
	call	throw_bad_cast
	movl	%eax, -32(%ebp)
	.loc 1 588 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 591 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 592 0
	movl	-32(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L154
.L166:
.LBE9:
	.loc 1 596 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$123, %al
	jne	.L171
.LBB10:
	.loc 1 598 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 599 0
	movl	-28(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L171
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L171
	.loc 1 602 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	warning@PLT
	.loc 1 604 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, -64(%ebp)
	.loc 1 605 0
	movl	-64(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 606 0
	movl	-64(%ebp), %eax
	movl	%eax, -104(%ebp)
	jmp	.L154
.L171:
.LBE10:
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 611 0
	movl	-88(%ebp), %eax
	movl	4(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 612 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -56(%ebp)
	.loc 1 613 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -52(%ebp)
	.loc 1 616 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	get_dynamic_cast_base_type@PLT
	movl	%eax, -36(%ebp)
	.loc 1 619 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, 12(%ebp)
	.loc 1 621 0
	movl	12(%ebp), %eax
	movl	%eax, -68(%ebp)
	.loc 1 622 0
	cmpl	$16, -92(%ebp)
	jne	.L175
	.loc 1 623 0
	movl	$0, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -68(%ebp)
.L175:
	.loc 1 625 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -48(%ebp)
	.loc 1 631 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	288(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 632 0
	cmpl	$0, -84(%ebp)
	jne	.L177
.LBB11:
	.loc 1 636 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 639 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 640 0
	movl	$17, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	xref_tag@PLT
	movl	%eax, -20(%ebp)
	.loc 1 645 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 648 0
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	.loc 1 649 0
	movl	global_trees@GOT(%ebx), %eax
	movl	152(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	144(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 654 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_function_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 655 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	build_library_fn_ptr@PLT
	movl	%eax, -84(%ebp)
	.loc 1 656 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 657 0
	movl	cp_global_trees@GOT(%ebx), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 288(%edx)
.L177:
.LBE11:
	.loc 1 659 0
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	build_cxx_call@PLT
	movl	%eax, -60(%ebp)
	.loc 1 661 0
	cmpl	$16, -92(%ebp)
	jne	.L179
.LBB12:
	.loc 1 663 0
	call	throw_bad_cast
	movl	%eax, -8(%ebp)
	.loc 1 665 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	save_expr@PLT
	movl	%eax, -60(%ebp)
	.loc 1 666 0
	movl	-8(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	build@PLT
	movl	%eax, -104(%ebp)
	jmp	.L154
.L179:
.LBE12:
	.loc 1 670 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_convert@PLT
	movl	%eax, -60(%ebp)
	.loc 1 671 0
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ifnonnull
	movl	%eax, -104(%ebp)
	jmp	.L154
.L155:
.LBE8:
.LBE7:
	.loc 1 675 0
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, -76(%ebp)
.L119:
	.loc 1 678 0
	movl	-76(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 680 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -104(%ebp)
.L154:
	movl	-104(%ebp), %eax
	.loc 1 681 0
	addl	$132, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	build_dynamic_cast_1, .-build_dynamic_cast_1
.globl build_dynamic_cast
	.type	build_dynamic_cast, @function
build_dynamic_cast:
.LFB28:
	.loc 1 686 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$20, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 687 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L183
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L185
.L183:
	.loc 1 688 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L186
.L185:
	.loc 1 690 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L187
	.loc 1 691 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$212, (%esp)
	call	build_min@PLT
	movl	%eax, -8(%ebp)
	jmp	.L186
.L187:
	.loc 1 693 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_dynamic_cast_1
	movl	%eax, (%esp)
	call	convert_from_reference@PLT
	movl	%eax, -8(%ebp)
.L186:
	movl	-8(%ebp), %eax
	.loc 1 694 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	build_dynamic_cast, .-build_dynamic_cast
	.type	qualifier_flags, @function
qualifier_flags:
.LFB29:
	.loc 1 701 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$20, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 702 0
	movl	$0, -12(%ebp)
	.loc 1 703 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	movl	%eax, -8(%ebp)
	.loc 1 705 0
	movl	-8(%ebp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L191
	.loc 1 706 0
	orl	$1, -12(%ebp)
.L191:
	.loc 1 707 0
	movl	-8(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L193
	.loc 1 708 0
	orl	$2, -12(%ebp)
.L193:
	.loc 1 709 0
	movl	-8(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L195
	.loc 1 710 0
	orl	$4, -12(%ebp)
.L195:
	.loc 1 711 0
	movl	-12(%ebp), %eax
	.loc 1 712 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	qualifier_flags, .-qualifier_flags
	.type	target_incomplete_p, @function
target_incomplete_p:
.LFB30:
	.loc 1 720 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	subl	$12, %esp
.LCFI65:
	.loc 1 721 0
	jmp	.L220
.L200:
	.loc 1 722 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L201
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L201
	.loc 1 724 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L204
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L204
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L207
.L204:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
.L207:
	movl	-12(%ebp), %edx
	movl	20(%edx), %eax
	testl	%eax, %eax
	jne	.L208
	.loc 1 725 0
	movl	$1, -8(%ebp)
	jmp	.L210
.L208:
	.loc 1 726 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L211
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L211
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	jmp	.L214
.L211:
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.L214:
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 722 0
	jmp	.L199
.L201:
	.loc 1 729 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L199:
.L220:
	.loc 1 721 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	je	.L200
	.loc 1 730 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L216
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$6, %al
	je	.L216
	.loc 1 731 0
	movl	$1, -8(%ebp)
	jmp	.L210
.L216:
	.loc 1 733 0
	movl	$0, -8(%ebp)
.L210:
	movl	-8(%ebp), %eax
	.loc 1 734 0
	leave
	ret
.LFE30:
	.size	target_incomplete_p, .-target_incomplete_p
	.type	tinfo_base_init, @function
tinfo_base_init:
.LFB31:
	.loc 1 746 0
	pushl	%ebp
.LCFI66:
	movl	%esp, %ebp
.LCFI67:
	pushl	%esi
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$48, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 747 0
	movl	$0, -36(%ebp)
.LBB13:
	.loc 1 757 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	build_cplus_array_type@PLT
	movl	%eax, -20(%ebp)
	.loc 1 758 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	tinfo_name
	movl	%eax, -16(%ebp)
	.loc 1 760 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_typeinfo_string_for_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 761 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build_lang_decl@PLT
	movl	%eax, -32(%ebp)
	.loc 1 763 0
	movl	-32(%ebp), %edx
	movzbl	35(%edx), %eax
	orl	$8, %eax
	movb	%al, 35(%edx)
	.loc 1 764 0
	movl	-32(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$16, %eax
	movb	%al, 9(%edx)
	.loc 1 765 0
	movl	-32(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 766 0
	movl	-32(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 767 0
	movl	-32(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$8, %eax
	movb	%al, 10(%edx)
	.loc 1 768 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	comdat_linkage@PLT
	.loc 1 771 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	mangle_typeinfo_string_for_type@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 92(%eax)
	.loc 1 773 0
	movl	-32(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 774 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	pushdecl_top_level_and_finish@PLT
.LBE13:
	.loc 1 777 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 778 0
	cmpl	$0, -28(%ebp)
	jne	.L222
.LBB14:
	.loc 1 782 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 783 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	xref_tag@PLT
	movl	%eax, -12(%ebp)
	.loc 1 785 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 787 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L224
	.loc 1 792 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	6(%edx), %eax
	andl	$-65, %eax
	movb	%al, 6(%edx)
	.loc 1 793 0
	movl	-12(%ebp), %eax
	movl	92(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$32, %eax
	movb	%al, 6(%edx)
.L224:
	.loc 1 796 0
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_vtable_decl@PLT
	movl	%eax, -28(%ebp)
	.loc 1 797 0
	movl	$0, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build_unary_op@PLT
	movl	%eax, -28(%ebp)
	.loc 1 800 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	24(%eax), %esi
	movl	$0, 8(%esp)
	movl	$2, (%esp)
	movl	$0, 4(%esp)
	call	size_int_wide@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$62, (%esp)
	call	size_binop@PLT
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$60, (%esp)
	call	build@PLT
	movl	%eax, -28(%ebp)
	.loc 1 805 0
	movl	-28(%ebp), %edx
	movzbl	9(%edx), %eax
	orl	$2, %eax
	movb	%al, 9(%edx)
	.loc 1 807 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 20(%edx)
.L222:
.LBE14:
	.loc 1 810 0
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 812 0
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	decay_conversion@PLT
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 814 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -36(%ebp)
	.loc 1 815 0
	movl	-36(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	movl	-36(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	movl	-36(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-36(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 816 0
	movl	$0, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -36(%ebp)
	.loc 1 818 0
	movl	-36(%ebp), %eax
	.loc 1 819 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	tinfo_base_init, .-tinfo_base_init
	.type	generic_initializer, @function
generic_initializer:
.LFB32:
	.loc 1 829 0
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
	.loc 1 830 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tinfo_base_init
	movl	%eax, -8(%ebp)
	.loc 1 832 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 833 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 834 0
	movl	-8(%ebp), %eax
	.loc 1 835 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	generic_initializer, .-generic_initializer
	.type	ptr_initializer, @function
ptr_initializer:
.LFB33:
	.loc 1 846 0
	pushl	%ebp
.LCFI75:
	movl	%esp, %ebp
.LCFI76:
	pushl	%ebx
.LCFI77:
	subl	$36, %esp
.LCFI78:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 847 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tinfo_base_init
	movl	%eax, -20(%ebp)
	.loc 1 848 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 849 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	qualifier_flags
	movl	%eax, -12(%ebp)
	.loc 1 850 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	target_incomplete_p
	movl	%eax, -8(%ebp)
	.loc 1 852 0
	cmpl	$0, -8(%ebp)
	je	.L230
	.loc 1 854 0
	orl	$8, -12(%ebp)
	.loc 1 855 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L230:
	.loc 1 857 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 858 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 862 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 863 0
	movl	-20(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	movl	-20(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-20(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	movl	-20(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-20(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 864 0
	movl	-20(%ebp), %eax
	.loc 1 865 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	ptr_initializer, .-ptr_initializer
	.type	ptm_initializer, @function
ptm_initializer:
.LFB34:
	.loc 1 877 0
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
	.loc 1 878 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tinfo_base_init
	movl	%eax, -24(%ebp)
	.loc 1 879 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L234
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L234
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L237
.L234:
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.L237:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 880 0
	movl	12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L238
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L238
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L241
.L238:
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	64(%eax), %eax
	movl	%eax, -40(%ebp)
.L241:
	movl	-40(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 881 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	qualifier_flags
	movl	%eax, -12(%ebp)
	.loc 1 882 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	target_incomplete_p
	movl	%eax, -8(%ebp)
	.loc 1 884 0
	cmpl	$0, -8(%ebp)
	je	.L242
	.loc 1 886 0
	orl	$8, -12(%ebp)
	.loc 1 887 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L242:
	.loc 1 889 0
	movl	-16(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L244
	.loc 1 891 0
	orl	$16, -12(%ebp)
	.loc 1 892 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L244:
	.loc 1 894 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 895 0
	movl	-20(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 898 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -24(%ebp)
	.loc 1 902 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -24(%ebp)
	.loc 1 903 0
	movl	-24(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	movl	-24(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 904 0
	movl	-24(%ebp), %eax
	.loc 1 905 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	ptm_initializer, .-ptm_initializer
	.type	dfs_class_hint_mark, @function
dfs_class_hint_mark:
.LFB35:
	.loc 1 916 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%edi
.LCFI85:
	pushl	%esi
.LCFI86:
	subl	$20, %esp
.LCFI87:
	.loc 1 917 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 918 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 920 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L248
	.loc 1 922 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L250
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L252
.L250:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L253
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L253
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L253
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L253
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L252
.L253:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movb	%al, -26(%ebp)
	jmp	.L258
.L252:
	movl	-16(%ebp), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$1, %eax
	movb	%al, -26(%ebp)
.L258:
	cmpb	$0, -26(%ebp)
	je	.L259
	.loc 1 923 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L259:
	.loc 1 924 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L261
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L263
.L261:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L264
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L264
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L264
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L264
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L263
.L264:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	-25(%ebp)
	jmp	.L269
.L263:
	movl	-16(%ebp), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	-25(%ebp)
.L269:
	cmpb	$0, -25(%ebp)
	je	.L270
	.loc 1 925 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	orl	$2, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L270:
	.loc 1 926 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L272
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L274
.L272:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L275
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L275
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L275
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L275
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L274
.L275:
	movl	-16(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	orl	$2, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L281
.L274:
	movl	-16(%ebp), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$2, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	-16(%ebp), %ecx
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
	jmp	.L281
.L248:
	.loc 1 930 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L282
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L284
.L282:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L285
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L285
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L285
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L285
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L284
.L285:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L290
	jmp	.L292
.L284:
	movl	-16(%ebp), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L290
.L292:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L293
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L295
.L293:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L296
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L296
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L296
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L296
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L295
.L296:
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L290
	jmp	.L301
.L295:
	movl	-16(%ebp), %eax
	movl	88(%eax), %edx
	movl	84(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L301
.L290:
	.loc 1 931 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L301:
	.loc 1 932 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L302
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L304
.L302:
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L305
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L305
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L305
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L305
	movl	-16(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L304
.L305:
	movl	-16(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	orl	$1, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L281
.L304:
	movl	-16(%ebp), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	orl	$1, %eax
	movl	%edi, %edx
	orb	$0, %dh
	movl	-16(%ebp), %ecx
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
.L281:
	.loc 1 934 0
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L310
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L310
	.loc 1 935 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	orl	$4, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
.L310:
	.loc 1 936 0
	movl	$0, %eax
	.loc 1 937 0
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE35:
	.size	dfs_class_hint_mark, .-dfs_class_hint_mark
	.type	dfs_class_hint_unmark, @function
dfs_class_hint_unmark:
.LFB36:
	.loc 1 945 0
	pushl	%ebp
.LCFI88:
	movl	%esp, %ebp
.LCFI89:
	pushl	%edi
.LCFI90:
	pushl	%esi
.LCFI91:
	subl	$16, %esp
.LCFI92:
	.loc 1 946 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 948 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L315
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L317
.L315:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L318
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L318
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L318
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L318
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L317
.L318:
	movl	-12(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	andl	$62, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L323
.L317:
	movl	-12(%ebp), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	andl	$-2, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	-12(%ebp), %ecx
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
.L323:
	.loc 1 949 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	je	.L324
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$22, %al
	jne	.L326
.L324:
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-62, %al
	je	.L327
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	je	.L327
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-57, %al
	je	.L327
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-60, %al
	je	.L327
	movl	-12(%ebp), %eax
	movzbl	39(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L326
.L327:
	movl	-12(%ebp), %eax
	movl	92(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	92(%eax), %eax
	movzwl	6(%eax), %eax
	shrw	$7, %ax
	andl	$63, %eax
	andl	$61, %eax
	andl	$63, %eax
	movzbw	%al, %ax
	andl	$63, %eax
	movl	%eax, %edx
	sall	$7, %edx
	movzwl	6(%ecx), %eax
	andw	$-8065, %ax
	orl	%edx, %eax
	movw	%ax, 6(%ecx)
	jmp	.L332
.L326:
	movl	-12(%ebp), %eax
	movl	84(%eax), %esi
	movl	88(%eax), %edi
	movl	%esi, %eax
	andl	$-3, %eax
	movl	%edi, %edx
	andb	$255, %dh
	movl	-12(%ebp), %ecx
	movl	%eax, 84(%ecx)
	movl	%edx, 88(%ecx)
.L332:
	.loc 1 950 0
	movl	$0, %eax
	.loc 1 951 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE36:
	.size	dfs_class_hint_unmark, .-dfs_class_hint_unmark
	.type	class_hint_flags, @function
class_hint_flags:
.LFB37:
	.loc 1 958 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$36, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 959 0
	movl	$0, -16(%ebp)
	.loc 1 962 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_class_hint_mark@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dfs_walk@PLT
	.loc 1 963 0
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	leal	dfs_class_hint_unmark@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dfs_walk@PLT
	.loc 1 965 0
	movl	$0, -12(%ebp)
	jmp	.L335
.L336:
.LBB15:
	.loc 1 967 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %edx
	movl	-12(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -8(%ebp)
	.loc 1 969 0
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L337
	.loc 1 970 0
	movl	-16(%ebp), %eax
	orl	$8, %eax
	movl	%eax, -16(%ebp)
.L337:
.LBE15:
	.loc 1 965 0
	addl	$1, -12(%ebp)
.L335:
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L339
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L341
.L339:
	movl	$0, -24(%ebp)
.L341:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jg	.L336
	.loc 1 972 0
	movl	-16(%ebp), %eax
	.loc 1 973 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	class_hint_flags, .-class_hint_flags
	.type	class_initializer, @function
class_initializer:
.LFB38:
	.loc 1 984 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	pushl	%ebx
.LCFI99:
	subl	$36, %esp
.LCFI100:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 985 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	tinfo_base_init
	movl	%eax, -8(%ebp)
	.loc 1 987 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 988 0
	movl	-8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -8(%ebp)
	.loc 1 989 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	movl	-8(%ebp), %eax
	movzbl	10(%eax), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movzbl	9(%ecx), %eax
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, 9(%ecx)
	movl	-8(%ebp), %eax
	movzbl	9(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movl	-8(%ebp), %ecx
	andl	$1, %eax
	movl	%eax, %edx
	sall	$4, %edx
	movzbl	11(%ecx), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, 11(%ecx)
	.loc 1 990 0
	movl	-8(%ebp), %eax
	.loc 1 991 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	class_initializer, .-class_initializer
	.type	typeinfo_in_lib_p, @function
typeinfo_in_lib_p:
.LFB39:
	.loc 1 999 0
	pushl	%ebp
.LCFI101:
	movl	%esp, %ebp
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$20, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1002 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L347
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	cmpl	$1, %eax
	je	.L349
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	cp_type_quals@PLT
	testl	%eax, %eax
	jne	.L347
.L349:
	.loc 1 1005 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L347:
	.loc 1 1007 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%ebp)
	cmpl	$13, -12(%ebp)
	ja	.L351
	movl	$1, %eax
	movzbl	-12(%ebp), %ecx
	sall	%cl, %eax
	andl	$12736, %eax
	testl	%eax, %eax
	jne	.L352
	jmp	.L351
.L352:
	.loc 1 1014 0
	movl	$1, -8(%ebp)
	jmp	.L353
.L351:
	.loc 1 1017 0
	movl	$0, -8(%ebp)
.L353:
	movl	-8(%ebp), %eax
	.loc 1 1019 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	typeinfo_in_lib_p, .-typeinfo_in_lib_p
	.section	.rodata
	.type	__FUNCTION__.14306, @object
	.size	__FUNCTION__.14306, 19
__FUNCTION__.14306:
	.string	"get_pseudo_ti_init"
	.text
	.type	get_pseudo_ti_init, @function
get_pseudo_ti_init:
.LFB40:
	.loc 1 1032 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$100, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1033 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L356
	leal	__FUNCTION__.14306@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1033, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L356:
	.loc 1 1034 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$11, %eax
	movl	%eax, -80(%ebp)
	cmpl	$13, -80(%ebp)
	ja	.L358
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L364@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L364:
	.long	.L359@GOTOFF
	.long	.L358@GOTOFF
	.long	.L358@GOTOFF
	.long	.L360@GOTOFF
	.long	.L358@GOTOFF
	.long	.L358@GOTOFF
	.long	.L358@GOTOFF
	.long	.L358@GOTOFF
	.long	.L361@GOTOFF
	.long	.L358@GOTOFF
	.long	.L362@GOTOFF
	.long	.L362@GOTOFF
	.long	.L358@GOTOFF
	.long	.L363@GOTOFF
	.text
.L360:
	.loc 1 1037 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L365
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L365
	.loc 1 1038 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ptm_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L365:
	.loc 1 1040 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ptr_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L359:
	.loc 1 1043 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	generic_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L363:
	.loc 1 1046 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	generic_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L361:
	.loc 1 1049 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	generic_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L362:
	.loc 1 1053 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L369
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L369
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L369
	.loc 1 1054 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	ptm_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L369:
	.loc 1 1055 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L373
	.loc 1 1057 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L375
	.loc 1 1059 0
	movl	16(%ebp), %eax
	movl	$1, (%eax)
.L375:
	.loc 1 1060 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	class_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L373:
	.loc 1 1062 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L377
.LBB16:
	.loc 1 1064 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1065 0
	movl	-64(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1066 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	%eax, -56(%ebp)
	.loc 1 1067 0
	movl	$0, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -52(%ebp)
	.loc 1 1069 0
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	class_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L377:
.LBE16:
.LBB17:
	.loc 1 1073 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	class_hint_flags
	movl	%eax, -48(%ebp)
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 1075 0
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L379
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L381
.L379:
	movl	$0, -72(%ebp)
.L381:
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1076 0
	movl	-44(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1077 0
	movl	$0, -32(%ebp)
	.loc 1 1081 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L382
.L383:
.LBB18:
	.loc 1 1083 0
	movl	-28(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	20(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1084 0
	movl	$0, -20(%ebp)
	.loc 1 1085 0
	movl	$0, -16(%ebp)
	.loc 1 1089 0
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L384
	.loc 1 1090 0
	orl	$2, -16(%ebp)
.L384:
	.loc 1 1091 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	get_tinfo_ptr
	movl	%eax, -12(%ebp)
	.loc 1 1092 0
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L386
	.loc 1 1096 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	binfo_for_vbase@PLT
	movl	40(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1098 0
	movl	sizetype_tab@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	convert@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1099 0
	orl	$1, -16(%ebp)
	jmp	.L388
.L386:
	.loc 1 1102 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -8(%ebp)
.L388:
	.loc 1 1105 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$8, (%esp)
	movl	$0, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$84, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1107 0
	movl	-16(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$88, (%esp)
	call	build_binary_op@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1109 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1110 0
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1111 0
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1112 0
	movl	-20(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 1113 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
.L382:
.LBE18:
	.loc 1 1081 0
	subl	$1, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	.L383
	.loc 1 1115 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1117 0
	movl	-32(%ebp), %edx
	movzbl	11(%edx), %eax
	orl	$16, %eax
	movb	%al, 11(%edx)
	.loc 1 1118 0
	movl	$0, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1120 0
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1123 0
	movl	-48(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1126 0
	movl	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	class_initializer
	movl	%eax, -76(%ebp)
	jmp	.L368
.L358:
.LBE17:
	.loc 1 1131 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	generic_initializer
	movl	%eax, -76(%ebp)
.L368:
	movl	-76(%ebp), %eax
	.loc 1 1133 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	get_pseudo_ti_init, .-get_pseudo_ti_init
	.section	.rodata
.LC21:
	.string	"%d"
	.text
	.type	create_pseudo_type_info, @function
create_pseudo_type_info:
.LFB41:
	.loc 1 1152 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%edi
.LCFI111:
	pushl	%ebx
.LCFI112:
	addl	$-128, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	.loc 1 1152 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LBB19:
	.loc 1 1160 0
	leal	16(%ebp), %eax
	movl	%eax, -36(%ebp)
.LBB20:
	.loc 1 1165 0
	movl	-92(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -100(%ebp)
	movl	$0, %eax
	cld
	movl	-100(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	$30, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %edx
	movl	%edx, -28(%ebp)
	.loc 1 1166 0
	movl	-92(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 1167 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -104(%ebp)
	movl	$0, %eax
	cld
	movl	-104(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-28(%ebp), %eax
	movl	$1702064223, (%eax)
	movl	$7300213, 4(%eax)
	.loc 1 1168 0
	cmpl	$0, 12(%ebp)
	je	.L392
	.loc 1 1169 0
	movl	-28(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -108(%ebp)
	movl	$0, %eax
	cld
	movl	-108(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	addl	-28(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	sprintf@PLT
.L392:
	.loc 1 1172 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1175 0
	movl	$0, -24(%ebp)
	jmp	.L394
.L395:
	.loc 1 1176 0
	addl	$1, -24(%ebp)
	movl	-24(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%eax, -76(%ebp,%edx,4)
.L394:
	.loc 1 1175 0
	movl	-36(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	.L395
	.loc 1 1179 0
	movl	$21, (%esp)
	call	make_aggr_type@PLT
	movl	%eax, -32(%ebp)
	.loc 1 1180 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, 16(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	finish_builtin_type@PLT
	.loc 1 1181 0
	movl	-32(%ebp), %eax
	movl	92(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1183 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1184 0
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1185 0
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_build_qualified_type_real@PLT
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
.LBE20:
.LBE19:
	.loc 1 1189 0
	movl	-16(%ebp), %eax
	.loc 1 1190 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L398
	call	__stack_chk_fail_local
.L398:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	create_pseudo_type_info, .-create_pseudo_type_info
	.section	.rodata
.LC22:
	.string	"__vmi_class_type_info"
	.text
	.type	get_pseudo_ti_desc, @function
get_pseudo_ti_desc:
.LFB42:
	.loc 1 1199 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%edi
.LCFI116:
	pushl	%esi
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$76, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1200 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %eax
	subl	$11, %eax
	movl	%eax, -60(%ebp)
	cmpl	$13, -60(%ebp)
	ja	.L400
	movl	-60(%ebp), %eax
	sall	$2, %eax
	movl	.L406@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L406:
	.long	.L401@GOTOFF
	.long	.L400@GOTOFF
	.long	.L400@GOTOFF
	.long	.L402@GOTOFF
	.long	.L400@GOTOFF
	.long	.L400@GOTOFF
	.long	.L400@GOTOFF
	.long	.L400@GOTOFF
	.long	.L403@GOTOFF
	.long	.L400@GOTOFF
	.long	.L404@GOTOFF
	.long	.L404@GOTOFF
	.long	.L400@GOTOFF
	.long	.L405@GOTOFF
	.text
.L402:
	.loc 1 1203 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$14, %al
	jne	.L407
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$15, %al
	jne	.L407
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	92(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L410
.L407:
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	64(%eax), %eax
	movl	%eax, -52(%ebp)
.L410:
	movl	-52(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L401:
	.loc 1 1205 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	76(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L405:
	.loc 1 1207 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	72(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L403:
	.loc 1 1209 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	68(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L404:
	.loc 1 1212 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L412
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	.L412
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L412
	.loc 1 1213 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	92(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L412:
	.loc 1 1214 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L416
	.loc 1 1216 0
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L418
	.loc 1 1217 0
	movl	$0, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	cxx_incomplete_type_diagnostic@PLT
.L418:
	.loc 1 1218 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L416:
	.loc 1 1220 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L420
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L422
.L420:
	.loc 1 1221 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	80(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L422:
.LBB21:
	.loc 1 1225 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1226 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L423
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L425
.L423:
	movl	$0, -48(%ebp)
.L425:
	movl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1228 0
	cmpl	$1, -36(%ebp)
	jne	.L426
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L426
	movl	-40(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L426
	movl	-40(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	integer_zerop@PLT
	testl	%eax, %eax
	je	.L426
	.loc 1 1233 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	84(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L426:
.LBB22:
	.loc 1 1239 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	16(%eax), %eax
	cmpl	-36(%ebp), %eax
	jg	.L431
.LBB23:
	.loc 1 1242 0
	movl	-36(%ebp), %eax
	addl	$5, %eax
	movl	%eax, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1244 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	88(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L433
.L434:
	.loc 1 1245 0
	movl	-20(%ebp), %ecx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	-20(%ebp), %eax
	movl	20(%edx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%eax,%ecx,4)
.L433:
	.loc 1 1244 0
	subl	$1, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	.L434
	.loc 1 1247 0
	movl	cp_global_trees@GOT(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 88(%edx)
.L431:
.LBE23:
	.loc 1 1249 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	88(%eax), %edx
	movl	-36(%ebp), %eax
	movl	20(%edx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1250 0
	cmpl	$0, -32(%ebp)
	je	.L436
	.loc 1 1251 0
	movl	-32(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L436:
	.loc 1 1255 0
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	size_int_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1256 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_type@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1259 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 1260 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, %edi
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, %esi
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	$0, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, -32(%ebp)
	.loc 1 1266 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 1268 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	88(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 20(%ecx,%edx,4)
	.loc 1 1269 0
	movl	-32(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L411
.L400:
.LBE22:
.LBE21:
	.loc 1 1273 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	60(%eax), %eax
	movl	%eax, -56(%ebp)
.L411:
	movl	-56(%ebp), %eax
	.loc 1 1275 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE42:
	.size	get_pseudo_ti_desc, .-get_pseudo_ti_desc
	.section	.rodata
	.type	__FUNCTION__.14569, @object
	.size	__FUNCTION__.14569, 19
__FUNCTION__.14569:
	.string	"create_tinfo_types"
.LC23:
	.string	"__type_info_pseudo"
.LC24:
	.string	"__fundamental_type_info"
.LC25:
	.string	"__array_type_info"
.LC26:
	.string	"__function_type_info"
.LC27:
	.string	"__enum_type_info"
.LC28:
	.string	"__si_class_type_info"
.LC29:
	.string	"__base_class_type_info_pseudo"
.LC30:
	.string	"__pointer_type_info"
.LC31:
	.string	"__pointer_to_member_type_info"
	.text
	.type	create_tinfo_types, @function
create_tinfo_types:
.LFB43:
	.loc 1 1282 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%edi
.LCFI122:
	pushl	%esi
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$44, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1283 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L440
	leal	__FUNCTION__.14569@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1283, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L440:
	.loc 1 1285 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
.LBB24:
	.loc 1 1292 0
	movl	$21, (%esp)
	call	make_aggr_type@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 56(%eax)
	.loc 1 1293 0
	movl	global_trees@GOT(%ebx), %eax
	movl	136(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1294 0
	movl	c_global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1295 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	56(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	$1, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	finish_builtin_type@PLT
	.loc 1 1297 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	56(%eax), %edx
	movzbl	39(%edx), %eax
	orl	$2, %eax
	movb	%al, 39(%edx)
.LBE24:
	.loc 1 1301 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 60(%eax)
	.loc 1 1306 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 68(%eax)
	.loc 1 1309 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 72(%eax)
	.loc 1 1312 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 76(%eax)
	.loc 1 1317 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 80(%eax)
	.loc 1 1323 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 84(%eax)
.LBB25:
	.loc 1 1333 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1334 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1335 0
	movl	$21, (%esp)
	call	make_aggr_type@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 96(%eax)
	.loc 1 1336 0
	movl	global_trees@GOT(%ebx), %eax
	movl	132(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	96(%eax), %ecx
	movl	%edx, 16(%esp)
	movl	$1, 12(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	finish_builtin_type@PLT
	.loc 1 1338 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	96(%eax), %edx
	movzbl	39(%edx), %eax
	orl	$2, %eax
	movb	%al, 39(%edx)
.LBE25:
	.loc 1 1342 0
	movl	$10, (%esp)
	call	make_tree_vec@PLT
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 88(%eax)
	.loc 1 1347 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, %esi
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	$0, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 64(%eax)
	.loc 1 1356 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, %edi
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	140(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, %esi
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	$0, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	create_pseudo_type_info
	movl	%eax, %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	%edx, 92(%eax)
	.loc 1 1363 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 1364 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	create_tinfo_types, .-create_tinfo_types
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	fundamentals.14618, @object
	.size	fundamentals.14618, 72
fundamentals.14618:
	.long	global_trees+128
	.long	c_global_trees+60
	.long	c_global_trees
	.long	integer_types
	.long	integer_types+4
	.long	integer_types+8
	.long	integer_types+12
	.long	integer_types+16
	.long	integer_types+20
	.long	integer_types+24
	.long	integer_types+28
	.long	integer_types+32
	.long	integer_types+36
	.long	integer_types+40
	.long	global_trees+116
	.long	global_trees+120
	.long	global_trees+124
	.long	0
	.text
.globl emit_support_tinfos
	.type	emit_support_tinfos, @function
emit_support_tinfos:
.LFB44:
	.loc 1 1374 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	pushl	%ebx
.LCFI128:
	subl	$52, %esp
.LCFI129:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1391 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	push_nested_namespace@PLT
	.loc 1 1392 0
	movl	$23, 4(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	$1, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	xref_tag@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1396 0
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	132(%eax), %eax
	movl	%eax, (%esp)
	call	pop_nested_namespace@PLT
	.loc 1 1397 0
	movl	-28(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L449
	.loc 1 1399 0
	movl	-28(%ebp), %eax
	movl	92(%eax), %eax
	movl	52(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1400 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L449
	.loc 1 1402 0
	movl	$1, doing_runtime@GOTOFF(%ebx)
	.loc 1 1403 0
	movl	$0, -32(%ebp)
	jmp	.L447
.L448:
.LBB26:
	.loc 1 1405 0
	movl	-32(%ebp), %eax
	movl	fundamentals.14618@GOTOFF(%ebx,%eax,4), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1406 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1408 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	build_qualified_type@PLT
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1411 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1412 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 1413 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 1415 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1416 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 1417 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 1419 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	get_tinfo_decl@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1420 0
	movl	-8(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$1, %eax
	movb	%al, 10(%edx)
	.loc 1 1421 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
.LBE26:
	.loc 1 1403 0
	addl	$1, -32(%ebp)
.L447:
	movl	-32(%ebp), %eax
	movl	fundamentals.14618@GOTOFF(%ebx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L448
.L449:
	.loc 1 1423 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	emit_support_tinfos, .-emit_support_tinfos
.globl unemitted_tinfo_decl_p
	.type	unemitted_tinfo_decl_p, @function
unemitted_tinfo_decl_p:
.LFB45:
	.loc 1 1432 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%ebx
.LCFI132:
	subl	$20, %esp
.LCFI133:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1433 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$35, %al
	jne	.L451
	movl	global_namespace@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	namespace_binding@PLT
	cmpl	8(%ebp), %eax
	jne	.L451
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L451
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$21, %al
	jne	.L451
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L451
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	4(%eax), %edx
	movl	cp_global_trees@GOT(%ebx), %eax
	movl	56(%eax), %eax
	cmpl	%eax, %edx
	jne	.L451
	.loc 1 1445 0
	movl	$1, -8(%ebp)
	jmp	.L458
.L451:
	.loc 1 1446 0
	movl	$0, -8(%ebp)
.L458:
	movl	-8(%ebp), %eax
	.loc 1 1447 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	unemitted_tinfo_decl_p, .-unemitted_tinfo_decl_p
.globl emit_tinfo_decl
	.type	emit_tinfo_decl, @function
emit_tinfo_decl:
.LFB46:
	.loc 1 1479 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$52, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1480 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1481 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1483 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	typeinfo_in_lib_p
	movl	%eax, -16(%ebp)
	.loc 1 1486 0
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	import_export_tinfo@PLT
	.loc 1 1488 0
	movl	-24(%ebp), %eax
	movzbl	33(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L461
	movl	-24(%ebp), %eax
	movl	136(%eax), %eax
	movzbl	6(%eax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L463
.L461:
	movl	at_eof@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L464
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L464
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L467
.L464:
	movl	-24(%ebp), %eax
	movl	92(%eax), %eax
	testl	%eax, %eax
	jne	.L467
	movl	flag_syntax_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L463
	movl	-24(%ebp), %eax
	movzbl	10(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L467
.L463:
	.loc 1 1492 0
	movl	$0, -40(%ebp)
	jmp	.L470
.L467:
	.loc 1 1494 0
	movl	doing_runtime@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L471
	cmpl	$0, -16(%ebp)
	je	.L471
	.loc 1 1495 0
	movl	$0, -40(%ebp)
	jmp	.L470
.L471:
	.loc 1 1498 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movzbl	10(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L474
	.loc 1 1499 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	9(%edx), %eax
	andl	$127, %eax
	movb	%al, 9(%edx)
	jmp	.L476
.L474:
	.loc 1 1502 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	%eax, %edx
	movzbl	9(%edx), %eax
	orl	$-128, %eax
	movb	%al, 9(%edx)
.L476:
	.loc 1 1505 0
	movl	$0, -28(%ebp)
	.loc 1 1506 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pseudo_ti_desc
	movl	%eax, -12(%ebp)
	.loc 1 1507 0
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	get_pseudo_ti_init
	movl	%eax, -8(%ebp)
	.loc 1 1509 0
	movl	-24(%ebp), %edx
	movzbl	33(%edx), %eax
	andl	$-2, %eax
	movb	%al, 33(%edx)
	.loc 1 1510 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	sete	%al
	movl	-24(%ebp), %ecx
	andl	$1, %eax
	leal	0(,%eax,8), %edx
	movzbl	10(%ecx), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, 10(%ecx)
	.loc 1 1511 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	.L477
	.loc 1 1512 0
	movl	-24(%ebp), %eax
	movzbl	35(%eax), %edx
	andl	$127, %edx
	movb	%dl, 35(%eax)
.L477:
	.loc 1 1514 0
	movl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 68(%edx)
	.loc 1 1515 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	cp_finish_decl@PLT
	.loc 1 1519 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	$0, 4(%eax)
	.loc 1 1521 0
	movl	$1, -40(%ebp)
.L470:
	movl	-40(%ebp), %eax
	.loc 1 1522 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	emit_tinfo_decl, .-emit_tinfo_decl
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
	.byte	0x4
	.long	.LCFI3-.LCFI1
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI7-.LCFI5
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI8-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI11-.LCFI9
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI12-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI13
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI17-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI20-.LCFI18
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
	.long	.LCFI21-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI24-.LCFI22
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
	.long	.LCFI25-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI28-.LCFI26
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
	.long	.LCFI29-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI30
	.byte	0x83
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
	.long	.LCFI34-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI37-.LCFI35
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI38-.LFB24
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
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI42-.LFB25
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI46-.LFB26
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
	.byte	0x86
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
	.long	.LCFI51-.LFB27
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI55-.LFB28
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI59-.LFB29
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI63-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI66-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI70-.LCFI67
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI71-.LFB32
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
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.byte	0x4
	.long	.LCFI75-.LFB33
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
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI79-.LFB34
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
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI83-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI84-.LCFI83
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI87-.LCFI84
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI88-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI89-.LCFI88
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI89
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI93-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI96-.LCFI94
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
	.long	.LCFI97-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI101-.LFB39
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI105-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI106
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
	.long	.LCFI109-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI110
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI114-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI115
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
	.long	.LCFI120-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI125-.LCFI121
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
	.long	.LCFI126-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI129-.LCFI127
	.byte	0x83
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
	.long	.LCFI130-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI133-.LCFI131
	.byte	0x83
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
	.long	.LCFI134-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI137-.LCFI135
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE62:
	.file 2 "../../../kg++fe/gnu/MIPS/config.h"
	.file 3 "../../../kg++fe/gnu/tree.h"
	.file 4 "../../../kg++fe/gnu/hashtable.h"
	.file 5 "../../../kg++fe/gnu/location.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/function.h"
	.file 8 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 9 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 10 "../../../kg++fe/gnu/c-common.h"
	.file 11 "../../../kg++fe/gnu/varray.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/omp_types.h"
	.file 14 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 15 "../../../kg++fe/gnu/flags.h"
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB17-.Ltext0
	.long	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI8-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI9-.Ltext0
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB18-.Ltext0
	.long	.LCFI12-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI12-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI13-.Ltext0
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI17-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI17-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI18-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
	.long	.LCFI21-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI21-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI22-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI25-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI26-.Ltext0
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI29-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI29-.Ltext0
	.long	.LCFI30-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI30-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI34-.Ltext0
	.long	.LCFI35-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI35-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI66-.Ltext0
	.long	.LCFI67-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI67-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
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
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI88-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI88-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI89-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI93-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI93-.Ltext0
	.long	.LCFI94-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI94-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI109-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI109-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI110-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI114-.Ltext0
	.long	.LCFI115-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI115-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI120-.Ltext0
	.long	.LCFI121-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI121-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI126-.Ltext0
	.long	.LCFI127-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI127-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI130-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI130-.Ltext0
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI131-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI134-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI134-.Ltext0
	.long	.LCFI135-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI135-.Ltext0
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7af4
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/rtti.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa7
	.uleb128 0x3
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.string	"rtx_def"
	.byte	0x1
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0xc4
	.uleb128 0x3
	.byte	0x4
	.long	0xca
	.uleb128 0x4
	.string	"rtvec_def"
	.byte	0x1
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0xe2
	.uleb128 0x3
	.byte	0x4
	.long	0xe8
	.uleb128 0x5
	.long	0x1c1
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x6
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x2cdf
	.uleb128 0x7
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x2ffd
	.uleb128 0x7
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x3045
	.uleb128 0x7
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x3168
	.uleb128 0x7
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x30a6
	.uleb128 0x7
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x3113
	.uleb128 0x7
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x31ee
	.uleb128 0x7
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x4268
	.uleb128 0x6
	.long	.LASF1
	.byte	0x3
	.value	0x88f
	.long	0x3453
	.uleb128 0x7
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x3225
	.uleb128 0x7
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x326c
	.uleb128 0x7
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x32bd
	.uleb128 0x7
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x3309
	.uleb128 0x7
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x4c65
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c7
	.uleb128 0x8
	.long	0x1cc
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ad
	.string	"mips_args"
	.byte	0x40
	.byte	0x8
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0x8
	.value	0xaad
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0x8
	.value	0xab0
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0x8
	.value	0xab5
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0x8
	.value	0xab8
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0x8
	.value	0xabb
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0x8
	.value	0xac8
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0x8
	.value	0xacb
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0x8
	.value	0xad3
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0x8
	.value	0xad4
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x2c4
	.long	0x9c
	.uleb128 0xe
	.long	0x2c4
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0x8
	.value	0xad5
	.long	0x1db
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0xe
	.byte	0x2b
	.long	0x2f9
	.uleb128 0x3
	.byte	0x4
	.long	0x1cc
	.uleb128 0x2
	.string	"va_list"
	.byte	0xe
	.byte	0x69
	.long	0x2e3
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x2ad
	.uleb128 0x9
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x9
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x9
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x9
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x9
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x1cc
	.uleb128 0x3
	.byte	0x4
	.long	0x3b9
	.uleb128 0x8
	.long	0x31c
	.uleb128 0x3
	.byte	0x4
	.long	0x31c
	.uleb128 0xd
	.long	0x3d4
	.long	0x1cc
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d4
	.uleb128 0x11
	.long	0x623
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0x12
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x12
	.string	"BImode"
	.sleb128 1
	.uleb128 0x12
	.string	"QImode"
	.sleb128 2
	.uleb128 0x12
	.string	"HImode"
	.sleb128 3
	.uleb128 0x12
	.string	"SImode"
	.sleb128 4
	.uleb128 0x12
	.string	"DImode"
	.sleb128 5
	.uleb128 0x12
	.string	"TImode"
	.sleb128 6
	.uleb128 0x12
	.string	"OImode"
	.sleb128 7
	.uleb128 0x12
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x12
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x12
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x12
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x12
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x12
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x12
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x12
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x12
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x12
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x12
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x12
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x12
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x12
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x12
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x12
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x12
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x12
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x12
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x12
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x12
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x12
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x12
	.string	"COImode"
	.sleb128 30
	.uleb128 0x12
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x12
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x12
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x12
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x12
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x12
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x12
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x12
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x12
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x12
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x12
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x12
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x12
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x12
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x12
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x12
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x12
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x12
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x12
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x12
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x12
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x12
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x12
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x12
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x13
	.long	0x655
	.string	"location_s"
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.uleb128 0x14
	.string	"file"
	.byte	0x5
	.byte	0x1e
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"line"
	.byte	0x5
	.byte	0x21
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x5
	.byte	0x23
	.long	0x623
	.uleb128 0x11
	.long	0xf89
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.uleb128 0x12
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x12
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x12
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x12
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x12
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x12
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x12
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x12
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x12
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x12
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x12
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x12
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x12
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x12
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x12
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x12
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x12
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x12
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x12
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x12
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x12
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x12
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x12
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x12
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x12
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x12
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x12
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x12
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x12
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x12
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x12
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x12
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x12
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x12
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x12
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x12
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x12
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x12
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x12
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x12
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x12
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x12
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x12
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x12
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x12
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x12
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x12
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x12
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x12
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x12
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x12
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x12
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x12
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x12
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x12
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x12
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x12
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x12
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x12
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x12
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x12
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x12
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x12
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x12
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x12
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x12
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x12
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x12
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x12
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x12
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x12
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x12
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x12
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x12
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x12
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x12
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x12
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x12
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x12
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x12
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x12
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x12
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x12
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x12
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x12
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x12
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x12
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x12
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x12
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x12
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x12
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x12
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x12
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x12
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x12
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x12
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x12
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x12
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x12
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x12
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x12
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x12
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x12
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x12
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x12
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x12
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x12
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x12
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x12
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x12
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x12
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x12
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x12
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x12
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x12
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x12
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x12
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x12
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x12
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x12
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x12
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x12
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x12
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x12
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x12
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x12
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x12
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x12
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x12
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x12
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x12
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x12
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x12
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x12
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x12
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x12
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x12
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x12
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x12
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x12
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x12
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x12
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x12
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x12
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x12
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x12
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x12
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x12
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x12
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x12
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x12
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x12
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x2f
	.long	0x2ad
	.uleb128 0x13
	.long	0xfd6
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x14
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.long	.LASF3
	.byte	0x3
	.byte	0x30
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0xfe0
	.uleb128 0x4
	.string	"st"
	.byte	0x1
	.uleb128 0x16
	.long	0x1035
	.long	.LASF4
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uleb128 0x12
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x12
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x12
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x12
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x11
	.long	0x2cdf
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
	.uleb128 0x12
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x12
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x12
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x12
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x12
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x12
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x12
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x12
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x12
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x12
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x12
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x12
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x12
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x12
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x12
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x12
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x12
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x12
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x12
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x12
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x12
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x12
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x12
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x12
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x12
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x12
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x12
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x12
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x12
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x12
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x12
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x12
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x12
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x12
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x12
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x12
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x12
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x12
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x12
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x12
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x12
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x12
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x12
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x12
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x12
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x12
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x12
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x12
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x12
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x12
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x12
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x12
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x12
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x12
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x12
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x12
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x12
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x12
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x12
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x12
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x12
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x12
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x12
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x12
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x12
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x12
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x12
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x12
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x12
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x12
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x12
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x12
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x12
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x12
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x12
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x12
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x12
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x12
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x12
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x12
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x12
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x12
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x12
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x12
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x12
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x12
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x12
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x12
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x12
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x12
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x12
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x12
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x12
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x12
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x12
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x12
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x12
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x12
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x12
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x12
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x12
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x12
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x12
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x12
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x12
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x12
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x12
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x12
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x12
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x12
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x12
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x12
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x12
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x12
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x12
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x12
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x12
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x12
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x12
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x12
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x12
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x12
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x12
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x12
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x12
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x12
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x12
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x12
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x12
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x12
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x12
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x12
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x12
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x12
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x12
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x12
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x12
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x12
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x12
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x12
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x12
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x12
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x12
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x12
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x12
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x12
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x12
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x12
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x12
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x12
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x12
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x12
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x12
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x12
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x12
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x12
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x12
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x12
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x12
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x12
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x12
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x12
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x12
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x12
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x12
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x12
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x12
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x12
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x12
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x12
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x12
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x12
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x12
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x12
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x12
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x12
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x12
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x12
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x12
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x12
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x12
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x12
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x12
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x12
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x12
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x12
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x12
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x12
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x12
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x12
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x12
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x12
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x12
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x12
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x12
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x12
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x12
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x12
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x12
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x12
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x12
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x12
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x12
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x12
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x12
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x12
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x12
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x12
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x12
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x12
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x12
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x12
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x12
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x12
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x12
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x12
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x12
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x12
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x12
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x12
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x12
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x12
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x12
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x12
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x12
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x12
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x12
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x12
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x12
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x12
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x12
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x12
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x12
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x12
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x12
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x12
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x12
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x12
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x12
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x12
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x12
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x12
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x12
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x12
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x12
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x12
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x12
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x12
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x12
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x12
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x12
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x12
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x12
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x12
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x12
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x12
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x12
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x12
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x12
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x12
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x12
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x12
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x12
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x12
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x12
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x12
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x12
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x12
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x12
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x12
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x12
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x12
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x12
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x12
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x12
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x12
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x12
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x12
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x12
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x12
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x12
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x12
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x12
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x12
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x12
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x12
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x12
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x12
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x12
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x13
	.long	0x2fc1
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x14
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.long	.LASF1
	.byte	0x3
	.byte	0x8e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x667
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"side_effects_flag"
	.byte	0x3
	.byte	0x92
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"constant_flag"
	.byte	0x3
	.byte	0x93
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"addressable_flag"
	.byte	0x3
	.byte	0x94
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"volatile_flag"
	.byte	0x3
	.byte	0x95
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"readonly_flag"
	.byte	0x3
	.byte	0x96
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"unsigned_flag"
	.byte	0x3
	.byte	0x97
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"asm_written_flag"
	.byte	0x3
	.byte	0x98
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"not_emitted_by_gxx"
	.byte	0x3
	.byte	0x9a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"used_flag"
	.byte	0x3
	.byte	0x9f
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"nothrow_flag"
	.byte	0x3
	.byte	0xa0
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"static_flag"
	.byte	0x3
	.byte	0xa1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"public_flag"
	.byte	0x3
	.byte	0xa2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"private_flag"
	.byte	0x3
	.byte	0xa3
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"protected_flag"
	.byte	0x3
	.byte	0xa4
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"bounded_flag"
	.byte	0x3
	.byte	0xa5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"deprecated_flag"
	.byte	0x3
	.byte	0xa6
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF5
	.byte	0x3
	.byte	0xa8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF6
	.byte	0x3
	.byte	0xa9
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF7
	.byte	0x3
	.byte	0xaa
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF8
	.byte	0x3
	.byte	0xab
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF9
	.byte	0x3
	.byte	0xac
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF10
	.byte	0x3
	.byte	0xad
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF11
	.byte	0x3
	.byte	0xae
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF12
	.byte	0x3
	.byte	0xb0
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.string	"sbuf"
	.byte	0x3
	.byte	0xb5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"sdram"
	.byte	0x3
	.byte	0xb6
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"v1buf"
	.byte	0x3
	.byte	0xb7
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"v2buf"
	.byte	0x3
	.byte	0xb8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.string	"v4buf"
	.byte	0x3
	.byte	0xb9
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x2ffd
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xb
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3045
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x2fc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x3093
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x30a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3093
	.uleb128 0xa
	.long	0x310d
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"length"
	.byte	0x3
	.value	0x336
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x310d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xfd6
	.uleb128 0xa
	.long	0x3168
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x31b0
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1a
	.long	0x31ee
	.long	.LASF13
	.byte	0xc
	.byte	0x4
	.byte	0x19
	.uleb128 0x14
	.string	"str"
	.byte	0x4
	.byte	0x1c
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"len"
	.byte	0x4
	.byte	0x1d
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"hash_value"
	.byte	0x4
	.byte	0x1e
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3225
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x31b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x326c
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x32ad
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"length"
	.byte	0x3
	.value	0x390
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x32ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x32bd
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x3309
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"operands"
	.byte	0x3
	.value	0x3d9
	.long	0x32ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x33f9
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.value	0x40e
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x2ad
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vars"
	.byte	0x3
	.value	0x411
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.long	.LASF15
	.byte	0x3
	.value	0x414
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1d
	.long	0x3440
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x7
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x1d4
	.uleb128 0x7
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x3ad
	.uleb128 0x7
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x344d
	.byte	0x0
	.uleb128 0x4
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3440
	.uleb128 0xa
	.long	0x379a
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.long	.LASF16
	.byte	0x3
	.value	0x555
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF17
	.byte	0x3
	.value	0x556
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x2ad
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x3da
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x562
	.long	0x2ad
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x3
	.value	0x564
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0x565
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.value	0x566
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.value	0x567
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.value	0x568
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.value	0x569
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.value	0x56a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x56b
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"align"
	.byte	0x3
	.value	0x56d
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x33f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x19
	.long	.LASF20
	.byte	0x3
	.value	0x576
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.long	.LASF21
	.byte	0x3
	.value	0x57b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.long	.LASF22
	.byte	0x3
	.value	0x57c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.long	.LASF23
	.byte	0x3
	.value	0x57f
	.long	0x37bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0xf9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xa
	.long	0x37bb
	.string	"lang_type"
	.byte	0x4c
	.byte	0x3
	.value	0x57f
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x4e0
	.long	0x6388
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x379a
	.uleb128 0xa
	.long	0x3806
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x1b
	.string	"align"
	.byte	0x3
	.value	0x818
	.long	0x2ad
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x2ad
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x1d
	.long	0x383b
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x1035
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x374
	.uleb128 0x7
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x37c1
	.byte	0x0
	.uleb128 0x1d
	.long	0x387a
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x7
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x422a
	.uleb128 0x7
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9c
	.uleb128 0x7
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0xd6
	.uleb128 0x7
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x1d4
	.byte	0x0
	.uleb128 0x1e
	.long	0x422a
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x7c2
	.uleb128 0x14
	.string	"eh"
	.byte	0x7
	.byte	0xb5
	.long	0x5029
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"stmt"
	.byte	0x7
	.byte	0xb6
	.long	0x503d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"expr"
	.byte	0x7
	.byte	0xb7
	.long	0x5043
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"emit"
	.byte	0x7
	.byte	0xb8
	.long	0x5049
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"varasm"
	.byte	0x7
	.byte	0xb9
	.long	0x505f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.long	.LASF20
	.byte	0x7
	.byte	0xbe
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"decl"
	.byte	0x7
	.byte	0xc1
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"outer"
	.byte	0x7
	.byte	0xc4
	.long	0x422a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"pops_args"
	.byte	0x7
	.byte	0xc9
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"args_size"
	.byte	0x7
	.byte	0xce
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"pretend_args_size"
	.byte	0x7
	.byte	0xd3
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"outgoing_args_size"
	.byte	0x7
	.byte	0xd7
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"arg_offset_rtx"
	.byte	0x7
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"args_info"
	.byte	0x7
	.byte	0xdf
	.long	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.string	"return_rtx"
	.byte	0x7
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.string	"internal_arg_pointer"
	.byte	0x7
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.long	.LASF24
	.byte	0x7
	.byte	0xec
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.string	"hard_reg_initial_vals"
	.byte	0x7
	.byte	0xf0
	.long	0x507c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"x_function_call_count"
	.byte	0x7
	.byte	0xf3
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"x_nonlocal_labels"
	.byte	0x7
	.byte	0xf8
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0x7
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0x7
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0x7
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0x7
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0x7
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0x7
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0x7
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0x7
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0x7
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0x7
	.value	0x121
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0x7
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0x7
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0x7
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0x7
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0x7
	.value	0x138
	.long	0x374
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0x7
	.value	0x13d
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0x7
	.value	0x146
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0x7
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0x7
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0x7
	.value	0x151
	.long	0x2ad
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0x7
	.value	0x157
	.long	0x4ecd
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0x7
	.value	0x15a
	.long	0x508e
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0x7
	.value	0x15d
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0x7
	.value	0x160
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0x7
	.value	0x166
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0x7
	.value	0x16a
	.long	0x4d29
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0x7
	.value	0x16d
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0x7
	.value	0x16e
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0x7
	.value	0x16f
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0x7
	.value	0x170
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0x7
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0x7
	.value	0x175
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0x7
	.value	0x178
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0x7
	.value	0x17d
	.long	0x50a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0x7
	.value	0x17f
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0x7
	.value	0x181
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x19
	.long	.LASF25
	.byte	0x7
	.value	0x184
	.long	0x52e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0x7
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1b
	.string	"returns_struct"
	.byte	0x7
	.value	0x190
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pcc_struct"
	.byte	0x7
	.value	0x194
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"returns_pointer"
	.byte	0x7
	.value	0x197
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"needs_context"
	.byte	0x7
	.value	0x19a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_setjmp"
	.byte	0x7
	.value	0x19d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_longjmp"
	.byte	0x7
	.value	0x1a0
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_alloca"
	.byte	0x7
	.value	0x1a4
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"calls_eh_return"
	.byte	0x7
	.value	0x1a7
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_label"
	.byte	0x7
	.value	0x1ab
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_nonlocal_goto"
	.byte	0x7
	.value	0x1af
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"contains_functions"
	.byte	0x7
	.value	0x1b2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"has_computed_jump"
	.byte	0x7
	.value	0x1b5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"is_thunk"
	.byte	0x7
	.value	0x1ba
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"all_throwers_are_sibcalls"
	.byte	0x7
	.value	0x1c1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"instrument_entry_exit"
	.byte	0x7
	.value	0x1c5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arc_profile"
	.byte	0x7
	.value	0x1c8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"profile"
	.byte	0x7
	.value	0x1cb
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"limit_stack"
	.byte	0x7
	.value	0x1cf
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"stdarg"
	.byte	0x7
	.value	0x1d2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_whole_function_mode_p"
	.byte	0x7
	.value	0x1d8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"x_dont_save_pending_sizes_p"
	.byte	0x7
	.value	0x1e1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_const_pool"
	.byte	0x7
	.value	0x1e4
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_pic_offset_table"
	.byte	0x7
	.value	0x1e7
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"uses_eh_lsda"
	.byte	0x7
	.value	0x1ea
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.string	"arg_pointer_save_area_init"
	.byte	0x7
	.value	0x1ed
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x19
	.long	.LASF26
	.byte	0x7
	.value	0x1fa
	.long	0x4fb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0x7
	.value	0x1fe
	.long	0x1d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x387a
	.uleb128 0x1f
	.long	0x4268
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x7
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x310d
	.uleb128 0x7
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0xf89
	.uleb128 0x7
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x2ad
	.byte	0x0
	.uleb128 0xa
	.long	0x49aa
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x655
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x3da
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x3
	.value	0x7d3
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x3
	.value	0x7ed
	.long	0xfe5
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF18
	.byte	0x3
	.value	0x7f0
	.long	0x2ad
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x3
	.value	0x7f2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x3
	.value	0x7fa
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF6
	.byte	0x3
	.value	0x7fb
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.value	0x7fc
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.value	0x7fd
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.value	0x7fe
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.value	0x7ff
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.value	0x800
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.value	0x801
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1b
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"u1"
	.byte	0x3
	.value	0x81b
	.long	0x3806
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.long	.LASF16
	.byte	0x3
	.value	0x81d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.long	.LASF20
	.byte	0x3
	.value	0x81e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x19
	.long	.LASF22
	.byte	0x3
	.value	0x81f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.long	.LASF27
	.byte	0x3
	.value	0x821
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF15
	.byte	0x3
	.value	0x82b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF17
	.byte	0x3
	.value	0x82e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x383b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x374
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x19
	.long	.LASF23
	.byte	0x3
	.value	0x848
	.long	0x49e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1b
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x2ad
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1b
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"sgi_u1"
	.byte	0x3
	.value	0x852
	.long	0x4230
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0xf9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xa
	.long	0x49e1
	.string	"lang_decl"
	.byte	0x34
	.byte	0x3
	.value	0x848
	.uleb128 0xb
	.string	"decl_flags"
	.byte	0x9
	.value	0x73a
	.long	0x6442
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x763
	.long	0x6862
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x49aa
	.uleb128 0x11
	.long	0x4c65
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xd
	.byte	0x1d
	.uleb128 0x12
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x12
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x12
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x12
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x12
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x12
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x12
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x12
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x12
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x12
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x12
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x12
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x12
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x12
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x12
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x12
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x12
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x12
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x12
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x12
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x12
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x12
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x12
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x12
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x12
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x12
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x12
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x12
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x12
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x12
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x12
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x12
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x12
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x12
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x12
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xa
	.long	0x4cb4
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x19
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x2cdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x49e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0xd6
	.uleb128 0x13
	.long	0x4d29
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0x7
	.byte	0x17
	.uleb128 0x14
	.string	"modified"
	.byte	0x7
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"promoted_mode"
	.byte	0x7
	.byte	0x19
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"unsignedp"
	.byte	0x7
	.byte	0x1a
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"next"
	.byte	0x7
	.byte	0x1b
	.long	0x4d29
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4cc3
	.uleb128 0x1a
	.long	0x4d78
	.long	.LASF28
	.byte	0x10
	.byte	0x7
	.byte	0x24
	.uleb128 0x14
	.string	"first"
	.byte	0x7
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"last"
	.byte	0x7
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF29
	.byte	0x7
	.byte	0x28
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"next"
	.byte	0x7
	.byte	0x29
	.long	0x4d78
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4d2f
	.uleb128 0x13
	.long	0x4ecd
	.string	"emit_status"
	.byte	0x34
	.byte	0x7
	.byte	0x37
	.uleb128 0x14
	.string	"x_reg_rtx_no"
	.byte	0x7
	.byte	0x3a
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"x_first_label_num"
	.byte	0x7
	.byte	0x3d
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"x_first_insn"
	.byte	0x7
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"x_last_insn"
	.byte	0x7
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.long	.LASF29
	.byte	0x7
	.byte	0x4a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.long	.LASF28
	.byte	0x7
	.byte	0x50
	.long	0x4d78
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"x_cur_insn_uid"
	.byte	0x7
	.byte	0x54
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"x_last_linenum"
	.byte	0x7
	.byte	0x58
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"x_last_filename"
	.byte	0x7
	.byte	0x59
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"regno_pointer_align_length"
	.byte	0x7
	.byte	0x5f
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"regno_pointer_align"
	.byte	0x7
	.byte	0x65
	.long	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"regno_decl"
	.byte	0x7
	.byte	0x69
	.long	0x4cbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"x_regno_reg_rtx"
	.byte	0x7
	.byte	0x70
	.long	0x4ecd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x13
	.long	0x4fb3
	.string	"expr_status"
	.byte	0x1c
	.byte	0x7
	.byte	0x7d
	.uleb128 0x14
	.string	"x_pending_stack_adjust"
	.byte	0x7
	.byte	0x80
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"x_inhibit_defer_pop"
	.byte	0x7
	.byte	0x91
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"x_stack_pointer_delta"
	.byte	0x7
	.byte	0x97
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"x_saveregs_value"
	.byte	0x7
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"x_apply_args_value"
	.byte	0x7
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"x_forced_labels"
	.byte	0x7
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"x_pending_chain"
	.byte	0x7
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x20
	.long	0x501d
	.long	.LASF26
	.byte	0x4
	.byte	0x7
	.value	0x1f1
	.uleb128 0x12
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x12
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x12
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x501d
	.uleb128 0x4
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x502f
	.uleb128 0x3
	.byte	0x4
	.long	0x4ed3
	.uleb128 0x3
	.byte	0x4
	.long	0x4d7e
	.uleb128 0x4
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x504f
	.uleb128 0x4
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5065
	.uleb128 0x4
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5082
	.uleb128 0x4
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5094
	.uleb128 0xa
	.long	0x52e3
	.string	"language_function"
	.byte	0x64
	.byte	0x7
	.value	0x184
	.uleb128 0xb
	.string	"base"
	.byte	0x9
	.value	0x370
	.long	0x5866
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_dtor_label"
	.byte	0x9
	.value	0x372
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"x_current_class_ptr"
	.byte	0x9
	.value	0x373
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"x_current_class_ref"
	.byte	0x9
	.value	0x374
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"x_eh_spec_block"
	.byte	0x9
	.value	0x375
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"x_in_charge_parm"
	.byte	0x9
	.value	0x376
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_vtt_parm"
	.byte	0x9
	.value	0x377
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_return_value"
	.byte	0x9
	.value	0x378
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"returns_value"
	.byte	0x9
	.value	0x37a
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"returns_null"
	.byte	0x9
	.value	0x37b
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"returns_abnormally"
	.byte	0x9
	.value	0x37c
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"in_function_try_handler"
	.byte	0x9
	.value	0x37d
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"in_base_initializer"
	.byte	0x9
	.value	0x37e
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"x_expanding_p"
	.byte	0x9
	.value	0x37f
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1b
	.string	"can_throw"
	.byte	0x9
	.value	0x382
	.long	0x4cb4
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"x_named_label_uses"
	.byte	0x9
	.value	0x384
	.long	0x5bd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"x_named_labels"
	.byte	0x9
	.value	0x385
	.long	0x5beb
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x19
	.long	.LASF30
	.byte	0x9
	.value	0x386
	.long	0x5909
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"x_local_names"
	.byte	0x9
	.value	0x387
	.long	0x57c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.long	.LASF24
	.byte	0x9
	.value	0x389
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"unparsed_inlines"
	.byte	0x9
	.value	0x38a
	.long	0x5c01
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x50ad
	.uleb128 0x13
	.long	0x531f
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xb
	.byte	0x24
	.uleb128 0x14
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x11
	.long	0x54ba
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xb
	.byte	0x3c
	.uleb128 0x12
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x12
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x12
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x12
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x12
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x12
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x12
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x12
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x12
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x12
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x12
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x12
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x12
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x12
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x12
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x12
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x12
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x12
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x12
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x12
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x12
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x5
	.long	0x55b6
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xb
	.byte	0x55
	.uleb128 0x21
	.string	"c"
	.byte	0xb
	.byte	0x56
	.long	0x3c4
	.uleb128 0x21
	.string	"uc"
	.byte	0xb
	.byte	0x58
	.long	0x55b6
	.uleb128 0x21
	.string	"s"
	.byte	0xb
	.byte	0x5a
	.long	0x55c6
	.uleb128 0x21
	.string	"us"
	.byte	0xb
	.byte	0x5c
	.long	0x55d6
	.uleb128 0x21
	.string	"i"
	.byte	0xb
	.byte	0x5e
	.long	0x55e6
	.uleb128 0x21
	.string	"u"
	.byte	0xb
	.byte	0x60
	.long	0x55f6
	.uleb128 0x21
	.string	"l"
	.byte	0xb
	.byte	0x62
	.long	0x5606
	.uleb128 0x21
	.string	"ul"
	.byte	0xb
	.byte	0x64
	.long	0x5616
	.uleb128 0x21
	.string	"hint"
	.byte	0xb
	.byte	0x66
	.long	0x5626
	.uleb128 0x21
	.string	"uhint"
	.byte	0xb
	.byte	0x68
	.long	0x5636
	.uleb128 0x21
	.string	"generic"
	.byte	0xb
	.byte	0x6a
	.long	0x5646
	.uleb128 0x21
	.string	"cptr"
	.byte	0xb
	.byte	0x6c
	.long	0x5656
	.uleb128 0x21
	.string	"rtx"
	.byte	0xb
	.byte	0x6e
	.long	0x5666
	.uleb128 0x21
	.string	"rtvec"
	.byte	0xb
	.byte	0x70
	.long	0x5676
	.uleb128 0x21
	.string	"tree"
	.byte	0xb
	.byte	0x72
	.long	0x5686
	.uleb128 0x21
	.string	"bitmap"
	.byte	0xb
	.byte	0x74
	.long	0x5696
	.uleb128 0x21
	.string	"reg"
	.byte	0xb
	.byte	0x76
	.long	0x56be
	.uleb128 0x21
	.string	"const_equiv"
	.byte	0xb
	.byte	0x78
	.long	0x56e3
	.uleb128 0x21
	.string	"bb"
	.byte	0xb
	.byte	0x7a
	.long	0x56f3
	.uleb128 0x21
	.string	"te"
	.byte	0xb
	.byte	0x7c
	.long	0x571b
	.byte	0x0
	.uleb128 0xd
	.long	0x55c6
	.long	0x31c
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55d6
	.long	0x367
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55e6
	.long	0x32d
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x55f6
	.long	0x1d4
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5606
	.long	0x2ad
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5616
	.long	0x39f
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5626
	.long	0x343
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5636
	.long	0x374
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5646
	.long	0x385
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5656
	.long	0x3ab
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5666
	.long	0x3ad
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5676
	.long	0xa7
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5686
	.long	0xc4
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5696
	.long	0xe2
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x56a6
	.long	0x56b8
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56a6
	.uleb128 0xd
	.long	0x56ce
	.long	0x56dd
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x56ce
	.uleb128 0xd
	.long	0x56f3
	.long	0x52e9
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x5703
	.long	0x5715
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5703
	.uleb128 0xd
	.long	0x572b
	.long	0x5736
	.uleb128 0xe
	.long	0x2c4
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x572b
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xb
	.byte	0x7e
	.long	0x54ba
	.uleb128 0x13
	.long	0x57c2
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xb
	.byte	0x81
	.uleb128 0x14
	.string	"num_elements"
	.byte	0xb
	.byte	0x82
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"elements_used"
	.byte	0xb
	.byte	0x83
	.long	0x30e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF1
	.byte	0xb
	.byte	0x85
	.long	0x531f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF20
	.byte	0xb
	.byte	0x86
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"data"
	.byte	0xb
	.byte	0x87
	.long	0x573c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xb
	.byte	0x8a
	.long	0x57d5
	.uleb128 0x3
	.byte	0x4
	.long	0x574f
	.uleb128 0xa
	.long	0x5866
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xa
	.value	0x101
	.uleb128 0xb
	.string	"x_last_stmt"
	.byte	0xa
	.value	0x103
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_last_expr_type"
	.byte	0xa
	.value	0x106
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"x_last_expr_filename"
	.byte	0xa
	.value	0x108
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"stmts_are_full_exprs_p"
	.byte	0xa
	.value	0x117
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x58b1
	.string	"c_language_function"
	.byte	0x14
	.byte	0xa
	.value	0x11f
	.uleb128 0x19
	.long	.LASF31
	.byte	0xa
	.value	0x122
	.long	0x57db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_scope_stmt_stack"
	.byte	0xa
	.value	0x124
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x58e5
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xa
	.value	0x169
	.uleb128 0x1b
	.string	"declared_inline"
	.byte	0xa
	.value	0x16a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x22
	.long	.LASF32
	.byte	0x9
	.byte	0xe4
	.long	0x58f0
	.uleb128 0x23
	.long	.LASF32
	.byte	0x1
	.uleb128 0x4
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x58f6
	.uleb128 0xf
	.string	"binding_table"
	.byte	0x9
	.value	0x103
	.long	0x5925
	.uleb128 0x3
	.byte	0x4
	.long	0x592b
	.uleb128 0x4
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xa
	.long	0x5baf
	.string	"saved_scope"
	.byte	0x6c
	.byte	0x9
	.value	0x316
	.uleb128 0xb
	.string	"old_bindings"
	.byte	0x9
	.value	0x317
	.long	0x5baf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"old_namespace"
	.byte	0x9
	.value	0x318
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"decl_ns_list"
	.byte	0x9
	.value	0x319
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"class_name"
	.byte	0x9
	.value	0x31a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"class_type"
	.byte	0x9
	.value	0x31b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"access_specifier"
	.byte	0x9
	.value	0x31c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"function_decl"
	.byte	0x9
	.value	0x31d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"lang_base"
	.byte	0x9
	.value	0x31e
	.long	0x57c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"lang_name"
	.byte	0x9
	.value	0x31f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"template_parms"
	.byte	0x9
	.value	0x320
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_previous_class_type"
	.byte	0x9
	.value	0x321
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_previous_class_values"
	.byte	0x9
	.value	0x322
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"x_saved_tree"
	.byte	0x9
	.value	0x323
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"lookups"
	.byte	0x9
	.value	0x324
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"last_parms"
	.byte	0x9
	.value	0x325
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"x_processing_template_decl"
	.byte	0x9
	.value	0x327
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"x_processing_specialization"
	.byte	0x9
	.value	0x328
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"x_processing_explicit_instantiation"
	.byte	0x9
	.value	0x329
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"need_pop_function_context"
	.byte	0x9
	.value	0x32a
	.long	0x1d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x19
	.long	.LASF31
	.byte	0x9
	.value	0x32c
	.long	0x57db
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"class_bindings"
	.byte	0x9
	.value	0x32e
	.long	0x5909
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x19
	.long	.LASF30
	.byte	0x9
	.value	0x32f
	.long	0x5909
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"prev"
	.byte	0x9
	.value	0x331
	.long	0x5bb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x58e5
	.uleb128 0x3
	.byte	0x4
	.long	0x593d
	.uleb128 0x4
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bbb
	.uleb128 0x4
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bd8
	.uleb128 0x4
	.string	"unparsed_text"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5bf1
	.uleb128 0x24
	.long	0x5c41
	.string	"languages"
	.byte	0x4
	.byte	0x9
	.value	0x3f1
	.uleb128 0x12
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x12
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x12
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xa
	.long	0x5d60
	.string	"lang_type_header"
	.byte	0x4
	.byte	0x9
	.value	0x464
	.uleb128 0x1b
	.string	"is_lang_type_class"
	.byte	0x9
	.value	0x465
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_type_conversion"
	.byte	0x9
	.value	0x467
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_init_ref"
	.byte	0x9
	.value	0x468
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_default_ctor"
	.byte	0x9
	.value	0x469
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"uses_multiple_inheritance"
	.byte	0x9
	.value	0x46a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"const_needs_init"
	.byte	0x9
	.value	0x46b
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"ref_needs_init"
	.byte	0x9
	.value	0x46c
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.string	"has_const_assign_ref"
	.byte	0x9
	.value	0x46d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x634e
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0x9
	.value	0x47e
	.uleb128 0xb
	.string	"h"
	.byte	0x9
	.value	0x47f
	.long	0x5c41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"align"
	.byte	0x9
	.value	0x481
	.long	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_mutable"
	.byte	0x9
	.value	0x483
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"com_interface"
	.byte	0x9
	.value	0x484
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"non_pod_class"
	.byte	0x9
	.value	0x485
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"nearly_empty_p"
	.byte	0x9
	.value	0x486
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x9
	.value	0x487
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_assign_ref"
	.byte	0x9
	.value	0x488
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_new"
	.byte	0x9
	.value	0x489
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_array_new"
	.byte	0x9
	.value	0x48a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"gets_delete"
	.byte	0x9
	.value	0x48c
	.long	0x2ad
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_call_overloaded"
	.byte	0x9
	.value	0x48d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_array_ref_overloaded"
	.byte	0x9
	.value	0x48e
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_arrow_overloaded"
	.byte	0x9
	.value	0x48f
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"interface_only"
	.byte	0x9
	.value	0x490
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"interface_unknown"
	.byte	0x9
	.value	0x491
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"marks"
	.byte	0x9
	.value	0x493
	.long	0x2ad
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"vec_new_uses_cookie"
	.byte	0x9
	.value	0x494
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"declared_class"
	.byte	0x9
	.value	0x495
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"being_defined"
	.byte	0x9
	.value	0x497
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"redefined"
	.byte	0x9
	.value	0x498
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"debug_requested"
	.byte	0x9
	.value	0x499
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x9
	.value	0x49a
	.long	0x2ad
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"got_semicolon"
	.byte	0x9
	.value	0x49b
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"ptrmemfunc_flag"
	.byte	0x9
	.value	0x49c
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"was_anonymous"
	.byte	0x9
	.value	0x49d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_real_assign_ref"
	.byte	0x9
	.value	0x49f
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_const_init_ref"
	.byte	0x9
	.value	0x4a0
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_complex_init_ref"
	.byte	0x9
	.value	0x4a1
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_complex_assign_ref"
	.byte	0x9
	.value	0x4a2
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_abstract_assign_ref"
	.byte	0x9
	.value	0x4a3
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"non_aggregate"
	.byte	0x9
	.value	0x4a4
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"is_partial_instantiation"
	.byte	0x9
	.value	0x4a5
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"java_interface"
	.byte	0x9
	.value	0x4a6
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"anon_aggr"
	.byte	0x9
	.value	0x4a8
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"non_zero_init"
	.byte	0x9
	.value	0x4a9
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"empty_p"
	.byte	0x9
	.value	0x4aa
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"contains_empty_class_p"
	.byte	0x9
	.value	0x4ab
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"has_implicit_copy_constructor"
	.byte	0x9
	.value	0x4b7
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.string	"dummy"
	.byte	0x9
	.value	0x4b8
	.long	0x2ad
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"primary_base"
	.byte	0x9
	.value	0x4bd
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"vfields"
	.byte	0x9
	.value	0x4be
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vcall_indices"
	.byte	0x9
	.value	0x4bf
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"vtables"
	.byte	0x9
	.value	0x4c0
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"typeinfo_var"
	.byte	0x9
	.value	0x4c1
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"vbases"
	.byte	0x9
	.value	0x4c2
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"nested_udts"
	.byte	0x9
	.value	0x4c3
	.long	0x590f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"as_base"
	.byte	0x9
	.value	0x4c4
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pure_virtuals"
	.byte	0x9
	.value	0x4c5
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"friend_classes"
	.byte	0x9
	.value	0x4c6
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"methods"
	.byte	0x9
	.value	0x4c7
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"key_method"
	.byte	0x9
	.value	0x4c8
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"decl_list"
	.byte	0x9
	.value	0x4c9
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.long	.LASF34
	.byte	0x9
	.value	0x4ca
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x19
	.long	.LASF35
	.byte	0x9
	.value	0x4cb
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"copy_constructor"
	.byte	0x9
	.value	0x4cf
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xa
	.long	0x6388
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0x9
	.value	0x4d4
	.uleb128 0xb
	.string	"h"
	.byte	0x9
	.value	0x4d5
	.long	0x5c41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"record"
	.byte	0x9
	.value	0x4d6
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x1d
	.long	0x63c1
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0x9
	.value	0x4dc
	.uleb128 0x7
	.string	"h"
	.byte	0x9
	.value	0x4dd
	.long	0x5c41
	.uleb128 0x7
	.string	"c"
	.byte	0x9
	.value	0x4de
	.long	0x5d60
	.uleb128 0x7
	.string	"ptrmem"
	.byte	0x9
	.value	0x4df
	.long	0x634e
	.byte	0x0
	.uleb128 0x1d
	.long	0x63f1
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0x9
	.value	0x722
	.uleb128 0x6
	.long	.LASF34
	.byte	0x9
	.value	0x725
	.long	0xd6
	.uleb128 0x7
	.string	"level"
	.byte	0x9
	.value	0x728
	.long	0x5909
	.byte	0x0
	.uleb128 0x1d
	.long	0x6442
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0x9
	.value	0x72b
	.uleb128 0x7
	.string	"access"
	.byte	0x9
	.value	0x72d
	.long	0xd6
	.uleb128 0x7
	.string	"discriminator"
	.byte	0x9
	.value	0x730
	.long	0x1d4
	.uleb128 0x7
	.string	"vcall_offset"
	.byte	0x9
	.value	0x734
	.long	0xd6
	.byte	0x0
	.uleb128 0xa
	.long	0x671e
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0x9
	.value	0x703
	.uleb128 0xb
	.string	"base"
	.byte	0x9
	.value	0x704
	.long	0x58b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x9
	.value	0x706
	.long	0x5c07
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"operator_attr"
	.byte	0x9
	.value	0x708
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"constructor_attr"
	.byte	0x9
	.value	0x709
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"destructor_attr"
	.byte	0x9
	.value	0x70a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"friend_attr"
	.byte	0x9
	.value	0x70b
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"static_function"
	.byte	0x9
	.value	0x70c
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"pure_virtual"
	.byte	0x9
	.value	0x70d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_in_charge_parm_p"
	.byte	0x9
	.value	0x70e
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"has_vtt_parm_p"
	.byte	0x9
	.value	0x70f
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"deferred"
	.byte	0x9
	.value	0x711
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x9
	.value	0x712
	.long	0x2ad
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"nonconverting"
	.byte	0x9
	.value	0x713
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"not_really_extern"
	.byte	0x9
	.value	0x714
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"needs_final_overrider"
	.byte	0x9
	.value	0x715
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"initialized_in_class"
	.byte	0x9
	.value	0x716
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"assignment_operator_p"
	.byte	0x9
	.value	0x717
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"global_ctor_p"
	.byte	0x9
	.value	0x719
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"global_dtor_p"
	.byte	0x9
	.value	0x71a
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"anticipated_p"
	.byte	0x9
	.value	0x71b
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"template_conv_p"
	.byte	0x9
	.value	0x71c
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"u1sel"
	.byte	0x9
	.value	0x71d
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"u2sel"
	.byte	0x9
	.value	0x71e
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"can_be_full"
	.byte	0x9
	.value	0x71f
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"unused"
	.byte	0x9
	.value	0x720
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x729
	.long	0x63c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u2"
	.byte	0x9
	.value	0x735
	.long	0x63f1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1d
	.long	0x6787
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0x9
	.value	0x75c
	.uleb128 0x7
	.string	"sorted_fields"
	.byte	0x9
	.value	0x75d
	.long	0xd6
	.uleb128 0x7
	.string	"pending_inline_info"
	.byte	0x9
	.value	0x75e
	.long	0x5c01
	.uleb128 0x7
	.string	"saved_language_function"
	.byte	0x9
	.value	0x760
	.long	0x52e3
	.byte	0x0
	.uleb128 0xa
	.long	0x6862
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0x9
	.value	0x73f
	.uleb128 0x19
	.long	.LASF35
	.byte	0x9
	.value	0x740
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.long	.LASF22
	.byte	0x9
	.value	0x745
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"cloned_function"
	.byte	0x9
	.value	0x748
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"delta"
	.byte	0x9
	.value	0x74c
	.long	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"named_return_object"
	.byte	0x9
	.value	0x751
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"operator_code"
	.byte	0x9
	.value	0x756
	.long	0x667
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.string	"u3sel"
	.byte	0x9
	.value	0x758
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.string	"pending_inline_p"
	.byte	0x9
	.value	0x759
	.long	0x2ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"u"
	.byte	0x9
	.value	0x761
	.long	0x671e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1d
	.long	0x6883
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0x9
	.value	0x73d
	.uleb128 0x7
	.string	"f"
	.byte	0x9
	.value	0x762
	.long	0x6787
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.string	"init_rtti_processing"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x26
	.long	0x6919
	.string	"build_headof"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0xd6
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x27
	.string	"exp"
	.byte	0x1
	.byte	0x86
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.byte	0x88
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF3
	.byte	0x1
	.byte	0x89
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"index"
	.byte	0x1
	.byte	0x8a
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.long	.LASF36
	.long	0x799e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13237
	.byte	0x0
	.uleb128 0x26
	.long	0x694e
	.string	"throw_bad_cast"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	0xd6
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x29
	.string	"fn"
	.byte	0x1
	.byte	0xa7
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	0x699b
	.string	"throw_bad_typeid"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0xd6
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x29
	.string	"fn"
	.byte	0x1
	.byte	0xb4
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.byte	0xb9
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x6a0d
	.string	"get_tinfo_decl_dynamic"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0xd6
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x27
	.string	"exp"
	.byte	0x1
	.byte	0xc7
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.byte	0xc9
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.byte	0xe1
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"index"
	.byte	0x1
	.byte	0xe2
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.string	"typeid_ok_p"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	0x4cb4
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x2d
	.long	0x6aa0
	.byte	0x1
	.string	"build_typeid"
	.byte	0x1
	.value	0x104
	.byte	0x1
	.long	0xd6
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x2e
	.string	"exp"
	.byte	0x1
	.value	0x103
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"cond"
	.byte	0x1
	.value	0x105
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"nonnull"
	.byte	0x1
	.value	0x106
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2f
	.string	"bad"
	.byte	0x1
	.value	0x121
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x6af2
	.string	"tinfo_name"
	.byte	0x1
	.value	0x12d
	.byte	0x1
	.long	0xd6
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x12c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0x12e
	.long	0x1c1
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF37
	.byte	0x1
	.value	0x12f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	0x6b60
	.byte	0x1
	.string	"get_tinfo_decl"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	0xd6
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x13c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0x13e
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"d"
	.byte	0x1
	.value	0x13f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x32
	.long	.LASF38
	.byte	0x1
	.value	0x15d
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x6ba6
	.string	"get_tinfo_ptr"
	.byte	0x1
	.value	0x17a
	.byte	0x1
	.long	0xd6
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x179
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"exp"
	.byte	0x1
	.value	0x17b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x6bdb
	.byte	0x1
	.string	"get_typeid"
	.byte	0x1
	.value	0x189
	.byte	0x1
	.long	0xd6
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x188
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x6c1e
	.string	"ifnonnull"
	.byte	0x1
	.value	0x1a9
	.byte	0x1
	.long	0xd6
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.string	"test"
	.byte	0x1
	.value	0x1a8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF27
	.byte	0x1
	.value	0x1a8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x6e50
	.string	"build_dynamic_cast_1"
	.byte	0x1
	.value	0x1b6
	.byte	0x1
	.long	0xd6
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x1b5
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"expr"
	.byte	0x1
	.value	0x1b5
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"tc"
	.byte	0x1
	.value	0x1b7
	.long	0x667
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.string	"exprtype"
	.byte	0x1
	.value	0x1b8
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"dcast_fn"
	.byte	0x1
	.value	0x1b9
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.string	"old_expr"
	.byte	0x1
	.value	0x1ba
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"errstr"
	.byte	0x1
	.value	0x1bb
	.long	0x1c1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"fail"
	.byte	0x1
	.value	0x2a5
	.long	.L119
	.uleb128 0x34
	.long	0x6cf7
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x32
	.long	.LASF21
	.byte	0x1
	.value	0x21a
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2f
	.string	"expr1"
	.byte	0x1
	.value	0x22c
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2f
	.string	"retval"
	.byte	0x1
	.value	0x240
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF27
	.byte	0x1
	.value	0x241
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.string	"td2"
	.byte	0x1
	.value	0x241
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"td3"
	.byte	0x1
	.value	0x241
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.string	"elems"
	.byte	0x1
	.value	0x241
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"static_type"
	.byte	0x1
	.value	0x242
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.string	"target_type"
	.byte	0x1
	.value	0x242
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"boff"
	.byte	0x1
	.value	0x242
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	0x6dc9
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2f
	.string	"expr"
	.byte	0x1
	.value	0x24b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x34
	.long	0x6de5
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0x256
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x34
	.long	0x6e34
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2f
	.string	"tmp"
	.byte	0x1
	.value	0x27a
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"tinfo_ptr"
	.byte	0x1
	.value	0x27b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"ns"
	.byte	0x1
	.value	0x27c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF20
	.byte	0x1
	.value	0x27d
	.long	0x1c1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2f
	.string	"bad"
	.byte	0x1
	.value	0x297
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x6e9d
	.byte	0x1
	.string	"build_dynamic_cast"
	.byte	0x1
	.value	0x2ae
	.byte	0x1
	.long	0xd6
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2ad
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"expr"
	.byte	0x1
	.value	0x2ad
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x30
	.long	0x6ef6
	.string	"qualifier_flags"
	.byte	0x1
	.value	0x2bd
	.byte	0x1
	.long	0x1d4
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2bc
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF39
	.byte	0x1
	.value	0x2be
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"quals"
	.byte	0x1
	.value	0x2bf
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x6f33
	.string	"target_incomplete_p"
	.byte	0x1
	.value	0x2d0
	.byte	0x1
	.long	0x1d4
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x2cf
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x701d
	.string	"tinfo_base_init"
	.byte	0x1
	.value	0x2ea
	.byte	0x1
	.long	0xd6
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"desc"
	.byte	0x1
	.value	0x2e8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF40
	.byte	0x1
	.value	0x2e9
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0x2eb
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.string	"name_decl"
	.byte	0x1
	.value	0x2ec
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"vtable_ptr"
	.byte	0x1
	.value	0x2ed
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	0x6ffd
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2f
	.string	"name_name"
	.byte	0x1
	.value	0x2f0
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"name_type"
	.byte	0x1
	.value	0x2f3
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF37
	.byte	0x1
	.value	0x2f6
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2f
	.string	"real_type"
	.byte	0x1
	.value	0x30c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x707a
	.string	"generic_initializer"
	.byte	0x1
	.value	0x33d
	.byte	0x1
	.long	0xd6
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.string	"desc"
	.byte	0x1
	.value	0x33b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF40
	.byte	0x1
	.value	0x33c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0x33e
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x710e
	.string	"ptr_initializer"
	.byte	0x1
	.value	0x34e
	.byte	0x1
	.long	0xd6
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2e
	.string	"desc"
	.byte	0x1
	.value	0x34b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF40
	.byte	0x1
	.value	0x34c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF41
	.byte	0x1
	.value	0x34d
	.long	0x3d4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0x34f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0x350
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF39
	.byte	0x1
	.value	0x351
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x352
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x71b3
	.string	"ptm_initializer"
	.byte	0x1
	.value	0x36d
	.byte	0x1
	.long	0xd6
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2e
	.string	"desc"
	.byte	0x1
	.value	0x36a
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF40
	.byte	0x1
	.value	0x36b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF41
	.byte	0x1
	.value	0x36c
	.long	0x3d4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0x36e
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"to"
	.byte	0x1
	.value	0x36f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"klass"
	.byte	0x1
	.value	0x370
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF39
	.byte	0x1
	.value	0x371
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF42
	.byte	0x1
	.value	0x372
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x721f
	.string	"dfs_class_hint_mark"
	.byte	0x1
	.value	0x394
	.byte	0x1
	.long	0xd6
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x392
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x393
	.long	0x3ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x395
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"hint"
	.byte	0x1
	.value	0x396
	.long	0x3d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x727d
	.string	"dfs_class_hint_unmark"
	.byte	0x1
	.value	0x3b1
	.byte	0x1
	.long	0xd6
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x3af
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x3b0
	.long	0x3ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.value	0x3b2
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x30
	.long	0x72f3
	.string	"class_hint_flags"
	.byte	0x1
	.value	0x3be
	.byte	0x1
	.long	0x1d4
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x3bd
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"hint_flags"
	.byte	0x1
	.value	0x3bf
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x3c0
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x3c7
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.long	0x735f
	.string	"class_initializer"
	.byte	0x1
	.value	0x3d8
	.byte	0x1
	.long	0xd6
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2e
	.string	"desc"
	.byte	0x1
	.value	0x3d5
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF40
	.byte	0x1
	.value	0x3d6
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"trail"
	.byte	0x1
	.value	0x3d7
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"init"
	.byte	0x1
	.value	0x3d9
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x739a
	.string	"typeinfo_in_lib_p"
	.byte	0x1
	.value	0x3e7
	.byte	0x1
	.long	0x1d4
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x3e6
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x30
	.long	0x7523
	.string	"get_pseudo_ti_init"
	.byte	0x1
	.value	0x408
	.byte	0x1
	.long	0xd6
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x405
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF38
	.byte	0x1
	.value	0x406
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"non_public_p"
	.byte	0x1
	.value	0x407
	.long	0x3d4
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.long	0x744a
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x428
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x429
	.long	0xd6
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.string	"tinfo"
	.byte	0x1
	.value	0x42a
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x42b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x34
	.long	0x7512
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2f
	.string	"hint"
	.byte	0x1
	.value	0x431
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF21
	.byte	0x1
	.value	0x432
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.string	"nbases"
	.byte	0x1
	.value	0x433
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF45
	.byte	0x1
	.value	0x434
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF46
	.byte	0x1
	.value	0x435
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"ix"
	.byte	0x1
	.value	0x436
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x43b
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"base_init"
	.byte	0x1
	.value	0x43c
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF39
	.byte	0x1
	.value	0x43d
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"tinfo"
	.byte	0x1
	.value	0x43e
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LASF3
	.byte	0x1
	.value	0x43f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF36
	.long	0x7989
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14306
	.byte	0x0
	.uleb128 0x30
	.long	0x760f
	.string	"create_pseudo_type_info"
	.byte	0x1
	.value	0x480
	.byte	0x1
	.long	0xd6
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"real_name"
	.byte	0x1
	.value	0x47f
	.long	0x1c1
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.string	"ident"
	.byte	0x1
	.value	0x47f
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.uleb128 0x2f
	.string	"pseudo_type"
	.byte	0x1
	.value	0x481
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"pseudo_name"
	.byte	0x1
	.value	0x482
	.long	0x3ad
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"ix"
	.byte	0x1
	.value	0x483
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x484
	.long	0x760f
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.string	"field_decl"
	.byte	0x1
	.value	0x485
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LASF27
	.byte	0x1
	.value	0x486
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2f
	.string	"ap"
	.byte	0x1
	.value	0x488
	.long	0x2ff
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LBB20
	.long	.LBE20
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x761f
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x9
	.byte	0x0
	.uleb128 0x30
	.long	0x76fa
	.string	"get_pseudo_ti_desc"
	.byte	0x1
	.value	0x4af
	.byte	0x1
	.long	0xd6
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x31
	.long	.LASF1
	.byte	0x1
	.value	0x4ae
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.value	0x4c8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"num_bases"
	.byte	0x1
	.value	0x4ca
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x32
	.long	.LASF38
	.byte	0x1
	.value	0x4d4
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"array_domain"
	.byte	0x1
	.value	0x4d5
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"base_array"
	.byte	0x1
	.value	0x4d5
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2f
	.string	"ix"
	.byte	0x1
	.value	0x4d9
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"extend"
	.byte	0x1
	.value	0x4da
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x776d
	.string	"create_tinfo_types"
	.byte	0x1
	.value	0x502
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x34
	.long	0x773f
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x50a
	.long	0x776d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x34
	.long	0x775c
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x32
	.long	.LASF47
	.byte	0x1
	.value	0x533
	.long	0x776d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2a
	.long	.LASF36
	.long	0x7984
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14569
	.byte	0x0
	.uleb128 0xd
	.long	0x777d
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x1
	.byte	0x0
	.uleb128 0x38
	.long	0x7853
	.byte	0x1
	.string	"emit_support_tinfos"
	.byte	0x1
	.value	0x55e
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.string	"ix"
	.byte	0x1
	.value	0x56c
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"bltn_type"
	.byte	0x1
	.value	0x56d
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"dtor"
	.byte	0x1
	.value	0x56d
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	0x7837
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x2f
	.string	"bltn"
	.byte	0x1
	.value	0x57d
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"bltn_ptr"
	.byte	0x1
	.value	0x57e
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"bltn_const_ptr"
	.byte	0x1
	.value	0x57f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"tinfo"
	.byte	0x1
	.value	0x581
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2f
	.string	"fundamentals"
	.byte	0x1
	.value	0x55f
	.long	0x796f
	.byte	0x5
	.byte	0x3
	.long	fundamentals.14618
	.byte	0x0
	.uleb128 0x2d
	.long	0x78a2
	.byte	0x1
	.string	"unemitted_tinfo_decl_p"
	.byte	0x1
	.value	0x598
	.byte	0x1
	.long	0x1d4
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.value	0x596
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x597
	.long	0x3ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x2d
	.long	0x795f
	.byte	0x1
	.string	"emit_tinfo_decl"
	.byte	0x1
	.value	0x5c7
	.byte	0x1
	.long	0x1d4
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.string	"decl_ptr"
	.byte	0x1
	.value	0x5c5
	.long	0x4cbd
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"data"
	.byte	0x1
	.value	0x5c6
	.long	0x3ab
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"decl"
	.byte	0x1
	.value	0x5c8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF1
	.byte	0x1
	.value	0x5c9
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.string	"non_public"
	.byte	0x1
	.value	0x5ca
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"in_library"
	.byte	0x1
	.value	0x5cb
	.long	0x1d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF38
	.byte	0x1
	.value	0x5cc
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.string	"var_init"
	.byte	0x1
	.value	0x5cc
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xd
	.long	0x796f
	.long	0x4cbd
	.uleb128 0xe
	.long	0x2c4
	.byte	0x11
	.byte	0x0
	.uleb128 0x8
	.long	0x795f
	.uleb128 0xd
	.long	0x7984
	.long	0x1cc
	.uleb128 0xe
	.long	0x2c4
	.byte	0x12
	.byte	0x0
	.uleb128 0x8
	.long	0x7974
	.uleb128 0x8
	.long	0x7974
	.uleb128 0xd
	.long	0x799e
	.long	0x1cc
	.uleb128 0xe
	.long	0x2c4
	.byte	0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x798e
	.uleb128 0x29
	.string	"doing_runtime"
	.byte	0x1
	.byte	0x67
	.long	0x1d4
	.byte	0x5
	.byte	0x3
	.long	doing_runtime
	.uleb128 0xd
	.long	0x79ce
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x3f
	.byte	0x0
	.uleb128 0x39
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x79be
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x79f5
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0xa
	.byte	0x0
	.uleb128 0x39
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x79e5
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7a1d
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x5
	.byte	0x0
	.uleb128 0x39
	.string	"sizetype_tab"
	.byte	0x3
	.value	0xb10
	.long	0x7a0d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7a44
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x1e
	.byte	0x0
	.uleb128 0x3a
	.string	"c_global_trees"
	.byte	0xa
	.byte	0xee
	.long	0x7a34
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flag_rtti"
	.byte	0xa
	.value	0x2bb
	.long	0x1d4
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x7a80
	.long	0xd6
	.uleb128 0xe
	.long	0x2c4
	.byte	0x49
	.byte	0x0
	.uleb128 0x39
	.string	"cp_global_trees"
	.byte	0x9
	.value	0x28f
	.long	0x7a70
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"scope_chain"
	.byte	0x9
	.value	0x368
	.long	0x5bb5
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"global_namespace"
	.byte	0x9
	.value	0x3d4
	.long	0xd6
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"at_eof"
	.byte	0x9
	.value	0xd4d
	.long	0x1d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.string	"flag_syntax_only"
	.byte	0xf
	.value	0x1a1
	.long	0x1d4
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x27
	.uleb128 0x5
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xb8
	.value	0x2
	.long	.Ldebug_info0
	.long	0x7af8
	.long	0x6883
	.string	"init_rtti_processing"
	.long	0x6a2d
	.string	"build_typeid"
	.long	0x6af2
	.string	"get_tinfo_decl"
	.long	0x6ba6
	.string	"get_typeid"
	.long	0x6e50
	.string	"build_dynamic_cast"
	.long	0x777d
	.string	"emit_support_tinfos"
	.long	0x7853
	.string	"unemitted_tinfo_decl_p"
	.long	0x78a2
	.string	"emit_tinfo_decl"
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
.LASF20:
	.string	"name"
.LASF27:
	.string	"result"
.LASF24:
	.string	"cannot_inline"
.LASF5:
	.string	"lang_flag_0"
.LASF7:
	.string	"lang_flag_2"
.LASF9:
	.string	"lang_flag_4"
.LASF11:
	.string	"lang_flag_6"
.LASF28:
	.string	"sequence_stack"
.LASF30:
	.string	"bindings"
.LASF42:
	.string	"incomplete"
.LASF21:
	.string	"binfo"
.LASF0:
	.string	"common"
.LASF47:
	.string	"fields"
.LASF23:
	.string	"lang_specific"
.LASF29:
	.string	"sequence_rtl_expr"
.LASF32:
	.string	"cxx_saved_binding"
.LASF35:
	.string	"befriending_classes"
.LASF26:
	.string	"function_frequency"
.LASF6:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_3"
.LASF12:
	.string	"lang_flag_7"
.LASF44:
	.string	"base_binfo"
.LASF43:
	.string	"basetype"
.LASF2:
	.string	"unsigned int"
.LASF15:
	.string	"abstract_origin"
.LASF46:
	.string	"base_inits"
.LASF38:
	.string	"var_desc"
.LASF18:
	.string	"pointer_depth"
.LASF33:
	.string	"use_template"
.LASF19:
	.string	"user_align"
.LASF16:
	.string	"size_unit"
.LASF1:
	.string	"type"
.LASF41:
	.string	"non_public_ptr"
.LASF25:
	.string	"language"
.LASF37:
	.string	"name_string"
.LASF40:
	.string	"target"
.LASF4:
	.string	"built_in_class"
.LASF10:
	.string	"lang_flag_5"
.LASF14:
	.string	"abstract_flag"
.LASF45:
	.string	"base_binfos"
.LASF31:
	.string	"x_stmt_tree"
.LASF22:
	.string	"context"
.LASF3:
	.string	"offset"
.LASF34:
	.string	"template_info"
.LASF39:
	.string	"flags"
.LASF36:
	.string	"__FUNCTION__"
.LASF13:
	.string	"ht_identifier"
.LASF17:
	.string	"attributes"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
