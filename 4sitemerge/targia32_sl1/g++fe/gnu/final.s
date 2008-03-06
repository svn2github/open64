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
	.file 1 "../../../kg++fe/gnu/final.c"
	.loc 1 264 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 265 0
	movl	$0, app_on@GOTOFF(%ecx)
	.loc 1 266 0
	movl	final_sequence@GOT(%ecx), %eax
	movl	$0, (%eax)
	.loc 1 271 0
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
	.loc 1 279 0
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
	.loc 1 279 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 280 0
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L13
	movl	profile_info@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L13
.LBB2:
	.loc 1 289 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -168(%ebp)
	.loc 1 292 0
	movl	$21, (%esp)
	call	make_node@PLT
	movl	%eax, -160(%ebp)
	.loc 1 293 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -152(%ebp)
	.loc 1 308 0
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
	.loc 1 311 0
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
	.loc 1 320 0
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
	.loc 1 322 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 323 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 325 0
	call	getpwd@PLT
	movl	%eax, -128(%ebp)
	.loc 1 326 0
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
	.loc 1 327 0
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
	.loc 1 328 0
	movl	-128(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 329 0
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
	.loc 1 330 0
	movl	-176(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 331 0
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-124(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 332 0
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
	.loc 1 333 0
	movl	-120(%ebp), %edx
	addl	$1, %edx
	movl	-124(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_string@PLT
	movl	%eax, -164(%ebp)
	.loc 1 334 0
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
	.loc 1 335 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_type@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 337 0
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
	.loc 1 344 0
	movl	$64, (%esp)
	call	make_unsigned_type@PLT
	movl	%eax, -116(%ebp)
	.loc 1 345 0
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -112(%ebp)
	.loc 1 347 0
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
	.loc 1 350 0
	movl	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -104(%ebp)
	.loc 1 352 0
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -100(%ebp)
	.loc 1 355 0
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
	.loc 1 358 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 359 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 362 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build@PLT
	movl	%eax, -96(%ebp)
	.loc 1 364 0
	movl	-96(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 365 0
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
	.loc 1 366 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-96(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 367 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_variable@PLT
	.loc 1 369 0
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
	.loc 1 376 0
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
	.loc 1 379 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 380 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 382 0
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
	.loc 1 388 0
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
	.loc 1 391 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 392 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 394 0
	movl	global_trees@GOT(%ebx), %eax
	movl	56(%eax), %edx
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -140(%ebp)
	.loc 1 398 0
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
	.loc 1 401 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 402 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
	.loc 1 404 0
	movl	-140(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-148(%ebp), %eax
	movl	%eax, (%esp)
	call	tree_cons@PLT
	movl	%eax, -136(%ebp)
	.loc 1 405 0
	movl	-136(%ebp), %eax
	movl	%eax, -140(%ebp)
.LBB5:
	.loc 1 413 0
	movl	$0, -68(%ebp)
	.loc 1 420 0
	movl	$21, (%esp)
	call	make_node@PLT
	movl	%eax, -64(%ebp)
	.loc 1 422 0
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
	.loc 1 425 0
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
	.loc 1 428 0
	movl	-84(%ebp), %edx
	movl	-80(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 430 0
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
	.loc 1 432 0
	movl	-80(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 434 0
	movl	-64(%ebp), %edx
	movl	-84(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 436 0
	movl	$0, -88(%ebp)
	.loc 1 438 0
	movl	functions_head@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L7
.L8:
	.loc 1 439 0
	addl	$1, -88(%ebp)
	.loc 1 438 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L7:
	cmpl	$0, -92(%ebp)
	jne	.L8
	.loc 1 442 0
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
	.loc 1 444 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -52(%ebp)
	.loc 1 445 0
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	build_array_type@PLT
	movl	%eax, -60(%ebp)
	.loc 1 447 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	build_pointer_type@PLT
	movl	%eax, -56(%ebp)
	.loc 1 450 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 451 0
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 452 0
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 453 0
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 455 0
	movl	functions_head@GOTOFF(%ebx), %eax
	movl	%eax, -92(%ebp)
	jmp	.L10
.L11:
.LBB6:
	.loc 1 460 0
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
	.loc 1 464 0
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
	.loc 1 470 0
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
	.loc 1 471 0
	movl	-92(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	build_string@PLT
	movl	%eax, -164(%ebp)
	.loc 1 472 0
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
	.loc 1 473 0
	movl	integer_types@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-132(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	build_array_type@PLT
	movl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 475 0
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
	.loc 1 481 0
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
	.loc 1 455 0
	movl	-92(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -92(%ebp)
.L10:
	cmpl	$0, -92(%ebp)
	jne	.L11
	.loc 1 489 0
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
	.loc 1 493 0
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
	.loc 1 500 0
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
	.loc 1 503 0
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
	.loc 1 512 0
	movl	-148(%ebp), %edx
	movl	-144(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 513 0
	movl	-148(%ebp), %eax
	movl	%eax, -144(%ebp)
.LBE5:
	.loc 1 517 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	nreverse@PLT
	movl	%eax, %edx
	movl	-160(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 518 0
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	call	layout_type@PLT
	.loc 1 520 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$35, (%esp)
	call	build@PLT
	movl	%eax, -156(%ebp)
	.loc 1 522 0
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
	.loc 1 525 0
	movl	-156(%ebp), %edx
	movzbl	10(%edx), %eax
	orl	$4, %eax
	movb	%al, 10(%edx)
	.loc 1 526 0
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
	.loc 1 527 0
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, %edx
	movl	-156(%ebp), %eax
	movl	%edx, 52(%eax)
	.loc 1 530 0
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
	.loc 1 535 0
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_variable@PLT
.L13:
.LBE2:
	.loc 1 537 0
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
	.loc 1 547 0
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
	.loc 1 548 0
	leave
	ret
.LFE17:
	.size	default_function_pro_epilogue, .-default_function_pro_epilogue
.globl no_asm_to_stream
	.type	no_asm_to_stream, @function
no_asm_to_stream:
.LFB18:
	.loc 1 554 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	.loc 1 555 0
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
	.loc 1 562 0
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
	.loc 1 563 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L22
	.loc 1 565 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$6, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 566 0
	movl	$1, app_on@GOTOFF(%ebx)
.L22:
	.loc 1 568 0
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
	.loc 1 575 0
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
	.loc 1 576 0
	movl	app_on@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L26
	.loc 1 578 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$9, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite_unlocked@PLT
	.loc 1 579 0
	movl	$0, app_on@GOTOFF(%ebx)
.L26:
	.loc 1 581 0
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
	.loc 1 590 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$4, %esp
.LCFI23:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 591 0
	movl	final_sequence@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 592 0
	movl	final_sequence@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	.L30
.L28:
	.loc 1 594 0
	movl	$0, -4(%ebp)
.L30:
	movl	-4(%ebp), %eax
	.loc 1 595 0
	leave
	ret
.LFE21:
	.size	dbr_sequence_length, .-dbr_sequence_length
.globl init_insn_lengths
	.type	init_insn_lengths, @function
init_insn_lengths:
.LFB22:
	.loc 1 643 0
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
	.loc 1 644 0
	movl	uid_shuid@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 646 0
	movl	uid_shuid@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 647 0
	movl	$0, uid_shuid@GOTOFF(%ebx)
.L33:
	.loc 1 649 0
	movl	insn_lengths@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L35
	.loc 1 651 0
	movl	insn_lengths@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 652 0
	movl	$0, insn_lengths@GOTOFF(%ebx)
	.loc 1 653 0
	movl	$0, insn_lengths_max_uid@GOTOFF(%ebx)
.L35:
	.loc 1 656 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 658 0
	movl	uid_align@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L39
	.loc 1 660 0
	movl	uid_align@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 661 0
	movl	$0, uid_align@GOTOFF(%ebx)
.L39:
	.loc 1 663 0
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
	.loc 1 671 0
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
	.loc 1 675 0
	movl	$0, -12(%ebp)
	.loc 1 677 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	insn_lengths_max_uid@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jge	.L41
	.loc 1 678 0
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
	.loc 1 680 0
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
	.loc 1 685 0
	movl	$0, -28(%ebp)
	jmp	.L43
.L47:
	.loc 1 688 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 689 0
	jmp	.L44
.L46:
	.loc 1 692 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 693 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$54, %ax
	je	.L44
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$55, %ax
	je	.L44
	.loc 1 699 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 700 0
	jmp	.L44
.L45:
	.loc 1 703 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 704 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L53
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L55
.L53:
	.loc 1 705 0
	movl	$0, -28(%ebp)
	jmp	.L43
.L55:
	.loc 1 707 0
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
	.loc 1 708 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	asm_insn_count
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	imull	%esi, %eax
	movl	%eax, -12(%ebp)
	.loc 1 707 0
	jmp	.L44
.L58:
	.loc 1 709 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L59
	.loc 1 710 0
	movl	$0, -16(%ebp)
	jmp	.L61
.L62:
	.loc 1 711 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	get_attr_length@PLT
	addl	%eax, -12(%ebp)
	.loc 1 710 0
	addl	$1, -16(%ebp)
.L61:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L62
	jmp	.L44
.L59:
	.loc 1 713 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -12(%ebp)
.L44:
	.loc 1 721 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_adjust_insn_length@PLT
	movl	%eax, -12(%ebp)
	.loc 1 723 0
	movl	-12(%ebp), %eax
	movl	%eax, -28(%ebp)
.L43:
	movl	-28(%ebp), %eax
	.loc 1 727 0
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
	.loc 1 806 0
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
	.loc 1 807 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 809 0
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
	.loc 1 810 0
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
	.loc 1 811 0
	movl	-8(%ebp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	exact_log2_wide@PLT
	.loc 1 813 0
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
	.loc 1 837 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 838 0
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
	.loc 1 839 0
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	label_to_alignment, .-label_to_alignment
	.type	align_fuzz, @function
align_fuzz:
.LFB26:
	.loc 1 875 0
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
	.loc 1 876 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 878 0
	movl	16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -24(%ebp)
	.loc 1 879 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 880 0
	movl	$0, -16(%ebp)
	.loc 1 882 0
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
	.loc 1 886 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 887 0
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
	.loc 1 888 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L82
	.loc 1 890 0
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
	.loc 1 891 0
	movl	16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -8(%ebp)
	.loc 1 892 0
	movl	-8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L84
	.loc 1 894 0
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
	.loc 1 895 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L84:
.LBE7:
	.loc 1 882 0
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
	.loc 1 897 0
	movl	-16(%ebp), %eax
	.loc 1 898 0
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
	.loc 1 915 0
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
	.loc 1 919 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L88
	.loc 1 920 0
	movl	$0, -28(%ebp)
	jmp	.L90
.L88:
	.loc 1 922 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 923 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 924 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$43, %ax
	je	.L91
	.loc 1 930 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L90
.L91:
	.loc 1 931 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 935 0
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
	.loc 1 938 0
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
	.loc 1 944 0
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
	.loc 1 947 0
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
	.loc 1 952 0
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
	.loc 1 956 0
	movl	label_align@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L97
	.loc 1 958 0
	movl	label_align@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 959 0
	movl	$0, label_align@GOTOFF(%ebx)
.L97:
	.loc 1 962 0
	call	max_label_num@PLT
	movl	%eax, max_labelno@GOTOFF(%ebx)
	.loc 1 963 0
	call	get_first_label_num@PLT
	movl	%eax, min_labelno@GOTOFF(%ebx)
	.loc 1 964 0
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
	.loc 1 968 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L124
	movl	optimize_size@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L101
	.loc 1 969 0
	jmp	.L124
.L101:
	.loc 1 971 0
	movl	entry_exit_blocks@GOT(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L103
.L104:
.LBB8:
	.loc 1 973 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 974 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	.loc 1 977 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L105
	.loc 1 979 0
	movl	align_labels_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 980 0
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 982 0
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L107
.L108:
	.loc 1 984 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L109
	.loc 1 985 0
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
	.loc 1 987 0
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
	.loc 1 982 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L107:
	cmpl	$0, -8(%ebp)
	jne	.L108
	.loc 1 1000 0
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
	.loc 1 1006 0
	movl	align_jumps_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1007 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	.L113
	.loc 1 1009 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1010 0
	movl	align_jumps_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L113:
	.loc 1 1015 0
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
	.loc 1 1019 0
	movl	align_loops_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1020 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jge	.L119
	.loc 1 1022 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1023 0
	movl	align_loops_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L119:
	.loc 1 1026 0
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
	.loc 1 1027 0
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
	.loc 1 971 0
	movl	-28(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -28(%ebp)
.L103:
	movl	entry_exit_blocks@GOT(%ebx), %eax
	leal	80(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jne	.L104
.L124:
	.loc 1 1029 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	compute_alignments, .-compute_alignments
	.section	.rodata
	.type	__FUNCTION__.14635, @object
	.size	__FUNCTION__.14635, 17
__FUNCTION__.14635:
	.string	"shorten_branches"
.LC16:
	.string	"../../../kg++fe/gnu/final.c"
.LC17:
	.string	"insn_addresses"
.LC18:
	.string	"negative insn length"
	.text
.globl shorten_branches
	.type	shorten_branches, @function
shorten_branches:
.LFB29:
	.loc 1 1051 0
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
	.loc 1 1060 0
	movl	$1, -148(%ebp)
	.loc 1 1069 0
	call	get_max_uid@PLT
	movl	%eax, -168(%ebp)
	.loc 1 1071 0
	movl	-168(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, uid_shuid@GOTOFF(%ebx)
	.loc 1 1073 0
	call	max_label_num@PLT
	movl	%eax, %edx
	movl	max_labelno@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	je	.L126
.LBB9:
	.loc 1 1075 0
	movl	max_labelno@GOTOFF(%ebx), %eax
	movl	%eax, -132(%ebp)
	.loc 1 1079 0
	call	max_label_num@PLT
	movl	%eax, max_labelno@GOTOFF(%ebx)
	.loc 1 1081 0
	movl	max_labelno@GOTOFF(%ebx), %edx
	movl	min_labelno@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -128(%ebp)
	.loc 1 1082 0
	movl	min_labelno@GOTOFF(%ebx), %edx
	movl	-132(%ebp), %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -124(%ebp)
	.loc 1 1084 0
	movl	-128(%ebp), %eax
	sall	$2, %eax
	movl	label_align@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	xrealloc@PLT
	movl	%eax, label_align@GOTOFF(%ebx)
	.loc 1 1089 0
	movl	-124(%ebp), %eax
	cmpl	-128(%ebp), %eax
	jle	.L128
	.loc 1 1090 0
	leal	__FUNCTION__.14635@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1090, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L128:
	.loc 1 1092 0
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
	.loc 1 1102 0
	movl	$0, -160(%ebp)
	.loc 1 1103 0
	movl	$0, -156(%ebp)
	.loc 1 1105 0
	call	get_insns@PLT
	movl	%eax, -172(%ebp)
	movl	$1, -164(%ebp)
	jmp	.L130
.L131:
.LBB10:
	.loc 1 1109 0
	movl	-172(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-164(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -164(%ebp)
	.loc 1 1110 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L132
	.loc 1 1118 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L134
.LBB11:
	.loc 1 1123 0
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
	.loc 1 1124 0
	movl	-160(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jge	.L136
	.loc 1 1126 0
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1127 0
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
	.loc 1 1130 0
	movl	align_labels_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	.loc 1 1131 0
	movl	-160(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jge	.L138
	.loc 1 1133 0
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1134 0
	movl	align_labels_max_skip@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
.L138:
	.loc 1 1136 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -116(%ebp)
	.loc 1 1154 0
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
	.loc 1 1155 0
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
	.loc 1 1156 0
	movl	$0, -160(%ebp)
	.loc 1 1157 0
	movl	$0, -156(%ebp)
	jmp	.L132
.L134:
.LBE11:
	.loc 1 1159 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$45, %ax
	jne	.L132
.LBB12:
	.loc 1 1163 0
	movl	-172(%ebp), %eax
	movl	%eax, -108(%ebp)
	jmp	.L141
.L142:
	.loc 1 1165 0
	movl	-108(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L143
	.loc 1 1167 0
	movl	$0, -120(%ebp)
	.loc 1 1168 0
	movl	-160(%ebp), %eax
	cmpl	-120(%ebp), %eax
	jge	.L132
	.loc 1 1170 0
	movl	-120(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 1171 0
	movl	$0, -156(%ebp)
	.loc 1 1173 0
	jmp	.L132
.L143:
	.loc 1 1164 0
	movl	-108(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -108(%ebp)
.L141:
	.loc 1 1163 0
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
	.loc 1 1105 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
.L130:
	cmpl	$0, -172(%ebp)
	jne	.L131
	.loc 1 1180 0
	movl	-168(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, insn_lengths@GOTOFF(%ebx)
	.loc 1 1181 0
	movl	-168(%ebp), %eax
	movl	%eax, insn_lengths_max_uid@GOTOFF(%ebx)
	.loc 1 1184 0
	movl	-168(%ebp), %edx
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, %edx
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1186 0
	movl	-168(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -144(%ebp)
	.loc 1 1193 0
	movl	-168(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, uid_align@GOTOFF(%ebx)
	.loc 1 1195 0
	movl	$16, -164(%ebp)
	jmp	.L149
.L150:
	.loc 1 1196 0
	movl	-164(%ebp), %eax
	movl	$0, -236(%ebp,%eax,4)
.L149:
	.loc 1 1195 0
	subl	$1, -164(%ebp)
	cmpl	$0, -164(%ebp)
	jns	.L150
	.loc 1 1197 0
	call	get_last_insn@PLT
	movl	%eax, -152(%ebp)
	.loc 1 1198 0
	jmp	.L152
.L153:
.LBB13:
	.loc 1 1200 0
	movl	-152(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -104(%ebp)
	.loc 1 1202 0
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
	.loc 1 1203 0
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-236(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1204 0
	cmpl	$0, -100(%ebp)
	je	.L157
	.loc 1 1207 0
	movl	-104(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_align@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-100(%ebp), %eax
	movl	-236(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	.loc 1 1208 0
	movl	-100(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -164(%ebp)
	jmp	.L159
.L160:
	.loc 1 1209 0
	movl	-164(%ebp), %edx
	movl	-152(%ebp), %eax
	movl	%eax, -236(%ebp,%edx,4)
	.loc 1 1208 0
	subl	$1, -164(%ebp)
.L159:
	cmpl	$0, -164(%ebp)
	jns	.L160
.L157:
.LBE13:
	.loc 1 1198 0
	movl	-152(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -152(%ebp)
.L152:
	cmpl	$0, -152(%ebp)
	jne	.L153
	.loc 1 1270 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 1271 0
	jmp	.L162
.L163:
	.loc 1 1274 0
	movl	-172(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1276 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
	.loc 1 1278 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L164
.LBB14:
	.loc 1 1280 0
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
	.loc 1 1281 0
	cmpl	$0, -96(%ebp)
	je	.L164
.LBB15:
	.loc 1 1283 0
	movl	-96(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -92(%ebp)
	.loc 1 1284 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	-92(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-92(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	movl	%eax, -88(%ebp)
	.loc 1 1285 0
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
	.loc 1 1289 0
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
	.loc 1 1291 0
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
	.loc 1 1294 0
	movl	-172(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L167
	.loc 1 1297 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1298 0
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
	.loc 1 1308 0
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
	.loc 1 1309 0
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
	.loc 1 1308 0
	jmp	.L175
.L178:
	.loc 1 1310 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L179
.LBB16:
	.loc 1 1315 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	const_num_delay_slots@PLT
	movl	%eax, -80(%ebp)
	.loc 1 1322 0
	movl	$0, -84(%ebp)
	jmp	.L181
.L182:
.LBB17:
	.loc 1 1324 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-84(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -76(%ebp)
	.loc 1 1325 0
	movl	-76(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -72(%ebp)
	.loc 1 1328 0
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
	.loc 1 1330 0
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
	.loc 1 1328 0
	jmp	.L186
.L185:
	.loc 1 1333 0
	movl	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, -68(%ebp)
.L186:
	.loc 1 1335 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-68(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1336 0
	cmpl	$0, -80(%ebp)
	je	.L187
	.loc 1 1338 0
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
	.loc 1 1340 0
	movl	-136(%ebp), %eax
	addl	-144(%ebp), %eax
	movb	$1, (%eax)
.L189:
	.loc 1 1341 0
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
	.loc 1 1345 0
	movl	-72(%ebp), %eax
	addl	-144(%ebp), %eax
	movb	$0, (%eax)
.L191:
	.loc 1 1346 0
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
	.loc 1 1322 0
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
	.loc 1 1349 0
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$58, %ax
	je	.L175
	movl	-140(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	je	.L175
	.loc 1 1351 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %esi
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_default_length@PLT
	movl	%eax, (%esi)
	.loc 1 1352 0
	movl	-136(%ebp), %eax
	movl	%eax, %esi
	addl	-144(%ebp), %esi
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_variable_length_p@PLT
	movb	%al, (%esi)
.L175:
	.loc 1 1357 0
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
	.loc 1 1358 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L167
	.loc 1 1359 0
	leal	__FUNCTION__.14635@GOTOFF(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$1359, 12(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	_fatal_insn@PLT
.L167:
	.loc 1 1272 0
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
	.loc 1 1271 0
	cmpl	$0, -172(%ebp)
	jne	.L163
	.loc 1 1367 0
	jmp	.L197
.L198:
	.loc 1 1369 0
	movl	$0, -148(%ebp)
	.loc 1 1370 0
	movl	insn_current_align@GOT(%ebx), %eax
	movl	$15, (%eax)
	.loc 1 1371 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 1372 0
	jmp	.L199
.L200:
.LBB18:
	.loc 1 1381 0
	movl	-172(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -136(%ebp)
	.loc 1 1383 0
	movl	-172(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	jne	.L201
.LBB19:
	.loc 1 1385 0
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
	.loc 1 1386 0
	movl	insn_current_align@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -52(%ebp)
	jle	.L203
.LBB20:
	.loc 1 1388 0
	movl	-52(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -48(%ebp)
	.loc 1 1389 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	-48(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-48(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	movl	%eax, -44(%ebp)
	.loc 1 1390 0
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
	.loc 1 1391 0
	movl	insn_current_align@GOT(%ebx), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1392 0
	movl	insn_current_address@GOT(%ebx), %edx
	movl	-44(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L205
.L203:
.LBE20:
	.loc 1 1395 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	$0, (%eax)
.L205:
	.loc 1 1396 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-136(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1397 0
	jmp	.L206
.L201:
.LBE19:
	.loc 1 1400 0
	movl	length_unit_log@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1401 0
	movl	insn_current_align@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -56(%ebp)
	jge	.L207
	.loc 1 1402 0
	movl	insn_current_align@GOT(%ebx), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
.L207:
	.loc 1 1404 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-136(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	insn_last_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1405 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-136(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1516 0
	movl	-136(%ebp), %eax
	addl	-144(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L209
	.loc 1 1518 0
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
	.loc 1 1523 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1524 0
	movl	$0, -40(%ebp)
	jmp	.L214
.L215:
.LBB22:
	.loc 1 1526 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1527 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1529 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1531 0
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
	.loc 1 1524 0
	addl	$1, -40(%ebp)
.L214:
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-40(%ebp), %eax
	jg	.L215
	.loc 1 1518 0
	jmp	.L206
.L211:
.LBE21:
	.loc 1 1535 0
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
	.loc 1 1537 0
	jmp	.L206
.L209:
	.loc 1 1540 0
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
	.loc 1 1544 0
	movl	-172(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -140(%ebp)
	.loc 1 1545 0
	movl	$0, -64(%ebp)
	.loc 1 1546 0
	movl	$0, -28(%ebp)
	jmp	.L221
.L222:
.LBB24:
	.loc 1 1548 0
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1549 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1552 0
	movl	insn_addresses_@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%ecx,%edx,4)
	.loc 1 1556 0
	movl	-20(%ebp), %eax
	addl	-144(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L223
	.loc 1 1557 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L225
.L223:
	.loc 1 1559 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_current_length@PLT
	movl	%eax, -16(%ebp)
.L225:
	.loc 1 1561 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	je	.L226
	.loc 1 1563 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1564 0
	movl	$1, -148(%ebp)
.L226:
	.loc 1 1566 0
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
	.loc 1 1567 0
	movl	-16(%ebp), %eax
	addl	%eax, -64(%ebp)
.LBE24:
	.loc 1 1546 0
	addl	$1, -28(%ebp)
.L221:
	movl	-140(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L222
	.loc 1 1540 0
	jmp	.L229
.L218:
.LBE23:
	.loc 1 1572 0
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	insn_current_length@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1573 0
	movl	insn_current_address@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	insn_current_address@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L229:
	.loc 1 1578 0
	movl	-64(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1579 0
	movl	-64(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_adjust_insn_length@PLT
	movl	%eax, -64(%ebp)
	.loc 1 1580 0
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
	.loc 1 1583 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	cmpl	-64(%ebp), %eax
	je	.L206
	.loc 1 1585 0
	movl	-136(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	insn_lengths@GOTOFF(%ebx), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1586 0
	movl	$1, -148(%ebp)
.L206:
.LBE18:
	.loc 1 1373 0
	movl	-172(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -172(%ebp)
.L199:
	.loc 1 1372 0
	cmpl	$0, -172(%ebp)
	jne	.L200
	.loc 1 1590 0
	movl	optimize@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L232
.L197:
	.loc 1 1367 0
	cmpl	$0, -148(%ebp)
	jne	.L198
.L232:
	.loc 1 1594 0
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1597 0
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
	.loc 1 1607 0
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
	.loc 1 1609 0
	movl	$1, -8(%ebp)
	.loc 1 1611 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$50, %ax
	jne	.L235
	.loc 1 1612 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L238
.L235:
	.loc 1 1614 0
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	decode_asm_operands@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1616 0
	jmp	.L238
.L239:
	.loc 1 1617 0
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$59, %al
	je	.L240
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	.L242
.L240:
	.loc 1 1618 0
	addl	$1, -8(%ebp)
.L242:
	.loc 1 1616 0
	addl	$1, -12(%ebp)
.L238:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L239
	.loc 1 1620 0
	movl	-8(%ebp), %eax
	.loc 1 1621 0
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
	.loc 1 1639 0
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
	.loc 1 1640 0
	movl	$0, block_depth@GOTOFF(%ebx)
	.loc 1 1642 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1657 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-99, %eax
	je	.L246
	.loc 1 1658 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	notice_source_line
.L246:
	.loc 1 1659 0
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%eax, high_function_linenum@GOTOFF(%ebx)
	movl	high_function_linenum@GOTOFF(%ebx), %eax
	movl	%eax, high_block_linenum@GOTOFF(%ebx)
	.loc 1 1661 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	40(%eax), %ecx
	movl	last_filename@GOTOFF(%ebx), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 1687 0
	movl	write_symbols@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L248
	.loc 1 1689 0
	call	remove_unnecessary_notes@PLT
	.loc 1 1690 0
	call	scope_to_insns_finalize@PLT
	.loc 1 1691 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	number_blocks@PLT
	.loc 1 1695 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	68(%eax), %edx
	movzbl	9(%edx), %eax
	orl	$64, %eax
	movb	%al, 9(%edx)
.L248:
	.loc 1 1699 0
	movl	targetm@GOT(%ebx), %eax
	movl	56(%eax), %esi
	call	get_frame_size@PLT
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%esi
	.loc 1 1707 0
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
	.loc 1 1712 0
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
	.loc 1 1714 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L254
	.loc 1 1715 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	profile_function
.L254:
	.loc 1 1717 0
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
	.loc 1 1722 0
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
	.loc 1 1737 0
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L256
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L258
.L256:
	movl	$128, -60(%ebp)
	jmp	.L259
.L258:
	movl	$64, -60(%ebp)
.L259:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L260
	movl	$64, -56(%ebp)
	jmp	.L262
.L260:
	movl	$32, -56(%ebp)
.L262:
	movl	-56(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jge	.L263
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L265
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$2, %eax
	jne	.L267
.L265:
	movl	$128, -52(%ebp)
	jmp	.L268
.L267:
	movl	$64, -52(%ebp)
.L268:
	movl	-52(%ebp), %edx
	movl	%edx, -64(%ebp)
	jmp	.L269
.L263:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L270
	movl	$64, -48(%ebp)
	jmp	.L272
.L270:
	movl	$32, -48(%ebp)
.L272:
	movl	-48(%ebp), %eax
	movl	%eax, -64(%ebp)
.L269:
	movl	-64(%ebp), %edx
	movl	%edx, -8(%ebp)
	.loc 1 1738 0
	call	data_section@PLT
	.loc 1 1739 0
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
	.loc 1 1740 0
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
	.loc 1 1741 0
	movl	-8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L273
	movl	$8, -40(%ebp)
	jmp	.L275
.L273:
	movl	$4, -40(%ebp)
.L275:
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
	.loc 1 1744 0
	movl	current_function_decl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	function_section@PLT
	.loc 1 1770 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L276
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sorry@PLT
.L276:
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
	je	.L278
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L278
	movl	$16, -36(%ebp)
	jmp	.L281
.L278:
	movl	$8, -36(%ebp)
.L281:
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
	je	.L282
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L284
.L282:
	leal	.LC26@GOTOFF(%ebx), %edx
	movl	%edx, -24(%ebp)
.L284:
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
	.loc 1 1795 0
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
	.loc 1 1803 0
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
	.loc 1 1804 0
	call	app_disable@PLT
	.loc 1 1806 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	56(%eax), %edx
	movl	high_function_linenum@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	.loc 1 1810 0
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
	.loc 1 1813 0
	movl	debug_hooks@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	48(%eax), %ecx
	movl	last_filename@GOTOFF(%ebx), %edx
	movl	last_linenum@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	.loc 1 1820 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE34:
	.size	final_end_function, .-final_end_function
.globl final
	.type	final, @function
final:
.LFB35:
	.loc 1 1839 0
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
	.loc 1 1841 0
	movl	$0, -16(%ebp)
	.loc 1 1842 0
	movl	$0, -12(%ebp)
	.loc 1 1844 0
	movl	$0, last_ignored_compare@GOTOFF(%ebx)
	.loc 1 1845 0
	movl	$1, new_block@GOTOFF(%ebx)
	.loc 1 1875 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L289
.L290:
	.loc 1 1876 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L291
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	-16(%ebp), %eax
	jle	.L291
	.loc 1 1877 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -16(%ebp)
.L291:
	.loc 1 1875 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L289:
	cmpl	$0, -20(%ebp)
	jne	.L290
	.loc 1 1880 0
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, line_note_exists@GOTOFF(%ebx)
	.loc 1 1882 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L295
.L296:
	.loc 1 1884 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-12(%ebp), %eax
	jle	.L297
	.loc 1 1885 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L297:
	.loc 1 1886 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L299
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	jle	.L299
	.loc 1 1887 0
	movl	-20(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, %edx
	movl	line_note_exists@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movb	$1, (%eax)
.L299:
	.loc 1 1882 0
	movl	-20(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
.L295:
	cmpl	$0, -20(%ebp)
	jne	.L296
	.loc 1 1902 0
	call	init_recog@PLT
	.loc 1 1907 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L303
.L304:
	.loc 1 1925 0
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
.L303:
	.loc 1 1907 0
	cmpl	$0, -20(%ebp)
	jne	.L304
	.loc 1 1931 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	297(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L306
.LBB26:
	.loc 1 1933 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1935 0
	movl	functions_tail@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1936 0
	movl	-8(%ebp), %eax
	movl	%eax, functions_tail@GOTOFF(%ebx)
	.loc 1 1938 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1939 0
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
	.loc 1 1941 0
	movl	profile_info@GOT(%ebx), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 1942 0
	movl	profile_info@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
.L306:
.LBE26:
	.loc 1 1945 0
	movl	line_note_exists@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1946 0
	movl	$0, line_note_exists@GOTOFF(%ebx)
	.loc 1 1947 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	final, .-final
	.section	.rodata
	.type	__FUNCTION__.15406, @object
	.size	__FUNCTION__.15406, 18
__FUNCTION__.15406:
	.string	"get_insn_template"
	.text
.globl get_insn_template
	.type	get_insn_template, @function
get_insn_template:
.LFB36:
	.loc 1 1953 0
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
	.loc 1 1954 0
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
	.loc 1 1955 0
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
	je	.L312
	cmpl	$3, -28(%ebp)
	je	.L313
	cmpl	$1, -28(%ebp)
	je	.L311
	jmp	.L310
.L311:
	.loc 1 1958 0
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L314
.L312:
	.loc 1 1960 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L314
.L313:
	.loc 1 1962 0
	cmpl	$0, 12(%ebp)
	jne	.L315
	.loc 1 1963 0
	leal	__FUNCTION__.15406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1963, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L315:
	.loc 1 1964 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	recog_data@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -24(%ebp)
	jmp	.L314
.L310:
	.loc 1 1967 0
	leal	__FUNCTION__.15406@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1967, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L314:
	movl	-24(%ebp), %eax
	.loc 1 1969 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	get_insn_template, .-get_insn_template
	.section	.rodata
	.type	__FUNCTION__.15435, @object
	.size	__FUNCTION__.15435, 29
__FUNCTION__.15435:
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
	.loc 1 1980 0
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
	.loc 1 1981 0
	movl	12(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1983 0
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
	je	.L321
	cmpl	$3, -24(%ebp)
	je	.L322
	cmpl	$1, -24(%ebp)
	je	.L320
	jmp	.L319
.L322:
	.loc 1 1987 0
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
.L321:
	.loc 1 1990 0
	movl	targetm@GOT(%ebx), %eax
	movl	48(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L320:
	.loc 1 1993 0
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
	.loc 1 1995 0
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
	.loc 1 2002 0
	jmp	.L323
.L319:
	.loc 1 2000 0
	leal	__FUNCTION__.15435@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2000, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L323:
	.loc 1 2002 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	output_alternate_entry_point, .-output_alternate_entry_point
.globl final_scan_insn
	.type	final_scan_insn, @function
final_scan_insn:
.LFB38:
	.loc 1 2019 0
	pushl	%ebp
.LCFI93:
	movl	%esp, %ebp
.LCFI94:
	subl	$8, %esp
.LCFI95:
	.loc 1 2021 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_symbols
	.loc 1 2022 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	.loc 1 2874 0
	leave
	ret
.LFE38:
	.size	final_scan_insn, .-final_scan_insn
	.type	notice_source_line, @function
notice_source_line:
.LFB39:
	.loc 1 2882 0
	pushl	%ebp
.LCFI96:
	movl	%esp, %ebp
.LCFI97:
	subl	$32, %esp
.LCFI98:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2883 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2885 0
	movl	-4(%ebp), %eax
	movl	%eax, last_filename@GOTOFF(%ecx)
	.loc 1 2886 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, last_linenum@GOTOFF(%ecx)
	.loc 1 2887 0
	movl	high_block_linenum@GOTOFF(%ecx), %eax
	movl	last_linenum@GOTOFF(%ecx), %edx
	movl	%edx, -32(%ebp)
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L327
	movl	-32(%ebp), %edx
	movl	%edx, -28(%ebp)
.L327:
	movl	-28(%ebp), %eax
	movl	%eax, high_block_linenum@GOTOFF(%ecx)
	.loc 1 2888 0
	movl	high_function_linenum@GOTOFF(%ecx), %eax
	movl	last_linenum@GOTOFF(%ecx), %edx
	movl	%edx, -24(%ebp)
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jge	.L328
	movl	-24(%ebp), %edx
	movl	%edx, -20(%ebp)
.L328:
	movl	-20(%ebp), %eax
	movl	%eax, high_function_linenum@GOTOFF(%ecx)
	.loc 1 2889 0
	leave
	ret
.LFE39:
	.size	notice_source_line, .-notice_source_line
.globl cleanup_subreg_operands
	.type	cleanup_subreg_operands, @function
cleanup_subreg_operands:
.LFB40:
	.loc 1 2897 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%esi
.LCFI101:
	pushl	%ebx
.LCFI102:
	subl	$32, %esp
.LCFI103:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2899 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	extract_insn_cached@PLT
	.loc 1 2900 0
	movl	$0, -12(%ebp)
	jmp	.L331
.L332:
	.loc 1 2907 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L333
	.loc 1 2908 0
	movl	-12(%ebp), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%esi,4)
	jmp	.L335
.L333:
	.loc 1 2909 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L336
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L336
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L335
.L336:
	.loc 1 2912 0
	movl	-12(%ebp), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	120(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	%edx, (%eax,%esi,4)
.L335:
	.loc 1 2900 0
	addl	$1, -12(%ebp)
.L331:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	610(%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jg	.L332
	.loc 1 2915 0
	movl	$0, -12(%ebp)
	jmp	.L340
.L341:
	.loc 1 2917 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L342
	.loc 1 2918 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, (%esi)
	jmp	.L344
.L342:
	.loc 1 2919 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	je	.L345
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$88, %ax
	je	.L345
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L344
.L345:
	.loc 1 2922 0
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %esi
	movl	-12(%ebp), %edx
	movl	recog_data@GOT(%ebx), %eax
	movl	600(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, (%esi)
.L344:
	.loc 1 2915 0
	addl	$1, -12(%ebp)
.L340:
	movl	recog_data@GOT(%ebx), %eax
	movzbl	611(%eax), %eax
	movzbl	%al, %eax
	cmpl	-12(%ebp), %eax
	jg	.L341
	.loc 1 2924 0
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE40:
	.size	cleanup_subreg_operands, .-cleanup_subreg_operands
	.section	.rodata
	.type	__FUNCTION__.15546, @object
	.size	__FUNCTION__.15546, 13
__FUNCTION__.15546:
	.string	"alter_subreg"
	.text
.globl alter_subreg
	.type	alter_subreg, @function
alter_subreg:
.LFB41:
	.loc 1 2932 0
	pushl	%ebp
.LCFI104:
	movl	%esp, %ebp
.LCFI105:
	pushl	%esi
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$48, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2933 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2934 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2938 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L351
	.loc 1 2939 0
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
	jmp	.L353
.L351:
.LBB27:
	.loc 1 2943 0
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
	.loc 1 2945 0
	cmpl	$0, -16(%ebp)
	je	.L354
	.loc 1 2946 0
	movl	8(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L353
.L354:
	.loc 1 2948 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L356
.LBB28:
	.loc 1 2950 0
	movl	$1, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	subreg_hard_regno@PLT
	movl	%eax, -12(%ebp)
	.loc 1 2951 0
	movl	-24(%ebp), %eax
	movw	$71, (%eax)
	.loc 1 2952 0
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 2953 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2956 0
	movl	-24(%ebp), %edx
	movzbl	3(%edx), %eax
	andl	$-33, %eax
	movb	%al, 3(%edx)
	jmp	.L353
.L356:
.LBE28:
	.loc 1 2959 0
	leal	__FUNCTION__.15546@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2959, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L353:
.LBE27:
	.loc 1 2962 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 2963 0
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
	.loc 1 2970 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$36, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2971 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2972 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -28(%ebp)
	cmpl	$76, -28(%ebp)
	je	.L362
	cmpl	$76, -28(%ebp)
	ja	.L364
	cmpl	$73, -28(%ebp)
	je	.L361
	jmp	.L360
.L364:
	cmpl	$85, -28(%ebp)
	je	.L363
	cmpl	$88, -28(%ebp)
	je	.L363
	jmp	.L360
.L363:
	.loc 1 2976 0
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2977 0
	movl	-8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2978 0
	jmp	.L360
.L362:
	.loc 1 2981 0
	movl	-8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2982 0
	jmp	.L360
.L361:
	.loc 1 2985 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, -24(%ebp)
	jmp	.L365
.L360:
	.loc 1 2991 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L365:
	movl	-24(%ebp), %eax
	.loc 1 2992 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	walk_alter_subreg, .-walk_alter_subreg
	.section	.rodata
.LC36:
	.string	"invalid `asm': "
.LC37:
	.string	"output_operand: "
.LC38:
	.string	"%s%s"
.LC39:
	.string	"%s"
	.text
.globl output_operand_lossage
	.type	output_operand_lossage, @function
output_operand_lossage:
.LFB43:
	.loc 1 3161 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%ebx
.LCFI115:
	subl	$36, %esp
.LCFI116:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB29:
	.loc 1 3165 0
	leal	12(%ebp), %eax
	movl	%eax, -20(%ebp)
.LBB30:
	.loc 1 3168 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L368
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L370
.L368:
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L370:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 3169 0
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	asprintf@PLT
	.loc 1 3170 0
	movl	-20(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	vasprintf@PLT
	.loc 1 3172 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L371
	.loc 1 3173 0
	movl	-16(%ebp), %edx
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	error_for_asm@PLT
	.loc 1 3177 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 3178 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.LBE30:
	.loc 1 3180 0
	jmp	.L373
.L371:
.LBB31:
	.loc 1 3175 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC39@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	internal_error@PLT
.L373:
.LBE31:
.LBE29:
	.loc 1 3180 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	output_operand_lossage, .-output_operand_lossage
	.section	.rodata
.LC40:
	.string	" #"
.LC41:
	.string	"\t%s %d\t%s"
.LC42:
	.string	"/%d"
.LC43:
	.string	"\t[length = %d]"
	.text
	.type	output_asm_name, @function
output_asm_name:
.LFB44:
	.loc 1 3189 0
	pushl	%ebp
.LCFI117:
	movl	%esp, %ebp
.LCFI118:
	pushl	%esi
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$48, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3190 0
	movl	debug_insn@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L379
.LBB32:
	.loc 1 3192 0
	movl	debug_insn@GOTOFF(%ebx), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3193 0
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
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	.loc 1 3196 0
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
	jbe	.L377
	.loc 1 3197 0
	movl	which_alternative@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
.L377:
	.loc 1 3199 0
	movl	debug_insn@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	get_attr_length@PLT
	movl	%eax, %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	.loc 1 3204 0
	movl	$0, debug_insn@GOTOFF(%ebx)
.L379:
.LBE32:
	.loc 1 3206 0
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
	.loc 1 3216 0
	pushl	%ebp
.LCFI122:
	movl	%esp, %ebp
.LCFI123:
	pushl	%ebx
.LCFI124:
	subl	$36, %esp
.LCFI125:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3220 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 3222 0
	cmpl	$0, 8(%ebp)
	jne	.L381
	.loc 1 3223 0
	movl	$0, -32(%ebp)
	jmp	.L383
.L381:
	.loc 1 3225 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L384
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$175, %eax
	jbe	.L384
	.loc 1 3226 0
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
	jmp	.L383
.L384:
	.loc 1 3227 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L387
	.loc 1 3228 0
	movl	$0, -32(%ebp)
	jmp	.L383
.L387:
	.loc 1 3230 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L389
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L389
	.loc 1 3231 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L392
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L394
.L392:
	movl	$0, -28(%ebp)
.L394:
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L383
.L389:
	.loc 1 3234 0
	movl	12(%ebp), %eax
	movl	$1, (%eax)
	.loc 1 3235 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 3240 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L395
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L395
	.loc 1 3241 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L383
.L395:
	.loc 1 3242 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$85, %ax
	jne	.L401
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L401
	.loc 1 3244 0
	movl	-8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L383
.L402:
	.loc 1 3248 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L401:
	.loc 1 3246 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$49, %al
	je	.L402
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$50, %al
	je	.L402
	.loc 1 3250 0
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_mem_expr_from_op
	movl	%eax, -8(%ebp)
	.loc 1 3251 0
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	jne	.L405
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L407
.L405:
	movl	$0, -24(%ebp)
.L407:
	movl	-24(%ebp), %eax
	movl	%eax, -32(%ebp)
.L383:
	movl	-32(%ebp), %eax
	.loc 1 3252 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	get_mem_expr_from_op, .-get_mem_expr_from_op
	.section	.rodata
.LC44:
	.string	"*"
.LC45:
	.string	""
.LC46:
	.string	"%c%s %s"
	.text
	.type	output_asm_operand_names, @function
output_asm_operand_names:
.LFB46:
	.loc 1 3263 0
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
	.loc 1 3264 0
	movl	$0, -16(%ebp)
	.loc 1 3267 0
	movl	$0, -12(%ebp)
	jmp	.L410
.L411:
.LBB33:
	.loc 1 3270 0
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
	.loc 1 3272 0
	cmpl	$0, -8(%ebp)
	je	.L412
	.loc 1 3274 0
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	.L414
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	jmp	.L416
.L414:
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
.L416:
	cmpl	$0, -16(%ebp)
	je	.L417
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	jmp	.L419
.L417:
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
.L419:
	cmpl	$0, -16(%ebp)
	je	.L420
	movl	$44, -24(%ebp)
	jmp	.L422
.L420:
	movl	$9, -24(%ebp)
.L422:
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 3277 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_mem_expr@PLT
	.loc 1 3278 0
	movl	$1, -16(%ebp)
.L412:
.LBE33:
	.loc 1 3267 0
	addl	$1, -12(%ebp)
.L410:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L411
	.loc 1 3281 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE46:
	.size	output_asm_operand_names, .-output_asm_operand_names
	.section	.rodata
.LC47:
	.string	"%d"
	.align 4
.LC48:
	.string	"operand number missing after %%-letter"
.LC49:
	.string	"operand number out of range"
.LC50:
	.string	"%lld"
.LC51:
	.string	"invalid %%-code"
	.text
.globl output_asm_insn
	.type	output_asm_insn, @function
output_asm_insn:
.LFB47:
	.loc 1 3303 0
	pushl	%ebp
.LCFI130:
	movl	%esp, %ebp
.LCFI131:
	pushl	%edi
.LCFI132:
	pushl	%esi
.LCFI133:
	pushl	%ebx
.LCFI134:
	subl	$204, %esp
.LCFI135:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -196(%ebp)
	.loc 1 3303 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 3311 0
	movl	$0, -56(%ebp)
	.loc 1 3315 0
	movl	-192(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L497
	.loc 1 3318 0
	leal	-46(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$30, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 3319 0
	movl	-192(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 3320 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$9, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3326 0
	jmp	.L499
.L429:
	.loc 1 3327 0
	movl	-60(%ebp), %eax
	movl	%eax, -200(%ebp)
	cmpl	$10, -200(%ebp)
	je	.L431
	cmpl	$37, -200(%ebp)
	je	.L432
	jmp	.L430
.L431:
	.loc 1 3330 0
	movl	flag_verbose_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L433
	.loc 1 3331 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	output_asm_operand_names
.L433:
	.loc 1 3332 0
	movl	flag_print_asm_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L435
	.loc 1 3333 0
	call	output_asm_name
.L435:
	.loc 1 3335 0
	movl	$0, -56(%ebp)
	.loc 1 3336 0
	leal	-46(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$30, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 3338 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3347 0
	jmp	.L428
.L432:
	.loc 1 3404 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	.L437
	.loc 1 3406 0
	addl	$1, -64(%ebp)
	.loc 1 3407 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
	jmp	.L428
.L437:
	.loc 1 3412 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	.L440
	.loc 1 3414 0
	addl	$1, -64(%ebp)
	.loc 1 3415 0
	movl	insn_counter@GOTOFF(%ebx), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	%edx, 8(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	fprintf@PLT
	jmp	.L428
.L440:
	.loc 1 3422 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$136, %eax
	testl	%eax, %eax
	je	.L442
.LBB34:
	.loc 1 3424 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	addl	$1, -64(%ebp)
	.loc 1 3425 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3427 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L444
	.loc 1 3428 0
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	jmp	.L446
.L444:
	.loc 1 3429 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L447
	cmpl	$0, -60(%ebp)
	js	.L449
	movl	-60(%ebp), %edx
	movl	insn_noperands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L447
.L449:
	.loc 1 3431 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3429 0
	jmp	.L446
.L447:
	.loc 1 3432 0
	cmpl	$108, -52(%ebp)
	jne	.L451
	.loc 1 3433 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	output_asm_label@PLT
	jmp	.L446
.L451:
	.loc 1 3434 0
	cmpl	$97, -52(%ebp)
	jne	.L453
	.loc 1 3435 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	output_address@PLT
	jmp	.L446
.L453:
	.loc 1 3436 0
	cmpl	$99, -52(%ebp)
	jne	.L455
	.loc 1 3438 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	je	.L457
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	je	.L457
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L457
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$144, %ax
	je	.L457
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L462
	movl	flag_pic@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L464
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	pic_address_needs_scratch@PLT
	testl	%eax, %eax
	jne	.L462
.L464:
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L457
	movl	mips_abi@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L462
.L457:
	.loc 1 3439 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3438 0
	jmp	.L446
.L462:
	.loc 1 3441 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	$99, 4(%esp)
	movl	%eax, (%esp)
	call	output_operand
	jmp	.L446
.L455:
	.loc 1 3443 0
	cmpl	$110, -52(%ebp)
	jne	.L468
	.loc 1 3445 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L470
	.loc 1 3446 0
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
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	fprintf@PLT
	jmp	.L446
.L470:
	.loc 1 3450 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3451 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	jmp	.L446
.L468:
	.loc 1 3455 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	output_operand
.L446:
	.loc 1 3457 0
	movl	-60(%ebp), %eax
	movzbl	-46(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L473
	.loc 1 3458 0
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, -184(%ebp,%edx,4)
	addl	$1, -56(%ebp)
.L473:
	.loc 1 3459 0
	movl	-60(%ebp), %eax
	movb	$1, -46(%ebp,%eax)
	.loc 1 3461 0
	jmp	.L475
.L476:
	.loc 1 3462 0
	addl	$1, -64(%ebp)
.L475:
	.loc 1 3461 0
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
	jne	.L476
	jmp	.L428
.L442:
.LBE34:
	.loc 1 3465 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L478
	.loc 1 3467 0
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi@PLT
	movl	%eax, -60(%ebp)
	.loc 1 3468 0
	movl	this_is_asm_operands@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L480
	cmpl	$0, -60(%ebp)
	js	.L482
	movl	-60(%ebp), %edx
	movl	insn_noperands@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L480
.L482:
	.loc 1 3470 0
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3468 0
	jmp	.L484
.L480:
	.loc 1 3472 0
	movl	-60(%ebp), %eax
	sall	$2, %eax
	addl	-196(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	output_operand
.L484:
	.loc 1 3474 0
	movl	-60(%ebp), %eax
	movzbl	-46(%ebp,%eax), %eax
	testb	%al, %al
	jne	.L485
	.loc 1 3475 0
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	movl	%eax, -184(%ebp,%edx,4)
	addl	$1, -56(%ebp)
.L485:
	.loc 1 3476 0
	movl	-60(%ebp), %eax
	movb	$1, -46(%ebp,%eax)
	.loc 1 3478 0
	jmp	.L487
.L488:
	.loc 1 3479 0
	addl	$1, -64(%ebp)
.L487:
	.loc 1 3478 0
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
	jne	.L488
	jmp	.L428
.L478:
	.loc 1 3485 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	mips_print_operand_punct@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	testb	%al, %al
	je	.L490
	.loc 1 3486 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	$1, -64(%ebp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	output_operand
	jmp	.L428
.L490:
	.loc 1 3489 0
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3490 0
	jmp	.L428
.L430:
	.loc 1 3493 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	putc_unlocked@PLT
.L428:
.L499:
	.loc 1 3326 0
	movl	-64(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -60(%ebp)
	cmpl	$0, -60(%ebp)
	setne	%al
	addl	$1, -64(%ebp)
	testb	%al, %al
	jne	.L429
	.loc 1 3497 0
	movl	flag_verbose_asm@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L493
	.loc 1 3498 0
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-196(%ebp), %eax
	movl	%eax, (%esp)
	call	output_asm_operand_names
.L493:
	.loc 1 3499 0
	movl	flag_print_asm_name@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L495
	.loc 1 3500 0
	call	output_asm_name
.L495:
	.loc 1 3502 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	putc_unlocked@PLT
.L497:
	.loc 1 3503 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L498
	call	__stack_chk_fail_local
.L498:
	addl	$204, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	output_asm_insn, .-output_asm_insn
	.section	.rodata
.LC52:
	.string	"L"
.LC53:
	.string	"`%%l' operand isn't a label"
	.text
.globl output_asm_label
	.type	output_asm_label, @function
output_asm_label:
.LFB48:
	.loc 1 3510 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%ebx
.LCFI138:
	subl	$308, %esp
.LCFI139:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -280(%ebp)
	.loc 1 3510 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
	.loc 1 3513 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L501
	.loc 1 3514 0
	movl	-280(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -280(%ebp)
.L501:
	.loc 1 3515 0
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L503
	movl	-280(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$47, %ax
	jne	.L505
	movl	-280(%ebp), %eax
	movl	44(%eax), %eax
	cmpl	$-88, %eax
	jne	.L505
.L503:
	.loc 1 3518 0
	movl	-280(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-264(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3515 0
	jmp	.L507
.L505:
	.loc 1 3520 0
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
.L507:
	.loc 1 3522 0
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-264(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	assemble_name@PLT
	.loc 1 3523 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L509
	call	__stack_chk_fail_local
.L509:
	addl	$308, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	output_asm_label, .-output_asm_label
	.section	.rodata
	.type	__FUNCTION__.16015, @object
	.size	__FUNCTION__.16015, 15
__FUNCTION__.16015:
	.string	"output_operand"
	.text
	.type	output_operand, @function
output_operand:
.LFB49:
	.loc 1 3539 0
	pushl	%ebp
.LCFI140:
	movl	%esp, %ebp
.LCFI141:
	pushl	%ebx
.LCFI142:
	subl	$20, %esp
.LCFI143:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3540 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L511
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L511
	.loc 1 3541 0
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	alter_subreg@PLT
	movl	%eax, 8(%ebp)
.L511:
	.loc 1 3546 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	.L514
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L514
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$175, %eax
	jbe	.L514
	.loc 1 3547 0
	leal	__FUNCTION__.16015@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3547, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L514:
	.loc 1 3549 0
	movl	8(%ebp), %edx
	movl	asm_out_file@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	print_operand@PLT
	.loc 1 3550 0
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
	.loc 1 3559 0
	pushl	%ebp
.LCFI144:
	movl	%esp, %ebp
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$20, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3560 0
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	walk_alter_subreg
	.loc 1 3561 0
	movl	8(%ebp), %eax
	movl	asm_out_file@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	print_operand_address@PLT
	.loc 1 3562 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	output_address, .-output_address
	.section	.rodata
.LC54:
	.string	"0x%llx%016llx"
.LC55:
	.string	"0x%llx"
.LC56:
	.string	"floating constant misused"
.LC57:
	.string	"invalid expression as operand"
	.text
.globl output_addr_const
	.type	output_addr_const, @function
output_addr_const:
.LFB51:
	.loc 1 3572 0
	pushl	%ebp
.LCFI148:
	movl	%esp, %ebp
.LCFI149:
	pushl	%edi
.LCFI150:
	pushl	%esi
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$316, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -288(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -292(%ebp)
	.loc 1 3572 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
.L522:
	.loc 1 3576 0
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	subl	$46, %eax
	movl	%eax, -296(%ebp)
	cmpl	$85, -296(%ebp)
	ja	.L523
	movl	-296(%ebp), %eax
	sall	$2, %eax
	movl	.L534@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L534:
	.long	.L524@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L525@GOTOFF
	.long	.L526@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L527@GOTOFF
	.long	.L528@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L529@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L530@GOTOFF
	.long	.L531@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L532@GOTOFF
	.long	.L533@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L523@GOTOFF
	.long	.L529@GOTOFF
	.long	.L529@GOTOFF
	.text
.L528:
	.loc 1 3579 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$46, (%esp)
	call	putc_unlocked@PLT
	.loc 1 3580 0
	jmp	.L559
.L531:
	.loc 1 3586 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 3588 0
	jmp	.L559
.L530:
	.loc 1 3591 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -292(%ebp)
.L524:
	.loc 1 3594 0
	movl	-292(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, 16(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 3598 0
	leal	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	assemble_name@PLT
	.loc 1 3600 0
	jmp	.L559
.L525:
	.loc 1 3603 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3604 0
	jmp	.L559
.L527:
	.loc 1 3609 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3610 0
	jmp	.L559
.L526:
	.loc 1 3613 0
	movl	-292(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	jne	.L536
	.loc 1 3616 0
	movl	-292(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L538
	.loc 1 3617 0
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
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L559
.L538:
	.loc 1 3619 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L541
	.loc 1 3620 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L559
.L541:
	.loc 1 3622 0
	movl	-292(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	jmp	.L559
.L536:
	.loc 1 3627 0
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
	.loc 1 3628 0
	jmp	.L559
.L532:
	.loc 1 3632 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L544
	.loc 1 3634 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3635 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L546
	.loc 1 3636 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$43, (%esp)
	call	fputc@PLT
.L546:
	.loc 1 3637 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	jmp	.L559
.L544:
	.loc 1 3641 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3642 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L549
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	js	.L551
.L549:
	.loc 1 3644 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$43, (%esp)
	call	fputc@PLT
.L551:
	.loc 1 3645 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3647 0
	jmp	.L559
.L533:
	.loc 1 3652 0
	movl	-292(%ebp), %eax
	movl	%eax, (%esp)
	call	simplify_subtraction@PLT
	movl	%eax, -292(%ebp)
	.loc 1 3653 0
	movl	-292(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$86, %ax
	jne	.L522
	.loc 1 3656 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3657 0
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$45, (%esp)
	call	fputc@PLT
	.loc 1 3658 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L553
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L555
.L553:
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$69, %ax
	je	.L555
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L557
.L555:
	.loc 1 3661 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3658 0
	jmp	.L559
.L557:
	.loc 1 3664 0
	movl	targetm@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 3665 0
	movl	-292(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3666 0
	movl	targetm@GOT(%ebx), %eax
	movl	4(%eax), %edx
	movl	-288(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 3668 0
	jmp	.L559
.L529:
	.loc 1 3673 0
	movl	-292(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-288(%ebp), %eax
	movl	%eax, (%esp)
	call	output_addr_const@PLT
	.loc 1 3674 0
	jmp	.L559
.L523:
	.loc 1 3683 0
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	output_operand_lossage@PLT
.L559:
	.loc 1 3685 0
	movl	-16(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L560
	call	__stack_chk_fail_local
.L560:
	addl	$316, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	output_addr_const, .-output_addr_const
	.section	.rodata
	.type	__FUNCTION__.16162, @object
	.size	__FUNCTION__.16162, 12
__FUNCTION__.16162:
	.string	"asm_fprintf"
.LC58:
	.string	"%%"
	.text
.globl asm_fprintf
	.type	asm_fprintf, @function
asm_fprintf:
.LFB52:
	.loc 1 3699 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$68, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 3699 0
	movl	%gs:20, %eax
	movl	%eax, -8(%ebp)
	xorl	%eax, %eax
.LBB35:
	.loc 1 3703 0
	leal	16(%ebp), %eax
	movl	%eax, -28(%ebp)
.LBB36:
	.loc 1 3707 0
	movb	$37, -18(%ebp)
	.loc 1 3709 0
	jmp	.L587
.L563:
	.loc 1 3710 0
	movzbl	-19(%ebp), %eax
	cmpl	$37, %eax
	je	.L565
	jmp	.L564
.L565:
	.loc 1 3741 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 3742 0
	leal	-18(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 3743 0
	jmp	.L566
.L567:
	.loc 1 3745 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3746 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	addl	$1, -44(%ebp)
.L566:
	.loc 1 3743 0
	movzbl	-19(%ebp), %edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L567
	cmpb	$46, -19(%ebp)
	je	.L567
	.loc 1 3748 0
	movzbl	-19(%ebp), %eax
	subl	$37, %eax
	movl	%eax, -48(%ebp)
	cmpl	$83, -48(%ebp)
	ja	.L570
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	.L582@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L582:
	.long	.L571@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L562@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L573@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L562@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L562@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L576@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L577@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L577@GOTOFF
	.long	.L578@GOTOFF
	.long	.L578@GOTOFF
	.long	.L578@GOTOFF
	.long	.L570@GOTOFF
	.long	.L577@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L579@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L577@GOTOFF
	.long	.L577@GOTOFF
	.long	.L570@GOTOFF
	.long	.L570@GOTOFF
	.long	.L580@GOTOFF
	.long	.L570@GOTOFF
	.long	.L577@GOTOFF
	.long	.L570@GOTOFF
	.long	.L581@GOTOFF
	.long	.L577@GOTOFF
	.text
.L571:
	.loc 1 3751 0
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	fprintf@PLT
	.loc 1 3752 0
	jmp	.L562
.L577:
	.loc 1 3757 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3758 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3759 0
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
	.loc 1 3760 0
	jmp	.L562
.L581:
	.loc 1 3772 0
	movl	-24(%ebp), %eax
	movb	$108, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 3773 0
	movl	-24(%ebp), %eax
	movb	$108, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 3777 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 3778 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3779 0
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
	.loc 1 3780 0
	jmp	.L562
.L579:
	.loc 1 3783 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3784 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
	addl	$1, -44(%ebp)
	.loc 1 3785 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3786 0
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
	.loc 1 3787 0
	jmp	.L562
.L578:
	.loc 1 3792 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3793 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3794 0
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
	.loc 1 3795 0
	jmp	.L562
.L580:
	.loc 1 3798 0
	movl	-24(%ebp), %edx
	movzbl	-19(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
	.loc 1 3799 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 3800 0
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
	.loc 1 3801 0
	jmp	.L562
.L573:
	.loc 1 3823 0
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$36, (%esp)
	call	fputc@PLT
	.loc 1 3825 0
	jmp	.L562
.L576:
	.loc 1 3828 0
	movl	user_label_prefix@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputs_unlocked@PLT
	.loc 1 3829 0
	jmp	.L562
.L570:
	.loc 1 3846 0
	leal	__FUNCTION__.16162@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$3846, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L564:
	.loc 1 3851 0
	movzbl	-19(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fputc_unlocked@PLT
.L562:
.L587:
	.loc 1 3709 0
	movl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, -19(%ebp)
	cmpb	$0, -19(%ebp)
	setne	%al
	addl	$1, -44(%ebp)
	testb	%al, %al
	jne	.L563
.LBE36:
.LBE35:
	.loc 1 3854 0
	movl	-8(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L586
	call	__stack_chk_fail_local
.L586:
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
	.loc 1 3865 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%esi
.LCFI160:
	pushl	%ebx
.LCFI161:
	subl	$112, %esp
.LCFI162:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 3866 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	jne	.L589
	.loc 1 3868 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L591
.LBB37:
	.loc 1 3877 0
	movl	$1, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 3878 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L593
	movl	$63, -100(%ebp)
	jmp	.L595
.L593:
	movl	$31, -100(%ebp)
.L595:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movzbl	-100(%ebp), %ecx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L626
	movl	%eax, %edx
	xorl	%eax, %eax
.L626:
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 3886 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 3887 0
	addl	$-1, -40(%ebp)
	adcl	$-1, -36(%ebp)
	.loc 1 3890 0
	movl	-40(%ebp), %eax
	notl	%eax
	movl	%eax, -24(%ebp)
	movl	-36(%ebp), %eax
	notl	%eax
	movl	%eax, -20(%ebp)
	.loc 1 3893 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 3894 0
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 3895 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	-56(%ebp), %eax
	andl	%ecx, %eax
	movl	-52(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L596
	.loc 1 3896 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %esi
	movl	-56(%ebp), %edx
	orl	%eax, %edx
	movl	-52(%ebp), %ecx
	orl	%esi, %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
.L596:
	.loc 1 3900 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3901 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L598
	movl	$63, -96(%ebp)
	jmp	.L600
.L598:
	movl	$31, -96(%ebp)
.L600:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movzbl	-96(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L625
	movl	%edx, %eax
	xorl	%edx, %edx
.L625:
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3902 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3903 0
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %esi
	movl	-48(%ebp), %eax
	andl	%ecx, %eax
	movl	-44(%ebp), %edx
	andl	%esi, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 3904 0
	movl	-32(%ebp), %ecx
	movl	-28(%ebp), %esi
	movl	-48(%ebp), %eax
	andl	%ecx, %eax
	movl	-44(%ebp), %edx
	andl	%esi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L601
	.loc 1 3905 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %esi
	movl	-48(%ebp), %edx
	orl	%eax, %edx
	movl	-44(%ebp), %ecx
	orl	%esi, %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
.L601:
	.loc 1 3908 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L603
	.loc 1 3910 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3911 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L624
.L603:
	.loc 1 3915 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3916 0
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	call	gen_rtx_CONST_INT@PLT
	movl	%eax, %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L624
.L591:
.LBE37:
.LBB38:
	.loc 1 3924 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	testl	%edx, %edx
	jns	.L607
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	252(%eax), %eax
	movl	%eax, -92(%ebp)
	jmp	.L609
.L607:
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, -92(%ebp)
.L609:
	movl	-92(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 3925 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L610
	.loc 1 3927 0
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3928 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L624
.L610:
	.loc 1 3932 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3933 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L624
.L589:
.LBE38:
	.loc 1 3937 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	je	.L613
	.loc 1 3939 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L615
	.loc 1 3941 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 3942 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L624
.L615:
	.loc 1 3946 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3947 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %edx
	movl	16(%ebp), %eax
	movl	%edx, (%eax)
	jmp	.L624
.L613:
	.loc 1 3950 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L618
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_class@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$1, %eax
	jne	.L620
.L618:
	.loc 1 3956 0
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L621
	.loc 1 3958 0
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
	.loc 1 3959 0
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
	jmp	.L624
.L621:
	.loc 1 3963 0
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
	.loc 1 3964 0
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
	.loc 1 3950 0
	jmp	.L624
.L620:
.LBB39:
	.loc 1 3971 0
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
	.loc 1 3977 0
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
	.loc 1 3995 0
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
	.loc 1 3996 0
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
.L624:
.LBE39:
	.loc 1 3998 0
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
	.loc 1 4004 0
	pushl	%ebp
.LCFI163:
	movl	%esp, %ebp
.LCFI164:
	pushl	%ebx
.LCFI165:
	subl	$20, %esp
.LCFI166:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4008 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	298(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L628
	movl	profile_arc_flag@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L630
.L628:
	.loc 1 4009 0
	movl	$0, -24(%ebp)
	jmp	.L631
.L630:
	.loc 1 4011 0
	call	get_insns@PLT
	movl	%eax, -12(%ebp)
	jmp	.L632
.L633:
	.loc 1 4013 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L634
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L634
	.loc 1 4015 0
	movl	$0, -24(%ebp)
	jmp	.L631
.L634:
	.loc 1 4016 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L637
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L637
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L637
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L637
	.loc 1 4020 0
	movl	$0, -24(%ebp)
	jmp	.L631
.L637:
	.loc 1 4011 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
.L632:
	cmpl	$0, -12(%ebp)
	jne	.L633
	.loc 1 4022 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	292(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4023 0
	jmp	.L643
.L644:
	.loc 1 4026 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4028 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L645
	movl	-12(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L645
	.loc 1 4030 0
	movl	$0, -24(%ebp)
	jmp	.L631
.L645:
	.loc 1 4031 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L648
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$24, %ax
	jne	.L648
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L648
	movl	-12(%ebp), %eax
	movl	44(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L648
	.loc 1 4035 0
	movl	$0, -24(%ebp)
	jmp	.L631
.L648:
	.loc 1 4024 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L643:
	.loc 1 4023 0
	cmpl	$0, -8(%ebp)
	jne	.L644
	.loc 1 4038 0
	movl	$1, -24(%ebp)
.L631:
	movl	-24(%ebp), %eax
	.loc 1 4039 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	leaf_function_p, .-leaf_function_p
	.section	.rodata
	.type	__FUNCTION__.16387, @object
	.size	__FUNCTION__.16387, 23
__FUNCTION__.16387:
	.string	"final_forward_branch_p"
	.text
.globl final_forward_branch_p
	.type	final_forward_branch_p, @function
final_forward_branch_p:
.LFB55:
	.loc 1 4048 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	pushl	%ebx
.LCFI169:
	subl	$36, %esp
.LCFI170:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4050 0
	movl	uid_shuid@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L656
	.loc 1 4051 0
	leal	__FUNCTION__.16387@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4051, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L656:
	.loc 1 4052 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 4053 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	uid_shuid@GOTOFF(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 4055 0
	cmpl	$0, -12(%ebp)
	je	.L658
	cmpl	$0, -8(%ebp)
	jne	.L660
.L658:
	.loc 1 4056 0
	leal	__FUNCTION__.16387@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4056, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L660:
	.loc 1 4057 0
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	setl	%al
	movzbl	%al, %eax
	.loc 1 4058 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	final_forward_branch_p, .-final_forward_branch_p
	.section	.rodata
	.type	__FUNCTION__.16418, @object
	.size	__FUNCTION__.16418, 24
__FUNCTION__.16418:
	.string	"mark_referenced_symbols"
	.text
	.type	mark_referenced_symbols, @function
mark_referenced_symbols:
.LFB56:
	.loc 1 4203 0
	pushl	%ebp
.LCFI171:
	movl	%esp, %ebp
.LCFI172:
	pushl	%ebx
.LCFI173:
	subl	$52, %esp
.LCFI174:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4207 0
	cmpl	$0, 8(%ebp)
	je	.L684
	.loc 1 4210 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$78, %ax
	jne	.L665
.LBB40:
	.loc 1 4211 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 4215 0
	cmpl	$0, -20(%ebp)
	jne	.L667
	.loc 1 4216 0
	leal	__FUNCTION__.16418@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4216, 4(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L667:
	.loc 1 4221 0
	movl	targetm@GOT(%ebx), %eax
	movl	240(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -16(%ebp)
	.loc 1 4223 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_get_identifier@PLT
	movl	%eax, -12(%ebp)
	.loc 1 4224 0
	cmpl	$0, -12(%ebp)
	je	.L684
	.loc 1 4225 0
	movl	-12(%ebp), %eax
	movzbl	10(%eax), %edx
	orl	$4, %edx
	movb	%dl, 10(%eax)
	.loc 1 4226 0
	jmp	.L684
.L665:
.LBE40:
	.loc 1 4228 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$151, %ax
	jne	.L671
.LBB41:
	.loc 1 4230 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L673
.L674:
	.loc 1 4231 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	mark_referenced_symbols
	.loc 1 4230 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
.L673:
	cmpl	$0, -8(%ebp)
	jne	.L674
	.loc 1 4232 0
	jmp	.L684
.L671:
.LBE41:
	.loc 1 4235 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 4236 0
	movl	$0, -32(%ebp)
	jmp	.L676
.L677:
	.loc 1 4238 0
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L678
	.loc 1 4239 0
	movl	-32(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	mark_referenced_symbols
	jmp	.L680
.L678:
	.loc 1 4240 0
	movl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L680
	.loc 1 4241 0
	movl	$0, -28(%ebp)
	jmp	.L682
.L683:
	.loc 1 4242 0
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-28(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	mark_referenced_symbols
	.loc 1 4241 0
	addl	$1, -28(%ebp)
.L682:
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-28(%ebp), %eax
	jg	.L683
.L680:
	.loc 1 4236 0
	addl	$1, -32(%ebp)
.L676:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	cmpl	-32(%ebp), %eax
	jg	.L677
.L684:
	.loc 1 4244 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	mark_referenced_symbols, .-mark_referenced_symbols
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
	.align 4
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI96-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI97-.LCFI96
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
	.long	.LCFI99-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI100-.LCFI99
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI103-.LCFI100
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
	.long	.LCFI104-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI105-.LCFI104
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI105
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
	.long	.LCFI109-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI112-.LCFI110
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
	.long	.LCFI113-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI116-.LCFI114
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
	.long	.LCFI125-.LCFI123
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
	.long	.LCFI126-.LFB46
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
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.byte	0x4
	.long	.LCFI130-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI131
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
	.long	.LCFI136-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI139-.LCFI137
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
	.long	.LCFI140-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI143-.LCFI141
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
	.long	.LCFI147-.LCFI145
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
	.long	.LCFI148-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI153-.LCFI149
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
	.long	.LCFI154-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI155-.LCFI154
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI157-.LCFI155
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
	.long	.LCFI162-.LCFI159
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
	.long	.LCFI163-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI164-.LCFI163
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI166-.LCFI164
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
	.long	.LCFI167-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI170-.LCFI168
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
	.long	.LCFI171-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI172-.LCFI171
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI174-.LCFI172
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE82:
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
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/libio.h"
	.file 18 "/usr/include/bits/types.h"
	.file 19 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h"
	.file 20 "../../../include/gnu/safe-ctype.h"
	.file 21 "../../../kg++fe/gnu/regs.h"
	.file 22 "../../../kg++fe/gnu/varray.h"
	.file 23 "../../../kg++fe/gnu/recog.h"
	.file 24 "../../../kg++fe/gnu/flags.h"
	.file 25 "../../../kg++fe/gnu/output.h"
	.file 26 "../../../kg++fe/gnu/target.h"
	.file 27 "../../../kg++fe/gnu/debug.h"
	.file 28 "../../../kg++fe/gnu/profile.h"
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
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI96-.Ltext0
	.long	.LCFI97-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI97-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
	.long	.LCFI99-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI99-.Ltext0
	.long	.LCFI100-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI100-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI104-.Ltext0
	.long	.LCFI105-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI105-.Ltext0
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI113-.Ltext0
	.long	.LCFI114-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI114-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI136-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI136-.Ltext0
	.long	.LCFI137-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI137-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI140-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI140-.Ltext0
	.long	.LCFI141-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI141-.Ltext0
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
	.long	.LCFI148-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI148-.Ltext0
	.long	.LCFI149-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI149-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI154-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI154-.Ltext0
	.long	.LCFI155-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI155-.Ltext0
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
	.long	.LCFI163-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI163-.Ltext0
	.long	.LCFI164-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI164-.Ltext0
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
	.long	.LCFI167-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI167-.Ltext0
	.long	.LCFI168-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI168-.Ltext0
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
	.long	.LCFI171-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI171-.Ltext0
	.long	.LCFI172-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI172-.Ltext0
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xa055
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/final.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
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
	.byte	0x84
	.long	0xb3e
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
	.long	0x846
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x1759
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
	.byte	0xf2
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x1769
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
	.long	0x2cf
	.string	"tree_node"
	.byte	0xa0
	.byte	0x2
	.byte	0xf
	.uleb128 0x8
	.long	.LASF0
	.byte	0x3
	.value	0x887
	.long	0x3e3d
	.uleb128 0x9
	.string	"int_cst"
	.byte	0x3
	.value	0x888
	.long	0x415c
	.uleb128 0x9
	.string	"real_cst"
	.byte	0x3
	.value	0x889
	.long	0x41a4
	.uleb128 0x9
	.string	"vector"
	.byte	0x3
	.value	0x88a
	.long	0x4310
	.uleb128 0x9
	.string	"string"
	.byte	0x3
	.value	0x88b
	.long	0x4251
	.uleb128 0x9
	.string	"complex"
	.byte	0x3
	.value	0x88c
	.long	0x42bb
	.uleb128 0x9
	.string	"identifier"
	.byte	0x3
	.value	0x88d
	.long	0x4396
	.uleb128 0x9
	.string	"decl"
	.byte	0x3
	.value	0x88e
	.long	0x53fd
	.uleb128 0x9
	.string	"type"
	.byte	0x3
	.value	0x88f
	.long	0x45f3
	.uleb128 0x9
	.string	"list"
	.byte	0x3
	.value	0x890
	.long	0x43cd
	.uleb128 0x9
	.string	"vec"
	.byte	0x3
	.value	0x891
	.long	0x4414
	.uleb128 0x9
	.string	"exp"
	.byte	0x3
	.value	0x892
	.long	0x4462
	.uleb128 0x9
	.string	"block"
	.byte	0x3
	.value	0x893
	.long	0x44a9
	.uleb128 0x9
	.string	"omp"
	.byte	0x3
	.value	0x895
	.long	0x5dd6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2d5
	.uleb128 0xa
	.long	0x2da
	.uleb128 0xb
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.long	0x3bb
	.string	"mips_args"
	.byte	0x40
	.byte	0xd
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0xd
	.value	0xaad
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0xd
	.value	0xab0
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0xd
	.value	0xab5
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0xd
	.value	0xab8
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0xd
	.value	0xabb
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0xd
	.value	0xac8
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0xd
	.value	0xacb
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0xd
	.value	0xad3
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0xd
	.value	0xad4
	.long	0x3c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x3d2
	.long	0x9a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF1
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0xd
	.value	0xad5
	.long	0x2e9
	.uleb128 0x2
	.string	"__gnuc_va_list"
	.byte	0x13
	.byte	0x2b
	.long	0x407
	.uleb128 0x3
	.byte	0x4
	.long	0x2da
	.uleb128 0x2
	.string	"va_list"
	.byte	0x13
	.byte	0x69
	.long	0x3f1
	.uleb128 0x2
	.string	"size_t"
	.byte	0xf
	.byte	0xd6
	.long	0x3bb
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
	.long	0x482
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x12
	.byte	0x90
	.long	0x4cc
	.uleb128 0xb
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x12
	.byte	0x91
	.long	0x4ad
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x2da
	.uleb128 0x2
	.string	"FILE"
	.byte	0x10
	.byte	0x2e
	.long	0x4fd
	.uleb128 0x13
	.long	0x778
	.long	.LASF2
	.byte	0x94
	.byte	0x10
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0x11
	.value	0x10c
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0x11
	.value	0x111
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0x11
	.value	0x112
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0x11
	.value	0x113
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0x11
	.value	0x114
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0x11
	.value	0x115
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0x11
	.value	0x116
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0x11
	.value	0x117
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0x11
	.value	0x118
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0x11
	.value	0x11a
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0x11
	.value	0x11b
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0x11
	.value	0x11c
	.long	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0x11
	.value	0x11e
	.long	0x7da
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0x11
	.value	0x120
	.long	0x7e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0x11
	.value	0x122
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0x11
	.value	0x126
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0x11
	.value	0x128
	.long	0x4bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0x11
	.value	0x12c
	.long	0x43b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0x11
	.value	0x12d
	.long	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0x11
	.value	0x12e
	.long	0x7e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0x11
	.value	0x132
	.long	0x7f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0x11
	.value	0x13b
	.long	0x4d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0x11
	.value	0x144
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0x11
	.value	0x145
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0x11
	.value	0x146
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0x11
	.value	0x147
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0x11
	.value	0x148
	.long	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0x11
	.value	0x14a
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0x11
	.value	0x14c
	.long	0x7fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x77e
	.uleb128 0xa
	.long	0x42a
	.uleb128 0x3
	.byte	0x4
	.long	0x42a
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0x11
	.byte	0xb0
	.uleb128 0x4
	.long	0x7da
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x11
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0x11
	.byte	0xb7
	.long	0x7da
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0x11
	.byte	0xb8
	.long	0x7e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0x11
	.byte	0xbc
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x797
	.uleb128 0x3
	.byte	0x4
	.long	0x4fd
	.uleb128 0xf
	.long	0x7f6
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x789
	.uleb128 0xf
	.long	0x80c
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x81c
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x17
	.byte	0x0
	.uleb128 0xf
	.long	0x82c
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x2e2
	.uleb128 0x3
	.byte	0x4
	.long	0x2e2
	.uleb128 0x3
	.byte	0x4
	.long	0x83d
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x83e
	.uleb128 0x17
	.long	0xa8f
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
	.long	0xb3e
	.long	.LASF3
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
	.uleb128 0x17
	.long	0x130d
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
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
	.uleb128 0x1a
	.long	0x13e7
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x130d
	.uleb128 0x13
	.long	0x145c
	.long	.LASF4
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF5
	.byte	0x4
	.byte	0x67
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x4
	.byte	0x68
	.long	0x1402
	.uleb128 0x7
	.long	0x1539
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1d
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x482
	.uleb128 0x1d
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x2e2
	.uleb128 0x1d
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x3bb
	.uleb128 0x1d
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x2cf
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9a
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19b
	.uleb128 0x1d
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x846
	.uleb128 0x1d
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0x13e7
	.uleb128 0x1d
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x154d
	.uleb128 0x1d
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x15b3
	.uleb128 0x1d
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e3
	.uleb128 0x1d
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x173e
	.uleb128 0x1d
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x1744
	.byte	0x0
	.uleb128 0x1e
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1539
	.uleb128 0x4
	.long	0x15b3
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x6
	.byte	0x3d
	.long	0x655e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x6
	.byte	0x3e
	.long	0x655e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x3f
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x6
	.byte	0x40
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1553
	.uleb128 0x4
	.long	0x173e
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
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
	.long	0x66b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x7
	.byte	0xbc
	.long	0x66b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x7
	.byte	0xc1
	.long	0x65e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x7
	.byte	0xc5
	.long	0x65e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x7
	.byte	0xcb
	.long	0x65e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x7
	.byte	0xcd
	.long	0x65e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0xd0
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x7
	.byte	0xd3
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x173e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x7
	.byte	0xd6
	.long	0x173e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x7
	.byte	0xd9
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x7
	.byte	0xdc
	.long	0x6924
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0xdf
	.long	0x65ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x7
	.byte	0xe2
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"flags"
	.byte	0x7
	.byte	0xe5
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x15b9
	.uleb128 0x3
	.byte	0x4
	.long	0x145c
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0x1467
	.uleb128 0xf
	.long	0x1769
	.long	0x174a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1779
	.long	0x9a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x17b0
	.string	"location_s"
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.uleb128 0x1b
	.long	.LASF7
	.byte	0xb
	.byte	0x1e
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"line"
	.byte	0xb
	.byte	0x21
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0xb
	.byte	0x23
	.long	0x177f
	.uleb128 0x17
	.long	0x20e4
	.string	"tree_code"
	.byte	0x4
	.byte	0x3
	.byte	0x25
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
	.byte	0x2f
	.long	0x3bb
	.uleb128 0x4
	.long	0x2134
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x3
	.byte	0x30
	.uleb128 0x6
	.string	"block"
	.byte	0x3
	.byte	0x30
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset"
	.byte	0x3
	.byte	0x30
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x3
	.byte	0x34
	.long	0x213e
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.uleb128 0x19
	.long	0x2193
	.long	.LASF8
	.byte	0x4
	.byte	0x3
	.byte	0x58
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
	.long	0x3e3d
	.string	"built_in_function"
	.byte	0x4
	.byte	0x3
	.byte	0x67
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
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x18
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x18
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x18
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x18
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x18
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x18
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x18
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x18
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x18
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x18
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x18
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x18
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x18
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x18
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x18
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x18
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x18
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x18
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x18
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x18
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x18
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x18
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x18
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x18
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x18
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x18
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x18
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x18
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x18
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x18
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x18
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x18
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x18
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x18
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x18
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x18
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x18
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x18
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x18
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x18
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x18
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x18
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x18
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x18
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x18
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x18
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x18
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x18
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x18
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x18
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x18
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x18
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x18
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x18
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x18
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x18
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x18
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x18
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x18
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x18
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x18
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x18
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x18
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x18
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x18
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x18
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x18
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x18
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x18
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x18
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x18
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x18
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x18
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x18
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x18
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x18
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x18
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x18
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x18
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x18
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x18
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x18
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x18
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x18
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x18
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x18
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x18
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x18
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x18
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x18
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x18
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x18
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x18
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x18
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x18
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x18
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x18
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x18
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x18
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x18
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x18
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x18
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x18
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x18
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x18
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x18
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x18
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x18
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x18
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x18
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x18
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x18
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x18
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x18
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x18
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x18
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x18
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x18
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x18
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x18
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x18
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x18
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x18
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x18
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x18
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x18
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x18
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x18
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x18
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x18
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x18
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x18
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x18
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x18
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x18
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x18
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x18
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x18
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x18
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x18
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x18
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x18
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x18
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x18
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x18
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x18
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x18
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x18
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x18
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x18
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x18
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x18
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x18
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x18
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x18
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x18
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x18
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x18
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x18
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x18
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x18
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x18
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x18
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x18
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x18
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x18
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x18
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x18
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x18
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x18
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x18
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x18
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x18
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x18
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x18
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x18
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x18
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x18
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x18
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x18
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x18
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x18
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x18
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x18
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x18
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x18
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x18
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x18
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x18
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x18
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x18
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x18
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x18
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x18
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x18
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x18
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x18
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x18
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x18
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x18
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x18
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x18
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x18
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x18
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x18
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x18
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x18
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x18
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x18
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x4
	.long	0x4120
	.string	"tree_common"
	.byte	0x10
	.byte	0x3
	.byte	0x8c
	.uleb128 0x6
	.string	"chain"
	.byte	0x3
	.byte	0x8d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"type"
	.byte	0x3
	.byte	0x8e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"code"
	.byte	0x3
	.byte	0x90
	.long	0x17c2
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF9
	.byte	0x3
	.byte	0xa8
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF10
	.byte	0x3
	.byte	0xa9
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF11
	.byte	0x3
	.byte	0xaa
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF12
	.byte	0x3
	.byte	0xab
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF13
	.byte	0x3
	.byte	0xac
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF14
	.byte	0x3
	.byte	0xad
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF15
	.byte	0x3
	.byte	0xae
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.long	.LASF16
	.byte	0x3
	.byte	0xb0
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
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
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.long	0x415c
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x3
	.value	0x30a
	.uleb128 0xd
	.string	"low"
	.byte	0x3
	.value	0x30b
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"high"
	.byte	0x3
	.value	0x30c
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x41a4
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x3
	.value	0x303
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x304
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x305
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"int_cst"
	.byte	0x3
	.value	0x30d
	.long	0x4120
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x41f2
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x3
	.value	0x31f
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x320
	.long	0x3e3d
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
	.uleb128 0xd
	.string	"real_cst_ptr"
	.byte	0x3
	.value	0x322
	.long	0x424b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x424b
	.string	"real_value"
	.byte	0x18
	.byte	0x3
	.value	0x319
	.uleb128 0x5
	.string	"class"
	.byte	0x9
	.byte	0x35
	.long	0x6ce3
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
	.long	0x3bb
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
	.long	0x2e2
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
	.long	0x6d29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x41f2
	.uleb128 0xc
	.long	0x42b5
	.string	"tree_string"
	.byte	0x20
	.byte	0x3
	.value	0x333
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x334
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x335
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x336
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"pointer"
	.byte	0x3
	.value	0x337
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"st"
	.byte	0x3
	.value	0x339
	.long	0x42b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2134
	.uleb128 0xc
	.long	0x4310
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x3
	.value	0x342
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x343
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x344
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"real"
	.byte	0x3
	.value	0x345
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"imag"
	.byte	0x3
	.value	0x346
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xc
	.long	0x4358
	.string	"tree_vector"
	.byte	0x18
	.byte	0x3
	.value	0x355
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x356
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x357
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"elements"
	.byte	0x3
	.value	0x358
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x13
	.long	0x4396
	.long	.LASF18
	.byte	0xc
	.byte	0xa
	.byte	0x19
	.uleb128 0x6
	.string	"str"
	.byte	0xa
	.byte	0x1c
	.long	0x778
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"len"
	.byte	0xa
	.byte	0x1d
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"hash_value"
	.byte	0xa
	.byte	0x1e
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xc
	.long	0x43cd
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x3
	.value	0x376
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x377
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"id"
	.byte	0x3
	.value	0x378
	.long	0x4358
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xc
	.long	0x4414
	.string	"tree_list"
	.byte	0x18
	.byte	0x3
	.value	0x380
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x381
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"purpose"
	.byte	0x3
	.value	0x382
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"value"
	.byte	0x3
	.value	0x383
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4452
	.string	"tree_vec"
	.byte	0x18
	.byte	0x3
	.value	0x38e
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x38f
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF17
	.byte	0x3
	.value	0x390
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"a"
	.byte	0x3
	.value	0x391
	.long	0x4452
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.long	0x4462
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x44a9
	.string	"tree_exp"
	.byte	0x18
	.byte	0x3
	.value	0x3d4
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x3d5
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"complexity"
	.byte	0x3
	.value	0x3d6
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF19
	.byte	0x3
	.value	0x3d9
	.long	0x4452
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x4599
	.string	"tree_block"
	.byte	0x2c
	.byte	0x3
	.value	0x40a
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x40b
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.string	"handler_block_flag"
	.byte	0x3
	.value	0x40d
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x22
	.long	.LASF20
	.byte	0x3
	.value	0x40e
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x21
	.string	"block_num"
	.byte	0x3
	.value	0x40f
	.long	0x3bb
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
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"subblocks"
	.byte	0x3
	.value	0x412
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"supercontext"
	.byte	0x3
	.value	0x413
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x414
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"fragment_origin"
	.byte	0x3
	.value	0x415
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"fragment_chain"
	.byte	0x3
	.value	0x416
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x23
	.long	0x45e0
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x3
	.value	0x570
	.uleb128 0x9
	.string	"address"
	.byte	0x3
	.value	0x571
	.long	0x2e2
	.uleb128 0x9
	.string	"pointer"
	.byte	0x3
	.value	0x572
	.long	0x4eb
	.uleb128 0x9
	.string	"die"
	.byte	0x3
	.value	0x573
	.long	0x45ed
	.byte	0x0
	.uleb128 0x1e
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x45e0
	.uleb128 0xc
	.long	0x493e
	.string	"tree_type"
	.byte	0x74
	.byte	0x3
	.value	0x551
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x552
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"values"
	.byte	0x3
	.value	0x553
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x554
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x555
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x20
	.long	.LASF23
	.byte	0x3
	.value	0x556
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x557
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"precision"
	.byte	0x3
	.value	0x559
	.long	0x3bb
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"mode"
	.byte	0x3
	.value	0x55a
	.long	0x846
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"string_flag"
	.byte	0x3
	.value	0x55c
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"no_force_blk_flag"
	.byte	0x3
	.value	0x55d
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"needs_constructing_flag"
	.byte	0x3
	.value	0x55e
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"transparent_union_flag"
	.byte	0x3
	.value	0x55f
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"packed_flag"
	.byte	0x3
	.value	0x560
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"restrict_flag"
	.byte	0x3
	.value	0x561
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF24
	.byte	0x3
	.value	0x562
	.long	0x3bb
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF9
	.byte	0x3
	.value	0x564
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF10
	.byte	0x3
	.value	0x565
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x3
	.value	0x566
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF12
	.byte	0x3
	.value	0x567
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF13
	.byte	0x3
	.value	0x568
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF14
	.byte	0x3
	.value	0x569
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF15
	.byte	0x3
	.value	0x56a
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF25
	.byte	0x3
	.value	0x56b
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x3
	.value	0x56d
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"pointer_to"
	.byte	0x3
	.value	0x56e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"reference_to"
	.byte	0x3
	.value	0x56f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"symtab"
	.byte	0x3
	.value	0x574
	.long	0x4599
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x20
	.long	.LASF26
	.byte	0x3
	.value	0x576
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"minval"
	.byte	0x3
	.value	0x577
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"maxval"
	.byte	0x3
	.value	0x578
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"next_variant"
	.byte	0x3
	.value	0x579
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"main_variant"
	.byte	0x3
	.value	0x57a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"binfo"
	.byte	0x3
	.value	0x57b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x57c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"alias_set"
	.byte	0x3
	.value	0x57d
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x20
	.long	.LASF27
	.byte	0x3
	.value	0x57f
	.long	0x494a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"ty_idx"
	.byte	0x3
	.value	0x581
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"field_ids_used"
	.byte	0x3
	.value	0x582
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"dst_id"
	.byte	0x3
	.value	0x583
	.long	0x20f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"extra_methods"
	.byte	0x3
	.value	0x58a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_type"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x493e
	.uleb128 0xc
	.long	0x4993
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x3
	.value	0x817
	.uleb128 0x22
	.long	.LASF5
	.byte	0x3
	.value	0x818
	.long	0x3bb
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x21
	.string	"off_align"
	.byte	0x3
	.value	0x819
	.long	0x3bb
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x23
	.long	0x49c8
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x3
	.value	0x80e
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x811
	.long	0x2193
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x814
	.long	0x482
	.uleb128 0x9
	.string	"a"
	.byte	0x3
	.value	0x81a
	.long	0x4950
	.byte	0x0
	.uleb128 0x23
	.long	0x4a07
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x3
	.value	0x837
	.uleb128 0x9
	.string	"f"
	.byte	0x3
	.value	0x838
	.long	0x53bf
	.uleb128 0x9
	.string	"r"
	.byte	0x3
	.value	0x839
	.long	0x9a
	.uleb128 0x9
	.string	"t"
	.byte	0x3
	.value	0x83a
	.long	0x1e3
	.uleb128 0x9
	.string	"i"
	.byte	0x3
	.value	0x83b
	.long	0x2e2
	.byte	0x0
	.uleb128 0x24
	.long	0x53bf
	.string	"function"
	.value	0x134
	.byte	0x4
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x7095
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x70a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x70af
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x70b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x70cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF26
	.byte	0xc
	.byte	0xbe
	.long	0x2cf
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
	.long	0x53bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF28
	.byte	0xc
	.byte	0xce
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x2e2
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
	.long	0x3d9
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
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x70e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x2e2
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
	.long	0x482
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
	.long	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x1779
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x70fa
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x6d9e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0xc
	.value	0x16d
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x2e2
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
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x7113
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x712d
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
	.uleb128 0x21
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x21
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.long	.LASF29
	.byte	0xc
	.value	0x1fa
	.long	0x701f
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x2e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4a07
	.uleb128 0x25
	.long	0x53fd
	.byte	0x4
	.byte	0x3
	.value	0x84e
	.uleb128 0x9
	.string	"st"
	.byte	0x3
	.value	0x84f
	.long	0x42b5
	.uleb128 0x9
	.string	"label_idx"
	.byte	0x3
	.value	0x850
	.long	0x20e4
	.uleb128 0x9
	.string	"field_id"
	.byte	0x3
	.value	0x851
	.long	0x3bb
	.byte	0x0
	.uleb128 0xc
	.long	0x5b46
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x3
	.value	0x7c5
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x7c6
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"locus"
	.byte	0x3
	.value	0x7c7
	.long	0x17b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"uid"
	.byte	0x3
	.value	0x7c8
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"size"
	.byte	0x3
	.value	0x7c9
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x21
	.string	"mode"
	.byte	0x3
	.value	0x7ca
	.long	0x846
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"external_flag"
	.byte	0x3
	.value	0x7cc
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"nonlocal_flag"
	.byte	0x3
	.value	0x7cd
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"regdecl_flag"
	.byte	0x3
	.value	0x7ce
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"inline_flag"
	.byte	0x3
	.value	0x7cf
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"bit_field_flag"
	.byte	0x3
	.value	0x7d0
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"virtual_flag"
	.byte	0x3
	.value	0x7d1
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"ignored_flag"
	.byte	0x3
	.value	0x7d2
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x22
	.long	.LASF20
	.byte	0x3
	.value	0x7d3
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"sbuf_flag"
	.byte	0x3
	.value	0x7d7
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"sdram_flag"
	.byte	0x3
	.value	0x7d8
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"v1buf_flag"
	.byte	0x3
	.value	0x7d9
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"v2buf_flag"
	.byte	0x3
	.value	0x7da
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"v4buf_flag"
	.byte	0x3
	.value	0x7db
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"in_system_header_flag"
	.byte	0x3
	.value	0x7df
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"common_flag"
	.byte	0x3
	.value	0x7e0
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"defer_output"
	.byte	0x3
	.value	0x7e1
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"transparent_union"
	.byte	0x3
	.value	0x7e2
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"static_ctor_flag"
	.byte	0x3
	.value	0x7e3
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"static_dtor_flag"
	.byte	0x3
	.value	0x7e4
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"artificial_flag"
	.byte	0x3
	.value	0x7e5
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"weak_flag"
	.byte	0x3
	.value	0x7e6
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"non_addr_const_p"
	.byte	0x3
	.value	0x7e8
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"no_instrument_function_entry_exit"
	.byte	0x3
	.value	0x7e9
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"comdat_flag"
	.byte	0x3
	.value	0x7ea
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x21
	.string	"malloc_flag"
	.byte	0x3
	.value	0x7eb
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"no_limit_stack"
	.byte	0x3
	.value	0x7ec
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF8
	.byte	0x3
	.value	0x7ed
	.long	0x2143
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"pure_flag"
	.byte	0x3
	.value	0x7ee
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF24
	.byte	0x3
	.value	0x7f0
	.long	0x3bb
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"non_addressable"
	.byte	0x3
	.value	0x7f1
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF25
	.byte	0x3
	.value	0x7f2
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"uninlinable"
	.byte	0x3
	.value	0x7f3
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"thread_local_flag"
	.byte	0x3
	.value	0x7f4
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"inlined_function_flag"
	.byte	0x3
	.value	0x7f5
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"threadprivate_flag"
	.byte	0x3
	.value	0x7f7
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF9
	.byte	0x3
	.value	0x7fa
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF10
	.byte	0x3
	.value	0x7fb
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF11
	.byte	0x3
	.value	0x7fc
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF12
	.byte	0x3
	.value	0x7fd
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF13
	.byte	0x3
	.value	0x7fe
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF14
	.byte	0x3
	.value	0x7ff
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF15
	.byte	0x3
	.value	0x800
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x22
	.long	.LASF16
	.byte	0x3
	.value	0x801
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"syscall_linkage_flag"
	.byte	0x3
	.value	0x804
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"widen_retval_flag"
	.byte	0x3
	.value	0x805
	.long	0x3bb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x21
	.string	"emitted_by_gxx"
	.byte	0x3
	.value	0x808
	.long	0x3bb
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
	.long	0x4993
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x20
	.long	.LASF22
	.byte	0x3
	.value	0x81d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x20
	.long	.LASF26
	.byte	0x3
	.value	0x81e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"context"
	.byte	0x3
	.value	0x81f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"arguments"
	.byte	0x3
	.value	0x820
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"result"
	.byte	0x3
	.value	0x821
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"initial"
	.byte	0x3
	.value	0x822
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"initial_2"
	.byte	0x3
	.value	0x824
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"alias_target"
	.byte	0x3
	.value	0x825
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"thunk_delta"
	.byte	0x3
	.value	0x829
	.long	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x20
	.long	.LASF21
	.byte	0x3
	.value	0x82b
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"assembler_name"
	.byte	0x3
	.value	0x82c
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"section_name"
	.byte	0x3
	.value	0x82d
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x20
	.long	.LASF23
	.byte	0x3
	.value	0x82e
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"rtl"
	.byte	0x3
	.value	0x82f
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"live_range_rtl"
	.byte	0x3
	.value	0x830
	.long	0x9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"u2"
	.byte	0x3
	.value	0x83c
	.long	0x49c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"saved_tree"
	.byte	0x3
	.value	0x83f
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"inlined_fns"
	.byte	0x3
	.value	0x843
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"vindex"
	.byte	0x3
	.value	0x845
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xd
	.string	"pointer_alias_set"
	.byte	0x3
	.value	0x846
	.long	0x482
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x20
	.long	.LASF27
	.byte	0x3
	.value	0x848
	.long	0x5b52
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x21
	.string	"symtab_idx"
	.byte	0x3
	.value	0x84b
	.long	0x3bb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x21
	.string	"label_defined"
	.byte	0x3
	.value	0x84c
	.long	0x3bb
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
	.long	0x53c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"decl_dst_id"
	.byte	0x3
	.value	0x858
	.long	0x20f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"sl_model_name"
	.byte	0x3
	.value	0x85c
	.long	0x1e3
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0x1e
	.string	"lang_decl"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b46
	.uleb128 0x17
	.long	0x5dd6
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0xe
	.byte	0x1d
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
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x18
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x18
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x18
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x18
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x18
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x18
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x18
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x18
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x18
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x18
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x18
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x18
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x18
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0xc
	.long	0x5e25
	.string	"tree_omp"
	.byte	0x18
	.byte	0x3
	.value	0x864
	.uleb128 0x20
	.long	.LASF0
	.byte	0x3
	.value	0x865
	.long	0x3e3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"choice"
	.byte	0x3
	.value	0x866
	.long	0x5b58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"omp_clause_list"
	.byte	0x3
	.value	0x867
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xc
	.long	0x5ee0
	.string	"attribute_spec"
	.byte	0x14
	.byte	0x3
	.value	0xa1d
	.uleb128 0x20
	.long	.LASF26
	.byte	0x3
	.value	0xa20
	.long	0x5ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"min_length"
	.byte	0x3
	.value	0xa22
	.long	0x82c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max_length"
	.byte	0x3
	.value	0xa25
	.long	0x82c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"decl_required"
	.byte	0x3
	.value	0xa2d
	.long	0x5ee5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"type_required"
	.byte	0x3
	.value	0xa30
	.long	0x5ee5
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xd
	.string	"function_type_required"
	.byte	0x3
	.value	0xa35
	.long	0x5ee5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.string	"handler"
	.byte	0x3
	.value	0xa44
	.long	0x5f23
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x2cf
	.uleb128 0xa
	.long	0x5eea
	.uleb128 0xb
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x26
	.long	0x5f17
	.byte	0x1
	.long	0x1e3
	.uleb128 0x27
	.long	0x5f17
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x2e2
	.uleb128 0x27
	.long	0x5f1d
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x4
	.long	0x5eea
	.uleb128 0xa
	.long	0x5f28
	.uleb128 0x3
	.byte	0x4
	.long	0x5ef3
	.uleb128 0x4
	.long	0x5f64
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
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x60ff
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
	.long	0x61fb
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x16
	.byte	0x55
	.uleb128 0x1d
	.string	"c"
	.byte	0x16
	.byte	0x56
	.long	0x7e6
	.uleb128 0x1d
	.string	"uc"
	.byte	0x16
	.byte	0x58
	.long	0x61fb
	.uleb128 0x1d
	.string	"s"
	.byte	0x16
	.byte	0x5a
	.long	0x620b
	.uleb128 0x1d
	.string	"us"
	.byte	0x16
	.byte	0x5c
	.long	0x621b
	.uleb128 0x1d
	.string	"i"
	.byte	0x16
	.byte	0x5e
	.long	0x622b
	.uleb128 0x1d
	.string	"u"
	.byte	0x16
	.byte	0x60
	.long	0x623b
	.uleb128 0x1d
	.string	"l"
	.byte	0x16
	.byte	0x62
	.long	0x624b
	.uleb128 0x1d
	.string	"ul"
	.byte	0x16
	.byte	0x64
	.long	0x625b
	.uleb128 0x1d
	.string	"hint"
	.byte	0x16
	.byte	0x66
	.long	0x626b
	.uleb128 0x1d
	.string	"uhint"
	.byte	0x16
	.byte	0x68
	.long	0x627b
	.uleb128 0x1d
	.string	"generic"
	.byte	0x16
	.byte	0x6a
	.long	0x628b
	.uleb128 0x1d
	.string	"cptr"
	.byte	0x16
	.byte	0x6c
	.long	0x629b
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x16
	.byte	0x6e
	.long	0x62ab
	.uleb128 0x1d
	.string	"rtvec"
	.byte	0x16
	.byte	0x70
	.long	0x62bb
	.uleb128 0x1d
	.string	"tree"
	.byte	0x16
	.byte	0x72
	.long	0x62cb
	.uleb128 0x1d
	.string	"bitmap"
	.byte	0x16
	.byte	0x74
	.long	0x62db
	.uleb128 0x1d
	.string	"reg"
	.byte	0x16
	.byte	0x76
	.long	0x62eb
	.uleb128 0x1d
	.string	"const_equiv"
	.byte	0x16
	.byte	0x78
	.long	0x63e7
	.uleb128 0x1d
	.string	"bb"
	.byte	0x16
	.byte	0x7a
	.long	0x63f7
	.uleb128 0x1d
	.string	"te"
	.byte	0x16
	.byte	0x7c
	.long	0x6407
	.byte	0x0
	.uleb128 0xf
	.long	0x620b
	.long	0x42a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x621b
	.long	0x475
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x622b
	.long	0x43b
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x623b
	.long	0x2e2
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x624b
	.long	0x3bb
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x625b
	.long	0x4cc
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x626b
	.long	0x451
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x627b
	.long	0x482
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x628b
	.long	0x493
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x629b
	.long	0x4e9
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62ab
	.long	0x4eb
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62bb
	.long	0xa5
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62cb
	.long	0x1a8
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62db
	.long	0x1ef
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62eb
	.long	0x15b3
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x62fb
	.long	0x63e1
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x63e1
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x16
	.byte	0x76
	.uleb128 0x6
	.string	"first_uid"
	.byte	0x15
	.byte	0x31
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last_uid"
	.byte	0x15
	.byte	0x32
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"last_note_uid"
	.byte	0x15
	.byte	0x33
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"sets"
	.byte	0x15
	.byte	0x36
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"refs"
	.byte	0x15
	.byte	0x39
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"freq"
	.byte	0x15
	.byte	0x3a
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"deaths"
	.byte	0x15
	.byte	0x3b
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"live_length"
	.byte	0x15
	.byte	0x3c
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"calls_crossed"
	.byte	0x15
	.byte	0x3d
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF30
	.byte	0x15
	.byte	0x3e
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"changes_mode"
	.byte	0x15
	.byte	0x3f
	.long	0x2da
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x62fb
	.uleb128 0xf
	.long	0x63f7
	.long	0x5f2e
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6407
	.long	0x173e
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x6417
	.long	0x6422
	.uleb128 0x10
	.long	0x3d2
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6417
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x16
	.byte	0x7e
	.long	0x60ff
	.uleb128 0x4
	.long	0x64af
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x16
	.byte	0x81
	.uleb128 0x6
	.string	"num_elements"
	.byte	0x16
	.byte	0x82
	.long	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elements_used"
	.byte	0x16
	.byte	0x83
	.long	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"type"
	.byte	0x16
	.byte	0x85
	.long	0x5f64
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x16
	.byte	0x86
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"data"
	.byte	0x16
	.byte	0x87
	.long	0x6428
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x16
	.byte	0x8a
	.long	0x64c2
	.uleb128 0x3
	.byte	0x4
	.long	0x643b
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x6
	.byte	0x1d
	.long	0x451
	.uleb128 0x4
	.long	0x6532
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x6
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x6
	.byte	0x35
	.long	0x6532
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x6
	.byte	0x36
	.long	0x6532
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x6
	.byte	0x37
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x6
	.byte	0x38
	.long	0x6538
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x64db
	.uleb128 0xf
	.long	0x6548
	.long	0x64c8
	.uleb128 0x10
	.long	0x3d2
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x6
	.byte	0x39
	.long	0x64db
	.uleb128 0x3
	.byte	0x4
	.long	0x6548
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x6
	.byte	0x43
	.long	0x15b3
	.uleb128 0x4
	.long	0x65cc
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x8
	.byte	0x21
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x8
	.byte	0x22
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x8
	.byte	0x23
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x8
	.byte	0x24
	.long	0x627b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x8
	.byte	0x25
	.long	0x65db
	.uleb128 0x3
	.byte	0x4
	.long	0x6572
	.uleb128 0x2
	.string	"regset"
	.byte	0x7
	.byte	0x22
	.long	0x6564
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x7
	.byte	0x75
	.long	0x482
	.uleb128 0x4
	.long	0x66ab
	.string	"edge_def"
	.byte	0x28
	.byte	0x7
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x7
	.byte	0x7a
	.long	0x66ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x7
	.byte	0x7a
	.long	0x66ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x7
	.byte	0x7d
	.long	0x173e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x7
	.byte	0x7d
	.long	0x173e
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
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"flags"
	.byte	0x7
	.byte	0x85
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x7
	.byte	0x86
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x7
	.byte	0x87
	.long	0x65ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6600
	.uleb128 0x2
	.string	"edge"
	.byte	0x7
	.byte	0x89
	.long	0x66ab
	.uleb128 0x4
	.long	0x6924
	.string	"loop"
	.byte	0x80
	.byte	0x7
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x7
	.value	0x176
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x7
	.value	0x179
	.long	0x692a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x7
	.value	0x17c
	.long	0x692a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x7
	.value	0x17f
	.long	0x692a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x7
	.value	0x184
	.long	0x6935
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x7
	.value	0x187
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x20
	.long	.LASF6
	.byte	0x7
	.value	0x18b
	.long	0x692a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x7
	.value	0x18f
	.long	0x692a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x7
	.value	0x192
	.long	0x65cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF32
	.byte	0x7
	.value	0x195
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x7
	.value	0x198
	.long	0x6935
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x7
	.value	0x19b
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x7
	.value	0x19e
	.long	0x6935
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x7
	.value	0x1a1
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x7
	.value	0x1a4
	.long	0x65cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x7
	.value	0x1a7
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x7
	.value	0x1aa
	.long	0x693b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x7
	.value	0x1ae
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x7
	.value	0x1b1
	.long	0x6924
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x7
	.value	0x1b4
	.long	0x6924
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x20
	.long	.LASF31
	.byte	0x7
	.value	0x1b7
	.long	0x6924
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x7
	.value	0x1ba
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x7
	.value	0x1bd
	.long	0x4e9
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
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x66bd
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x7
	.byte	0xe6
	.long	0x173e
	.uleb128 0x3
	.byte	0x4
	.long	0x66b1
	.uleb128 0x3
	.byte	0x4
	.long	0x6924
	.uleb128 0x17
	.long	0x696e
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
	.long	0x6a50
	.long	.LASF33
	.value	0x26c
	.byte	0x17
	.byte	0x9b
	.uleb128 0x6
	.string	"operand"
	.byte	0x17
	.byte	0xa3
	.long	0x6a50
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"operand_loc"
	.byte	0x17
	.byte	0xa6
	.long	0x6a60
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"constraints"
	.byte	0x17
	.byte	0xa9
	.long	0x6a70
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x6
	.string	"operand_mode"
	.byte	0x17
	.byte	0xac
	.long	0x6a80
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x6
	.string	"operand_type"
	.byte	0x17
	.byte	0xaf
	.long	0x6a90
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x6
	.string	"dup_loc"
	.byte	0x17
	.byte	0xb3
	.long	0x6aa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x258
	.uleb128 0x6
	.string	"dup_num"
	.byte	0x17
	.byte	0xb7
	.long	0x6ab0
	.byte	0x3
	.byte	0x23
	.uleb128 0x260
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x17
	.byte	0xc4
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x262
	.uleb128 0x6
	.string	"n_dups"
	.byte	0x17
	.byte	0xc7
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x263
	.uleb128 0x1b
	.long	.LASF35
	.byte	0x17
	.byte	0xca
	.long	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x264
	.uleb128 0x1b
	.long	.LASF36
	.byte	0x17
	.byte	0xcd
	.long	0x9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x268
	.byte	0x0
	.uleb128 0xf
	.long	0x6a60
	.long	0x9a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x6a70
	.long	0x1779
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x6a80
	.long	0x2cf
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x6a90
	.long	0x846
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x6aa0
	.long	0x6941
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x6ab0
	.long	0x1779
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1
	.byte	0x0
	.uleb128 0xf
	.long	0x6ac0
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1
	.byte	0x0
	.uleb128 0x2
	.string	"insn_operand_predicate_fn"
	.byte	0x17
	.byte	0xd9
	.long	0x6ae1
	.uleb128 0x3
	.byte	0x4
	.long	0x6ae7
	.uleb128 0x26
	.long	0x6afc
	.byte	0x1
	.long	0x2e2
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x846
	.byte	0x0
	.uleb128 0x2
	.string	"insn_gen_fn"
	.byte	0x17
	.byte	0xdb
	.long	0x6b0f
	.uleb128 0x3
	.byte	0x4
	.long	0x6b15
	.uleb128 0x26
	.long	0x6b26
	.byte	0x1
	.long	0x9a
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x29
	.byte	0x0
	.uleb128 0x4
	.long	0x6ba6
	.string	"insn_operand_data"
	.byte	0xc
	.byte	0x17
	.byte	0xde
	.uleb128 0x6
	.string	"predicate"
	.byte	0x17
	.byte	0xdf
	.long	0x6ba6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"constraint"
	.byte	0x17
	.byte	0xe1
	.long	0x5ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"mode"
	.byte	0x17
	.byte	0xe3
	.long	0x6bab
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
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.string	"eliminable"
	.byte	0x17
	.byte	0xe7
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x6ac0
	.uleb128 0xa
	.long	0x846
	.uleb128 0x13
	.long	0x6c44
	.long	.LASF37
	.byte	0x14
	.byte	0x17
	.byte	0xf2
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x17
	.byte	0xf3
	.long	0x5ee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"output"
	.byte	0x17
	.byte	0xf4
	.long	0x837
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"genfun"
	.byte	0x17
	.byte	0xf5
	.long	0x6c44
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"operand"
	.byte	0x17
	.byte	0xf6
	.long	0x6c49
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x17
	.byte	0xf8
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"n_dups"
	.byte	0x17
	.byte	0xf9
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x1b
	.long	.LASF35
	.byte	0x17
	.byte	0xfa
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x6
	.string	"output_format"
	.byte	0x17
	.byte	0xfb
	.long	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0xa
	.long	0x6afc
	.uleb128 0xa
	.long	0x6c4e
	.uleb128 0x3
	.byte	0x4
	.long	0x6c54
	.uleb128 0xa
	.long	0x6b26
	.uleb128 0x17
	.long	0x6ce3
	.string	"debug_info_type"
	.byte	0x4
	.byte	0x18
	.byte	0x21
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
	.uleb128 0x17
	.long	0x6d29
	.string	"real_value_class"
	.byte	0x4
	.byte	0x9
	.byte	0x22
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
	.long	0x6d39
	.long	0x451
	.uleb128 0x10
	.long	0x3d2
	.byte	0x4
	.byte	0x0
	.uleb128 0x4
	.long	0x6d9e
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
	.long	0x846
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF31
	.byte	0xc
	.byte	0x1b
	.long	0x6d9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6d39
	.uleb128 0x13
	.long	0x6dea
	.long	.LASF38
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x1b
	.long	.LASF6
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
	.uleb128 0x1b
	.long	.LASF39
	.byte	0xc
	.byte	0x28
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF31
	.byte	0xc
	.byte	0x29
	.long	0x6dea
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6da4
	.uleb128 0x4
	.long	0x6f3f
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x2e2
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
	.uleb128 0x1b
	.long	.LASF39
	.byte	0xc
	.byte	0x4a
	.long	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1b
	.long	.LASF38
	.byte	0xc
	.byte	0x50
	.long	0x6dea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x783
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x5f17
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x1779
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x4
	.long	0x701f
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x2e2
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
	.long	0x7089
	.long	.LASF29
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
	.uleb128 0x1e
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7089
	.uleb128 0x1e
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x709b
	.uleb128 0x3
	.byte	0x4
	.long	0x6f3f
	.uleb128 0x3
	.byte	0x4
	.long	0x6df0
	.uleb128 0x1e
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x70bb
	.uleb128 0x1e
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x70d1
	.uleb128 0x1e
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x70ee
	.uleb128 0x1e
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7100
	.uleb128 0x1e
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x7119
	.uleb128 0x4
	.long	0x717b
	.string	"asm_int_op"
	.byte	0x10
	.byte	0x1a
	.byte	0x3a
	.uleb128 0x6
	.string	"hi"
	.byte	0x1a
	.byte	0x3b
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"si"
	.byte	0x1a
	.byte	0x3c
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"di"
	.byte	0x1a
	.byte	0x3d
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"ti"
	.byte	0x1a
	.byte	0x3e
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x73b1
	.string	"asm_out"
	.byte	0x70
	.byte	0x1a
	.byte	0x33
	.uleb128 0x6
	.string	"open_paren"
	.byte	0x1a
	.byte	0x35
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"close_paren"
	.byte	0x1a
	.byte	0x35
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"byte_op"
	.byte	0x1a
	.byte	0x38
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"aligned_op"
	.byte	0x1a
	.byte	0x3f
	.long	0x7133
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"unaligned_op"
	.byte	0x1a
	.byte	0x3f
	.long	0x7133
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"integer"
	.byte	0x1a
	.byte	0x46
	.long	0x73cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"globalize_label"
	.byte	0x1a
	.byte	0x49
	.long	0x73e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"visibility"
	.byte	0x1a
	.byte	0x4d
	.long	0x73ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"function_prologue"
	.byte	0x1a
	.byte	0x50
	.long	0x7416
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_end_prologue"
	.byte	0x1a
	.byte	0x53
	.long	0x7428
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"function_begin_epilogue"
	.byte	0x1a
	.byte	0x56
	.long	0x7428
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"function_epilogue"
	.byte	0x1a
	.byte	0x59
	.long	0x7416
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"named_section"
	.byte	0x1a
	.byte	0x5d
	.long	0x743f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"exception_section"
	.byte	0x1a
	.byte	0x60
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"eh_frame_section"
	.byte	0x1a
	.byte	0x63
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"select_section"
	.byte	0x1a
	.byte	0x6a
	.long	0x745b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"select_rtx_section"
	.byte	0x1a
	.byte	0x6e
	.long	0x7477
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"unique_section"
	.byte	0x1a
	.byte	0x73
	.long	0x73ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"constructor"
	.byte	0x1a
	.byte	0x76
	.long	0x748e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"destructor"
	.byte	0x1a
	.byte	0x79
	.long	0x748e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"output_mi_thunk"
	.byte	0x1a
	.byte	0x80
	.long	0x74b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"can_output_mi_thunk"
	.byte	0x1a
	.byte	0x8b
	.long	0x74d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x26
	.long	0x73cb
	.byte	0x1
	.long	0x5eea
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x3bb
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x73b1
	.uleb128 0x2b
	.long	0x73e2
	.byte	0x1
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x2cf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4f1
	.uleb128 0x3
	.byte	0x4
	.long	0x73d1
	.uleb128 0x2b
	.long	0x73ff
	.byte	0x1
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x73ee
	.uleb128 0x2b
	.long	0x7416
	.byte	0x1
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x482
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7405
	.uleb128 0x2b
	.long	0x7428
	.byte	0x1
	.uleb128 0x27
	.long	0x73e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x741c
	.uleb128 0x2b
	.long	0x743f
	.byte	0x1
	.uleb128 0x27
	.long	0x2cf
	.uleb128 0x27
	.long	0x3bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x742e
	.uleb128 0x2b
	.long	0x745b
	.byte	0x1
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x2e2
	.uleb128 0x27
	.long	0x493
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7445
	.uleb128 0x2b
	.long	0x7477
	.byte	0x1
	.uleb128 0x27
	.long	0x846
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x493
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7461
	.uleb128 0x2b
	.long	0x748e
	.byte	0x1
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x747d
	.uleb128 0x2b
	.long	0x74b4
	.byte	0x1
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x482
	.uleb128 0x27
	.long	0x482
	.uleb128 0x27
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7494
	.uleb128 0x26
	.long	0x74d9
	.byte	0x1
	.long	0x5eea
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x482
	.uleb128 0x27
	.long	0x482
	.uleb128 0x27
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x74ba
	.uleb128 0x4
	.long	0x769a
	.string	"sched"
	.byte	0x40
	.byte	0x1a
	.byte	0x93
	.uleb128 0x6
	.string	"adjust_cost"
	.byte	0x1a
	.byte	0x97
	.long	0x76b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"adjust_priority"
	.byte	0x1a
	.byte	0x9b
	.long	0x76d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"issue_rate"
	.byte	0x1a
	.byte	0xa0
	.long	0x76e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"variable_issue"
	.byte	0x1a
	.byte	0xa4
	.long	0x7705
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"md_init"
	.byte	0x1a
	.byte	0xa7
	.long	0x7721
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"md_finish"
	.byte	0x1a
	.byte	0xaa
	.long	0x7738
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reorder"
	.byte	0x1a
	.byte	0xae
	.long	0x7762
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"reorder2"
	.byte	0x1a
	.byte	0xaf
	.long	0x7762
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"use_dfa_pipeline_interface"
	.byte	0x1a
	.byte	0xb4
	.long	0x76e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"init_dfa_pre_cycle_insn"
	.byte	0x1a
	.byte	0xc2
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"dfa_pre_cycle_insn"
	.byte	0x1a
	.byte	0xc3
	.long	0x776e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"init_dfa_post_cycle_insn"
	.byte	0x1a
	.byte	0xc4
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"dfa_post_cycle_insn"
	.byte	0x1a
	.byte	0xc5
	.long	0x776e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"first_cycle_multipass_dfa_lookahead"
	.byte	0x1a
	.byte	0xcd
	.long	0x76e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"init_dfa_bubbles"
	.byte	0x1a
	.byte	0xd8
	.long	0x840
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"dfa_bubble"
	.byte	0x1a
	.byte	0xd9
	.long	0x7784
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x26
	.long	0x76b9
	.byte	0x1
	.long	0x2e2
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x769a
	.uleb128 0x26
	.long	0x76d4
	.byte	0x1
	.long	0x2e2
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76bf
	.uleb128 0x2c
	.byte	0x1
	.long	0x2e2
	.uleb128 0x3
	.byte	0x4
	.long	0x76da
	.uleb128 0x26
	.long	0x7705
	.byte	0x1
	.long	0x2e2
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x2e2
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x76e6
	.uleb128 0x2b
	.long	0x7721
	.byte	0x1
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x2e2
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x770b
	.uleb128 0x2b
	.long	0x7738
	.byte	0x1
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7727
	.uleb128 0x26
	.long	0x7762
	.byte	0x1
	.long	0x2e2
	.uleb128 0x27
	.long	0x73e2
	.uleb128 0x27
	.long	0x2e2
	.uleb128 0x27
	.long	0x1779
	.uleb128 0x27
	.long	0x831
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x773e
	.uleb128 0x2c
	.byte	0x1
	.long	0x9a
	.uleb128 0x3
	.byte	0x4
	.long	0x7768
	.uleb128 0x26
	.long	0x7784
	.byte	0x1
	.long	0x9a
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7774
	.uleb128 0x4
	.long	0x7a73
	.string	"gcc_target"
	.byte	0xfc
	.byte	0x1a
	.byte	0x30
	.uleb128 0x6
	.string	"asm_out"
	.byte	0x1a
	.byte	0x8f
	.long	0x717b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"sched"
	.byte	0x1a
	.byte	0xda
	.long	0x74df
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x6
	.string	"merge_decl_attributes"
	.byte	0x1a
	.byte	0xdd
	.long	0x7a88
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x6
	.string	"merge_type_attributes"
	.byte	0x1a
	.byte	0xe0
	.long	0x7a88
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x6
	.string	"attribute_table"
	.byte	0x1a
	.byte	0xe4
	.long	0x7a8e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x6
	.string	"comp_type_attributes"
	.byte	0x1a
	.byte	0xe9
	.long	0x7aae
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x6
	.string	"set_default_type_attributes"
	.byte	0x1a
	.byte	0xec
	.long	0x7ac0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x6
	.string	"insert_attributes"
	.byte	0x1a
	.byte	0xef
	.long	0x7ad7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x6
	.string	"function_attribute_inlinable_p"
	.byte	0x1a
	.byte	0xf3
	.long	0x7aed
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x6
	.string	"ms_bitfield_layout_p"
	.byte	0x1a
	.byte	0xf7
	.long	0x7aed
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x6
	.string	"init_builtins"
	.byte	0x1a
	.byte	0xfa
	.long	0x840
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x6
	.string	"expand_builtin"
	.byte	0x1a
	.byte	0xfd
	.long	0x7b17
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"section_type_flags"
	.byte	0x1a
	.value	0x103
	.long	0x7b37
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"cannot_modify_jumps_p"
	.byte	0x1a
	.value	0x107
	.long	0x7b43
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"cannot_force_const_mem"
	.byte	0x1a
	.value	0x10a
	.long	0x7b59
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"in_small_data_p"
	.byte	0x1a
	.value	0x10d
	.long	0x7aed
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"binds_local_p"
	.byte	0x1a
	.value	0x111
	.long	0x7aed
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"encode_section_info"
	.byte	0x1a
	.value	0x115
	.long	0x73ff
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"strip_name_encoding"
	.byte	0x1a
	.value	0x118
	.long	0x7b6f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"have_named_sections"
	.byte	0x1a
	.value	0x11d
	.long	0x5eea
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"have_ctors_dtors"
	.byte	0x1a
	.value	0x121
	.long	0x5eea
	.byte	0x3
	.byte	0x23
	.uleb128 0xf5
	.uleb128 0xd
	.string	"have_tls"
	.byte	0x1a
	.value	0x124
	.long	0x5eea
	.byte	0x3
	.byte	0x23
	.uleb128 0xf6
	.uleb128 0xd
	.string	"have_srodata_section"
	.byte	0x1a
	.value	0x127
	.long	0x5eea
	.byte	0x3
	.byte	0x23
	.uleb128 0xf7
	.uleb128 0xd
	.string	"terminate_dw2_eh_frame_info"
	.byte	0x1a
	.value	0x12a
	.long	0x5eea
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.byte	0x0
	.uleb128 0x26
	.long	0x7a88
	.byte	0x1
	.long	0x1e3
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a73
	.uleb128 0x3
	.byte	0x4
	.long	0x7a94
	.uleb128 0xa
	.long	0x5e25
	.uleb128 0x26
	.long	0x7aae
	.byte	0x1
	.long	0x2e2
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7a99
	.uleb128 0x2b
	.long	0x7ac0
	.byte	0x1
	.uleb128 0x27
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ab4
	.uleb128 0x2b
	.long	0x7ad7
	.byte	0x1
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x5f17
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7ac6
	.uleb128 0x26
	.long	0x7aed
	.byte	0x1
	.long	0x5eea
	.uleb128 0x27
	.long	0x1e3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7add
	.uleb128 0x26
	.long	0x7b17
	.byte	0x1
	.long	0x9a
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x9a
	.uleb128 0x27
	.long	0x846
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7af3
	.uleb128 0x26
	.long	0x7b37
	.byte	0x1
	.long	0x3bb
	.uleb128 0x27
	.long	0x1e3
	.uleb128 0x27
	.long	0x2cf
	.uleb128 0x27
	.long	0x2e2
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b1d
	.uleb128 0x2c
	.byte	0x1
	.long	0x5eea
	.uleb128 0x3
	.byte	0x4
	.long	0x7b3d
	.uleb128 0x26
	.long	0x7b59
	.byte	0x1
	.long	0x5eea
	.uleb128 0x27
	.long	0x9a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b49
	.uleb128 0x26
	.long	0x7b6f
	.byte	0x1
	.long	0x2cf
	.uleb128 0x27
	.long	0x2cf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7b5f
	.uleb128 0x4
	.long	0x7d56
	.string	"gcc_debug_hooks"
	.byte	0x50
	.byte	0x1b
	.byte	0x19
	.uleb128 0x6
	.string	"init"
	.byte	0x1b
	.byte	0x1c
	.long	0x7d62
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"finish"
	.byte	0x1b
	.byte	0x1f
	.long	0x7d62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"define"
	.byte	0x1b
	.byte	0x22
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"undef"
	.byte	0x1b
	.byte	0x25
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"start_source_file"
	.byte	0x1b
	.byte	0x29
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"end_source_file"
	.byte	0x1b
	.byte	0x2d
	.long	0x7d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"begin_block"
	.byte	0x1b
	.byte	0x31
	.long	0x7da2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"end_block"
	.byte	0x1b
	.byte	0x34
	.long	0x7da2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"ignore_block"
	.byte	0x1b
	.byte	0x3b
	.long	0x7aed
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"source_line"
	.byte	0x1b
	.byte	0x3e
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"begin_prologue"
	.byte	0x1b
	.byte	0x43
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"end_prologue"
	.byte	0x1b
	.byte	0x47
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"end_epilogue"
	.byte	0x1b
	.byte	0x4a
	.long	0x7d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"begin_function"
	.byte	0x1b
	.byte	0x4d
	.long	0x7ac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"end_function"
	.byte	0x1b
	.byte	0x50
	.long	0x7d8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"function_decl"
	.byte	0x1b
	.byte	0x56
	.long	0x7ac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"global_decl"
	.byte	0x1b
	.byte	0x5a
	.long	0x7ac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"deferred_inline_function"
	.byte	0x1b
	.byte	0x5e
	.long	0x7ac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"outlining_inline_function"
	.byte	0x1b
	.byte	0x63
	.long	0x7ac0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x1b
	.byte	0x67
	.long	0x7db4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x2b
	.long	0x7d62
	.byte	0x1
	.uleb128 0x27
	.long	0x2cf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d56
	.uleb128 0x2b
	.long	0x7d79
	.byte	0x1
	.uleb128 0x27
	.long	0x3bb
	.uleb128 0x27
	.long	0x2cf
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d68
	.uleb128 0x2b
	.long	0x7d8b
	.byte	0x1
	.uleb128 0x27
	.long	0x3bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d7f
	.uleb128 0x2b
	.long	0x7da2
	.byte	0x1
	.uleb128 0x27
	.long	0x3bb
	.uleb128 0x27
	.long	0x3bb
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7d91
	.uleb128 0x2b
	.long	0x7db4
	.byte	0x1
	.uleb128 0x27
	.long	0x9a
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7da8
	.uleb128 0x13
	.long	0x7e7a
	.long	.LASF41
	.byte	0x18
	.byte	0x1c
	.byte	0x19
	.uleb128 0x6
	.string	"count_instrumented_edges"
	.byte	0x1c
	.byte	0x1d
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"count_edges_instrumented_now"
	.byte	0x1c
	.byte	0x22
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"current_function_cfg_checksum"
	.byte	0x1c
	.byte	0x27
	.long	0x4cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"max_counter_in_program"
	.byte	0x1c
	.byte	0x2c
	.long	0x65ef
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"count_profiles_merged"
	.byte	0x1c
	.byte	0x30
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.long	0x7eda
	.string	"function_list"
	.byte	0x10
	.byte	0x1
	.byte	0xdc
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x1
	.byte	0xdd
	.long	0x7eda
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x1
	.byte	0xde
	.long	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"cfg_checksum"
	.byte	0x1
	.byte	0xdf
	.long	0x4cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"count_edges"
	.byte	0x1
	.byte	0xe0
	.long	0x4cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7e7a
	.uleb128 0x2d
	.long	0x7f11
	.byte	0x1
	.string	"init_final"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2e
	.long	.LASF42
	.byte	0x1
	.value	0x107
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8308
	.byte	0x1
	.string	"end_final"
	.byte	0x1
	.value	0x117
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x2e
	.long	.LASF42
	.byte	0x1
	.value	0x116
	.long	0x2cf
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x11a
	.long	0x81c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"string_type"
	.byte	0x1
	.value	0x11b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.string	"string_cst"
	.byte	0x1
	.value	0x11b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x31
	.string	"structure_decl"
	.byte	0x1
	.value	0x11c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"structure_value"
	.byte	0x1
	.value	0x11c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.string	"structure_pointer_type"
	.byte	0x1
	.value	0x11c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.string	"field_decl"
	.byte	0x1
	.value	0x11d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x31
	.string	"decl_chain"
	.byte	0x1
	.value	0x11d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"value_chain"
	.byte	0x1
	.value	0x11d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x31
	.string	"sizeof_field_value"
	.byte	0x1
	.value	0x11e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"domain_type"
	.byte	0x1
	.value	0x11e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x32
	.long	0x80b1
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x31
	.string	"cwd"
	.byte	0x1
	.value	0x13d
	.long	0x4eb
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"da_filename"
	.byte	0x1
	.value	0x13d
	.long	0x4eb
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"da_filename_len"
	.byte	0x1
	.value	0x13e
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.byte	0x0
	.uleb128 0x32
	.long	0x8178
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x31
	.string	"gcov_type_type"
	.byte	0x1
	.value	0x158
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.string	"gcov_type_pointer_type"
	.byte	0x1
	.value	0x159
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"domain_tree"
	.byte	0x1
	.value	0x15a
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x31
	.string	"gcov_type_array_type"
	.byte	0x1
	.value	0x15d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"gcov_type_array_pointer_type"
	.byte	0x1
	.value	0x15f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.string	"counts_table"
	.byte	0x1
	.value	0x161
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
	.value	0x199
	.long	0x7eda
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LASF32
	.byte	0x1
	.value	0x19a
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"checksum_field"
	.byte	0x1
	.value	0x19b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"arc_count_field"
	.byte	0x1
	.value	0x19b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"name_field"
	.byte	0x1
	.value	0x19b
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.string	"domain"
	.byte	0x1
	.value	0x19c
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"array_value_chain"
	.byte	0x1
	.value	0x19d
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"bb_fn_struct_type"
	.byte	0x1
	.value	0x19e
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"bb_fn_struct_array_type"
	.byte	0x1
	.value	0x19f
	.long	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"bb_fn_struct_array_pointer_type"
	.byte	0x1
	.value	0x1a0
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"bb_fn_struct_pointer_type"
	.byte	0x1
	.value	0x1a1
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"field_value"
	.byte	0x1
	.value	0x1a2
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"field_value_chain"
	.byte	0x1
	.value	0x1a2
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
	.value	0x1c9
	.long	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x835c
	.byte	0x1
	.string	"default_function_pro_epilogue"
	.byte	0x1
	.value	0x223
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x221
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"size"
	.byte	0x1
	.value	0x222
	.long	0x482
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8393
	.byte	0x1
	.string	"no_asm_to_stream"
	.byte	0x1
	.value	0x22a
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x229
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"app_enable"
	.byte	0x1
	.value	0x232
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x34
	.byte	0x1
	.string	"app_disable"
	.byte	0x1
	.value	0x23f
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x35
	.byte	0x1
	.string	"dbr_sequence_length"
	.byte	0x1
	.value	0x24e
	.byte	0x1
	.long	0x2e2
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0xc
	.long	0x8436
	.string	"label_alignment"
	.byte	0x4
	.byte	0x1
	.value	0x276
	.uleb128 0xd
	.string	"alignment"
	.byte	0x1
	.value	0x277
	.long	0x475
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF43
	.byte	0x1
	.value	0x278
	.long	0x475
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"init_insn_lengths"
	.byte	0x1
	.value	0x283
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x36
	.long	0x84c0
	.byte	0x1
	.string	"get_attr_length"
	.byte	0x1
	.value	0x29f
	.byte	0x1
	.long	0x2e2
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x29e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"body"
	.byte	0x1
	.value	0x2a1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x2a2
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF17
	.byte	0x1
	.value	0x2a3
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x37
	.long	0x8512
	.string	"final_addr_vec_align"
	.byte	0x1
	.value	0x326
	.byte	0x1
	.long	0x2e2
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x33
	.string	"addr_vec"
	.byte	0x1
	.value	0x325
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x327
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x854f
	.byte	0x1
	.string	"label_to_alignment"
	.byte	0x1
	.value	0x345
	.byte	0x1
	.long	0x2e2
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x2e
	.long	.LASF40
	.byte	0x1
	.value	0x344
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x8658
	.string	"align_fuzz"
	.byte	0x1
	.value	0x36b
	.byte	0x1
	.long	0x2e2
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x33
	.string	"start"
	.byte	0x1
	.value	0x368
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"end"
	.byte	0x1
	.value	0x368
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"known_align_log"
	.byte	0x1
	.value	0x369
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"growth"
	.byte	0x1
	.value	0x36a
	.long	0x3bb
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x36c
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"align_label"
	.byte	0x1
	.value	0x36d
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"known_align"
	.byte	0x1
	.value	0x36e
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"end_shuid"
	.byte	0x1
	.value	0x36f
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"fuzz"
	.byte	0x1
	.value	0x370
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x31
	.string	"align_addr"
	.byte	0x1
	.value	0x374
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"new_align"
	.byte	0x1
	.value	0x374
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x86d6
	.byte	0x1
	.string	"insn_current_reference_address"
	.byte	0x1
	.value	0x393
	.byte	0x1
	.long	0x2e2
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x33
	.string	"branch"
	.byte	0x1
	.value	0x392
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"dest"
	.byte	0x1
	.value	0x394
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x394
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"seq_uid"
	.byte	0x1
	.value	0x395
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2d
	.long	0x87b7
	.byte	0x1
	.string	"compute_alignments"
	.byte	0x1
	.value	0x3b8
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x3b9
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x3b9
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.string	"max_log"
	.byte	0x1
	.value	0x3b9
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x3ba
	.long	0x692a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.value	0x3cd
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"fallthru_frequency"
	.byte	0x1
	.value	0x3ce
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"branch_frequency"
	.byte	0x1
	.value	0x3ce
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"has_fallthru"
	.byte	0x1
	.value	0x3ce
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.value	0x3cf
	.long	0x66b1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x8b8a
	.byte	0x1
	.string	"shorten_branches"
	.byte	0x1
	.value	0x41b
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0x41a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x41c
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x31
	.string	"max_uid"
	.byte	0x1
	.value	0x41d
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x41e
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x31
	.string	"max_log"
	.byte	0x1
	.value	0x41f
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.long	.LASF43
	.byte	0x1
	.value	0x420
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x423
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.string	"something_changed"
	.byte	0x1
	.value	0x424
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x31
	.string	"varying_length"
	.byte	0x1
	.value	0x425
	.long	0x4eb
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"body"
	.byte	0x1
	.value	0x426
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x427
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"align_tab"
	.byte	0x1
	.value	0x428
	.long	0x8b8a
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x32
	.long	0x890f
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x31
	.string	"old"
	.byte	0x1
	.value	0x433
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x31
	.string	"n_labels"
	.byte	0x1
	.value	0x434
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"n_old_labels"
	.byte	0x1
	.value	0x435
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x32
	.long	0x8965
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x453
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x32
	.long	0x894a
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x30
	.long	.LASF31
	.byte	0x1
	.value	0x460
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x30
	.long	.LASF40
	.byte	0x1
	.value	0x489
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8993
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x31
	.string	"uid"
	.byte	0x1
	.value	0x4b0
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x4b1
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x32
	.long	0x89db
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x500
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x503
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LASF44
	.byte	0x1
	.value	0x504
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8a4f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x520
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.string	"const_delay_slots"
	.byte	0x1
	.value	0x521
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x30
	.long	.LASF45
	.byte	0x1
	.value	0x52c
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x52d
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x52e
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8b79
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x31
	.string	"new_length"
	.byte	0x1
	.value	0x55f
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"tmp_length"
	.byte	0x1
	.value	0x561
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"length_align"
	.byte	0x1
	.value	0x563
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	0x8ae7
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x569
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x56c
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF44
	.byte	0x1
	.value	0x56d
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	0x8b2a
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x5f1
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x30
	.long	.LASF45
	.byte	0x1
	.value	0x5f6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x5f7
	.long	0x2e2
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
	.value	0x606
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x30
	.long	.LASF45
	.byte	0x1
	.value	0x60c
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF46
	.byte	0x1
	.value	0x60d
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x60e
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF48
	.long	0x9885
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14635
	.byte	0x0
	.uleb128 0xf
	.long	0x8b9a
	.long	0x9a
	.uleb128 0x10
	.long	0x3d2
	.byte	0xf
	.byte	0x0
	.uleb128 0x37
	.long	0x8bf3
	.string	"asm_insn_count"
	.byte	0x1
	.value	0x647
	.byte	0x1
	.long	0x2e2
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x33
	.string	"body"
	.byte	0x1
	.value	0x646
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF49
	.byte	0x1
	.value	0x648
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"count"
	.byte	0x1
	.value	0x649
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x8c4c
	.byte	0x1
	.string	"final_start_function"
	.byte	0x1
	.value	0x667
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0x664
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x665
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF50
	.byte	0x1
	.value	0x666
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x39
	.long	0x8c88
	.string	"profile_after_prologue"
	.byte	0x1
	.value	0x6b0
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x6af
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x39
	.long	0x8cd7
	.string	"profile_function"
	.byte	0x1
	.value	0x6ba
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x6b9
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x30
	.long	.LASF5
	.byte	0x1
	.value	0x6c9
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.string	"final_end_function"
	.byte	0x1
	.value	0x70b
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2d
	.long	0x8dad
	.byte	0x1
	.string	"final"
	.byte	0x1
	.value	0x72f
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0x72b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x72c
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF50
	.byte	0x1
	.value	0x72d
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"prescan"
	.byte	0x1
	.value	0x72e
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0x730
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"max_line"
	.byte	0x1
	.value	0x731
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"max_uid"
	.byte	0x1
	.value	0x732
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x31
	.string	"new_item"
	.byte	0x1
	.value	0x78d
	.long	0x7eda
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.long	0x8e1b
	.byte	0x1
	.string	"get_insn_template"
	.byte	0x1
	.value	0x7a1
	.byte	0x1
	.long	0x2cf
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0x79f
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x7a0
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"output"
	.byte	0x1
	.value	0x7a2
	.long	0x837
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF48
	.long	0x9870
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15406
	.byte	0x0
	.uleb128 0x39
	.long	0x8e8b
	.string	"output_alternate_entry_point"
	.byte	0x1
	.value	0x7bc
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x7ba
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x7bb
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x7bd
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF48
	.long	0x985b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15435
	.byte	0x0
	.uleb128 0x36
	.long	0x8f0d
	.byte	0x1
	.string	"final_scan_insn"
	.byte	0x1
	.value	0x7e3
	.byte	0x1
	.long	0x9a
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0x7de
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0x7df
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF50
	.byte	0x1
	.value	0x7e0
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"prescan"
	.byte	0x1
	.value	0x7e1
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"nopeepholes"
	.byte	0x1
	.value	0x7e2
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x39
	.long	0x8f54
	.string	"notice_source_line"
	.byte	0x1
	.value	0xb42
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xb41
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF42
	.byte	0x1
	.value	0xb43
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x8f9f
	.byte	0x1
	.string	"cleanup_subreg_operands"
	.byte	0x1
	.value	0xb51
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xb50
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xb52
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x36
	.long	0x9037
	.byte	0x1
	.string	"alter_subreg"
	.byte	0x1
	.value	0xb74
	.byte	0x1
	.long	0x9a
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x33
	.string	"xp"
	.byte	0x1
	.value	0xb73
	.long	0x1779
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xb75
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xb76
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	0x9026
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x31
	.string	"new"
	.byte	0x1
	.value	0xb7e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x31
	.string	"regno"
	.byte	0x1
	.value	0xb86
	.long	0x3bb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	.LASF48
	.long	0x9846
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.15546
	.byte	0x0
	.uleb128 0x37
	.long	0x907e
	.string	"walk_alter_subreg"
	.byte	0x1
	.value	0xb9a
	.byte	0x1
	.long	0x9a
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x33
	.string	"xp"
	.byte	0x1
	.value	0xb99
	.long	0x1779
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xb9b
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x911b
	.byte	0x1
	.string	"output_operand_lossage"
	.byte	0x1
	.value	0xc59
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x33
	.string	"msgid"
	.byte	0x1
	.value	0xc58
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x31
	.string	"fmt_string"
	.byte	0x1
	.value	0xc5a
	.long	0x4eb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"new_message"
	.byte	0x1
	.value	0xc5b
	.long	0x4eb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"pfx_str"
	.byte	0x1
	.value	0xc5c
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x31
	.string	"ap"
	.byte	0x1
	.value	0xc5d
	.long	0x40d
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.long	.Ldebug_ranges0+0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.long	0x915a
	.string	"output_asm_name"
	.byte	0x1
	.value	0xc75
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.string	"num"
	.byte	0x1
	.value	0xc78
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x91d6
	.string	"get_mem_expr_from_op"
	.byte	0x1
	.value	0xc90
	.byte	0x1
	.long	0x1e3
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0xc8e
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"paddressp"
	.byte	0x1
	.value	0xc8f
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.string	"expr"
	.byte	0x1
	.value	0xc91
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.string	"inner_addressp"
	.byte	0x1
	.value	0xc92
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x39
	.long	0x9283
	.string	"output_asm_operand_names"
	.byte	0x1
	.value	0xcbf
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2e
	.long	.LASF19
	.byte	0x1
	.value	0xcbc
	.long	0x1779
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"oporder"
	.byte	0x1
	.value	0xcbd
	.long	0x831
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"nops"
	.byte	0x1
	.value	0xcbe
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"wrote"
	.byte	0x1
	.value	0xcc0
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xcc1
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x31
	.string	"addressp"
	.byte	0x1
	.value	0xcc5
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"expr"
	.byte	0x1
	.value	0xcc6
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x9339
	.byte	0x1
	.string	"output_asm_insn"
	.byte	0x1
	.value	0xce7
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2e
	.long	.LASF49
	.byte	0x1
	.value	0xce5
	.long	0x2cf
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF19
	.byte	0x1
	.value	0xce6
	.long	0x1779
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0xce8
	.long	0x2cf
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0xce9
	.long	0x2e2
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"oporder"
	.byte	0x1
	.value	0xced
	.long	0x9339
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.string	"opoutput"
	.byte	0x1
	.value	0xcee
	.long	0x9349
	.byte	0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x31
	.string	"ops"
	.byte	0x1
	.value	0xcef
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x31
	.string	"letter"
	.byte	0x1
	.value	0xd60
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x9349
	.long	0x2e2
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0xf
	.long	0x9359
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1d
	.byte	0x0
	.uleb128 0x2d
	.long	0x939f
	.byte	0x1
	.string	"output_asm_label"
	.byte	0x1
	.value	0xdb6
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xdb5
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0xdb7
	.long	0x939f
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.byte	0x0
	.uleb128 0xf
	.long	0x93af
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0xff
	.byte	0x0
	.uleb128 0x39
	.long	0x9401
	.string	"output_operand"
	.byte	0x1
	.value	0xdd3
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xdd1
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"code"
	.byte	0x1
	.value	0xdd2
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.long	.LASF48
	.long	0x9831
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16015
	.byte	0x0
	.uleb128 0x2d
	.long	0x9434
	.byte	0x1
	.string	"output_address"
	.byte	0x1
	.value	0xde7
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xde6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x949b
	.byte	0x1
	.string	"output_addr_const"
	.byte	0x1
	.value	0xdf4
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0xdf2
	.long	0x73e2
	.byte	0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xdf3
	.long	0x9a
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0xdf5
	.long	0x939f
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x3b
	.string	"restart"
	.byte	0x1
	.value	0xe46
	.long	.L522
	.byte	0x0
	.uleb128 0x2d
	.long	0x953d
	.byte	0x1
	.string	"asm_fprintf"
	.byte	0x1
	.value	0xe73
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2e
	.long	.LASF7
	.byte	0x1
	.value	0xe72
	.long	0x73e2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xe72
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0xe74
	.long	0x953d
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x31
	.string	"q"
	.byte	0x1
	.value	0xe75
	.long	0x4eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.value	0xe75
	.long	0x2da
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x32
	.long	0x952c
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x31
	.string	"argptr"
	.byte	0x1
	.value	0xe77
	.long	0x40d
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.long	.LBB36
	.long	.LBE36
	.byte	0x0
	.uleb128 0x38
	.long	.LASF48
	.long	0x981c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16162
	.byte	0x0
	.uleb128 0xf
	.long	0x954d
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x9
	.byte	0x0
	.uleb128 0x2d
	.long	0x964f
	.byte	0x1
	.string	"split_double"
	.byte	0x1
	.value	0xf19
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x33
	.string	"value"
	.byte	0x1
	.value	0xf17
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF6
	.byte	0x1
	.value	0xf18
	.long	0x1779
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.string	"second"
	.byte	0x1
	.value	0xf18
	.long	0x1779
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.long	0x960a
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x31
	.string	"low"
	.byte	0x1
	.value	0xf21
	.long	0x493
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"high"
	.byte	0x1
	.value	0xf21
	.long	0x493
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"mask"
	.byte	0x1
	.value	0xf22
	.long	0x493
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"sign_bit"
	.byte	0x1
	.value	0xf22
	.long	0x493
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"sign_extend"
	.byte	0x1
	.value	0xf22
	.long	0x493
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	0x9628
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x31
	.string	"high"
	.byte	0x1
	.value	0xf54
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0xf81
	.long	0x41f2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.string	"l"
	.byte	0x1
	.value	0xf82
	.long	0x964f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x965f
	.long	0x4cc
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1
	.byte	0x0
	.uleb128 0x36
	.long	0x96a9
	.byte	0x1
	.string	"leaf_function_p"
	.byte	0x1
	.value	0xfa4
	.byte	0x1
	.long	0x2e2
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x30
	.long	.LASF36
	.byte	0x1
	.value	0xfa5
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"link"
	.byte	0x1
	.value	0xfa6
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x36
	.long	0x9721
	.byte	0x1
	.string	"final_forward_branch_p"
	.byte	0x1
	.value	0xfd0
	.byte	0x1
	.long	0x2e2
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2e
	.long	.LASF36
	.byte	0x1
	.value	0xfcf
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"insn_id"
	.byte	0x1
	.value	0xfd1
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.string	"label_id"
	.byte	0x1
	.value	0xfd1
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.long	.LASF48
	.long	0x9807
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16387
	.byte	0x0
	.uleb128 0x39
	.long	0x97f2
	.string	"mark_referenced_symbols"
	.byte	0x1
	.value	0x106b
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x106a
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x106c
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"j"
	.byte	0x1
	.value	0x106c
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.string	"fmt"
	.byte	0x1
	.value	0x106d
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	0x97c4
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x1073
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.string	"real_name"
	.byte	0x1
	.value	0x1074
	.long	0x2cf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.value	0x1075
	.long	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	0x97e1
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x1085
	.long	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	.LASF48
	.long	0x97f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.16418
	.byte	0x0
	.uleb128 0xa
	.long	0x80c
	.uleb128 0xf
	.long	0x9807
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x16
	.byte	0x0
	.uleb128 0xa
	.long	0x97f7
	.uleb128 0xf
	.long	0x981c
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0xb
	.byte	0x0
	.uleb128 0xa
	.long	0x980c
	.uleb128 0xf
	.long	0x9831
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0xe
	.byte	0x0
	.uleb128 0xa
	.long	0x9821
	.uleb128 0xf
	.long	0x9846
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x9836
	.uleb128 0xf
	.long	0x985b
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1c
	.byte	0x0
	.uleb128 0xa
	.long	0x984b
	.uleb128 0xf
	.long	0x9870
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x11
	.byte	0x0
	.uleb128 0xa
	.long	0x9860
	.uleb128 0xf
	.long	0x9885
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x9875
	.uleb128 0x3d
	.string	"debug_insn"
	.byte	0x1
	.byte	0x7b
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	debug_insn
	.uleb128 0x3d
	.string	"last_linenum"
	.byte	0x1
	.byte	0x7f
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	last_linenum
	.uleb128 0x3d
	.string	"high_block_linenum"
	.byte	0x1
	.byte	0x82
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	high_block_linenum
	.uleb128 0x3d
	.string	"high_function_linenum"
	.byte	0x1
	.byte	0x85
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	high_function_linenum
	.uleb128 0x3d
	.string	"last_filename"
	.byte	0x1
	.byte	0x88
	.long	0x2cf
	.byte	0x5
	.byte	0x3
	.long	last_filename
	.uleb128 0x3d
	.string	"insn_noperands"
	.byte	0x1
	.byte	0x92
	.long	0x3bb
	.byte	0x5
	.byte	0x3
	.long	insn_noperands
	.uleb128 0x3d
	.string	"last_ignored_compare"
	.byte	0x1
	.byte	0x96
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	last_ignored_compare
	.uleb128 0x3d
	.string	"new_block"
	.byte	0x1
	.byte	0x9a
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	new_block
	.uleb128 0x3d
	.string	"insn_counter"
	.byte	0x1
	.byte	0x9f
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	insn_counter
	.uleb128 0x3d
	.string	"block_depth"
	.byte	0x1
	.byte	0xc1
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	block_depth
	.uleb128 0x3d
	.string	"app_on"
	.byte	0x1
	.byte	0xc5
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	app_on
	.uleb128 0x3d
	.string	"line_note_exists"
	.byte	0x1
	.byte	0xd4
	.long	0x4eb
	.byte	0x5
	.byte	0x3
	.long	line_note_exists
	.uleb128 0x3d
	.string	"functions_head"
	.byte	0x1
	.byte	0xe3
	.long	0x7eda
	.byte	0x5
	.byte	0x3
	.long	functions_head
	.uleb128 0x3d
	.string	"functions_tail"
	.byte	0x1
	.byte	0xe4
	.long	0x9a0c
	.byte	0x5
	.byte	0x3
	.long	functions_tail
	.uleb128 0x3
	.byte	0x4
	.long	0x7eda
	.uleb128 0x31
	.string	"insn_lengths"
	.byte	0x1
	.value	0x25c
	.long	0x831
	.byte	0x5
	.byte	0x3
	.long	insn_lengths
	.uleb128 0x31
	.string	"insn_lengths_max_uid"
	.byte	0x1
	.value	0x261
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	insn_lengths_max_uid
	.uleb128 0x31
	.string	"uid_align"
	.byte	0x1
	.value	0x27b
	.long	0x1779
	.byte	0x5
	.byte	0x3
	.long	uid_align
	.uleb128 0x31
	.string	"uid_shuid"
	.byte	0x1
	.value	0x27c
	.long	0x831
	.byte	0x5
	.byte	0x3
	.long	uid_shuid
	.uleb128 0x31
	.string	"label_align"
	.byte	0x1
	.value	0x27d
	.long	0x9a9a
	.byte	0x5
	.byte	0x3
	.long	label_align
	.uleb128 0x3
	.byte	0x4
	.long	0x83f8
	.uleb128 0x31
	.string	"min_labelno"
	.byte	0x1
	.value	0x338
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	min_labelno
	.uleb128 0x31
	.string	"max_labelno"
	.byte	0x1
	.value	0x338
	.long	0x2e2
	.byte	0x5
	.byte	0x3
	.long	max_labelno
	.uleb128 0x3e
	.string	"target_flags"
	.byte	0xd
	.byte	0x21
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"mips_print_operand_punct"
	.byte	0xd
	.byte	0x8f
	.long	0x939f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"mips_abi"
	.byte	0xd
	.value	0x3ca
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9b2f
	.long	0x43b
	.uleb128 0x10
	.long	0x3d2
	.byte	0xff
	.byte	0x0
	.uleb128 0x3e
	.string	"_sch_istable"
	.byte	0x14
	.byte	0x48
	.long	0x9b45
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9b1f
	.uleb128 0xf
	.long	0x9b5a
	.long	0xa8f
	.uleb128 0x10
	.long	0x3d2
	.byte	0x35
	.byte	0x0
	.uleb128 0x40
	.long	.LASF3
	.byte	0x5
	.byte	0x34
	.long	0x9b67
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9b4a
	.uleb128 0xf
	.long	0x9b7c
	.long	0x42a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x35
	.byte	0x0
	.uleb128 0x3e
	.string	"mode_size"
	.byte	0x5
	.byte	0x59
	.long	0x9b8f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9b6c
	.uleb128 0xf
	.long	0x9ba4
	.long	0x42a
	.uleb128 0x10
	.long	0x3d2
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_length"
	.byte	0x4
	.byte	0x36
	.long	0x9bb8
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9b94
	.uleb128 0xf
	.long	0x9bcd
	.long	0x2cf
	.uleb128 0x10
	.long	0x3d2
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_format"
	.byte	0x4
	.byte	0x3c
	.long	0x9be1
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9bbd
	.uleb128 0xf
	.long	0x9bf6
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3e
	.string	"rtx_class"
	.byte	0x4
	.byte	0x3f
	.long	0x9c09
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9be6
	.uleb128 0xf
	.long	0x9c1e
	.long	0x9a
	.uleb128 0x10
	.long	0x3d2
	.byte	0x80
	.byte	0x0
	.uleb128 0x3f
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0x9c0e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9c46
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d2
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3f
	.string	"global_trees"
	.byte	0x3
	.value	0x8ee
	.long	0x9c36
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9c6d
	.long	0x1e3
	.uleb128 0x10
	.long	0x3d2
	.byte	0xa
	.byte	0x0
	.uleb128 0x3f
	.string	"integer_types"
	.byte	0x3
	.value	0x95f
	.long	0x9c5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"current_function_decl"
	.byte	0x3
	.value	0xc07
	.long	0x1e3
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9cb5
	.long	0x2cf
	.uleb128 0x10
	.long	0x3d2
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3e
	.string	"reg_names"
	.byte	0x15
	.byte	0xa3
	.long	0x9ca5
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9cd8
	.long	0x15b9
	.uleb128 0x10
	.long	0x3d2
	.byte	0x1
	.byte	0x0
	.uleb128 0x3f
	.string	"entry_exit_blocks"
	.byte	0x7
	.value	0x139
	.long	0x9cc8
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9d04
	.long	0x2da
	.uleb128 0x10
	.long	0x3d2
	.byte	0xaf
	.byte	0x0
	.uleb128 0x41
	.string	"regs_ever_live"
	.byte	0x1
	.byte	0xb7
	.long	0x9cf4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	regs_ever_live
	.uleb128 0x42
	.string	"insn_addresses_"
	.byte	0x1
	.value	0x25e
	.long	0x64af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_addresses_
	.uleb128 0x42
	.string	"insn_current_address"
	.byte	0x1
	.value	0x264
	.long	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_current_address
	.uleb128 0x3e
	.string	"which_alternative"
	.byte	0x17
	.byte	0x96
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF33
	.byte	0x17
	.byte	0xd0
	.long	0x696e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x9d97
	.long	0x6bb0
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x40
	.long	.LASF37
	.byte	0x17
	.byte	0xfe
	.long	0x9da4
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x9d8c
	.uleb128 0x3e
	.string	"write_symbols"
	.byte	0x18
	.byte	0x2e
	.long	0x6c59
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF50
	.byte	0x18
	.byte	0x41
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"optimize_size"
	.byte	0x18
	.byte	0x45
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"profile_arc_flag"
	.byte	0x18
	.byte	0xca
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"flag_print_asm_name"
	.byte	0x18
	.byte	0xed
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_pic"
	.byte	0x18
	.value	0x1dd
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"flag_verbose_asm"
	.byte	0x18
	.value	0x217
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"frame_pointer_needed"
	.byte	0x1
	.byte	0xbd
	.long	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	frame_pointer_needed
	.uleb128 0x3f
	.string	"align_loops_log"
	.byte	0x18
	.value	0x280
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_loops_max_skip"
	.byte	0x18
	.value	0x281
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_jumps_log"
	.byte	0x18
	.value	0x283
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_jumps_max_skip"
	.byte	0x18
	.value	0x284
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_labels_log"
	.byte	0x18
	.value	0x286
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"align_labels_max_skip"
	.byte	0x18
	.value	0x287
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"final_sequence"
	.byte	0x1
	.byte	0xca
	.long	0x9a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	final_sequence
	.uleb128 0x3f
	.string	"asm_out_file"
	.byte	0x19
	.value	0x194
	.long	0x73e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.string	"current_output_insn"
	.byte	0x1
	.byte	0x7c
	.long	0xa5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_output_insn
	.uleb128 0x41
	.string	"this_is_asm_operands"
	.byte	0x1
	.byte	0x8f
	.long	0x9a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	this_is_asm_operands
	.uleb128 0x3f
	.string	"user_label_prefix"
	.byte	0x19
	.value	0x1cc
	.long	0x2cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x53bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"targetm"
	.byte	0x1a
	.value	0x12d
	.long	0x778a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"debug_hooks"
	.byte	0x1b
	.byte	0x6a
	.long	0x9fe4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x9fea
	.uleb128 0xa
	.long	0x7b75
	.uleb128 0x40
	.long	.LASF41
	.byte	0x1c
	.byte	0x34
	.long	0x7dba
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"length_unit_log"
	.byte	0x1
	.byte	0x8a
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"insn_last_address"
	.byte	0x1
	.value	0x267
	.long	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	insn_last_address
	.uleb128 0x42
	.string	"insn_current_align"
	.byte	0x1
	.value	0x26a
	.long	0x2e2
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
	.uleb128 0x1b
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
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
	.long	0xa059
	.long	0x7ee0
	.string	"init_final"
	.long	0x7f11
	.string	"end_final"
	.long	0x8308
	.string	"default_function_pro_epilogue"
	.long	0x835c
	.string	"no_asm_to_stream"
	.long	0x8393
	.string	"app_enable"
	.long	0x83b0
	.string	"app_disable"
	.long	0x83ce
	.string	"dbr_sequence_length"
	.long	0x8436
	.string	"init_insn_lengths"
	.long	0x845a
	.string	"get_attr_length"
	.long	0x8512
	.string	"label_to_alignment"
	.long	0x8658
	.string	"insn_current_reference_address"
	.long	0x86d6
	.string	"compute_alignments"
	.long	0x87b7
	.string	"shorten_branches"
	.long	0x8bf3
	.string	"final_start_function"
	.long	0x8cd7
	.string	"final_end_function"
	.long	0x8cfc
	.string	"final"
	.long	0x8dad
	.string	"get_insn_template"
	.long	0x8e8b
	.string	"final_scan_insn"
	.long	0x8f54
	.string	"cleanup_subreg_operands"
	.long	0x8f9f
	.string	"alter_subreg"
	.long	0x907e
	.string	"output_operand_lossage"
	.long	0x9283
	.string	"output_asm_insn"
	.long	0x9359
	.string	"output_asm_label"
	.long	0x9401
	.string	"output_address"
	.long	0x9434
	.string	"output_addr_const"
	.long	0x949b
	.string	"asm_fprintf"
	.long	0x954d
	.string	"split_double"
	.long	0x965f
	.string	"leaf_function_p"
	.long	0x96a9
	.string	"final_forward_branch_p"
	.long	0x9d04
	.string	"regs_ever_live"
	.long	0x9d21
	.string	"insn_addresses_"
	.long	0x9d40
	.string	"insn_current_address"
	.long	0x9e49
	.string	"frame_pointer_needed"
	.long	0x9f19
	.string	"final_sequence"
	.long	0x9f4d
	.string	"current_output_insn"
	.long	0x9f6f
	.string	"this_is_asm_operands"
	.long	0xa015
	.string	"insn_last_address"
	.long	0xa036
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
	.long	.LBB30-.Ltext0
	.long	.LBE30-.Ltext0
	.long	.LBB31-.Ltext0
	.long	.LBE31-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"",@progbits
.LASF26:
	.string	"name"
.LASF50:
	.string	"optimize"
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
.LASF49:
	.string	"template"
.LASF6:
	.string	"first"
.LASF4:
	.string	"mem_attrs"
.LASF47:
	.string	"inner_length"
.LASF0:
	.string	"common"
.LASF27:
	.string	"lang_specific"
.LASF45:
	.string	"inner_insn"
.LASF39:
	.string	"sequence_rtl_expr"
.LASF38:
	.string	"sequence_stack"
.LASF29:
	.string	"function_frequency"
.LASF42:
	.string	"filename"
.LASF12:
	.string	"lang_flag_3"
.LASF31:
	.string	"next"
.LASF1:
	.string	"unsigned int"
.LASF21:
	.string	"abstract_origin"
.LASF3:
	.string	"mode_class"
.LASF5:
	.string	"align"
.LASF24:
	.string	"pointer_depth"
.LASF43:
	.string	"max_skip"
.LASF25:
	.string	"user_align"
.LASF32:
	.string	"num_nodes"
.LASF22:
	.string	"size_unit"
.LASF41:
	.string	"profile_info"
.LASF28:
	.string	"args_size"
.LASF36:
	.string	"insn"
.LASF19:
	.string	"operands"
.LASF44:
	.string	"new_address"
.LASF33:
	.string	"recog_data"
.LASF7:
	.string	"file"
.LASF13:
	.string	"lang_flag_4"
.LASF14:
	.string	"lang_flag_5"
.LASF20:
	.string	"abstract_flag"
.LASF35:
	.string	"n_alternatives"
.LASF34:
	.string	"n_operands"
.LASF40:
	.string	"label"
.LASF18:
	.string	"ht_identifier"
.LASF46:
	.string	"inner_uid"
.LASF8:
	.string	"built_in_class"
.LASF30:
	.string	"basic_block"
.LASF48:
	.string	"__FUNCTION__"
.LASF37:
	.string	"insn_data"
.LASF2:
	.string	"_IO_FILE"
.LASF23:
	.string	"attributes"
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
