	.file	"final.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.local	last_ignored_compare
	.comm	last_ignored_compare,4,4
	.data
	.align 4
	.type	new_block, @object
	.size	new_block, 4
new_block:
	.long	1
	.local	insn_counter
	.comm	insn_counter,4,4
	.local	functions_head
	.comm	functions_head,4,4
	.section	.data.rel.local,"aw",@progbits
	.align 4
	.type	functions_tail, @object
	.size	functions_tail, 4
functions_tail:
	.long	functions_head
	.text
.globl init_final
	.type	init_final, @function
init_final:
.LFB15:
	.file 1 "../../../kgccfe/gnu/final.c"
	.loc 1 257 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 258 0
	movl	$0, app_on@GOTOFF(%ecx)
	.loc 1 259 0
	movl	final_sequence@GOT(%ecx), %eax
	movl	$0, (%eax)
	.loc 1 264 0
	popl	%ebp
	ret
.LFE15:
	.size	init_final, .-init_final
	.section	.rodata
.LC0:
	.string	"zero_word"
.LC1:
	.string	"filename"
.LC2:
	.string	".da"
.LC3:
	.string	"counts"
.LC4:
	.string	"LPBX"
.LC5:
	.string	"$"
.LC6:
	.string	"*%s%s%ld"
.LC7:
	.string	"ncounts"
.LC8:
	.string	"next"
.LC9:
	.string	"sizeof_bb"
.LC10:
	.string	"checksum"
.LC11:
	.string	"arc_count"
.LC12:
	.string	"name"
.LC13:
	.string	"function_infos"
	.text
.globl end_final
	.type	end_final, @function
end_final:
.LFB16:
	.loc 1 272 0
	pushl	%ebp
.LCFI2:
	movl	%esp, %ebp
.LCFI3:
	pushl	%edi
.LCFI4:
	pushl	%esi
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$220, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -176(%ebp)
	.loc 1 272 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 273 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L13
	movl	profile_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L13
.LBB2:
	.loc 1 282 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -168(%ebp)
	.loc 1 285 0
	movl	$21, (%esp)
	call	make_node@PLT
	movl	%eax, -160(%ebp)
	.loc 1 286 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -152(%ebp)
	.loc 1 301 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %esi
	movl	$9, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -144(%ebp)
	.loc 1 304 0
	movl	global_trees@GOT(%ebx), %eax
	movl	44(%eax), %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 4(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -140(%ebp)
.LBB3:
	.loc 1 313 0
	movl	$8, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -148(%ebp)
	.loc 1 315 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 316 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 318 0
	call	getpwd@PLT
	movl	%eax, -128(%ebp)
	.loc 1 319 0
	movl	-176(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -184(%ebp)
	movl	$0, %eax
	cld
	movl	-184(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	movl	-128(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -188(%ebp)
	movl	$0, %eax
	cld
	movl	-188(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	leal	(%edx,%eax), %eax
	addl	$5, %eax
	movl	%eax, -120(%ebp)
	.loc 1 320 0
	movl	-120(%ebp), %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	20(%esp), %eax
	movl	%eax, -180(%ebp)
	movl	-180(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -180(%ebp)
	movl	-180(%ebp), %edi
	movl	%edi, -124(%ebp)
	.loc 1 321 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 322 0
	movl	-124(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -192(%ebp)
	movl	$0, %eax
	cld
	movl	-192(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	-124(%ebp), %eax
	movw	$47, (%eax)
	.loc 1 323 0
	movl	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 324 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 325 0
	movl	-124(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -196(%ebp)
	movl	$0, %eax
	cld
	movl	-196(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -120(%ebp)
	.loc 1 326 0
	movl	-120(%ebp), %edx
	addl	$1, %edx
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_string@PLT
	movl	%eax, -164(%ebp)
	.loc 1 327 0
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -132(%ebp)
	.loc 1 328 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_type@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 330 0
	movl	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -140(%ebp)
.LBE3:
.LBB4:
	.loc 1 337 0
	movl	$64, (%esp)
	call	make_unsigned_type@PLT
	movl	%eax, -116(%ebp)
	.loc 1 338 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -112(%ebp)
	.loc 1 340 0
	movl	profile_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -108(%ebp)
	.loc 1 343 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -104(%ebp)
	.loc 1 345 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -100(%ebp)
	.loc 1 348 0
	movl	$6, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %edx
	movl	-112(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -148(%ebp)
	.loc 1 351 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 352 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 355 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build@PLT
	movl	%eax, -96(%ebp)
	.loc 1 357 0
	movl	-96(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 358 0
	movl	$2, 16(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 359 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 360 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_variable@PLT
	.loc 1 362 0
	movl	-96(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -140(%ebp)
.LBE4:
	.loc 1 369 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %esi
	movl	$7, 4(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -148(%ebp)
	.loc 1 372 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 373 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 375 0
	movl	profile_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -140(%ebp)
	.loc 1 381 0
	movl	$4, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %edx
	movl	-152(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -148(%ebp)
	.loc 1 384 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 385 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 387 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -140(%ebp)
	.loc 1 391 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %esi
	movl	$9, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -148(%ebp)
	.loc 1 394 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 395 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 397 0
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -136(%ebp)
	.loc 1 398 0
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
.LBB5:
	.loc 1 406 0
	movl	$0, -68(%ebp)
	.loc 1 413 0
	movl	$21, (%esp)
	call	make_node@PLT
	movl	%eax, -64(%ebp)
	.loc 1 415 0
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %esi
	movl	$8, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -84(%ebp)
	.loc 1 418 0
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %esi
	movl	$9, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -80(%ebp)
	.loc 1 421 0
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 423 0
	movl	$4, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %edx
	movl	-168(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -76(%ebp)
	.loc 1 425 0
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 427 0
	movl	-64(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 429 0
	movl	$0, -88(%ebp)
	.loc 1 431 0
	movl	functions_head@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L7
.L8:
	.loc 1 432 0
	addl	$1, -88(%ebp)
	.loc 1 431 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L7:
	cmpl	$0, -92(%ebp)
	jne	.L8
	.loc 1 435 0
	movl	-88(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -72(%ebp)
	.loc 1 437 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -52(%ebp)
	.loc 1 438 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -60(%ebp)
	.loc 1 440 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -56(%ebp)
	.loc 1 443 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 444 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 445 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 446 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 448 0
	movl	functions_head@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L10
.L11:
.LBB6:
	.loc 1 453 0
	movl	-92(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 4(%esp)
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -44(%ebp)
	.loc 1 457 0
	movl	-92(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
	.loc 1 463 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -200(%ebp)
	movl	$0, %eax
	cld
	movl	-200(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	.loc 1 464 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_string@PLT
	movl	%eax, -164(%ebp)
	.loc 1 465 0
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, (%esp)
	call	build_index_type@PLT
	movl	%eax, -132(%ebp)
	.loc 1 466 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_type@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 468 0
	movl	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -44(%ebp)
	.loc 1 474 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -68(%ebp)
.LBE6:
	.loc 1 448 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L10:
	cmpl	$0, -92(%ebp)
	jne	.L11
	.loc 1 482 0
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	$-1, (%esp)
	movl	$-1, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	build_tree_list@PLT
	movl	%eax, -48(%ebp)
	.loc 1 486 0
	movl	-48(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, -68(%ebp)
	.loc 1 493 0
	movl	$14, 4(%esp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_identifier_with_length@PLT
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$38, (%esp)
	call	build_decl@PLT
	movl	%eax, -148(%ebp)
	.loc 1 496 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, 8(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$123, (%esp)
	call	build1@PLT
	movl	%eax, %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -140(%ebp)
	.loc 1 505 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 506 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
.LBE5:
	.loc 1 510 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 511 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 513 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build@PLT
	movl	%eax, -156(%ebp)
	.loc 1 515 0
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$47, (%esp)
	call	build@PLT
	movl	%eax, %edx
	movl	-156(%ebp), %eax
	movl	%edx, 68(%eax)
	.loc 1 518 0
	movl	-156(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 519 0
	movl	$0, 16(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 520 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-156(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 523 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	int_size_in_bytes@PLT
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	build_int_2_wide@PLT
	movl	%eax, %edx
	movl	integer_types@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	convert@PLT
	movl	%eax, %edx
	movl	-136(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 528 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_variable@PLT
.L13:
.LBE2:
	.loc 1 530 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L14
	call	__stack_chk_fail_local
.L14:
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE16:
	.size	end_final, .-end_final
.globl default_function_pro_epilogue
	.type	default_function_pro_epilogue, @function
default_function_pro_epilogue:
.LFB17:
	.loc 1 540 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$8, %esp
.LCFI10:
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 541 0
	leave
	ret
.LFE17:
	.size	default_function_pro_epilogue, .-default_function_pro_epilogue
.globl no_asm_to_stream
	.type	no_asm_to_stream, @function
no_asm_to_stream:
.LFB18:
	.loc 1 547 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	.loc 1 548 0
	popl	%ebp
	ret
.LFE18:
	.size	no_asm_to_stream, .-no_asm_to_stream
	.section	.rodata
.LC14:
	.string	" #APP\n"
	.text
.globl app_enable
	.type	app_enable, @function
app_enable:
.LFB19:
	.loc 1 555 0
	pushl	%ebp
.LCFI13:
	movl	%esp, %ebp
.LCFI14:
	pushl	%ebx
.LCFI15:
	subl	$20, %esp
.LCFI16:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 556 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L22
	.loc 1 558 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 559 0
	movl	$1, app_on@GOTOFF(%ebx)
.L22:
	.loc 1 561 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	app_enable, .-app_enable
	.section	.rodata
.LC15:
	.string	" #NO_APP\n"
	.text
.globl app_disable
	.type	app_disable, @function
app_disable:
.LFB20:
	.loc 1 568 0
	pushl	%ebp
.LCFI17:
	movl	%esp, %ebp
.LCFI18:
	pushl	%ebx
.LCFI19:
	subl	$20, %esp
.LCFI20:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 569 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L26
	.loc 1 571 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 572 0
	movl	$0, app_on@GOTOFF(%ebx)
.L26:
	.loc 1 574 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	app_disable, .-app_disable
.globl dbr_sequence_length
	.type	dbr_sequence_length, @function
dbr_sequence_length:
.LFB21:
	.loc 1 583 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$4, %esp
.LCFI23:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 584 0
	movl	final_sequence@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 585 0
	movl	final_sequence@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L30
.L28:
	.loc 1 587 0
	movl	$0, -4(%ebp)
.L30:
	movl	-4(%ebp), %eax
	.loc 1 588 0
	leave
	ret
.LFE21:
	.size	dbr_sequence_length, .-dbr_sequence_length
.globl init_insn_lengths
	.type	init_insn_lengths, @function
init_insn_lengths:
.LFB22:
	.loc 1 636 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$4, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 637 0
	movl	uid_shuid@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 639 0
	movl	uid_shuid@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 640 0
	movl	$0, uid_shuid@GOTOFF(%ebx)
.L33:
	.loc 1 642 0
	movl	insn_lengths@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L35
	.loc 1 644 0
	movl	insn_lengths@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 645 0
	movl	$0, insn_lengths@GOTOFF(%ebx)
	.loc 1 646 0
	movl	$0, insn_lengths_max_uid@GOTOFF(%ebx)
.L35:
	.loc 1 649 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 651 0
	movl	uid_align@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 653 0
	movl	uid_align@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 654 0
	movl	$0, uid_align@GOTOFF(%ebx)
.L39:
	.loc 1 656 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	init_insn_lengths, .-init_insn_lengths
.globl get_attr_length
	.type	get_attr_length, @function
get_attr_length:
.LFB23:
	.loc 1 664 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%esi
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$32, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 668 0
	movl	$0, -12(%ebp)
	.loc 1 670 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	insn_lengths_max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L41
	.loc 1 671 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L43
.L41:
	.loc 1 673 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$42, %eax
	movl	%eax, -32(%ebp)
	cmpl	$5, -32(%ebp)
	ja	.L44
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	.L49@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L49:
	.long	.L45@GOTOFF
	.long	.L46@GOTOFF
	.long	.L47@GOTOFF
	.long	.L48@GOTOFF
	.long	.L48@GOTOFF
	.long	.L48@GOTOFF
	.text
.L48:
	.loc 1 678 0
	movl	$0, -28(%ebp)
	jmp	.L43
.L47:
	.loc 1 681 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 682 0
	jmp	.L44
.L46:
	.loc 1 685 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 686 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L44
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L44
	.loc 1 692 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 693 0
	jmp	.L44
.L45:
	.loc 1 696 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 697 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L53
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L55
.L53:
	.loc 1 698 0
	movl	$0, -28(%ebp)
	jmp	.L43
.L55:
	.loc 1 700 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L56
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L58
.L56:
	.loc 1 701 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_insn_count
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	imull	%esi, %eax
	movl	%eax, -12(%ebp)
	.loc 1 700 0
	jmp	.L44
.L58:
	.loc 1 702 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L59
	.loc 1 703 0
	movl	$0, -16(%ebp)
	jmp	.L61
.L62:
	.loc 1 704 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_attr_length@PLT
	addl	%eax, -12(%ebp)
	.loc 1 703 0
	addl	$1, -16(%ebp)
.L61:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L62
	jmp	.L44
.L59:
	.loc 1 706 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -12(%ebp)
.L44:
	.loc 1 714 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_adjust_insn_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 716 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L43:
	movl	-28(%ebp), %eax
	.loc 1 720 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE23:
	.size	get_attr_length, .-get_attr_length
	.type	final_addr_vec_align, @function
final_addr_vec_align:
.LFB24:
	.loc 1 799 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$36, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 800 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 802 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L66
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L68
.L66:
	movl	$16, -28(%ebp)
	jmp	.L69
.L68:
	movl	$8, -28(%ebp)
.L69:
	movl	-28(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jge	.L70
	.loc 1 803 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L72
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L74
.L72:
	movl	$16, -24(%ebp)
	jmp	.L75
.L74:
	movl	$8, -24(%ebp)
.L75:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
.L70:
	.loc 1 804 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	.loc 1 806 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	final_addr_vec_align, .-final_addr_vec_align
.globl label_to_alignment
	.type	label_to_alignment, @function
label_to_alignment:
.LFB25:
	.loc 1 830 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 831 0
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	.loc 1 832 0
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	label_to_alignment, .-label_to_alignment
	.type	align_fuzz, @function
align_fuzz:
.LFB26:
	.loc 1 868 0
	pushl	%ebp
.LCFI40:
	movl	%esp, %ebp
.LCFI41:
	pushl	%ebx
.LCFI42:
	subl	$32, %esp
.LCFI43:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 869 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 871 0
	movl	16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -24(%ebp)
	.loc 1 872 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 873 0
	movl	$0, -16(%ebp)
	.loc 1 875 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L80
.L81:
.LBB7:
	.loc 1 879 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 880 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	16(%edx,%eax,4), %ecx
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	.loc 1 881 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L82
	.loc 1 883 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, 16(%ebp)
	.loc 1 884 0
	movl	16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	.loc 1 885 0
	movl	-8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L84
	.loc 1 887 0
	movl	-12(%ebp), %eax
	negl	%eax
	movl	%eax, %ecx
	xorl	20(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-8(%ebp), %eax
	subl	%edx, %eax
	movl	%ecx, %edx
	andl	%eax, %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 888 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L84:
.LBE7:
	.loc 1 875 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
.L80:
	cmpl	$0, -28(%ebp)
	jne	.L81
.L82:
	.loc 1 890 0
	movl	-16(%ebp), %eax
	.loc 1 891 0
	addl	$32, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	align_fuzz, .-align_fuzz
.globl insn_current_reference_address
	.type	insn_current_reference_address, @function
insn_current_reference_address:
.LFB27:
	.loc 1 908 0
	pushl	%ebp
.LCFI44:
	movl	%esp, %ebp
.LCFI45:
	pushl	%esi
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$36, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 912 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L88
	.loc 1 913 0
	movl	$0, -28(%ebp)
	jmp	.L90
.L88:
	.loc 1 915 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 916 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 917 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L91
	.loc 1 923 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L90
.L91:
	.loc 1 924 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 928 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jge	.L93
	.loc 1 931 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_last_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %esi
	movl	length_unit_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	align_fuzz
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, -28(%ebp)
	jmp	.L90
.L93:
	.loc 1 937 0
	movl	length_unit_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	align_fuzz
	movl	%eax, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	%edx, -28(%ebp)
.L90:
	movl	-28(%ebp), %eax
	.loc 1 940 0
	addl	$36, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE27:
	.size	insn_current_reference_address, .-insn_current_reference_address
.globl compute_alignments
	.type	compute_alignments, @function
compute_alignments:
.LFB28:
	.loc 1 945 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$68, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 949 0
	movl	label_align@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L97
	.loc 1 951 0
	movl	label_align@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 952 0
	movl	$0, label_align@GOTOFF(%ebx)
.L97:
	.loc 1 955 0
	call	max_label_num@PLT
	movl	%eax, max_labelno@GOTOFF(%ebx)
	.loc 1 956 0
	call	get_first_label_num@PLT
	movl	%eax, min_labelno@GOTOFF(%ebx)
	.loc 1 957 0
	movl	max_labelno@GOTOFF(%ebx), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, label_align@GOTOFF(%ebx)
	.loc 1 961 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L124
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L101
	.loc 1 962 0
	jmp	.L124
.L101:
	.loc 1 964 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L103
.L104:
.LBB8:
	.loc 1 966 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 967 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 970 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L105
	.loc 1 972 0
	movl	align_labels_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 973 0
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 975 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L107
.L108:
	.loc 1 977 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L109
	.loc 1 978 0
	movl	$1, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -56(%ebp)
	movl	-56(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, -20(%ebp)
	jmp	.L111
.L109:
	.loc 1 980 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	72(%eax), %edx
	movl	-8(%ebp), %eax
	movl	28(%eax), %eax
	imull	%edx, %eax
	leal	5000(%eax), %ecx
	movl	$1759218605, -56(%ebp)
	movl	-56(%ebp), %eax
	imull	%ecx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, -16(%ebp)
.L111:
	.loc 1 975 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L107:
	cmpl	$0, -8(%ebp)
	jne	.L108
	.loc 1 993 0
	cmpl	$0, -12(%ebp)
	jne	.L113
	cmpl	$1000, -16(%ebp)
	jg	.L115
	movl	-28(%ebp), %eax
	movl	72(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	72(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jle	.L113
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	movl	72(%eax), %ecx
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	72(%eax), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, %ecx
	jg	.L113
.L115:
	.loc 1 999 0
	movl	align_jumps_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1000 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	.L113
	.loc 1 1002 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1003 0
	movl	align_jumps_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L113:
	.loc 1 1008 0
	cmpl	$0, -12(%ebp)
	je	.L119
	movl	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	cmpl	$1000, %eax
	jle	.L119
	movl	-20(%ebp), %eax
	addl	%eax, %eax
	cmpl	-16(%ebp), %eax
	jge	.L119
	.loc 1 1012 0
	movl	align_loops_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1013 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	.L119
	.loc 1 1015 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1016 0
	movl	align_loops_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L119:
	.loc 1 1019 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 1020 0
	movl	-24(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movw	%ax, 2(%edx)
.L105:
.LBE8:
	.loc 1 964 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L103:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L104
.L124:
	.loc 1 1022 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	compute_alignments, .-compute_alignments
	.section	.rodata
	.type	__FUNCTION__.14570, @object
	.size	__FUNCTION__.14570, 17
__FUNCTION__.14570:
	.string	"shorten_branches"
.LC16:
	.string	"../../../kgccfe/gnu/final.c"
.LC17:
	.string	"insn_addresses"
.LC18:
	.string	"negative insn length"
	.text
.globl shorten_branches
	.type	shorten_branches, @function
shorten_branches:
.LFB29:
	.loc 1 1044 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	pushl	%edi
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$252, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1053 0
	movl	$1, -148(%ebp)
	.loc 1 1062 0
	call	get_max_uid@PLT
	movl	%eax, -168(%ebp)
	.loc 1 1064 0
	movl	-168(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, uid_shuid@GOTOFF(%ebx)
	.loc 1 1066 0
	call	max_label_num@PLT
	movl	%eax, %edx
	movl	max_labelno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L126
.LBB9:
	.loc 1 1068 0
	movl	max_labelno@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	.loc 1 1072 0
	call	max_label_num@PLT
	movl	%eax, max_labelno@GOTOFF(%ebx)
	.loc 1 1074 0
	movl	max_labelno@GOTOFF(%ebx), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -128(%ebp)
	.loc 1 1075 0
	movl	min_labelno@GOTOFF(%ebx), %edx
	movl	-132(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -124(%ebp)
	.loc 1 1077 0
	movl	-128(%ebp), %eax
	sall	$2, %eax
	movl	label_align@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, label_align@GOTOFF(%ebx)
	.loc 1 1082 0
	movl	-124(%ebp), %eax
	cmpl	-128(%ebp), %eax
	jle	.L128
	.loc 1 1083 0
	leal	__FUNCTION__.14570@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1083, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L128:
	.loc 1 1085 0
	movl	-124(%ebp), %edx
	movl	-128(%ebp), %eax
	subl	%edx, %eax
	leal	0(,%eax,4), %ecx
	movl	-124(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	cld
	movl	$0, %eax
	rep
	stosb
.L126:
.LBE9:
	.loc 1 1095 0
	movl	$0, -160(%ebp)
	.loc 1 1096 0
	movl	$0, -156(%ebp)
	.loc 1 1098 0
	call	get_insns@PLT
	movl	%eax, -172(%ebp)
	movl	$1, -164(%ebp)
	jmp	.L130
.L131:
.LBB10:
	.loc 1 1102 0
	movl	-172(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -164(%ebp)
	.loc 1 1103 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L132
	.loc 1 1111 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L134
.LBB11:
	.loc 1 1116 0
	movl	-172(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -120(%ebp)
	.loc 1 1117 0
	movl	-160(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jge	.L136
	.loc 1 1119 0
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1120 0
	movl	-172(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	2(%eax), %eax
	cwtl
	movl	%eax, -156(%ebp)
.L136:
	.loc 1 1123 0
	movl	align_labels_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1124 0
	movl	-160(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jge	.L138
	.loc 1 1126 0
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1127 0
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
.L138:
	.loc 1 1129 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1147 0
	movl	-172(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-160(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 1148 0
	movl	-172(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-156(%ebp), %eax
	movw	%ax, 2(%edx)
	.loc 1 1149 0
	movl	$0, -160(%ebp)
	.loc 1 1150 0
	movl	$0, -156(%ebp)
	jmp	.L132
.L134:
.LBE11:
	.loc 1 1152 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L132
.LBB12:
	.loc 1 1156 0
	movl	-172(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L141
.L142:
	.loc 1 1158 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L143
	.loc 1 1160 0
	movl	$0, -120(%ebp)
	.loc 1 1161 0
	movl	-160(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jge	.L132
	.loc 1 1163 0
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1164 0
	movl	$0, -156(%ebp)
	.loc 1 1166 0
	jmp	.L132
.L143:
	.loc 1 1157 0
	movl	-108(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -108(%ebp)
.L141:
	.loc 1 1156 0
	cmpl	$0, -108(%ebp)
	je	.L132
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L142
.L132:
.LBE12:
.LBE10:
	.loc 1 1098 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
.L130:
	cmpl	$0, -172(%ebp)
	jne	.L131
	.loc 1 1173 0
	movl	-168(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, insn_lengths@GOTOFF(%ebx)
	.loc 1 1174 0
	movl	-168(%ebp), %eax
	movl	%eax, insn_lengths_max_uid@GOTOFF(%ebx)
	.loc 1 1177 0
	movl	-168(%ebp), %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1179 0
	movl	-168(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -144(%ebp)
	.loc 1 1186 0
	movl	-168(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, uid_align@GOTOFF(%ebx)
	.loc 1 1188 0
	movl	$16, -164(%ebp)
	jmp	.L149
.L150:
	.loc 1 1189 0
	movl	-164(%ebp), %eax
	movl	$0, -236(%ebp,%eax,4)
.L149:
	.loc 1 1188 0
	subl	$1, -164(%ebp)
	cmpl	$0, -164(%ebp)
	jns	.L150
	.loc 1 1190 0
	call	get_last_insn@PLT
	movl	%eax, -152(%ebp)
	.loc 1 1191 0
	jmp	.L152
.L153:
.LBB13:
	.loc 1 1193 0
	movl	-152(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 1195 0
	movl	-152(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L154
	movl	-152(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -240(%ebp)
	jmp	.L156
.L154:
	movl	$0, -240(%ebp)
.L156:
	movl	-240(%ebp), %eax
	movl	%eax, -100(%ebp)
	.loc 1 1196 0
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1197 0
	cmpl	$0, -100(%ebp)
	je	.L157
	.loc 1 1200 0
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	-236(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	.loc 1 1201 0
	movl	-100(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -164(%ebp)
	jmp	.L159
.L160:
	.loc 1 1202 0
	movl	-164(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	%eax, -236(%ebp,%edx,4)
	.loc 1 1201 0
	subl	$1, -164(%ebp)
.L159:
	cmpl	$0, -164(%ebp)
	jns	.L160
.L157:
.LBE13:
	.loc 1 1191 0
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp)
.L152:
	cmpl	$0, -152(%ebp)
	jne	.L153
	.loc 1 1263 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 1264 0
	jmp	.L162
.L163:
	.loc 1 1267 0
	movl	-172(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1269 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 1271 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L164
.LBB14:
	.loc 1 1273 0
	movl	-172(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -96(%ebp)
	.loc 1 1274 0
	cmpl	$0, -96(%ebp)
	je	.L164
.LBB15:
	.loc 1 1276 0
	movl	-96(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -92(%ebp)
	.loc 1 1277 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	-92(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-92(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	movl	%eax, -88(%ebp)
	.loc 1 1278 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-88(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, (%ecx)
.L164:
.LBE15:
.LBE14:
	.loc 1 1282 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-136(%ebp), %ecx
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 16(%esi,%ecx,4)
	.loc 1 1284 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L167
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	je	.L167
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L167
	.loc 1 1287 0
	movl	-172(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L167
	.loc 1 1290 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1291 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L175
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L174
	jmp	.L175
.L174:
	.loc 1 1301 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L176
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L178
.L176:
	.loc 1 1302 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %edi
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_insn_count
	movl	%eax, %esi
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	imull	%esi, %eax
	movl	%eax, (%edi)
	.loc 1 1301 0
	jmp	.L175
.L178:
	.loc 1 1303 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L179
.LBB16:
	.loc 1 1308 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	const_num_delay_slots@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1315 0
	movl	$0, -84(%ebp)
	jmp	.L181
.L182:
.LBB17:
	.loc 1 1317 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1318 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1321 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	je	.L183
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L185
.L183:
	.loc 1 1323 0
	movl	-76(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, (%esp)
	call	asm_insn_count
	movl	%eax, %esi
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	imull	%esi, %eax
	movl	%eax, -68(%ebp)
	.loc 1 1321 0
	jmp	.L186
.L185:
	.loc 1 1326 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -68(%ebp)
.L186:
	.loc 1 1328 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1329 0
	cmpl	$0, -80(%ebp)
	je	.L187
	.loc 1 1331 0
	movl	-72(%ebp), %eax
	movl	%eax, %esi
	addl	-144(%ebp), %esi
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_variable_length_p@PLT
	movb	%al, (%esi)
	movzbl	(%esi), %eax
	testb	%al, %al
	je	.L189
	.loc 1 1333 0
	movl	-136(%ebp), %eax
	addl	-144(%ebp), %eax
	movb	$1, (%eax)
.L189:
	.loc 1 1334 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	-72(%ebp), %ecx
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 16(%esi,%ecx,4)
	jmp	.L191
.L187:
	.loc 1 1338 0
	movl	-72(%ebp), %eax
	addl	-144(%ebp), %eax
	movb	$0, (%eax)
.L191:
	.loc 1 1339 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	addl	-68(%ebp), %eax
	movl	%eax, (%ecx)
.LBE17:
	.loc 1 1315 0
	addl	$1, -84(%ebp)
.L181:
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-84(%ebp), %eax
	jg	.L182
	jmp	.L175
.L179:
.LBE16:
	.loc 1 1342 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L175
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L175
	.loc 1 1344 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, (%esi)
	.loc 1 1345 0
	movl	-136(%ebp), %eax
	movl	%eax, %esi
	addl	-144(%ebp), %esi
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_variable_length_p@PLT
	movb	%al, (%esi)
.L175:
	.loc 1 1350 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_adjust_insn_length@PLT
	movl	%eax, (%esi)
	.loc 1 1351 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L167
	.loc 1 1352 0
	leal	__FUNCTION__.14570@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$1352, 12(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L167:
	.loc 1 1265 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
.L162:
	.loc 1 1264 0
	cmpl	$0, -172(%ebp)
	jne	.L163
	.loc 1 1360 0
	jmp	.L197
.L198:
	.loc 1 1362 0
	movl	$0, -148(%ebp)
	.loc 1 1363 0
	movl	insn_current_align@GOT(%ebx), %eax
	movl	$15, (%eax)
	.loc 1 1364 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 1365 0
	jmp	.L199
.L200:
.LBB18:
	.loc 1 1374 0
	movl	-172(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1376 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L201
.LBB19:
	.loc 1 1378 0
	movl	-172(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -52(%ebp)
	.loc 1 1379 0
	movl	insn_current_align@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -52(%ebp)
	jle	.L203
.LBB20:
	.loc 1 1381 0
	movl	-52(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -48(%ebp)
	.loc 1 1382 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	-48(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-48(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1383 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %ecx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, (%ecx)
	.loc 1 1384 0
	movl	insn_current_align@GOT(%ebx), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1385 0
	movl	insn_current_address@GOT(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L205
.L203:
.LBE20:
	.loc 1 1388 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L205:
	.loc 1 1389 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-136(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1390 0
	jmp	.L206
.L201:
.LBE19:
	.loc 1 1393 0
	movl	length_unit_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1394 0
	movl	insn_current_align@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jge	.L207
	.loc 1 1395 0
	movl	insn_current_align@GOT(%ebx), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
.L207:
	.loc 1 1397 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-136(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	insn_last_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1398 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-136(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1509 0
	movl	-136(%ebp), %eax
	addl	-144(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L209
	.loc 1 1511 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L211
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L211
.LBB21:
	.loc 1 1516 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1517 0
	movl	$0, -40(%ebp)
	jmp	.L214
.L215:
.LBB22:
	.loc 1 1519 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1520 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1522 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1524 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
.LBE22:
	.loc 1 1517 0
	addl	$1, -40(%ebp)
.L214:
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L215
	.loc 1 1511 0
	jmp	.L206
.L211:
.LBE21:
	.loc 1 1528 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1530 0
	jmp	.L206
.L209:
	.loc 1 1533 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L218
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L218
.LBB23:
	.loc 1 1537 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1538 0
	movl	$0, -64(%ebp)
	.loc 1 1539 0
	movl	$0, -28(%ebp)
	jmp	.L221
.L222:
.LBB24:
	.loc 1 1541 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1542 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1545 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1549 0
	movl	-20(%ebp), %eax
	addl	-144(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L223
	.loc 1 1550 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L225
.L223:
	.loc 1 1552 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_current_length@PLT
	movl	%eax, -16(%ebp)
.L225:
	.loc 1 1554 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L226
	.loc 1 1556 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1557 0
	movl	$1, -148(%ebp)
.L226:
	.loc 1 1559 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1560 0
	movl	-16(%ebp), %eax
	addl	%eax, -64(%ebp)
.LBE24:
	.loc 1 1539 0
	addl	$1, -28(%ebp)
.L221:
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L222
	.loc 1 1533 0
	jmp	.L229
.L218:
.LBE23:
	.loc 1 1565 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_current_length@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1566 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L229:
	.loc 1 1571 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1572 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_adjust_insn_length@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1573 0
	movl	-60(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1576 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L206
	.loc 1 1578 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1579 0
	movl	$1, -148(%ebp)
.L206:
.LBE18:
	.loc 1 1366 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
.L199:
	.loc 1 1365 0
	cmpl	$0, -172(%ebp)
	jne	.L200
	.loc 1 1583 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L232
.L197:
	.loc 1 1360 0
	cmpl	$0, -148(%ebp)
	jne	.L198
.L232:
	.loc 1 1587 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1590 0
	addl	$252, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE29:
	.size	shorten_branches, .-shorten_branches
	.type	asm_insn_count, @function
asm_insn_count:
.LFB30:
	.loc 1 1600 0
	pushl	%ebp
.LCFI59:
	movl	%esp, %ebp
.LCFI60:
	pushl	%ebx
.LCFI61:
	subl	$36, %esp
.LCFI62:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1602 0
	movl	$1, -8(%ebp)
	.loc 1 1604 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	jne	.L235
	.loc 1 1605 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L238
.L235:
	.loc 1 1607 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_asm_operands@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1609 0
	jmp	.L238
.L239:
	.loc 1 1610 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$59, %al
	je	.L240
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L242
.L240:
	.loc 1 1611 0
	addl	$1, -8(%ebp)
.L242:
	.loc 1 1609 0
	addl	$1, -12(%ebp)
.L238:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L239
	.loc 1 1613 0
	movl	-8(%ebp), %eax
	.loc 1 1614 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	asm_insn_count, .-asm_insn_count
.globl final_start_function
	.type	final_start_function, @function
final_start_function:
.LFB31:
	.loc 1 1632 0
	pushl	%ebp
.LCFI63:
	movl	%esp, %ebp
.LCFI64:
	pushl	%esi
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$16, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1633 0
	movl	$0, block_depth@GOTOFF(%ebx)
	.loc 1 1635 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1650 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L246
	.loc 1 1651 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	notice_source_line
.L246:
	.loc 1 1652 0
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%eax, high_function_linenum@GOTOFF(%ebx)
	movl	high_function_linenum@GOTOFF(%ebx), %eax
	movl	%eax, high_block_linenum@GOTOFF(%ebx)
	.loc 1 1654 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %ecx
	movl	last_filename@GOTOFF(%ebx), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 1657 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L248
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L248
	.loc 1 1658 0
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	dwarf2out_begin_prologue@PLT
.L248:
	.loc 1 1674 0
	call	dwarf2out_do_frame@PLT
	testl	%eax, %eax
	je	.L251
	.loc 1 1675 0
	movl	$0, (%esp)
	call	dwarf2out_frame_debug@PLT
.L251:
	.loc 1 1680 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L253
	.loc 1 1682 0
	call	remove_unnecessary_notes@PLT
	.loc 1 1683 0
	call	scope_to_insns_finalize@PLT
	.loc 1 1684 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	number_blocks@PLT
	.loc 1 1688 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
.L253:
	.loc 1 1692 0
	movl	targetm@GOT(%ebx), %eax
	movl	56(%eax), %esi
	call	get_frame_size@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	.loc 1 1700 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE31:
	.size	final_start_function, .-final_start_function
	.type	profile_after_prologue, @function
profile_after_prologue:
.LFB32:
	.loc 1 1705 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$4, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1707 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L259
	.loc 1 1708 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	profile_function
.L259:
	.loc 1 1710 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	profile_after_prologue, .-profile_after_prologue
	.section	.rodata
.LC19:
	.string	"\t.align\t%d\n"
.LC20:
	.string	"LP"
.LC21:
	.string	"%s%s%d:\n"
.LC22:
	.string	"mips16 function profiling"
.LC23:
	.string	"\t.set\tnoat\n"
	.align 4
.LC24:
	.string	"\tmove\t%s,%s\t\t# save current return address\n"
.LC25:
	.string	"dsubu"
.LC26:
	.string	"subu"
	.align 4
.LC27:
	.string	"\t%s\t%s,%s,%d\t\t# _mcount pops 2 words from  stack\n"
.LC28:
	.string	"\tjal\t_mcount\n"
.LC29:
	.string	"\t.set\tat\n"
	.text
	.type	profile_function, @function
profile_function:
.LFB33:
	.loc 1 1715 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%ebx
.LCFI74:
	subl	$84, %esp
.LCFI75:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB25:
	.loc 1 1730 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L261
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L263
.L261:
	movl	$128, -60(%ebp)
	jmp	.L264
.L263:
	movl	$64, -60(%ebp)
.L264:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L265
	movl	$64, -56(%ebp)
	jmp	.L267
.L265:
	movl	$32, -56(%ebp)
.L267:
	movl	-56(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jge	.L268
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L270
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L272
.L270:
	movl	$128, -52(%ebp)
	jmp	.L273
.L272:
	movl	$64, -52(%ebp)
.L273:
	movl	-52(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L274
.L268:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L275
	movl	$64, -48(%ebp)
	jmp	.L277
.L275:
	movl	$32, -48(%ebp)
.L277:
	movl	-48(%ebp), %eax
	movl	%eax, -64(%ebp)
.L274:
	movl	-64(%ebp), %edx
	movl	%edx, -8(%ebp)
	.loc 1 1731 0
	call	data_section@PLT
	.loc 1 1732 0
	movl	-8(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	floor_log2_wide@PLT
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1733 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	272(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 1734 0
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L278
	movl	$8, -40(%ebp)
	jmp	.L280
.L278:
	movl	$4, -40(%ebp)
.L280:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	$1, 12(%esp)
	movl	-44(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	assemble_integer@PLT
.LBE25:
	.loc 1 1737 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
	.loc 1 1763 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L281
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L281:
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$11, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	reg_names@GOT(%ebx), %eax
	movl	124(%eax), %edx
	movl	reg_names@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L283
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L283
	movl	$16, -36(%ebp)
	jmp	.L286
.L283:
	movl	$8, -36(%ebp)
.L286:
	movl	reg_names@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	reg_names@GOT(%ebx), %eax
	movl	116(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L287
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L289
.L287:
	leal	.LC26@GOTOFF(%ebx), %edx
	movl	%edx, -24(%ebp)
.L289:
	movl	-36(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$13, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 1788 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	profile_function, .-profile_function
.globl final_end_function
	.type	final_end_function, @function
final_end_function:
.LFB34:
	.loc 1 1796 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	pushl	%esi
.LCFI78:
	pushl	%ebx
.LCFI79:
	subl	$16, %esp
.LCFI80:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1797 0
	call	app_disable@PLT
	.loc 1 1799 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %edx
	movl	high_function_linenum@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1803 0
	movl	targetm@GOT(%ebx), %eax
	movl	68(%eax), %esi
	call	get_frame_size@PLT
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.loc 1 1806 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %ecx
	movl	last_filename@GOTOFF(%ebx), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 1809 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L296
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L296
	call	dwarf2out_do_frame@PLT
	testl	%eax, %eax
	je	.L296
	.loc 1 1811 0
	movl	last_filename@GOTOFF(%ebx), %eax
	movl	last_linenum@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	dwarf2out_end_epilogue@PLT
.L296:
	.loc 1 1813 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	final_end_function, .-final_end_function
	.section	.rodata
	.type	__FUNCTION__.15309, @object
	.size	__FUNCTION__.15309, 6
__FUNCTION__.15309:
	.string	"final"
	.text
.globl final
	.type	final, @function
final:
.LFB35:
	.loc 1 1832 0
	pushl	%ebp
.LCFI81:
	movl	%esp, %ebp
.LCFI82:
	pushl	%ebx
.LCFI83:
	subl	$36, %esp
.LCFI84:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1834 0
	movl	$0, -16(%ebp)
	.loc 1 1835 0
	movl	$0, -12(%ebp)
	.loc 1 1837 0
	movl	$0, last_ignored_compare@GOTOFF(%ebx)
	.loc 1 1838 0
	movl	$1, new_block@GOTOFF(%ebx)
	.loc 1 1868 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L298
.L299:
	.loc 1 1869 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L300
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-16(%ebp), %eax
	jle	.L300
	.loc 1 1870 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L300:
	.loc 1 1868 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L298:
	cmpl	$0, -20(%ebp)
	jne	.L299
	.loc 1 1873 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, line_note_exists@GOTOFF(%ebx)
	.loc 1 1875 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L304
.L305:
	.loc 1 1877 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jle	.L306
	.loc 1 1878 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L306:
	.loc 1 1879 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L308
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L308
	.loc 1 1880 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	line_note_exists@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movb	$1, (%eax)
.L308:
	.loc 1 1875 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L304:
	cmpl	$0, -20(%ebp)
	jne	.L305
	.loc 1 1895 0
	call	init_recog@PLT
	.loc 1 1900 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L312
.L313:
	.loc 1 1903 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L314
	.loc 1 1907 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L316
	.loc 1 1908 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	$-1, (%eax)
	jmp	.L318
.L316:
	.loc 1 1910 0
	leal	__FUNCTION__.15309@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1910, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L314:
	.loc 1 1913 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L318:
	.loc 1 1916 0
	movl	$0, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	final_scan_insn@PLT
	movl	%eax, -20(%ebp)
.L312:
	.loc 1 1900 0
	cmpl	$0, -20(%ebp)
	jne	.L313
	.loc 1 1922 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L320
.LBB26:
	.loc 1 1924 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1926 0
	movl	functions_tail@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1927 0
	movl	-8(%ebp), %eax
	movl	%eax, functions_tail@GOTOFF(%ebx)
	.loc 1 1929 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1930 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	decl_assembler_name@PLT
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	xstrdup@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 1932 0
	movl	profile_info@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1933 0
	movl	profile_info@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L320:
.LBE26:
	.loc 1 1936 0
	movl	line_note_exists@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1937 0
	movl	$0, line_note_exists@GOTOFF(%ebx)
	.loc 1 1938 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	final, .-final
	.section	.rodata
	.type	__FUNCTION__.15377, @object
	.size	__FUNCTION__.15377, 18
__FUNCTION__.15377:
	.string	"get_insn_template"
	.text
.globl get_insn_template
	.type	get_insn_template, @function
get_insn_template:
.LFB36:
	.loc 1 1944 0
	pushl	%ebp
.LCFI85:
	movl	%esp, %ebp
.LCFI86:
	pushl	%ebx
.LCFI87:
	subl	$36, %esp
.LCFI88:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1945 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1946 0
	movl	8(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	3(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	cmpl	$2, -28(%ebp)
	je	.L326
	cmpl	$3, -28(%ebp)
	je	.L327
	cmpl	$1, -28(%ebp)
	je	.L325
	jmp	.L324
.L325:
	.loc 1 1949 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L328
.L326:
	.loc 1 1951 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L328
.L327:
	.loc 1 1953 0
	cmpl	$0, 12(%ebp)
	jne	.L329
	.loc 1 1954 0
	leal	__FUNCTION__.15377@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1954, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L329:
	.loc 1 1955 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	recog_data@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	jmp	.L328
.L324:
	.loc 1 1958 0
	leal	__FUNCTION__.15377@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1958, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L328:
	movl	-24(%ebp), %eax
	.loc 1 1960 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	get_insn_template, .-get_insn_template
	.section	.rodata
	.type	__FUNCTION__.15406, @object
	.size	__FUNCTION__.15406, 29
__FUNCTION__.15406:
	.string	"output_alternate_entry_point"
.LC30:
	.string	"\t.weak\t"
.LC31:
	.string	"\t.type\t"
.LC32:
	.string	", "
.LC33:
	.string	"function"
.LC34:
	.string	"@%s"
.LC35:
	.string	":\n"
	.text
	.type	output_alternate_entry_point, @function
output_alternate_entry_point:
.LFB37:
	.loc 1 1971 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%ebx
.LCFI91:
	subl	$36, %esp
.LCFI92:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1972 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1974 0
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax), %edx
	movl	12(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -24(%ebp)
	cmpl	$2, -24(%ebp)
	je	.L335
	cmpl	$3, -24(%ebp)
	je	.L336
	cmpl	$1, -24(%ebp)
	je	.L334
	jmp	.L333
.L336:
	.loc 1 1978 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
.L335:
	.loc 1 1981 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L334:
	.loc 1 1984 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
	.loc 1 1986 0
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 1993 0
	jmp	.L337
.L333:
	.loc 1 1991 0
	leal	__FUNCTION__.15406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1991, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L337:
	.loc 1 1993 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	output_alternate_entry_point, .-output_alternate_entry_point
	.section	.rodata
	.type	__FUNCTION__.15444, @object
	.size	__FUNCTION__.15444, 16
__FUNCTION__.15444:
	.string	"final_scan_insn"
.LC36:
	.string	" #"
.LC37:
	.string	"\t%s basic block %d\n"
.LC38:
	.string	"LEHB"
.LC39:
	.string	"LEHE"
.LC40:
	.string	"L"
.LC41:
	.string	".dword"
.LC42:
	.string	".word"
.LC43:
	.string	"\t%s\t%sL%d\n"
.LC44:
	.string	"\t.half\t%sL%d-%sL%d\n"
.LC45:
	.string	"\t%s\t%sL%d-%sLS%d\n"
.LC46:
	.string	".gpdword"
.LC47:
	.string	".gpword"
.LC48:
	.string	"\t%s\n"
.LC49:
	.string	"\t.set\tmacro\n"
.LC50:
	.string	"\t.set\treorder\n"
.LC51:
	.string	""
.LC52:
	.string	"could not split insn"
	.text
.globl final_scan_insn
	.type	final_scan_insn, @function
final_scan_insn:
.LFB38:
	.loc 1 2010 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	pushl	%ebx
.LCFI95:
	subl	$212, %esp
.LCFI96:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -124(%ebp)
	.loc 1 2010 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 2015 0
	movl	insn_counter@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, insn_counter@GOTOFF(%ebx)
	.loc 1 2019 0
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L339
	.loc 1 2020 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -176(%ebp)
	jmp	.L341
.L339:
	.loc 1 2022 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -172(%ebp)
	cmpl	$46, -172(%ebp)
	je	.L344
	cmpl	$47, -172(%ebp)
	je	.L345
	cmpl	$45, -172(%ebp)
	je	.L343
	jmp	.L342
.L345:
	.loc 1 2025 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2028 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	addl	$99, %eax
	movl	%eax, -180(%ebp)
	cmpl	$99, -180(%ebp)
	ja	.L348
	movl	-180(%ebp), %eax
	sall	$2, %eax
	movl	.L360@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L360:
	.long	.L346@GOTOFF
	.long	.L350@GOTOFF
	.long	.L351@GOTOFF
	.long	.L346@GOTOFF
	.long	.L346@GOTOFF
	.long	.L346@GOTOFF
	.long	.L346@GOTOFF
	.long	.L346@GOTOFF
	.long	.L346@GOTOFF
	.long	.L352@GOTOFF
	.long	.L353@GOTOFF
	.long	.L354@GOTOFF
	.long	.L355@GOTOFF
	.long	.L356@GOTOFF
	.long	.L357@GOTOFF
	.long	.L346@GOTOFF
	.long	.L358@GOTOFF
	.long	.L346@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L348@GOTOFF
	.long	.L346@GOTOFF
	.text
.L358:
	.loc 1 2045 0
	movl	flag_debug_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L346
	.loc 1 2046 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %eax
	movl	44(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 12(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2048 0
	jmp	.L346
.L356:
	.loc 1 2051 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 16(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2053 0
	jmp	.L346
.L357:
	.loc 1 2056 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 16(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 2058 0
	jmp	.L346
.L352:
	.loc 1 2061 0
	movl	targetm@GOT(%ebx), %eax
	movl	60(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2062 0
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	profile_after_prologue
	.loc 1 2063 0
	jmp	.L346
.L353:
	.loc 1 2066 0
	movl	targetm@GOT(%ebx), %eax
	movl	64(%eax), %edx
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 2067 0
	jmp	.L346
.L355:
	.loc 1 2070 0
	call	app_disable@PLT
	.loc 1 2071 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	44(%eax), %ecx
	movl	last_filename@GOTOFF(%ebx), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 2072 0
	jmp	.L346
.L350:
	.loc 1 2075 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L364
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L364
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L364
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L364
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L364
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L346
.L364:
.LBB27:
	.loc 1 2082 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	movl	%eax, -104(%ebp)
	.loc 1 2084 0
	call	app_disable@PLT
	.loc 1 2085 0
	movl	block_depth@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, block_depth@GOTOFF(%ebx)
	.loc 1 2086 0
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%eax, high_block_linenum@GOTOFF(%ebx)
	.loc 1 2089 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %ecx
	movl	-104(%ebp), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 2092 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
	.loc 1 2094 0
	jmp	.L346
.L351:
.LBE27:
	.loc 1 2097 0
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	je	.L371
	movl	debug_info_level@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L371
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$3, %eax
	je	.L371
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	je	.L371
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$7, %eax
	je	.L371
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$6, %eax
	jne	.L346
.L371:
.LBB28:
	.loc 1 2104 0
	movl	-120(%ebp), %eax
	movl	36(%eax), %eax
	movl	16(%eax), %eax
	shrl	$2, %eax
	movl	%eax, -100(%ebp)
	.loc 1 2106 0
	call	app_disable@PLT
	.loc 1 2109 0
	movl	block_depth@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, block_depth@GOTOFF(%ebx)
	.loc 1 2110 0
	movl	block_depth@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jns	.L378
	.loc 1 2111 0
	leal	__FUNCTION__.15444@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2111, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L378:
	.loc 1 2113 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	28(%eax), %ecx
	movl	-100(%ebp), %edx
	movl	high_block_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 2115 0
	jmp	.L346
.L354:
.LBE28:
	.loc 1 2121 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2122 0
	jmp	.L346
.L348:
	.loc 1 2128 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jg	.L380
	.loc 1 2129 0
	leal	__FUNCTION__.15444@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2129, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L380:
.LBB29:
	.loc 1 2134 0
	movl	$0, -92(%ebp)
	.loc 1 2138 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
	jmp	.L382
.L383:
	.loc 1 2140 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	je	.L384
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L386
.L384:
	.loc 1 2145 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L387
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-98, %eax
	je	.L386
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-97, %eax
	je	.L386
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-87, %eax
	je	.L386
.L387:
	.loc 1 2150 0
	movl	-96(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L391
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L391
.LBB30:
	.loc 1 2155 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	addl	$1, %eax
	movl	%eax, -88(%ebp)
	.loc 1 2156 0
	jmp	.L394
.L395:
	.loc 1 2158 0
	movl	line_note_exists@GOTOFF(%ebx), %edx
	movl	-88(%ebp), %eax
	leal	(%edx,%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L396
	.loc 1 2157 0
	addl	$1, -88(%ebp)
.L394:
	.loc 1 2156 0
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-88(%ebp), %eax
	jg	.L395
.L396:
	.loc 1 2161 0
	movl	-96(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-88(%ebp), %eax
	jg	.L386
	.loc 1 2162 0
	movl	$1, -92(%ebp)
	.loc 1 2163 0
	jmp	.L386
.L391:
.LBE30:
	.loc 1 2138 0
	movl	-96(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -96(%ebp)
.L382:
	cmpl	$0, -96(%ebp)
	jne	.L383
.L386:
	.loc 1 2169 0
	cmpl	$0, -92(%ebp)
	jne	.L346
	.loc 1 2171 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	notice_source_line
	.loc 1 2172 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	36(%eax), %ecx
	movl	last_filename@GOTOFF(%ebx), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 2177 0
	jmp	.L346
.L343:
.LBE29:
	.loc 1 2181 0
	call	dwarf2out_do_frame@PLT
	testl	%eax, %eax
	je	.L346
	.loc 1 2182 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf2out_frame_debug@PLT
	.loc 1 2184 0
	jmp	.L346
.L344:
	.loc 1 2189 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %edx
	movl	max_labelno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jg	.L403
.LBB31:
	.loc 1 2191 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	label_align@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -84(%ebp)
	.loc 1 2196 0
	cmpl	$0, -84(%ebp)
	je	.L403
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L403
	.loc 1 2204 0
	movl	-84(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L403:
.LBE31:
	.loc 1 2236 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2238 0
	movl	$1, new_block@GOTOFF(%ebx)
	.loc 1 2244 0
	movl	-120(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	.L408
	.loc 1 2245 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	76(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L408:
	.loc 1 2247 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L410
	.loc 1 2249 0
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2250 0
	movl	$0, app_on@GOTOFF(%ebx)
.L410:
	.loc 1 2252 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L412
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	jne	.L412
.LBB32:
	.loc 1 2255 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	44(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 2261 0
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L415
	movl	-80(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L412
.L415:
.LBB33:
	.loc 1 2273 0
	call	readonly_data_section@PLT
	.loc 1 2276 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	final_addr_vec_align
	movl	%eax, -76(%ebp)
	.loc 1 2280 0
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.LBE33:
	.loc 1 2286 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	jne	.L417
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L419
.L417:
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
.L419:
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2292 0
	jmp	.L346
.L412:
.LBE32:
	.loc 1 2295 0
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax), %edx
	movl	-120(%ebp), %eax
	movzbl	3(%eax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L420
	.loc 1 2296 0
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	output_alternate_entry_point
	jmp	.L346
.L420:
	.loc 1 2298 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 2299 0
	jmp	.L346
.L342:
.LBB34:
	.loc 1 2303 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2311 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L346
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L346
	.loc 1 2332 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L425
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	jne	.L427
.L425:
.LBB35:
	.loc 1 2338 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2341 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L429
	.loc 1 2343 0
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2344 0
	movl	$0, app_on@GOTOFF(%ebx)
.L429:
	.loc 1 2365 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	sete	%al
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2366 0
	movl	$0, -52(%ebp)
	jmp	.L431
.L432:
	.loc 1 2368 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	jne	.L433
	.loc 1 2371 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -168(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L435
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L435
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, -164(%ebp)
	jmp	.L438
.L435:
	leal	.LC42@GOTOFF(%ebx), %edx
	movl	%edx, -164(%ebp)
.L438:
	movl	-168(%ebp), %ecx
	movl	%ecx, 16(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L439
.L433:
	.loc 1 2380 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L440
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %ecx
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %edx
	movl	%ecx, 20(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L439
.L440:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L442
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -156(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L444
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L444
	leal	.LC41@GOTOFF(%ebx), %edx
	movl	%edx, -152(%ebp)
	jmp	.L447
.L444:
	leal	.LC42@GOTOFF(%ebx), %ecx
	movl	%ecx, -152(%ebp)
.L447:
	movl	-160(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	-156(%ebp), %edx
	movl	%edx, 16(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-152(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L439
.L442:
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L448
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$4, %eax
	jne	.L450
.L448:
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -148(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L451
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L451
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, -144(%ebp)
	jmp	.L454
.L451:
	leal	.LC47@GOTOFF(%ebx), %edx
	movl	%edx, -144(%ebp)
.L454:
	movl	-148(%ebp), %ecx
	movl	%ecx, 16(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-144(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L439
.L450:
	movl	-72(%ebp), %eax
	movl	12(%eax), %edx
	movl	-52(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	4(%eax), %eax
	movl	52(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L455
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L455
	leal	.LC41@GOTOFF(%ebx), %edx
	movl	%edx, -136(%ebp)
	jmp	.L458
.L455:
	leal	.LC42@GOTOFF(%ebx), %ecx
	movl	%ecx, -136(%ebp)
.L458:
	movl	-140(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
.L439:
	.loc 1 2366 0
	addl	$1, -52(%ebp)
.L431:
	movl	-52(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L432
	.loc 1 2397 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
	.loc 1 2399 0
	jmp	.L346
.L427:
.LBE35:
	.loc 1 2402 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	jne	.L460
.LBB36:
	.loc 1 2404 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2408 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2411 0
	movl	-48(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L346
	.loc 1 2413 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L465
	.loc 1 2415 0
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2416 0
	movl	$1, app_on@GOTOFF(%ebx)
.L465:
	.loc 1 2418 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 2420 0
	jmp	.L346
.L460:
.LBE36:
	.loc 1 2424 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	testl	%eax, %eax
	js	.L467
.LBB37:
	.loc 1 2426 0
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_noperands@PLT
	movl	%eax, -44(%ebp)
	.loc 1 2427 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	subl	%eax, %esp
	leal	28(%esp), %ecx
	movl	%ecx, -132(%ebp)
	movl	-132(%ebp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 2432 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2436 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_asm_operands@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2438 0
	movl	-44(%ebp), %eax
	movl	%eax, insn_noperands@GOTOFF(%ebx)
	.loc 1 2439 0
	movl	this_is_asm_operands@GOT(%ebx), %edx
	movl	-120(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2442 0
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L470
	.loc 1 2444 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L472
	.loc 1 2446 0
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2447 0
	movl	$1, app_on@GOTOFF(%ebx)
.L472:
	.loc 1 2449 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	output_asm_insn@PLT
.L470:
	.loc 1 2452 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2453 0
	jmp	.L346
.L467:
.LBE37:
	.loc 1 2456 0
	cmpl	$0, 20(%ebp)
	jg	.L474
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L474
	.loc 1 2458 0
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 2459 0
	movl	$0, app_on@GOTOFF(%ebx)
.L474:
	.loc 1 2462 0
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L477
.LBB38:
	.loc 1 2468 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2470 0
	movl	final_sequence@GOT(%ebx), %edx
	movl	-72(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 2477 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	final_scan_insn@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2478 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-28(%ebp), %eax
	je	.L480
	.loc 1 2480 0
	movl	final_sequence@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2481 0
	movl	-28(%ebp), %edx
	movl	%edx, -176(%ebp)
	jmp	.L341
.L480:
	.loc 1 2484 0
	movl	$1, -32(%ebp)
	jmp	.L482
.L483:
.LBB39:
	.loc 1 2486 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %edx
	movl	-32(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2487 0
	movl	-24(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L484:
	.loc 1 2491 0
	movl	$1, 16(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	final_scan_insn@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2492 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L484
.LBE39:
	.loc 1 2484 0
	addl	$1, -32(%ebp)
.L482:
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-32(%ebp), %eax
	jg	.L483
	.loc 1 2495 0
	movl	set_nomacro@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L487
	movl	set_nomacro@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	set_nomacro@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	set_nomacro@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L487
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$12, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L487:
	movl	set_noreorder@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	.L490
	movl	set_noreorder@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	set_noreorder@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	set_noreorder@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L490
	movl	-124(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$14, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
.L490:
	movl	dslots_jump_filled@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	dslots_jump_filled@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	fputc_unlocked@PLT
	.loc 1 2497 0
	movl	final_sequence@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 2508 0
	jmp	.L346
.L477:
.LBE38:
	.loc 1 2513 0
	movl	-120(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 2571 0
	movl	final_sequence@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L493
	cmpl	$0, 20(%ebp)
	js	.L493
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L493
	movl	-72(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L493
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L493
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L493
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	je	.L346
.L493:
	.loc 1 2722 0
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	js	.L500
	movl	-120(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -128(%ebp)
	jmp	.L502
.L500:
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	recog_memoized_1@PLT
	movl	%eax, -128(%ebp)
.L502:
	movl	-128(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	.loc 1 2723 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	cleanup_subreg_operands@PLT
	.loc 1 2726 0
	movl	flag_dump_rtl_in_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L503
	.loc 1 2728 0
	movl	print_rtx_head@GOT(%ebx), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	.loc 1 2729 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_rtl_single@PLT
	.loc 1 2730 0
	movl	print_rtx_head@GOT(%ebx), %edx
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
.L503:
	.loc 1 2733 0
	movl	$1, (%esp)
	call	constrain_operands_cached@PLT
	testl	%eax, %eax
	jne	.L505
	.loc 1 2734 0
	leal	__FUNCTION__.15444@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$2734, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_fatal_insn_not_found@PLT
.L505:
	.loc 1 2740 0
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	recog_data@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	final_prescan_insn@PLT
	.loc 1 2761 0
	movl	-120(%ebp), %eax
	movl	%eax, debug_insn@GOTOFF(%ebx)
	movl	debug_insn@GOTOFF(%ebx), %edx
	movl	current_output_insn@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 2764 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L507
	call	dwarf2out_do_frame@PLT
	testl	%eax, %eax
	je	.L507
	.loc 1 2765 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf2out_frame_debug@PLT
.L507:
	.loc 1 2769 0
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	get_insn_template@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2774 0
	cmpl	$0, -64(%ebp)
	jne	.L510
.LBB40:
	.loc 1 2778 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	prev_nonnote_insn@PLT
	movl	%eax, %edx
	movl	last_ignored_compare@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L512
	.loc 1 2779 0
	leal	__FUNCTION__.15444@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2779, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L512:
	.loc 1 2780 0
	movl	$0, new_block@GOTOFF(%ebx)
	.loc 1 2786 0
	movl	-120(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2787 0
	jmp	.L514
.L515:
	.loc 1 2790 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L516
	.loc 1 2791 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	delete_insn@PLT
.L516:
	.loc 1 2788 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -16(%ebp)
.L514:
	.loc 1 2787 0
	movl	last_ignored_compare@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jne	.L515
	.loc 1 2794 0
	movl	-16(%ebp), %eax
	movl	%eax, -176(%ebp)
	jmp	.L341
.L510:
.LBE40:
	.loc 1 2799 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$35, %al
	jne	.L519
	movl	-64(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L519
.LBB41:
	.loc 1 2801 0
	movl	$0, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	try_split@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2804 0
	movl	-12(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jne	.L522
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-72(%ebp), %eax
	jne	.L522
	.loc 1 2805 0
	leal	__FUNCTION__.15444@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$2805, 12(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L522:
	.loc 1 2811 0
	leal	__FUNCTION__.15444@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2811, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L519:
.LBE41:
	.loc 1 2818 0
	cmpl	$0, 20(%ebp)
	jg	.L346
	.loc 1 2826 0
	movl	recog_data@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	output_asm_insn@PLT
	.loc 1 2830 0
	movl	-120(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L526
	call	dwarf2out_do_frame@PLT
	testl	%eax, %eax
	je	.L526
	.loc 1 2831 0
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	dwarf2out_frame_debug@PLT
.L526:
	.loc 1 2850 0
	movl	$0, 8(%esp)
	movl	$29, 4(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	movl	%eax, -60(%ebp)
	.loc 1 2851 0
	cmpl	$0, -60(%ebp)
	je	.L529
	.loc 1 2852 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	assemble_vtable_entry@PLT
.L529:
	.loc 1 2855 0
	movl	$0, debug_insn@GOTOFF(%ebx)
	movl	debug_insn@GOTOFF(%ebx), %edx
	movl	current_output_insn@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L346:
.LBE34:
	.loc 1 2858 0
	movl	-120(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -176(%ebp)
.L341:
	movl	-176(%ebp), %eax
	.loc 1 2859 0
	movl	-8(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L532
	call	__stack_chk_fail_local
.L532:
	movl	-4(%ebp), %ebx
	leave
	ret
.LFE38:
	.size	final_scan_insn, .-final_scan_insn
	.type	notice_source_line, @function
notice_source_line:
.LFB39:
	.loc 1 2867 0
	pushl	%ebp
.LCFI97:
	movl	%esp, %ebp
.LCFI98:
	subl	$32, %esp
.LCFI99:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2868 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2870 0
	movl	-4(%ebp), %eax
	movl	%eax, last_filename@GOTOFF(%ecx)
	.loc 1 2871 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, last_linenum@GOTOFF(%ecx)
	.loc 1 2872 0
	movl	high_block_linenum@GOTOFF(%ecx), %eax
	movl	last_linenum@GOTOFF(%ecx), %edx
	movl	%edx, -32(%ebp)
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L534
	movl	-32(%ebp), %edx
	movl	%edx, -28(%ebp)
.L534:
	movl	-28(%ebp), %eax
	movl	%eax, high_block_linenum@GOTOFF(%ecx)
	.loc 1 2873 0
	movl	high_function_linenum@GOTOFF(%ecx), %eax
	movl	last_linenum@GOTOFF(%ecx), %edx
	movl	%edx, -24(%ebp)
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jge	.L535
	movl	-24(%ebp), %edx
	movl	%edx, -20(%ebp)
.L535:
	movl	-20(%ebp), %eax
	movl	%eax, high_function_linenum@GOTOFF(%ecx)
	.loc 1 2874 0
	leave
	ret
.LFE39:
	.size	notice_source_line, .-notice_source_line
.globl cleanup_subreg_operands
	.type	cleanup_subreg_operands, @function
cleanup_subreg_operands:
.LFB40:
	.loc 1 2882 0
	pushl	%ebp
.LCFI100:
	movl	%esp, %ebp
.LCFI101:
	pushl	%esi
.LCFI102:
	pushl	%ebx
.LCFI103:
	subl	$32, %esp
.LCFI104:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2884 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn_cached@PLT
	.loc 1 2885 0
	movl	$0, -12(%ebp)
	jmp	.L538
.L539:
	.loc 1 2892 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L540
	.loc 1 2893 0
	movl	-12(%ebp), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%esi,4)
	jmp	.L542
.L540:
	.loc 1 2894 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L543
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L543
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L542
.L543:
	.loc 1 2897 0
	movl	-12(%ebp), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%esi,4)
.L542:
	.loc 1 2885 0
	addl	$1, -12(%ebp)
.L538:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	620(%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jg	.L539
	.loc 1 2900 0
	movl	$0, -12(%ebp)
	jmp	.L547
.L548:
	.loc 1 2902 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L549
	.loc 1 2903 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, (%esi)
	jmp	.L551
.L549:
	.loc 1 2904 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L552
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L552
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L551
.L552:
	.loc 1 2907 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, (%esi)
.L551:
	.loc 1 2900 0
	addl	$1, -12(%ebp)
.L547:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	621(%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jg	.L548
	.loc 1 2909 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	cleanup_subreg_operands, .-cleanup_subreg_operands
	.section	.rodata
	.type	__FUNCTION__.16027, @object
	.size	__FUNCTION__.16027, 13
__FUNCTION__.16027:
	.string	"alter_subreg"
	.text
.globl alter_subreg
	.type	alter_subreg, @function
alter_subreg:
.LFB41:
	.loc 1 2917 0
	pushl	%ebp
.LCFI105:
	movl	%esp, %ebp
.LCFI106:
	pushl	%esi
.LCFI107:
	pushl	%ebx
.LCFI108:
	subl	$48, %esp
.LCFI109:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2918 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2919 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2923 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L558
	.loc 1 2924 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	$0, %ecx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 20(%esp)
	movl	$1, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	adjust_address_1@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L560
.L558:
.LBB42:
	.loc 1 2928 0
	movl	-24(%ebp), %eax
	movl	12(%eax), %esi
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	simplify_subreg@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2930 0
	cmpl	$0, -16(%ebp)
	je	.L561
	.loc 1 2931 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L560
.L561:
	.loc 1 2933 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L563
.LBB43:
	.loc 1 2935 0
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_hard_regno@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2936 0
	movl	-24(%ebp), %eax
	movw	$71, (%eax)
	.loc 1 2937 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2938 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2941 0
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-33, %eax
	movb	%al, 3(%edx)
	jmp	.L560
.L563:
.LBE43:
	.loc 1 2944 0
	leal	__FUNCTION__.16027@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2944, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L560:
.LBE42:
	.loc 1 2947 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 2948 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE41:
	.size	alter_subreg, .-alter_subreg
	.type	walk_alter_subreg, @function
walk_alter_subreg:
.LFB42:
	.loc 1 2955 0
	pushl	%ebp
.LCFI110:
	movl	%esp, %ebp
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$36, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2956 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2957 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$76, -28(%ebp)
	je	.L569
	cmpl	$76, -28(%ebp)
	ja	.L571
	cmpl	$73, -28(%ebp)
	je	.L568
	jmp	.L567
.L571:
	cmpl	$85, -28(%ebp)
	je	.L570
	cmpl	$88, -28(%ebp)
	je	.L570
	jmp	.L567
.L570:
	.loc 1 2961 0
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2962 0
	movl	-8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2963 0
	jmp	.L567
.L569:
	.loc 1 2966 0
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2967 0
	jmp	.L567
.L568:
	.loc 1 2970 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, -24(%ebp)
	jmp	.L572
.L567:
	.loc 1 2976 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L572:
	movl	-24(%ebp), %eax
	.loc 1 2977 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	walk_alter_subreg, .-walk_alter_subreg
	.section	.rodata
.LC53:
	.string	"invalid `asm': "
.LC54:
	.string	"output_operand: "
.LC55:
	.string	"%s%s"
.LC56:
	.string	"%s"
	.text
.globl output_operand_lossage
	.type	output_operand_lossage, @function
output_operand_lossage:
.LFB43:
	.loc 1 3146 0
	pushl	%ebp
.LCFI114:
	movl	%esp, %ebp
.LCFI115:
	pushl	%ebx
.LCFI116:
	subl	$36, %esp
.LCFI117:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB44:
	.loc 1 3150 0
	leal	12(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBB45:
	.loc 1 3153 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L575
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L577
.L575:
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L577:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3154 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 3155 0
	movl	-20(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	vasprintf@PLT
	.loc 1 3157 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L578
	.loc 1 3158 0
	movl	-16(%ebp), %edx
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	error_for_asm@PLT
	.loc 1 3162 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3163 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.LBE45:
	.loc 1 3165 0
	jmp	.L580
.L578:
.LBB46:
	.loc 1 3160 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L580:
.LBE46:
.LBE44:
	.loc 1 3165 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	output_operand_lossage, .-output_operand_lossage
	.section	.rodata
.LC57:
	.string	"\t%s %d\t%s"
.LC58:
	.string	"/%d"
.LC59:
	.string	"\t[length = %d]"
	.text
	.type	output_asm_name, @function
output_asm_name:
.LFB44:
	.loc 1 3174 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%esi
.LCFI120:
	pushl	%ebx
.LCFI121:
	subl	$48, %esp
.LCFI122:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3175 0
	movl	debug_insn@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L586
.LBB47:
	.loc 1 3177 0
	movl	debug_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3178 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	(%eax,%ecx), %edx
	movl	debug_insn@GOTOFF(%ebx), %eax
	movl	4(%eax), %ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 3181 0
	movl	-12(%ebp), %edx
	movl	insn_data@GOT(%ebx), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$16, %eax
	movzbl	2(%eax), %eax
	cmpb	$1, %al
	jbe	.L584
	.loc 1 3182 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L584:
	.loc 1 3184 0
	movl	debug_insn@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_attr_length@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3189 0
	movl	$0, debug_insn@GOTOFF(%ebx)
.L586:
.LBE47:
	.loc 1 3191 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE44:
	.size	output_asm_name, .-output_asm_name
	.type	get_mem_expr_from_op, @function
get_mem_expr_from_op:
.LFB45:
	.loc 1 3201 0
	pushl	%ebp
.LCFI123:
	movl	%esp, %ebp
.LCFI124:
	pushl	%ebx
.LCFI125:
	subl	$36, %esp
.LCFI126:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3205 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3207 0
	cmpl	$0, 8(%ebp)
	jne	.L588
	.loc 1 3208 0
	movl	$0, -32(%ebp)
	jmp	.L590
.L588:
	.loc 1 3210 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L591
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$175, %eax
	jbe	.L591
	.loc 1 3211 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L590
.L591:
	.loc 1 3212 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L594
	.loc 1 3213 0
	movl	$0, -32(%ebp)
	jmp	.L590
.L594:
	.loc 1 3215 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L596
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L596
	.loc 1 3216 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L599
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L601
.L599:
	movl	$0, -28(%ebp)
.L601:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L590
.L596:
	.loc 1 3219 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 3220 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3225 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L602
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L602
	.loc 1 3226 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L590
.L602:
	.loc 1 3227 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L608
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L608
	.loc 1 3229 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L590
.L609:
	.loc 1 3233 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L608:
	.loc 1 3231 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	je	.L609
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L609
	.loc 1 3235 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	.loc 1 3236 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L612
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L614
.L612:
	movl	$0, -24(%ebp)
.L614:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L590:
	movl	-32(%ebp), %eax
	.loc 1 3237 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	get_mem_expr_from_op, .-get_mem_expr_from_op
	.section	.rodata
.LC60:
	.string	"*"
.LC61:
	.string	"%c%s %s"
	.text
	.type	output_asm_operand_names, @function
output_asm_operand_names:
.LFB46:
	.loc 1 3248 0
	pushl	%ebp
.LCFI127:
	movl	%esp, %ebp
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$52, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3249 0
	movl	$0, -16(%ebp)
	.loc 1 3252 0
	movl	$0, -12(%ebp)
	jmp	.L617
.L618:
.LBB48:
	.loc 1 3255 0
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %edx
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	.loc 1 3257 0
	cmpl	$0, -8(%ebp)
	je	.L619
	.loc 1 3259 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L621
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L623
.L621:
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.L623:
	cmpl	$0, -16(%ebp)
	je	.L624
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L626
.L624:
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L626:
	cmpl	$0, -16(%ebp)
	je	.L627
	movl	$44, -24(%ebp)
	jmp	.L629
.L627:
	movl	$9, -24(%ebp)
.L629:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC61@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 3262 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_mem_expr@PLT
	.loc 1 3263 0
	movl	$1, -16(%ebp)
.L619:
.LBE48:
	.loc 1 3252 0
	addl	$1, -12(%ebp)
.L617:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L618
	.loc 1 3266 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	output_asm_operand_names, .-output_asm_operand_names
	.section	.rodata
.LC62:
	.string	"%d"
	.align 4
.LC63:
	.string	"operand number missing after %%-letter"
.LC64:
	.string	"operand number out of range"
.LC65:
	.string	"%lld"
.LC66:
	.string	"invalid %%-code"
	.text
.globl output_asm_insn
	.type	output_asm_insn, @function
output_asm_insn:
.LFB47:
	.loc 1 3288 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%edi
.LCFI133:
	pushl	%esi
.LCFI134:
	pushl	%ebx
.LCFI135:
	subl	$204, %esp
.LCFI136:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -196(%ebp)
	.loc 1 3288 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 3296 0
	movl	$0, -56(%ebp)
	.loc 1 3300 0
	movl	-192(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L704
	.loc 1 3303 0
	leal	-46(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$30, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 3304 0
	movl	-192(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3305 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3311 0
	jmp	.L706
.L636:
	.loc 1 3312 0
	movl	-60(%ebp), %eax
	movl	%eax, -200(%ebp)
	cmpl	$10, -200(%ebp)
	je	.L638
	cmpl	$37, -200(%ebp)
	je	.L639
	jmp	.L637
.L638:
	.loc 1 3315 0
	movl	flag_verbose_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L640
	.loc 1 3316 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	output_asm_operand_names
.L640:
	.loc 1 3317 0
	movl	flag_print_asm_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L642
	.loc 1 3318 0
	call	output_asm_name
.L642:
	.loc 1 3320 0
	movl	$0, -56(%ebp)
	.loc 1 3321 0
	leal	-46(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$30, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 3323 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3332 0
	jmp	.L635
.L639:
	.loc 1 3389 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L644
	.loc 1 3391 0
	addl	$1, -64(%ebp)
	.loc 1 3392 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	jmp	.L635
.L644:
	.loc 1 3397 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L647
	.loc 1 3399 0
	addl	$1, -64(%ebp)
	.loc 1 3400 0
	movl	insn_counter@GOTOFF(%ebx), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC62@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L635
.L647:
	.loc 1 3407 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$136, %eax
	testl	%eax, %eax
	je	.L649
.LBB49:
	.loc 1 3409 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	addl	$1, -64(%ebp)
	.loc 1 3410 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3412 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L651
	.loc 1 3413 0
	leal	.LC63@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	jmp	.L653
.L651:
	.loc 1 3414 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L654
	cmpl	$0, -60(%ebp)
	js	.L656
	movl	-60(%ebp), %edx
	movl	insn_noperands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L654
.L656:
	.loc 1 3416 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3414 0
	jmp	.L653
.L654:
	.loc 1 3417 0
	cmpl	$108, -52(%ebp)
	jne	.L658
	.loc 1 3418 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	output_asm_label@PLT
	jmp	.L653
.L658:
	.loc 1 3419 0
	cmpl	$97, -52(%ebp)
	jne	.L660
	.loc 1 3420 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	output_address@PLT
	jmp	.L653
.L660:
	.loc 1 3421 0
	cmpl	$99, -52(%ebp)
	jne	.L662
	.loc 1 3423 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L664
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L664
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L664
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L664
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L669
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L671
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L669
.L671:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L664
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L669
.L664:
	.loc 1 3424 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3423 0
	jmp	.L653
.L669:
	.loc 1 3426 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	$99, 4(%esp)
	movl	%eax, (%esp)
	call	output_operand
	jmp	.L653
.L662:
	.loc 1 3428 0
	cmpl	$110, -52(%ebp)
	jne	.L675
	.loc 1 3430 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L677
	.loc 1 3431 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	adcl	$0, %ecx
	negl	%ecx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	jmp	.L653
.L677:
	.loc 1 3435 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3436 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	jmp	.L653
.L675:
	.loc 1 3440 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_operand
.L653:
	.loc 1 3442 0
	movl	-60(%ebp), %eax
	movzbl	-46(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L680
	.loc 1 3443 0
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, -184(%ebp,%edx,4)
	addl	$1, -56(%ebp)
.L680:
	.loc 1 3444 0
	movl	-60(%ebp), %eax
	movb	$1, -46(%ebp,%eax)
	.loc 1 3446 0
	jmp	.L682
.L683:
	.loc 1 3447 0
	addl	$1, -64(%ebp)
.L682:
	.loc 1 3446 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	movzbl	-60(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L683
	jmp	.L635
.L649:
.LBE49:
	.loc 1 3450 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L685
	.loc 1 3452 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3453 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L687
	cmpl	$0, -60(%ebp)
	js	.L689
	movl	-60(%ebp), %edx
	movl	insn_noperands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L687
.L689:
	.loc 1 3455 0
	leal	.LC64@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3453 0
	jmp	.L691
.L687:
	.loc 1 3457 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	output_operand
.L691:
	.loc 1 3459 0
	movl	-60(%ebp), %eax
	movzbl	-46(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L692
	.loc 1 3460 0
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, -184(%ebp,%edx,4)
	addl	$1, -56(%ebp)
.L692:
	.loc 1 3461 0
	movl	-60(%ebp), %eax
	movb	$1, -46(%ebp,%eax)
	.loc 1 3463 0
	jmp	.L694
.L695:
	.loc 1 3464 0
	addl	$1, -64(%ebp)
.L694:
	.loc 1 3463 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	movzbl	-60(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L695
	jmp	.L635
.L685:
	.loc 1 3470 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	mips_print_operand_punct@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L697
	.loc 1 3471 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -64(%ebp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	output_operand
	jmp	.L635
.L697:
	.loc 1 3474 0
	leal	.LC66@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3475 0
	jmp	.L635
.L637:
	.loc 1 3478 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
.L635:
.L706:
	.loc 1 3311 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	setne	%al
	addl	$1, -64(%ebp)
	testb	%al, %al
	jne	.L636
	.loc 1 3482 0
	movl	flag_verbose_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L700
	.loc 1 3483 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	output_asm_operand_names
.L700:
	.loc 1 3484 0
	movl	flag_print_asm_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L702
	.loc 1 3485 0
	call	output_asm_name
.L702:
	.loc 1 3487 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L704:
	.loc 1 3488 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L705
	call	__stack_chk_fail_local
.L705:
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	output_asm_insn, .-output_asm_insn
	.section	.rodata
.LC67:
	.string	"`%%l' operand isn't a label"
	.text
.globl output_asm_label
	.type	output_asm_label, @function
output_asm_label:
.LFB48:
	.loc 1 3495 0
	pushl	%ebp
.LCFI137:
	movl	%esp, %ebp
.LCFI138:
	pushl	%ebx
.LCFI139:
	subl	$308, %esp
.LCFI140:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -280(%ebp)
	.loc 1 3495 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 3498 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L708
	.loc 1 3499 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -280(%ebp)
.L708:
	.loc 1 3500 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L710
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L712
	movl	-280(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L712
.L710:
	.loc 1 3503 0
	movl	-280(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3500 0
	jmp	.L714
.L712:
	.loc 1 3505 0
	leal	.LC67@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
.L714:
	.loc 1 3507 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 3508 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L716
	call	__stack_chk_fail_local
.L716:
	addl	$308, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	output_asm_label, .-output_asm_label
	.section	.rodata
	.type	__FUNCTION__.16496, @object
	.size	__FUNCTION__.16496, 15
__FUNCTION__.16496:
	.string	"output_operand"
	.text
	.type	output_operand, @function
output_operand:
.LFB49:
	.loc 1 3524 0
	pushl	%ebp
.LCFI141:
	movl	%esp, %ebp
.LCFI142:
	pushl	%ebx
.LCFI143:
	subl	$20, %esp
.LCFI144:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3525 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L718
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L718
	.loc 1 3526 0
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, 8(%ebp)
.L718:
	.loc 1 3531 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L721
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L721
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L721
	.loc 1 3532 0
	leal	__FUNCTION__.16496@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3532, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L721:
	.loc 1 3534 0
	movl	8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	print_operand@PLT
	.loc 1 3535 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	output_operand, .-output_operand
.globl output_address
	.type	output_address, @function
output_address:
.LFB50:
	.loc 1 3544 0
	pushl	%ebp
.LCFI145:
	movl	%esp, %ebp
.LCFI146:
	pushl	%ebx
.LCFI147:
	subl	$20, %esp
.LCFI148:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3545 0
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	.loc 1 3546 0
	movl	8(%ebp), %eax
	movl	asm_out_file@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_operand_address@PLT
	.loc 1 3547 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	output_address, .-output_address
	.section	.rodata
.LC68:
	.string	"0x%llx%016llx"
.LC69:
	.string	"0x%llx"
.LC70:
	.string	"floating constant misused"
.LC71:
	.string	"invalid expression as operand"
	.text
.globl output_addr_const
	.type	output_addr_const, @function
output_addr_const:
.LFB51:
	.loc 1 3557 0
	pushl	%ebp
.LCFI149:
	movl	%esp, %ebp
.LCFI150:
	pushl	%edi
.LCFI151:
	pushl	%esi
.LCFI152:
	pushl	%ebx
.LCFI153:
	subl	$316, %esp
.LCFI154:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -288(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -292(%ebp)
	.loc 1 3557 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
.L729:
	.loc 1 3561 0
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$46, %eax
	movl	%eax, -296(%ebp)
	cmpl	$85, -296(%ebp)
	ja	.L730
	movl	-296(%ebp), %eax
	sall	$2, %eax
	movl	.L741@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L741:
	.long	.L731@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L732@GOTOFF
	.long	.L733@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L734@GOTOFF
	.long	.L735@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L736@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L737@GOTOFF
	.long	.L738@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L739@GOTOFF
	.long	.L740@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L730@GOTOFF
	.long	.L736@GOTOFF
	.long	.L736@GOTOFF
	.text
.L735:
	.loc 1 3564 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$46, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3565 0
	jmp	.L766
.L738:
	.loc 1 3571 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 3573 0
	jmp	.L766
.L737:
	.loc 1 3576 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -292(%ebp)
.L731:
	.loc 1 3579 0
	movl	-292(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3583 0
	leal	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 3585 0
	jmp	.L766
.L732:
	.loc 1 3588 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3589 0
	jmp	.L766
.L734:
	.loc 1 3594 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3595 0
	jmp	.L766
.L733:
	.loc 1 3598 0
	movl	-292(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L743
	.loc 1 3601 0
	movl	-292(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L745
	.loc 1 3602 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%eax), %edi
	movl	-292(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC68@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L766
.L745:
	.loc 1 3604 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L748
	.loc 1 3605 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC69@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L766
.L748:
	.loc 1 3607 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC65@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L766
.L743:
	.loc 1 3612 0
	leal	.LC70@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3613 0
	jmp	.L766
.L739:
	.loc 1 3617 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L751
	.loc 1 3619 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3620 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L753
	.loc 1 3621 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$43, (%esp)
	call	fputc@PLT
.L753:
	.loc 1 3622 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	jmp	.L766
.L751:
	.loc 1 3626 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3627 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L756
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L758
.L756:
	.loc 1 3629 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$43, (%esp)
	call	fputc@PLT
.L758:
	.loc 1 3630 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3632 0
	jmp	.L766
.L740:
	.loc 1 3637 0
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subtraction@PLT
	movl	%eax, -292(%ebp)
	.loc 1 3638 0
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L729
	.loc 1 3641 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3642 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	fputc@PLT
	.loc 1 3643 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L760
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L762
.L760:
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L762
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L764
.L762:
	.loc 1 3646 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3643 0
	jmp	.L766
.L764:
	.loc 1 3649 0
	movl	targetm@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 3650 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3651 0
	movl	targetm@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 3653 0
	jmp	.L766
.L736:
	.loc 1 3658 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3659 0
	jmp	.L766
.L730:
	.loc 1 3668 0
	leal	.LC71@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
.L766:
	.loc 1 3670 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L767
	call	__stack_chk_fail_local
.L767:
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	output_addr_const, .-output_addr_const
	.section	.rodata
	.type	__FUNCTION__.16643, @object
	.size	__FUNCTION__.16643, 12
__FUNCTION__.16643:
	.string	"asm_fprintf"
.LC72:
	.string	"%%"
	.text
.globl asm_fprintf
	.type	asm_fprintf, @function
asm_fprintf:
.LFB52:
	.loc 1 3684 0
	pushl	%ebp
.LCFI155:
	movl	%esp, %ebp
.LCFI156:
	pushl	%ebx
.LCFI157:
	subl	$68, %esp
.LCFI158:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3684 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
.LBB50:
	.loc 1 3688 0
	leal	16(%ebp), %eax
	movl	%eax, -28(%ebp)
.LBB51:
	.loc 1 3692 0
	movb	$37, -18(%ebp)
	.loc 1 3694 0
	jmp	.L794
.L770:
	.loc 1 3695 0
	movzbl	-19(%ebp), %eax
	cmpl	$37, %eax
	je	.L772
	jmp	.L771
.L772:
	.loc 1 3726 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 3727 0
	leal	-18(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3728 0
	jmp	.L773
.L774:
	.loc 1 3730 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3731 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	addl	$1, -44(%ebp)
.L773:
	.loc 1 3728 0
	movzbl	-19(%ebp), %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L774
	cmpb	$46, -19(%ebp)
	je	.L774
	.loc 1 3733 0
	movzbl	-19(%ebp), %eax
	subl	$37, %eax
	movl	%eax, -48(%ebp)
	cmpl	$83, -48(%ebp)
	ja	.L777
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L789@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L789:
	.long	.L778@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L769@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L780@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L769@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L769@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L783@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L784@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L784@GOTOFF
	.long	.L785@GOTOFF
	.long	.L785@GOTOFF
	.long	.L785@GOTOFF
	.long	.L777@GOTOFF
	.long	.L784@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L786@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L784@GOTOFF
	.long	.L784@GOTOFF
	.long	.L777@GOTOFF
	.long	.L777@GOTOFF
	.long	.L787@GOTOFF
	.long	.L777@GOTOFF
	.long	.L784@GOTOFF
	.long	.L777@GOTOFF
	.long	.L788@GOTOFF
	.long	.L784@GOTOFF
	.text
.L778:
	.loc 1 3736 0
	leal	.LC72@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3737 0
	jmp	.L769
.L784:
	.loc 1 3742 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3743 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3744 0
	movl	-28(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3745 0
	jmp	.L769
.L788:
	.loc 1 3757 0
	movl	-24(%ebp), %eax
	movb	$108, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 3758 0
	movl	-24(%ebp), %eax
	movb	$108, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 3762 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 3763 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3764 0
	movl	-28(%ebp), %edx
	leal	8(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3765 0
	jmp	.L769
.L786:
	.loc 1 3768 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3769 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 3770 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3771 0
	movl	-28(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3772 0
	jmp	.L769
.L785:
	.loc 1 3777 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3778 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3779 0
	movl	-28(%ebp), %edx
	leal	8(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, %eax
	fldl	(%eax)
	fstpl	8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3780 0
	jmp	.L769
.L787:
	.loc 1 3783 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3784 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3785 0
	movl	-28(%ebp), %edx
	leal	4(%edx), %eax
	movl	%eax, -28(%ebp)
	movl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3786 0
	jmp	.L769
.L780:
	.loc 1 3808 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$36, (%esp)
	call	fputc@PLT
	.loc 1 3810 0
	jmp	.L769
.L783:
	.loc 1 3813 0
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 3814 0
	jmp	.L769
.L777:
	.loc 1 3831 0
	leal	__FUNCTION__.16643@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3831, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L771:
	.loc 1 3836 0
	movzbl	-19(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputc_unlocked@PLT
.L769:
.L794:
	.loc 1 3694 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	cmpb	$0, -19(%ebp)
	setne	%al
	addl	$1, -44(%ebp)
	testb	%al, %al
	jne	.L770
.LBE51:
.LBE50:
	.loc 1 3839 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L793
	call	__stack_chk_fail_local
.L793:
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	asm_fprintf, .-asm_fprintf
.globl split_double
	.type	split_double, @function
split_double:
.LFB53:
	.loc 1 3850 0
	pushl	%ebp
.LCFI159:
	movl	%esp, %ebp
.LCFI160:
	pushl	%esi
.LCFI161:
	pushl	%ebx
.LCFI162:
	subl	$112, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3851 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L796
	.loc 1 3853 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L798
.LBB52:
	.loc 1 3862 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 3863 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L800
	movl	$63, -100(%ebp)
	jmp	.L802
.L800:
	movl	$31, -100(%ebp)
.L802:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movzbl	-100(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L833
	movl	%eax, %edx
	xorl	%eax, %eax
.L833:
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3871 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 3872 0
	addl	$-1, -40(%ebp)
	adcl	$-1, -36(%ebp)
	.loc 1 3875 0
	movl	-40(%ebp), %eax
	notl	%eax
	movl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	notl	%eax
	movl	%eax, -20(%ebp)
	.loc 1 3878 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 3879 0
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 3880 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L803
	.loc 1 3881 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %esi
	movl	-56(%ebp), %edx
	orl	%eax, %edx
	movl	-52(%ebp), %ecx
	orl	%esi, %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
.L803:
	.loc 1 3885 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3886 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L805
	movl	$63, -96(%ebp)
	jmp	.L807
.L805:
	movl	$31, -96(%ebp)
.L807:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movzbl	-96(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L832
	movl	%edx, %eax
	xorl	%edx, %edx
.L832:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3887 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3888 0
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	-48(%ebp), %eax
	andl	%ecx, %eax
	movl	-44(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3889 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	-48(%ebp), %eax
	andl	%ecx, %eax
	movl	-44(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L808
	.loc 1 3890 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %esi
	movl	-48(%ebp), %edx
	orl	%eax, %edx
	movl	-44(%ebp), %ecx
	orl	%esi, %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
.L808:
	.loc 1 3893 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L810
	.loc 1 3895 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3896 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L831
.L810:
	.loc 1 3900 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3901 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L831
.L798:
.LBE52:
.LBB53:
	.loc 1 3909 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L814
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L816
.L814:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -92(%ebp)
.L816:
	movl	-92(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3910 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L817
	.loc 1 3912 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3913 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L831
.L817:
	.loc 1 3917 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3918 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L831
.L796:
.LBE53:
	.loc 1 3922 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L820
	.loc 1 3924 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L822
	.loc 1 3926 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3927 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L831
.L822:
	.loc 1 3931 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3932 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L831
.L820:
	.loc 1 3935 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L825
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L827
.L825:
	.loc 1 3941 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L828
	.loc 1 3943 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3944 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L831
.L828:
	.loc 1 3948 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3949 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3935 0
	jmp	.L831
.L827:
.LBB54:
	.loc 1 3956 0
	movl	8(%ebp), %edx
	addl	$4, %edx
	leal	-88(%ebp), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	20(%edx), %eax
	movl	%eax, 20(%ecx)
	.loc 1 3962 0
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$64, (%esp)
	call	mode_for_size@PLT
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	real_to_target@PLT
	.loc 1 3980 0
	movl	-64(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3981 0
	movl	-60(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
.L831:
.LBE54:
	.loc 1 3983 0
	addl	$112, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE53:
	.size	split_double, .-split_double
.globl leaf_function_p
	.type	leaf_function_p, @function
leaf_function_p:
.LFB54:
	.loc 1 3989 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	pushl	%ebx
.LCFI166:
	subl	$20, %esp
.LCFI167:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3993 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L835
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L837
.L835:
	.loc 1 3994 0
	movl	$0, -24(%ebp)
	jmp	.L838
.L837:
	.loc 1 3996 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	jmp	.L839
.L840:
	.loc 1 3998 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L841
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L841
	.loc 1 4000 0
	movl	$0, -24(%ebp)
	jmp	.L838
.L841:
	.loc 1 4001 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L844
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L844
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L844
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L844
	.loc 1 4005 0
	movl	$0, -24(%ebp)
	jmp	.L838
.L844:
	.loc 1 3996 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L839:
	cmpl	$0, -12(%ebp)
	jne	.L840
	.loc 1 4007 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4008 0
	jmp	.L850
.L851:
	.loc 1 4011 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4013 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L852
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L852
	.loc 1 4015 0
	movl	$0, -24(%ebp)
	jmp	.L838
.L852:
	.loc 1 4016 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L855
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L855
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L855
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L855
	.loc 1 4020 0
	movl	$0, -24(%ebp)
	jmp	.L838
.L855:
	.loc 1 4009 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L850:
	.loc 1 4008 0
	cmpl	$0, -8(%ebp)
	jne	.L851
	.loc 1 4023 0
	movl	$1, -24(%ebp)
.L838:
	movl	-24(%ebp), %eax
	.loc 1 4024 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	leaf_function_p, .-leaf_function_p
	.section	.rodata
	.type	__FUNCTION__.16868, @object
	.size	__FUNCTION__.16868, 23
__FUNCTION__.16868:
	.string	"final_forward_branch_p"
	.text
.globl final_forward_branch_p
	.type	final_forward_branch_p, @function
final_forward_branch_p:
.LFB55:
	.loc 1 4033 0
	pushl	%ebp
.LCFI168:
	movl	%esp, %ebp
.LCFI169:
	pushl	%ebx
.LCFI170:
	subl	$36, %esp
.LCFI171:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4035 0
	movl	uid_shuid@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L863
	.loc 1 4036 0
	leal	__FUNCTION__.16868@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4036, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L863:
	.loc 1 4037 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4038 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4040 0
	cmpl	$0, -12(%ebp)
	je	.L865
	cmpl	$0, -8(%ebp)
	jne	.L867
.L865:
	.loc 1 4041 0
	leal	__FUNCTION__.16868@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4041, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L867:
	.loc 1 4042 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	.loc 1 4043 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	final_forward_branch_p, .-final_forward_branch_p
	.local	debug_insn
	.comm	debug_insn,4,4
	.local	last_linenum
	.comm	last_linenum,4,4
	.local	high_block_linenum
	.comm	high_block_linenum,4,4
	.local	high_function_linenum
	.comm	high_function_linenum,4,4
	.local	last_filename
	.comm	last_filename,4,4
	.local	insn_noperands
	.comm	insn_noperands,4,4
	.local	block_depth
	.comm	block_depth,4,4
	.local	app_on
	.comm	app_on,4,4
	.local	line_note_exists
	.comm	line_note_exists,4,4
	.local	insn_lengths
	.comm	insn_lengths,4,4
	.local	insn_lengths_max_uid
	.comm	insn_lengths_max_uid,4,4
	.local	uid_align
	.comm	uid_align,4,4
	.local	uid_shuid
	.comm	uid_shuid,4,4
	.local	label_align
	.comm	label_align,4,4
	.local	min_labelno
	.comm	min_labelno,4,4
	.local	max_labelno
	.comm	max_labelno,4,4
	.comm	regs_ever_live,176,32
	.comm	insn_addresses_,4,4
	.comm	insn_current_address,4,4
	.comm	frame_pointer_needed,4,4
	.comm	final_sequence,4,4
	.comm	current_output_insn,4,4
	.comm	this_is_asm_operands,4,4
	.comm	insn_last_address,4,4
	.comm	insn_current_align,4,4
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
	.byte	0x4
	.long	.LCFI7-.LCFI3
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI11-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI13-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI16-.LCFI14
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
	.long	.LCFI17-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI24-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI27-.LCFI25
	.byte	0x83
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
	.byte	0x4
	.long	.LCFI32-.LCFI29
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI33-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI34
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
	.long	.LCFI37-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI39-.LCFI38
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
	.long	.LCFI40-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI41
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
	.long	.LCFI44-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI45
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI49-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI52-.LCFI50
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
	.long	.LCFI53-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI54
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI59-.LFB30
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI63-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI64-.LCFI63
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI64
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
	.long	.LCFI68-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI69
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
	.long	.LCFI72-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI75-.LCFI73
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
	.long	.LCFI76-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI80-.LCFI77
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI81-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI84-.LCFI82
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
	.long	.LCFI85-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI88-.LCFI86
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
	.long	.LCFI89-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI92-.LCFI90
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
	.long	.LCFI93-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI97-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI100-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI101-.LCFI100
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI104-.LCFI101
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI105-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI109-.LCFI106
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI110-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI111
	.byte	0x83
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
	.long	.LCFI114-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI117-.LCFI115
	.byte	0x83
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
	.long	.LCFI118-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI122-.LCFI119
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI123-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI124-.LCFI123
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI126-.LCFI124
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
	.long	.LCFI127-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI128-.LCFI127
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI128
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI131-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI136-.LCFI132
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
	.long	.LCFI137-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI140-.LCFI138
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
	.long	.LCFI141-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI144-.LCFI142
	.byte	0x83
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
	.long	.LCFI145-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI148-.LCFI146
	.byte	0x83
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
	.long	.LCFI154-.LCFI150
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI155-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI156-.LCFI155
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI158-.LCFI156
	.byte	0x83
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
	.long	.LCFI159-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI160-.LCFI159
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI163-.LCFI160
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 20 "../../../include/gnu/safe-ctype.h"
	.file 21 "../../../kgccfe/gnu/regs.h"
	.file 22 "../../../kgccfe/gnu/varray.h"
	.file 23 "../../../kgccfe/gnu/recog.h"
	.file 24 "../../../kgccfe/gnu/flags.h"
	.file 25 "../../../kgccfe/gnu/output.h"
	.file 26 "../../../kgccfe/gnu/target.h"
	.file 27 "../../../kgccfe/gnu/debug.h"
	.file 28 "../../../kgccfe/gnu/profile.h"
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB19-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI14-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
	.long	.LCFI24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI24-.Ltext0
	.long	.LCFI25-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI25-.Ltext0
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
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI33-.Ltext0
	.long	.LCFI34-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI34-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB25-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI38-.Ltext0
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI40-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI41-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI44-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI44-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI45-.Ltext0
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB28-.Ltext0
	.long	.LCFI49-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI49-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI50-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI53-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI54-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB30-.Ltext0
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
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI68-.Ltext0
	.long	.LCFI69-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI69-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
	.long	.LCFI72-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI72-.Ltext0
	.long	.LCFI73-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI73-.Ltext0
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI76-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI76-.Ltext0
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI77-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI81-.Ltext0
	.long	.LCFI82-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI82-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
	.long	.LCFI85-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI85-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI86-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI89-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI89-.Ltext0
	.long	.LCFI90-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI90-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI100-.Ltext0
	.long	.LCFI101-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI101-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
	.long	.LCFI110-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI110-.Ltext0
	.long	.LCFI111-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI111-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
	.long	.LCFI118-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI118-.Ltext0
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI119-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI123-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI123-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI124-.Ltext0
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
	.long	.LCFI131-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI131-.Ltext0
	.long	.LCFI132-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI132-.Ltext0
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI137-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI138-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI141-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI142-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
	.long	.LCFI145-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI145-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI146-.Ltext0
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
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI155-.Ltext0
	.long	.LCFI156-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI156-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
	.long	.LCFI159-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI159-.Ltext0
	.long	.LCFI160-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI160-.Ltext0
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
	.section	.debug_info
	.long	0x9e5a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kgccfe/gnu/final.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x2
	.byte	0xc
	.long	0xa5
	.uleb128 0x3
	.byte	0x4
	.long	0xab
	.uleb128 0x4
	.long	0x19b
	.string	"rtx_def"
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x4
	.byte	0x8a
	.long	0x4e7b
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
	.long	0x843
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
	.long	0x5a96
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x2
	.byte	0xe
	.long	0x1a8
	.uleb128 0x3
	.byte	0x4
	.long	0x1ae
	.uleb128 0x4
	.long	0x1e3
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
	.long	0x5aa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x2
	.byte	0x10
	.long	0x1ef
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5
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
	.long	0x2dad
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x856
	.long	0x30c7
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x857
	.long	0x310f
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x858
	.long	0x327b
	.uleb128 0x8
	.long	.LASF1
	.byte	0x3
	.value	0x859
	.long	0x31bc
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x85a
	.long	0x3226
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x85b
	.long	0x3301
	.uleb128 0x9
	.string	"decl"
	.byte	0x3
	.value	0x85c
	.long	0x4384
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x85d
	.long	0x355e
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x85e
	.long	0x3338
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x85f
	.long	0x337f
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x860
	.long	0x33cd
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x861
	.long	0x3414
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x863
	.long	0x4d23
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
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3cf
	.long	0x9a
	.uleb128 0x10
	.long	0x3cf
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x2e6
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x13
	.byte	0x2b
	.long	0x404
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x2
	.string	"va_list"
	.byte	0x13
	.byte	0x69
	.long	0x3ee
	.uleb128 0x2
	.string	"size_t"
	.byte	0xf
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
	.byte	0x12
	.byte	0x3b
	.long	0x47f
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x4c9
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x4aa
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2d7
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x4fa
	.uleb128 0x13
	.long	0x775
	.long	.LASF3
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x7ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x438
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x7f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x803
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x4d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x4e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x809
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
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x7e7
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x7e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x7ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a4
	.uleb128 0x3
	.byte	0x4
	.long	0x4fa
	.uleb128 0xf
	.long	0x803
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x796
	.uleb128 0xf
	.long	0x819
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x829
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
	.long	0x83a
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x83b
	.uleb128 0x17
	.long	0xa8c
	.string	"machine_mode"
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.uleb128 0x18
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x18
	.string	"BImode"
	.sleb128 1
	.uleb128 0x18
	.string	"QImode"
	.sleb128 2
	.uleb128 0x18
	.string	"HImode"
	.sleb128 3
	.uleb128 0x18
	.string	"SImode"
	.sleb128 4
	.uleb128 0x18
	.string	"DImode"
	.sleb128 5
	.uleb128 0x18
	.string	"TImode"
	.sleb128 6
	.uleb128 0x18
	.string	"OImode"
	.sleb128 7
	.uleb128 0x18
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x18
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x18
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x18
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x18
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x18
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x18
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x18
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x18
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x18
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x18
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x18
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x18
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x18
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x18
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x18
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x18
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x18
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x18
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x18
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x18
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x18
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x18
	.string	"COImode"
	.sleb128 30
	.uleb128 0x18
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x18
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x18
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x18
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x18
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x18
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x18
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x18
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x18
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x18
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x18
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x18
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x18
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x18
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x18
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x18
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x18
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x18
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x18
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x18
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x18
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x18
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x18
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x18
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x19
	.long	0xb3b
	.long	.LASF4
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.uleb128 0x18
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x18
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x18
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x18
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x18
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x18
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x18
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x18
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x18
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x18
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x4
	.long	0xb6c
	.string	"location_s"
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.uleb128 0x1a
	.long	.LASF5
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
	.long	0xb3b
	.uleb128 0x17
	.long	0x14a0
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.uleb128 0x18
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x18
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x18
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x18
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x18
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x18
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x18
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x18
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x18
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x18
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x18
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x18
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x18
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x18
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x18
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x18
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x18
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x18
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x18
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x18
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x18
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x18
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x18
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x18
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x18
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x18
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x18
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x18
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x18
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x18
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x18
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x18
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x18
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x18
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x18
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x18
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x18
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x18
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x18
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x18
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x18
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x18
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x18
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x18
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x18
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x18
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x18
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x18
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x18
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x18
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x18
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x18
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x18
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x18
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x18
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x18
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x18
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x18
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x18
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x18
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x18
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x18
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x18
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x18
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x18
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x18
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x18
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x18
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x18
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x18
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x18
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x18
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x18
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x18
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x18
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x18
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x18
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x18
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x18
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x18
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x18
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x18
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x18
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x18
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x18
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x18
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x18
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x18
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x18
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x18
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x18
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x18
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x18
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x18
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x18
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x18
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x18
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x18
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x18
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x18
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x18
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x18
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x18
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x18
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x18
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x18
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x18
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x18
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x18
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x18
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x18
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x18
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x18
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x18
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x18
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x18
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x18
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x18
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x18
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x18
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x18
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x18
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x18
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x18
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x18
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x18
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x18
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x18
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x18
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x18
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x18
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x18
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x18
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x18
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x18
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x18
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x18
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x18
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x18
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x18
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x18
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x18
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x18
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x18
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x18
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x18
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x18
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x18
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x18
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x18
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x3
	.byte	0x31
	.long	0x3b8
	.uleb128 0x4
	.long	0x14f0
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
	.long	0x14fa
	.uleb128 0x1b
	.string	"st"
	.byte	0x1
	.uleb128 0x19
	.long	0x154f
	.long	.LASF6
	.byte	0x4
	.byte	0x3
	.byte	0x5a
	.uleb128 0x18
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x2dad
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x69
	.uleb128 0x18
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x18
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x18
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x18
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x18
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x18
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x18
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x18
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x18
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x18
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x18
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x18
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x18
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x18
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x18
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x18
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x18
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x18
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x18
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x18
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x18
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x18
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x18
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x18
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x18
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x18
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x18
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x18
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x18
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x18
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x18
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x18
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x18
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x18
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x18
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x18
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x18
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x18
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x18
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x18
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x18
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x18
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x18
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x18
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x18
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x18
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x18
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x18
	.string	"BUILT_IN_FLOOR"
	.sleb128 48
	.uleb128 0x18
	.string	"BUILT_IN_FLOORF"
	.sleb128 49
	.uleb128 0x18
	.string	"BUILT_IN_FLOORL"
	.sleb128 50
	.uleb128 0x18
	.string	"BUILT_IN_POW"
	.sleb128 51
	.uleb128 0x18
	.string	"BUILT_IN_TAN"
	.sleb128 52
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 53
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 54
	.uleb128 0x18
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 55
	.uleb128 0x18
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 56
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 57
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 58
	.uleb128 0x18
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 59
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC"
	.sleb128 60
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN"
	.sleb128 61
	.uleb128 0x18
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 62
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 63
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 64
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA"
	.sleb128 65
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 66
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 67
	.uleb128 0x18
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 68
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACD"
	.sleb128 69
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 70
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 71
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 72
	.uleb128 0x18
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 73
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 74
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 75
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 76
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 77
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 78
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 79
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 80
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 81
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 82
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 83
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 84
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 85
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 86
	.uleb128 0x18
	.string	"BUILD_IN_C3_PTR"
	.sleb128 87
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 88
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 89
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 90
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 91
	.uleb128 0x18
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 92
	.uleb128 0x18
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 93
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 94
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 95
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 96
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 97
	.uleb128 0x18
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 98
	.uleb128 0x18
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 99
	.uleb128 0x18
	.string	"BUILD_IN_C3_DADD"
	.sleb128 100
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 101
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFT"
	.sleb128 102
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 103
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 104
	.uleb128 0x18
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 105
	.uleb128 0x18
	.string	"BUILD_IN_EXTRACT"
	.sleb128 106
	.uleb128 0x18
	.string	"BUILD_IN_C3_BITR"
	.sleb128 107
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 108
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 109
	.uleb128 0x18
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 110
	.uleb128 0x18
	.string	"BUILD_IN_C3_STORE"
	.sleb128 111
	.uleb128 0x18
	.string	"BUILD_IN_C3_REVB"
	.sleb128 112
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 113
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 114
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 115
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 116
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 117
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 118
	.uleb128 0x18
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 119
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 120
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 121
	.uleb128 0x18
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 122
	.uleb128 0x18
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 123
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 124
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 125
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 126
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 127
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 128
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 129
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 130
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 131
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 132
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 133
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 134
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 135
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 136
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 137
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 138
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 139
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 140
	.uleb128 0x18
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 141
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 142
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 143
	.uleb128 0x18
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 144
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 145
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 146
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 147
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 148
	.uleb128 0x18
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 149
	.uleb128 0x18
	.string	"BUILT_IN_C2_VRND"
	.sleb128 150
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 151
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 152
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 153
	.uleb128 0x18
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 154
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 155
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 156
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 157
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD"
	.sleb128 158
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 159
	.uleb128 0x18
	.string	"BUILT_IN_C2_SATD"
	.sleb128 160
	.uleb128 0x18
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 161
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 162
	.uleb128 0x18
	.string	"BUILT_IN_C2_BCST"
	.sleb128 163
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 164
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 165
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 166
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 167
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 168
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 169
	.uleb128 0x18
	.string	"BUILT_IN_C2_MULS"
	.sleb128 170
	.uleb128 0x18
	.string	"BUILT_IN_C2_MADS"
	.sleb128 171
	.uleb128 0x18
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 172
	.uleb128 0x18
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 173
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV"
	.sleb128 174
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 175
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLP"
	.sleb128 176
	.uleb128 0x18
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 177
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 178
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 179
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 180
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 181
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 182
	.uleb128 0x18
	.string	"BUILT_IN_C2_BOP"
	.sleb128 183
	.uleb128 0x18
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 184
	.uleb128 0x18
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 185
	.uleb128 0x18
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 186
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 187
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 188
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 189
	.uleb128 0x18
	.string	"BUILT_IN_C2_MED"
	.sleb128 190
	.uleb128 0x18
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 191
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 192
	.uleb128 0x18
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 193
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 194
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 195
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 196
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 197
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 198
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 199
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 200
	.uleb128 0x18
	.string	"BUILT_IN_C2_FORK"
	.sleb128 201
	.uleb128 0x18
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 202
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 203
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 204
	.uleb128 0x18
	.string	"BUILT_IN_SQRT"
	.sleb128 205
	.uleb128 0x18
	.string	"BUILT_IN_SIN"
	.sleb128 206
	.uleb128 0x18
	.string	"BUILT_IN_COS"
	.sleb128 207
	.uleb128 0x18
	.string	"BUILT_IN_EXP"
	.sleb128 208
	.uleb128 0x18
	.string	"BUILT_IN_LOG"
	.sleb128 209
	.uleb128 0x18
	.string	"BUILT_IN_SQRTF"
	.sleb128 210
	.uleb128 0x18
	.string	"BUILT_IN_SINF"
	.sleb128 211
	.uleb128 0x18
	.string	"BUILT_IN_COSF"
	.sleb128 212
	.uleb128 0x18
	.string	"BUILT_IN_EXPF"
	.sleb128 213
	.uleb128 0x18
	.string	"BUILT_IN_LOGF"
	.sleb128 214
	.uleb128 0x18
	.string	"BUILT_IN_SQRTL"
	.sleb128 215
	.uleb128 0x18
	.string	"BUILT_IN_SINL"
	.sleb128 216
	.uleb128 0x18
	.string	"BUILT_IN_COSL"
	.sleb128 217
	.uleb128 0x18
	.string	"BUILT_IN_EXPL"
	.sleb128 218
	.uleb128 0x18
	.string	"BUILT_IN_LOGL"
	.sleb128 219
	.uleb128 0x18
	.string	"BUILT_IN_INF"
	.sleb128 220
	.uleb128 0x18
	.string	"BUILT_IN_INFF"
	.sleb128 221
	.uleb128 0x18
	.string	"BUILT_IN_INFL"
	.sleb128 222
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 223
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 224
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 225
	.uleb128 0x18
	.string	"BUILT_IN_NAN"
	.sleb128 226
	.uleb128 0x18
	.string	"BUILT_IN_NANF"
	.sleb128 227
	.uleb128 0x18
	.string	"BUILT_IN_NANL"
	.sleb128 228
	.uleb128 0x18
	.string	"BUILT_IN_NANS"
	.sleb128 229
	.uleb128 0x18
	.string	"BUILT_IN_NANSF"
	.sleb128 230
	.uleb128 0x18
	.string	"BUILT_IN_NANSL"
	.sleb128 231
	.uleb128 0x18
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 232
	.uleb128 0x18
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 233
	.uleb128 0x18
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 234
	.uleb128 0x18
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 235
	.uleb128 0x18
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 236
	.uleb128 0x18
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 237
	.uleb128 0x18
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 238
	.uleb128 0x18
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 239
	.uleb128 0x18
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 240
	.uleb128 0x18
	.string	"BUILT_IN_APPLY"
	.sleb128 241
	.uleb128 0x18
	.string	"BUILT_IN_RETURN"
	.sleb128 242
	.uleb128 0x18
	.string	"BUILT_IN_SETJMP"
	.sleb128 243
	.uleb128 0x18
	.string	"BUILT_IN_LONGJMP"
	.sleb128 244
	.uleb128 0x18
	.string	"BUILT_IN_TRAP"
	.sleb128 245
	.uleb128 0x18
	.string	"BUILT_IN_PREFETCH"
	.sleb128 246
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF"
	.sleb128 247
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 248
	.uleb128 0x18
	.string	"BUILT_IN_PUTS"
	.sleb128 249
	.uleb128 0x18
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 250
	.uleb128 0x18
	.string	"BUILT_IN_SPRINTF"
	.sleb128 251
	.uleb128 0x18
	.string	"BUILT_IN_SCANF"
	.sleb128 252
	.uleb128 0x18
	.string	"BUILT_IN_SSCANF"
	.sleb128 253
	.uleb128 0x18
	.string	"BUILT_IN_VPRINTF"
	.sleb128 254
	.uleb128 0x18
	.string	"BUILT_IN_VSCANF"
	.sleb128 255
	.uleb128 0x18
	.string	"BUILT_IN_VSSCANF"
	.sleb128 256
	.uleb128 0x18
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 257
	.uleb128 0x18
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 258
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC"
	.sleb128 259
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS"
	.sleb128 260
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE"
	.sleb128 261
	.uleb128 0x18
	.string	"BUILT_IN_FPRINTF"
	.sleb128 262
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 263
	.uleb128 0x18
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 264
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 265
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 266
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 267
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 268
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATER"
	.sleb128 269
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 270
	.uleb128 0x18
	.string	"BUILT_IN_ISLESS"
	.sleb128 271
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 272
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 273
	.uleb128 0x18
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 274
	.uleb128 0x18
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 275
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 276
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 277
	.uleb128 0x18
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 278
	.uleb128 0x18
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 279
	.uleb128 0x18
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 280
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 281
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 282
	.uleb128 0x18
	.string	"BUILT_IN_VA_START"
	.sleb128 283
	.uleb128 0x18
	.string	"BUILT_IN_STDARG_START"
	.sleb128 284
	.uleb128 0x18
	.string	"BUILT_IN_VA_END"
	.sleb128 285
	.uleb128 0x18
	.string	"BUILT_IN_VA_COPY"
	.sleb128 286
	.uleb128 0x18
	.string	"BUILT_IN_EXPECT"
	.sleb128 287
	.uleb128 0x18
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 288
	.uleb128 0x18
	.string	"BUILT_IN_NEW"
	.sleb128 289
	.uleb128 0x18
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 290
	.uleb128 0x18
	.string	"BUILT_IN_DELETE"
	.sleb128 291
	.uleb128 0x18
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 292
	.uleb128 0x18
	.string	"BUILT_IN_ABORT"
	.sleb128 293
	.uleb128 0x18
	.string	"BUILT_IN_EXIT"
	.sleb128 294
	.uleb128 0x18
	.string	"BUILT_IN__EXIT"
	.sleb128 295
	.uleb128 0x18
	.string	"BUILT_IN__EXIT2"
	.sleb128 296
	.uleb128 0x18
	.string	"END_BUILTINS"
	.sleb128 297
	.byte	0x0
	.uleb128 0x4
	.long	0x308b
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8e
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x90
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x92
	.long	0xb7e
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
	.uleb128 0x1c
	.long	.LASF7
	.byte	0x3
	.byte	0xa6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.byte	0xa7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF9
	.byte	0x3
	.byte	0xa8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x3
	.byte	0xa9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x3
	.byte	0xaa
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x3
	.byte	0xab
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF13
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
	.long	0x30c7
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
	.long	0x310f
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x2ef
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x2f0
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x2f1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x2f9
	.long	0x308b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x315d
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x30b
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x30c
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x30d
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x30e
	.long	0x31b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x31b6
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x305
	.uleb128 0x5
	.string	"class"
	.byte	0x9
	.byte	0x37
	.long	0x68c0
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
	.long	0x6906
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x315d
	.uleb128 0xc
	.long	0x3220
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x31f
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x321
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1d
	.long	.LASF14
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
	.long	0x3220
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x14f0
	.uleb128 0xc
	.long	0x327b
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x32e
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x32f
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x330
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x331
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x332
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x32c3
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x340
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x341
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x342
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x343
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x3301
	.long	.LASF15
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
	.long	0x3338
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x35f
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x360
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x361
	.long	0x32c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x337f
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x369
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x36a
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x36b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x36c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x33bd
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x377
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x378
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF14
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
	.long	0x33bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x33cd
	.long	0x1e3
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x3414
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3bd
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x3be
	.long	0x2dad
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
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x3
	.value	0x3c2
	.long	0x33bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x3504
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x3f3
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x3f4
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x3
	.value	0x3f7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1e
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
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x3fb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x3fc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x3
	.value	0x3fd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x3fe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x3ff
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x20
	.long	0x354b
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
	.long	0x3558
	.byte	0x0
	.uleb128 0x1b
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x354b
	.uleb128 0xc
	.long	0x38ae
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x53f
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x540
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x541
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x542
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1d
	.long	.LASF19
	.byte	0x3
	.value	0x543
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x3
	.value	0x544
	.long	0x1e3
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
	.uleb128 0x1e
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
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x548
	.long	0x843
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x3
	.value	0x550
	.long	0x3b8
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x552
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x553
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x554
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x555
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.value	0x556
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x557
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.value	0x558
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x3
	.value	0x559
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LASF23
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
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x561
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x566
	.long	0x3504
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x3
	.value	0x568
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x569
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x56a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x56b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x56c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x56d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x56e
	.long	0x1e3
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
	.uleb128 0x1d
	.long	.LASF25
	.byte	0x3
	.value	0x571
	.long	0x38ba
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
	.long	0x14b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x1b
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x38ae
	.uleb128 0xc
	.long	0x3903
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x7f0
	.uleb128 0x1f
	.long	.LASF23
	.byte	0x3
	.value	0x7f1
	.long	0x3b8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	0x3938
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x7e7
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x7ea
	.long	0x154f
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x7ed
	.long	0x47f
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x7f3
	.long	0x38c0
	.byte	0x0
	.uleb128 0x20
	.long	0x3977
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x808
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x809
	.long	0x4330
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x80a
	.long	0x9a
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x80b
	.long	0x1e3
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x80c
	.long	0x2df
	.byte	0x0
	.uleb128 0x21
	.long	0x4330
	.string	"function"
	.value	0x134
	.byte	0x3
	.value	0x79d
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x6c72
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x6c86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x6c8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x6c92
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x6ca8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF24
	.byte	0xc
	.byte	0xbe
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xc
	.byte	0xc1
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x4330
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
	.uleb128 0x1a
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
	.long	0x9a
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
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0x9a
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
	.long	0x6cc5
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
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0x9a
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
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0x9a
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
	.long	0x5ab6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x6cd7
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
	.long	0x697b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
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
	.long	0x19b
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0x9a
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
	.long	0x6cf0
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
	.long	0x6d0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LASF27
	.byte	0xc
	.value	0x1fa
	.long	0x6bfc
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
	.long	0x3977
	.uleb128 0x22
	.long	0x436e
	.byte	0x4
	.byte	0x3
	.value	0x81e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x81f
	.long	0x3220
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x820
	.long	0x14a0
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x821
	.long	0x3b8
	.byte	0x0
	.uleb128 0x22
	.long	0x4384
	.byte	0x4
	.byte	0x3
	.value	0x823
	.uleb128 0x9
	.string	"st2"
	.byte	0x3
	.value	0x824
	.long	0x3220
	.byte	0x0
	.uleb128 0xc
	.long	0x4ac0
	.string	"tree_decl"
	.byte	0x94
	.byte	0x3
	.value	0x7a0
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x7a1
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7a2
	.long	0xb6c
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
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1e
	.string	"mode"
	.byte	0x3
	.value	0x7a5
	.long	0x843
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x3
	.value	0x7ae
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x3
	.value	0x7c8
	.long	0x14ff
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF21
	.byte	0x3
	.value	0x7cb
	.long	0x3b8
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF22
	.byte	0x3
	.value	0x7cd
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LASF7
	.byte	0x3
	.value	0x7d5
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF8
	.byte	0x3
	.value	0x7d6
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.value	0x7d7
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.value	0x7d8
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.value	0x7d9
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.value	0x7da
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.value	0x7db
	.long	0x3b8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.long	0x3903
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1d
	.long	.LASF19
	.byte	0x3
	.value	0x7f6
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x3
	.value	0x7f7
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x7f8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x7f9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x7fa
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x7fb
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x3
	.value	0x7fc
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x7fd
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x7fe
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1d
	.long	.LASF20
	.byte	0x3
	.value	0x7ff
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x800
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x801
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x80d
	.long	0x3938
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x810
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x814
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x816
	.long	0x1e3
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
	.uleb128 0x1d
	.long	.LASF25
	.byte	0x3
	.value	0x819
	.long	0x4acc
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.long	0x4336
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.string	"sgi_u2"
	.byte	0x3
	.value	0x825
	.long	0x436e
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x826
	.long	0x14b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x82a
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0x0
	.uleb128 0x1b
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x4ac0
	.uleb128 0x17
	.long	0x4d23
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1e
	.uleb128 0x18
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x18
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x18
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x18
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x18
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x18
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x18
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x18
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x18
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x18
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x18
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x18
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x18
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x18
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x18
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x18
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x18
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x18
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x18
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x18
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x18
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x18
	.string	"ordered_cons_b"
	.sleb128 21
	.uleb128 0x18
	.string	"ordered_cons_e"
	.sleb128 22
	.uleb128 0x18
	.string	"options_dir"
	.sleb128 23
	.uleb128 0x18
	.string	"exec_freq_dir"
	.sleb128 24
	.uleb128 0x18
	.string	"sl2_sections_cons_b"
	.sleb128 25
	.uleb128 0x18
	.string	"sl2_minor_sections_cons_b"
	.sleb128 26
	.uleb128 0x18
	.string	"sl2_sections_cons_e"
	.sleb128 27
	.uleb128 0x18
	.string	"sl2_section_cons_b"
	.sleb128 28
	.uleb128 0x18
	.string	"sl2_section_cons_e"
	.sleb128 29
	.uleb128 0x18
	.string	"sl2_minor_section_cons_b"
	.sleb128 30
	.uleb128 0x18
	.string	"sl2_minor_section_cons_e"
	.sleb128 31
	.byte	0x0
	.uleb128 0xc
	.long	0x4d72
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x832
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x3
	.value	0x833
	.long	0x2dad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x834
	.long	0x4ad2
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
	.uleb128 0xc
	.long	0x4e2d
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0x9db
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x3
	.value	0x9de
	.long	0x4e2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0x9e0
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0x9e3
	.long	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0x9eb
	.long	0x4e32
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0x9ee
	.long	0x4e32
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0x9f3
	.long	0x4e32
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa02
	.long	0x4e70
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2cc
	.uleb128 0xa
	.long	0x4e37
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x23
	.long	0x4e64
	.byte	0x1
	.long	0x1e3
	.uleb128 0x24
	.long	0x4e64
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2df
	.uleb128 0x24
	.long	0x4e6a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x4e37
	.uleb128 0xa
	.long	0x4e75
	.uleb128 0x3
	.byte	0x4
	.long	0x4e40
	.uleb128 0x17
	.long	0x564a
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x2f
	.uleb128 0x18
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x18
	.string	"NIL"
	.sleb128 1
	.uleb128 0x18
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x18
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x18
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x18
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x18
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x18
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x18
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x18
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x18
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x18
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x18
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x18
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x18
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x18
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x18
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x18
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x18
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x18
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x18
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x18
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x18
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x18
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x18
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x18
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x18
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x18
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x18
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x18
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x18
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x18
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x18
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x18
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x18
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x18
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x18
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x18
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x18
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x18
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x18
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x18
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x18
	.string	"INSN"
	.sleb128 42
	.uleb128 0x18
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x18
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x18
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x18
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x18
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x18
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x18
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x18
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x18
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x18
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x18
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x18
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x18
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x18
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x18
	.string	"SET"
	.sleb128 57
	.uleb128 0x18
	.string	"USE"
	.sleb128 58
	.uleb128 0x18
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x18
	.string	"CALL"
	.sleb128 60
	.uleb128 0x18
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x18
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x18
	.string	"RESX"
	.sleb128 63
	.uleb128 0x18
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x18
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x18
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x18
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x18
	.string	"CONST"
	.sleb128 68
	.uleb128 0x18
	.string	"PC"
	.sleb128 69
	.uleb128 0x18
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x18
	.string	"REG"
	.sleb128 71
	.uleb128 0x18
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x18
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x18
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x18
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x18
	.string	"MEM"
	.sleb128 76
	.uleb128 0x18
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x18
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x18
	.string	"CC0"
	.sleb128 79
	.uleb128 0x18
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x18
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x18
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x18
	.string	"COND"
	.sleb128 83
	.uleb128 0x18
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x18
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x18
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x18
	.string	"NEG"
	.sleb128 87
	.uleb128 0x18
	.string	"MULT"
	.sleb128 88
	.uleb128 0x18
	.string	"DIV"
	.sleb128 89
	.uleb128 0x18
	.string	"MOD"
	.sleb128 90
	.uleb128 0x18
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x18
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x18
	.string	"AND"
	.sleb128 93
	.uleb128 0x18
	.string	"IOR"
	.sleb128 94
	.uleb128 0x18
	.string	"XOR"
	.sleb128 95
	.uleb128 0x18
	.string	"NOT"
	.sleb128 96
	.uleb128 0x18
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x18
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x18
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x18
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x18
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x18
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x18
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x18
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x18
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x18
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x18
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x18
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x18
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x18
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x18
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x18
	.string	"NE"
	.sleb128 112
	.uleb128 0x18
	.string	"EQ"
	.sleb128 113
	.uleb128 0x18
	.string	"GE"
	.sleb128 114
	.uleb128 0x18
	.string	"GT"
	.sleb128 115
	.uleb128 0x18
	.string	"LE"
	.sleb128 116
	.uleb128 0x18
	.string	"LT"
	.sleb128 117
	.uleb128 0x18
	.string	"GEU"
	.sleb128 118
	.uleb128 0x18
	.string	"GTU"
	.sleb128 119
	.uleb128 0x18
	.string	"LEU"
	.sleb128 120
	.uleb128 0x18
	.string	"LTU"
	.sleb128 121
	.uleb128 0x18
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x18
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x18
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x18
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x18
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x18
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x18
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x18
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x18
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x18
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x18
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x18
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x18
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x18
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x18
	.string	"FIX"
	.sleb128 136
	.uleb128 0x18
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x18
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x18
	.string	"ABS"
	.sleb128 139
	.uleb128 0x18
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x18
	.string	"FFS"
	.sleb128 141
	.uleb128 0x18
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x18
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x18
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x18
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x18
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x18
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x18
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x18
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x18
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x18
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x18
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x18
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x18
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x18
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x18
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x18
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x18
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x18
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x18
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x18
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x18
	.string	"PHI"
	.sleb128 162
	.uleb128 0x18
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x25
	.long	0x5724
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
	.long	0x564a
	.uleb128 0x13
	.long	0x5799
	.long	.LASF28
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
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x6b
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x6c
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF23
	.byte	0x4
	.byte	0x6d
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x26
	.long	.LASF28
	.byte	0x4
	.byte	0x6e
	.long	0x573f
	.uleb128 0x7
	.long	0x5876
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x73
	.uleb128 0x27
	.string	"rtwint"
	.byte	0x4
	.byte	0x74
	.long	0x47f
	.uleb128 0x27
	.string	"rtint"
	.byte	0x4
	.byte	0x75
	.long	0x2df
	.uleb128 0x27
	.string	"rtuint"
	.byte	0x4
	.byte	0x76
	.long	0x3b8
	.uleb128 0x27
	.string	"rtstr"
	.byte	0x4
	.byte	0x77
	.long	0x2cc
	.uleb128 0x27
	.string	"rtx"
	.byte	0x4
	.byte	0x78
	.long	0x9a
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x4
	.byte	0x79
	.long	0x19b
	.uleb128 0x27
	.string	"rttype"
	.byte	0x4
	.byte	0x7a
	.long	0x843
	.uleb128 0x27
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x7b
	.long	0x5724
	.uleb128 0x27
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x7c
	.long	0x588a
	.uleb128 0x27
	.string	"rtbit"
	.byte	0x4
	.byte	0x7d
	.long	0x58f0
	.uleb128 0x27
	.string	"rttree"
	.byte	0x4
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x27
	.string	"bb"
	.byte	0x4
	.byte	0x7f
	.long	0x5a7b
	.uleb128 0x27
	.string	"rtmem"
	.byte	0x4
	.byte	0x80
	.long	0x5a81
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5876
	.uleb128 0x4
	.long	0x58f0
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x7d
	.uleb128 0x1a
	.long	.LASF29
	.byte	0x6
	.byte	0x3d
	.long	0x60ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x60ec
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
	.long	0x5890
	.uleb128 0x4
	.long	0x5a7b
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x7f
	.uleb128 0x6
	.string	"head"
	.byte	0x7
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x7
	.byte	0xb5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x7
	.byte	0xb8
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x7
	.byte	0xb9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x7
	.byte	0xbc
	.long	0x623f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x623f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x616f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x616f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x616f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x616f
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
	.long	0x5a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x5a7b
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
	.long	0x64b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x617d
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
	.long	0x58f6
	.uleb128 0x3
	.byte	0x4
	.long	0x5799
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x82
	.long	0x57a4
	.uleb128 0xf
	.long	0x5aa6
	.long	0x5a87
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5ab6
	.long	0x9a
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x5af2
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x16
	.byte	0x24
	.uleb128 0x6
	.string	"rtx"
	.byte	0x16
	.byte	0x32
	.long	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"age"
	.byte	0x16
	.byte	0x36
	.long	0x3b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x5c8d
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x16
	.byte	0x3c
	.uleb128 0x18
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x18
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x18
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x18
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x18
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x18
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x18
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x18
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x18
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x18
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x18
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x18
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x18
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x18
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x18
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x18
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x18
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x18
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x18
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x18
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x18
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x7
	.long	0x5d89
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x16
	.byte	0x55
	.uleb128 0x27
	.string	"c"
	.byte	0x16
	.byte	0x56
	.long	0x7f3
	.uleb128 0x27
	.string	"uc"
	.byte	0x16
	.byte	0x58
	.long	0x5d89
	.uleb128 0x27
	.string	"s"
	.byte	0x16
	.byte	0x5a
	.long	0x5d99
	.uleb128 0x27
	.string	"us"
	.byte	0x16
	.byte	0x5c
	.long	0x5da9
	.uleb128 0x27
	.string	"i"
	.byte	0x16
	.byte	0x5e
	.long	0x5db9
	.uleb128 0x27
	.string	"u"
	.byte	0x16
	.byte	0x60
	.long	0x5dc9
	.uleb128 0x27
	.string	"l"
	.byte	0x16
	.byte	0x62
	.long	0x5dd9
	.uleb128 0x27
	.string	"ul"
	.byte	0x16
	.byte	0x64
	.long	0x5de9
	.uleb128 0x27
	.string	"hint"
	.byte	0x16
	.byte	0x66
	.long	0x5df9
	.uleb128 0x27
	.string	"uhint"
	.byte	0x16
	.byte	0x68
	.long	0x5e09
	.uleb128 0x27
	.string	"generic"
	.byte	0x16
	.byte	0x6a
	.long	0x5e19
	.uleb128 0x27
	.string	"cptr"
	.byte	0x16
	.byte	0x6c
	.long	0x5e29
	.uleb128 0x27
	.string	"rtx"
	.byte	0x16
	.byte	0x6e
	.long	0x5e39
	.uleb128 0x27
	.string	"rtvec"
	.byte	0x16
	.byte	0x70
	.long	0x5e49
	.uleb128 0x27
	.string	"tree"
	.byte	0x16
	.byte	0x72
	.long	0x5e59
	.uleb128 0x27
	.string	"bitmap"
	.byte	0x16
	.byte	0x74
	.long	0x5e69
	.uleb128 0x27
	.string	"reg"
	.byte	0x16
	.byte	0x76
	.long	0x5e79
	.uleb128 0x27
	.string	"const_equiv"
	.byte	0x16
	.byte	0x78
	.long	0x5f75
	.uleb128 0x27
	.string	"bb"
	.byte	0x16
	.byte	0x7a
	.long	0x5f85
	.uleb128 0x27
	.string	"te"
	.byte	0x16
	.byte	0x7c
	.long	0x5f95
	.byte	0x0
	.uleb128 0xf
	.long	0x5d99
	.long	0x427
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5da9
	.long	0x472
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5db9
	.long	0x438
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5dc9
	.long	0x2df
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5dd9
	.long	0x3b8
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5de9
	.long	0x4c9
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5df9
	.long	0x44e
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e09
	.long	0x47f
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e19
	.long	0x490
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e29
	.long	0x4e6
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e39
	.long	0x4e8
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e49
	.long	0xa5
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e59
	.long	0x1a8
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e69
	.long	0x1ef
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e79
	.long	0x58f0
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5e89
	.long	0x5f6f
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x5f6f
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x16
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x15
	.byte	0x31
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x15
	.byte	0x32
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x15
	.byte	0x33
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x15
	.byte	0x36
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x15
	.byte	0x39
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x15
	.byte	0x3a
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x15
	.byte	0x3b
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x15
	.byte	0x3c
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x15
	.byte	0x3d
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1a
	.long	.LASF30
	.byte	0x15
	.byte	0x3e
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x15
	.byte	0x3f
	.long	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5e89
	.uleb128 0xf
	.long	0x5f85
	.long	0x5abc
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5f95
	.long	0x5a7b
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x5fa5
	.long	0x5fb0
	.uleb128 0x10
	.long	0x3cf
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5fa5
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x16
	.byte	0x7e
	.long	0x5c8d
	.uleb128 0x4
	.long	0x603d
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x16
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x16
	.byte	0x82
	.long	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x16
	.byte	0x83
	.long	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x16
	.byte	0x85
	.long	0x5af2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF24
	.byte	0x16
	.byte	0x86
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x16
	.byte	0x87
	.long	0x5fb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x16
	.byte	0x8a
	.long	0x6050
	.uleb128 0x3
	.byte	0x4
	.long	0x5fc9
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x44e
	.uleb128 0x4
	.long	0x60c0
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x6
	.byte	0x35
	.long	0x60c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x60c0
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
	.long	0x60c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6069
	.uleb128 0xf
	.long	0x60d6
	.long	0x6056
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x6069
	.uleb128 0x3
	.byte	0x4
	.long	0x60d6
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x58f0
	.uleb128 0x4
	.long	0x615a
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
	.long	0x5e09
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x6169
	.uleb128 0x3
	.byte	0x4
	.long	0x6100
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x60f2
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x47f
	.uleb128 0x4
	.long	0x6239
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x6239
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x6239
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x5a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x7
	.byte	0x7d
	.long	0x5a7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x7
	.byte	0x80
	.long	0x9a
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
	.long	0x617d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x618e
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x6239
	.uleb128 0x4
	.long	0x64b2
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
	.long	0x64b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x64b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x64b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x64c3
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
	.uleb128 0x1d
	.long	.LASF29
	.byte	0x7
	.value	0x18b
	.long	0x64b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x64b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x615a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1d
	.long	.LASF32
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
	.long	0x64c3
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
	.long	0x64c3
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
	.long	0x615a
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
	.long	0x64c9
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
	.long	0x64b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x64b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x7
	.value	0x1b7
	.long	0x64b2
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
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x7
	.value	0x1c7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x7
	.value	0x1ca
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x7
	.value	0x1cd
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x7
	.value	0x1d1
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x7
	.value	0x1d4
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x7
	.value	0x1d7
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x7
	.value	0x1e2
	.long	0x9a
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
	.long	0x624b
	.uleb128 0x26
	.long	.LASF30
	.byte	0x7
	.byte	0xe6
	.long	0x5a7b
	.uleb128 0x3
	.byte	0x4
	.long	0x623f
	.uleb128 0x3
	.byte	0x4
	.long	0x64b2
	.uleb128 0x17
	.long	0x64fc
	.string	"op_type"
	.byte	0x4
	.byte	0x17
	.byte	0x1c
	.uleb128 0x18
	.string	"OP_IN"
	.sleb128 0
	.uleb128 0x18
	.string	"OP_OUT"
	.sleb128 1
	.uleb128 0x18
	.string	"OP_INOUT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x28
	.long	0x65de
	.long	.LASF33
	.value	0x274
	.byte	0x17
	.byte	0x9b
	.uleb128 0x6
	.string	"operand"
	.byte	0x17
	.byte	0xa3
	.long	0x65de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"operand_loc"
	.byte	0x17
	.byte	0xa6
	.long	0x65ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"constraints"
	.byte	0x17
	.byte	0xa9
	.long	0x65fe
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"operand_mode"
	.byte	0x17
	.byte	0xac
	.long	0x660e
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x6
	.string	"operand_type"
	.byte	0x17
	.byte	0xaf
	.long	0x661e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x6
	.string	"dup_loc"
	.byte	0x17
	.byte	0xb3
	.long	0x662e
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x6
	.string	"dup_num"
	.byte	0x17
	.byte	0xb7
	.long	0x775
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x17
	.byte	0xc4
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x26c
	.uleb128 0x6
	.string	"n_dups"
	.byte	0x17
	.byte	0xc7
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x26d
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x17
	.byte	0xca
	.long	0x2d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x26e
	.uleb128 0x1a
	.long	.LASF36
	.byte	0x17
	.byte	0xcd
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x270
	.byte	0x0
	.uleb128 0xf
	.long	0x65ee
	.long	0x9a
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x65fe
	.long	0x5ab6
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x660e
	.long	0x2cc
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x661e
	.long	0x843
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x662e
	.long	0x64cf
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x663e
	.long	0x5ab6
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x17
	.byte	0xd9
	.long	0x665f
	.uleb128 0x3
	.byte	0x4
	.long	0x6665
	.uleb128 0x23
	.long	0x667a
	.byte	0x1
	.long	0x2df
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x843
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x17
	.byte	0xdb
	.long	0x668d
	.uleb128 0x3
	.byte	0x4
	.long	0x6693
	.uleb128 0x23
	.long	0x66a4
	.byte	0x1
	.long	0x9a
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x29
	.byte	0x0
	.uleb128 0x4
	.long	0x6724
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x17
	.byte	0xde
	.uleb128 0x6
	.string	"predicate"
	.byte	0x17
	.byte	0xdf
	.long	0x6724
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"constraint"
	.byte	0x17
	.byte	0xe1
	.long	0x4e2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"mode"
	.byte	0x17
	.byte	0xe3
	.long	0x6729
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"strict_low"
	.byte	0x17
	.byte	0xe5
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.string	"eliminable"
	.byte	0x17
	.byte	0xe7
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x663e
	.uleb128 0xa
	.long	0x843
	.uleb128 0x13
	.long	0x67c2
	.long	.LASF37
	.byte	0x14
	.byte	0x17
	.byte	0xf2
	.uleb128 0x1a
	.long	.LASF24
	.byte	0x17
	.byte	0xf3
	.long	0x4e2d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"output"
	.byte	0x17
	.byte	0xf4
	.long	0x834
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"genfun"
	.byte	0x17
	.byte	0xf5
	.long	0x67c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"operand"
	.byte	0x17
	.byte	0xf6
	.long	0x67c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x17
	.byte	0xf8
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_dups"
	.byte	0x17
	.byte	0xf9
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x17
	.byte	0xfa
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x6
	.string	"output_format"
	.byte	0x17
	.byte	0xfb
	.long	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x667a
	.uleb128 0xa
	.long	0x67cc
	.uleb128 0x3
	.byte	0x4
	.long	0x67d2
	.uleb128 0xa
	.long	0x66a4
	.uleb128 0x17
	.long	0x6861
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x18
	.byte	0x23
	.uleb128 0x18
	.string	"NO_DEBUG"
	.sleb128 0
	.uleb128 0x18
	.string	"DBX_DEBUG"
	.sleb128 1
	.uleb128 0x18
	.string	"SDB_DEBUG"
	.sleb128 2
	.uleb128 0x18
	.string	"DWARF_DEBUG"
	.sleb128 3
	.uleb128 0x18
	.string	"DWARF2_DEBUG"
	.sleb128 4
	.uleb128 0x18
	.string	"XCOFF_DEBUG"
	.sleb128 5
	.uleb128 0x18
	.string	"VMS_DEBUG"
	.sleb128 6
	.uleb128 0x18
	.string	"VMS_AND_DWARF2_DEBUG"
	.sleb128 7
	.byte	0x0
	.uleb128 0x19
	.long	0x68c0
	.long	.LASF38
	.byte	0x4
	.byte	0x18
	.byte	0x33
	.uleb128 0x18
	.string	"DINFO_LEVEL_NONE"
	.sleb128 0
	.uleb128 0x18
	.string	"DINFO_LEVEL_TERSE"
	.sleb128 1
	.uleb128 0x18
	.string	"DINFO_LEVEL_NORMAL"
	.sleb128 2
	.uleb128 0x18
	.string	"DINFO_LEVEL_VERBOSE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x17
	.long	0x6906
	.string	"real_value_class"
	.byte	0x4
	.byte	0x9
	.byte	0x24
	.uleb128 0x18
	.string	"rvc_zero"
	.sleb128 0
	.uleb128 0x18
	.string	"rvc_normal"
	.sleb128 1
	.uleb128 0x18
	.string	"rvc_inf"
	.sleb128 2
	.uleb128 0x18
	.string	"rvc_nan"
	.sleb128 3
	.byte	0x0
	.uleb128 0xf
	.long	0x6916
	.long	0x44e
	.uleb128 0x10
	.long	0x3cf
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x697b
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0x843
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
	.uleb128 0x1a
	.long	.LASF31
	.byte	0xc
	.byte	0x1b
	.long	0x697b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6916
	.uleb128 0x13
	.long	0x69c7
	.long	.LASF39
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x1a
	.long	.LASF29
	.byte	0xc
	.byte	0x26
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1a
	.long	.LASF40
	.byte	0xc
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF31
	.byte	0xc
	.byte	0x29
	.long	0x69c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6981
	.uleb128 0x4
	.long	0x6b1c
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
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.long	.LASF40
	.byte	0xc
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1a
	.long	.LASF39
	.byte	0xc
	.byte	0x50
	.long	0x69c7
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
	.long	0x4e64
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x5ab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x6bfc
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
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x2a
	.long	0x6c66
	.long	.LASF27
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x18
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1b
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c66
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c78
	.uleb128 0x3
	.byte	0x4
	.long	0x6b1c
	.uleb128 0x3
	.byte	0x4
	.long	0x69cd
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6c98
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cae
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6ccb
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cdd
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6cf6
	.uleb128 0x4
	.long	0x6d58
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x1a
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x1a
	.byte	0x3b
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x1a
	.byte	0x3c
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x1a
	.byte	0x3d
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x1a
	.byte	0x3e
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x6f8e
	.string	"asm_out"
	.byte	0x70
	.byte	0x1a
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x1a
	.byte	0x35
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x1a
	.byte	0x35
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x1a
	.byte	0x38
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x1a
	.byte	0x3f
	.long	0x6d10
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x1a
	.byte	0x3f
	.long	0x6d10
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x1a
	.byte	0x46
	.long	0x6fa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x1a
	.byte	0x49
	.long	0x6fc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x1a
	.byte	0x4d
	.long	0x6fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x1a
	.byte	0x50
	.long	0x6ff3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x1a
	.byte	0x53
	.long	0x7005
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x1a
	.byte	0x56
	.long	0x7005
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x1a
	.byte	0x59
	.long	0x6ff3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x1a
	.byte	0x5d
	.long	0x701c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x1a
	.byte	0x60
	.long	0x83d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x1a
	.byte	0x63
	.long	0x83d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x1a
	.byte	0x6a
	.long	0x7038
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x1a
	.byte	0x6e
	.long	0x7054
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x1a
	.byte	0x73
	.long	0x6fdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x1a
	.byte	0x76
	.long	0x706b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x1a
	.byte	0x79
	.long	0x706b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x1a
	.byte	0x80
	.long	0x7091
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x1a
	.byte	0x8b
	.long	0x70b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x23
	.long	0x6fa8
	.byte	0x1
	.long	0x4e37
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x3b8
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6f8e
	.uleb128 0x2b
	.long	0x6fbf
	.byte	0x1
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ee
	.uleb128 0x3
	.byte	0x4
	.long	0x6fae
	.uleb128 0x2b
	.long	0x6fdc
	.byte	0x1
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fcb
	.uleb128 0x2b
	.long	0x6ff3
	.byte	0x1
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x47f
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6fe2
	.uleb128 0x2b
	.long	0x7005
	.byte	0x1
	.uleb128 0x24
	.long	0x6fbf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6ff9
	.uleb128 0x2b
	.long	0x701c
	.byte	0x1
	.uleb128 0x24
	.long	0x2cc
	.uleb128 0x24
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x700b
	.uleb128 0x2b
	.long	0x7038
	.byte	0x1
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2df
	.uleb128 0x24
	.long	0x490
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7022
	.uleb128 0x2b
	.long	0x7054
	.byte	0x1
	.uleb128 0x24
	.long	0x843
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x490
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x703e
	.uleb128 0x2b
	.long	0x706b
	.byte	0x1
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x705a
	.uleb128 0x2b
	.long	0x7091
	.byte	0x1
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x47f
	.uleb128 0x24
	.long	0x47f
	.uleb128 0x24
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7071
	.uleb128 0x23
	.long	0x70b6
	.byte	0x1
	.long	0x4e37
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x47f
	.uleb128 0x24
	.long	0x47f
	.uleb128 0x24
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7097
	.uleb128 0x4
	.long	0x7277
	.string	"sched"
	.byte	0x40
	.byte	0x1a
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x1a
	.byte	0x97
	.long	0x7296
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x1a
	.byte	0x9b
	.long	0x72b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x1a
	.byte	0xa0
	.long	0x72bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x1a
	.byte	0xa4
	.long	0x72e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x1a
	.byte	0xa7
	.long	0x72fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x1a
	.byte	0xaa
	.long	0x7315
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x1a
	.byte	0xae
	.long	0x733f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x1a
	.byte	0xaf
	.long	0x733f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x1a
	.byte	0xb4
	.long	0x72bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x1a
	.byte	0xc2
	.long	0x83d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x1a
	.byte	0xc3
	.long	0x734b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x1a
	.byte	0xc4
	.long	0x83d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x1a
	.byte	0xc5
	.long	0x734b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x1a
	.byte	0xcd
	.long	0x72bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x1a
	.byte	0xd8
	.long	0x83d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x1a
	.byte	0xd9
	.long	0x7361
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x23
	.long	0x7296
	.byte	0x1
	.long	0x2df
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7277
	.uleb128 0x23
	.long	0x72b1
	.byte	0x1
	.long	0x2df
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x729c
	.uleb128 0x2c
	.byte	0x1
	.long	0x2df
	.uleb128 0x3
	.byte	0x4
	.long	0x72b7
	.uleb128 0x23
	.long	0x72e2
	.byte	0x1
	.long	0x2df
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x2df
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72c3
	.uleb128 0x2b
	.long	0x72fe
	.byte	0x1
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x2df
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x72e8
	.uleb128 0x2b
	.long	0x7315
	.byte	0x1
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7304
	.uleb128 0x23
	.long	0x733f
	.byte	0x1
	.long	0x2df
	.uleb128 0x24
	.long	0x6fbf
	.uleb128 0x24
	.long	0x2df
	.uleb128 0x24
	.long	0x5ab6
	.uleb128 0x24
	.long	0x82e
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x731b
	.uleb128 0x2c
	.byte	0x1
	.long	0x9a
	.uleb128 0x3
	.byte	0x4
	.long	0x7345
	.uleb128 0x23
	.long	0x7361
	.byte	0x1
	.long	0x9a
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7351
	.uleb128 0x4
	.long	0x7650
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x1a
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x1a
	.byte	0x8f
	.long	0x6d58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x1a
	.byte	0xda
	.long	0x70bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x1a
	.byte	0xdd
	.long	0x7665
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x1a
	.byte	0xe0
	.long	0x7665
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x1a
	.byte	0xe4
	.long	0x766b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x1a
	.byte	0xe9
	.long	0x768b
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x1a
	.byte	0xec
	.long	0x769d
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x1a
	.byte	0xef
	.long	0x76b4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x1a
	.byte	0xf3
	.long	0x76ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x1a
	.byte	0xf7
	.long	0x76ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x1a
	.byte	0xfa
	.long	0x83d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x1a
	.byte	0xfd
	.long	0x76f4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x1a
	.value	0x103
	.long	0x7714
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x1a
	.value	0x107
	.long	0x7720
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x1a
	.value	0x10a
	.long	0x7736
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x1a
	.value	0x10d
	.long	0x76ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x1a
	.value	0x111
	.long	0x76ca
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x1a
	.value	0x115
	.long	0x6fdc
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x1a
	.value	0x118
	.long	0x774c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x1a
	.value	0x11d
	.long	0x4e37
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x1a
	.value	0x121
	.long	0x4e37
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x1a
	.value	0x124
	.long	0x4e37
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x1a
	.value	0x127
	.long	0x4e37
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x1a
	.value	0x12a
	.long	0x4e37
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x23
	.long	0x7665
	.byte	0x1
	.long	0x1e3
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7650
	.uleb128 0x3
	.byte	0x4
	.long	0x7671
	.uleb128 0xa
	.long	0x4d72
	.uleb128 0x23
	.long	0x768b
	.byte	0x1
	.long	0x2df
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7676
	.uleb128 0x2b
	.long	0x769d
	.byte	0x1
	.uleb128 0x24
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7691
	.uleb128 0x2b
	.long	0x76b4
	.byte	0x1
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x4e64
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76a3
	.uleb128 0x23
	.long	0x76ca
	.byte	0x1
	.long	0x4e37
	.uleb128 0x24
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76ba
	.uleb128 0x23
	.long	0x76f4
	.byte	0x1
	.long	0x9a
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x9a
	.uleb128 0x24
	.long	0x843
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76d0
	.uleb128 0x23
	.long	0x7714
	.byte	0x1
	.long	0x3b8
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2cc
	.uleb128 0x24
	.long	0x2df
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76fa
	.uleb128 0x2c
	.byte	0x1
	.long	0x4e37
	.uleb128 0x3
	.byte	0x4
	.long	0x771a
	.uleb128 0x23
	.long	0x7736
	.byte	0x1
	.long	0x4e37
	.uleb128 0x24
	.long	0x9a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7726
	.uleb128 0x23
	.long	0x774c
	.byte	0x1
	.long	0x2cc
	.uleb128 0x24
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x773c
	.uleb128 0x4
	.long	0x7933
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x1b
	.byte	0x19
	.uleb128 0x6
	.string	"init"
	.byte	0x1b
	.byte	0x1c
	.long	0x793f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"finish"
	.byte	0x1b
	.byte	0x1f
	.long	0x793f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"define"
	.byte	0x1b
	.byte	0x22
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"undef"
	.byte	0x1b
	.byte	0x25
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"start_source_file"
	.byte	0x1b
	.byte	0x29
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"end_source_file"
	.byte	0x1b
	.byte	0x2d
	.long	0x7968
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"begin_block"
	.byte	0x1b
	.byte	0x31
	.long	0x797f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"end_block"
	.byte	0x1b
	.byte	0x34
	.long	0x797f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"ignore_block"
	.byte	0x1b
	.byte	0x3b
	.long	0x76ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"source_line"
	.byte	0x1b
	.byte	0x3e
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"begin_prologue"
	.byte	0x1b
	.byte	0x43
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"end_prologue"
	.byte	0x1b
	.byte	0x47
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"end_epilogue"
	.byte	0x1b
	.byte	0x4a
	.long	0x7956
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"begin_function"
	.byte	0x1b
	.byte	0x4d
	.long	0x769d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"end_function"
	.byte	0x1b
	.byte	0x50
	.long	0x7968
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_decl"
	.byte	0x1b
	.byte	0x56
	.long	0x769d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"global_decl"
	.byte	0x1b
	.byte	0x5a
	.long	0x769d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"deferred_inline_function"
	.byte	0x1b
	.byte	0x5e
	.long	0x769d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"outlining_inline_function"
	.byte	0x1b
	.byte	0x63
	.long	0x769d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1a
	.long	.LASF41
	.byte	0x1b
	.byte	0x67
	.long	0x7991
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x2b
	.long	0x793f
	.byte	0x1
	.uleb128 0x24
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7933
	.uleb128 0x2b
	.long	0x7956
	.byte	0x1
	.uleb128 0x24
	.long	0x3b8
	.uleb128 0x24
	.long	0x2cc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7945
	.uleb128 0x2b
	.long	0x7968
	.byte	0x1
	.uleb128 0x24
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x795c
	.uleb128 0x2b
	.long	0x797f
	.byte	0x1
	.uleb128 0x24
	.long	0x3b8
	.uleb128 0x24
	.long	0x3b8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x796e
	.uleb128 0x2b
	.long	0x7991
	.byte	0x1
	.uleb128 0x24
	.long	0x9a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7985
	.uleb128 0x13
	.long	0x7a57
	.long	.LASF42
	.byte	0x18
	.byte	0x1c
	.byte	0x19
	.uleb128 0x6
	.string	"count_instrumented_edges"
	.byte	0x1c
	.byte	0x1d
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"count_edges_instrumented_now"
	.byte	0x1c
	.byte	0x22
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"current_function_cfg_checksum"
	.byte	0x1c
	.byte	0x27
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"max_counter_in_program"
	.byte	0x1c
	.byte	0x2c
	.long	0x617d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"count_profiles_merged"
	.byte	0x1c
	.byte	0x30
	.long	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x7ab7
	.string	"function_list"
	.byte	0x10
	.byte	0x1
	.byte	0xd9
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.byte	0xda
	.long	0x7ab7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1a
	.long	.LASF24
	.byte	0x1
	.byte	0xdb
	.long	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"cfg_checksum"
	.byte	0x1
	.byte	0xdc
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"count_edges"
	.byte	0x1
	.byte	0xdd
	.long	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a57
	.uleb128 0x2d
	.long	0x7aee
	.byte	0x1
	.string	"init_final"
	.byte	0x1
	.value	0x101
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x100
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x7ee5
	.byte	0x1
	.string	"end_final"
	.byte	0x1
	.value	0x110
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2e
	.long	.LASF43
	.byte	0x1
	.value	0x10f
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x113
	.long	0x819
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"string_type"
	.byte	0x1
	.value	0x114
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.string	"string_cst"
	.byte	0x1
	.value	0x114
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x31
	.string	"structure_decl"
	.byte	0x1
	.value	0x115
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"structure_value"
	.byte	0x1
	.value	0x115
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.string	"structure_pointer_type"
	.byte	0x1
	.value	0x115
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.string	"field_decl"
	.byte	0x1
	.value	0x116
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x31
	.string	"decl_chain"
	.byte	0x1
	.value	0x116
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"value_chain"
	.byte	0x1
	.value	0x116
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x31
	.string	"sizeof_field_value"
	.byte	0x1
	.value	0x117
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"domain_type"
	.byte	0x1
	.value	0x117
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x32
	.long	0x7c8e
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x31
	.string	"cwd"
	.byte	0x1
	.value	0x136
	.long	0x4e8
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"da_filename"
	.byte	0x1
	.value	0x136
	.long	0x4e8
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"da_filename_len"
	.byte	0x1
	.value	0x137
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x32
	.long	0x7d55
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x31
	.string	"gcov_type_type"
	.byte	0x1
	.value	0x151
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.string	"gcov_type_pointer_type"
	.byte	0x1
	.value	0x152
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"domain_tree"
	.byte	0x1
	.value	0x153
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x31
	.string	"gcov_type_array_type"
	.byte	0x1
	.value	0x156
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"gcov_type_array_pointer_type"
	.byte	0x1
	.value	0x158
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.string	"counts_table"
	.byte	0x1
	.value	0x15a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x31
	.string	"item"
	.byte	0x1
	.value	0x192
	.long	0x7ab7
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LASF32
	.byte	0x1
	.value	0x193
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"checksum_field"
	.byte	0x1
	.value	0x194
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"arc_count_field"
	.byte	0x1
	.value	0x194
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"name_field"
	.byte	0x1
	.value	0x194
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.string	"domain"
	.byte	0x1
	.value	0x195
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"array_value_chain"
	.byte	0x1
	.value	0x196
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"bb_fn_struct_type"
	.byte	0x1
	.value	0x197
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"bb_fn_struct_array_type"
	.byte	0x1
	.value	0x198
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"bb_fn_struct_array_pointer_type"
	.byte	0x1
	.value	0x199
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"bb_fn_struct_pointer_type"
	.byte	0x1
	.value	0x19a
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"field_value"
	.byte	0x1
	.value	0x19b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"field_value_chain"
	.byte	0x1
	.value	0x19b
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x31
	.string	"name_len"
	.byte	0x1
	.value	0x1c2
	.long	0x419
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x7f39
	.byte	0x1
	.string	"default_function_pro_epilogue"
	.byte	0x1
	.value	0x21c
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x21a
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"size"
	.byte	0x1
	.value	0x21b
	.long	0x47f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x7f70
	.byte	0x1
	.string	"no_asm_to_stream"
	.byte	0x1
	.value	0x223
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x222
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"app_enable"
	.byte	0x1
	.value	0x22b
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x34
	.byte	0x1
	.string	"app_disable"
	.byte	0x1
	.value	0x238
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.byte	0x1
	.string	"dbr_sequence_length"
	.byte	0x1
	.value	0x247
	.byte	0x1
	.long	0x2df
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0xc
	.long	0x8013
	.string	"label_alignment"
	.byte	0x4
	.byte	0x1
	.value	0x26f
	.uleb128 0xd
	.string	"alignment"
	.byte	0x1
	.value	0x270
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF44
	.byte	0x1
	.value	0x271
	.long	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"init_insn_lengths"
	.byte	0x1
	.value	0x27c
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x36
	.long	0x809d
	.byte	0x1
	.string	"get_attr_length"
	.byte	0x1
	.value	0x298
	.byte	0x1
	.long	0x2df
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x297
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"body"
	.byte	0x1
	.value	0x29a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x29b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF14
	.byte	0x1
	.value	0x29c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x80ef
	.string	"final_addr_vec_align"
	.byte	0x1
	.value	0x31f
	.byte	0x1
	.long	0x2df
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.string	"addr_vec"
	.byte	0x1
	.value	0x31e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x320
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x812c
	.byte	0x1
	.string	"label_to_alignment"
	.byte	0x1
	.value	0x33e
	.byte	0x1
	.long	0x2df
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2e
	.long	.LASF41
	.byte	0x1
	.value	0x33d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x8235
	.string	"align_fuzz"
	.byte	0x1
	.value	0x364
	.byte	0x1
	.long	0x2df
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x33
	.string	"start"
	.byte	0x1
	.value	0x361
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x361
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"known_align_log"
	.byte	0x1
	.value	0x362
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"growth"
	.byte	0x1
	.value	0x363
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x365
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"align_label"
	.byte	0x1
	.value	0x366
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"known_align"
	.byte	0x1
	.value	0x367
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"end_shuid"
	.byte	0x1
	.value	0x368
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"fuzz"
	.byte	0x1
	.value	0x369
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x31
	.string	"align_addr"
	.byte	0x1
	.value	0x36d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"new_align"
	.byte	0x1
	.value	0x36d
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x82b3
	.byte	0x1
	.string	"insn_current_reference_address"
	.byte	0x1
	.value	0x38c
	.byte	0x1
	.long	0x2df
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x33
	.string	"branch"
	.byte	0x1
	.value	0x38b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"dest"
	.byte	0x1
	.value	0x38d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x38d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"seq_uid"
	.byte	0x1
	.value	0x38e
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	0x8394
	.byte	0x1
	.string	"compute_alignments"
	.byte	0x1
	.value	0x3b1
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x3b2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF44
	.byte	0x1
	.value	0x3b2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"max_log"
	.byte	0x1
	.value	0x3b2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x3b3
	.long	0x64b8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x30
	.long	.LASF41
	.byte	0x1
	.value	0x3c6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"fallthru_frequency"
	.byte	0x1
	.value	0x3c7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"branch_frequency"
	.byte	0x1
	.value	0x3c7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"has_fallthru"
	.byte	0x1
	.value	0x3c7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x3c8
	.long	0x623f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8767
	.byte	0x1
	.string	"shorten_branches"
	.byte	0x1
	.value	0x414
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0x413
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x415
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x31
	.string	"max_uid"
	.byte	0x1
	.value	0x416
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x417
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x31
	.string	"max_log"
	.byte	0x1
	.value	0x418
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.long	.LASF44
	.byte	0x1
	.value	0x419
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x41c
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.string	"something_changed"
	.byte	0x1
	.value	0x41d
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x31
	.string	"varying_length"
	.byte	0x1
	.value	0x41e
	.long	0x4e8
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"body"
	.byte	0x1
	.value	0x41f
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x420
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"align_tab"
	.byte	0x1
	.value	0x421
	.long	0x8767
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x32
	.long	0x84ec
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x31
	.string	"old"
	.byte	0x1
	.value	0x42c
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x31
	.string	"n_labels"
	.byte	0x1
	.value	0x42d
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"n_old_labels"
	.byte	0x1
	.value	0x42e
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x32
	.long	0x8542
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x44c
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.long	0x8527
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0x459
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x30
	.long	.LASF41
	.byte	0x1
	.value	0x482
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8570
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x4a9
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x4aa
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x32
	.long	0x85b8
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x4f9
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x4fc
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LASF45
	.byte	0x1
	.value	0x4fd
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x862c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x519
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"const_delay_slots"
	.byte	0x1
	.value	0x51a
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x525
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x526
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF48
	.byte	0x1
	.value	0x527
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8756
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x31
	.string	"new_length"
	.byte	0x1
	.value	0x558
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"tmp_length"
	.byte	0x1
	.value	0x55a
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"length_align"
	.byte	0x1
	.value	0x55c
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	0x86c4
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x562
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x565
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF45
	.byte	0x1
	.value	0x566
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8707
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5ea
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x5ef
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x5f0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5ff
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x605
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x606
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF48
	.byte	0x1
	.value	0x607
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF49
	.long	0x9636
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14570
	.byte	0x0
	.uleb128 0xf
	.long	0x8777
	.long	0x9a
	.uleb128 0x10
	.long	0x3cf
	.byte	0xf
	.byte	0x0
	.uleb128 0x37
	.long	0x87d0
	.string	"asm_insn_count"
	.byte	0x1
	.value	0x640
	.byte	0x1
	.long	0x2df
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.string	"body"
	.byte	0x1
	.value	0x63f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF50
	.byte	0x1
	.value	0x641
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"count"
	.byte	0x1
	.value	0x642
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8829
	.byte	0x1
	.string	"final_start_function"
	.byte	0x1
	.value	0x660
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0x65d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x65e
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF51
	.byte	0x1
	.value	0x65f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0x8865
	.string	"profile_after_prologue"
	.byte	0x1
	.value	0x6a9
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x6a8
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x88b4
	.string	"profile_function"
	.byte	0x1
	.value	0x6b3
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x6b2
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x6c2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"final_end_function"
	.byte	0x1
	.value	0x704
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2d
	.long	0x899e
	.byte	0x1
	.string	"final"
	.byte	0x1
	.value	0x728
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0x724
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x725
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF51
	.byte	0x1
	.value	0x726
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"prescan"
	.byte	0x1
	.value	0x727
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x729
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"max_line"
	.byte	0x1
	.value	0x72a
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"max_uid"
	.byte	0x1
	.value	0x72b
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	0x898d
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x31
	.string	"new_item"
	.byte	0x1
	.value	0x784
	.long	0x7ab7
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF49
	.long	0x9621
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15309
	.byte	0x0
	.uleb128 0x36
	.long	0x8a0c
	.byte	0x1
	.string	"get_insn_template"
	.byte	0x1
	.value	0x798
	.byte	0x1
	.long	0x2cc
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x796
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x797
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"output"
	.byte	0x1
	.value	0x799
	.long	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF49
	.long	0x960c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15377
	.byte	0x0
	.uleb128 0x39
	.long	0x8a7c
	.string	"output_alternate_entry_point"
	.byte	0x1
	.value	0x7b3
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x7b1
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x7b2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x7b4
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF49
	.long	0x95f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15406
	.byte	0x0
	.uleb128 0x36
	.long	0x8d6a
	.byte	0x1
	.string	"final_scan_insn"
	.byte	0x1
	.value	0x7da
	.byte	0x1
	.long	0x9a
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x7d5
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0x7d6
	.long	0x6fbf
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.long	.LASF51
	.byte	0x1
	.value	0x7d7
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"prescan"
	.byte	0x1
	.value	0x7d8
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"nopeepholes"
	.byte	0x1
	.value	0x7d9
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.long	0x8b1b
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x822
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0x0
	.uleb128 0x32
	.long	0x8b37
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x838
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x32
	.long	0x8b87
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0x855
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.string	"note_after"
	.byte	0x1
	.value	0x856
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x31
	.string	"num"
	.byte	0x1
	.value	0x86a
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8ba5
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x88f
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x32
	.long	0x8be8
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.string	"nextbody"
	.byte	0x1
	.value	0x8cf
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x31
	.string	"log_align"
	.byte	0x1
	.value	0x8df
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8d59
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x31
	.string	"body"
	.byte	0x1
	.value	0x8ff
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"insn_code_number"
	.byte	0x1
	.value	0x900
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF50
	.byte	0x1
	.value	0x901
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"note"
	.byte	0x1
	.value	0x902
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.long	0x8c71
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x31
	.string	"vlen"
	.byte	0x1
	.value	0x91f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"idx"
	.byte	0x1
	.value	0x91f
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x32
	.long	0x8c8e
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x964
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x32
	.long	0x8ccf
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x31
	.string	"noperands"
	.byte	0x1
	.value	0x97a
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"ops"
	.byte	0x1
	.value	0x97b
	.long	0x5ab6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x97c
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x32
	.long	0x8d21
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x9a1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0x9a2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x9b6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0x9b7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8d3f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x31
	.string	"prev"
	.byte	0x1
	.value	0xad8
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x31
	.string	"new"
	.byte	0x1
	.value	0xaf1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF49
	.long	0x95e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15444
	.byte	0x0
	.uleb128 0x39
	.long	0x8db1
	.string	"notice_source_line"
	.byte	0x1
	.value	0xb33
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xb32
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0xb34
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x8dfc
	.byte	0x1
	.string	"cleanup_subreg_operands"
	.byte	0x1
	.value	0xb42
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xb41
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xb43
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0x8e94
	.byte	0x1
	.string	"alter_subreg"
	.byte	0x1
	.value	0xb65
	.byte	0x1
	.long	0x9a
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x33
	.string	"xp"
	.byte	0x1
	.value	0xb64
	.long	0x5ab6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xb66
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xb67
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	0x8e83
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x31
	.string	"new"
	.byte	0x1
	.value	0xb6f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x31
	.string	"regno"
	.byte	0x1
	.value	0xb77
	.long	0x3b8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF49
	.long	0x95cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16027
	.byte	0x0
	.uleb128 0x37
	.long	0x8edb
	.string	"walk_alter_subreg"
	.byte	0x1
	.value	0xb8b
	.byte	0x1
	.long	0x9a
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x33
	.string	"xp"
	.byte	0x1
	.value	0xb8a
	.long	0x5ab6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xb8c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8f78
	.byte	0x1
	.string	"output_operand_lossage"
	.byte	0x1
	.value	0xc4a
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x33
	.string	"msgid"
	.byte	0x1
	.value	0xc49
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x31
	.string	"fmt_string"
	.byte	0x1
	.value	0xc4b
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"new_message"
	.byte	0x1
	.value	0xc4c
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"pfx_str"
	.byte	0x1
	.value	0xc4d
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x31
	.string	"ap"
	.byte	0x1
	.value	0xc4e
	.long	0x40a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x8fb7
	.string	"output_asm_name"
	.byte	0x1
	.value	0xc66
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x31
	.string	"num"
	.byte	0x1
	.value	0xc69
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x9033
	.string	"get_mem_expr_from_op"
	.byte	0x1
	.value	0xc81
	.byte	0x1
	.long	0x1e3
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0xc7f
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"paddressp"
	.byte	0x1
	.value	0xc80
	.long	0x82e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"expr"
	.byte	0x1
	.value	0xc82
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.string	"inner_addressp"
	.byte	0x1
	.value	0xc83
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x39
	.long	0x90e0
	.string	"output_asm_operand_names"
	.byte	0x1
	.value	0xcb0
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.long	.LASF16
	.byte	0x1
	.value	0xcad
	.long	0x5ab6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"oporder"
	.byte	0x1
	.value	0xcae
	.long	0x82e
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"nops"
	.byte	0x1
	.value	0xcaf
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"wrote"
	.byte	0x1
	.value	0xcb1
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xcb2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x31
	.string	"addressp"
	.byte	0x1
	.value	0xcb6
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"expr"
	.byte	0x1
	.value	0xcb7
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x9196
	.byte	0x1
	.string	"output_asm_insn"
	.byte	0x1
	.value	0xcd8
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2e
	.long	.LASF50
	.byte	0x1
	.value	0xcd6
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF16
	.byte	0x1
	.value	0xcd7
	.long	0x5ab6
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0xcd9
	.long	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0xcda
	.long	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"oporder"
	.byte	0x1
	.value	0xcde
	.long	0x9196
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.string	"opoutput"
	.byte	0x1
	.value	0xcdf
	.long	0x91a6
	.byte	0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x31
	.string	"ops"
	.byte	0x1
	.value	0xce0
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x31
	.string	"letter"
	.byte	0x1
	.value	0xd51
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x91a6
	.long	0x2df
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x91b6
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1d
	.byte	0x0
	.uleb128 0x2d
	.long	0x91fc
	.byte	0x1
	.string	"output_asm_label"
	.byte	0x1
	.value	0xda7
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xda6
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0xda8
	.long	0x91fc
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.byte	0x0
	.uleb128 0xf
	.long	0x920c
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xff
	.byte	0x0
	.uleb128 0x39
	.long	0x925e
	.string	"output_operand"
	.byte	0x1
	.value	0xdc4
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xdc2
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0xdc3
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF49
	.long	0x95b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16496
	.byte	0x0
	.uleb128 0x2d
	.long	0x9291
	.byte	0x1
	.string	"output_address"
	.byte	0x1
	.value	0xdd8
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xdd7
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x92f8
	.byte	0x1
	.string	"output_addr_const"
	.byte	0x1
	.value	0xde5
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0xde3
	.long	0x6fbf
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xde4
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0xde6
	.long	0x91fc
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x3b
	.string	"restart"
	.byte	0x1
	.value	0xe37
	.long	.L729
	.byte	0x0
	.uleb128 0x2d
	.long	0x939a
	.byte	0x1
	.string	"asm_fprintf"
	.byte	0x1
	.value	0xe64
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2e
	.long	.LASF5
	.byte	0x1
	.value	0xe63
	.long	0x6fbf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xe63
	.long	0x2cc
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0xe65
	.long	0x939a
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x31
	.string	"q"
	.byte	0x1
	.value	0xe66
	.long	0x4e8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0xe66
	.long	0x2d7
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x32
	.long	0x9389
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x31
	.string	"argptr"
	.byte	0x1
	.value	0xe68
	.long	0x40a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	.LBB51
	.long	.LBE51
	.byte	0x0
	.uleb128 0x38
	.long	.LASF49
	.long	0x95a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16643
	.byte	0x0
	.uleb128 0xf
	.long	0x93aa
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x9
	.byte	0x0
	.uleb128 0x2d
	.long	0x94ac
	.byte	0x1
	.string	"split_double"
	.byte	0x1
	.value	0xf0a
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x33
	.string	"value"
	.byte	0x1
	.value	0xf08
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF29
	.byte	0x1
	.value	0xf09
	.long	0x5ab6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"second"
	.byte	0x1
	.value	0xf09
	.long	0x5ab6
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	0x9467
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x31
	.string	"low"
	.byte	0x1
	.value	0xf12
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"high"
	.byte	0x1
	.value	0xf12
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"mask"
	.byte	0x1
	.value	0xf13
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"sign_bit"
	.byte	0x1
	.value	0xf13
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"sign_extend"
	.byte	0x1
	.value	0xf13
	.long	0x490
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	0x9485
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x31
	.string	"high"
	.byte	0x1
	.value	0xf45
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0xf72
	.long	0x315d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.value	0xf73
	.long	0x94ac
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x94bc
	.long	0x4c9
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1
	.byte	0x0
	.uleb128 0x36
	.long	0x9506
	.byte	0x1
	.string	"leaf_function_p"
	.byte	0x1
	.value	0xf95
	.byte	0x1
	.long	0x2df
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0xf96
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"link"
	.byte	0x1
	.value	0xf97
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x957e
	.byte	0x1
	.string	"final_forward_branch_p"
	.byte	0x1
	.value	0xfc1
	.byte	0x1
	.long	0x2df
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xfc0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"insn_id"
	.byte	0x1
	.value	0xfc2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"label_id"
	.byte	0x1
	.value	0xfc2
	.long	0x2df
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF49
	.long	0x958e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16868
	.byte	0x0
	.uleb128 0xf
	.long	0x958e
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x16
	.byte	0x0
	.uleb128 0xa
	.long	0x957e
	.uleb128 0xf
	.long	0x95a3
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x9593
	.uleb128 0xf
	.long	0x95b8
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xe
	.byte	0x0
	.uleb128 0xa
	.long	0x95a8
	.uleb128 0xf
	.long	0x95cd
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x95bd
	.uleb128 0xf
	.long	0x95e2
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xf
	.byte	0x0
	.uleb128 0xa
	.long	0x95d2
	.uleb128 0xf
	.long	0x95f7
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1c
	.byte	0x0
	.uleb128 0xa
	.long	0x95e7
	.uleb128 0xf
	.long	0x960c
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x11
	.byte	0x0
	.uleb128 0xa
	.long	0x95fc
	.uleb128 0xf
	.long	0x9621
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x5
	.byte	0x0
	.uleb128 0xa
	.long	0x9611
	.uleb128 0xf
	.long	0x9636
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x9626
	.uleb128 0x3d
	.string	"debug_insn"
	.byte	0x1
	.byte	0x78
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	debug_insn
	.uleb128 0x3d
	.string	"last_linenum"
	.byte	0x1
	.byte	0x7c
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	last_linenum
	.uleb128 0x3d
	.string	"high_block_linenum"
	.byte	0x1
	.byte	0x7f
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	high_block_linenum
	.uleb128 0x3d
	.string	"high_function_linenum"
	.byte	0x1
	.byte	0x82
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	high_function_linenum
	.uleb128 0x3d
	.string	"last_filename"
	.byte	0x1
	.byte	0x85
	.long	0x2cc
	.byte	0x5
	.byte	0x3
	.long	last_filename
	.uleb128 0x3d
	.string	"insn_noperands"
	.byte	0x1
	.byte	0x8f
	.long	0x3b8
	.byte	0x5
	.byte	0x3
	.long	insn_noperands
	.uleb128 0x3d
	.string	"last_ignored_compare"
	.byte	0x1
	.byte	0x93
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	last_ignored_compare
	.uleb128 0x3d
	.string	"new_block"
	.byte	0x1
	.byte	0x97
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	new_block
	.uleb128 0x3d
	.string	"insn_counter"
	.byte	0x1
	.byte	0x9c
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	insn_counter
	.uleb128 0x3d
	.string	"block_depth"
	.byte	0x1
	.byte	0xbe
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	block_depth
	.uleb128 0x3d
	.string	"app_on"
	.byte	0x1
	.byte	0xc2
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	app_on
	.uleb128 0x3d
	.string	"line_note_exists"
	.byte	0x1
	.byte	0xd1
	.long	0x4e8
	.byte	0x5
	.byte	0x3
	.long	line_note_exists
	.uleb128 0x3d
	.string	"functions_head"
	.byte	0x1
	.byte	0xe0
	.long	0x7ab7
	.byte	0x5
	.byte	0x3
	.long	functions_head
	.uleb128 0x3d
	.string	"functions_tail"
	.byte	0x1
	.byte	0xe1
	.long	0x97bd
	.byte	0x5
	.byte	0x3
	.long	functions_tail
	.uleb128 0x3
	.byte	0x4
	.long	0x7ab7
	.uleb128 0x31
	.string	"insn_lengths"
	.byte	0x1
	.value	0x255
	.long	0x82e
	.byte	0x5
	.byte	0x3
	.long	insn_lengths
	.uleb128 0x31
	.string	"insn_lengths_max_uid"
	.byte	0x1
	.value	0x25a
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	insn_lengths_max_uid
	.uleb128 0x31
	.string	"uid_align"
	.byte	0x1
	.value	0x274
	.long	0x5ab6
	.byte	0x5
	.byte	0x3
	.long	uid_align
	.uleb128 0x31
	.string	"uid_shuid"
	.byte	0x1
	.value	0x275
	.long	0x82e
	.byte	0x5
	.byte	0x3
	.long	uid_shuid
	.uleb128 0x31
	.string	"label_align"
	.byte	0x1
	.value	0x276
	.long	0x984b
	.byte	0x5
	.byte	0x3
	.long	label_align
	.uleb128 0x3
	.byte	0x4
	.long	0x7fd5
	.uleb128 0x31
	.string	"min_labelno"
	.byte	0x1
	.value	0x331
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	min_labelno
	.uleb128 0x31
	.string	"max_labelno"
	.byte	0x1
	.value	0x331
	.long	0x2df
	.byte	0x5
	.byte	0x3
	.long	max_labelno
	.uleb128 0x3e
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"mips_print_operand_punct"
	.byte	0xd
	.byte	0x8f
	.long	0x91fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"set_noreorder"
	.byte	0xd
	.byte	0x9b
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"set_nomacro"
	.byte	0xd
	.byte	0x9c
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"dslots_jump_filled"
	.byte	0xd
	.byte	0xb5
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"mips_abi"
	.byte	0xd
	.value	0x3ca
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9928
	.long	0x438
	.uleb128 0x10
	.long	0x3cf
	.byte	0xff
	.byte	0x0
	.uleb128 0x3e
	.string	"_sch_istable"
	.byte	0x14
	.byte	0x48
	.long	0x993e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9918
	.uleb128 0xf
	.long	0x9953
	.long	0xa8c
	.uleb128 0x10
	.long	0x3cf
	.byte	0x35
	.byte	0x0
	.uleb128 0x40
	.long	.LASF4
	.byte	0x5
	.byte	0x34
	.long	0x9960
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9943
	.uleb128 0xf
	.long	0x9975
	.long	0x427
	.uleb128 0x10
	.long	0x3cf
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x9988
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9965
	.uleb128 0xf
	.long	0x999d
	.long	0x1e3
	.uleb128 0x10
	.long	0x3cf
	.byte	0x3a
	.byte	0x0
	.uleb128 0x3f
	.string	"global_trees"
	.byte	0x3
	.value	0x8b5
	.long	0x998d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x99c4
	.long	0x1e3
	.uleb128 0x10
	.long	0x3cf
	.byte	0xa
	.byte	0x0
	.uleb128 0x3f
	.string	"integer_types"
	.byte	0x3
	.value	0x91d
	.long	0x99b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_decl"
	.byte	0x3
	.value	0xbc8
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9a0c
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_class"
	.byte	0x4
	.byte	0x45
	.long	0x9a1f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x99fc
	.uleb128 0xf
	.long	0x9a34
	.long	0x9a
	.uleb128 0x10
	.long	0x3cf
	.byte	0x80
	.byte	0x0
	.uleb128 0x3f
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x6a4
	.long	0x9a24
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"print_rtx_head"
	.byte	0x4
	.value	0x7f4
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9a75
	.long	0x2cc
	.uleb128 0x10
	.long	0x3cf
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3e
	.string	"reg_names"
	.byte	0x15
	.byte	0xa3
	.long	0x9a65
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9a98
	.long	0x58f6
	.uleb128 0x10
	.long	0x3cf
	.byte	0x1
	.byte	0x0
	.uleb128 0x3f
	.string	"entry_exit_blocks"
	.byte	0x7
	.value	0x139
	.long	0x9a88
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9ac4
	.long	0x2d7
	.uleb128 0x10
	.long	0x3cf
	.byte	0xaf
	.byte	0x0
	.uleb128 0x41
	.string	"regs_ever_live"
	.byte	0x1
	.byte	0xb4
	.long	0x9ab4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regs_ever_live
	.uleb128 0x42
	.string	"insn_addresses_"
	.byte	0x1
	.value	0x257
	.long	0x603d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_addresses_
	.uleb128 0x42
	.string	"insn_current_address"
	.byte	0x1
	.value	0x25d
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_current_address
	.uleb128 0x3e
	.string	"which_alternative"
	.byte	0x17
	.byte	0x96
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF33
	.byte	0x17
	.byte	0xd0
	.long	0x64fc
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9b57
	.long	0x672e
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x40
	.long	.LASF37
	.byte	0x17
	.byte	0xfe
	.long	0x9b64
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9b4c
	.uleb128 0x3e
	.string	"write_symbols"
	.byte	0x18
	.byte	0x30
	.long	0x67d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF38
	.byte	0x18
	.byte	0x3b
	.long	0x6861
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF51
	.byte	0x18
	.byte	0x43
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"optimize_size"
	.byte	0x18
	.byte	0x47
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"profile_arc_flag"
	.byte	0x18
	.byte	0xcc
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_print_asm_name"
	.byte	0x18
	.byte	0xef
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_pic"
	.byte	0x18
	.value	0x1df
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_verbose_asm"
	.byte	0x18
	.value	0x213
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_debug_asm"
	.byte	0x18
	.value	0x21c
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_dump_rtl_in_asm"
	.byte	0x18
	.value	0x21e
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"frame_pointer_needed"
	.byte	0x1
	.byte	0xba
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	frame_pointer_needed
	.uleb128 0x3f
	.string	"align_loops_log"
	.byte	0x18
	.value	0x27c
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_loops_max_skip"
	.byte	0x18
	.value	0x27d
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_jumps_log"
	.byte	0x18
	.value	0x27f
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_jumps_max_skip"
	.byte	0x18
	.value	0x280
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_labels_log"
	.byte	0x18
	.value	0x282
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_labels_max_skip"
	.byte	0x18
	.value	0x283
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"final_sequence"
	.byte	0x1
	.byte	0xc7
	.long	0x9a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	final_sequence
	.uleb128 0x3f
	.string	"asm_out_file"
	.byte	0x19
	.value	0x194
	.long	0x6fbf
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"current_output_insn"
	.byte	0x1
	.byte	0x79
	.long	0xa5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_output_insn
	.uleb128 0x41
	.string	"this_is_asm_operands"
	.byte	0x1
	.byte	0x8c
	.long	0x9a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	this_is_asm_operands
	.uleb128 0x3f
	.string	"user_label_prefix"
	.byte	0x19
	.value	0x1cc
	.long	0x2cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x4330
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"targetm"
	.byte	0x1a
	.value	0x12d
	.long	0x7367
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"debug_hooks"
	.byte	0x1b
	.byte	0x6a
	.long	0x9de9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x9def
	.uleb128 0xa
	.long	0x7752
	.uleb128 0x40
	.long	.LASF42
	.byte	0x1c
	.byte	0x34
	.long	0x7997
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"length_unit_log"
	.byte	0x1
	.byte	0x87
	.long	0x2df
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"insn_last_address"
	.byte	0x1
	.value	0x260
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_last_address
	.uleb128 0x42
	.string	"insn_current_align"
	.byte	0x1
	.value	0x263
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_current_align
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x341
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9e5e
	.long	0x7abd
	.string	"init_final"
	.long	0x7aee
	.string	"end_final"
	.long	0x7ee5
	.string	"default_function_pro_epilogue"
	.long	0x7f39
	.string	"no_asm_to_stream"
	.long	0x7f70
	.string	"app_enable"
	.long	0x7f8d
	.string	"app_disable"
	.long	0x7fab
	.string	"dbr_sequence_length"
	.long	0x8013
	.string	"init_insn_lengths"
	.long	0x8037
	.string	"get_attr_length"
	.long	0x80ef
	.string	"label_to_alignment"
	.long	0x8235
	.string	"insn_current_reference_address"
	.long	0x82b3
	.string	"compute_alignments"
	.long	0x8394
	.string	"shorten_branches"
	.long	0x87d0
	.string	"final_start_function"
	.long	0x88b4
	.string	"final_end_function"
	.long	0x88d9
	.string	"final"
	.long	0x899e
	.string	"get_insn_template"
	.long	0x8a7c
	.string	"final_scan_insn"
	.long	0x8db1
	.string	"cleanup_subreg_operands"
	.long	0x8dfc
	.string	"alter_subreg"
	.long	0x8edb
	.string	"output_operand_lossage"
	.long	0x90e0
	.string	"output_asm_insn"
	.long	0x91b6
	.string	"output_asm_label"
	.long	0x925e
	.string	"output_address"
	.long	0x9291
	.string	"output_addr_const"
	.long	0x92f8
	.string	"asm_fprintf"
	.long	0x93aa
	.string	"split_double"
	.long	0x94bc
	.string	"leaf_function_p"
	.long	0x9506
	.string	"final_forward_branch_p"
	.long	0x9ac4
	.string	"regs_ever_live"
	.long	0x9ae1
	.string	"insn_addresses_"
	.long	0x9b00
	.string	"insn_current_address"
	.long	0x9c4e
	.string	"frame_pointer_needed"
	.long	0x9d1e
	.string	"final_sequence"
	.long	0x9d52
	.string	"current_output_insn"
	.long	0x9d74
	.string	"this_is_asm_operands"
	.long	0x9e1a
	.string	"insn_last_address"
	.long	0x9e3b
	.string	"insn_current_align"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB45-.Ltext0
	.long	.LBE45-.Ltext0
	.long	.LBB46-.Ltext0
	.long	.LBE46-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF24:
	.string	"name"
.LASF51:
	.string	"optimize"
.LASF7:
	.string	"lang_flag_0"
.LASF9:
	.string	"lang_flag_2"
.LASF13:
	.string	"lang_flag_6"
.LASF41:
	.string	"label"
.LASF50:
	.string	"template"
.LASF29:
	.string	"first"
.LASF28:
	.string	"mem_attrs"
.LASF17:
	.string	"abstract_flag"
.LASF48:
	.string	"inner_length"
.LASF0:
	.string	"common"
.LASF25:
	.string	"lang_specific"
.LASF46:
	.string	"inner_insn"
.LASF40:
	.string	"sequence_rtl_expr"
.LASF39:
	.string	"sequence_stack"
.LASF27:
	.string	"function_frequency"
.LASF43:
	.string	"filename"
.LASF10:
	.string	"lang_flag_3"
.LASF31:
	.string	"next"
.LASF2:
	.string	"unsigned int"
.LASF18:
	.string	"abstract_origin"
.LASF4:
	.string	"mode_class"
.LASF23:
	.string	"align"
.LASF21:
	.string	"pointer_depth"
.LASF1:
	.string	"string"
.LASF44:
	.string	"max_skip"
.LASF22:
	.string	"user_align"
.LASF32:
	.string	"num_nodes"
.LASF19:
	.string	"size_unit"
.LASF26:
	.string	"args_size"
.LASF36:
	.string	"insn"
.LASF16:
	.string	"operands"
.LASF45:
	.string	"new_address"
.LASF33:
	.string	"recog_data"
.LASF6:
	.string	"built_in_class"
.LASF5:
	.string	"file"
.LASF8:
	.string	"lang_flag_1"
.LASF11:
	.string	"lang_flag_4"
.LASF12:
	.string	"lang_flag_5"
.LASF35:
	.string	"n_alternatives"
.LASF34:
	.string	"n_operands"
.LASF15:
	.string	"ht_identifier"
.LASF47:
	.string	"inner_uid"
.LASF49:
	.string	"__FUNCTION__"
.LASF30:
	.string	"basic_block"
.LASF42:
	.string	"profile_info"
.LASF38:
	.string	"debug_info_level"
.LASF37:
	.string	"insn_data"
.LASF3:
	.string	"_IO_FILE"
.LASF20:
	.string	"attributes"
.LASF14:
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
