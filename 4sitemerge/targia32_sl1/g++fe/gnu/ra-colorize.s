	.file	"ra-colorize.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.type	__FUNCTION__.10340, @object
	.size	__FUNCTION__.10340, 10
__FUNCTION__.10340:
	.string	"push_list"
	.align 4
.LC0:
	.string	"../../../kg++fe/gnu/ra-colorize.c"
	.text
	.type	push_list, @function
push_list:
.LFB15:
	.file 1 "../../../kg++fe/gnu/ra-colorize.c"
	.loc 1 106 0
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
	.loc 1 107 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L4
.L2:
	.loc 1 108 0
	leal	__FUNCTION__.10340@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$108, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L4:
	.loc 1 109 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 110 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L5
	.loc 1 111 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L5:
	.loc 1 112 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 113 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	push_list, .-push_list
	.section	.rodata
	.type	__FUNCTION__.10355, @object
	.size	__FUNCTION__.10355, 14
__FUNCTION__.10355:
	.string	"push_list_end"
	.text
	.type	push_list_end, @function
push_list_end:
.LFB16:
	.loc 1 119 0
	pushl	%ebp
.LCFI4:
	movl	%esp, %ebp
.LCFI5:
	pushl	%ebx
.LCFI6:
	subl	$20, %esp
.LCFI7:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 120 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L9
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L11
.L9:
	.loc 1 121 0
	leal	__FUNCTION__.10355@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$121, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L11:
	.loc 1 122 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L15
	.loc 1 124 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 125 0
	jmp	.L18
.L16:
	.loc 1 128 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	%eax, 12(%ebp)
.L15:
	.loc 1 127 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 129 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 130 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%edx)
.L18:
	.loc 1 131 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	push_list_end, .-push_list_end
.globl remove_list
	.type	remove_list, @function
remove_list:
.LFB17:
	.loc 1 139 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$16, %esp
.LCFI10:
	.loc 1 140 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 141 0
	cmpl	$0, -4(%ebp)
	je	.L20
	.loc 1 142 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L22
.L20:
	.loc 1 144 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.L22:
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 146 0
	cmpl	$0, -4(%ebp)
	je	.L23
	.loc 1 147 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
.L23:
	.loc 1 148 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 149 0
	leave
	ret
.LFE17:
	.size	remove_list, .-remove_list
.globl pop_list
	.type	pop_list, @function
pop_list:
.LFB18:
	.loc 1 156 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	pushl	%ebx
.LCFI13:
	subl	$36, %esp
.LCFI14:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 157 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 158 0
	cmpl	$0, -8(%ebp)
	je	.L27
	.loc 1 159 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_list@PLT
.L27:
	.loc 1 160 0
	movl	-8(%ebp), %eax
	.loc 1 161 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	pop_list, .-pop_list
	.type	free_dlist, @function
free_dlist:
.LFB19:
	.loc 1 168 0
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	.loc 1 169 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 170 0
	popl	%ebp
	ret
.LFE19:
	.size	free_dlist, .-free_dlist
	.section	.rodata
	.type	__FUNCTION__.10414, @object
	.size	__FUNCTION__.10414, 8
__FUNCTION__.10414:
	.string	"put_web"
	.text
.globl put_web
	.type	put_web, @function
put_web:
.LFB20:
	.loc 1 180 0
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
	.loc 1 181 0
	cmpl	$11, 12(%ebp)
	ja	.L33
	movl	12(%ebp), %ecx
	movl	$1, %eax
	movl	%eax, %edx
	sall	%cl, %edx
	movl	%edx, -8(%ebp)
	movl	-8(%ebp), %eax
	andl	$4035, %eax
	testl	%eax, %eax
	jne	.L34
	movl	-8(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L35
	movl	-8(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L36
	jmp	.L33
.L34:
	.loc 1 191 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_lists@GOT(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_list
	.loc 1 192 0
	jmp	.L37
.L35:
	.loc 1 194 0
	movl	8(%ebp), %eax
	movl	224(%eax), %edx
	movl	web_lists@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_list
	.loc 1 195 0
	jmp	.L37
.L36:
	.loc 1 197 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L38
	.loc 1 198 0
	movl	$4, 12(%ebp)
	movl	web_lists@GOT(%ebx), %eax
	leal	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_list
	jmp	.L37
.L38:
	.loc 1 199 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L41
	.loc 1 200 0
	movl	$5, 12(%ebp)
	movl	web_lists@GOT(%ebx), %eax
	leal	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_list
	jmp	.L37
.L41:
	.loc 1 202 0
	movl	web_lists@GOT(%ebx), %eax
	leal	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_list
	.loc 1 203 0
	jmp	.L37
.L33:
	.loc 1 205 0
	leal	__FUNCTION__.10414@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$205, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L37:
	.loc 1 207 0
	movl	12(%ebp), %eax
	andl	$31, %eax
	movl	8(%ebp), %ecx
	movzbl	%al, %eax
	andl	$31, %eax
	movl	%eax, %edx
	sall	$14, %edx
	movl	48(%ecx), %eax
	andl	$-507905, %eax
	orl	%edx, %eax
	movl	%eax, 48(%ecx)
	.loc 1 208 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	put_web, .-put_web
	.section	.rodata
	.type	__FUNCTION__.10442, @object
	.size	__FUNCTION__.10442, 12
__FUNCTION__.10442:
	.string	"reset_lists"
	.text
.globl reset_lists
	.type	reset_lists, @function
reset_lists:
.LFB21:
	.loc 1 218 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$52, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 221 0
	movl	web_lists@GOT(%ebx), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L45
	movl	web_lists@GOT(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L45
	movl	web_lists@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L45
	movl	web_lists@GOT(%ebx), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L45
	movl	web_lists@GOT(%ebx), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L45
	movl	web_lists@GOT(%ebx), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L77
.L45:
	.loc 1 223 0
	leal	__FUNCTION__.10442@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$223, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L53:
.LBB2:
	.loc 1 227 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 228 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -16(%ebp)
	.loc 1 235 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L54
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$16384, %eax
	jne	.L56
.L54:
	.loc 1 236 0
	movl	$1, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 235 0
	jmp	.L52
.L56:
	.loc 1 238 0
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L52:
.L77:
.LBE2:
	.loc 1 225 0
	movl	web_lists@GOT(%ebx), %eax
	leal	40(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L53
	.loc 1 240 0
	jmp	.L58
.L59:
	.loc 1 241 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	put_web@PLT
.L58:
	.loc 1 240 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L59
	.loc 1 242 0
	jmp	.L61
.L62:
	.loc 1 243 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	put_web@PLT
.L61:
	.loc 1 242 0
	movl	web_lists@GOT(%ebx), %eax
	leal	44(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	.L62
	.loc 1 246 0
	movl	web_lists@GOT(%ebx), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L64
.L65:
.LBB3:
	.loc 1 248 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 249 0
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	.L66
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-12(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	-12(%ebp), %eax
	movl	$0, 88(%eax)
.L66:
	.loc 1 250 0
	movl	-12(%ebp), %eax
	movl	$0, 88(%eax)
.LBE3:
	.loc 1 246 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
.L64:
	cmpl	$0, -28(%ebp)
	jne	.L65
	.loc 1 254 0
	movl	$0, -24(%ebp)
	jmp	.L69
.L70:
.LBB4:
	.loc 1 256 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 257 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	testl	%eax, %eax
	je	.L71
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$16384, %eax
	je	.L71
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L71
	.loc 1 258 0
	leal	__FUNCTION__.10442@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$258, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L71:
.LBE4:
	.loc 1 254 0
	addl	$1, -24(%ebp)
.L69:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, -24(%ebp)
	jb	.L70
	.loc 1 260 0
	leal	mv_worklist@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_dlist
	.loc 1 261 0
	leal	mv_coalesced@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_dlist
	.loc 1 262 0
	leal	mv_constrained@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_dlist
	.loc 1 263 0
	leal	mv_frozen@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_dlist
	.loc 1 264 0
	leal	mv_active@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	free_dlist
	.loc 1 265 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	reset_lists, .-reset_lists
	.section	.rodata
	.type	__FUNCTION__.10518, @object
	.size	__FUNCTION__.10518, 15
__FUNCTION__.10518:
	.string	"put_web_at_end"
	.text
	.type	put_web_at_end, @function
put_web_at_end:
.LFB22:
	.loc 1 274 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%ebx
.LCFI27:
	subl	$20, %esp
.LCFI28:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 275 0
	cmpl	$2, 12(%ebp)
	jne	.L79
	.loc 1 276 0
	movl	$0, 12(%ebp)
	jmp	.L81
.L79:
	.loc 1 277 0
	cmpl	$3, 12(%ebp)
	jne	.L81
	.loc 1 278 0
	leal	__FUNCTION__.10518@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$278, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L81:
	.loc 1 279 0
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_lists@GOT(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	push_list_end
	.loc 1 280 0
	movl	12(%ebp), %eax
	andl	$31, %eax
	movl	8(%ebp), %ecx
	movzbl	%al, %eax
	andl	$31, %eax
	movl	%eax, %edx
	sall	$14, %edx
	movl	48(%ecx), %eax
	andl	$-507905, %eax
	orl	%edx, %eax
	movl	%eax, 48(%ecx)
	.loc 1 281 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	put_web_at_end, .-put_web_at_end
.globl remove_web_from_list
	.type	remove_web_from_list, @function
remove_web_from_list:
.LFB23:
	.loc 1 289 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$20, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 290 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L85
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	224(%eax), %edx
	movl	web_lists@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_list@PLT
	jmp	.L88
.L85:
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	shrl	$14, %eax
	andl	$31, %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	web_lists@GOT(%ebx), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
.L88:
	.loc 1 294 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	remove_web_from_list, .-remove_web_from_list
	.type	build_worklists, @function
build_worklists:
.LFB25:
	.loc 1 331 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$84, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 344 0
	movl	ra_pass@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jle	.L90
.LBB5:
	.loc 1 348 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 349 0
	movl	-32(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -28(%ebp)
	.loc 1 350 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	jmp	.L92
.L93:
	.loc 1 351 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L94
	.loc 1 352 0
	movl	-36(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-28(%ebp), %ecx
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	addl	$1, -36(%ebp)
.L94:
	.loc 1 350 0
	addl	$1, -40(%ebp)
.L92:
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L93
	.loc 1 353 0
	cmpl	$0, -36(%ebp)
	je	.L97
	.loc 1 355 0
	leal	comp_webs_maxcost@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 356 0
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
.L99:
.LBB6:
	.loc 1 358 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 360 0
	movl	-24(%ebp), %eax
	movl	224(%eax), %edx
	movl	web_lists@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_list@PLT
	.loc 1 361 0
	movl	$8, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 362 0
	movl	-24(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L100
.L101:
.LBB7:
	.loc 1 364 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 365 0
	movl	-16(%ebp), %eax
	movl	56(%eax), %edx
	movl	-24(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 56(%eax)
.LBE7:
	.loc 1 362 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L100:
	cmpl	$0, -20(%ebp)
	jne	.L101
	.loc 1 367 0
	cmpl	$0, -40(%ebp)
	je	.L97
.LBE6:
	.loc 1 356 0
	subl	$1, -40(%ebp)
	.loc 1 369 0
	jmp	.L99
.L97:
	.loc 1 371 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L90:
.LBE5:
	.loc 1 375 0
	movl	web_lists@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
	jmp	.L104
.L105:
.LBB8:
	.loc 1 377 0
	movl	-52(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 378 0
	movl	-52(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 379 0
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L106
	.loc 1 382 0
	movl	web_lists@GOT(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 383 0
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -60(%ebp)
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L108
	movl	-12(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L110
.L108:
	movl	$1, -56(%ebp)
.L110:
	movl	-56(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jl	.L111
	.loc 1 384 0
	movl	$7, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	jmp	.L106
.L111:
	.loc 1 385 0
	movl	-12(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	je	.L113
	.loc 1 386 0
	movl	$6, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	jmp	.L106
.L113:
	.loc 1 388 0
	movl	$3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L106:
.LBE8:
	.loc 1 375 0
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
.L104:
	cmpl	$0, -52(%ebp)
	jne	.L105
	.loc 1 394 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L116
.L117:
	.loc 1 395 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L118
.LBB9:
	.loc 1 397 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 398 0
	movl	$12, (%esp)
	call	ra_calloc@PLT
	movl	%eax, -52(%ebp)
	.loc 1 399 0
	movl	-52(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 400 0
	movl	-8(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 401 0
	movl	$0, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
.L118:
.LBE9:
	.loc 1 394 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L116:
	cmpl	$0, -44(%ebp)
	jne	.L117
	.loc 1 403 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	build_worklists, .-build_worklists
	.section	.rodata
	.type	__FUNCTION__.10558, @object
	.size	__FUNCTION__.10558, 9
__FUNCTION__.10558:
	.string	"put_move"
	.text
	.type	put_move, @function
put_move:
.LFB24:
	.loc 1 302 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$20, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 303 0
	cmpl	$4, 12(%ebp)
	ja	.L123
	movl	12(%ebp), %eax
	sall	$2, %eax
	movl	.L129@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L129:
	.long	.L124@GOTOFF
	.long	.L125@GOTOFF
	.long	.L126@GOTOFF
	.long	.L127@GOTOFF
	.long	.L128@GOTOFF
	.text
.L124:
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_worklist@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_list
	.loc 1 307 0
	jmp	.L130
.L125:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_coalesced@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_list
	.loc 1 310 0
	jmp	.L130
.L126:
	.loc 1 312 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_constrained@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_list
	.loc 1 313 0
	jmp	.L130
.L127:
	.loc 1 315 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_frozen@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_list
	.loc 1 316 0
	jmp	.L130
.L128:
	.loc 1 318 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_active@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	push_list
	.loc 1 319 0
	jmp	.L130
.L123:
	.loc 1 321 0
	leal	__FUNCTION__.10558@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$321, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L130:
	.loc 1 323 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 324 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	put_move, .-put_move
	.type	enable_move, @function
enable_move:
.LFB26:
	.loc 1 410 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$36, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 412 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L133
.L134:
	.loc 1 413 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	$4, %eax
	jne	.L135
	.loc 1 415 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	leal	mv_active@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_list@PLT
	.loc 1 416 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	put_move
.L135:
	.loc 1 412 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L133:
	cmpl	$0, -8(%ebp)
	jne	.L134
	.loc 1 418 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	enable_move, .-enable_move
	.type	decrement_degree, @function
decrement_degree:
.LFB27:
	.loc 1 428 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%ebx
.LCFI47:
	subl	$36, %esp
.LCFI48:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 429 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 430 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, %edx
	subl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 56(%eax)
	.loc 1 431 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L140
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L142
.L140:
	movl	$1, -28(%ebp)
.L142:
	movl	-28(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	jge	.L158
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L145
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L147
.L145:
	movl	$1, -24(%ebp)
.L147:
	movl	-24(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jg	.L158
.LBB10:
	.loc 1 434 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	enable_move
	.loc 1 435 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L149
.L150:
.LBB11:
	.loc 1 437 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 438 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	je	.L151
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L151
	.loc 1 439 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	enable_move
.L151:
.LBE11:
	.loc 1 435 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L149:
	cmpl	$0, -12(%ebp)
	jne	.L150
	.loc 1 441 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$98304, %eax
	je	.L158
	.loc 1 443 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_web_from_list@PLT
	.loc 1 444 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	je	.L156
	.loc 1 445 0
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	jmp	.L158
.L156:
	.loc 1 447 0
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L158:
.LBE10:
	.loc 1 450 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	decrement_degree, .-decrement_degree
	.section	.rodata
	.align 4
.LC1:
	.string	" simplifying web %3d, conflicts = %d\n"
	.text
	.type	simplify, @function
simplify:
.LFB28:
	.loc 1 456 0
	pushl	%ebp
.LCFI49:
	movl	%esp, %ebp
.LCFI50:
	pushl	%ebx
.LCFI51:
	subl	$36, %esp
.LCFI52:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L160:
	.loc 1 469 0
	movl	web_lists@GOT(%ebx), %eax
	leal	12(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 470 0
	cmpl	$0, -20(%ebp)
	jne	.L161
	.loc 1 471 0
	movl	web_lists@GOT(%ebx), %eax
	leal	20(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -20(%ebp)
.L161:
	.loc 1 472 0
	cmpl	$0, -20(%ebp)
	jne	.L163
	.loc 1 473 0
	movl	web_lists@GOT(%ebx), %eax
	leal	16(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -20(%ebp)
.L163:
	.loc 1 474 0
	cmpl	$0, -20(%ebp)
	je	.L173
	.loc 1 476 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 477 0
	movl	-16(%ebp), %eax
	movl	56(%eax), %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 479 0
	movl	$8, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 480 0
	movl	-16(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L167
.L168:
.LBB12:
	.loc 1 482 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 483 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	je	.L169
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L169
	.loc 1 485 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	decrement_degree
.L169:
.LBE12:
	.loc 1 480 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L167:
	cmpl	$0, -12(%ebp)
	jne	.L168
	.loc 1 488 0
	jmp	.L160
.L173:
	.loc 1 489 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	simplify, .-simplify
	.type	remove_move_1, @function
remove_move_1:
.LFB29:
	.loc 1 497 0
	pushl	%ebp
.LCFI53:
	movl	%esp, %ebp
.LCFI54:
	subl	$16, %esp
.LCFI55:
	.loc 1 498 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 499 0
	cmpl	$0, -4(%ebp)
	je	.L184
	.loc 1 501 0
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L179
	.loc 1 503 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 220(%eax)
	.loc 1 504 0
	jmp	.L184
.L180:
	.loc 1 506 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L179:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L181
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L180
.L181:
	.loc 1 507 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L184
	.loc 1 509 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
.L184:
	.loc 1 510 0
	leave
	ret
.LFE29:
	.size	remove_move_1, .-remove_move_1
	.section	.rodata
	.type	__FUNCTION__.10770, @object
	.size	__FUNCTION__.10770, 12
__FUNCTION__.10770:
	.string	"remove_move"
	.text
	.type	remove_move, @function
remove_move:
.LFB30:
	.loc 1 520 0
	pushl	%ebp
.LCFI56:
	movl	%esp, %ebp
.LCFI57:
	pushl	%ebx
.LCFI58:
	subl	$36, %esp
.LCFI59:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 522 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move_1
	.loc 1 523 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L186
.L187:
	.loc 1 524 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L188
	.loc 1 525 0
	leal	__FUNCTION__.10770@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$525, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L188:
	.loc 1 523 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L186:
	cmpl	$0, -8(%ebp)
	jne	.L187
	.loc 1 526 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	remove_move, .-remove_move
.globl merge_moves
	.type	merge_moves, @function
merge_moves:
.LFB31:
	.loc 1 533 0
	pushl	%ebp
.LCFI60:
	movl	%esp, %ebp
.LCFI61:
	pushl	%ebx
.LCFI62:
	subl	$36, %esp
.LCFI63:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 537 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -16(%ebp)
	.loc 1 538 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L193
.L194:
	.loc 1 539 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 538 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L193:
	cmpl	$0, -12(%ebp)
	jne	.L194
	.loc 1 540 0
	movl	12(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L196
.L197:
	.loc 1 542 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 543 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L198
	.loc 1 545 0
	movl	8(%ebp), %eax
	movl	220(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 546 0
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 220(%edx)
.L198:
	.loc 1 540 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L196:
	cmpl	$0, -12(%ebp)
	jne	.L197
	.loc 1 549 0
	cmpl	$0, -16(%ebp)
	je	.L201
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -16(%ebp)
.L201:
	.loc 1 550 0
	movl	12(%ebp), %eax
	movl	$0, 220(%eax)
	.loc 1 551 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	merge_moves, .-merge_moves
	.type	add_worklist, @function
add_worklist:
.LFB32:
	.loc 1 558 0
	pushl	%ebp
.LCFI64:
	movl	%esp, %ebp
.LCFI65:
	pushl	%ebx
.LCFI66:
	subl	$20, %esp
.LCFI67:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 559 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L212
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L212
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L208
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L210
.L208:
	movl	$1, -8(%ebp)
.L210:
	movl	-8(%ebp), %eax
	cmpl	%eax, -12(%ebp)
	jge	.L212
	.loc 1 562 0
	movl	web_lists@GOT(%ebx), %eax
	leal	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 563 0
	movl	$3, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L212:
	.loc 1 565 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE32:
	.size	add_worklist, .-add_worklist
	.type	ok, @function
ok:
.LFB33:
	.loc 1 572 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	pushl	%edi
.LCFI70:
	pushl	%esi
.LCFI71:
	pushl	%ebx
.LCFI72:
	subl	$108, %esp
.LCFI73:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 575 0
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 585 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %ecx
	movl	12(%ebp), %eax
	movl	40(%eax), %esi
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %ecx, %eax
	addl	%edx, %eax
	movzbl	(%eax,%esi), %eax
	testb	%al, %al
	jne	.L214
	.loc 1 586 0
	movl	$0, -108(%ebp)
	jmp	.L216
.L214:
	.loc 1 589 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	.loc 1 590 0
	cmpl	$0, -28(%ebp)
	jne	.L217
	.loc 1 591 0
	movl	$0, -108(%ebp)
	jmp	.L216
.L217:
	.loc 1 595 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	.L219
.L220:
	.loc 1 596 0
	movl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	never_use_colors@GOT(%ebx), %eax
	movl	(%eax,%edx,8), %esi
	movl	4(%eax,%edx,8), %edi
	movl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L260
	movl	%edx, %eax
	xorl	%edx, %edx
.L260:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L221
	movl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	92(%eax,%edx,8), %esi
	movl	96(%eax,%edx,8), %edi
	movl	-36(%ebp), %eax
	addl	-32(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L259
	movl	%edx, %eax
	xorl	%edx, %edx
.L259:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L221
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	movl	hardreg2web@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	(%eax), %eax
	leal	(%ecx,%eax), %eax
	shrl	$6, %eax
	movl	16(%esi,%eax,8), %edi
	movl	12(%esi,%eax,8), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	movl	hardreg2web@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	(%eax), %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L258
	movl	%edi, %esi
	xorl	%edi, %edi
.L258:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L219
.L221:
	.loc 1 610 0
	movl	$0, -108(%ebp)
	jmp	.L216
.L219:
	.loc 1 595 0
	subl	$1, -36(%ebp)
	cmpl	$-1, -36(%ebp)
	jne	.L220
	.loc 1 612 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L225
.L226:
.LBB13:
	.loc 1 614 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 615 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	je	.L227
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L227
	.loc 1 632 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -104(%ebp)
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L230
	movl	-24(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L232
.L230:
	movl	$1, -100(%ebp)
.L232:
	movl	-100(%ebp), %eax
	cmpl	%eax, -104(%ebp)
	jl	.L227
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L227
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L235
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -92(%ebp)
	jmp	.L237
.L235:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -92(%ebp)
.L237:
	movl	-92(%ebp), %eax
	movl	-96(%ebp), %ecx
	movl	12(%ecx,%eax,8), %edx
	movl	16(%ecx,%eax,8), %ecx
	movl	%edx, -88(%ebp)
	movl	%ecx, -84(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L238
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	andl	$63, %edx
	movl	%edx, -76(%ebp)
	jmp	.L240
.L238:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, -76(%ebp)
.L240:
	movl	-88(%ebp), %eax
	movl	-84(%ebp), %edx
	movzbl	-76(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L257
	movl	%edx, %eax
	xorl	%edx, %edx
.L257:
	movl	%eax, %esi
	andl	$1, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	%esi, %eax
	testl	%eax, %eax
	jne	.L227
	.loc 1 639 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L242
	.loc 1 640 0
	movl	$0, -108(%ebp)
	jmp	.L216
.L242:
.LBB14:
	.loc 1 649 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L244
.L245:
	.loc 1 651 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L246
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -68(%ebp)
	jmp	.L248
.L246:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -68(%ebp)
.L248:
	movl	-68(%ebp), %eax
	movl	-72(%ebp), %ecx
	movl	12(%ecx,%eax,8), %edx
	movl	16(%ecx,%eax,8), %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -60(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L249
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	andl	$63, %edx
	movl	%edx, -52(%ebp)
	jmp	.L251
.L249:
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, -52(%ebp)
.L251:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movzbl	-52(%ebp), %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L256
	movl	%edx, %eax
	xorl	%edx, %edx
.L256:
	movl	%eax, %esi
	andl	$1, %esi
	movl	%edx, %edi
	andl	$0, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.L252
	.loc 1 652 0
	movl	$0, -108(%ebp)
	jmp	.L216
.L252:
	.loc 1 649 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L244:
	cmpl	$0, -20(%ebp)
	jne	.L245
.L227:
.LBE14:
.LBE13:
	.loc 1 612 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L225:
	cmpl	$0, -40(%ebp)
	jne	.L226
	.loc 1 656 0
	movl	$1, -108(%ebp)
.L216:
	movl	-108(%ebp), %eax
	.loc 1 657 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE33:
	.size	ok, .-ok
	.type	conservative, @function
conservative:
.LFB34:
	.loc 1 664 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	pushl	%ebx
.LCFI76:
	subl	$68, %esp
.LCFI77:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 669 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L262
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L264
.L262:
	movl	$1, -56(%ebp)
.L264:
	movl	-56(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 674 0
	movl	$0, -28(%ebp)
	.loc 1 675 0
	movl	$16, (%esp)
	call	xmalloc@PLT
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	bitmap_initialize@PLT
	movl	%eax, -20(%ebp)
	.loc 1 676 0
	movl	$0, -24(%ebp)
	jmp	.L265
.L266:
	.loc 1 677 0
	cmpl	$0, -24(%ebp)
	jne	.L267
	movl	8(%ebp), %edx
	movl	%edx, -52(%ebp)
	jmp	.L269
.L267:
	movl	12(%ebp), %eax
	movl	%eax, -52(%ebp)
.L269:
	movl	-52(%ebp), %edx
	movl	80(%edx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 678 0
	jmp	.L270
.L271:
.LBB15:
	.loc 1 680 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 681 0
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	je	.L272
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L272
	movl	-8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L275
	movl	-8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L277
.L275:
	movl	$1, -44(%ebp)
.L277:
	movl	-44(%ebp), %eax
	cmpl	%eax, -48(%ebp)
	jl	.L272
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_bit_p@PLT
	testl	%eax, %eax
	jne	.L272
	.loc 1 685 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_set_bit@PLT
	.loc 1 686 0
	movl	-8(%ebp), %eax
	movl	52(%eax), %eax
	addl	-28(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
.L272:
.LBE15:
	.loc 1 678 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L270:
	cmpl	$0, -16(%ebp)
	jne	.L271
	.loc 1 676 0
	addl	$1, -24(%ebp)
.L265:
	cmpl	$1, -24(%ebp)
	jbe	.L266
	.loc 1 689 0
	cmpl	$0, -20(%ebp)
	je	.L282
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	bitmap_clear@PLT
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	movl	$0, -20(%ebp)
.L282:
	.loc 1 691 0
	movl	-28(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jb	.L284
	.loc 1 692 0
	movl	$0, -40(%ebp)
	jmp	.L286
.L284:
	.loc 1 693 0
	movl	$1, -40(%ebp)
.L286:
	movl	-40(%ebp), %eax
	.loc 1 694 0
	addl	$68, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	conservative, .-conservative
.globl alias
	.type	alias, @function
alias:
.LFB35:
	.loc 1 702 0
	pushl	%ebp
.LCFI78:
	movl	%esp, %ebp
.LCFI79:
	.loc 1 703 0
	jmp	.L289
.L290:
	.loc 1 704 0
	movl	8(%ebp), %eax
	movl	216(%eax), %eax
	movl	%eax, 8(%ebp)
.L289:
	.loc 1 703 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L290
	.loc 1 705 0
	movl	8(%ebp), %eax
	.loc 1 706 0
	popl	%ebp
	ret
.LFE35:
	.size	alias, .-alias
	.section	.rodata
	.type	__FUNCTION__.11121, @object
	.size	__FUNCTION__.11121, 8
__FUNCTION__.11121:
	.string	"combine"
	.text
	.type	combine, @function
combine:
.LFB37:
	.loc 1 723 0
	pushl	%ebp
.LCFI80:
	movl	%esp, %ebp
.LCFI81:
	pushl	%edi
.LCFI82:
	pushl	%esi
.LCFI83:
	pushl	%ebx
.LCFI84:
	subl	$108, %esp
.LCFI85:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 726 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L294
	movl	12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L296
.L294:
	.loc 1 727 0
	leal	__FUNCTION__.11121@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$727, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L296:
	.loc 1 728 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setae	%cl
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setae	%al
	xorl	%ecx, %eax
	testb	%al, %al
	je	.L297
	.loc 1 729 0
	leal	__FUNCTION__.11121@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$729, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L297:
	.loc 1 730 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_web_from_list@PLT
	.loc 1 731 0
	movl	$10, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 732 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 216(%edx)
	.loc 1 733 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$4, %eax
	movb	%al, 48(%edx)
	.loc 1 734 0
	movl	12(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$4, %eax
	movb	%al, 48(%edx)
	.loc 1 735 0
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	leal	(%edx,%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 36(%eax)
	.loc 1 736 0
	movl	flag_ra_merge_spill_costs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L299
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L299
	.loc 1 737 0
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	12(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.L299:
	.loc 1 739 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	merge_moves@PLT
	.loc 1 742 0
	movl	12(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L302
.L303:
.LBB16:
	.loc 1 744 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
.LBB17:
	.loc 1 754 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 755 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	.loc 1 756 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L304
	.loc 1 757 0
	movl	12(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -36(%ebp)
.L304:
	.loc 1 765 0
	movl	$0, -52(%ebp)
	jmp	.L306
.L307:
	.loc 1 767 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L308
	.loc 1 768 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %edx
	addl	-52(%ebp), %edx
	movl	hardreg2web@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -40(%ebp)
.L308:
	.loc 1 769 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L310
	.loc 1 770 0
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	record_conflict@PLT
	jmp	.L312
.L310:
.LBB18:
	.loc 1 783 0
	movl	-48(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L313
.L314:
.LBB19:
	.loc 1 792 0
	movl	$0, -28(%ebp)
	.loc 1 793 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L315
	.loc 1 794 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	find_subweb@PLT
	movl	%eax, -28(%ebp)
.L315:
	.loc 1 795 0
	cmpl	$0, -28(%ebp)
	jne	.L317
	.loc 1 796 0
	movl	-40(%ebp), %eax
	movl	%eax, -28(%ebp)
.L317:
	.loc 1 797 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	record_conflict@PLT
.LBE19:
	.loc 1 783 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L313:
	cmpl	$0, -32(%ebp)
	jne	.L314
.L312:
.LBE18:
	.loc 1 800 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L319
	.loc 1 765 0
	addl	$1, -52(%ebp)
.L306:
	movl	-52(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L307
.L319:
	.loc 1 803 0
	movl	-44(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	je	.L321
	movl	-44(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L321
	.loc 1 804 0
	movl	12(%ebp), %eax
	movl	52(%eax), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	decrement_degree
.L321:
.LBE17:
.LBE16:
	.loc 1 742 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L302:
	cmpl	$0, -48(%ebp)
	jne	.L303
	.loc 1 815 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$1, %eax
	movb	%al, 48(%edx)
.LBB20:
	.loc 1 816 0
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-96(%ebp), %eax
	andl	%esi, %eax
	movl	-92(%ebp), %edx
	andl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -88(%ebp)
	movl	%edi, -84(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-88(%ebp), %eax
	andl	%esi, %eax
	movl	-84(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -80(%ebp)
	movl	%edi, -76(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-80(%ebp), %eax
	andl	%esi, %eax
	movl	-76(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE20:
	.loc 1 817 0
	movl	8(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %edx
	movl	12(%ebp), %eax
	movzwl	50(%eax), %eax
	shrw	$3, %ax
	andw	$1023, %ax
	movzwl	%ax, %ecx
	movl	reg_class_subunion@GOT(%ebx), %esi
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	(%esi,%eax,4), %eax
	andw	$1023, %ax
	movl	8(%ebp), %ecx
	andw	$1023, %ax
	leal	0(,%eax,8), %edx
	movzwl	50(%ecx), %eax
	andw	$-8185, %ax
	orl	%edx, %eax
	movw	%ax, 50(%ecx)
	.loc 1 821 0
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, (%esp)
	call	hard_regs_count@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 188(%eax)
	.loc 1 822 0
	movl	8(%ebp), %eax
	movl	188(%eax), %edx
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	subl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 188(%eax)
	.loc 1 825 0
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	testl	%eax, %eax
	jne	.L325
	.loc 1 826 0
	leal	__FUNCTION__.11121@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$826, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L325:
	.loc 1 828 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L327
	movl	8(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L329
.L327:
	movl	$1, -68(%ebp)
.L329:
	movl	-68(%ebp), %edi
	cmpl	%edi, -72(%ebp)
	jl	.L330
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$98304, %eax
	je	.L332
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	shrl	$14, %eax
	andl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	simplify_p
	testl	%eax, %eax
	je	.L330
.L332:
	.loc 1 831 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_web_from_list@PLT
	.loc 1 832 0
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L330:
	.loc 1 839 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L334
	.loc 1 840 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	.L342
.L334:
	.loc 1 841 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L337
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L337
	.loc 1 842 0
	movl	8(%ebp), %eax
	movl	$2, 12(%eax)
	.loc 1 841 0
	jmp	.L342
.L337:
	.loc 1 843 0
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$3, %eax
	jne	.L342
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	jne	.L342
	.loc 1 844 0
	movl	8(%ebp), %eax
	movl	$3, 12(%eax)
.L342:
	.loc 1 845 0
	addl	$108, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE37:
	.size	combine, .-combine
	.type	simplify_p, @function
simplify_p:
.LFB36:
	.loc 1 714 0
	pushl	%ebp
.LCFI86:
	movl	%esp, %ebp
.LCFI87:
	subl	$4, %esp
.LCFI88:
	.loc 1 715 0
	cmpl	$3, 8(%ebp)
	je	.L344
	cmpl	$4, 8(%ebp)
	je	.L344
	cmpl	$5, 8(%ebp)
	jne	.L347
.L344:
	movl	$1, -4(%ebp)
	jmp	.L348
.L347:
	movl	$0, -4(%ebp)
.L348:
	movl	-4(%ebp), %eax
	.loc 1 716 0
	leave
	ret
.LFE36:
	.size	simplify_p, .-simplify_p
	.type	coalesce, @function
coalesce:
.LFB38:
	.loc 1 852 0
	pushl	%ebp
.LCFI89:
	movl	%esp, %ebp
.LCFI90:
	pushl	%edi
.LCFI91:
	pushl	%esi
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$44, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 853 0
	leal	mv_worklist@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -32(%ebp)
	.loc 1 854 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 855 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 856 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -20(%ebp)
	.loc 1 858 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L351
.LBB21:
	.loc 1 860 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 861 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 862 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L351:
.LBE21:
	.loc 1 864 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jne	.L353
	.loc 1 866 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 867 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
	.loc 1 868 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_worklist
	jmp	.L365
.L353:
	.loc 1 870 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L356
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L367
	movl	%edi, %esi
	xorl	%edi, %edi
.L367:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	jne	.L356
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L366
	movl	%edi, %esi
	xorl	%edi, %edi
.L366:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	testl	%eax, %eax
	je	.L359
.L356:
	.loc 1 874 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 875 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 876 0
	movl	$2, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
	.loc 1 877 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_worklist
	.loc 1 878 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_worklist
	.loc 1 870 0
	jmp	.L365
.L359:
	.loc 1 880 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L360
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ok
	testl	%eax, %eax
	jne	.L362
.L360:
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L363
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	conservative
	testl	%eax, %eax
	je	.L363
.L362:
	.loc 1 884 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 885 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 886 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
	.loc 1 887 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	combine
	.loc 1 888 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_worklist
	.loc 1 880 0
	jmp	.L365
.L363:
	.loc 1 891 0
	movl	$4, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
.L365:
	.loc 1 892 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE38:
	.size	coalesce, .-coalesce
	.type	freeze_moves, @function
freeze_moves:
.LFB39:
	.loc 1 899 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$52, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 901 0
	movl	8(%ebp), %eax
	movl	220(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L369
.L370:
.LBB22:
	.loc 1 903 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 905 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 906 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$4, %eax
	jne	.L371
	.loc 1 907 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_active@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_list@PLT
	jmp	.L373
.L371:
	.loc 1 909 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %edx
	leal	mv_worklist@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	remove_list@PLT
.L373:
	.loc 1 910 0
	movl	$3, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
	.loc 1 911 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 912 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -12(%ebp)
	.loc 1 913 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -8(%ebp)
	.loc 1 914 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L374
	movl	-8(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L376
.L374:
	movl	-12(%ebp), %eax
	movl	%eax, -48(%ebp)
.L376:
	movl	-48(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 915 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_move
	.loc 1 917 0
	movl	-12(%ebp), %eax
	movl	220(%eax), %eax
	testl	%eax, %eax
	jne	.L377
	movl	-12(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, -44(%ebp)
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L379
	movl	-12(%ebp), %eax
	movl	188(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L381
.L379:
	movl	$1, -40(%ebp)
.L381:
	movl	-40(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	jge	.L377
	.loc 1 919 0
	movl	web_lists@GOT(%ebx), %eax
	leal	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 920 0
	movl	$3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L377:
.LBE22:
	.loc 1 901 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L369:
	cmpl	$0, -24(%ebp)
	jne	.L370
	.loc 1 923 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	freeze_moves, .-freeze_moves
	.type	freeze, @function
freeze:
.LFB40:
	.loc 1 930 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$36, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 931 0
	movl	web_lists@GOT(%ebx), %eax
	leal	24(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -8(%ebp)
	.loc 1 932 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 933 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	freeze_moves
	.loc 1 934 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	freeze, .-freeze
.globl __udivdi3
	.type	default_spill_heuristic, @function
default_spill_heuristic:
.LFB41:
	.loc 1 950 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%edi
.LCFI105:
	pushl	%esi
.LCFI106:
	pushl	%ebx
.LCFI107:
	subl	$44, %esp
.LCFI108:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 952 0
	movl	$1, -20(%ebp)
	.loc 1 955 0
	movl	flag_ra_break_aliases@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L388
	.loc 1 956 0
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	addl	%eax, -20(%ebp)
.L388:
	.loc 1 957 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	addl	%eax, -20(%ebp)
	.loc 1 958 0
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	$8, %esi, %edi
	sall	$8, %esi
	movl	-20(%ebp), %eax
	movl	$0, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	addl	$-1, %esi
	adcl	$-1, %edi
	movl	-20(%ebp), %eax
	movl	$0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	__udivdi3@PLT
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 962 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	ja	.L390
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jb	.L392
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jae	.L390
.L392:
	.loc 1 963 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, %edx
	subl	%eax, -32(%ebp)
	sbbl	%edx, -28(%ebp)
.L390:
	.loc 1 964 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	.loc 1 965 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE41:
	.size	default_spill_heuristic, .-default_spill_heuristic
	.section	.rodata
	.type	__FUNCTION__.11434, @object
	.size	__FUNCTION__.11434, 13
__FUNCTION__.11434:
	.string	"select_spill"
	.align 4
.LC2:
	.string	" potential spill web %3d, conflicts = %d\n"
	.text
	.type	select_spill, @function
select_spill:
.LFB42:
	.loc 1 972 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%ebx
.LCFI111:
	subl	$84, %esp
.LCFI112:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 973 0
	movl	$-1, -48(%ebp)
	movl	$-1, -44(%ebp)
	.loc 1 974 0
	movl	$0, -24(%ebp)
	.loc 1 975 0
	movl	$-1, -40(%ebp)
	movl	$-1, -36(%ebp)
	.loc 1 976 0
	movl	$0, -20(%ebp)
	.loc 1 978 0
	movl	web_lists@GOT(%ebx), %eax
	movl	28(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L395
.L396:
.LBB23:
	.loc 1 980 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 981 0
	movl	spill_heuristic@GOTOFF(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 982 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L397
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-60(%ebp), %edx
	cmpl	-44(%ebp), %edx
	ja	.L397
	movl	-60(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jb	.L400
	movl	-64(%ebp), %edx
	cmpl	-48(%ebp), %edx
	jae	.L397
.L400:
	.loc 1 984 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	.loc 1 985 0
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 982 0
	jmp	.L401
.L397:
	.loc 1 990 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L402
	movl	-12(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L401
.L402:
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-68(%ebp), %edx
	cmpl	-36(%ebp), %edx
	ja	.L401
	movl	-68(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jb	.L405
	movl	-72(%ebp), %edx
	cmpl	-40(%ebp), %edx
	jae	.L401
.L405:
	.loc 1 992 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 993 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L401:
.LBE23:
	.loc 1 978 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L395:
	cmpl	$0, -16(%ebp)
	jne	.L396
	.loc 1 996 0
	cmpl	$0, -24(%ebp)
	jne	.L407
	.loc 1 998 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 999 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
.L407:
	.loc 1 1001 0
	cmpl	$0, -24(%ebp)
	jne	.L409
	.loc 1 1002 0
	leal	__FUNCTION__.11434@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1002, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L409:
	.loc 1 1005 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %edx
	movzbl	48(%edx), %eax
	orl	$2, %eax
	movb	%al, 48(%edx)
	.loc 1 1006 0
	movl	web_lists@GOT(%ebx), %eax
	leal	28(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1007 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1008 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	freeze_moves
	.loc 1 1009 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	56(%eax), %edx
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1011 0
	addl	$84, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	select_spill, .-select_spill
	.type	color_usable_p, @function
color_usable_p:
.LFB43:
	.loc 1 1021 0
	pushl	%ebp
.LCFI113:
	movl	%esp, %ebp
.LCFI114:
	pushl	%edi
.LCFI115:
	pushl	%esi
.LCFI116:
	pushl	%ebx
.LCFI117:
	subl	$28, %esp
.LCFI118:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1022 0
	movl	8(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L426
	movl	%edx, %eax
	xorl	%edx, %edx
.L426:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L413
	movl	8(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	16(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L425
	movl	%edx, %eax
	xorl	%edx, %edx
.L425:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L413
	movl	20(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L413
.LBB24:
	.loc 1 1027 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1028 0
	movl	$1, -20(%ebp)
	jmp	.L417
.L418:
	addl	$1, -20(%ebp)
.L417:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jge	.L419
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	16(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-20(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L424
	movl	%edx, %eax
	xorl	%edx, %edx
.L424:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L418
.L419:
	.loc 1 1029 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L413
	.loc 1 1030 0
	movl	$1, -32(%ebp)
	jmp	.L422
.L413:
.LBE24:
	.loc 1 1032 0
	movl	$0, -32(%ebp)
.L422:
	movl	-32(%ebp), %eax
	.loc 1 1033 0
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE43:
	.size	color_usable_p, .-color_usable_p
.globl get_free_reg
	.type	get_free_reg, @function
get_free_reg:
.LFB44:
	.loc 1 1052 0
	pushl	%ebp
.LCFI119:
	movl	%esp, %ebp
.LCFI120:
	pushl	%edi
.LCFI121:
	pushl	%esi
.LCFI122:
	pushl	%ebx
.LCFI123:
	subl	$44, %esp
.LCFI124:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1054 0
	movl	$-1, -36(%ebp)
	.loc 1 1055 0
	movl	$-1, -32(%ebp)
	.loc 1 1056 0
	movl	$2147483647, -28(%ebp)
	.loc 1 1057 0
	movl	$2147483647, -24(%ebp)
	.loc 1 1059 0
	movl	$0, -40(%ebp)
	jmp	.L428
.L429:
	.loc 1 1060 0
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L456
	movl	%edx, %eax
	xorl	%edx, %edx
.L456:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L430
	movl	-40(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-40(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L455
	movl	%edx, %eax
	xorl	%edx, %edx
.L455:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L430
	movl	16(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L430
.LBB25:
	.loc 1 1065 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1066 0
	movl	$1, -20(%ebp)
	jmp	.L434
.L435:
	addl	$1, -20(%ebp)
.L434:
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jge	.L436
	movl	-20(%ebp), %eax
	addl	-40(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	12(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-20(%ebp), %eax
	addl	-40(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L454
	movl	%edx, %eax
	xorl	%edx, %edx
.L454:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L435
.L436:
	.loc 1 1067 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	je	.L438
	.loc 1 1069 0
	movl	-20(%ebp), %eax
	addl	%eax, -40(%ebp)
	.loc 1 1070 0
	jmp	.L430
.L438:
	.loc 1 1072 0
	movl	-20(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jne	.L440
	.loc 1 1074 0
	cmpl	$1, -16(%ebp)
	jle	.L442
	movl	-40(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L444
.L442:
	.loc 1 1076 0
	movl	-40(%ebp), %eax
	movl	inv_reg_alloc_order@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-28(%ebp), %eax
	jge	.L430
	.loc 1 1078 0
	movl	-40(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1079 0
	movl	-40(%ebp), %edx
	movl	inv_reg_alloc_order@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1074 0
	jmp	.L430
.L444:
	.loc 1 1082 0
	movl	-40(%ebp), %eax
	movl	inv_reg_alloc_order@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	-24(%ebp), %eax
	jge	.L430
	.loc 1 1084 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 1085 0
	movl	-40(%ebp), %edx
	movl	inv_reg_alloc_order@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -24(%ebp)
	jmp	.L430
.L440:
	.loc 1 1089 0
	movl	-20(%ebp), %eax
	addl	%eax, -40(%ebp)
.L430:
.LBE25:
	.loc 1 1059 0
	addl	$1, -40(%ebp)
.L428:
	cmpl	$175, -40(%ebp)
	jle	.L429
	.loc 1 1091 0
	cmpl	$0, -32(%ebp)
	js	.L450
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L452
.L450:
	movl	-36(%ebp), %eax
	movl	%eax, -48(%ebp)
.L452:
	movl	-48(%ebp), %eax
	.loc 1 1092 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE44:
	.size	get_free_reg, .-get_free_reg
	.type	get_biased_reg, @function
get_biased_reg:
.LFB45:
	.loc 1 1103 0
	pushl	%ebp
.LCFI125:
	movl	%esp, %ebp
.LCFI126:
	pushl	%edi
.LCFI127:
	pushl	%esi
.LCFI128:
	pushl	%ebx
.LCFI129:
	subl	$220, %esp
.LCFI130:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1104 0
	movl	$-1, -76(%ebp)
	.loc 1 1106 0
	movl	flag_ra_biased@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L458
.LBB26:
	.loc 1 1108 0
	leal	-104(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-72(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$8, %ecx
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$16, %ecx
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE26:
.LBB27:
	.loc 1 1109 0
	leal	-104(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-64(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -216(%ebp)
	movl	%ecx, -212(%ebp)
	movl	-60(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-216(%ebp), %eax
	orl	%esi, %eax
	movl	-212(%ebp), %edx
	orl	%edi, %edx
	movl	-64(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$8, %ecx
	movl	-64(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	-60(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-208(%ebp), %eax
	orl	%esi, %eax
	movl	-204(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-64(%ebp), %ecx
	addl	$16, %ecx
	movl	-64(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-60(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-200(%ebp), %eax
	orl	%esi, %eax
	movl	-196(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE27:
.LBB28:
	.loc 1 1110 0
	leal	-104(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -192(%ebp)
	movl	%ecx, -188(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-192(%ebp), %eax
	orl	%esi, %eax
	movl	-188(%ebp), %edx
	orl	%edi, %edx
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-56(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-184(%ebp), %eax
	orl	%esi, %eax
	movl	-180(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-56(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -176(%ebp)
	movl	%edi, -172(%ebp)
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-176(%ebp), %eax
	orl	%esi, %eax
	movl	-172(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE28:
	.loc 1 1111 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	get_free_reg@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1112 0
	cmpl	$0, -76(%ebp)
	js	.L460
	.loc 1 1113 0
	movl	-76(%ebp), %edi
	movl	%edi, -164(%ebp)
	jmp	.L462
.L460:
.LBB29:
	.loc 1 1114 0
	leal	-104(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE29:
.LBB30:
	.loc 1 1115 0
	leal	-104(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -160(%ebp)
	movl	%ecx, -156(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-160(%ebp), %eax
	orl	%esi, %eax
	movl	-156(%ebp), %edx
	orl	%edi, %edx
	movl	-40(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$8, %ecx
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-36(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-152(%ebp), %eax
	orl	%esi, %eax
	movl	-148(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-40(%ebp), %ecx
	addl	$16, %ecx
	movl	-40(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -144(%ebp)
	movl	%edi, -140(%ebp)
	movl	-36(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-144(%ebp), %eax
	orl	%esi, %eax
	movl	-140(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE30:
	.loc 1 1116 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	get_free_reg@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1117 0
	cmpl	$0, -76(%ebp)
	js	.L458
	.loc 1 1118 0
	movl	-76(%ebp), %edi
	movl	%edi, -164(%ebp)
	jmp	.L462
.L458:
.LBB31:
	.loc 1 1120 0
	leal	-104(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$8, %ecx
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-32(%ebp), %ecx
	addl	$16, %ecx
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE31:
.LBB32:
	.loc 1 1121 0
	leal	-104(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -132(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-136(%ebp), %eax
	orl	%esi, %eax
	movl	-132(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-24(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-128(%ebp), %eax
	orl	%esi, %eax
	movl	-124(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-24(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-120(%ebp), %eax
	orl	%esi, %eax
	movl	-116(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE32:
	.loc 1 1122 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	get_free_reg@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1123 0
	cmpl	$0, -76(%ebp)
	js	.L464
	.loc 1 1124 0
	movl	-76(%ebp), %edi
	movl	%edi, -164(%ebp)
	jmp	.L462
.L464:
	.loc 1 1125 0
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	get_free_reg@PLT
	movl	%eax, -76(%ebp)
	.loc 1 1126 0
	movl	-76(%ebp), %eax
	movl	%eax, -164(%ebp)
.L462:
	movl	-164(%ebp), %eax
	.loc 1 1127 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE45:
	.size	get_biased_reg, .-get_biased_reg
	.type	count_long_blocks, @function
count_long_blocks:
.LFB46:
	.loc 1 1136 0
	pushl	%ebp
.LCFI131:
	movl	%esp, %ebp
.LCFI132:
	pushl	%edi
.LCFI133:
	pushl	%esi
.LCFI134:
	subl	$16, %esp
.LCFI135:
	.loc 1 1138 0
	movl	$0, -12(%ebp)
	.loc 1 1139 0
	movl	$0, -20(%ebp)
	jmp	.L468
.L469:
	.loc 1 1141 0
	movl	-20(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-20(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L481
	movl	%edx, %eax
	xorl	%edx, %edx
.L481:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L470
	.loc 1 1143 0
	movl	$1, -16(%ebp)
	jmp	.L472
.L473:
	.loc 1 1144 0
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	shrl	$6, %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-16(%ebp), %eax
	addl	-20(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L480
	movl	%edx, %eax
	xorl	%edx, %edx
.L480:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L474
	.loc 1 1143 0
	addl	$1, -16(%ebp)
.L472:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L473
.L474:
	.loc 1 1147 0
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L476
	.loc 1 1148 0
	addl	$1, -12(%ebp)
.L476:
	.loc 1 1149 0
	movl	-20(%ebp), %eax
	addl	-16(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
.L470:
	.loc 1 1139 0
	addl	$1, -20(%ebp)
.L468:
	cmpl	$175, -20(%ebp)
	jle	.L469
	.loc 1 1151 0
	movl	-12(%ebp), %eax
	.loc 1 1152 0
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE46:
	.size	count_long_blocks, .-count_long_blocks
	.local	string.11785
	.comm	string.11785,1024,32
	.section	.rodata
.LC3:
	.string	"1"
.LC4:
	.string	"0"
.LC5:
	.string	", "
.LC6:
	.string	""
.LC7:
	.string	"%s"
	.text
	.type	hardregset_to_string, @function
hardregset_to_string:
.LFB47:
	.loc 1 1161 0
	pushl	%ebp
.LCFI136:
	movl	%esp, %ebp
.LCFI137:
	pushl	%edi
.LCFI138:
	pushl	%esi
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$60, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1166 0
	leal	string.11785@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1168 0
	movl	-28(%ebp), %eax
	movw	$8315, (%eax)
	movb	$0, 2(%eax)
	addl	$2, -28(%ebp)
	.loc 1 1169 0
	movl	$0, -24(%ebp)
	jmp	.L483
.L484:
	.loc 1 1171 0
	movl	$0, -20(%ebp)
	jmp	.L485
.L486:
	.loc 1 1172 0
	movl	-20(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -48(%ebp)
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%edx, -44(%ebp)
	movl	-24(%ebp), %eax
	sall	$3, %eax
	addl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-48(%ebp), %eax
	andl	%esi, %eax
	movl	-44(%ebp), %edx
	andl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L487
	leal	.LC3@GOTOFF(%ebx), %ecx
	movl	%ecx, -52(%ebp)
	jmp	.L489
.L487:
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, -52(%ebp)
.L489:
	movl	-28(%ebp), %edx
	movl	-52(%ebp), %ecx
	movzwl	(%ecx), %eax
	movw	%ax, (%edx)
	addl	$1, -28(%ebp)
	.loc 1 1171 0
	addl	$1, -20(%ebp)
.L485:
	cmpl	$63, -20(%ebp)
	jle	.L486
	.loc 1 1173 0
	cmpl	$0, -24(%ebp)
	je	.L491
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, -36(%ebp)
	jmp	.L493
.L491:
	leal	.LC6@GOTOFF(%ebx), %edx
	movl	%edx, -36(%ebp)
.L493:
	movl	-36(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	addl	%eax, -28(%ebp)
	.loc 1 1169 0
	addl	$1, -24(%ebp)
.L483:
	cmpl	$2, -24(%ebp)
	jle	.L484
	.loc 1 1175 0
	movl	-28(%ebp), %eax
	movw	$32032, (%eax)
	movb	$0, 2(%eax)
	addl	$2, -28(%ebp)
	.loc 1 1177 0
	leal	string.11785@GOTOFF(%ebx), %eax
	.loc 1 1178 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE47:
	.size	hardregset_to_string, .-hardregset_to_string
	.type	calculate_dont_begin, @function
calculate_dont_begin:
.LFB48:
	.loc 1 1194 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%edi
.LCFI144:
	pushl	%esi
.LCFI145:
	pushl	%ebx
.LCFI146:
	subl	$156, %esp
.LCFI147:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB33:
	.loc 1 1201 0
	leal	-96(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-68(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE33:
	.loc 1 1202 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -72(%ebp)
	jmp	.L497
.L498:
.LBB34:
	.loc 1 1205 0
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -60(%ebp)
	.loc 1 1206 0
	movl	-72(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1207 0
	cmpl	$0, -56(%ebp)
	je	.L499
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -156(%ebp)
	jmp	.L501
.L499:
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -156(%ebp)
.L501:
	movl	-156(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1208 0
	jmp	.L502
.L503:
	.loc 1 1210 0
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L504
	movl	-60(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L506
.L504:
.LBB35:
	.loc 1 1212 0
	cmpl	$0, -56(%ebp)
	je	.L507
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -152(%ebp)
	jmp	.L509
.L507:
	movl	8(%ebp), %edx
	movl	%edx, -152(%ebp)
.L509:
	movl	-152(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	.loc 1 1213 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -48(%ebp)
	.loc 1 1216 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -44(%ebp)
	.loc 1 1218 0
	movl	$0, -40(%ebp)
	.loc 1 1219 0
	movl	$0, -36(%ebp)
	.loc 1 1224 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L510
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -148(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L512
	movl	$8, -144(%ebp)
	jmp	.L514
.L512:
	movl	$4, -144(%ebp)
.L514:
	movl	-144(%ebp), %eax
	cmpl	%eax, -148(%ebp)
	jl	.L510
	.loc 1 1226 0
	movl	-64(%ebp), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L516
	movl	$8, -136(%ebp)
	jmp	.L518
.L516:
	movl	$4, -136(%ebp)
.L518:
	movl	-140(%ebp), %eax
	movl	$0, %edx
	divl	-136(%ebp)
	movl	%eax, -40(%ebp)
.L510:
	.loc 1 1227 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L519
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -132(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L521
	movl	$8, -128(%ebp)
	jmp	.L523
.L521:
	movl	$4, -128(%ebp)
.L523:
	movl	-128(%ebp), %edx
	cmpl	%edx, -132(%ebp)
	jl	.L519
	.loc 1 1230 0
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -124(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L525
	movl	$8, -120(%ebp)
	jmp	.L527
.L525:
	movl	$4, -120(%ebp)
.L527:
	movl	-124(%ebp), %eax
	movl	$0, %edx
	divl	-120(%ebp)
	movl	%eax, -36(%ebp)
.L519:
	.loc 1 1231 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	addl	-40(%ebp), %eax
	subl	-36(%ebp), %eax
	subl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 1232 0
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	addl	-40(%ebp), %eax
	addl	-48(%ebp), %eax
	subl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 1233 0
	cmpl	$0, -28(%ebp)
	js	.L506
	.loc 1 1235 0
	cmpl	$0, -32(%ebp)
	jns	.L531
	.loc 1 1236 0
	movl	$0, -32(%ebp)
	.loc 1 1242 0
	jmp	.L531
.L532:
	.loc 1 1245 0
	addl	$1, -32(%ebp)
.L531:
	.loc 1 1242 0
	movl	-32(%ebp), %eax
	movl	%eax, %esi
	addl	-36(%ebp), %esi
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	leal	(%esi,%eax), %eax
	leal	-1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	addl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jb	.L532
	.loc 1 1246 0
	jmp	.L534
.L535:
	.loc 1 1249 0
	subl	$1, -32(%ebp)
.L534:
	.loc 1 1246 0
	cmpl	$0, -32(%ebp)
	jle	.L538
	movl	-32(%ebp), %eax
	movl	%eax, %esi
	addl	-36(%ebp), %esi
	movl	-52(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	leal	(%esi,%eax), %eax
	leal	-1(%eax), %edx
	movl	-60(%ebp), %eax
	movl	40(%eax), %eax
	addl	-40(%ebp), %eax
	cmpl	%eax, %edx
	ja	.L535
	.loc 1 1250 0
	jmp	.L538
.L539:
	.loc 1 1251 0
	movl	-32(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -116(%ebp)
	movl	-96(%ebp,%eax,8), %edx
	movl	-92(%ebp,%eax,8), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-32(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L547
	movl	%esi, %edi
	xorl	%esi, %esi
.L547:
	movl	-112(%ebp), %eax
	orl	%esi, %eax
	movl	-108(%ebp), %edx
	orl	%edi, %edx
	movl	-116(%ebp), %ecx
	movl	%eax, -96(%ebp,%ecx,8)
	movl	%edx, -92(%ebp,%ecx,8)
	.loc 1 1250 0
	addl	$1, -32(%ebp)
.L538:
	movl	-32(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jle	.L539
.L506:
.LBE35:
	.loc 1 1257 0
	cmpl	$0, -56(%ebp)
	je	.L540
	.loc 1 1259 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 1260 0
	cmpl	$0, -56(%ebp)
	je	.L542
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -100(%ebp)
	jmp	.L544
.L542:
	movl	$0, -100(%ebp)
.L544:
	movl	-100(%ebp), %eax
	movl	%eax, -64(%ebp)
.L502:
	.loc 1 1208 0
	cmpl	$0, -64(%ebp)
	jne	.L503
.L540:
.LBE34:
	.loc 1 1202 0
	movl	-72(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -72(%ebp)
.L497:
	cmpl	$0, -72(%ebp)
	jne	.L498
.LBB36:
	.loc 1 1263 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	leal	-96(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$8, %ecx
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-24(%ebp), %ecx
	addl	$16, %ecx
	movl	-20(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE36:
	.loc 1 1264 0
	addl	$156, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE48:
	.size	calculate_dont_begin, .-calculate_dont_begin
	.section	.rodata
	.type	__FUNCTION__.12061, @object
	.size	__FUNCTION__.12061, 17
__FUNCTION__.12061:
	.string	"colorize_one_web"
	.align 4
.LC8:
	.string	"colorize web %d [don't begin at %s]"
.LC9:
	.string	" avoid %d"
.LC10:
	.string	" --> got %d"
.LC11:
	.string	" [constrains neighbors]"
.LC12:
	.string	"\n"
.LC13:
	.string	"spilltemp"
.LC14:
	.string	"non-spill"
	.align 4
.LC15:
	.string	"  *** %d spilled, although %s ***\n"
.LC16:
	.string	"  breaking alias %d -> %d\n"
.LC17:
	.string	"  trying to spill %d\n"
.LC18:
	.string	"  spilling %d was useless\n"
	.align 4
.LC19:
	.string	"  to spill %d was a good idea\n"
.LC20:
	.string	"breaking aliases to web %d:"
	.text
	.type	colorize_one_web, @function
colorize_one_web:
.LFB49:
	.loc 1 1283 0
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
	subl	$876, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1286 0
	movl	$-1, -200(%ebp)
	.loc 1 1287 0
	movl	$-1, -196(%ebp)
	.loc 1 1288 0
	movl	$0, -192(%ebp)
	.loc 1 1289 0
	movl	$0, -188(%ebp)
	.loc 1 1290 0
	movl	$0, -184(%ebp)
	.loc 1 1291 0
	movl	$0, -180(%ebp)
	.loc 1 1292 0
	movl	$0, -176(%ebp)
	.loc 1 1293 0
	movl	$-1, -172(%ebp)
	.loc 1 1297 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L549
	.loc 1 1298 0
	movl	$0, 12(%ebp)
.L549:
	.loc 1 1301 0
	leal	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_dont_begin
.LBB37:
	.loc 1 1302 0
	leal	-304(%ebp), %eax
	movl	%eax, -168(%ebp)
	movl	-168(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-168(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-168(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE37:
	.loc 1 1306 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	addl	$1, %eax
	movl	%eax, -192(%ebp)
	.loc 1 1307 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -204(%ebp)
	jmp	.L551
.L552:
.LBB38:
	.loc 1 1310 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -160(%ebp)
	.loc 1 1311 0
	movl	-204(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -156(%ebp)
.LBB39:
	.loc 1 1312 0
	leal	-304(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	-160(%ebp), %eax
	addl	$140, %eax
	movl	%eax, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -856(%ebp)
	movl	%ecx, -852(%ebp)
	movl	-148(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-856(%ebp), %eax
	orl	%esi, %eax
	movl	-852(%ebp), %edx
	orl	%edi, %edx
	movl	-152(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-152(%ebp), %ecx
	addl	$8, %ecx
	movl	-152(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -848(%ebp)
	movl	%edi, -844(%ebp)
	movl	-148(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-848(%ebp), %eax
	orl	%esi, %eax
	movl	-844(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-152(%ebp), %ecx
	addl	$16, %ecx
	movl	-152(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -840(%ebp)
	movl	%edi, -836(%ebp)
	movl	-148(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-840(%ebp), %eax
	orl	%esi, %eax
	movl	-836(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE39:
	.loc 1 1313 0
	cmpl	$0, -156(%ebp)
	je	.L553
	movl	-156(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -828(%ebp)
	jmp	.L555
.L553:
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -828(%ebp)
.L555:
	movl	-828(%ebp), %edi
	movl	%edi, -164(%ebp)
	.loc 1 1314 0
	movl	-160(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L556
	movl	-160(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L556
	movl	-160(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L556
	.loc 1 1316 0
	jmp	.L560
.L561:
	.loc 1 1318 0
	movl	-164(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L562
	movl	-164(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -824(%ebp)
	jmp	.L564
.L562:
	movl	-164(%ebp), %eax
	movl	%eax, -824(%ebp)
.L564:
	movl	-824(%ebp), %edx
	movl	48(%edx), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L565
	movl	-164(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	-192(%ebp), %eax
	jl	.L565
	.loc 1 1321 0
	movl	-164(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -192(%ebp)
	.loc 1 1322 0
	movl	-164(%ebp), %eax
	movl	%eax, -188(%ebp)
	.loc 1 1323 0
	movl	-160(%ebp), %eax
	movl	%eax, -184(%ebp)
	.loc 1 1324 0
	addl	$1, -180(%ebp)
.L565:
	.loc 1 1326 0
	cmpl	$0, -156(%ebp)
	je	.L556
	.loc 1 1328 0
	movl	-156(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	.loc 1 1329 0
	cmpl	$0, -156(%ebp)
	je	.L569
	movl	-156(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -820(%ebp)
	jmp	.L571
.L569:
	movl	$0, -820(%ebp)
.L571:
	movl	-820(%ebp), %ecx
	movl	%ecx, -164(%ebp)
.L560:
	.loc 1 1316 0
	cmpl	$0, -164(%ebp)
	jne	.L561
.L556:
.LBE38:
	.loc 1 1307 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
.L551:
	cmpl	$0, -204(%ebp)
	jne	.L552
	.loc 1 1333 0
	leal	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	hardregset_to_string
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1338 0
	cmpl	$0, -180(%ebp)
	je	.L573
.LBB40:
	.loc 1 1340 0
	leal	-280(%ebp), %eax
	movl	%eax, -144(%ebp)
	movl	-184(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -140(%ebp)
	movl	-140(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-144(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-144(%ebp), %ecx
	addl	$8, %ecx
	movl	-140(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-144(%ebp), %ecx
	addl	$16, %ecx
	movl	-140(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE40:
	.loc 1 1341 0
	movl	-192(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	count_long_blocks
	movl	%eax, -176(%ebp)
.L573:
.LBB41:
	.loc 1 1362 0
	movl	8(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L575
.LBB42:
	.loc 1 1364 0
	leal	-232(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -132(%ebp)
	movl	-132(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-136(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-136(%ebp), %ecx
	addl	$8, %ecx
	movl	-132(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-136(%ebp), %ecx
	addl	$16, %ecx
	movl	-132(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE42:
.LBB43:
	.loc 1 1365 0
	leal	-232(%ebp), %eax
	movl	%eax, -128(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	usable_regs@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -124(%ebp)
	movl	-128(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -816(%ebp)
	movl	%edi, -812(%ebp)
	movl	-124(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-816(%ebp), %eax
	andl	%esi, %eax
	movl	-812(%ebp), %edx
	andl	%edi, %edx
	movl	-128(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-128(%ebp), %ecx
	addl	$8, %ecx
	movl	-128(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -808(%ebp)
	movl	%edi, -804(%ebp)
	movl	-124(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-808(%ebp), %eax
	andl	%esi, %eax
	movl	-804(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-128(%ebp), %ecx
	addl	$16, %ecx
	movl	-128(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -800(%ebp)
	movl	%edi, -796(%ebp)
	movl	-124(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-800(%ebp), %eax
	andl	%esi, %eax
	movl	-796(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L577
.L575:
.LBE43:
.LBB44:
	.loc 1 1369 0
	leal	-232(%ebp), %eax
	movl	%eax, -120(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_preferred_class@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	usable_regs@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -116(%ebp)
	movl	-116(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-120(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-120(%ebp), %ecx
	addl	$8, %ecx
	movl	-116(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-120(%ebp), %ecx
	addl	$16, %ecx
	movl	-116(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L577:
.LBE44:
.LBB45:
	.loc 1 1376 0
	leal	-328(%ebp), %eax
	movl	%eax, -112(%ebp)
	leal	-232(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-112(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-112(%ebp), %ecx
	addl	$8, %ecx
	movl	-108(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-112(%ebp), %ecx
	addl	$16, %ecx
	movl	-108(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE45:
.LBB46:
	.loc 1 1377 0
	leal	-328(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -792(%ebp)
	movl	%ecx, -788(%ebp)
	movl	-100(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-792(%ebp), %eax
	andl	%esi, %eax
	movl	-788(%ebp), %edx
	andl	%edi, %edx
	movl	-104(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-104(%ebp), %ecx
	addl	$8, %ecx
	movl	-104(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -784(%ebp)
	movl	%edi, -780(%ebp)
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-784(%ebp), %eax
	andl	%esi, %eax
	movl	-780(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-104(%ebp), %ecx
	addl	$16, %ecx
	movl	-104(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -776(%ebp)
	movl	%edi, -772(%ebp)
	movl	-100(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-776(%ebp), %eax
	andl	%esi, %eax
	movl	-772(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE46:
	.loc 1 1382 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L578
	.loc 1 1384 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	subl	$1, %eax
	movl	%eax, -200(%ebp)
	.loc 1 1385 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	color_usable_p
	testl	%eax, %eax
	jne	.L582
	.loc 1 1387 0
	movl	$-1, -200(%ebp)
	jmp	.L582
.L578:
	.loc 1 1390 0
	movl	$-1, -200(%ebp)
.L582:
	.loc 1 1391 0
	cmpl	$0, -200(%ebp)
	jns	.L583
	.loc 1 1392 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	addl	$164, %edx
	movl	%eax, 16(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	get_biased_reg
	movl	%eax, -200(%ebp)
.L583:
	.loc 1 1394 0
	cmpl	$0, -200(%ebp)
	jns	.L585
	.loc 1 1395 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	addl	$164, %edx
	movl	%eax, 16(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	get_biased_reg
	movl	%eax, -200(%ebp)
.L585:
	.loc 1 1398 0
	cmpl	$0, -200(%ebp)
	jns	.L587
	.loc 1 1400 0
	movl	8(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L589
.LBB47:
	.loc 1 1401 0
	leal	-232(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -92(%ebp)
	movl	-96(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -768(%ebp)
	movl	%ecx, -764(%ebp)
	movl	-92(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-768(%ebp), %eax
	orl	%esi, %eax
	movl	-764(%ebp), %edx
	orl	%edi, %edx
	movl	-96(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$8, %ecx
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -760(%ebp)
	movl	%edi, -756(%ebp)
	movl	-92(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-760(%ebp), %eax
	orl	%esi, %eax
	movl	-756(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-96(%ebp), %ecx
	addl	$16, %ecx
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -752(%ebp)
	movl	%edi, -748(%ebp)
	movl	-92(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-752(%ebp), %eax
	orl	%esi, %eax
	movl	-748(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	.L591
.L589:
.LBE47:
.LBB48:
	.loc 1 1403 0
	leal	-232(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	reg_alternate_class@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	usable_regs@GOT(%ebx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -84(%ebp)
	movl	-88(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -744(%ebp)
	movl	%ecx, -740(%ebp)
	movl	-84(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-744(%ebp), %eax
	orl	%esi, %eax
	movl	-740(%ebp), %edx
	orl	%edi, %edx
	movl	-88(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$8, %ecx
	movl	-88(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -736(%ebp)
	movl	%edi, -732(%ebp)
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-736(%ebp), %eax
	orl	%esi, %eax
	movl	-732(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-88(%ebp), %ecx
	addl	$16, %ecx
	movl	-88(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -728(%ebp)
	movl	%edi, -724(%ebp)
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-728(%ebp), %eax
	orl	%esi, %eax
	movl	-724(%ebp), %edx
	orl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L591:
.LBE48:
.LBB49:
	.loc 1 1410 0
	leal	-328(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	-232(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-80(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %ecx
	addl	$8, %ecx
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-80(%ebp), %ecx
	addl	$16, %ecx
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE49:
.LBB50:
	.loc 1 1411 0
	leal	-328(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	call_used_reg_set@GOT(%ebx), %eax
	movl	%eax, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -720(%ebp)
	movl	%ecx, -716(%ebp)
	movl	-68(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-720(%ebp), %eax
	andl	%esi, %eax
	movl	-716(%ebp), %edx
	andl	%edi, %edx
	movl	-72(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$8, %ecx
	movl	-72(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -712(%ebp)
	movl	%edi, -708(%ebp)
	movl	-68(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-712(%ebp), %eax
	andl	%esi, %eax
	movl	-708(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-72(%ebp), %ecx
	addl	$16, %ecx
	movl	-72(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%esi, -704(%ebp)
	movl	%edi, -700(%ebp)
	movl	-68(%ebp), %eax
	addl	$16, %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-704(%ebp), %eax
	andl	%esi, %eax
	movl	-700(%ebp), %edx
	andl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE50:
	.loc 1 1413 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	addl	$164, %edx
	movl	%eax, 16(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	get_biased_reg
	movl	%eax, -200(%ebp)
	.loc 1 1415 0
	cmpl	$0, -200(%ebp)
	jns	.L587
	.loc 1 1416 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	48(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	8(%ebp), %edx
	addl	$164, %edx
	movl	%eax, 16(%esp)
	leal	-232(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-256(%ebp), %eax
	movl	%eax, (%esp)
	call	get_biased_reg
	movl	%eax, -200(%ebp)
.L587:
	.loc 1 1419 0
	cmpl	$0, -200(%ebp)
	js	.L593
	.loc 1 1421 0
	cmpl	$0, -196(%ebp)
	jns	.L595
	.loc 1 1422 0
	movl	-200(%ebp), %eax
	movl	%eax, -196(%ebp)
.L595:
	.loc 1 1426 0
	cmpl	$0, -180(%ebp)
	je	.L593
.LBB51:
.LBB52:
	.loc 1 1431 0
	leal	-360(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	-280(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$8, %ecx
	movl	-52(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-56(%ebp), %ecx
	addl	$16, %ecx
	movl	-52(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE52:
	.loc 1 1432 0
	movl	$0, -64(%ebp)
	jmp	.L598
.L599:
	.loc 1 1433 0
	movl	-64(%ebp), %eax
	addl	-200(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -692(%ebp)
	movl	-360(%ebp,%eax,8), %edx
	movl	-356(%ebp,%eax,8), %ecx
	movl	%edx, -688(%ebp)
	movl	%ecx, -684(%ebp)
	movl	-64(%ebp), %eax
	addl	-200(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L753
	movl	%eax, %edx
	xorl	%eax, %eax
.L753:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-688(%ebp), %eax
	andl	%esi, %eax
	movl	-684(%ebp), %edx
	andl	%edi, %edx
	movl	-692(%ebp), %ecx
	movl	%eax, -360(%ebp,%ecx,8)
	movl	%edx, -356(%ebp,%ecx,8)
	.loc 1 1432 0
	addl	$1, -64(%ebp)
.L598:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	addl	$1, %eax
	cmpl	-64(%ebp), %eax
	jg	.L599
	.loc 1 1434 0
	movl	-192(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	leal	-360(%ebp), %eax
	movl	%eax, (%esp)
	call	count_long_blocks
	movl	%eax, -60(%ebp)
	.loc 1 1437 0
	movl	-176(%ebp), %eax
	cmpl	-60(%ebp), %eax
	je	.L593
	movl	-60(%ebp), %eax
	cmpl	-180(%ebp), %eax
	jge	.L593
	.loc 1 1439 0
	movl	-60(%ebp), %eax
	cmpl	-172(%ebp), %eax
	jle	.L603
	.loc 1 1441 0
	movl	-60(%ebp), %eax
	movl	%eax, -172(%ebp)
	.loc 1 1442 0
	movl	-200(%ebp), %eax
	movl	%eax, -196(%ebp)
.L603:
	.loc 1 1444 0
	movl	-200(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -676(%ebp)
	movl	-256(%ebp,%eax,8), %esi
	movl	-252(%ebp,%eax,8), %edi
	movl	%esi, -672(%ebp)
	movl	%edi, -668(%ebp)
	movl	-200(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L752
	movl	%esi, %edi
	xorl	%esi, %esi
.L752:
	movl	-672(%ebp), %eax
	orl	%esi, %eax
	movl	-668(%ebp), %edx
	orl	%edi, %edx
	movl	-676(%ebp), %edi
	movl	%eax, -256(%ebp,%edi,8)
	movl	%edx, -252(%ebp,%edi,8)
	.loc 1 1445 0
	movl	-200(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1455 0
	jmp	.L573
.L593:
.LBE51:
.LBE41:
	.loc 1 1456 0
	cmpl	$0, -200(%ebp)
	jns	.L605
	movl	-196(%ebp), %eax
	movl	%eax, -664(%ebp)
	jmp	.L607
.L605:
	movl	-200(%ebp), %edx
	movl	%edx, -664(%ebp)
.L607:
	movl	-664(%ebp), %ecx
	movl	%ecx, 8(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1457 0
	cmpl	$0, -196(%ebp)
	js	.L608
	cmpl	$0, -200(%ebp)
	jns	.L608
	movl	8(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L608
	.loc 1 1464 0
	movl	-196(%ebp), %eax
	movl	%eax, -200(%ebp)
	.loc 1 1465 0
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
.L608:
	.loc 1 1467 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1469 0
	cmpl	$0, -200(%ebp)
	jns	.L612
	.loc 1 1485 0
	cmpl	$0, 12(%ebp)
	je	.L614
	movl	8(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L616
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L614
.L616:
.LBB53:
	.loc 1 1488 0
	movl	$0, -44(%ebp)
	.loc 1 1491 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L618
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -660(%ebp)
	jmp	.L620
.L618:
	leal	.LC14@GOTOFF(%ebx), %edi
	movl	%edi, -660(%ebp)
.L620:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-660(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1500 0
	leal	-360(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	$0, %edx
	movl	$8, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	rep
	stosl
	.loc 1 1507 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -204(%ebp)
	jmp	.L621
.L622:
.LBB54:
	.loc 1 1509 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 1510 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1514 0
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L623
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	je	.L623
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L623
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L623
	.loc 1 1517 0
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L628
	.loc 1 1518 0
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	je	.L630
	movl	-344(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -656(%ebp)
	movl	%ecx, -652(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -648(%ebp)
	movl	%edi, -644(%ebp)
	movl	-644(%ebp), %edi
	cmpl	%edi, -652(%ebp)
	ja	.L651
	movl	-644(%ebp), %eax
	cmpl	%eax, -652(%ebp)
	jb	.L630
	movl	-648(%ebp), %edx
	cmpl	%edx, -656(%ebp)
	jae	.L651
.L630:
	movl	-40(%ebp), %eax
	movl	%eax, -344(%ebp)
	jmp	.L651
.L628:
	.loc 1 1519 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L635
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L635
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -640(%ebp)
	movl	%edi, -636(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -632(%ebp)
	movl	%ecx, -628(%ebp)
	movl	-628(%ebp), %ecx
	cmpl	%ecx, -636(%ebp)
	ja	.L635
	movl	-628(%ebp), %esi
	cmpl	%esi, -636(%ebp)
	jb	.L639
	movl	-632(%ebp), %edi
	cmpl	%edi, -640(%ebp)
	jae	.L635
.L639:
	.loc 1 1522 0
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	je	.L640
	movl	-340(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -624(%ebp)
	movl	%ecx, -620(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -616(%ebp)
	movl	%edi, -612(%ebp)
	movl	-612(%ebp), %edi
	cmpl	%edi, -620(%ebp)
	ja	.L651
	movl	-612(%ebp), %eax
	cmpl	%eax, -620(%ebp)
	jb	.L640
	movl	-616(%ebp), %edx
	cmpl	%edx, -624(%ebp)
	jae	.L651
.L640:
	movl	-40(%ebp), %eax
	movl	%eax, -340(%ebp)
	.loc 1 1519 0
	jmp	.L651
.L635:
	.loc 1 1523 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L651
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L645
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -608(%ebp)
	movl	%edi, -604(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -600(%ebp)
	movl	%ecx, -596(%ebp)
	movl	-596(%ebp), %ecx
	cmpl	%ecx, -604(%ebp)
	ja	.L651
	movl	-596(%ebp), %esi
	cmpl	%esi, -604(%ebp)
	jb	.L645
	movl	-600(%ebp), %edi
	cmpl	%edi, -608(%ebp)
	jae	.L651
.L645:
	.loc 1 1526 0
	movl	-336(%ebp), %eax
	testl	%eax, %eax
	je	.L648
	movl	-336(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -592(%ebp)
	movl	%ecx, -588(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -584(%ebp)
	movl	%edi, -580(%ebp)
	movl	-580(%ebp), %edi
	cmpl	%edi, -588(%ebp)
	ja	.L651
	movl	-580(%ebp), %eax
	cmpl	%eax, -588(%ebp)
	jb	.L648
	movl	-584(%ebp), %edx
	cmpl	%edx, -592(%ebp)
	jae	.L651
.L648:
	movl	-40(%ebp), %eax
	movl	%eax, -336(%ebp)
	.loc 1 1527 0
	jmp	.L651
.L623:
	.loc 1 1529 0
	movl	-36(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L651
	.loc 1 1531 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L653
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L653
	movl	-40(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L653
	movl	-40(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L653
	.loc 1 1534 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -576(%ebp)
	movl	%edi, -572(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -568(%ebp)
	movl	%ecx, -564(%ebp)
	movl	-564(%ebp), %ecx
	cmpl	%ecx, -572(%ebp)
	ja	.L658
	movl	-564(%ebp), %esi
	cmpl	%esi, -572(%ebp)
	jb	.L660
	movl	-568(%ebp), %edi
	cmpl	%edi, -576(%ebp)
	jae	.L658
.L660:
	.loc 1 1535 0
	movl	-360(%ebp), %eax
	testl	%eax, %eax
	je	.L661
	movl	-360(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -560(%ebp)
	movl	%ecx, -556(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -552(%ebp)
	movl	%edi, -548(%ebp)
	movl	-548(%ebp), %edi
	cmpl	%edi, -556(%ebp)
	ja	.L653
	movl	-548(%ebp), %eax
	cmpl	%eax, -556(%ebp)
	jb	.L661
	movl	-552(%ebp), %edx
	cmpl	%edx, -560(%ebp)
	jae	.L653
.L661:
	movl	-40(%ebp), %eax
	movl	%eax, -360(%ebp)
	jmp	.L653
.L658:
	.loc 1 1536 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L653
	.loc 1 1537 0
	movl	-356(%ebp), %eax
	testl	%eax, %eax
	je	.L666
	movl	-356(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -544(%ebp)
	movl	%edi, -540(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -536(%ebp)
	movl	%ecx, -532(%ebp)
	movl	-532(%ebp), %ecx
	cmpl	%ecx, -540(%ebp)
	ja	.L653
	movl	-532(%ebp), %esi
	cmpl	%esi, -540(%ebp)
	jb	.L666
	movl	-536(%ebp), %edi
	cmpl	%edi, -544(%ebp)
	jae	.L653
.L666:
	movl	-40(%ebp), %eax
	movl	%eax, -356(%ebp)
.L653:
	.loc 1 1539 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L669
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L669
	movl	-40(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L669
	movl	-40(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L669
	.loc 1 1542 0
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -528(%ebp)
	movl	%ecx, -524(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -520(%ebp)
	movl	%edi, -516(%ebp)
	movl	-516(%ebp), %edi
	cmpl	%edi, -524(%ebp)
	ja	.L674
	movl	-516(%ebp), %eax
	cmpl	%eax, -524(%ebp)
	jb	.L676
	movl	-520(%ebp), %edx
	cmpl	%edx, -528(%ebp)
	jae	.L674
.L676:
	.loc 1 1543 0
	movl	-352(%ebp), %eax
	testl	%eax, %eax
	je	.L677
	movl	-352(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -512(%ebp)
	movl	%edi, -508(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -504(%ebp)
	movl	%ecx, -500(%ebp)
	movl	-500(%ebp), %ecx
	cmpl	%ecx, -508(%ebp)
	ja	.L669
	movl	-500(%ebp), %esi
	cmpl	%esi, -508(%ebp)
	jb	.L677
	movl	-504(%ebp), %edi
	cmpl	%edi, -512(%ebp)
	jae	.L669
.L677:
	movl	-40(%ebp), %eax
	movl	%eax, -352(%ebp)
	jmp	.L669
.L674:
	.loc 1 1544 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L669
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L669
	.loc 1 1545 0
	movl	-348(%ebp), %eax
	testl	%eax, %eax
	je	.L683
	movl	-348(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -496(%ebp)
	movl	%ecx, -492(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -488(%ebp)
	movl	%edi, -484(%ebp)
	movl	-484(%ebp), %edi
	cmpl	%edi, -492(%ebp)
	ja	.L669
	movl	-484(%ebp), %eax
	cmpl	%eax, -492(%ebp)
	jb	.L683
	movl	-488(%ebp), %edx
	cmpl	%edx, -496(%ebp)
	jae	.L669
.L683:
	movl	-40(%ebp), %eax
	movl	%eax, -348(%ebp)
.L669:
	.loc 1 1547 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L651
	.loc 1 1549 0
	movl	-40(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L687
	movl	-40(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L687
	movl	-40(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L687
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -480(%ebp)
	movl	%edi, -476(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -472(%ebp)
	movl	%ecx, -468(%ebp)
	movl	-468(%ebp), %ecx
	cmpl	%ecx, -476(%ebp)
	jb	.L691
	movl	-468(%ebp), %esi
	cmpl	%esi, -476(%ebp)
	ja	.L693
	movl	-472(%ebp), %edi
	cmpl	%edi, -480(%ebp)
	jb	.L691
.L693:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L687
.L691:
	.loc 1 1553 0
	movl	-344(%ebp), %eax
	testl	%eax, %eax
	je	.L694
	movl	-344(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -464(%ebp)
	movl	%ecx, -460(%ebp)
	movl	-40(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -456(%ebp)
	movl	%edi, -452(%ebp)
	movl	-452(%ebp), %edi
	cmpl	%edi, -460(%ebp)
	ja	.L687
	movl	-452(%ebp), %eax
	cmpl	%eax, -460(%ebp)
	jb	.L694
	movl	-456(%ebp), %edx
	cmpl	%edx, -464(%ebp)
	jae	.L687
.L694:
	movl	-40(%ebp), %eax
	movl	%eax, -344(%ebp)
.L687:
	.loc 1 1554 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L697
	.loc 1 1555 0
	movl	-340(%ebp), %eax
	testl	%eax, %eax
	je	.L699
	movl	-340(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -448(%ebp)
	movl	%edi, -444(%ebp)
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -440(%ebp)
	movl	%ecx, -436(%ebp)
	movl	-436(%ebp), %ecx
	cmpl	%ecx, -444(%ebp)
	ja	.L697
	movl	-436(%ebp), %esi
	cmpl	%esi, -444(%ebp)
	jb	.L699
	movl	-440(%ebp), %edi
	cmpl	%edi, -448(%ebp)
	jae	.L697
.L699:
	movl	-36(%ebp), %eax
	movl	%eax, -340(%ebp)
.L697:
	.loc 1 1556 0
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L702
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -432(%ebp)
	movl	%ecx, -428(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -424(%ebp)
	movl	%edi, -420(%ebp)
	movl	-420(%ebp), %edi
	cmpl	%edi, -428(%ebp)
	jb	.L704
	movl	-420(%ebp), %eax
	cmpl	%eax, -428(%ebp)
	ja	.L706
	movl	-424(%ebp), %edx
	cmpl	%edx, -432(%ebp)
	jb	.L704
.L706:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L702
.L704:
	.loc 1 1559 0
	movl	-336(%ebp), %eax
	testl	%eax, %eax
	je	.L707
	movl	-336(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -416(%ebp)
	movl	%edi, -412(%ebp)
	movl	-36(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -408(%ebp)
	movl	%ecx, -404(%ebp)
	movl	-404(%ebp), %ecx
	cmpl	%ecx, -412(%ebp)
	ja	.L702
	movl	-404(%ebp), %esi
	cmpl	%esi, -412(%ebp)
	jb	.L707
	movl	-408(%ebp), %edi
	cmpl	%edi, -416(%ebp)
	jae	.L702
.L707:
	movl	-36(%ebp), %eax
	movl	%eax, -336(%ebp)
.L702:
	.loc 1 1565 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L651
	movl	-36(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L651
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L651
	.loc 1 1567 0
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	.L713
	movl	-332(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -400(%ebp)
	movl	%ecx, -396(%ebp)
	movl	-36(%ebp), %eax
	movl	20(%eax), %esi
	movl	24(%eax), %edi
	movl	%esi, -392(%ebp)
	movl	%edi, -388(%ebp)
	movl	-388(%ebp), %edi
	cmpl	%edi, -396(%ebp)
	ja	.L651
	movl	-388(%ebp), %eax
	cmpl	%eax, -396(%ebp)
	jb	.L713
	movl	-392(%ebp), %edx
	cmpl	%edx, -400(%ebp)
	jae	.L651
.L713:
	movl	-36(%ebp), %eax
	movl	%eax, -332(%ebp)
.L651:
.LBE54:
	.loc 1 1507 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
.L621:
	cmpl	$0, -204(%ebp)
	jne	.L622
	.loc 1 1570 0
	movl	$0, -48(%ebp)
	jmp	.L717
.L718:
	.loc 1 1571 0
	movl	-48(%ebp), %eax
	movl	-360(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L719
	.loc 1 1572 0
	movl	-48(%ebp), %eax
	movl	-360(%ebp,%eax,4), %eax
	movl	%eax, -44(%ebp)
.L719:
	.loc 1 1570 0
	addl	$1, -48(%ebp)
.L717:
	cmpl	$0, -44(%ebp)
	jne	.L721
	cmpl	$7, -48(%ebp)
	jbe	.L718
.L721:
	.loc 1 1574 0
	cmpl	$0, -44(%ebp)
	je	.L723
.LBB55:
	.loc 1 1576 0
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1577 0
	movl	-44(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L725
	.loc 1 1579 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L727
	.loc 1 1580 0
	leal	__FUNCTION__.12061@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1580, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L727:
	.loc 1 1581 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1583 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	break_precolored_alias
	.loc 1 1584 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	colorize_one_web
	jmp	.L736
.L725:
	.loc 1 1588 0
	movl	web_lists@GOT(%ebx), %eax
	leal	44(%eax), %edx
	movl	-44(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1589 0
	movl	$9, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1593 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1594 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	colorize_one_web
	.loc 1 1595 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L730
	.loc 1 1600 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1601 0
	movl	$11, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1602 0
	movl	-44(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1603 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	jmp	.L736
.L730:
	.loc 1 1608 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1611 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	-44(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1612 0
	movl	-44(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L732
	.loc 1 1613 0
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	colorize_one_web
	jmp	.L736
.L732:
	.loc 1 1615 0
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	colorize_one_web
	jmp	.L736
.L723:
.LBE55:
	.loc 1 1622 0
	movl	$9, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1485 0
	jmp	.L736
.L614:
.LBE53:
	.loc 1 1625 0
	movl	$9, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	jmp	.L736
.L612:
	.loc 1 1629 0
	movl	$11, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1630 0
	movl	8(%ebp), %edx
	movl	-200(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1631 0
	movl	flag_ra_biased@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L736
.LBB56:
	.loc 1 1633 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1634 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -204(%ebp)
	jmp	.L738
.L739:
.LBB57:
	.loc 1 1636 0
	movl	-204(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1638 0
	movl	$0, -20(%ebp)
	jmp	.L740
.L741:
	.loc 1 1639 0
	movl	-20(%ebp), %eax
	addl	-200(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -380(%ebp)
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	140(%eax,%edx,8), %esi
	movl	144(%eax,%edx,8), %edi
	movl	%esi, -376(%ebp)
	movl	%edi, -372(%ebp)
	movl	-20(%ebp), %eax
	addl	-200(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L751
	movl	%esi, %edi
	xorl	%esi, %esi
.L751:
	movl	-376(%ebp), %eax
	orl	%esi, %eax
	movl	-372(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	-380(%ebp), %edi
	movl	%eax, 140(%ecx,%edi,8)
	movl	%edx, 144(%ecx,%edi,8)
	.loc 1 1638 0
	addl	$1, -20(%ebp)
.L740:
	movl	-20(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L741
.LBE57:
	.loc 1 1634 0
	movl	-204(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
.L738:
	cmpl	$0, -204(%ebp)
	jne	.L739
.L736:
.LBE56:
	.loc 1 1643 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L743
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L743
	.loc 1 1645 0
	movl	an_unusable_color@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1646 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1647 0
	movl	$11, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
.L743:
	.loc 1 1649 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L750
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L750
	movl	8(%ebp), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L750
	.loc 1 1652 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1653 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	restore_conflicts_from_coalesce
	.loc 1 1654 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	break_aliases_to_web
	.loc 1 1655 0
	call	insert_coalesced_conflicts
	.loc 1 1656 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1657 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1658 0
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1659 0
	movl	8(%ebp), %eax
	movl	$-1, 40(%eax)
.L750:
	.loc 1 1661 0
	addl	$876, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE49:
	.size	colorize_one_web, .-colorize_one_web
	.type	assign_colors, @function
assign_colors:
.LFB50:
	.loc 1 1668 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$36, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB58:
	.loc 1 1671 0
	jmp	.L755
.L756:
	.loc 1 1674 0
	movl	web_lists@GOT(%ebx), %eax
	leal	32(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1675 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1676 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	colorize_one_web
.L755:
.LBE58:
	.loc 1 1671 0
	movl	web_lists@GOT(%ebx), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L756
	.loc 1 1679 0
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L758
.L759:
.LBB59:
	.loc 1 1681 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1682 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 40(%edx)
.LBE59:
	.loc 1 1679 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
.L758:
	cmpl	$0, -16(%ebp)
	jne	.L759
	.loc 1 1684 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	assign_colors, .-assign_colors
	.section	.rodata
	.type	__FUNCTION__.12793, @object
	.size	__FUNCTION__.12793, 16
__FUNCTION__.12793:
	.string	"try_recolor_web"
	.align 4
.LC21:
	.string	"try to set web %d to color %d\n"
	.align 4
.LC22:
	.string	"reset coloring of web %d, too expensive\n"
	.text
	.type	try_recolor_web, @function
try_recolor_web:
.LFB51:
	.loc 1 1700 0
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
	subl	$412, %esp
.LCFI163:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1707 0
	movl	$8, 4(%esp)
	movl	$176, (%esp)
	call	xcalloc@PLT
	movl	%eax, -112(%ebp)
	.loc 1 1711 0
	movl	$4, 4(%esp)
	movl	$176, (%esp)
	call	xcalloc@PLT
	movl	%eax, -108(%ebp)
.LBB60:
	.loc 1 1712 0
	leal	-200(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	-96(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-96(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-96(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE60:
	.loc 1 1713 0
	movl	$0, -100(%ebp)
	jmp	.L763
.L764:
.LBB61:
	.loc 1 1716 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-100(%ebp), %ecx
	movl	mips_hard_regno_mode_ok@GOT(%ebx), %edx
	imull	$176, %eax, %eax
	addl	%edx, %eax
	movzbl	(%eax,%ecx), %eax
	testb	%al, %al
	je	.L765
	.loc 1 1718 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -88(%ebp)
	.loc 1 1719 0
	movl	$0, -92(%ebp)
	jmp	.L767
.L768:
	.loc 1 1720 0
	movl	-92(%ebp), %eax
	addl	-100(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	8(%ebp), %eax
	movl	92(%eax,%edx,8), %esi
	movl	96(%eax,%edx,8), %edi
	movl	-92(%ebp), %eax
	addl	-100(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L868
	movl	%edx, %eax
	xorl	%edx, %edx
.L868:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L769
	.loc 1 1719 0
	addl	$1, -92(%ebp)
.L767:
	movl	-92(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jl	.L768
.L769:
	.loc 1 1722 0
	movl	-92(%ebp), %eax
	cmpl	-88(%ebp), %eax
	jl	.L765
	cmpl	$0, -88(%ebp)
	je	.L765
	.loc 1 1724 0
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -396(%ebp)
	movl	-200(%ebp,%eax,8), %edx
	movl	-196(%ebp,%eax,8), %ecx
	movl	%edx, -392(%ebp)
	movl	%ecx, -388(%ebp)
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L867
	movl	%esi, %edi
	xorl	%esi, %esi
.L867:
	movl	-392(%ebp), %eax
	orl	%esi, %eax
	movl	-388(%ebp), %edx
	orl	%edi, %edx
	movl	-396(%ebp), %ecx
	movl	%eax, -200(%ebp,%ecx,8)
	movl	%edx, -196(%ebp,%ecx,8)
	.loc 1 1725 0
	jmp	.L857
.L774:
	.loc 1 1726 0
	movl	-88(%ebp), %eax
	addl	-100(%ebp), %eax
	sall	$2, %eax
	addl	-108(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L773
	.loc 1 1727 0
	movl	-88(%ebp), %eax
	addl	-100(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-108(%ebp), %edx
	movl	-100(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%edx)
.L773:
.L857:
	.loc 1 1725 0
	subl	$1, -88(%ebp)
	cmpl	$-1, -88(%ebp)
	jne	.L774
.L765:
.LBE61:
	.loc 1 1713 0
	addl	$1, -100(%ebp)
.L763:
	cmpl	$175, -100(%ebp)
	jle	.L764
.LBB62:
	.loc 1 1729 0
	leal	-152(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-84(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-84(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-84(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE62:
.LBB63:
	.loc 1 1730 0
	leal	-176(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-80(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-80(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-80(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE63:
.LBB64:
	.loc 1 1731 0
	leal	-224(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	-76(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-76(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE64:
	.loc 1 1732 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L777
.L778:
.LBB65:
	.loc 1 1735 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -72(%ebp)
	.loc 1 1738 0
	movl	$0, -56(%ebp)
	.loc 1 1739 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	je	.L779
	movl	-72(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	je	.L781
.L779:
	.loc 1 1741 0
	movl	-72(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L789
	.loc 1 1743 0
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	sall	$2, %eax
	addl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1744 0
	cmpl	$0, -64(%ebp)
	jne	.L784
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -384(%ebp)
	jmp	.L786
.L784:
	movl	-64(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -384(%ebp)
.L786:
	movl	-384(%ebp), %edx
	movl	%edx, -64(%ebp)
	.loc 1 1745 0
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 1746 0
	jmp	.L787
.L788:
	.loc 1 1747 0
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -380(%ebp)
	movl	-152(%ebp,%eax,8), %edx
	movl	-148(%ebp,%eax,8), %ecx
	movl	%edx, -376(%ebp)
	movl	%ecx, -372(%ebp)
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L866
	movl	%esi, %edi
	xorl	%esi, %esi
.L866:
	movl	-376(%ebp), %eax
	orl	%esi, %eax
	movl	-372(%ebp), %edx
	orl	%edi, %edx
	movl	-380(%ebp), %ecx
	movl	%eax, -152(%ebp,%ecx,8)
	movl	%edx, -148(%ebp,%ecx,8)
	.loc 1 1746 0
	addl	$1, -64(%ebp)
.L787:
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jle	.L788
	.loc 1 1749 0
	jmp	.L789
.L781:
	.loc 1 1758 0
	movl	-72(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L790
	.loc 1 1759 0
	movl	$1, -56(%ebp)
.L790:
	.loc 1 1760 0
	movl	-72(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -68(%ebp)
	jmp	.L792
.L793:
	.loc 1 1761 0
	movl	-68(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	.L794
	.loc 1 1762 0
	movl	$1, -56(%ebp)
.L794:
	.loc 1 1760 0
	movl	-68(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
.L792:
	cmpl	$0, -68(%ebp)
	je	.L796
	cmpl	$0, -56(%ebp)
	je	.L793
.L796:
	.loc 1 1763 0
	leal	-248(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	calculate_dont_begin
	.loc 1 1764 0
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	sall	$2, %eax
	addl	-108(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 1767 0
	cmpl	$0, -64(%ebp)
	jne	.L798
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -368(%ebp)
	jmp	.L800
.L798:
	movl	-64(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -368(%ebp)
.L800:
	movl	-368(%ebp), %edx
	movl	%edx, -64(%ebp)
	.loc 1 1768 0
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %esi
	movl	-72(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-72(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	leal	(%esi,%eax), %eax
	subl	$1, %eax
	movl	%eax, -60(%ebp)
	.loc 1 1770 0
	jmp	.L801
.L802:
	.loc 1 1771 0
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	-196(%ebp,%eax,8), %edx
	movl	-200(%ebp,%eax,8), %eax
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L865
	movl	%edx, %eax
	xorl	%edx, %edx
.L865:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L803
.LBB66:
	.loc 1 1775 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -52(%ebp)
.LBB67:
	.loc 1 1776 0
	leal	-272(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-72(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$8, %ecx
	movl	-44(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-48(%ebp), %ecx
	addl	$16, %ecx
	movl	-44(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 1777 0
	jmp	.L805
.L806:
.LBE67:
	.loc 1 1778 0
	movl	-52(%ebp), %eax
	addl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -364(%ebp)
	movl	-272(%ebp,%eax,8), %edx
	movl	-268(%ebp,%eax,8), %ecx
	movl	%edx, -360(%ebp)
	movl	%ecx, -356(%ebp)
	movl	-52(%ebp), %eax
	addl	-64(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L864
	movl	%eax, %edx
	xorl	%eax, %eax
.L864:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-360(%ebp), %eax
	andl	%esi, %eax
	movl	-356(%ebp), %edx
	andl	%edi, %edx
	movl	-364(%ebp), %ecx
	movl	%eax, -272(%ebp,%ecx,8)
	movl	%edx, -268(%ebp,%ecx,8)
.L805:
	.loc 1 1777 0
	subl	$1, -52(%ebp)
	cmpl	$-1, -52(%ebp)
	jne	.L806
	.loc 1 1779 0
	cmpl	$0, -56(%ebp)
	je	.L808
	.loc 1 1780 0
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -348(%ebp)
	movl	-224(%ebp,%eax,8), %edx
	movl	-220(%ebp,%eax,8), %ecx
	movl	%edx, -344(%ebp)
	movl	%ecx, -340(%ebp)
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L863
	movl	%esi, %edi
	xorl	%esi, %esi
.L863:
	movl	-344(%ebp), %eax
	orl	%esi, %eax
	movl	-340(%ebp), %edx
	orl	%edi, %edx
	movl	-348(%ebp), %ecx
	movl	%eax, -224(%ebp,%ecx,8)
	movl	%edx, -220(%ebp,%ecx,8)
.L808:
	.loc 1 1781 0
	movl	-72(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	leal	-272(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-248(%ebp), %eax
	movl	%eax, (%esp)
	call	get_free_reg@PLT
	testl	%eax, %eax
	jns	.L803
	.loc 1 1784 0
	movl	-72(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L811
	.loc 1 1785 0
	movl	-64(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -332(%ebp)
	movl	-176(%ebp,%eax,8), %edx
	movl	-172(%ebp,%eax,8), %ecx
	movl	%edx, -328(%ebp)
	movl	%ecx, -324(%ebp)
	movl	-64(%ebp), %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L862
	movl	%esi, %edi
	xorl	%esi, %esi
.L862:
	movl	-328(%ebp), %eax
	orl	%esi, %eax
	movl	-324(%ebp), %edx
	orl	%edi, %edx
	movl	-332(%ebp), %ecx
	movl	%eax, -176(%ebp,%ecx,8)
	movl	%edx, -172(%ebp,%ecx,8)
	jmp	.L803
.L811:
	.loc 1 1787 0
	movl	-64(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	addl	-112(%ebp), %ecx
	movl	-64(%ebp), %eax
	sall	$3, %eax
	addl	-112(%ebp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	-72(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.L803:
.LBE66:
	.loc 1 1770 0
	addl	$1, -64(%ebp)
.L801:
	movl	-64(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jle	.L802
.L789:
.LBE65:
	.loc 1 1732 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
.L777:
	cmpl	$0, -116(%ebp)
	jne	.L778
	.loc 1 1791 0
	movl	$-1, -104(%ebp)
	.loc 1 1792 0
	movl	$0, -100(%ebp)
	jmp	.L814
.L815:
	.loc 1 1793 0
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	-196(%ebp,%eax,8), %edx
	movl	-200(%ebp,%eax,8), %eax
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L861
	movl	%edx, %eax
	xorl	%edx, %edx
.L861:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L816
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	-148(%ebp,%eax,8), %edx
	movl	-152(%ebp,%eax,8), %eax
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L860
	movl	%edx, %eax
	xorl	%edx, %edx
.L860:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L816
	movl	-100(%ebp), %eax
	shrl	$6, %eax
	movl	-172(%ebp,%eax,8), %edx
	movl	-176(%ebp,%eax,8), %eax
	movl	-100(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L859
	movl	%edx, %eax
	xorl	%edx, %edx
.L859:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L816
	cmpl	$-1, -104(%ebp)
	je	.L820
	movl	-100(%ebp), %eax
	sall	$3, %eax
	addl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -320(%ebp)
	movl	%ecx, -316(%ebp)
	movl	-104(%ebp), %eax
	sall	$3, %eax
	addl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -312(%ebp)
	movl	%ecx, -308(%ebp)
	movl	-308(%ebp), %ecx
	cmpl	%ecx, -316(%ebp)
	ja	.L816
	movl	-308(%ebp), %eax
	cmpl	%eax, -316(%ebp)
	jb	.L820
	movl	-312(%ebp), %edx
	cmpl	%edx, -320(%ebp)
	jae	.L816
.L820:
	.loc 1 1798 0
	movl	-100(%ebp), %eax
	movl	%eax, -104(%ebp)
.L816:
	.loc 1 1792 0
	addl	$1, -100(%ebp)
.L814:
	cmpl	$175, -100(%ebp)
	jle	.L815
	.loc 1 1799 0
	cmpl	$0, -104(%ebp)
	js	.L824
	movl	-104(%ebp), %eax
	sall	$3, %eax
	addl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -304(%ebp)
	movl	%ecx, -300(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -296(%ebp)
	movl	%ecx, -292(%ebp)
	movl	-292(%ebp), %ecx
	cmpl	%ecx, -300(%ebp)
	ja	.L824
	movl	-292(%ebp), %eax
	cmpl	%eax, -300(%ebp)
	jb	.L827
	movl	-296(%ebp), %edx
	cmpl	%edx, -304(%ebp)
	jae	.L824
.L827:
.LBB68:
	.loc 1 1801 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -40(%ebp)
	.loc 1 1802 0
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	.loc 1 1805 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1807 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1808 0
	movl	$11, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1809 0
	movl	8(%ebp), %edx
	movl	-104(%ebp), %eax
	movl	%eax, 40(%edx)
	.loc 1 1810 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 1811 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L828
.L829:
.LBB69:
	.loc 1 1813 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -28(%ebp)
	.loc 1 1821 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1822 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L830
.LBB70:
	.loc 1 1824 0
	movl	-28(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	.loc 1 1826 0
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	addl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L830
	movl	-28(%ebp), %eax
	movl	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	addl	-40(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L830
	.loc 1 1829 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-36(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	addl	$1, %eax
	movl	%eax, (%edx)
	.loc 1 1830 0
	movl	-28(%ebp), %eax
	movl	$-1, 40(%eax)
	.loc 1 1831 0
	movl	web_lists@GOT(%ebx), %eax
	leal	44(%eax), %edx
	movl	-28(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1832 0
	movl	-28(%ebp), %edx
	movl	48(%edx), %eax
	andl	$-507905, %eax
	orl	$131072, %eax
	movl	%eax, 48(%edx)
	.loc 1 1834 0
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L834
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	jne	.L836
.L834:
	.loc 1 1835 0
	movl	-28(%ebp), %eax
	movzbl	48(%eax), %edx
	orl	$2, %edx
	movb	%dl, 48(%eax)
.L836:
	.loc 1 1836 0
	movl	$1, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	colorize_one_web
	.loc 1 1837 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L830
	.loc 1 1838 0
	movl	-28(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%eax, -128(%ebp)
	adcl	%edx, -124(%ebp)
.L830:
.LBE70:
.LBE69:
	.loc 1 1811 0
	movl	-32(%ebp), %eax
	movl	%eax, -116(%ebp)
.L828:
	cmpl	$0, -116(%ebp)
	jne	.L829
	.loc 1 1847 0
	movl	-104(%ebp), %eax
	sall	$3, %eax
	addl	-112(%ebp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, -288(%ebp)
	movl	%ecx, -284(%ebp)
	movl	-284(%ebp), %ecx
	cmpl	-124(%ebp), %ecx
	ja	.L839
	movl	-284(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jb	.L841
	movl	-288(%ebp), %edx
	cmpl	-128(%ebp), %edx
	jae	.L839
.L841:
	cmpl	$1, -40(%ebp)
	jne	.L839
	movl	-104(%ebp), %eax
	shrl	$6, %eax
	movl	-220(%ebp,%eax,8), %edx
	movl	-224(%ebp,%eax,8), %eax
	movl	-104(%ebp), %ecx
	andl	$63, %ecx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L858
	movl	%edx, %eax
	xorl	%edx, %edx
.L858:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L839
	.loc 1 1849 0
	leal	__FUNCTION__.12793@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1849, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L839:
	.loc 1 1852 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-276(%ebp), %ecx
	cmpl	-124(%ebp), %ecx
	ja	.L844
	movl	-276(%ebp), %eax
	cmpl	-124(%ebp), %eax
	jb	.L846
	movl	-280(%ebp), %edx
	cmpl	-128(%ebp), %edx
	jae	.L844
.L846:
	.loc 1 1854 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 1856 0
	movl	web_lists@GOT(%ebx), %eax
	leal	44(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1857 0
	movl	8(%ebp), %eax
	movl	$-1, 40(%eax)
	.loc 1 1858 0
	movl	$9, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 1859 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -116(%ebp)
	jmp	.L847
.L848:
.LBB71:
	.loc 1 1861 0
	movl	-116(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1862 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L849
	.loc 1 1864 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L851
	.loc 1 1866 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %edx
	movl	-20(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 1867 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 40(%eax)
	.loc 1 1868 0
	movl	$11, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	jmp	.L849
.L851:
	.loc 1 1870 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L853
	.loc 1 1871 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 40(%eax)
	jmp	.L849
.L853:
	.loc 1 1872 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$131072, %eax
	je	.L849
	.loc 1 1883 0
	leal	__FUNCTION__.12793@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1883, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L849:
.LBE71:
	.loc 1 1859 0
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -116(%ebp)
.L847:
	cmpl	$0, -116(%ebp)
	jne	.L848
.L844:
	.loc 1 1887 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L824:
.LBE68:
	.loc 1 1889 0
	movl	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1890 0
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 1891 0
	addl	$412, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE51:
	.size	try_recolor_web, .-try_recolor_web
	.section	.rodata
	.type	__FUNCTION__.13149, @object
	.size	__FUNCTION__.13149, 27
__FUNCTION__.13149:
	.string	"insert_coalesced_conflicts"
	.text
	.type	insert_coalesced_conflicts, @function
insert_coalesced_conflicts:
.LFB52:
	.loc 1 1902 0
	pushl	%ebp
.LCFI164:
	movl	%esp, %ebp
.LCFI165:
	subl	$32, %esp
.LCFI166:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1904 0
	movl	web_lists@GOT(%ecx), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1948 0
	leave
	ret
.LFE52:
	.size	insert_coalesced_conflicts, .-insert_coalesced_conflicts
	.type	comp_webs_maxcost, @function
comp_webs_maxcost:
.LFB53:
	.loc 1 1957 0
	pushl	%ebp
.LCFI167:
	movl	%esp, %ebp
.LCFI168:
	subl	$56, %esp
.LCFI169:
	.loc 1 1958 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1959 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 1960 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-44(%ebp), %ecx
	cmpl	%ecx, -52(%ebp)
	jb	.L872
	movl	-44(%ebp), %eax
	cmpl	%eax, -52(%ebp)
	ja	.L874
	movl	-48(%ebp), %edx
	cmpl	%edx, -56(%ebp)
	jbe	.L872
.L874:
	.loc 1 1961 0
	movl	$-1, -36(%ebp)
	jmp	.L875
.L872:
	.loc 1 1962 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %ecx
	cmpl	%ecx, -28(%ebp)
	ja	.L876
	movl	-20(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jb	.L878
	movl	-24(%ebp), %edx
	cmpl	%edx, -32(%ebp)
	jae	.L876
.L878:
	.loc 1 1963 0
	movl	$1, -36(%ebp)
	jmp	.L875
.L876:
	.loc 1 1965 0
	movl	$0, -36(%ebp)
.L875:
	movl	-36(%ebp), %eax
	.loc 1 1966 0
	leave
	ret
.LFE53:
	.size	comp_webs_maxcost, .-comp_webs_maxcost
	.section	.rodata
.LC23:
	.string	"before spill-recolor"
	.text
	.type	recolor_spills, @function
recolor_spills:
.LFB54:
	.loc 1 1973 0
	pushl	%ebp
.LCFI170:
	movl	%esp, %ebp
.LCFI171:
	pushl	%edi
.LCFI172:
	pushl	%esi
.LCFI173:
	pushl	%ebx
.LCFI174:
	subl	$44, %esp
.LCFI175:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1976 0
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1977 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -20(%ebp)
	.loc 1 1978 0
	movl	$0, -28(%ebp)
	jmp	.L881
.L882:
	.loc 1 1980 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	.loc 1 1983 0
	movl	flag_ra_merge_spill_costs@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L883
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L883
	.loc 1 1984 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, %ecx
	movl	20(%ecx), %esi
	movl	24(%ecx), %edi
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.L883:
	.loc 1 1978 0
	addl	$1, -28(%ebp)
.L881:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L882
	.loc 1 1986 0
	leal	comp_webs_maxcost@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 1987 0
	call	insert_coalesced_conflicts
	.loc 1 1988 0
	leal	.LC23@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_graph_cost@PLT
	.loc 1 1989 0
	movl	$0, -28(%ebp)
	jmp	.L887
.L888:
.LBB72:
	.loc 1 1991 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1992 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	jne	.L889
	.loc 1 1993 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	try_recolor_web
.L889:
.LBE72:
	.loc 1 1989 0
	addl	$1, -28(%ebp)
.L887:
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jb	.L888
	.loc 1 2000 0
	call	assign_colors
	.loc 1 2001 0
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2002 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE54:
	.size	recolor_spills, .-recolor_spills
	.section	.rodata
	.type	__FUNCTION__.13316, @object
	.size	__FUNCTION__.13316, 13
__FUNCTION__.13316:
	.string	"check_colors"
	.text
	.type	check_colors, @function
check_colors:
.LFB55:
	.loc 1 2010 0
	pushl	%ebp
.LCFI176:
	movl	%esp, %ebp
.LCFI177:
	pushl	%edi
.LCFI178:
	pushl	%esi
.LCFI179:
	pushl	%ebx
.LCFI180:
	subl	$124, %esp
.LCFI181:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2012 0
	movl	$0, -72(%ebp)
	jmp	.L894
.L895:
.LBB73:
	.loc 1 2014 0
	movl	-72(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	id2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 2015 0
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -64(%ebp)
	.loc 1 2018 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L896
	movl	-68(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L896
	.loc 1 2020 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L899
	.loc 1 2021 0
	movl	-68(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -56(%ebp)
	jmp	.L901
.L899:
	.loc 1 2022 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L902
	.loc 1 2023 0
	movl	$1, -56(%ebp)
	jmp	.L901
.L902:
	.loc 1 2025 0
	leal	__FUNCTION__.13316@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2025, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L901:
	.loc 1 2027 0
	movl	$0, -52(%ebp)
	jmp	.L904
.L905:
	.loc 1 2028 0
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	addl	-52(%ebp), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	-68(%ebp), %eax
	movl	92(%eax,%edx,8), %esi
	movl	96(%eax,%edx,8), %edi
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	addl	-52(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L950
	movl	%edx, %eax
	xorl	%edx, %edx
.L950:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L906
	.loc 1 2029 0
	leal	__FUNCTION__.13316@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2029, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L906:
	.loc 1 2027 0
	addl	$1, -52(%ebp)
.L904:
	movl	-52(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jl	.L905
	.loc 1 2035 0
	movl	-68(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L909
	movl	-68(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -112(%ebp)
	jmp	.L911
.L909:
	movl	-68(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -112(%ebp)
.L911:
	movl	-112(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 2037 0
	jmp	.L912
.L913:
	.loc 1 2038 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L914
	.loc 1 2040 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L916
.LBB74:
	.loc 1 2042 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -48(%ebp)
	.loc 1 2044 0
	movl	-48(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$180224, %eax
	jne	.L918
	.loc 1 2045 0
	movl	-48(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -44(%ebp)
	jmp	.L920
.L918:
	.loc 1 2046 0
	movl	-48(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L914
	.loc 1 2047 0
	movl	$1, -44(%ebp)
.L920:
	.loc 1 2050 0
	movl	-64(%ebp), %eax
	movl	40(%eax), %edx
	movl	-48(%ebp), %eax
	movl	40(%eax), %eax
	addl	-44(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L914
	movl	-48(%ebp), %eax
	movl	40(%eax), %edx
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	addl	-56(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L914
	.loc 1 2053 0
	leal	__FUNCTION__.13316@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2053, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L916:
.LBE74:
.LBB75:
	.loc 1 2058 0
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 2059 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2060 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L914
	.loc 1 2062 0
	movl	-60(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L925
.L926:
.LBB76:
	.loc 1 2064 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2065 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2066 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 2067 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L927
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L929
	movl	$8, -104(%ebp)
	jmp	.L931
.L929:
	movl	$4, -104(%ebp)
.L931:
	movl	-104(%ebp), %ecx
	cmpl	%ecx, -108(%ebp)
	jl	.L927
	.loc 1 2069 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L933
	movl	$8, -96(%ebp)
	jmp	.L935
.L933:
	movl	$4, -96(%ebp)
.L935:
	movl	-100(%ebp), %eax
	movl	$0, %edx
	divl	-96(%ebp)
	movl	%eax, -16(%ebp)
.L927:
	.loc 1 2070 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L936
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	mode_size@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L938
	movl	$8, -88(%ebp)
	jmp	.L940
.L938:
	movl	$4, -88(%ebp)
.L940:
	movl	-88(%ebp), %eax
	cmpl	%eax, -92(%ebp)
	jl	.L936
	.loc 1 2073 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	68(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, -84(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L942
	movl	$8, -80(%ebp)
	jmp	.L944
.L942:
	movl	$4, -80(%ebp)
.L944:
	movl	-84(%ebp), %eax
	movl	$0, %edx
	divl	-80(%ebp)
	movl	%eax, -20(%ebp)
.L936:
	.loc 1 2074 0
	movl	-16(%ebp), %eax
	movl	-32(%ebp), %edx
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	-28(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L945
	movl	-20(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	-32(%ebp), %eax
	addl	-24(%ebp), %eax
	cmpl	%eax, %edx
	jge	.L945
	.loc 1 2077 0
	leal	__FUNCTION__.13316@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2077, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L945:
.LBE76:
	.loc 1 2062 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L925:
	cmpl	$0, -40(%ebp)
	jne	.L926
.L914:
.LBE75:
	.loc 1 2037 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L912:
	cmpl	$0, -60(%ebp)
	jne	.L913
.L896:
.LBE73:
	.loc 1 2012 0
	addl	$1, -72(%ebp)
.L894:
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	num_subwebs@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-72(%ebp), %eax
	ja	.L895
	.loc 1 2081 0
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE55:
	.size	check_colors, .-check_colors
	.type	unalias_web, @function
unalias_web:
.LFB56:
	.loc 1 2089 0
	pushl	%ebp
.LCFI182:
	movl	%esp, %ebp
.LCFI183:
	pushl	%ebx
.LCFI184:
	subl	$20, %esp
.LCFI185:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2090 0
	movl	8(%ebp), %eax
	movl	$0, 216(%eax)
	.loc 1 2091 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-5, %eax
	movb	%al, 48(%edx)
	.loc 1 2092 0
	movl	8(%ebp), %eax
	movl	$-1, 40(%eax)
	.loc 1 2098 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$2, %eax
	movb	%al, 48(%edx)
	.loc 1 2099 0
	movl	web_lists@GOT(%ebx), %eax
	leal	40(%eax), %edx
	movl	8(%ebp), %eax
	movl	224(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 2103 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L952
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L952
	.loc 1 2104 0
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 2103 0
	jmp	.L956
.L952:
	.loc 1 2106 0
	movl	$8, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web_at_end
.L956:
	.loc 1 2107 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	unalias_web, .-unalias_web
	.section	.rodata
	.type	__FUNCTION__.13518, @object
	.size	__FUNCTION__.13518, 21
__FUNCTION__.13518:
	.string	"break_aliases_to_web"
.LC24:
	.string	" %d"
	.text
	.type	break_aliases_to_web, @function
break_aliases_to_web:
.LFB57:
	.loc 1 2118 0
	pushl	%ebp
.LCFI186:
	movl	%esp, %ebp
.LCFI187:
	pushl	%ebx
.LCFI188:
	subl	$52, %esp
.LCFI189:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2120 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$147456, %eax
	je	.L958
	.loc 1 2121 0
	leal	__FUNCTION__.13518@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2121, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L958:
	.loc 1 2122 0
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L960
.L961:
.LBB77:
	.loc 1 2124 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2125 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2129 0
	movl	-16(%ebp), %eax
	movl	216(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L962
	.loc 1 2131 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	unalias_web
	.loc 1 2132 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC24@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
.L962:
.LBE77:
	.loc 1 2122 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L960:
	cmpl	$0, -24(%ebp)
	jne	.L961
	.loc 1 2135 0
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 2136 0
	movl	8(%ebp), %eax
	movl	32(%eax), %edx
	movl	28(%eax), %eax
	movl	8(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
.LBB78:
	.loc 1 2144 0
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$116, %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-12(%ebp), %ecx
	addl	$8, %ecx
	movl	-8(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-12(%ebp), %ecx
	addl	$16, %ecx
	movl	-8(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE78:
	.loc 1 2145 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	andl	$-5, %eax
	movb	%al, 48(%edx)
	.loc 1 2146 0
	movl	8(%ebp), %eax
	movl	$0, 36(%eax)
	.loc 1 2147 0
	movl	8(%ebp), %edx
	movzbl	48(%edx), %eax
	orl	$2, %eax
	movb	%al, 48(%edx)
	.loc 1 2150 0
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L965
.L966:
	.loc 1 2151 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	216(%eax), %edx
	movzbl	48(%edx), %eax
	orl	$4, %eax
	movb	%al, 48(%edx)
	.loc 1 2150 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
.L965:
	cmpl	$0, -24(%ebp)
	jne	.L966
	.loc 1 2152 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	break_aliases_to_web, .-break_aliases_to_web
	.section	.rodata
	.type	__FUNCTION__.13554, @object
	.size	__FUNCTION__.13554, 23
__FUNCTION__.13554:
	.string	"break_precolored_alias"
	.text
	.type	break_precolored_alias, @function
break_precolored_alias:
.LFB58:
	.loc 1 2161 0
	pushl	%ebp
.LCFI190:
	movl	%esp, %ebp
.LCFI191:
	pushl	%edi
.LCFI192:
	pushl	%esi
.LCFI193:
	pushl	%ebx
.LCFI194:
	subl	$268, %esp
.LCFI195:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2162 0
	movl	8(%ebp), %eax
	movl	216(%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 2164 0
	movl	-64(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2165 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-56(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -52(%ebp)
	.loc 1 2166 0
	movl	-64(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L970
	.loc 1 2167 0
	leal	__FUNCTION__.13554@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2167, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L970:
	.loc 1 2168 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	unalias_web
	.loc 1 2172 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L972
.L973:
.LBB79:
	.loc 1 2174 0
	movl	-60(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	.loc 1 2180 0
	movl	-48(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L974
.LBB80:
	.loc 1 2184 0
	leal	-88(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	-28(%ebp), %eax
	addl	$16, %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LBE80:
	.loc 1 2185 0
	movl	$0, -40(%ebp)
	jmp	.L976
.L977:
	.loc 1 2186 0
	movl	-40(%ebp), %eax
	addl	-56(%ebp), %eax
	shrl	$6, %eax
	movl	%eax, -252(%ebp)
	movl	-88(%ebp,%eax,8), %edx
	movl	-84(%ebp,%eax,8), %ecx
	movl	%edx, -248(%ebp)
	movl	%ecx, -244(%ebp)
	movl	-40(%ebp), %eax
	addl	-56(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1034
	movl	%esi, %edi
	xorl	%esi, %esi
.L1034:
	movl	-248(%ebp), %eax
	orl	%esi, %eax
	movl	-244(%ebp), %edx
	orl	%edi, %edx
	movl	-252(%ebp), %ecx
	movl	%eax, -88(%ebp,%ecx,8)
	movl	%edx, -84(%ebp,%ecx,8)
	.loc 1 2185 0
	addl	$1, -40(%ebp)
.L976:
	movl	-40(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L977
	.loc 1 2187 0
	movl	-48(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L979
.L980:
	.loc 1 2188 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L981
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L981
	.loc 1 2189 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -236(%ebp)
	movl	-88(%ebp,%eax,8), %esi
	movl	-84(%ebp,%eax,8), %edi
	movl	%esi, -232(%ebp)
	movl	%edi, -228(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1033
	movl	%eax, %edx
	xorl	%eax, %eax
.L1033:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-232(%ebp), %eax
	andl	%esi, %eax
	movl	-228(%ebp), %edx
	andl	%edi, %edx
	movl	-236(%ebp), %edi
	movl	%eax, -88(%ebp,%edi,8)
	movl	%edx, -84(%ebp,%edi,8)
.L981:
	.loc 1 2187 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L979:
	cmpl	$0, -36(%ebp)
	jne	.L980
	.loc 1 2192 0
	movl	-48(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L985
.L986:
	.loc 1 2193 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L987
	.loc 1 2194 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -220(%ebp)
	movl	-88(%ebp,%eax,8), %edx
	movl	-84(%ebp,%eax,8), %ecx
	movl	%edx, -216(%ebp)
	movl	%ecx, -212(%ebp)
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1032
	movl	%eax, %edx
	xorl	%eax, %eax
.L1032:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-216(%ebp), %eax
	andl	%esi, %eax
	movl	-212(%ebp), %edx
	andl	%edi, %edx
	movl	-220(%ebp), %ecx
	movl	%eax, -88(%ebp,%ecx,8)
	movl	%edx, -84(%ebp,%ecx,8)
.L987:
	.loc 1 2192 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L985:
	cmpl	$0, -36(%ebp)
	jne	.L986
	.loc 1 2197 0
	movl	$0, -44(%ebp)
	.loc 1 2198 0
	movl	$0, -40(%ebp)
	jmp	.L990
.L991:
	.loc 1 2199 0
	movl	-40(%ebp), %eax
	addl	-56(%ebp), %eax
	shrl	$6, %eax
	movl	-88(%ebp,%eax,8), %esi
	movl	-84(%ebp,%eax,8), %edi
	movl	-40(%ebp), %eax
	addl	-56(%ebp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1031
	movl	%edx, %eax
	xorl	%edx, %edx
.L1031:
	andl	$1, %eax
	testl	%eax, %eax
	je	.L992
.LBB81:
	.loc 1 2202 0
	movl	-40(%ebp), %eax
	movl	-56(%ebp), %edx
	addl	%eax, %edx
	movl	hardreg2web@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2203 0
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -208(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -204(%ebp)
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -200(%ebp)
	movl	%edi, -196(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1029
	movl	%eax, %edx
	xorl	%eax, %eax
.L1029:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-200(%ebp), %eax
	andl	%esi, %eax
	movl	-196(%ebp), %edx
	andl	%edi, %edx
	movl	-204(%ebp), %edi
	movl	-208(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2204 0
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -192(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -188(%ebp)
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -184(%ebp)
	movl	%edi, -180(%ebp)
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1030
	movl	%eax, %edx
	xorl	%eax, %eax
.L1030:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-184(%ebp), %eax
	andl	%esi, %eax
	movl	-180(%ebp), %edx
	andl	%edi, %edx
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2205 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -172(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L994
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	shrl	$6, %esi
	movl	%esi, -168(%ebp)
	jmp	.L996
.L994:
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -168(%ebp)
.L996:
	movl	-168(%ebp), %eax
	movl	%eax, -164(%ebp)
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -160(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L997
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -156(%ebp)
	jmp	.L999
.L997:
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -156(%ebp)
.L999:
	movl	-156(%ebp), %eax
	movl	-160(%ebp), %edi
	movl	12(%edi,%eax,8), %esi
	movl	16(%edi,%eax,8), %edi
	movl	%esi, -152(%ebp)
	movl	%edi, -148(%ebp)
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1000
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1028
	movl	%eax, %edx
	xorl	%eax, %eax
.L1028:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -144(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -140(%ebp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
	jmp	.L1002
.L1000:
	movl	-48(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1027
	movl	%eax, %edx
	xorl	%eax, %eax
.L1027:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -144(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -140(%ebp)
	movl	-144(%ebp), %eax
	movl	-140(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edx, -140(%ebp)
.L1002:
	movl	-152(%ebp), %eax
	andl	-144(%ebp), %eax
	movl	-148(%ebp), %edx
	andl	-140(%ebp), %edx
	movl	-164(%ebp), %ecx
	movl	-172(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
	.loc 1 2206 0
	movl	-48(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1003
.L1004:
	.loc 1 2207 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1005
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -128(%ebp)
	jmp	.L1007
.L1005:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -128(%ebp)
.L1007:
	movl	-128(%ebp), %ecx
	movl	%ecx, -124(%ebp)
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1008
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	shrl	$6, %esi
	movl	%esi, -116(%ebp)
	jmp	.L1010
.L1008:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -116(%ebp)
.L1010:
	movl	-116(%ebp), %eax
	movl	-120(%ebp), %ecx
	movl	12(%ecx,%eax,8), %edx
	movl	16(%ecx,%eax,8), %ecx
	movl	%edx, -112(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1011
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1026
	movl	%eax, %edx
	xorl	%eax, %eax
.L1026:
	movl	%eax, %esi
	notl	%esi
	movl	%esi, -104(%ebp)
	movl	%edx, %edi
	notl	%edi
	movl	%edi, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	jmp	.L1013
.L1011:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1025
	movl	%eax, %edx
	xorl	%eax, %eax
.L1025:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -104(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
.L1013:
	movl	-112(%ebp), %eax
	andl	-104(%ebp), %eax
	movl	-108(%ebp), %edx
	andl	-100(%ebp), %edx
	movl	-124(%ebp), %ecx
	movl	-132(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
	.loc 1 2206 0
	movl	-24(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -24(%ebp)
.L1003:
	cmpl	$0, -24(%ebp)
	jne	.L1004
.L992:
.LBE81:
	.loc 1 2198 0
	addl	$1, -40(%ebp)
.L990:
	movl	-40(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jb	.L991
	.loc 1 2209 0
	cmpl	$0, -44(%ebp)
	je	.L974
	.loc 1 2211 0
	movl	-48(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -32(%ebp)
	.loc 1 2212 0
	jmp	.L1023
.L1017:
.LBB82:
	.loc 1 2214 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2215 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1018
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	shrl	$6, %eax
	movl	-88(%ebp,%eax,8), %esi
	movl	-84(%ebp,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	.L1024
	movl	%edx, %eax
	xorl	%edx, %edx
.L1024:
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1020
.L1018:
	.loc 1 2216 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2215 0
	jmp	.L1016
.L1020:
	.loc 1 2218 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
.L1016:
.L1023:
.LBE82:
	.loc 1 2212 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1017
.L974:
.LBE79:
	.loc 1 2172 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
.L972:
	cmpl	$0, -60(%ebp)
	jne	.L973
	.loc 1 2221 0
	addl	$268, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE58:
	.size	break_precolored_alias, .-break_precolored_alias
	.section	.rodata
	.align 32
	.type	__FUNCTION__.13886, @object
	.size	__FUNCTION__.13886, 32
__FUNCTION__.13886:
	.string	"restore_conflicts_from_coalesce"
	.text
	.type	restore_conflicts_from_coalesce, @function
restore_conflicts_from_coalesce:
.LFB59:
	.loc 1 2230 0
	pushl	%ebp
.LCFI196:
	movl	%esp, %ebp
.LCFI197:
	pushl	%edi
.LCFI198:
	pushl	%esi
.LCFI199:
	pushl	%ebx
.LCFI200:
	subl	$220, %esp
.LCFI201:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2233 0
	movl	8(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -60(%ebp)
	.loc 1 2237 0
	movl	8(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L1113
	.loc 1 2239 0
	jmp	.L1114
.L1039:
.LBB83:
	.loc 1 2241 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -52(%ebp)
	.loc 1 2242 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1040
.L1041:
	.loc 1 2243 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-52(%ebp), %eax
	je	.L1042
	.loc 1 2242 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1040:
	cmpl	$0, -56(%ebp)
	jne	.L1041
.L1042:
	.loc 1 2245 0
	cmpl	$0, -56(%ebp)
	je	.L1044
	.loc 1 2249 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L1038
.L1044:
.LBB84:
	.loc 1 2258 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
	.loc 1 2259 0
	movl	-56(%ebp), %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2260 0
	movl	-52(%ebp), %eax
	movzbl	49(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L1046
	movl	-52(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1046
	.loc 1 2261 0
	leal	__FUNCTION__.13886@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2261, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1046:
	.loc 1 2262 0
	movl	-52(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L1049
.L1050:
	.loc 1 2263 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L1051
	.loc 1 2262 0
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
.L1049:
	cmpl	$0, -44(%ebp)
	jne	.L1050
.L1051:
	.loc 1 2265 0
	cmpl	$0, -44(%ebp)
	je	.L1053
	.loc 1 2266 0
	leal	__FUNCTION__.13886@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2266, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1053:
	.loc 1 2267 0
	movl	-52(%ebp), %eax
	addl	$80, %eax
	movl	%eax, -48(%ebp)
	.loc 1 2268 0
	jmp	.L1055
.L1056:
	.loc 1 2270 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1057
	.loc 1 2272 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2273 0
	movl	-44(%ebp), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2274 0
	jmp	.L1059
.L1057:
	.loc 1 2278 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
.L1055:
	.loc 1 2268 0
	movl	-48(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1056
.L1059:
	.loc 1 2281 0
	cmpl	$0, -44(%ebp)
	jne	.L1060
	movl	-52(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1060
	.loc 1 2282 0
	leal	__FUNCTION__.13886@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2282, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1060:
	.loc 1 2284 0
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -212(%ebp)
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -208(%ebp)
	movl	%edi, -204(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1121
	movl	%eax, %edx
	xorl	%eax, %eax
.L1121:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-208(%ebp), %eax
	andl	%esi, %eax
	movl	-204(%ebp), %edx
	andl	%edi, %edx
	movl	-212(%ebp), %edi
	movl	-216(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2285 0
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -200(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -196(%ebp)
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	%ecx, %eax
	movl	12(%edx,%eax,8), %esi
	movl	16(%edx,%eax,8), %edi
	movl	%esi, -192(%ebp)
	movl	%edi, -188(%ebp)
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1122
	movl	%eax, %edx
	xorl	%eax, %eax
.L1122:
	movl	%eax, %esi
	notl	%esi
	movl	%edx, %edi
	notl	%edi
	movl	-192(%ebp), %eax
	andl	%esi, %eax
	movl	-188(%ebp), %edx
	andl	%edi, %edx
	movl	-196(%ebp), %edi
	movl	-200(%ebp), %ecx
	movl	%eax, 12(%ecx,%edi,8)
	movl	%edx, 16(%ecx,%edi,8)
	.loc 1 2286 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1063
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	shrl	$6, %esi
	movl	%esi, -176(%ebp)
	jmp	.L1065
.L1063:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -176(%ebp)
.L1065:
	movl	-176(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1066
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -164(%ebp)
	jmp	.L1068
.L1066:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -164(%ebp)
.L1068:
	movl	-164(%ebp), %eax
	movl	-168(%ebp), %edi
	movl	12(%edi,%eax,8), %esi
	movl	16(%edi,%eax,8), %edi
	movl	%esi, -160(%ebp)
	movl	%edi, -156(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1069
	movl	-52(%ebp), %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1120
	movl	%eax, %edx
	xorl	%eax, %eax
.L1120:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -152(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
	jmp	.L1071
.L1069:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1119
	movl	%eax, %edx
	xorl	%eax, %eax
.L1119:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -152(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -148(%ebp)
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %edx
	movl	%eax, -152(%ebp)
	movl	%edx, -148(%ebp)
.L1071:
	movl	-160(%ebp), %eax
	andl	-152(%ebp), %eax
	movl	-156(%ebp), %edx
	andl	-148(%ebp), %edx
	movl	-172(%ebp), %ecx
	movl	-180(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
	.loc 1 2287 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1072
.L1073:
	.loc 1 2288 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -140(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1074
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -136(%ebp)
	jmp	.L1076
.L1074:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -136(%ebp)
.L1076:
	movl	-136(%ebp), %ecx
	movl	%ecx, -132(%ebp)
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -128(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1077
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	shrl	$6, %esi
	movl	%esi, -124(%ebp)
	jmp	.L1079
.L1077:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -124(%ebp)
.L1079:
	movl	-124(%ebp), %eax
	movl	-128(%ebp), %ecx
	movl	12(%ecx,%eax,8), %edx
	movl	16(%ecx,%eax,8), %ecx
	movl	%edx, -120(%ebp)
	movl	%ecx, -116(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1080
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1118
	movl	%eax, %edx
	xorl	%eax, %eax
.L1118:
	movl	%eax, %esi
	notl	%esi
	movl	%esi, -112(%ebp)
	movl	%edx, %edi
	notl	%edi
	movl	%edi, -108(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	jmp	.L1082
.L1080:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1117
	movl	%eax, %edx
	xorl	%eax, %eax
.L1117:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -112(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -108(%ebp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
.L1082:
	movl	-120(%ebp), %eax
	andl	-112(%ebp), %eax
	movl	-116(%ebp), %edx
	andl	-108(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	-140(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
	.loc 1 2287 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1072:
	cmpl	$0, -40(%ebp)
	jne	.L1073
	.loc 1 2289 0
	movl	-52(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1038
	.loc 1 2291 0
	movl	-44(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	.L1085
.L1086:
	.loc 1 2292 0
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1087
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -96(%ebp)
	jmp	.L1089
.L1087:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$6, %edx
	movl	%edx, -96(%ebp)
.L1089:
	movl	-96(%ebp), %ecx
	movl	%ecx, -92(%ebp)
	movl	igraph@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -88(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1090
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	shrl	$6, %esi
	movl	%esi, -84(%ebp)
	jmp	.L1092
.L1090:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edi
	shrl	$6, %edi
	movl	%edi, -84(%ebp)
.L1092:
	movl	-84(%ebp), %eax
	movl	-88(%ebp), %ecx
	movl	12(%ecx,%eax,8), %edx
	movl	16(%ecx,%eax,8), %ecx
	movl	%edx, -80(%ebp)
	movl	%ecx, -76(%ebp)
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1093
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1116
	movl	%eax, %edx
	xorl	%eax, %eax
.L1116:
	movl	%eax, %esi
	notl	%esi
	movl	%esi, -72(%ebp)
	movl	%edx, %edi
	notl	%edi
	movl	%edi, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	jmp	.L1095
.L1093:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edx
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	imull	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	shldl	%eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	.L1115
	movl	%eax, %edx
	xorl	%eax, %eax
.L1115:
	movl	%eax, %ecx
	notl	%ecx
	movl	%ecx, -72(%ebp)
	movl	%edx, %esi
	notl	%esi
	movl	%esi, -68(%ebp)
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
.L1095:
	movl	-80(%ebp), %eax
	andl	-72(%ebp), %eax
	movl	-76(%ebp), %edx
	andl	-68(%ebp), %edx
	movl	-92(%ebp), %ecx
	movl	-100(%ebp), %esi
	movl	%eax, 12(%esi,%ecx,8)
	movl	%edx, 16(%esi,%ecx,8)
	.loc 1 2291 0
	movl	-40(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -40(%ebp)
.L1085:
	cmpl	$0, -40(%ebp)
	jne	.L1086
.L1038:
.L1114:
.LBE84:
.LBE83:
	.loc 1 2239 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L1039
.LBB85:
	.loc 1 2298 0
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	addl	$116, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-36(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-36(%ebp), %ecx
	addl	$8, %ecx
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-36(%ebp), %ecx
	addl	$16, %ecx
	movl	-32(%ebp), %eax
	addl	$16, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
.LBE85:
	.loc 1 2303 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -56(%ebp)
	jmp	.L1097
.L1098:
	.loc 1 2304 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L1099
.LBB86:
	.loc 1 2307 0
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	216(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L1101
.L1102:
	.loc 1 2309 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L1103
	.loc 1 2310 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	record_conflict@PLT
	jmp	.L1105
.L1103:
.LBB87:
	.loc 1 2314 0
	movl	-56(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L1106
.L1107:
.LBB88:
	.loc 1 2316 0
	movl	$0, -20(%ebp)
	.loc 1 2317 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	jne	.L1108
	.loc 1 2318 0
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	68(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	find_subweb@PLT
	movl	%eax, -20(%ebp)
.L1108:
	.loc 1 2319 0
	cmpl	$0, -20(%ebp)
	jne	.L1110
	.loc 1 2320 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1110:
	.loc 1 2321 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	record_conflict@PLT
.LBE88:
	.loc 1 2314 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L1106:
	cmpl	$0, -24(%ebp)
	jne	.L1107
.L1105:
.LBE87:
	.loc 1 2324 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$163840, %eax
	jne	.L1099
	.loc 1 2307 0
	movl	-28(%ebp), %eax
	movl	216(%eax), %eax
	movl	%eax, -28(%ebp)
.L1101:
	cmpl	$0, -28(%ebp)
	jne	.L1102
.L1099:
.LBE86:
	.loc 1 2303 0
	movl	-56(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L1097:
	cmpl	$0, -56(%ebp)
	jne	.L1098
.L1113:
	.loc 1 2328 0
	addl	$220, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE59:
	.size	restore_conflicts_from_coalesce, .-restore_conflicts_from_coalesce
	.section	.rodata
.LC25:
	.string	"after alias-breaking"
	.text
	.type	break_coalesced_spills, @function
break_coalesced_spills:
.LFB60:
	.loc 1 2336 0
	pushl	%ebp
.LCFI202:
	movl	%esp, %ebp
.LCFI203:
	pushl	%ebx
.LCFI204:
	subl	$52, %esp
.LCFI205:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2337 0
	movl	$0, -24(%ebp)
.L1124:
.LBB89:
	.loc 1 2342 0
	movl	web_lists@GOT(%ebx), %eax
	movl	36(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L1125
.L1126:
	.loc 1 2343 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	48(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L1127
	.loc 1 2342 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
.L1125:
	cmpl	$0, -20(%ebp)
	jne	.L1126
.L1127:
	.loc 1 2345 0
	cmpl	$0, -20(%ebp)
	je	.L1129
	.loc 1 2347 0
	movl	$1, -24(%ebp)
	.loc 1 2348 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2349 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 2350 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	restore_conflicts_from_coalesce
	.loc 1 2351 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	break_aliases_to_web
	.loc 1 2358 0
	call	insert_coalesced_conflicts
	.loc 1 2359 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$16, (%esp)
	call	ra_debug_msg@PLT
	.loc 1 2360 0
	movl	web_lists@GOT(%ebx), %eax
	leal	36(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_list@PLT
	.loc 1 2361 0
	movl	$8, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	put_web@PLT
	.loc 1 2362 0
	movl	-16(%ebp), %eax
	movl	$-1, 40(%eax)
	.loc 1 2363 0
	jmp	.L1131
.L1132:
	.loc 1 2365 0
	movl	web_lists@GOT(%ebx), %eax
	leal	32(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2366 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	colorize_one_web
.L1131:
	.loc 1 2363 0
	movl	web_lists@GOT(%ebx), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	jne	.L1132
	.loc 1 2368 0
	jmp	.L1124
.L1129:
.LBE89:
	.loc 1 2369 0
	cmpl	$0, -24(%ebp)
	je	.L1134
.LBB90:
	.loc 1 2372 0
	movl	web_lists@GOT(%ebx), %eax
	movl	40(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1136
.L1137:
.LBB91:
	.loc 1 2374 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -8(%ebp)
	.loc 1 2375 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, 40(%edx)
.LBE91:
	.loc 1 2372 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L1136:
	cmpl	$0, -12(%ebp)
	jne	.L1137
.L1134:
.LBE90:
	.loc 1 2378 0
	leal	.LC25@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_graph_cost@PLT
	.loc 1 2379 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE60:
	.size	break_coalesced_spills, .-break_coalesced_spills
	.type	init_web_pairs, @function
init_web_pairs:
.LFB61:
	.loc 1 2404 0
	pushl	%ebp
.LCFI206:
	movl	%esp, %ebp
.LCFI207:
	pushl	%ebx
.LCFI208:
	subl	$20, %esp
.LCFI209:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2405 0
	leal	web_pair_hash@GOTOFF(%ebx), %edx
	movl	$32768, %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	memset@PLT
	.loc 1 2406 0
	movl	$0, num_web_pairs@GOTOFF(%ebx)
	.loc 1 2407 0
	movl	$0, web_pair_list@GOTOFF(%ebx)
	.loc 1 2408 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE61:
	.size	init_web_pairs, .-init_web_pairs
	.type	add_web_pair_cost, @function
add_web_pair_cost:
.LFB62:
	.loc 1 2419 0
	pushl	%ebp
.LCFI210:
	movl	%esp, %ebp
.LCFI211:
	pushl	%ebx
.LCFI212:
	subl	$36, %esp
.LCFI213:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2422 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1142
.LBB92:
	.loc 1 2424 0
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2425 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
	.loc 1 2426 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
.L1142:
.LBE92:
	.loc 1 2428 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	andl	$8191, %eax
	movl	%eax, -20(%ebp)
	.loc 1 2429 0
	movl	-20(%ebp), %eax
	movl	web_pair_hash@GOTOFF(%ebx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	jmp	.L1144
.L1145:
	.loc 1 2430 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L1146
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L1146
	.loc 1 2432 0
	movl	-16(%ebp), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	.loc 1 2433 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	addl	24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 2434 0
	jmp	.L1151
.L1146:
	.loc 1 2429 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
.L1144:
	cmpl	$0, -16(%ebp)
	jne	.L1145
	.loc 1 2436 0
	movl	$28, (%esp)
	call	ra_alloc@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2437 0
	movl	-20(%ebp), %eax
	movl	web_pair_hash@GOTOFF(%ebx,%eax,4), %edx
	movl	-16(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 2438 0
	movl	web_pair_list@GOTOFF(%ebx), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 2439 0
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 2440 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 2441 0
	movl	-16(%ebp), %edx
	movl	24(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 2442 0
	movl	-16(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	.loc 1 2443 0
	movl	-20(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, web_pair_hash@GOTOFF(%ebx,%edx,4)
	.loc 1 2444 0
	movl	-16(%ebp), %eax
	movl	%eax, web_pair_list@GOTOFF(%ebx)
	.loc 1 2445 0
	movl	num_web_pairs@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, num_web_pairs@GOTOFF(%ebx)
.L1151:
	.loc 1 2446 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE62:
	.size	add_web_pair_cost, .-add_web_pair_cost
	.type	comp_web_pairs, @function
comp_web_pairs:
.LFB63:
	.loc 1 2455 0
	pushl	%ebp
.LCFI214:
	movl	%esp, %ebp
.LCFI215:
	subl	$56, %esp
.LCFI216:
	.loc 1 2456 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2457 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 2458 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L1153
	.loc 1 2459 0
	movl	$-1, -52(%ebp)
	jmp	.L1155
.L1153:
	.loc 1 2460 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %edx
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1156
	.loc 1 2461 0
	movl	$1, -52(%ebp)
	jmp	.L1155
.L1156:
	.loc 1 2462 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	%ecx, -44(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -40(%ebp)
	movl	%ecx, -36(%ebp)
	movl	-36(%ebp), %ecx
	cmpl	%ecx, -44(%ebp)
	jb	.L1158
	movl	-36(%ebp), %eax
	cmpl	%eax, -44(%ebp)
	ja	.L1160
	movl	-40(%ebp), %edx
	cmpl	%edx, -48(%ebp)
	jbe	.L1158
.L1160:
	.loc 1 2463 0
	movl	$-1, -52(%ebp)
	jmp	.L1155
.L1158:
	.loc 1 2464 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %ecx
	cmpl	%ecx, -28(%ebp)
	ja	.L1161
	movl	-20(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jb	.L1163
	movl	-24(%ebp), %edx
	cmpl	%edx, -32(%ebp)
	jae	.L1161
.L1163:
	.loc 1 2465 0
	movl	$1, -52(%ebp)
	jmp	.L1155
.L1161:
	.loc 1 2467 0
	movl	$0, -52(%ebp)
.L1155:
	movl	-52(%ebp), %eax
	.loc 1 2468 0
	leave
	ret
.LFE63:
	.size	comp_web_pairs, .-comp_web_pairs
	.section	.rodata
	.type	__FUNCTION__.14420, @object
	.size	__FUNCTION__.14420, 27
__FUNCTION__.14420:
	.string	"sort_and_combine_web_pairs"
	.text
	.type	sort_and_combine_web_pairs, @function
sort_and_combine_web_pairs:
.LFB64:
	.loc 1 2476 0
	pushl	%ebp
.LCFI217:
	movl	%esp, %ebp
.LCFI218:
	pushl	%edi
.LCFI219:
	pushl	%esi
.LCFI220:
	pushl	%ebx
.LCFI221:
	subl	$76, %esp
.LCFI222:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2480 0
	movl	num_web_pairs@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1192
	.loc 1 2482 0
	movl	num_web_pairs@GOTOFF(%ebx), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -36(%ebp)
	.loc 1 2483 0
	movl	web_pair_list@GOTOFF(%ebx), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L1168
.L1169:
	.loc 1 2484 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
	.loc 1 2483 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
.L1168:
	cmpl	$0, -32(%ebp)
	jne	.L1169
	.loc 1 2485 0
	movl	num_web_pairs@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	je	.L1171
	.loc 1 2486 0
	leal	__FUNCTION__.14420@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2486, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1171:
	.loc 1 2487 0
	movl	num_web_pairs@GOTOFF(%ebx), %eax
	leal	comp_web_pairs@GOTOFF(%ebx), %edx
	movl	%edx, 12(%esp)
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 2492 0
	movl	$0, -40(%ebp)
	jmp	.L1173
.L1174:
.LBB93:
	.loc 1 2495 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2496 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2497 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2498 0
	cmpl	$0, 8(%ebp)
	jne	.L1175
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1177
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1177
.L1175:
	.loc 1 2500 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1179
.LBB94:
	.loc 1 2502 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2503 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2504 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1179:
.LBE94:
	.loc 1 2506 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L1177
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1195
	movl	%edi, %esi
	xorl	%edi, %edi
.L1195:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1177
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1194
	movl	%edi, %esi
	xorl	%edi, %edi
.L1194:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1177
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1177
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	-28(%ebp), %edx
	addl	$92, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hard_regs_intersect_p@PLT
	testl	%eax, %eax
	je	.L1177
	.loc 1 2512 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1186
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1188
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ok
	testl	%eax, %eax
	je	.L1188
.L1186:
	.loc 1 2514 0
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	combine
	.loc 1 2512 0
	jmp	.L1177
.L1188:
	.loc 1 2515 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1177
	.loc 1 2516 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	164(%eax,%edx,8), %esi
	movl	168(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1193
	movl	%esi, %edi
	xorl	%esi, %esi
.L1193:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 164(%ecx,%edi,8)
	movl	%edx, 168(%ecx,%edi,8)
.L1177:
.LBE93:
	.loc 1 2492 0
	addl	$1, -40(%ebp)
.L1173:
	movl	num_web_pairs@GOTOFF(%ebx), %eax
	cmpl	%eax, -40(%ebp)
	jb	.L1174
	.loc 1 2519 0
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1192:
	.loc 1 2520 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE64:
	.size	sort_and_combine_web_pairs, .-sort_and_combine_web_pairs
	.type	aggressive_coalesce, @function
aggressive_coalesce:
.LFB65:
	.loc 1 2527 0
	pushl	%ebp
.LCFI223:
	movl	%esp, %ebp
.LCFI224:
	pushl	%edi
.LCFI225:
	pushl	%esi
.LCFI226:
	pushl	%ebx
.LCFI227:
	subl	$76, %esp
.LCFI228:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2530 0
	call	init_web_pairs
	.loc 1 2531 0
	jmp	.L1215
.L1198:
	.loc 1 2532 0
	movl	-36(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	je	.L1197
.LBB95:
	.loc 1 2534 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -28(%ebp)
	.loc 1 2535 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2536 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1200
.LBB96:
	.loc 1 2538 0
	movl	-28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 2539 0
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 2540 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
.L1200:
.LBE96:
	.loc 1 2542 0
	movl	-28(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L1202
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1202
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1218
	movl	%edi, %esi
	xorl	%edi, %edi
.L1218:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1202
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1217
	movl	%edi, %esi
	xorl	%edi, %edi
.L1217:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1202
	.loc 1 2547 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1207
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ok
	testl	%eax, %eax
	jne	.L1209
.L1207:
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1210
.L1209:
	.loc 1 2550 0
	movl	$1, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
	.loc 1 2551 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	28(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	$0, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	add_web_pair_cost
	.loc 1 2547 0
	jmp	.L1197
.L1210:
	.loc 1 2554 0
	movl	-28(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1197
	.loc 1 2559 0
	movl	$2, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
	.loc 1 2560 0
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	shrl	$6, %eax
	movl	%eax, -60(%ebp)
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	164(%eax,%edx,8), %esi
	movl	168(%eax,%edx,8), %edi
	movl	%esi, -56(%ebp)
	movl	%edi, -52(%ebp)
	movl	-28(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$1, %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	shldl	%esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	.L1216
	movl	%esi, %edi
	xorl	%esi, %esi
.L1216:
	movl	-56(%ebp), %eax
	orl	%esi, %eax
	movl	-52(%ebp), %edx
	orl	%edi, %edx
	movl	-24(%ebp), %ecx
	movl	-60(%ebp), %edi
	movl	%eax, 164(%ecx,%edi,8)
	movl	%edx, 168(%ecx,%edi,8)
	.loc 1 2542 0
	jmp	.L1197
.L1202:
	.loc 1 2565 0
	movl	$2, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	put_move
.L1197:
.L1215:
.LBE95:
	.loc 1 2531 0
	leal	mv_worklist@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -36(%ebp)
	cmpl	$0, -36(%ebp)
	jne	.L1198
	.loc 1 2568 0
	movl	$1, (%esp)
	call	sort_and_combine_web_pairs
	.loc 1 2569 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE65:
	.size	aggressive_coalesce, .-aggressive_coalesce
	.type	extended_coalesce_2, @function
extended_coalesce_2:
.LFB66:
	.loc 1 2586 0
	pushl	%ebp
.LCFI229:
	movl	%esp, %ebp
.LCFI230:
	pushl	%edi
.LCFI231:
	pushl	%esi
.LCFI232:
	pushl	%ebx
.LCFI233:
	subl	$76, %esp
.LCFI234:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2590 0
	call	init_web_pairs
	.loc 1 2591 0
	call	get_insns@PLT
	movl	%eax, -32(%ebp)
	jmp	.L1220
.L1221:
	.loc 1 2592 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	jne	.L1222
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	insn_df@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	(%edx), %eax
	movl	%eax, -48(%ebp)
	movl	4(%edx), %eax
	movl	%eax, -44(%ebp)
	movl	8(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	12(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	-48(%ebp), %eax
	testl	%eax, %eax
	je	.L1222
	.loc 1 2593 0
	movl	$0, -28(%ebp)
	jmp	.L1225
.L1226:
.LBB97:
	.loc 1 2595 0
	movl	-40(%ebp), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	def2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2596 0
	movl	-24(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1227
	movl	-24(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -68(%ebp)
	jmp	.L1229
.L1227:
	movl	-24(%ebp), %eax
	movl	%eax, -68(%ebp)
.L1229:
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2597 0
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1230
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1230
.LBB98:
	.loc 1 2600 0
	movl	$0, -20(%ebp)
	jmp	.L1233
.L1234:
.LBB99:
	.loc 1 2602 0
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	use2web@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2603 0
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	.L1235
	movl	-16(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, (%esp)
	call	find_web_for_subweb_1@PLT
	movl	%eax, -64(%ebp)
	jmp	.L1237
.L1235:
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
.L1237:
	movl	-64(%ebp), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -16(%ebp)
	.loc 1 2604 0
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1238
	movl	-16(%ebp), %eax
	cmpl	-24(%ebp), %eax
	je	.L1238
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	max_normal_pseudo@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jae	.L1238
	movl	-16(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %edx
	movl	-24(%ebp), %eax
	movl	68(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L1238
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1249
	movl	%edi, %esi
	xorl	%edi, %edi
.L1249:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1238
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-16(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1248
	movl	%edi, %esi
	xorl	%edi, %edi
.L1248:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1238
	movl	-24(%ebp), %eax
	addl	$92, %eax
	movl	-16(%ebp), %edx
	addl	$92, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	hard_regs_intersect_p@PLT
	testl	%eax, %eax
	je	.L1238
	.loc 1 2617 0
	movl	-24(%ebp), %eax
	movl	56(%eax), %edx
	movl	-16(%ebp), %eax
	movl	56(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	movl	-32(%ebp), %eax
	movl	28(%eax), %eax
	movl	72(%eax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	movl	%ecx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	add_web_pair_cost
.L1238:
.LBE99:
	.loc 1 2600 0
	addl	$1, -20(%ebp)
.L1233:
	movl	-44(%ebp), %eax
	cmpl	-20(%ebp), %eax
	ja	.L1234
.L1230:
.LBE98:
.LBE97:
	.loc 1 2593 0
	addl	$1, -28(%ebp)
.L1225:
	movl	-48(%ebp), %eax
	cmpl	-28(%ebp), %eax
	ja	.L1226
.L1222:
	.loc 1 2591 0
	movl	-32(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -32(%ebp)
.L1220:
	cmpl	$0, -32(%ebp)
	jne	.L1221
	.loc 1 2624 0
	movl	$0, (%esp)
	call	sort_and_combine_web_pairs
	.loc 1 2625 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE66:
	.size	extended_coalesce_2, .-extended_coalesce_2
	.section	.rodata
	.type	__FUNCTION__.14776, @object
	.size	__FUNCTION__.14776, 24
__FUNCTION__.14776:
	.string	"check_uncoalesced_moves"
	.text
	.type	check_uncoalesced_moves, @function
check_uncoalesced_moves:
.LFB67:
	.loc 1 2631 0
	pushl	%ebp
.LCFI235:
	movl	%esp, %ebp
.LCFI236:
	pushl	%edi
.LCFI237:
	pushl	%esi
.LCFI238:
	pushl	%ebx
.LCFI239:
	subl	$44, %esp
.LCFI240:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2634 0
	movl	wl_moves@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L1251
.L1252:
	.loc 1 2635 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	je	.L1253
.LBB100:
	.loc 1 2637 0
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -24(%ebp)
	.loc 1 2638 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	alias@PLT
	movl	%eax, -20(%ebp)
	.loc 1 2639 0
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1255
.LBB101:
	.loc 1 2641 0
	movl	-24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 2642 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 2643 0
	movl	-16(%ebp), %eax
	movl	%eax, -20(%ebp)
.L1255:
.LBE101:
	.loc 1 2645 0
	movl	-24(%ebp), %eax
	cmpl	-20(%ebp), %eax
	je	.L1253
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$2, %eax
	je	.L1253
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	.L1253
	movl	-20(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1253
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	jne	.L1261
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ok
	testl	%eax, %eax
	jne	.L1263
.L1261:
	movl	-24(%ebp), %eax
	movl	48(%eax), %eax
	andl	$507904, %eax
	cmpl	$32768, %eax
	je	.L1253
.L1263:
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1269
	movl	%edi, %esi
	xorl	%edi, %edi
.L1269:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1253
	movl	sup_igraph@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	shrl	$6, %eax
	movl	12(%ecx,%eax,8), %esi
	movl	16(%ecx,%eax,8), %edi
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	num_webs@GOT(%ebx), %eax
	movl	(%eax), %eax
	imull	%eax, %edx
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	shrdl	%edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	je	.L1268
	movl	%edi, %esi
	xorl	%edi, %edi
.L1268:
	movl	%esi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	andl	$0, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L1253
	.loc 1 2655 0
	leal	__FUNCTION__.14776@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$2655, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L1253:
.LBE100:
	.loc 1 2634 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
.L1251:
	cmpl	$0, -32(%ebp)
	jne	.L1252
	.loc 1 2657 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE67:
	.size	check_uncoalesced_moves, .-check_uncoalesced_moves
	.section	.rodata
.LC26:
	.string	"initially"
.LC27:
	.string	"after spill-recolor"
	.text
.globl ra_colorize_graph
	.type	ra_colorize_graph, @function
ra_colorize_graph:
.LFB68:
	.loc 1 2666 0
	pushl	%ebp
.LCFI241:
	movl	%esp, %ebp
.LCFI242:
	pushl	%ebx
.LCFI243:
	subl	$20, %esp
.LCFI244:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2667 0
	movl	rtl_dump_file@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1271
	.loc 1 2668 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	dump_igraph@PLT
.L1271:
	.loc 1 2669 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	build_worklists
	.loc 1 2672 0
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1292
	.loc 1 2674 0
	call	aggressive_coalesce
	.loc 1 2675 0
	call	extended_coalesce_2
	jmp	.L1292
.L1273:
.L1292:
	.loc 1 2681 0
	call	simplify
	.loc 1 2682 0
	movl	mv_worklist@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L1275
	.loc 1 2683 0
	call	coalesce
	jmp	.L1277
.L1275:
	.loc 1 2684 0
	movl	web_lists@GOT(%ebx), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L1278
	.loc 1 2685 0
	call	freeze
	jmp	.L1277
.L1278:
	.loc 1 2686 0
	movl	web_lists@GOT(%ebx), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L1277
	.loc 1 2687 0
	call	select_spill
.L1277:
	.loc 1 2690 0
	movl	web_lists@GOT(%ebx), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L1273
	movl	web_lists@GOT(%ebx), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	jne	.L1273
	movl	web_lists@GOT(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L1273
	movl	mv_worklist@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L1273
	movl	web_lists@GOT(%ebx), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	.L1273
	movl	web_lists@GOT(%ebx), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	jne	.L1273
	.loc 1 2691 0
	movl	flag_ra_optimistic_coalescing@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1287
	.loc 1 2692 0
	call	check_uncoalesced_moves
.L1287:
	.loc 1 2695 0
	call	assign_colors
	.loc 1 2696 0
	call	check_colors
	.loc 1 2697 0
	leal	.LC26@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_graph_cost@PLT
	.loc 1 2698 0
	movl	flag_ra_break_aliases@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L1289
	.loc 1 2699 0
	call	break_coalesced_spills
.L1289:
	.loc 1 2700 0
	call	check_colors
	.loc 1 2703 0
	call	recolor_spills
	.loc 1 2704 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	dump_graph_cost@PLT
	.loc 1 2705 0
	call	check_colors
	.loc 1 2706 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE68:
	.size	ra_colorize_graph, .-ra_colorize_graph
.globl ra_colorize_init
	.type	ra_colorize_init, @function
ra_colorize_init:
.LFB69:
	.loc 1 2711 0
	pushl	%ebp
.LCFI245:
	movl	%esp, %ebp
.LCFI246:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 2713 0
	leal	default_spill_heuristic@GOTOFF(%ecx), %eax
	movl	%eax, spill_heuristic@GOTOFF(%ecx)
	.loc 1 2714 0
	popl	%ebp
	ret
.LFE69:
	.size	ra_colorize_init, .-ra_colorize_init
.globl ra_colorize_free_all
	.type	ra_colorize_free_all, @function
ra_colorize_free_all:
.LFB70:
	.loc 1 2721 0
	pushl	%ebp
.LCFI247:
	movl	%esp, %ebp
.LCFI248:
	pushl	%ebx
.LCFI249:
	subl	$36, %esp
.LCFI250:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 2723 0
	jmp	.L1296
.L1297:
	.loc 1 2724 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	put_web@PLT
.L1296:
	.loc 1 2723 0
	movl	web_lists@GOT(%ebx), %eax
	leal	4(%eax), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L1297
	.loc 1 2725 0
	jmp	.L1299
.L1300:
.LBB102:
	.loc 1 2727 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 2729 0
	movl	-12(%ebp), %eax
	movl	$0, 84(%eax)
	.loc 1 2730 0
	movl	-12(%ebp), %eax
	movl	$0, 80(%eax)
	.loc 1 2731 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L1301
.L1302:
	.loc 1 2733 0
	movl	-12(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 2734 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 2731 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L1301:
	cmpl	$0, -12(%ebp)
	jne	.L1302
	.loc 1 2736 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L1299:
.LBE102:
	.loc 1 2725 0
	movl	web_lists@GOT(%ebx), %eax
	movl	%eax, (%esp)
	call	pop_list@PLT
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L1300
	.loc 1 2738 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE70:
	.size	ra_colorize_free_all, .-ra_colorize_free_all
	.local	mv_worklist
	.comm	mv_worklist,4,4
	.local	mv_coalesced
	.comm	mv_coalesced,4,4
	.local	mv_constrained
	.comm	mv_constrained,4,4
	.local	mv_frozen
	.comm	mv_frozen,4,4
	.local	mv_active
	.comm	mv_active,4,4
	.local	spill_heuristic
	.comm	spill_heuristic,4,4
	.local	web_pair_hash
	.comm	web_pair_hash,32768,32
	.local	web_pair_list
	.comm	web_pair_list,4,4
	.local	num_web_pairs
	.comm	num_web_pairs,4,4
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
	.byte	0x4
	.long	.LCFI14-.LCFI12
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
	.long	.LCFI15-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
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
	.byte	0x4
	.long	.LCFI24-.LCFI22
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
	.long	.LCFI25-.LFB22
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
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI29-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI32-.LCFI30
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI33-.LFB25
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI37-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI40-.LCFI38
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
	.long	.LCFI41-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI44-.LCFI42
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
	.long	.LCFI45-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI48-.LCFI46
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
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.byte	0x4
	.long	.LCFI56-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI59-.LCFI57
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
	.long	.LCFI60-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI63-.LCFI61
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
	.long	.LCFI64-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI67-.LCFI65
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
	.long	.LCFI68-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI73-.LCFI69
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI74-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI77-.LCFI75
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
	.long	.LCFI78-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.byte	0x4
	.long	.LCFI80-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI85-.LCFI81
	.byte	0x83
	.uleb128 0x5
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI86-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.byte	0x4
	.long	.LCFI89-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI90
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI95-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI96-.LCFI95
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI98-.LCFI96
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
	.long	.LCFI102-.LCFI100
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
	.long	.LCFI103-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI108-.LCFI104
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI118-.LCFI114
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
	.long	.LCFI119-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI120-.LCFI119
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI124-.LCFI120
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI125-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI130-.LCFI126
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI131-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI132-.LCFI131
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI135-.LCFI132
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI136-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI137
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
	.long	.LCFI142-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI147-.LCFI143
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI148-.LFB49
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
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.byte	0x4
	.long	.LCFI154-.LFB50
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
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.byte	0x4
	.long	.LCFI158-.LFB51
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
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.byte	0x4
	.long	.LCFI164-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.byte	0x4
	.long	.LCFI167-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI168-.LCFI167
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI170-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI171-.LCFI170
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI175-.LCFI171
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI176-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI181-.LCFI177
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI182-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI183-.LCFI182
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI185-.LCFI183
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
	.long	.LCFI186-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI187-.LCFI186
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI189-.LCFI187
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
	.long	.LCFI190-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI191-.LCFI190
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI195-.LCFI191
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI196-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI201-.LCFI197
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
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
	.long	.LCFI202-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI203-.LCFI202
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI205-.LCFI203
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.byte	0x4
	.long	.LCFI206-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI207-.LCFI206
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI209-.LCFI207
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.byte	0x4
	.long	.LCFI210-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI211-.LCFI210
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI213-.LCFI211
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.byte	0x4
	.long	.LCFI214-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI215-.LCFI214
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.byte	0x4
	.long	.LCFI217-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI222-.LCFI218
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.byte	0x4
	.long	.LCFI223-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI224-.LCFI223
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI228-.LCFI224
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB66
	.long	.LFE66-.LFB66
	.byte	0x4
	.long	.LCFI229-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI230-.LCFI229
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI234-.LCFI230
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.byte	0x4
	.long	.LCFI235-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI236-.LCFI235
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI240-.LCFI236
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.byte	0x4
	.long	.LCFI241-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI242-.LCFI241
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI244-.LCFI242
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI245-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI246-.LCFI245
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI247-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI248-.LCFI247
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI250-.LCFI248
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE110:
	.file 2 "../../../kg++fe/gnu/ra.h"
	.file 3 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 4 "../../../kg++fe/gnu/MIPS/config.h"
	.file 5 "../../../kg++fe/gnu/rtl.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/bitmap.h"
	.file 8 "../../../kg++fe/gnu/basic-block.h"
	.file 9 "../../../kg++fe/gnu/sbitmap.h"
	.file 10 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 11 "../../../kg++fe/gnu/df.h"
	.file 12 "../../../kg++fe/gnu/function.h"
	.file 13 "../../../kg++fe/gnu/output.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "/usr/include/libio.h"
	.file 16 "/usr/include/bits/types.h"
	.file 17 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB24-.Ltext0
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
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB26-.Ltext0
	.long	.LCFI41-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI41-.Ltext0
	.long	.LCFI42-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI42-.Ltext0
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB27-.Ltext0
	.long	.LCFI45-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI45-.Ltext0
	.long	.LCFI46-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI46-.Ltext0
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
	.long	.LCFI56-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI56-.Ltext0
	.long	.LCFI57-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI57-.Ltext0
	.long	.LFE30-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB31-.Ltext0
	.long	.LCFI60-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI60-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI61-.Ltext0
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB32-.Ltext0
	.long	.LCFI64-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI64-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI65-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB33-.Ltext0
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
	.long	.LFE33-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB34-.Ltext0
	.long	.LCFI74-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI74-.Ltext0
	.long	.LCFI75-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI75-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI78-.Ltext0
	.long	.LCFI79-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI79-.Ltext0
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB37-.Ltext0
	.long	.LCFI80-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI80-.Ltext0
	.long	.LCFI81-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI81-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB36-.Ltext0
	.long	.LCFI86-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI86-.Ltext0
	.long	.LCFI87-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI87-.Ltext0
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB39-.Ltext0
	.long	.LCFI95-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI95-.Ltext0
	.long	.LCFI96-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI96-.Ltext0
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
	.long	.LCFI103-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI103-.Ltext0
	.long	.LCFI104-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI104-.Ltext0
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
	.long	.LCFI119-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI119-.Ltext0
	.long	.LCFI120-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI120-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI125-.Ltext0
	.long	.LCFI126-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI126-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
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
	.long	.LFE46-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LFB47-.Ltext0
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
	.long	.LFE47-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LFB48-.Ltext0
	.long	.LCFI142-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI142-.Ltext0
	.long	.LCFI143-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI143-.Ltext0
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
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
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
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
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
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
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
	.long	.LCFI186-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI186-.Ltext0
	.long	.LCFI187-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI187-.Ltext0
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LFB58-.Ltext0
	.long	.LCFI190-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI190-.Ltext0
	.long	.LCFI191-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI191-.Ltext0
	.long	.LFE58-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LFB59-.Ltext0
	.long	.LCFI196-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI196-.Ltext0
	.long	.LCFI197-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI197-.Ltext0
	.long	.LFE59-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LFB60-.Ltext0
	.long	.LCFI202-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI202-.Ltext0
	.long	.LCFI203-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI203-.Ltext0
	.long	.LFE60-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LFB61-.Ltext0
	.long	.LCFI206-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI206-.Ltext0
	.long	.LCFI207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI207-.Ltext0
	.long	.LFE61-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LFB62-.Ltext0
	.long	.LCFI210-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI210-.Ltext0
	.long	.LCFI211-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI211-.Ltext0
	.long	.LFE62-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LFB63-.Ltext0
	.long	.LCFI214-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI214-.Ltext0
	.long	.LCFI215-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI215-.Ltext0
	.long	.LFE63-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LFB64-.Ltext0
	.long	.LCFI217-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI217-.Ltext0
	.long	.LCFI218-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI218-.Ltext0
	.long	.LFE64-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LFB65-.Ltext0
	.long	.LCFI223-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI223-.Ltext0
	.long	.LCFI224-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI224-.Ltext0
	.long	.LFE65-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LFB66-.Ltext0
	.long	.LCFI229-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI229-.Ltext0
	.long	.LCFI230-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI230-.Ltext0
	.long	.LFE66-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LFB67-.Ltext0
	.long	.LCFI235-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI235-.Ltext0
	.long	.LCFI236-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI236-.Ltext0
	.long	.LFE67-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LFB68-.Ltext0
	.long	.LCFI241-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI241-.Ltext0
	.long	.LCFI242-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI242-.Ltext0
	.long	.LFE68-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LFB69-.Ltext0
	.long	.LCFI245-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI245-.Ltext0
	.long	.LCFI246-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI246-.Ltext0
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LFB70-.Ltext0
	.long	.LCFI247-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI247-.Ltext0
	.long	.LCFI248-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI248-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x6180
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/ra-colorize.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x4
	.byte	0xc
	.long	0xab
	.uleb128 0x3
	.byte	0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x1a1
	.string	"rtx_def"
	.byte	0xc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.string	"code"
	.byte	0x5
	.byte	0x84
	.long	0xb0a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"mode"
	.byte	0x5
	.byte	0x87
	.long	0x8c1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"jump"
	.byte	0x5
	.byte	0x8e
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"call"
	.byte	0x5
	.byte	0x91
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"unchanging"
	.byte	0x5
	.byte	0x99
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"volatil"
	.byte	0x5
	.byte	0xa2
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"in_struct"
	.byte	0x5
	.byte	0xb4
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"used"
	.byte	0x5
	.byte	0xbb
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"integrated"
	.byte	0x5
	.byte	0xc0
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"frame_related"
	.byte	0x5
	.byte	0xc9
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"fld"
	.byte	0x5
	.byte	0xce
	.long	0x1727
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x4
	.byte	0xe
	.long	0x1ae
	.uleb128 0x3
	.byte	0x4
	.long	0x1b4
	.uleb128 0x4
	.long	0x1e9
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x4
	.byte	0xd
	.uleb128 0x6
	.string	"num_elem"
	.byte	0x5
	.byte	0xf2
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"elem"
	.byte	0x5
	.byte	0xf3
	.long	0x1737
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x4
	.byte	0x10
	.long	0x1f5
	.uleb128 0x3
	.byte	0x4
	.long	0x1fb
	.uleb128 0x7
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x20d
	.uleb128 0x8
	.long	0x212
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x397
	.string	"reg_class"
	.byte	0x4
	.byte	0x3
	.value	0x7ec
	.uleb128 0xb
	.string	"NO_REGS"
	.sleb128 0
	.uleb128 0xb
	.string	"M16_NA_REGS"
	.sleb128 1
	.uleb128 0xb
	.string	"M16_REGS"
	.sleb128 2
	.uleb128 0xb
	.string	"T_REG"
	.sleb128 3
	.uleb128 0xb
	.string	"M16_T_REGS"
	.sleb128 4
	.uleb128 0xb
	.string	"GR_REGS"
	.sleb128 5
	.uleb128 0xb
	.string	"FP_REGS"
	.sleb128 6
	.uleb128 0xb
	.string	"HI_REG"
	.sleb128 7
	.uleb128 0xb
	.string	"LO_REG"
	.sleb128 8
	.uleb128 0xb
	.string	"HILO_REG"
	.sleb128 9
	.uleb128 0xb
	.string	"MD_REGS"
	.sleb128 10
	.uleb128 0xb
	.string	"COP0_REGS"
	.sleb128 11
	.uleb128 0xb
	.string	"COP2_REGS"
	.sleb128 12
	.uleb128 0xb
	.string	"COP3_REGS"
	.sleb128 13
	.uleb128 0xb
	.string	"HI_AND_GR_REGS"
	.sleb128 14
	.uleb128 0xb
	.string	"LO_AND_GR_REGS"
	.sleb128 15
	.uleb128 0xb
	.string	"HILO_AND_GR_REGS"
	.sleb128 16
	.uleb128 0xb
	.string	"HI_AND_FP_REGS"
	.sleb128 17
	.uleb128 0xb
	.string	"COP0_AND_GR_REGS"
	.sleb128 18
	.uleb128 0xb
	.string	"COP2_AND_GR_REGS"
	.sleb128 19
	.uleb128 0xb
	.string	"COP3_AND_GR_REGS"
	.sleb128 20
	.uleb128 0xb
	.string	"ALL_COP_REGS"
	.sleb128 21
	.uleb128 0xb
	.string	"ALL_COP_AND_GR_REGS"
	.sleb128 22
	.uleb128 0xb
	.string	"ST_REGS"
	.sleb128 23
	.uleb128 0xb
	.string	"ALL_REGS"
	.sleb128 24
	.uleb128 0xb
	.string	"LIM_REG_CLASSES"
	.sleb128 25
	.byte	0x0
	.uleb128 0xc
	.long	0x469
	.string	"mips_args"
	.byte	0x40
	.byte	0x3
	.value	0xaaa
	.uleb128 0xd
	.string	"gp_reg_found"
	.byte	0x3
	.value	0xaad
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"arg_number"
	.byte	0x3
	.value	0xab0
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"num_gprs"
	.byte	0x3
	.value	0xab5
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"num_fprs"
	.byte	0x3
	.value	0xab8
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stack_words"
	.byte	0x3
	.value	0xabb
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"fp_code"
	.byte	0x3
	.value	0xac8
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"prototype"
	.byte	0x3
	.value	0xacb
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"num_adjusts"
	.byte	0x3
	.value	0xad3
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"adjust"
	.byte	0x3
	.value	0xad4
	.long	0x470
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.long	0x480
	.long	0xa0
	.uleb128 0x10
	.long	0x480
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.string	"CUMULATIVE_ARGS"
	.byte	0x3
	.value	0xad5
	.long	0x397
	.uleb128 0x2
	.string	"size_t"
	.byte	0x11
	.byte	0xd6
	.long	0x469
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
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x10
	.byte	0x3b
	.long	0x505
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x10
	.byte	0x90
	.long	0x54f
	.uleb128 0x9
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x10
	.byte	0x91
	.long	0x530
	.uleb128 0x12
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x212
	.uleb128 0x2
	.string	"FILE"
	.byte	0xe
	.byte	0x2e
	.long	0x580
	.uleb128 0x13
	.long	0x7fb
	.long	.LASF1
	.byte	0x94
	.byte	0xe
	.byte	0x2e
	.uleb128 0xd
	.string	"_flags"
	.byte	0xf
	.value	0x10c
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"_IO_read_ptr"
	.byte	0xf
	.value	0x111
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"_IO_read_end"
	.byte	0xf
	.value	0x112
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"_IO_read_base"
	.byte	0xf
	.value	0x113
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"_IO_write_base"
	.byte	0xf
	.value	0x114
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"_IO_write_ptr"
	.byte	0xf
	.value	0x115
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"_IO_write_end"
	.byte	0xf
	.value	0x116
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"_IO_buf_base"
	.byte	0xf
	.value	0x117
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"_IO_buf_end"
	.byte	0xf
	.value	0x118
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"_IO_save_base"
	.byte	0xf
	.value	0x11a
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"_IO_backup_base"
	.byte	0xf
	.value	0x11b
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"_IO_save_end"
	.byte	0xf
	.value	0x11c
	.long	0x56e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"_markers"
	.byte	0xf
	.value	0x11e
	.long	0x852
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"_chain"
	.byte	0xf
	.value	0x120
	.long	0x858
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"_fileno"
	.byte	0xf
	.value	0x122
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"_flags2"
	.byte	0xf
	.value	0x126
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"_old_offset"
	.byte	0xf
	.value	0x128
	.long	0x540
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"_cur_column"
	.byte	0xf
	.value	0x12c
	.long	0x4be
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"_vtable_offset"
	.byte	0xf
	.value	0x12d
	.long	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.string	"_shortbuf"
	.byte	0xf
	.value	0x12e
	.long	0x85e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.string	"_lock"
	.byte	0xf
	.value	0x132
	.long	0x86e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"_offset"
	.byte	0xf
	.value	0x13b
	.long	0x55b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.string	"__pad1"
	.byte	0xf
	.value	0x144
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"__pad2"
	.byte	0xf
	.value	0x145
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"__pad3"
	.byte	0xf
	.value	0x146
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"__pad4"
	.byte	0xf
	.value	0x147
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"__pad5"
	.byte	0xf
	.value	0x148
	.long	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"_mode"
	.byte	0xf
	.value	0x14a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"_unused2"
	.byte	0xf
	.value	0x14c
	.long	0x874
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4ad
	.uleb128 0x14
	.string	"_IO_lock_t"
	.byte	0xf
	.byte	0xb0
	.uleb128 0x4
	.long	0x852
	.string	"_IO_marker"
	.byte	0xc
	.byte	0xf
	.byte	0xb6
	.uleb128 0x6
	.string	"_next"
	.byte	0xf
	.byte	0xb7
	.long	0x852
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"_sbuf"
	.byte	0xf
	.byte	0xb8
	.long	0x858
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"_pos"
	.byte	0xf
	.byte	0xbc
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x80f
	.uleb128 0x3
	.byte	0x4
	.long	0x580
	.uleb128 0xf
	.long	0x86e
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x801
	.uleb128 0xf
	.long	0x884
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x27
	.byte	0x0
	.uleb128 0xf
	.long	0x894
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x17
	.byte	0x0
	.uleb128 0xf
	.long	0x8a4
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.long	0x8b4
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x7
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21a
	.uleb128 0x3
	.byte	0x4
	.long	0x8c0
	.uleb128 0x15
	.uleb128 0x16
	.long	0xb0a
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.uleb128 0xb
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0xb
	.string	"BImode"
	.sleb128 1
	.uleb128 0xb
	.string	"QImode"
	.sleb128 2
	.uleb128 0xb
	.string	"HImode"
	.sleb128 3
	.uleb128 0xb
	.string	"SImode"
	.sleb128 4
	.uleb128 0xb
	.string	"DImode"
	.sleb128 5
	.uleb128 0xb
	.string	"TImode"
	.sleb128 6
	.uleb128 0xb
	.string	"OImode"
	.sleb128 7
	.uleb128 0xb
	.string	"PQImode"
	.sleb128 8
	.uleb128 0xb
	.string	"PHImode"
	.sleb128 9
	.uleb128 0xb
	.string	"PSImode"
	.sleb128 10
	.uleb128 0xb
	.string	"PDImode"
	.sleb128 11
	.uleb128 0xb
	.string	"QFmode"
	.sleb128 12
	.uleb128 0xb
	.string	"HFmode"
	.sleb128 13
	.uleb128 0xb
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0xb
	.string	"SFmode"
	.sleb128 15
	.uleb128 0xb
	.string	"DFmode"
	.sleb128 16
	.uleb128 0xb
	.string	"XFmode"
	.sleb128 17
	.uleb128 0xb
	.string	"TFmode"
	.sleb128 18
	.uleb128 0xb
	.string	"QCmode"
	.sleb128 19
	.uleb128 0xb
	.string	"HCmode"
	.sleb128 20
	.uleb128 0xb
	.string	"SCmode"
	.sleb128 21
	.uleb128 0xb
	.string	"DCmode"
	.sleb128 22
	.uleb128 0xb
	.string	"XCmode"
	.sleb128 23
	.uleb128 0xb
	.string	"TCmode"
	.sleb128 24
	.uleb128 0xb
	.string	"CQImode"
	.sleb128 25
	.uleb128 0xb
	.string	"CHImode"
	.sleb128 26
	.uleb128 0xb
	.string	"CSImode"
	.sleb128 27
	.uleb128 0xb
	.string	"CDImode"
	.sleb128 28
	.uleb128 0xb
	.string	"CTImode"
	.sleb128 29
	.uleb128 0xb
	.string	"COImode"
	.sleb128 30
	.uleb128 0xb
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0xb
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0xb
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0xb
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0xb
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0xb
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0xb
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0xb
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0xb
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0xb
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0xb
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0xb
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0xb
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0xb
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0xb
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0xb
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0xb
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0xb
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0xb
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0xb
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0xb
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0xb
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0xb
	.string	"CCmode"
	.sleb128 53
	.uleb128 0xb
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x16
	.long	0x12d9
	.string	"rtx_code"
	.byte	0x4
	.byte	0x5
	.byte	0x29
	.uleb128 0xb
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0xb
	.string	"NIL"
	.sleb128 1
	.uleb128 0xb
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0xb
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0xb
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0xb
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0xb
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0xb
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0xb
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0xb
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0xb
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0xb
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0xb
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0xb
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0xb
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0xb
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0xb
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0xb
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0xb
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0xb
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0xb
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0xb
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0xb
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0xb
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0xb
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0xb
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0xb
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0xb
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0xb
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0xb
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0xb
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0xb
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0xb
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0xb
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0xb
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0xb
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0xb
	.string	"ATTR"
	.sleb128 37
	.uleb128 0xb
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0xb
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0xb
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0xb
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0xb
	.string	"INSN"
	.sleb128 42
	.uleb128 0xb
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0xb
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0xb
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0xb
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0xb
	.string	"NOTE"
	.sleb128 47
	.uleb128 0xb
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0xb
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0xb
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0xb
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0xb
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0xb
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0xb
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0xb
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0xb
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0xb
	.string	"SET"
	.sleb128 57
	.uleb128 0xb
	.string	"USE"
	.sleb128 58
	.uleb128 0xb
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0xb
	.string	"CALL"
	.sleb128 60
	.uleb128 0xb
	.string	"RETURN"
	.sleb128 61
	.uleb128 0xb
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0xb
	.string	"RESX"
	.sleb128 63
	.uleb128 0xb
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0xb
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0xb
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0xb
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0xb
	.string	"CONST"
	.sleb128 68
	.uleb128 0xb
	.string	"PC"
	.sleb128 69
	.uleb128 0xb
	.string	"VALUE"
	.sleb128 70
	.uleb128 0xb
	.string	"REG"
	.sleb128 71
	.uleb128 0xb
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0xb
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0xb
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0xb
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0xb
	.string	"MEM"
	.sleb128 76
	.uleb128 0xb
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0xb
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0xb
	.string	"CC0"
	.sleb128 79
	.uleb128 0xb
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0xb
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0xb
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0xb
	.string	"COND"
	.sleb128 83
	.uleb128 0xb
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0xb
	.string	"PLUS"
	.sleb128 85
	.uleb128 0xb
	.string	"MINUS"
	.sleb128 86
	.uleb128 0xb
	.string	"NEG"
	.sleb128 87
	.uleb128 0xb
	.string	"MULT"
	.sleb128 88
	.uleb128 0xb
	.string	"DIV"
	.sleb128 89
	.uleb128 0xb
	.string	"MOD"
	.sleb128 90
	.uleb128 0xb
	.string	"UDIV"
	.sleb128 91
	.uleb128 0xb
	.string	"UMOD"
	.sleb128 92
	.uleb128 0xb
	.string	"AND"
	.sleb128 93
	.uleb128 0xb
	.string	"IOR"
	.sleb128 94
	.uleb128 0xb
	.string	"XOR"
	.sleb128 95
	.uleb128 0xb
	.string	"NOT"
	.sleb128 96
	.uleb128 0xb
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0xb
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0xb
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0xb
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0xb
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0xb
	.string	"SMIN"
	.sleb128 102
	.uleb128 0xb
	.string	"SMAX"
	.sleb128 103
	.uleb128 0xb
	.string	"UMIN"
	.sleb128 104
	.uleb128 0xb
	.string	"UMAX"
	.sleb128 105
	.uleb128 0xb
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0xb
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0xb
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0xb
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0xb
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0xb
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0xb
	.string	"NE"
	.sleb128 112
	.uleb128 0xb
	.string	"EQ"
	.sleb128 113
	.uleb128 0xb
	.string	"GE"
	.sleb128 114
	.uleb128 0xb
	.string	"GT"
	.sleb128 115
	.uleb128 0xb
	.string	"LE"
	.sleb128 116
	.uleb128 0xb
	.string	"LT"
	.sleb128 117
	.uleb128 0xb
	.string	"GEU"
	.sleb128 118
	.uleb128 0xb
	.string	"GTU"
	.sleb128 119
	.uleb128 0xb
	.string	"LEU"
	.sleb128 120
	.uleb128 0xb
	.string	"LTU"
	.sleb128 121
	.uleb128 0xb
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0xb
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0xb
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0xb
	.string	"UNGE"
	.sleb128 125
	.uleb128 0xb
	.string	"UNGT"
	.sleb128 126
	.uleb128 0xb
	.string	"UNLE"
	.sleb128 127
	.uleb128 0xb
	.string	"UNLT"
	.sleb128 128
	.uleb128 0xb
	.string	"LTGT"
	.sleb128 129
	.uleb128 0xb
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0xb
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0xb
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0xb
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0xb
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0xb
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0xb
	.string	"FIX"
	.sleb128 136
	.uleb128 0xb
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0xb
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0xb
	.string	"ABS"
	.sleb128 139
	.uleb128 0xb
	.string	"SQRT"
	.sleb128 140
	.uleb128 0xb
	.string	"FFS"
	.sleb128 141
	.uleb128 0xb
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0xb
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0xb
	.string	"HIGH"
	.sleb128 144
	.uleb128 0xb
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0xb
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0xb
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0xb
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0xb
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0xb
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0xb
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0xb
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0xb
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0xb
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0xb
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0xb
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0xb
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0xb
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0xb
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0xb
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0xb
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0xb
	.string	"PHI"
	.sleb128 162
	.uleb128 0xb
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x17
	.long	0x13b3
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.uleb128 0x5
	.string	"min_align"
	.byte	0x5
	.byte	0x49
	.long	0x469
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"base_after_vec"
	.byte	0x5
	.byte	0x4b
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_vec"
	.byte	0x5
	.byte	0x4c
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_vec"
	.byte	0x5
	.byte	0x4e
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"min_after_base"
	.byte	0x5
	.byte	0x50
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"max_after_base"
	.byte	0x5
	.byte	0x52
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"offset_unsigned"
	.byte	0x5
	.byte	0x55
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.string	"scale"
	.byte	0x5
	.byte	0x57
	.long	0x469
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.string	"addr_diff_vec_flags"
	.byte	0x5
	.byte	0x58
	.long	0x12d9
	.uleb128 0x13
	.long	0x142a
	.long	.LASF2
	.byte	0x18
	.byte	0x5
	.byte	0x62
	.uleb128 0x6
	.string	"alias"
	.byte	0x5
	.byte	0x63
	.long	0x505
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"expr"
	.byte	0x5
	.byte	0x64
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"offset"
	.byte	0x5
	.byte	0x65
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"size"
	.byte	0x5
	.byte	0x66
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"align"
	.byte	0x5
	.byte	0x67
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x5
	.byte	0x68
	.long	0x13ce
	.uleb128 0x19
	.long	0x1507
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x5
	.byte	0x6d
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x5
	.byte	0x6e
	.long	0x505
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x5
	.byte	0x6f
	.long	0x21a
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x5
	.byte	0x70
	.long	0x469
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x5
	.byte	0x71
	.long	0x207
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x5
	.byte	0x72
	.long	0xa0
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x5
	.byte	0x73
	.long	0x1a1
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x5
	.byte	0x74
	.long	0x8c1
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x5
	.byte	0x75
	.long	0x13b3
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x5
	.byte	0x76
	.long	0x151b
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x5
	.byte	0x77
	.long	0x1583
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x5
	.byte	0x78
	.long	0x1e9
	.uleb128 0x1a
	.string	"bb"
	.byte	0x5
	.byte	0x79
	.long	0x170c
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x5
	.byte	0x7a
	.long	0x1712
	.byte	0x0
	.uleb128 0x1b
	.string	"cselib_val_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x1507
	.uleb128 0x4
	.long	0x1583
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x5
	.byte	0x77
	.uleb128 0x6
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x25f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x25f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1521
	.uleb128 0x4
	.long	0x170c
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x5
	.byte	0x79
	.uleb128 0x6
	.string	"head"
	.byte	0x8
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"end"
	.byte	0x8
	.byte	0xb5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"head_tree"
	.byte	0x8
	.byte	0xb8
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"end_tree"
	.byte	0x8
	.byte	0xb9
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"pred"
	.byte	0x8
	.byte	0xbc
	.long	0x274e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"succ"
	.byte	0x8
	.byte	0xbc
	.long	0x274e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"local_set"
	.byte	0x8
	.byte	0xc1
	.long	0x2680
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"cond_local_set"
	.byte	0x8
	.byte	0xc5
	.long	0x2680
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"global_live_at_start"
	.byte	0x8
	.byte	0xcb
	.long	0x2680
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"global_live_at_end"
	.byte	0x8
	.byte	0xcd
	.long	0x2680
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0xd0
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"index"
	.byte	0x8
	.byte	0xd3
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"prev_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x170c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"next_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x170c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"loop_depth"
	.byte	0x8
	.byte	0xd9
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"loop_father"
	.byte	0x8
	.byte	0xdc
	.long	0x29c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"count"
	.byte	0x8
	.byte	0xdf
	.long	0x268e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"frequency"
	.byte	0x8
	.byte	0xe2
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x8
	.byte	0xe5
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1589
	.uleb128 0x3
	.byte	0x4
	.long	0x142a
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x5
	.byte	0x7c
	.long	0x1435
	.uleb128 0xf
	.long	0x1737
	.long	0x1718
	.uleb128 0x10
	.long	0x480
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1747
	.long	0xa0
	.uleb128 0x10
	.long	0x480
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xa0
	.uleb128 0x4
	.long	0x17b2
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xc
	.byte	0x17
	.uleb128 0x6
	.string	"modified"
	.byte	0xc
	.byte	0x18
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"promoted_mode"
	.byte	0xc
	.byte	0x19
	.long	0x8c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"unsignedp"
	.byte	0xc
	.byte	0x1a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF4
	.byte	0xc
	.byte	0x1b
	.long	0x17b2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x174d
	.uleb128 0x13
	.long	0x1800
	.long	.LASF5
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.uleb128 0x6
	.string	"first"
	.byte	0xc
	.byte	0x26
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"last"
	.byte	0xc
	.byte	0x27
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.long	.LASF6
	.byte	0xc
	.byte	0x28
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.long	.LASF4
	.byte	0xc
	.byte	0x29
	.long	0x1800
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x17b8
	.uleb128 0x4
	.long	0x1955
	.string	"emit_status"
	.byte	0x34
	.byte	0xc
	.byte	0x37
	.uleb128 0x6
	.string	"x_reg_rtx_no"
	.byte	0xc
	.byte	0x3a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_first_label_num"
	.byte	0xc
	.byte	0x3d
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_first_insn"
	.byte	0xc
	.byte	0x44
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_last_insn"
	.byte	0xc
	.byte	0x45
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF6
	.byte	0xc
	.byte	0x4a
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.long	.LASF5
	.byte	0xc
	.byte	0x50
	.long	0x1800
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_cur_insn_uid"
	.byte	0xc
	.byte	0x54
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"x_last_linenum"
	.byte	0xc
	.byte	0x58
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"x_last_filename"
	.byte	0xc
	.byte	0x59
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"regno_pointer_align_length"
	.byte	0xc
	.byte	0x5f
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"regno_pointer_align"
	.byte	0xc
	.byte	0x65
	.long	0x7fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"regno_decl"
	.byte	0xc
	.byte	0x69
	.long	0x1955
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"x_regno_reg_rtx"
	.byte	0xc
	.byte	0x70
	.long	0x1747
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1e9
	.uleb128 0x4
	.long	0x1a3b
	.string	"expr_status"
	.byte	0x1c
	.byte	0xc
	.byte	0x7d
	.uleb128 0x6
	.string	"x_pending_stack_adjust"
	.byte	0xc
	.byte	0x80
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"x_inhibit_defer_pop"
	.byte	0xc
	.byte	0x91
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"x_stack_pointer_delta"
	.byte	0xc
	.byte	0x97
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"x_saveregs_value"
	.byte	0xc
	.byte	0x9c
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"x_apply_args_value"
	.byte	0xc
	.byte	0x9f
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"x_forced_labels"
	.byte	0xc
	.byte	0xa2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"x_pending_chain"
	.byte	0xc
	.byte	0xa5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x1d
	.long	0x1aa5
	.long	.LASF7
	.byte	0x4
	.byte	0xc
	.value	0x1f1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0xb
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x1e
	.long	0x2464
	.string	"function"
	.value	0x134
	.byte	0x5
	.byte	0x19
	.uleb128 0x6
	.string	"eh"
	.byte	0xc
	.byte	0xb5
	.long	0x2470
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"stmt"
	.byte	0xc
	.byte	0xb6
	.long	0x2484
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"expr"
	.byte	0xc
	.byte	0xb7
	.long	0x248a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"emit"
	.byte	0xc
	.byte	0xb8
	.long	0x2490
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"varasm"
	.byte	0xc
	.byte	0xb9
	.long	0x24a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"name"
	.byte	0xc
	.byte	0xbe
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"decl"
	.byte	0xc
	.byte	0xc1
	.long	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"outer"
	.byte	0xc
	.byte	0xc4
	.long	0x24ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"pops_args"
	.byte	0xc
	.byte	0xc9
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"args_size"
	.byte	0xc
	.byte	0xce
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"pretend_args_size"
	.byte	0xc
	.byte	0xd3
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"outgoing_args_size"
	.byte	0xc
	.byte	0xd7
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"arg_offset_rtx"
	.byte	0xc
	.byte	0xdb
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"args_info"
	.byte	0xc
	.byte	0xdf
	.long	0x487
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"return_rtx"
	.byte	0xc
	.byte	0xe5
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"internal_arg_pointer"
	.byte	0xc
	.byte	0xe8
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.string	"cannot_inline"
	.byte	0xc
	.byte	0xec
	.long	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x6
	.string	"hard_reg_initial_vals"
	.byte	0xc
	.byte	0xf0
	.long	0x24c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.string	"x_function_call_count"
	.byte	0xc
	.byte	0xf3
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x6
	.string	"x_nonlocal_labels"
	.byte	0xc
	.byte	0xf8
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x6
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xc
	.byte	0xfe
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xd
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xc
	.value	0x102
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xd
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xc
	.value	0x107
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.string	"x_cleanup_label"
	.byte	0xc
	.value	0x10d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xd
	.string	"x_return_label"
	.byte	0xc
	.value	0x112
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.string	"computed_goto_common_label"
	.byte	0xc
	.value	0x115
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.string	"computed_goto_common_reg"
	.byte	0xc
	.value	0x116
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"x_save_expr_regs"
	.byte	0xc
	.value	0x11a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.string	"x_stack_slot_list"
	.byte	0xc
	.value	0x11e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.string	"x_rtl_expr_chain"
	.byte	0xc
	.value	0x121
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.string	"x_tail_recursion_label"
	.byte	0xc
	.value	0x125
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.string	"x_tail_recursion_reentry"
	.byte	0xc
	.value	0x128
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xd
	.string	"x_arg_pointer_save_area"
	.byte	0xc
	.value	0x12e
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"x_clobber_return_insn"
	.byte	0xc
	.value	0x133
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"x_frame_offset"
	.byte	0xc
	.value	0x138
	.long	0x505
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"x_context_display"
	.byte	0xc
	.value	0x13d
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"x_trampoline_list"
	.byte	0xc
	.value	0x146
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"x_parm_birth_insn"
	.byte	0xc
	.value	0x149
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"x_last_parm_insn"
	.byte	0xc
	.value	0x14d
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"x_max_parm_reg"
	.byte	0xc
	.value	0x151
	.long	0x469
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"x_parm_reg_stack_loc"
	.byte	0xc
	.value	0x157
	.long	0x1747
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"x_temp_slots"
	.byte	0xc
	.value	0x15a
	.long	0x24db
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xd
	.string	"x_temp_slot_level"
	.byte	0xc
	.value	0x15d
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xd
	.string	"x_var_temp_slot_level"
	.byte	0xc
	.value	0x160
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xd
	.string	"x_target_temp_slot_level"
	.byte	0xc
	.value	0x166
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xd
	.string	"fixup_var_refs_queue"
	.byte	0xc
	.value	0x16a
	.long	0x17b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xd
	.string	"inlinable"
	.byte	0xc
	.value	0x16d
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xd
	.string	"no_debugging_symbols"
	.byte	0xc
	.value	0x16e
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xd
	.string	"original_arg_vector"
	.byte	0xc
	.value	0x16f
	.long	0x1a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xd
	.string	"original_decl_initial"
	.byte	0xc
	.value	0x170
	.long	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xd
	.string	"inl_last_parm_insn"
	.byte	0xc
	.value	0x173
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xd
	.string	"inl_max_label_num"
	.byte	0xc
	.value	0x175
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xd
	.string	"funcdef_no"
	.byte	0xc
	.value	0x178
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xd
	.string	"machine"
	.byte	0xc
	.value	0x17d
	.long	0x24f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xd
	.string	"stack_alignment_needed"
	.byte	0xc
	.value	0x17f
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xd
	.string	"preferred_stack_boundary"
	.byte	0xc
	.value	0x181
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0xd
	.string	"language"
	.byte	0xc
	.value	0x184
	.long	0x250e
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xd
	.string	"epilogue_delay_list"
	.byte	0xc
	.value	0x18a
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0xc
	.value	0x190
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0xc
	.value	0x194
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0xc
	.value	0x197
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0xc
	.value	0x19a
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0xc
	.value	0x19d
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0xc
	.value	0x1a0
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0xc
	.value	0x1a4
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0xc
	.value	0x1a7
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0xc
	.value	0x1ab
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0xc
	.value	0x1af
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0xc
	.value	0x1b2
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0xc
	.value	0x1b5
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0xc
	.value	0x1ba
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0xc
	.value	0x1c1
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0xc
	.value	0x1c5
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0xc
	.value	0x1c8
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0xc
	.value	0x1cb
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0xc
	.value	0x1cf
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0xc
	.value	0x1d2
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0xc
	.value	0x1d8
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xc
	.value	0x1e1
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0xc
	.value	0x1e4
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0xc
	.value	0x1e7
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0xc
	.value	0x1ea
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0xc
	.value	0x1ed
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x20
	.long	.LASF7
	.byte	0xc
	.value	0x1fa
	.long	0x1a3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xd
	.string	"max_jumptable_ents"
	.byte	0xc
	.value	0x1fe
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x1b
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2464
	.uleb128 0x1b
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2476
	.uleb128 0x3
	.byte	0x4
	.long	0x195b
	.uleb128 0x3
	.byte	0x4
	.long	0x1806
	.uleb128 0x1b
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x2496
	.uleb128 0x3
	.byte	0x4
	.long	0x1aa5
	.uleb128 0x1b
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x24b2
	.uleb128 0x1b
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x24cf
	.uleb128 0x1b
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x24e1
	.uleb128 0x1b
	.string	"language_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x24fa
	.uleb128 0xf
	.long	0x2524
	.long	0x516
	.uleb128 0x10
	.long	0x480
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"HARD_REG_ELT_TYPE"
	.byte	0xa
	.byte	0x29
	.long	0x516
	.uleb128 0x2
	.string	"HARD_REG_SET"
	.byte	0xa
	.byte	0x34
	.long	0x2551
	.uleb128 0xf
	.long	0x2561
	.long	0x2524
	.uleb128 0x10
	.long	0x480
	.byte	0x2
	.byte	0x0
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x4d4
	.uleb128 0x4
	.long	0x25cb
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x7
	.byte	0x35
	.long	0x25cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x25cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x25d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2574
	.uleb128 0xf
	.long	0x25e1
	.long	0x2561
	.uleb128 0x10
	.long	0x480
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x2574
	.uleb128 0x3
	.byte	0x4
	.long	0x25e1
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x1583
	.uleb128 0x4
	.long	0x2665
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.uleb128 0x6
	.string	"n_bits"
	.byte	0x9
	.byte	0x21
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"size"
	.byte	0x9
	.byte	0x22
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"bytes"
	.byte	0x9
	.byte	0x23
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"elms"
	.byte	0x9
	.byte	0x24
	.long	0x2514
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x9
	.byte	0x25
	.long	0x2674
	.uleb128 0x3
	.byte	0x4
	.long	0x260b
	.uleb128 0x3
	.byte	0x4
	.long	0x516
	.uleb128 0x2
	.string	"regset"
	.byte	0x8
	.byte	0x22
	.long	0x25fd
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x8
	.byte	0x75
	.long	0x505
	.uleb128 0x4
	.long	0x2748
	.string	"edge_def"
	.byte	0x28
	.byte	0x8
	.byte	0x78
	.uleb128 0x6
	.string	"pred_next"
	.byte	0x8
	.byte	0x7a
	.long	0x2748
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"succ_next"
	.byte	0x8
	.byte	0x7a
	.long	0x2748
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"src"
	.byte	0x8
	.byte	0x7d
	.long	0x170c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"dest"
	.byte	0x8
	.byte	0x7d
	.long	0x170c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"insns"
	.byte	0x8
	.byte	0x80
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"aux"
	.byte	0x8
	.byte	0x83
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x8
	.byte	0x85
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"probability"
	.byte	0x8
	.byte	0x86
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"count"
	.byte	0x8
	.byte	0x87
	.long	0x268e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x269f
	.uleb128 0x2
	.string	"edge"
	.byte	0x8
	.byte	0x89
	.long	0x2748
	.uleb128 0x4
	.long	0x29c9
	.string	"loop"
	.byte	0x80
	.byte	0x8
	.byte	0xdc
	.uleb128 0xd
	.string	"num"
	.byte	0x8
	.value	0x176
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"header"
	.byte	0x8
	.value	0x179
	.long	0x29cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"latch"
	.byte	0x8
	.value	0x17c
	.long	0x29cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"pre_header"
	.byte	0x8
	.value	0x17f
	.long	0x29cf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"pre_header_edges"
	.byte	0x8
	.value	0x184
	.long	0x29e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"num_pre_header_edges"
	.byte	0x8
	.value	0x187
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"first"
	.byte	0x8
	.value	0x18b
	.long	0x29cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"last"
	.byte	0x8
	.value	0x18f
	.long	0x29cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"nodes"
	.byte	0x8
	.value	0x192
	.long	0x2665
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.string	"num_nodes"
	.byte	0x8
	.value	0x195
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"entry_edges"
	.byte	0x8
	.value	0x198
	.long	0x29e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.string	"num_entries"
	.byte	0x8
	.value	0x19b
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.string	"exit_edges"
	.byte	0x8
	.value	0x19e
	.long	0x29e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"num_exits"
	.byte	0x8
	.value	0x1a1
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.string	"exits_doms"
	.byte	0x8
	.value	0x1a4
	.long	0x2665
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.string	"depth"
	.byte	0x8
	.value	0x1a7
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.string	"pred"
	.byte	0x8
	.value	0x1aa
	.long	0x29e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.string	"level"
	.byte	0x8
	.value	0x1ae
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"outer"
	.byte	0x8
	.value	0x1b1
	.long	0x29c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.string	"inner"
	.byte	0x8
	.value	0x1b4
	.long	0x29c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x20
	.long	.LASF4
	.byte	0x8
	.value	0x1b7
	.long	0x29c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.string	"invalid"
	.byte	0x8
	.value	0x1ba
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.string	"aux"
	.byte	0x8
	.value	0x1bd
	.long	0x56c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.string	"vtop"
	.byte	0x8
	.value	0x1c3
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.string	"cont"
	.byte	0x8
	.value	0x1c7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.string	"start"
	.byte	0x8
	.value	0x1ca
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.string	"end"
	.byte	0x8
	.value	0x1cd
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.string	"top"
	.byte	0x8
	.value	0x1d1
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xd
	.string	"scan_start"
	.byte	0x8
	.value	0x1d4
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.string	"sink"
	.byte	0x8
	.value	0x1d7
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.string	"exit_labels"
	.byte	0x8
	.value	0x1e2
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.string	"exit_count"
	.byte	0x8
	.value	0x1e6
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x275a
	.uleb128 0x2
	.string	"basic_block"
	.byte	0x8
	.byte	0xe6
	.long	0x170c
	.uleb128 0x3
	.byte	0x4
	.long	0x274e
	.uleb128 0x3
	.byte	0x4
	.long	0x29c9
	.uleb128 0x16
	.long	0x2a52
	.string	"df_ref_type"
	.byte	0x4
	.byte	0xb
	.byte	0x23
	.uleb128 0xb
	.string	"DF_REF_REG_DEF"
	.sleb128 0
	.uleb128 0xb
	.string	"DF_REF_REG_USE"
	.sleb128 1
	.uleb128 0xb
	.string	"DF_REF_REG_MEM_LOAD"
	.sleb128 2
	.uleb128 0xb
	.string	"DF_REF_REG_MEM_STORE"
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.long	0x2a7f
	.string	"df_link"
	.byte	0x8
	.byte	0xb
	.byte	0x2e
	.uleb128 0x1c
	.long	.LASF4
	.byte	0xb
	.byte	0x2f
	.long	0x2a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"ref"
	.byte	0xb
	.byte	0x30
	.long	0x2af6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2a52
	.uleb128 0x4
	.long	0x2af6
	.string	"ref"
	.byte	0x1c
	.byte	0xb
	.byte	0x30
	.uleb128 0x6
	.string	"reg"
	.byte	0xb
	.byte	0x44
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"insn"
	.byte	0xb
	.byte	0x45
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"loc"
	.byte	0xb
	.byte	0x46
	.long	0x1747
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"chain"
	.byte	0xb
	.byte	0x47
	.long	0x2a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.long	.LASF8
	.byte	0xb
	.byte	0x48
	.long	0x29ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"id"
	.byte	0xb
	.byte	0x49
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.long	.LASF3
	.byte	0xb
	.byte	0x4a
	.long	0x2afc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2a85
	.uleb128 0x16
	.long	0x2b3b
	.string	"df_ref_flags"
	.byte	0x4
	.byte	0xb
	.byte	0x34
	.uleb128 0xb
	.string	"DF_REF_READ_WRITE"
	.sleb128 1
	.uleb128 0xb
	.string	"DF_REF_MODE_CHANGE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.long	0x2b7b
	.string	"insn_info"
	.byte	0xc
	.byte	0xb
	.byte	0x50
	.uleb128 0x6
	.string	"defs"
	.byte	0xb
	.byte	0x51
	.long	0x2a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0xb
	.byte	0x52
	.long	0x2a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"luid"
	.byte	0xb
	.byte	0x55
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x13
	.long	0x2bdb
	.long	.LASF9
	.byte	0x14
	.byte	0xb
	.byte	0x5e
	.uleb128 0x6
	.string	"defs"
	.byte	0xb
	.byte	0x5f
	.long	0x2a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"uses"
	.byte	0xb
	.byte	0x60
	.long	0x2a7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"lifetime"
	.byte	0xb
	.byte	0x61
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"n_defs"
	.byte	0xb
	.byte	0x62
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"n_uses"
	.byte	0xb
	.byte	0x63
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x4
	.long	0x2cf0
	.string	"bb_info"
	.byte	0x3c
	.byte	0xb
	.byte	0x69
	.uleb128 0x6
	.string	"rd_kill"
	.byte	0xb
	.byte	0x6b
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"rd_gen"
	.byte	0xb
	.byte	0x6c
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"rd_in"
	.byte	0xb
	.byte	0x6d
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"rd_out"
	.byte	0xb
	.byte	0x6e
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"ru_kill"
	.byte	0xb
	.byte	0x70
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"ru_gen"
	.byte	0xb
	.byte	0x71
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"ru_in"
	.byte	0xb
	.byte	0x72
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"ru_out"
	.byte	0xb
	.byte	0x73
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"lr_def"
	.byte	0xb
	.byte	0x75
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"lr_use"
	.byte	0xb
	.byte	0x76
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"lr_in"
	.byte	0xb
	.byte	0x77
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"lr_out"
	.byte	0xb
	.byte	0x78
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"rd_valid"
	.byte	0xb
	.byte	0x79
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"ru_valid"
	.byte	0xb
	.byte	0x7a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"lr_valid"
	.byte	0xb
	.byte	0x7b
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x4
	.long	0x2f25
	.string	"df"
	.byte	0x74
	.byte	0xb
	.byte	0x80
	.uleb128 0x1c
	.long	.LASF3
	.byte	0xb
	.byte	0x81
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"bbs"
	.byte	0xb
	.byte	0x82
	.long	0x2f25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"defs"
	.byte	0xb
	.byte	0x83
	.long	0x2f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"uses"
	.byte	0xb
	.byte	0x84
	.long	0x2f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"reg_def_last"
	.byte	0xb
	.byte	0x85
	.long	0x2f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"regs"
	.byte	0xb
	.byte	0x86
	.long	0x2f31
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"reg_size"
	.byte	0xb
	.byte	0x87
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"insns"
	.byte	0xb
	.byte	0x88
	.long	0x2f37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"insn_size"
	.byte	0xb
	.byte	0x89
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"def_id"
	.byte	0xb
	.byte	0x8a
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"def_size"
	.byte	0xb
	.byte	0x8b
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"n_defs"
	.byte	0xb
	.byte	0x8c
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"use_id"
	.byte	0xb
	.byte	0x8d
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"use_size"
	.byte	0xb
	.byte	0x8e
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"n_uses"
	.byte	0xb
	.byte	0x8f
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"n_bbs"
	.byte	0xb
	.byte	0x90
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"n_regs"
	.byte	0xb
	.byte	0x91
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"def_id_save"
	.byte	0xb
	.byte	0x92
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"use_id_save"
	.byte	0xb
	.byte	0x93
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"insns_modified"
	.byte	0xb
	.byte	0x94
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"bbs_modified"
	.byte	0xb
	.byte	0x95
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"all_blocks"
	.byte	0xb
	.byte	0x96
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"dom"
	.byte	0xb
	.byte	0x99
	.long	0x2f3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.string	"dfs_order"
	.byte	0xb
	.byte	0x9a
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"rc_order"
	.byte	0xb
	.byte	0x9b
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.string	"rts_order"
	.byte	0xb
	.byte	0x9c
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.string	"inverse_rc_map"
	.byte	0xb
	.byte	0x9d
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.string	"inverse_dfs_map"
	.byte	0xb
	.byte	0x9e
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x6
	.string	"inverse_rts_map"
	.byte	0xb
	.byte	0x9f
	.long	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2bdb
	.uleb128 0x3
	.byte	0x4
	.long	0x2af6
	.uleb128 0x3
	.byte	0x4
	.long	0x2b7b
	.uleb128 0x3
	.byte	0x4
	.long	0x2b3b
	.uleb128 0x3
	.byte	0x4
	.long	0x2665
	.uleb128 0x21
	.long	0x2f62
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.uleb128 0x1a
	.string	"web"
	.byte	0x2
	.byte	0x1d
	.long	0x33d4
	.uleb128 0x22
	.long	.LASF10
	.byte	0x2
	.byte	0x1e
	.long	0x3443
	.byte	0x0
	.uleb128 0x4
	.long	0x33d4
	.string	"web"
	.byte	0xe8
	.byte	0x2
	.byte	0x1d
	.uleb128 0x6
	.string	"id"
	.byte	0x2
	.byte	0x5d
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"regno"
	.byte	0x2
	.byte	0x60
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"span_deaths"
	.byte	0x2
	.byte	0x63
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"spill_temp"
	.byte	0x2
	.byte	0x6b
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"orig_spill_temp"
	.byte	0x2
	.byte	0x6f
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"spill_cost"
	.byte	0x2
	.byte	0x72
	.long	0x516
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"orig_spill_cost"
	.byte	0x2
	.byte	0x73
	.long	0x516
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"num_aliased"
	.byte	0x2
	.byte	0x76
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"color"
	.byte	0x2
	.byte	0x79
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"old_color"
	.byte	0x2
	.byte	0x7c
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"use_my_regs"
	.byte	0x2
	.byte	0x82
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"was_spilled"
	.byte	0x2
	.byte	0x86
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"is_coalesced"
	.byte	0x2
	.byte	0x8c
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"artificial"
	.byte	0x2
	.byte	0x9c
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"crosses_call"
	.byte	0x2
	.byte	0x9f
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"move_related"
	.byte	0x2
	.byte	0xa2
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"live_over_abnormal"
	.byte	0x2
	.byte	0xa5
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"mode_changed"
	.byte	0x2
	.byte	0xa9
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"old_web"
	.byte	0x2
	.byte	0xad
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"in_load"
	.byte	0x2
	.byte	0xb1
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"one_load"
	.byte	0x2
	.byte	0xb7
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"changed"
	.byte	0x2
	.byte	0xbd
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"target_of_spilled_move"
	.byte	0x2
	.byte	0xc3
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"have_orig_conflicts"
	.byte	0x2
	.byte	0xc9
	.long	0x469
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.long	.LASF8
	.byte	0x2
	.byte	0xcc
	.long	0x348b
	.byte	0x4
	.byte	0x5
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"regclass"
	.byte	0x2
	.byte	0xd1
	.long	0x221
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"add_hardregs"
	.byte	0x2
	.byte	0xd4
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"num_conflicts"
	.byte	0x2
	.byte	0xd7
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1c
	.long	.LASF11
	.byte	0x2
	.byte	0xda
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x2
	.byte	0xdb
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"orig_x"
	.byte	0x2
	.byte	0xe0
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"parent_web"
	.byte	0x2
	.byte	0xe4
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.string	"subreg_next"
	.byte	0x2
	.byte	0xe8
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.string	"conflict_list"
	.byte	0x2
	.byte	0xeb
	.long	0x3574
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.string	"orig_conflict_list"
	.byte	0x2
	.byte	0xf1
	.long	0x3574
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.string	"useless_conflicts"
	.byte	0x2
	.byte	0xf6
	.long	0x25fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.long	.LASF13
	.byte	0x2
	.byte	0xf9
	.long	0x253d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.string	"orig_usable_regs"
	.byte	0x2
	.byte	0xfb
	.long	0x253d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.string	"bias_colors"
	.byte	0x2
	.byte	0xfe
	.long	0x253d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x20
	.long	.LASF14
	.byte	0x2
	.value	0x100
	.long	0x253d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.string	"num_freedom"
	.byte	0x2
	.value	0x103
	.long	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xd
	.string	"reg_rtx"
	.byte	0x2
	.value	0x107
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xd
	.string	"stack_slot"
	.byte	0x2
	.value	0x10b
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xd
	.string	"last_use_insn"
	.byte	0x2
	.value	0x10f
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xd
	.string	"pattern"
	.byte	0x2
	.value	0x113
	.long	0xa0
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xd
	.string	"defs"
	.byte	0x2
	.value	0x117
	.long	0x2f2b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xd
	.string	"uses"
	.byte	0x2
	.value	0x118
	.long	0x2f2b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.string	"alias"
	.byte	0x2
	.value	0x11d
	.long	0x33d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xd
	.string	"moves"
	.byte	0x2
	.value	0x121
	.long	0x35ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xd
	.string	"dlink"
	.byte	0x2
	.value	0x124
	.long	0x3485
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xd
	.string	"temp_refs"
	.byte	0x2
	.value	0x128
	.long	0x2a7f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f62
	.uleb128 0x13
	.long	0x3443
	.long	.LASF10
	.byte	0x14
	.byte	0x2
	.byte	0x1e
	.uleb128 0xd
	.string	"insn"
	.byte	0x2
	.value	0x154
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"source_web"
	.byte	0x2
	.value	0x155
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"target_web"
	.byte	0x2
	.value	0x156
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF8
	.byte	0x2
	.value	0x157
	.long	0x35f8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"dlink"
	.byte	0x2
	.value	0x158
	.long	0x3485
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x33da
	.uleb128 0x4
	.long	0x3485
	.string	"dlist"
	.byte	0xc
	.byte	0x2
	.byte	0x18
	.uleb128 0x6
	.string	"prev"
	.byte	0x2
	.byte	0x19
	.long	0x3485
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x2
	.byte	0x1a
	.long	0x3485
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"value"
	.byte	0x2
	.byte	0x1f
	.long	0x2f43
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3449
	.uleb128 0x16
	.long	0x3532
	.string	"node_type"
	.byte	0x4
	.byte	0x2
	.byte	0x27
	.uleb128 0xb
	.string	"INITIAL"
	.sleb128 0
	.uleb128 0xb
	.string	"FREE"
	.sleb128 1
	.uleb128 0xb
	.string	"PRECOLORED"
	.sleb128 2
	.uleb128 0xb
	.string	"SIMPLIFY"
	.sleb128 3
	.uleb128 0xb
	.string	"SIMPLIFY_SPILL"
	.sleb128 4
	.uleb128 0xb
	.string	"SIMPLIFY_FAT"
	.sleb128 5
	.uleb128 0xb
	.string	"FREEZE"
	.sleb128 6
	.uleb128 0xb
	.string	"SPILL"
	.sleb128 7
	.uleb128 0xb
	.string	"SELECT"
	.sleb128 8
	.uleb128 0xb
	.string	"SPILLED"
	.sleb128 9
	.uleb128 0xb
	.string	"COALESCED"
	.sleb128 10
	.uleb128 0xb
	.string	"COLORED"
	.sleb128 11
	.uleb128 0xb
	.string	"LAST_NODE_TYPE"
	.sleb128 12
	.byte	0x0
	.uleb128 0x4
	.long	0x3574
	.string	"conflict_link"
	.byte	0xc
	.byte	0x2
	.byte	0xeb
	.uleb128 0x20
	.long	.LASF4
	.byte	0x2
	.value	0x140
	.long	0x3574
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.value	0x143
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"sub"
	.byte	0x2
	.value	0x147
	.long	0x35f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3532
	.uleb128 0xc
	.long	0x35ac
	.string	"move_list"
	.byte	0x8
	.byte	0x2
	.value	0x121
	.uleb128 0x20
	.long	.LASF4
	.byte	0x2
	.value	0x15e
	.long	0x35ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF10
	.byte	0x2
	.value	0x15f
	.long	0x3443
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x357a
	.uleb128 0xc
	.long	0x35f2
	.string	"sub_conflict"
	.byte	0xc
	.byte	0x2
	.value	0x135
	.uleb128 0x20
	.long	.LASF4
	.byte	0x2
	.value	0x138
	.long	0x35f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"s"
	.byte	0x2
	.value	0x139
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"t"
	.byte	0x2
	.value	0x13a
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x35b2
	.uleb128 0xa
	.long	0x3657
	.string	"move_type"
	.byte	0x4
	.byte	0x2
	.value	0x14c
	.uleb128 0xb
	.string	"WORKLIST"
	.sleb128 0
	.uleb128 0xb
	.string	"MV_COALESCED"
	.sleb128 1
	.uleb128 0xb
	.string	"CONSTRAINED"
	.sleb128 2
	.uleb128 0xb
	.string	"FROZEN"
	.sleb128 3
	.uleb128 0xb
	.string	"ACTIVE"
	.sleb128 4
	.uleb128 0xb
	.string	"LAST_MOVE_TYPE"
	.sleb128 5
	.byte	0x0
	.uleb128 0xc
	.long	0x36ac
	.string	"ra_insn_info"
	.byte	0x10
	.byte	0x2
	.value	0x169
	.uleb128 0x20
	.long	.LASF12
	.byte	0x2
	.value	0x16a
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF11
	.byte	0x2
	.value	0x16a
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"defs"
	.byte	0x2
	.value	0x16b
	.long	0x2f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"uses"
	.byte	0x2
	.value	0x16b
	.long	0x2f2b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x24
	.long	0x36f6
	.string	"push_list"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x68
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.byte	0x69
	.long	0x36f6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF15
	.long	0x5d1e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10340
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3485
	.uleb128 0x24
	.long	0x374a
	.string	"push_list_end"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x75
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.byte	0x76
	.long	0x36f6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF15
	.long	0x5d09
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10355
	.byte	0x0
	.uleb128 0x27
	.long	0x3793
	.byte	0x1
	.string	"remove_list"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x89
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.byte	0x8a
	.long	0x36f6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.byte	0x8c
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x29
	.long	0x37d1
	.byte	0x1
	.string	"pop_list"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3485
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.byte	0x9b
	.long	0x36f6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.byte	0x9d
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	0x3800
	.string	"free_dlist"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x25
	.string	"list"
	.byte	0x1
	.byte	0xa7
	.long	0x36f6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x27
	.long	0x384a
	.byte	0x1
	.string	"put_web"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x25
	.string	"web"
	.byte	0x1
	.byte	0xb2
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF8
	.byte	0x1
	.byte	0xb3
	.long	0x348b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF15
	.long	0x5cf4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10414
	.byte	0x0
	.uleb128 0x27
	.long	0x38f8
	.byte	0x1
	.string	"reset_lists"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.byte	0xdb
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xdc
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	0x38ae
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x28
	.string	"web"
	.byte	0x1
	.byte	0xe3
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"aweb"
	.byte	0x1
	.byte	0xe4
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	0x38ca
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x28
	.string	"web"
	.byte	0x1
	.byte	0xf8
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	0x38e7
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x100
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5cef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10442
	.byte	0x0
	.uleb128 0x2d
	.long	0x394b
	.string	"put_web_at_end"
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x110
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x111
	.long	0x348b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF15
	.long	0x5cea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10518
	.byte	0x0
	.uleb128 0x30
	.long	0x3986
	.byte	0x1
	.string	"remove_web_from_list"
	.byte	0x1
	.value	0x121
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x120
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3aa8
	.string	"build_worklists"
	.byte	0x1
	.value	0x14b
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST9
	.uleb128 0x2e
	.string	"df"
	.byte	0x1
	.value	0x14a
	.long	0x3aa8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x14c
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"d_next"
	.byte	0x1
	.value	0x14c
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0x14d
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.long	0x3a73
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x15a
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"num"
	.byte	0x1
	.value	0x15a
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"max_num"
	.byte	0x1
	.value	0x15a
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF16
	.byte	0x1
	.value	0x15b
	.long	0x3aae
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x166
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x167
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x2c
	.string	"pweb"
	.byte	0x1
	.value	0x16c
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3a90
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x179
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.value	0x18d
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2cf0
	.uleb128 0x3
	.byte	0x4
	.long	0x33d4
	.uleb128 0x2d
	.long	0x3b01
	.string	"put_move"
	.byte	0x1
	.value	0x12e
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST10
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x12c
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x12d
	.long	0x35f8
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF15
	.long	0x5cd5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10558
	.byte	0x0
	.uleb128 0x2d
	.long	0x3b40
	.string	"enable_move"
	.byte	0x1
	.value	0x19a
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x199
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0x19b
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3bc8
	.string	"decrement_degree"
	.byte	0x1
	.value	0x1ac
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x1aa
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"dec"
	.byte	0x1
	.value	0x1ab
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"before"
	.byte	0x1
	.value	0x1ad
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.value	0x1b1
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2c
	.string	"aweb"
	.byte	0x1
	.value	0x1b5
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3c2b
	.string	"simplify"
	.byte	0x1
	.value	0x1c8
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x1c9
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x1ca
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x1cb
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x2c
	.string	"pweb"
	.byte	0x1
	.value	0x1e2
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x3c7b
	.string	"remove_move_1"
	.byte	0x1
	.value	0x1f1
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x1ef
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x1f0
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0x1f2
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x3cd9
	.string	"remove_move"
	.byte	0x1
	.value	0x208
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x206
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF10
	.byte	0x1
	.value	0x207
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0x209
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.long	.LASF15
	.long	0x5cc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.10770
	.byte	0x0
	.uleb128 0x30
	.long	0x3d47
	.byte	0x1
	.string	"merge_moves"
	.byte	0x1
	.value	0x215
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x214
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x214
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"seen"
	.byte	0x1
	.value	0x216
	.long	0x2680
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0x217
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"ml_next"
	.byte	0x1
	.value	0x217
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2d
	.long	0x3d79
	.string	"add_worklist"
	.byte	0x1
	.value	0x22e
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x22d
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x33
	.long	0x3e22
	.string	"ok"
	.byte	0x1
	.value	0x23c
	.byte	0x1
	.long	0x21a
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x2f
	.long	.LASF17
	.byte	0x1
	.value	0x23b
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x23b
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x23d
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x23e
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"color"
	.byte	0x1
	.value	0x23f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"size"
	.byte	0x1
	.value	0x240
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x2c
	.string	"pweb"
	.byte	0x1
	.value	0x266
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x288
	.long	0x35f2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x3ed0
	.string	"conservative"
	.byte	0x1
	.value	0x298
	.byte	0x1
	.long	0x21a
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x2f
	.long	.LASF17
	.byte	0x1
	.value	0x297
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF18
	.byte	0x1
	.value	0x297
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"k"
	.byte	0x1
	.value	0x299
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"loop"
	.byte	0x1
	.value	0x29a
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"seen"
	.byte	0x1
	.value	0x29b
	.long	0x2680
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x29c
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"num_regs"
	.byte	0x1
	.value	0x29d
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x2c
	.string	"pweb"
	.byte	0x1
	.value	0x2a8
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x3f00
	.byte	0x1
	.string	"alias"
	.byte	0x1
	.value	0x2be
	.byte	0x1
	.long	0x33d4
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x2bd
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4007
	.string	"combine"
	.byte	0x1
	.value	0x2d3
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST21
	.uleb128 0x2e
	.string	"u"
	.byte	0x1
	.value	0x2d2
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.value	0x2d2
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x2d4
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x2d5
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	0x3fca
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x2c
	.string	"pweb"
	.byte	0x1
	.value	0x2e8
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x2f2
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x2f3
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x305
	.long	0x35f2
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x2c
	.string	"sweb"
	.byte	0x1
	.value	0x318
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x3ff6
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x330
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x330
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5cab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11121
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x2524
	.uleb128 0x33
	.long	0x4041
	.string	"simplify_p"
	.byte	0x1
	.value	0x2ca
	.byte	0x1
	.long	0x469
	.long	.LFB36
	.long	.LFE36
	.long	.LLST22
	.uleb128 0x2f
	.long	.LASF8
	.byte	0x1
	.value	0x2c9
	.long	0x348b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x40af
	.string	"coalesce"
	.byte	0x1
	.value	0x354
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x355
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.value	0x356
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.long	.LASF18
	.byte	0x1
	.value	0x357
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF17
	.byte	0x1
	.value	0x358
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0x35c
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4138
	.string	"freeze_moves"
	.byte	0x1
	.value	0x383
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x382
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0x384
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"ml_next"
	.byte	0x1
	.value	0x384
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.value	0x387
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"src"
	.byte	0x1
	.value	0x388
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"dest"
	.byte	0x1
	.value	0x388
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x4162
	.string	"freeze"
	.byte	0x1
	.value	0x3a2
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x3a3
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x33
	.long	0x41c5
	.string	"default_spill_heuristic"
	.byte	0x1
	.value	0x3b6
	.byte	0x1
	.long	0x516
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x3b5
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.value	0x3b7
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"divisor"
	.byte	0x1
	.value	0x3b8
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x2d
	.long	0x4274
	.string	"select_spill"
	.byte	0x1
	.value	0x3cc
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x2c
	.string	"best"
	.byte	0x1
	.value	0x3cd
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"bestd"
	.byte	0x1
	.value	0x3ce
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"best2"
	.byte	0x1
	.value	0x3cf
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"bestd2"
	.byte	0x1
	.value	0x3d0
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x3d1
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	0x4263
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0x3d4
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"cost"
	.byte	0x1
	.value	0x3d5
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5ca6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11434
	.byte	0x0
	.uleb128 0x33
	.long	0x42ff
	.string	"color_usable_p"
	.byte	0x1
	.value	0x3fd
	.byte	0x1
	.long	0x21a
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x3fa
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x3fb
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x3fb
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"mode"
	.byte	0x1
	.value	0x3fc
	.long	0x8c1
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x32
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x402
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"size"
	.byte	0x1
	.value	0x402
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.long	0x43f3
	.byte	0x1
	.string	"get_free_reg"
	.byte	0x1
	.value	0x41c
	.byte	0x1
	.long	0x21a
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x41a
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x41a
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"mode"
	.byte	0x1
	.value	0x41b
	.long	0x8c1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x41d
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"last_resort_reg"
	.byte	0x1
	.value	0x41e
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"pref_reg"
	.byte	0x1
	.value	0x41f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"pref_reg_order"
	.byte	0x1
	.value	0x420
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"last_resort_reg_order"
	.byte	0x1
	.value	0x421
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x428
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"size"
	.byte	0x1
	.value	0x428
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x45b9
	.string	"get_biased_reg"
	.byte	0x1
	.value	0x44f
	.byte	0x1
	.long	0x21a
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x44d
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"bias"
	.byte	0x1
	.value	0x44d
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF14
	.byte	0x1
	.value	0x44d
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x44d
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.string	"mode"
	.byte	0x1
	.value	0x44e
	.long	0x8c1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x450
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x451
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	0x44b2
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x454
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x454
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x2b
	.long	0x44e0
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x455
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x455
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x2b
	.long	0x450c
	.long	.LBB28
	.long	.LBE28
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x456
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x456
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.uleb128 0x2b
	.long	0x4538
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x45a
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x45a
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2b
	.long	0x4564
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x45b
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x45b
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x2b
	.long	0x4590
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x460
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x460
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x32
	.long	.LBB32
	.long	.LBE32
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x461
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x461
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x462e
	.string	"count_long_blocks"
	.byte	0x1
	.value	0x470
	.byte	0x1
	.long	0x21a
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x46e
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x46f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x471
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.value	0x471
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"count"
	.byte	0x1
	.value	0x472
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x33
	.long	0x46a6
	.string	"hardregset_to_string"
	.byte	0x1
	.value	0x489
	.byte	0x1
	.long	0x56e
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x488
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x48e
	.long	0x56e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x48f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.value	0x48f
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"string"
	.byte	0x1
	.value	0x48a
	.long	0x5c95
	.byte	0x5
	.byte	0x3
	.long	string.11785
	.byte	0x0
	.uleb128 0x2d
	.long	0x4808
	.string	"calculate_dont_begin"
	.byte	0x1
	.value	0x4aa
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x4a8
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"result"
	.byte	0x1
	.value	0x4a9
	.long	0x4808
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x4ab
	.long	0x3574
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x4ac
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	0x472e
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x4b1
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x2b
	.long	0x47df
	.long	.LBB34
	.long	.LBE34
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0x4b4
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF25
	.byte	0x1
	.value	0x4b5
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x4b6
	.long	0x35f2
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x31
	.long	.LASF18
	.byte	0x1
	.value	0x4bc
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"tsize"
	.byte	0x1
	.value	0x4bd
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"ssize"
	.byte	0x1
	.value	0x4c0
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"tofs"
	.byte	0x1
	.value	0x4c2
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"sofs"
	.byte	0x1
	.value	0x4c3
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"c1"
	.byte	0x1
	.value	0x4c6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"c2"
	.byte	0x1
	.value	0x4c6
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x4ef
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x4ef
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x253d
	.uleb128 0x2d
	.long	0x4d1f
	.string	"colorize_one_web"
	.byte	0x1
	.value	0x503
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x501
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"hard"
	.byte	0x1
	.value	0x502
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x504
	.long	0x3574
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2c
	.string	"colors"
	.byte	0x1
	.value	0x505
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x505
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x506
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.string	"bestc"
	.byte	0x1
	.value	0x507
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2c
	.string	"neighbor_needs"
	.byte	0x1
	.value	0x508
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.string	"fat_neighbor"
	.byte	0x1
	.value	0x509
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2c
	.string	"fats_parent"
	.byte	0x1
	.value	0x50a
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.string	"num_fat"
	.byte	0x1
	.value	0x50b
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2c
	.string	"long_blocks"
	.byte	0x1
	.value	0x50c
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.string	"best_long_blocks"
	.byte	0x1
	.value	0x50d
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2c
	.string	"fat_colors"
	.byte	0x1
	.value	0x50e
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2c
	.string	"bias"
	.byte	0x1
	.value	0x50f
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2b
	.long	0x4980
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x516
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.byte	0x0
	.uleb128 0x2b
	.long	0x49e5
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0x51d
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x31
	.long	.LASF25
	.byte	0x1
	.value	0x51e
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x51f
	.long	0x35f2
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x32
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x520
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x520
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x4a13
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x53c
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x53c
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.uleb128 0x2b
	.long	0x4c43
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2c
	.string	"call_clobbered"
	.byte	0x1
	.value	0x544
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2b
	.long	0x4a69
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x554
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x554
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.byte	0x0
	.uleb128 0x2b
	.long	0x4a97
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x555
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x555
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.byte	0x0
	.uleb128 0x2b
	.long	0x4ac5
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x559
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x559
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x0
	.uleb128 0x2b
	.long	0x4af3
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x560
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x560
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0x2b
	.long	0x4b21
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x561
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x561
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.byte	0x0
	.uleb128 0x2b
	.long	0x4b4f
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x579
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x579
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x0
	.uleb128 0x2b
	.long	0x4b7d
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x57b
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x57b
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x2b
	.long	0x4bab
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x582
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x582
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2b
	.long	0x4bd9
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x583
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x583
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.byte	0x0
	.uleb128 0x32
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x594
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"new_long"
	.byte	0x1
	.value	0x595
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"colors1"
	.byte	0x1
	.value	0x596
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x32
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x597
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x597
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x4ccb
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x2c
	.string	"loop"
	.byte	0x1
	.value	0x5cf
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"try"
	.byte	0x1
	.value	0x5d0
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"candidates"
	.byte	0x1
	.value	0x5d1
	.long	0x4d1f
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2b
	.long	0x4caf
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0x5e5
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"aw"
	.byte	0x1
	.value	0x5e6
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0x0
	.uleb128 0x32
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2c
	.string	"old_c"
	.byte	0x1
	.value	0x628
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x4d0e
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x661
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x31
	.long	.LASF25
	.byte	0x1
	.value	0x664
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x665
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12061
	.byte	0x0
	.uleb128 0xf
	.long	0x4d2f
	.long	0x33d4
	.uleb128 0x10
	.long	0x480
	.byte	0x7
	.byte	0x0
	.uleb128 0x2d
	.long	0x4d94
	.string	"assign_colors"
	.byte	0x1
	.value	0x684
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x685
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	0x4d7c
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x689
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x32
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.value	0x691
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x50b2
	.string	"try_recolor_web"
	.byte	0x1
	.value	0x6a4
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x6a3
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x6a5
	.long	0x3574
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.string	"cost_neighbors"
	.byte	0x1
	.value	0x6a6
	.long	0x267a
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.string	"min_color"
	.byte	0x1
	.value	0x6a7
	.long	0x50b2
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.string	"newcol"
	.byte	0x1
	.value	0x6a8
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x6a8
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.string	"precolored_neighbors"
	.byte	0x1
	.value	0x6a9
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.string	"spill_temps"
	.byte	0x1
	.value	0x6a9
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.string	"possible_begin"
	.byte	0x1
	.value	0x6aa
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.string	"wide_seen"
	.byte	0x1
	.value	0x6aa
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.long	0x4eb1
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x6b0
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0x0
	.uleb128 0x2b
	.long	0x4edd
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x6b3
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x6b3
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0x0
	.uleb128 0x2b
	.long	0x4efb
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x6c1
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x0
	.uleb128 0x2b
	.long	0x4f19
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x6c2
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x0
	.uleb128 0x2b
	.long	0x4f37
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x6c3
	.long	0x4007
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x0
	.uleb128 0x2b
	.long	0x4ff8
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x6c6
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x6c7
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"nn"
	.byte	0x1
	.value	0x6c8
	.long	0x3574
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.string	"c1"
	.byte	0x1
	.value	0x6c9
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"c2"
	.byte	0x1
	.value	0x6c9
	.long	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"wide_p"
	.byte	0x1
	.value	0x6ca
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x6ed
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"colors"
	.byte	0x1
	.value	0x6ee
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x32
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x6f0
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x6f0
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x50a1
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x709
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"cost"
	.byte	0x1
	.value	0x70a
	.long	0x516
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.string	"old_colors"
	.byte	0x1
	.value	0x70b
	.long	0x8b4
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"wl_next"
	.byte	0x1
	.value	0x70c
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	0x5087
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x715
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x2c
	.string	"nregs2"
	.byte	0x1
	.value	0x720
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x745
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c7b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12793
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x469
	.uleb128 0x2d
	.long	0x5106
	.string	"insert_coalesced_conflicts"
	.byte	0x1
	.value	0x76e
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x76f
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13149
	.byte	0x0
	.uleb128 0x33
	.long	0x516d
	.string	"comp_webs_maxcost"
	.byte	0x1
	.value	0x7a5
	.byte	0x1
	.long	0x21a
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x2e
	.string	"w1"
	.byte	0x1
	.value	0x7a4
	.long	0x8ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"w2"
	.byte	0x1
	.value	0x7a4
	.long	0x8ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"web1"
	.byte	0x1
	.value	0x7a6
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x7a7
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x51d6
	.string	"recolor_spills"
	.byte	0x1
	.value	0x7b5
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x7b6
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"num"
	.byte	0x1
	.value	0x7b6
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF16
	.byte	0x1
	.value	0x7b7
	.long	0x3aae
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x7c7
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x5324
	.string	"check_colors"
	.byte	0x1
	.value	0x7da
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x7db
	.long	0x469
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	0x5313
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x7de
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.string	"aweb"
	.byte	0x1
	.value	0x7df
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x7e0
	.long	0x3574
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x7e1
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x7e1
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	0x528e
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x7fa
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"nregs2"
	.byte	0x1
	.value	0x7fb
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x32
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x809
	.long	0x35f2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"scol"
	.byte	0x1
	.value	0x80a
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"tcol"
	.byte	0x1
	.value	0x80b
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x2c
	.string	"ssize"
	.byte	0x1
	.value	0x810
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"tsize"
	.byte	0x1
	.value	0x811
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"sofs"
	.byte	0x1
	.value	0x812
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"tofs"
	.byte	0x1
	.value	0x812
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c61
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13316
	.byte	0x0
	.uleb128 0x2d
	.long	0x5355
	.string	"unalias_web"
	.byte	0x1
	.value	0x829
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x828
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2d
	.long	0x5409
	.string	"break_aliases_to_web"
	.byte	0x1
	.value	0x846
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x845
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x847
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"d_next"
	.byte	0x1
	.value	0x847
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	0x53cc
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2c
	.string	"other"
	.byte	0x1
	.value	0x84c
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	0x53f8
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x860
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x860
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13518
	.byte	0x0
	.uleb128 0x2d
	.long	0x5545
	.string	"break_precolored_alias"
	.byte	0x1
	.value	0x871
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST43
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x870
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"pre"
	.byte	0x1
	.value	0x872
	.long	0x33d4
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x873
	.long	0x3574
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x874
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF19
	.byte	0x1
	.value	0x875
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	0x5534
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x87e
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.value	0x87f
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x880
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"wl2"
	.byte	0x1
	.value	0x881
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"pcl"
	.byte	0x1
	.value	0x882
	.long	0x5545
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"regs"
	.byte	0x1
	.value	0x883
	.long	0x253d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	0x54ff
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x888
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x2b
	.long	0x551c
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2c
	.string	"sub"
	.byte	0x1
	.value	0x899
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x32
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.value	0x8a6
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13554
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3574
	.uleb128 0x2d
	.long	0x5690
	.string	"restore_conflicts_from_coalesce"
	.byte	0x1
	.value	0x8b6
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST44
	.uleb128 0x2e
	.string	"web"
	.byte	0x1
	.value	0x8b5
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"pcl"
	.byte	0x1
	.value	0x8b7
	.long	0x5545
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.string	"wl"
	.byte	0x1
	.value	0x8b8
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	0x5603
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2c
	.string	"other"
	.byte	0x1
	.value	0x8c1
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x2c
	.string	"opcl"
	.byte	0x1
	.value	0x8cf
	.long	0x5545
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"owl"
	.byte	0x1
	.value	0x8d0
	.long	0x3574
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x8d1
	.long	0x35f2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x562f
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x31
	.long	.LASF20
	.byte	0x1
	.value	0x8fa
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.long	.LASF21
	.byte	0x1
	.value	0x8fa
	.long	0x4007
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.uleb128 0x2b
	.long	0x567f
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x2c
	.string	"tweb"
	.byte	0x1
	.value	0x902
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2c
	.string	"sl"
	.byte	0x1
	.value	0x909
	.long	0x35f2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x2c
	.string	"sweb"
	.byte	0x1
	.value	0x90c
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c22
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13886
	.byte	0x0
	.uleb128 0x2d
	.long	0x5728
	.string	"break_coalesced_spills"
	.byte	0x1
	.value	0x920
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST45
	.uleb128 0x2c
	.string	"changed"
	.byte	0x1
	.value	0x921
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	0x56f9
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x924
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0x925
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x32
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x943
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.value	0x946
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.long	0x57a9
	.string	"web_pair"
	.byte	0x1c
	.byte	0x1
	.value	0x951
	.uleb128 0xd
	.string	"next_hash"
	.byte	0x1
	.value	0x952
	.long	0x57a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.string	"next_list"
	.byte	0x1
	.value	0x953
	.long	0x57a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"smaller"
	.byte	0x1
	.value	0x954
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"larger"
	.byte	0x1
	.value	0x955
	.long	0x33d4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x20
	.long	.LASF27
	.byte	0x1
	.value	0x956
	.long	0x469
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"cost"
	.byte	0x1
	.value	0x957
	.long	0x516
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5728
	.uleb128 0x35
	.string	"init_web_pairs"
	.byte	0x1
	.value	0x964
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST46
	.uleb128 0x2d
	.long	0x5869
	.string	"add_web_pair_cost"
	.byte	0x1
	.value	0x973
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST47
	.uleb128 0x2e
	.string	"web1"
	.byte	0x1
	.value	0x970
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x970
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"cost"
	.byte	0x1
	.value	0x971
	.long	0x516
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF27
	.byte	0x1
	.value	0x972
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.string	"hash"
	.byte	0x1
	.value	0x974
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0x975
	.long	0x57a9
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0x978
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.long	0x58ca
	.string	"comp_web_pairs"
	.byte	0x1
	.value	0x997
	.byte	0x1
	.long	0x21a
	.long	.LFB63
	.long	.LFE63
	.long	.LLST48
	.uleb128 0x2e
	.string	"w1"
	.byte	0x1
	.value	0x996
	.long	0x8ba
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"w2"
	.byte	0x1
	.value	0x996
	.long	0x8ba
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"p1"
	.byte	0x1
	.value	0x998
	.long	0x57a9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.string	"p2"
	.byte	0x1
	.value	0x999
	.long	0x57a9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x2d
	.long	0x598c
	.string	"sort_and_combine_web_pairs"
	.byte	0x1
	.value	0x9ac
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.long	.LLST49
	.uleb128 0x2e
	.string	"for_move"
	.byte	0x1
	.value	0x9ab
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.value	0x9ad
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"sorted"
	.byte	0x1
	.value	0x9ae
	.long	0x598c
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0x9af
	.long	0x57a9
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	0x597b
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x2c
	.string	"w1"
	.byte	0x1
	.value	0x9be
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"w2"
	.byte	0x1
	.value	0x9be
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0x9c6
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c1d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14420
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57a9
	.uleb128 0x2d
	.long	0x5a11
	.string	"aggressive_coalesce"
	.byte	0x1
	.value	0x9df
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.long	.LLST50
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0x9e0
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.value	0x9e1
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x9e6
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x9e7
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0x9ea
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x5ab3
	.string	"extended_coalesce_2"
	.byte	0x1
	.value	0xa1a
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.long	.LLST51
	.uleb128 0x2c
	.string	"insn"
	.byte	0x1
	.value	0xa1b
	.long	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"info"
	.byte	0x1
	.value	0xa1c
	.long	0x3657
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.value	0xa1d
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2c
	.string	"dest"
	.byte	0x1
	.value	0xa23
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x2c
	.string	"n2"
	.byte	0x1
	.value	0xa27
	.long	0x469
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x31
	.long	.LASF18
	.byte	0x1
	.value	0xa2a
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.long	0x5b4b
	.string	"check_uncoalesced_moves"
	.byte	0x1
	.value	0xa47
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.long	.LLST52
	.uleb128 0x2c
	.string	"ml"
	.byte	0x1
	.value	0xa48
	.long	0x35ac
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"m"
	.byte	0x1
	.value	0xa49
	.long	0x3443
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	0x5b3a
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0xa4d
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0xa4e
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x2c
	.string	"h"
	.byte	0x1
	.value	0xa51
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	.LASF15
	.long	0x5c08
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14776
	.byte	0x0
	.uleb128 0x30
	.long	0x5b82
	.byte	0x1
	.string	"ra_colorize_graph"
	.byte	0x1
	.value	0xa6a
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.long	.LLST53
	.uleb128 0x2e
	.string	"df"
	.byte	0x1
	.value	0xa69
	.long	0x3aa8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.string	"ra_colorize_init"
	.byte	0x1
	.value	0xa97
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.long	.LLST54
	.uleb128 0x30
	.long	0x5c08
	.byte	0x1
	.string	"ra_colorize_free_all"
	.byte	0x1
	.value	0xaa1
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.long	.LLST55
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.value	0xaa2
	.long	0x3485
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LBB102
	.long	.LBE102
	.uleb128 0x2c
	.string	"web"
	.byte	0x1
	.value	0xaa7
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.string	"wnext"
	.byte	0x1
	.value	0xaa8
	.long	0x33d4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x884
	.uleb128 0xf
	.long	0x5c1d
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x1a
	.byte	0x0
	.uleb128 0x8
	.long	0x5c0d
	.uleb128 0x8
	.long	0x894
	.uleb128 0xf
	.long	0x5c37
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x16
	.byte	0x0
	.uleb128 0x8
	.long	0x5c27
	.uleb128 0xf
	.long	0x5c4c
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x14
	.byte	0x0
	.uleb128 0x8
	.long	0x5c3c
	.uleb128 0xf
	.long	0x5c61
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0xc
	.byte	0x0
	.uleb128 0x8
	.long	0x5c51
	.uleb128 0x8
	.long	0x5c0d
	.uleb128 0xf
	.long	0x5c7b
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0xf
	.byte	0x0
	.uleb128 0x8
	.long	0x5c6b
	.uleb128 0xf
	.long	0x5c90
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x10
	.byte	0x0
	.uleb128 0x8
	.long	0x5c80
	.uleb128 0xf
	.long	0x5ca6
	.long	0x212
	.uleb128 0x37
	.long	0x480
	.value	0x3ff
	.byte	0x0
	.uleb128 0x8
	.long	0x5c51
	.uleb128 0x8
	.long	0x8a4
	.uleb128 0xf
	.long	0x5cc0
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0xb
	.byte	0x0
	.uleb128 0x8
	.long	0x5cb0
	.uleb128 0xf
	.long	0x5cd5
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x8
	.byte	0x0
	.uleb128 0x8
	.long	0x5cc5
	.uleb128 0xf
	.long	0x5cea
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0xe
	.byte	0x0
	.uleb128 0x8
	.long	0x5cda
	.uleb128 0x8
	.long	0x5cb0
	.uleb128 0x8
	.long	0x8a4
	.uleb128 0xf
	.long	0x5d09
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0xd
	.byte	0x0
	.uleb128 0x8
	.long	0x5cf9
	.uleb128 0xf
	.long	0x5d1e
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0x9
	.byte	0x0
	.uleb128 0x8
	.long	0x5d0e
	.uleb128 0x28
	.string	"mv_worklist"
	.byte	0x1
	.byte	0x61
	.long	0x3485
	.byte	0x5
	.byte	0x3
	.long	mv_worklist
	.uleb128 0x28
	.string	"mv_coalesced"
	.byte	0x1
	.byte	0x61
	.long	0x3485
	.byte	0x5
	.byte	0x3
	.long	mv_coalesced
	.uleb128 0x28
	.string	"mv_constrained"
	.byte	0x1
	.byte	0x61
	.long	0x3485
	.byte	0x5
	.byte	0x3
	.long	mv_constrained
	.uleb128 0x28
	.string	"mv_frozen"
	.byte	0x1
	.byte	0x62
	.long	0x3485
	.byte	0x5
	.byte	0x3
	.long	mv_frozen
	.uleb128 0x28
	.string	"mv_active"
	.byte	0x1
	.byte	0x62
	.long	0x3485
	.byte	0x5
	.byte	0x3
	.long	mv_active
	.uleb128 0x38
	.long	0x5db0
	.byte	0x1
	.long	0x516
	.uleb128 0x39
	.long	0x33d4
	.byte	0x0
	.uleb128 0x2c
	.string	"spill_heuristic"
	.byte	0x1
	.value	0x3ab
	.long	0x5dce
	.byte	0x5
	.byte	0x3
	.long	spill_heuristic
	.uleb128 0x3
	.byte	0x4
	.long	0x5da0
	.uleb128 0xf
	.long	0x5de5
	.long	0x57a9
	.uleb128 0x37
	.long	0x480
	.value	0x1fff
	.byte	0x0
	.uleb128 0x2c
	.string	"web_pair_hash"
	.byte	0x1
	.value	0x95c
	.long	0x5dd4
	.byte	0x5
	.byte	0x3
	.long	web_pair_hash
	.uleb128 0x2c
	.string	"web_pair_list"
	.byte	0x1
	.value	0x95d
	.long	0x57a9
	.byte	0x5
	.byte	0x3
	.long	web_pair_list
	.uleb128 0x2c
	.string	"num_web_pairs"
	.byte	0x1
	.value	0x95e
	.long	0x469
	.byte	0x5
	.byte	0x3
	.long	num_web_pairs
	.uleb128 0x3a
	.string	"target_flags"
	.byte	0x3
	.byte	0x21
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x5e60
	.long	0x212
	.uleb128 0x3b
	.uleb128 0x10
	.long	0x480
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"mips_hard_regno_mode_ok"
	.byte	0x3
	.value	0x778
	.long	0x5e4f
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x5e92
	.long	0x4ad
	.uleb128 0x10
	.long	0x480
	.byte	0x35
	.byte	0x0
	.uleb128 0x3a
	.string	"mode_size"
	.byte	0x6
	.byte	0x59
	.long	0x5ea5
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x5e82
	.uleb128 0xf
	.long	0x5eba
	.long	0x212
	.uleb128 0x10
	.long	0x480
	.byte	0xa2
	.byte	0x0
	.uleb128 0x3a
	.string	"rtx_class"
	.byte	0x5
	.byte	0x3f
	.long	0x5ecd
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x5eaa
	.uleb128 0x3c
	.string	"cfun"
	.byte	0xc
	.value	0x202
	.long	0x24ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"call_used_reg_set"
	.byte	0xa
	.value	0x19e
	.long	0x253d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x5f0d
	.long	0x21a
	.uleb128 0x10
	.long	0x480
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"inv_reg_alloc_order"
	.byte	0xa
	.value	0x1c6
	.long	0x5efd
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x5f41
	.long	0x221
	.uleb128 0x10
	.long	0x480
	.byte	0x18
	.uleb128 0x10
	.long	0x480
	.byte	0x18
	.byte	0x0
	.uleb128 0x3c
	.string	"reg_class_subunion"
	.byte	0xa
	.value	0x1dc
	.long	0x5f2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"rtl_dump_file"
	.byte	0xd
	.value	0x1b8
	.long	0x5f76
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x574
	.uleb128 0x3c
	.string	"insn_df"
	.byte	0x2
	.value	0x16f
	.long	0x5f8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3657
	.uleb128 0x3c
	.string	"igraph"
	.byte	0x2
	.value	0x174
	.long	0x2665
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"sup_igraph"
	.byte	0x2
	.value	0x17e
	.long	0x2665
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"num_webs"
	.byte	0x2
	.value	0x18c
	.long	0x469
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"num_subwebs"
	.byte	0x2
	.value	0x18e
	.long	0x469
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"id2web"
	.byte	0x2
	.value	0x193
	.long	0x3aae
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x6004
	.long	0x33d4
	.uleb128 0x10
	.long	0x480
	.byte	0xaf
	.byte	0x0
	.uleb128 0x3c
	.string	"hardreg2web"
	.byte	0x2
	.value	0x195
	.long	0x5ff4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"def2web"
	.byte	0x2
	.value	0x199
	.long	0x3aae
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"use2web"
	.byte	0x2
	.value	0x19b
	.long	0x3aae
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"wl_moves"
	.byte	0x2
	.value	0x19e
	.long	0x35ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"ra_pass"
	.byte	0x2
	.value	0x1b3
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"max_normal_pseudo"
	.byte	0x2
	.value	0x1b9
	.long	0x469
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"an_unusable_color"
	.byte	0x2
	.value	0x1c4
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x60ab
	.long	0x3485
	.uleb128 0x10
	.long	0x480
	.byte	0xb
	.byte	0x0
	.uleb128 0x3c
	.string	"web_lists"
	.byte	0x2
	.value	0x1cb
	.long	0x609b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"never_use_colors"
	.byte	0x2
	.value	0x1e8
	.long	0x253d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x60f0
	.long	0x2524
	.uleb128 0x10
	.long	0x480
	.byte	0x18
	.uleb128 0x10
	.long	0x480
	.byte	0x2
	.byte	0x0
	.uleb128 0x3d
	.long	.LASF13
	.byte	0x2
	.value	0x1ea
	.long	0x60da
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_ra_biased"
	.byte	0x2
	.value	0x218
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_ra_optimistic_coalescing"
	.byte	0x2
	.value	0x224
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_ra_break_aliases"
	.byte	0x2
	.value	0x228
	.long	0x21a
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"flag_ra_merge_spill_costs"
	.byte	0x2
	.value	0x22c
	.long	0x21a
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
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x17
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
	.uleb128 0x22
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.long	0xcf
	.value	0x2
	.long	.Ldebug_info0
	.long	0x6184
	.long	0x374a
	.string	"remove_list"
	.long	0x3793
	.string	"pop_list"
	.long	0x3800
	.string	"put_web"
	.long	0x384a
	.string	"reset_lists"
	.long	0x394b
	.string	"remove_web_from_list"
	.long	0x3cd9
	.string	"merge_moves"
	.long	0x3ed0
	.string	"alias"
	.long	0x42ff
	.string	"get_free_reg"
	.long	0x5b4b
	.string	"ra_colorize_graph"
	.long	0x5b82
	.string	"ra_colorize_init"
	.long	0x5ba5
	.string	"ra_colorize_free_all"
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
.LASF4:
	.string	"next"
.LASF18:
	.string	"source"
.LASF13:
	.string	"usable_regs"
.LASF11:
	.string	"num_uses"
.LASF17:
	.string	"target"
.LASF10:
	.string	"move"
.LASF9:
	.string	"reg_info"
.LASF20:
	.string	"scan_tp_"
.LASF25:
	.string	"ptarget"
.LASF23:
	.string	"free_colors"
.LASF2:
	.string	"mem_attrs"
.LASF19:
	.string	"nregs"
.LASF27:
	.string	"conflicts"
.LASF26:
	.string	"web2"
.LASF16:
	.string	"order2web"
.LASF5:
	.string	"sequence_stack"
.LASF15:
	.string	"__FUNCTION__"
.LASF12:
	.string	"num_defs"
.LASF22:
	.string	"dont_begin_colors"
.LASF1:
	.string	"_IO_FILE"
.LASF24:
	.string	"dont_begin"
.LASF8:
	.string	"type"
.LASF6:
	.string	"sequence_rtl_expr"
.LASF14:
	.string	"prefer_colors"
.LASF7:
	.string	"function_frequency"
.LASF21:
	.string	"scan_fp_"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"flags"
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
