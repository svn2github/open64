	.file	"spew.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl init_spew
	.type	init_spew, @function
init_spew:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/spew.c"
	.loc 1 203 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%ebx
.LCFI2:
	subl	$4, %esp
.LCFI3:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 204 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 205 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	init_spew, .-init_spew
	.section	.rodata
.LC0:
	.string	"strings"
	.text
	.type	yylexstring, @function
yylexstring:
.LFB17:
	.loc 1 254 0
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
	.loc 1 258 0
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_lex@PLT
	movl	%eax, -12(%ebp)
	.loc 1 259 0
	cmpl	$62, -12(%ebp)
	je	.L4
	cmpl	$63, -12(%ebp)
	jne	.L6
.L4:
.LBB2:
	.loc 1 263 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$14, 4(%esp)
	movl	$32, (%esp)
	call	varray_init@PLT
	movl	%eax, -8(%ebp)
	.loc 1 264 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L7
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, -8(%ebp)
.L7:
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax,%ecx,4)
	leal	1(%ecx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L15
.L9:
.L15:
	.loc 1 268 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L10
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	varray_grow@PLT
	movl	%eax, -8(%ebp)
.L10:
	movl	-8(%ebp), %eax
	movl	4(%eax), %ecx
	movl	-16(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax,%ecx,4)
	leal	1(%ecx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 269 0
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	c_lex@PLT
	movl	%eax, -12(%ebp)
	.loc 1 271 0
	cmpl	$62, -12(%ebp)
	je	.L9
	cmpl	$63, -12(%ebp)
	je	.L9
	.loc 1 273 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	combine_strings@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 274 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, last_token_id@GOTOFF(%ebx)
.L6:
.LBE2:
	.loc 1 278 0
	movl	parse_in@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_cpp_backup_tokens@PLT
	.loc 1 280 0
	movl	8(%ebp), %eax
	movw	$267, (%eax)
	.loc 1 281 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	yylexstring, .-yylexstring
	.section	.rodata
.LC1:
	.string	"\n"
.LC2:
	.string	"options"
.LC3:
	.string	"mips_frequency_hint"
.LC4:
	.string	"frequency_hint"
.LC5:
	.string	"never"
.LC6:
	.string	"init"
.LC7:
	.string	"frequent"
.LC8:
	.string	"private"
.LC9:
	.string	"parallel"
.LC10:
	.string	"omp"
.LC11:
	.string	"copyprivate"
.LC12:
	.string	"firstprivate"
.LC13:
	.string	"lastprivate"
.LC14:
	.string	"shared"
.LC15:
	.string	"none"
.LC16:
	.string	"reduction"
.LC17:
	.string	"copyin"
.LC18:
	.string	"static"
.LC19:
	.string	"dynamic"
.LC20:
	.string	"guided"
.LC21:
	.string	"runtime"
.LC22:
	.string	"ordered"
.LC23:
	.string	"schedule"
.LC24:
	.string	"nowait"
.LC25:
	.string	"num_threads"
.LC26:
	.string	"sections"
.LC27:
	.string	"section"
.LC28:
	.string	"single"
.LC29:
	.string	"master"
.LC30:
	.string	"critical"
.LC31:
	.string	"barrier"
.LC32:
	.string	"atomic"
.LC33:
	.string	"flush"
.LC34:
	.string	"threadprivate"
.LC35:
	.string	"sl2"
.LC36:
	.string	"sl2_major_sections"
.LC37:
	.string	"sl2_minor_sections"
.LC38:
	.string	"sl2_major_section"
.LC39:
	.string	"sl2_minor_section"
	.text
	.type	check_omp_string, @function
check_omp_string:
.LFB18:
	.loc 1 288 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%edi
.LCFI10:
	pushl	%esi
.LCFI11:
	pushl	%ebx
.LCFI12:
	subl	$444, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 289 0
	movl	12(%ebp), %eax
	movb	$1, (%eax)
	.loc 1 291 0
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	$2, -28(%ebp)
	cld
	movl	-20(%ebp), %esi
	movl	-24(%ebp), %edi
	movl	-28(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L17
	.loc 1 293 0
	movl	seen_omp_paren@GOT(%ebx), %eax
	movb	$0, (%eax)
	movl	in_omp_pragma@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 294 0
	movl	$10, -16(%ebp)
	jmp	.L19
.L17:
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -36(%ebp)
	movl	$8, -40(%ebp)
	cld
	movl	-32(%ebp), %esi
	movl	-36(%ebp), %edi
	movl	-40(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L20
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L20
	.loc 1 297 0
	movl	$269, -16(%ebp)
	jmp	.L19
.L20:
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	%eax, -44(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -48(%ebp)
	movl	$20, -52(%ebp)
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
	je	.L23
	movl	8(%ebp), %eax
	movl	%eax, -56(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -60(%ebp)
	movl	$15, -64(%ebp)
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
	jne	.L25
.L23:
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L25
	.loc 1 300 0
	movl	$270, -16(%ebp)
	jmp	.L19
.L25:
	.loc 1 301 0
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L27
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L27
	.loc 1 302 0
	movl	$271, -16(%ebp)
	jmp	.L19
.L27:
	.loc 1 303 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L30
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L30
	.loc 1 304 0
	movl	$272, -16(%ebp)
	jmp	.L19
.L30:
	.loc 1 305 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L33
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L33
	.loc 1 306 0
	movl	$273, -16(%ebp)
	jmp	.L19
.L33:
	.loc 1 307 0
	movl	8(%ebp), %eax
	movl	%eax, -68(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -72(%ebp)
	movl	$8, -76(%ebp)
	cld
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %edi
	movl	-76(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L36
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L36
	.loc 1 308 0
	movl	$276, -16(%ebp)
	jmp	.L19
.L36:
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	%eax, -80(%ebp)
	leal	.LC9@GOTOFF(%ebx), %esi
	movl	%esi, -84(%ebp)
	movl	$9, -88(%ebp)
	cld
	movl	-80(%ebp), %esi
	movl	-84(%ebp), %edi
	movl	-88(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L39
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L39
	.loc 1 310 0
	movl	$275, -16(%ebp)
	jmp	.L19
.L39:
	.loc 1 311 0
	movl	8(%ebp), %eax
	movl	%eax, -92(%ebp)
	leal	.LC10@GOTOFF(%ebx), %esi
	movl	%esi, -96(%ebp)
	movl	$4, -100(%ebp)
	cld
	movl	-92(%ebp), %esi
	movl	-96(%ebp), %edi
	movl	-100(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L42
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L42
	.loc 1 312 0
	movl	$274, -16(%ebp)
	jmp	.L19
.L42:
	.loc 1 313 0
	movl	8(%ebp), %eax
	movl	%eax, -104(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -108(%ebp)
	movl	$12, -112(%ebp)
	cld
	movl	-104(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	-112(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L45
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L45
	.loc 1 314 0
	movl	$277, -16(%ebp)
	jmp	.L19
.L45:
	.loc 1 315 0
	movl	8(%ebp), %eax
	movl	%eax, -116(%ebp)
	leal	.LC12@GOTOFF(%ebx), %esi
	movl	%esi, -120(%ebp)
	movl	$13, -124(%ebp)
	cld
	movl	-116(%ebp), %esi
	movl	-120(%ebp), %edi
	movl	-124(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L48
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L48
	.loc 1 316 0
	movl	$278, -16(%ebp)
	jmp	.L19
.L48:
	.loc 1 317 0
	movl	8(%ebp), %eax
	movl	%eax, -128(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -132(%ebp)
	movl	$12, -136(%ebp)
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
	jne	.L51
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L51
	.loc 1 318 0
	movl	$279, -16(%ebp)
	jmp	.L19
.L51:
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	%eax, -140(%ebp)
	leal	.LC14@GOTOFF(%ebx), %esi
	movl	%esi, -144(%ebp)
	movl	$7, -148(%ebp)
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
	jne	.L54
	.loc 1 320 0
	movl	$280, -16(%ebp)
	jmp	.L19
.L54:
	.loc 1 321 0
	movl	8(%ebp), %eax
	movl	%eax, -152(%ebp)
	leal	.LC15@GOTOFF(%ebx), %esi
	movl	%esi, -156(%ebp)
	movl	$5, -160(%ebp)
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
	jne	.L56
	.loc 1 322 0
	movl	$282, -16(%ebp)
	jmp	.L19
.L56:
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	%eax, -164(%ebp)
	leal	.LC16@GOTOFF(%ebx), %esi
	movl	%esi, -168(%ebp)
	movl	$10, -172(%ebp)
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
	jne	.L58
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L58
	.loc 1 324 0
	movl	$283, -16(%ebp)
	jmp	.L19
.L58:
	.loc 1 325 0
	movl	8(%ebp), %eax
	movl	%eax, -176(%ebp)
	leal	.LC17@GOTOFF(%ebx), %esi
	movl	%esi, -180(%ebp)
	movl	$7, -184(%ebp)
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
	jne	.L61
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L61
	.loc 1 326 0
	movl	$284, -16(%ebp)
	jmp	.L19
.L61:
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	%eax, -188(%ebp)
	leal	.LC18@GOTOFF(%ebx), %esi
	movl	%esi, -192(%ebp)
	movl	$7, -196(%ebp)
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
	jne	.L64
	.loc 1 328 0
	movl	$301, -16(%ebp)
	jmp	.L19
.L64:
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	%eax, -200(%ebp)
	leal	.LC19@GOTOFF(%ebx), %esi
	movl	%esi, -204(%ebp)
	movl	$8, -208(%ebp)
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
	jne	.L66
	.loc 1 330 0
	movl	$285, -16(%ebp)
	jmp	.L19
.L66:
	.loc 1 331 0
	movl	8(%ebp), %eax
	movl	%eax, -212(%ebp)
	leal	.LC20@GOTOFF(%ebx), %esi
	movl	%esi, -216(%ebp)
	movl	$7, -220(%ebp)
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
	jne	.L68
	.loc 1 332 0
	movl	$286, -16(%ebp)
	jmp	.L19
.L68:
	.loc 1 333 0
	movl	8(%ebp), %eax
	movl	%eax, -224(%ebp)
	leal	.LC21@GOTOFF(%ebx), %esi
	movl	%esi, -228(%ebp)
	movl	$8, -232(%ebp)
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
	jne	.L70
	.loc 1 334 0
	movl	$287, -16(%ebp)
	jmp	.L19
.L70:
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	%eax, -236(%ebp)
	leal	.LC22@GOTOFF(%ebx), %esi
	movl	%esi, -240(%ebp)
	movl	$8, -244(%ebp)
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
	jne	.L72
	.loc 1 336 0
	movl	$288, -16(%ebp)
	jmp	.L19
.L72:
	.loc 1 337 0
	movl	8(%ebp), %eax
	movl	%eax, -248(%ebp)
	leal	.LC23@GOTOFF(%ebx), %esi
	movl	%esi, -252(%ebp)
	movl	$9, -256(%ebp)
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
	jne	.L74
	.loc 1 338 0
	movl	$289, -16(%ebp)
	jmp	.L19
.L74:
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	%eax, -260(%ebp)
	leal	.LC24@GOTOFF(%ebx), %esi
	movl	%esi, -264(%ebp)
	movl	$7, -268(%ebp)
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
	jne	.L76
	.loc 1 340 0
	movl	$290, -16(%ebp)
	jmp	.L19
.L76:
	.loc 1 341 0
	movl	8(%ebp), %eax
	movl	%eax, -272(%ebp)
	leal	.LC25@GOTOFF(%ebx), %esi
	movl	%esi, -276(%ebp)
	movl	$12, -280(%ebp)
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
	jne	.L78
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L78
	.loc 1 342 0
	movl	$291, -16(%ebp)
	jmp	.L19
.L78:
	.loc 1 343 0
	movl	8(%ebp), %eax
	movl	%eax, -284(%ebp)
	leal	.LC26@GOTOFF(%ebx), %esi
	movl	%esi, -288(%ebp)
	movl	$9, -292(%ebp)
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
	jne	.L81
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L81
	.loc 1 344 0
	movl	$292, -16(%ebp)
	jmp	.L19
.L81:
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	%eax, -296(%ebp)
	leal	.LC27@GOTOFF(%ebx), %esi
	movl	%esi, -300(%ebp)
	movl	$8, -304(%ebp)
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
	jne	.L84
	.loc 1 346 0
	movl	$293, -16(%ebp)
	jmp	.L19
.L84:
	.loc 1 347 0
	movl	8(%ebp), %eax
	movl	%eax, -308(%ebp)
	leal	.LC28@GOTOFF(%ebx), %esi
	movl	%esi, -312(%ebp)
	movl	$7, -316(%ebp)
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
	jne	.L86
	.loc 1 348 0
	movl	$294, -16(%ebp)
	jmp	.L19
.L86:
	.loc 1 349 0
	movl	8(%ebp), %eax
	movl	%eax, -320(%ebp)
	leal	.LC29@GOTOFF(%ebx), %esi
	movl	%esi, -324(%ebp)
	movl	$7, -328(%ebp)
	cld
	movl	-320(%ebp), %esi
	movl	-324(%ebp), %edi
	movl	-328(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L88
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L88
	.loc 1 350 0
	movl	$295, -16(%ebp)
	jmp	.L19
.L88:
	.loc 1 351 0
	movl	8(%ebp), %eax
	movl	%eax, -332(%ebp)
	leal	.LC30@GOTOFF(%ebx), %esi
	movl	%esi, -336(%ebp)
	movl	$9, -340(%ebp)
	cld
	movl	-332(%ebp), %esi
	movl	-336(%ebp), %edi
	movl	-340(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L91
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L91
	.loc 1 352 0
	movl	$296, -16(%ebp)
	jmp	.L19
.L91:
	.loc 1 353 0
	movl	8(%ebp), %eax
	movl	%eax, -344(%ebp)
	leal	.LC31@GOTOFF(%ebx), %esi
	movl	%esi, -348(%ebp)
	movl	$8, -352(%ebp)
	cld
	movl	-344(%ebp), %esi
	movl	-348(%ebp), %edi
	movl	-352(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L94
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L94
	.loc 1 354 0
	movl	$297, -16(%ebp)
	jmp	.L19
.L94:
	.loc 1 355 0
	movl	8(%ebp), %eax
	movl	%eax, -356(%ebp)
	leal	.LC32@GOTOFF(%ebx), %esi
	movl	%esi, -360(%ebp)
	movl	$7, -364(%ebp)
	cld
	movl	-356(%ebp), %esi
	movl	-360(%ebp), %edi
	movl	-364(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L97
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L97
	.loc 1 356 0
	movl	$298, -16(%ebp)
	jmp	.L19
.L97:
	.loc 1 357 0
	movl	8(%ebp), %eax
	movl	%eax, -368(%ebp)
	leal	.LC33@GOTOFF(%ebx), %esi
	movl	%esi, -372(%ebp)
	movl	$6, -376(%ebp)
	cld
	movl	-368(%ebp), %esi
	movl	-372(%ebp), %edi
	movl	-376(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L100
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L100
	.loc 1 358 0
	movl	$299, -16(%ebp)
	jmp	.L19
.L100:
	.loc 1 359 0
	movl	8(%ebp), %eax
	movl	%eax, -380(%ebp)
	leal	.LC34@GOTOFF(%ebx), %esi
	movl	%esi, -384(%ebp)
	movl	$14, -388(%ebp)
	cld
	movl	-380(%ebp), %esi
	movl	-384(%ebp), %edi
	movl	-388(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L103
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L103
	.loc 1 360 0
	movl	$300, -16(%ebp)
	jmp	.L19
.L103:
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	%eax, -392(%ebp)
	leal	.LC35@GOTOFF(%ebx), %esi
	movl	%esi, -396(%ebp)
	movl	$4, -400(%ebp)
	cld
	movl	-392(%ebp), %esi
	movl	-396(%ebp), %edi
	movl	-400(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L106
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L106
	.loc 1 364 0
	movl	$380, -16(%ebp)
	jmp	.L19
.L106:
	.loc 1 365 0
	movl	8(%ebp), %eax
	movl	%eax, -404(%ebp)
	leal	.LC36@GOTOFF(%ebx), %esi
	movl	%esi, -408(%ebp)
	movl	$19, -412(%ebp)
	cld
	movl	-404(%ebp), %esi
	movl	-408(%ebp), %edi
	movl	-412(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L109
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L109
	.loc 1 366 0
	movl	$377, -16(%ebp)
	jmp	.L19
.L109:
	.loc 1 367 0
	movl	8(%ebp), %eax
	movl	%eax, -416(%ebp)
	leal	.LC37@GOTOFF(%ebx), %esi
	movl	%esi, -420(%ebp)
	movl	$19, -424(%ebp)
	cld
	movl	-416(%ebp), %esi
	movl	-420(%ebp), %edi
	movl	-424(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L112
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L112
	.loc 1 368 0
	movl	$378, -16(%ebp)
	jmp	.L19
.L112:
	.loc 1 369 0
	movl	8(%ebp), %eax
	movl	%eax, -428(%ebp)
	leal	.LC38@GOTOFF(%ebx), %esi
	movl	%esi, -432(%ebp)
	movl	$18, -436(%ebp)
	cld
	movl	-428(%ebp), %esi
	movl	-432(%ebp), %edi
	movl	-436(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L115
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L115
	.loc 1 370 0
	movl	$379, -16(%ebp)
	jmp	.L19
.L115:
	.loc 1 371 0
	movl	8(%ebp), %eax
	movl	%eax, -440(%ebp)
	leal	.LC39@GOTOFF(%ebx), %esi
	movl	%esi, -444(%ebp)
	movl	$18, -448(%ebp)
	cld
	movl	-440(%ebp), %esi
	movl	-444(%ebp), %edi
	movl	-448(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L118
	movl	seen_omp_paren@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L118
	.loc 1 372 0
	movl	$381, -16(%ebp)
	jmp	.L19
.L118:
	.loc 1 376 0
	movl	12(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 377 0
	movl	$0, -16(%ebp)
.L19:
	movl	-16(%ebp), %eax
	.loc 1 378 0
	addl	$444, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE18:
	.size	check_omp_string, .-check_omp_string
	.section	.rodata
	.type	__FUNCTION__.13850, @object
	.size	__FUNCTION__.13850, 11
__FUNCTION__.13850:
	.string	"read_token"
.LC40:
	.string	"../../../kg++fe/gnu/cp/spew.c"
.LC41:
	.string	"parse error"
	.text
	.type	read_token, @function
read_token:
.LFB19:
	.loc 1 386 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$36, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L123:
	.loc 1 389 0
	leal	last_token_id@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	c_lex@PLT
	movl	%eax, last_token@GOTOFF(%ebx)
	.loc 1 390 0
	movl	last_token_id@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 392 0
	movl	last_token@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	cmpl	$63, -24(%ebp)
	ja	.L124
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L182@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L182:
	.long	.L125@GOTOFF
	.long	.L126@GOTOFF
	.long	.L127@GOTOFF
	.long	.L128@GOTOFF
	.long	.L129@GOTOFF
	.long	.L130@GOTOFF
	.long	.L131@GOTOFF
	.long	.L132@GOTOFF
	.long	.L133@GOTOFF
	.long	.L134@GOTOFF
	.long	.L135@GOTOFF
	.long	.L136@GOTOFF
	.long	.L137@GOTOFF
	.long	.L138@GOTOFF
	.long	.L139@GOTOFF
	.long	.L140@GOTOFF
	.long	.L141@GOTOFF
	.long	.L142@GOTOFF
	.long	.L143@GOTOFF
	.long	.L144@GOTOFF
	.long	.L145@GOTOFF
	.long	.L146@GOTOFF
	.long	.L147@GOTOFF
	.long	.L148@GOTOFF
	.long	.L149@GOTOFF
	.long	.L150@GOTOFF
	.long	.L151@GOTOFF
	.long	.L152@GOTOFF
	.long	.L153@GOTOFF
	.long	.L154@GOTOFF
	.long	.L155@GOTOFF
	.long	.L156@GOTOFF
	.long	.L157@GOTOFF
	.long	.L158@GOTOFF
	.long	.L159@GOTOFF
	.long	.L160@GOTOFF
	.long	.L161@GOTOFF
	.long	.L162@GOTOFF
	.long	.L163@GOTOFF
	.long	.L164@GOTOFF
	.long	.L165@GOTOFF
	.long	.L124@GOTOFF
	.long	.L124@GOTOFF
	.long	.L166@GOTOFF
	.long	.L167@GOTOFF
	.long	.L168@GOTOFF
	.long	.L169@GOTOFF
	.long	.L170@GOTOFF
	.long	.L171@GOTOFF
	.long	.L172@GOTOFF
	.long	.L173@GOTOFF
	.long	.L174@GOTOFF
	.long	.L175@GOTOFF
	.long	.L176@GOTOFF
	.long	.L177@GOTOFF
	.long	.L178@GOTOFF
	.long	.L124@GOTOFF
	.long	.L179@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.long	.L180@GOTOFF
	.long	.L124@GOTOFF
	.long	.L181@GOTOFF
	.long	.L181@GOTOFF
	.text
.L125:
	.loc 1 397 0
	movl	8(%ebp), %eax
	movw	$61, (%eax)
	jmp	.L183
.L126:
	.loc 1 398 0
	movl	8(%ebp), %eax
	movw	$33, (%eax)
	jmp	.L183
.L127:
	.loc 1 399 0
	movl	8(%ebp), %eax
	movl	$101, 8(%eax)
	movl	8(%ebp), %eax
	movw	$62, (%eax)
	jmp	.L183
.L128:
	.loc 1 400 0
	movl	8(%ebp), %eax
	movl	$99, 8(%eax)
	movl	8(%ebp), %eax
	movw	$60, (%eax)
	jmp	.L183
.L129:
	.loc 1 401 0
	movl	8(%ebp), %eax
	movl	$60, 8(%eax)
	movl	8(%ebp), %eax
	movw	$43, (%eax)
	jmp	.L183
.L130:
	.loc 1 402 0
	movl	8(%ebp), %eax
	movl	$61, 8(%eax)
	movl	8(%ebp), %eax
	movw	$45, (%eax)
	jmp	.L183
.L131:
	.loc 1 403 0
	movl	8(%ebp), %eax
	movl	$62, 8(%eax)
	movl	8(%ebp), %eax
	movw	$42, (%eax)
	jmp	.L183
.L132:
	.loc 1 404 0
	movl	8(%ebp), %eax
	movl	$63, 8(%eax)
	movl	8(%ebp), %eax
	movw	$47, (%eax)
	jmp	.L183
.L133:
	.loc 1 405 0
	movl	8(%ebp), %eax
	movl	$67, 8(%eax)
	movl	8(%ebp), %eax
	movw	$37, (%eax)
	jmp	.L183
.L134:
	.loc 1 406 0
	movl	8(%ebp), %eax
	movl	$90, 8(%eax)
	movl	8(%ebp), %eax
	movw	$38, (%eax)
	jmp	.L183
.L135:
	.loc 1 407 0
	movl	8(%ebp), %eax
	movl	$88, 8(%eax)
	movl	8(%ebp), %eax
	movw	$124, (%eax)
	jmp	.L183
.L136:
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	$89, 8(%eax)
	movl	8(%ebp), %eax
	movw	$94, (%eax)
	jmp	.L183
.L137:
	.loc 1 409 0
	movl	8(%ebp), %eax
	movl	$85, 8(%eax)
	movl	8(%ebp), %eax
	movw	$357, (%eax)
	jmp	.L183
.L138:
	.loc 1 410 0
	movl	8(%ebp), %eax
	movl	$84, 8(%eax)
	movl	8(%ebp), %eax
	movw	$358, (%eax)
	jmp	.L183
.L141:
	.loc 1 412 0
	movl	8(%ebp), %eax
	movw	$126, (%eax)
	jmp	.L183
.L142:
	.loc 1 413 0
	movl	8(%ebp), %eax
	movw	$353, (%eax)
	jmp	.L183
.L143:
	.loc 1 414 0
	movl	8(%ebp), %eax
	movw	$352, (%eax)
	jmp	.L183
.L144:
	.loc 1 415 0
	movl	8(%ebp), %eax
	movw	$63, (%eax)
	jmp	.L183
.L145:
	.loc 1 416 0
	movl	8(%ebp), %eax
	movw	$58, (%eax)
	jmp	.L183
.L146:
	.loc 1 417 0
	movl	8(%ebp), %eax
	movw	$44, (%eax)
	jmp	.L183
.L147:
	.loc 1 418 0
	movl	8(%ebp), %eax
	movw	$40, (%eax)
	jmp	.L183
.L148:
	.loc 1 419 0
	movl	8(%ebp), %eax
	movw	$41, (%eax)
	jmp	.L183
.L150:
	.loc 1 420 0
	movl	8(%ebp), %eax
	movl	$103, 8(%eax)
	movl	8(%ebp), %eax
	movw	$355, (%eax)
	jmp	.L183
.L151:
	.loc 1 421 0
	movl	8(%ebp), %eax
	movl	$104, 8(%eax)
	movl	8(%ebp), %eax
	movw	$355, (%eax)
	jmp	.L183
.L152:
	.loc 1 422 0
	movl	8(%ebp), %eax
	movl	$102, 8(%eax)
	movl	8(%ebp), %eax
	movw	$356, (%eax)
	jmp	.L183
.L153:
	.loc 1 423 0
	movl	8(%ebp), %eax
	movl	$100, 8(%eax)
	movl	8(%ebp), %eax
	movw	$356, (%eax)
	jmp	.L183
.L154:
	.loc 1 425 0
	movl	8(%ebp), %eax
	movl	$60, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L155:
	.loc 1 426 0
	movl	8(%ebp), %eax
	movl	$61, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L156:
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	$62, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L157:
	.loc 1 428 0
	movl	8(%ebp), %eax
	movl	$63, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L158:
	.loc 1 429 0
	movl	8(%ebp), %eax
	movl	$67, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L159:
	.loc 1 430 0
	movl	8(%ebp), %eax
	movl	$90, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L160:
	.loc 1 431 0
	movl	8(%ebp), %eax
	movl	$88, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L161:
	.loc 1 432 0
	movl	8(%ebp), %eax
	movl	$89, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L162:
	.loc 1 433 0
	movl	8(%ebp), %eax
	movl	$85, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L163:
	.loc 1 434 0
	movl	8(%ebp), %eax
	movl	$84, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L166:
	.loc 1 436 0
	movl	8(%ebp), %eax
	movw	$91, (%eax)
	jmp	.L183
.L167:
	.loc 1 437 0
	movl	8(%ebp), %eax
	movw	$93, (%eax)
	jmp	.L183
.L168:
	.loc 1 438 0
	movl	8(%ebp), %eax
	movw	$123, (%eax)
	jmp	.L183
.L169:
	.loc 1 439 0
	movl	8(%ebp), %eax
	movw	$125, (%eax)
	jmp	.L183
.L170:
	.loc 1 440 0
	movl	8(%ebp), %eax
	movw	$59, (%eax)
	jmp	.L183
.L171:
	.loc 1 441 0
	movl	8(%ebp), %eax
	movw	$268, (%eax)
	jmp	.L183
.L172:
	.loc 1 443 0
	movl	8(%ebp), %eax
	movw	$362, (%eax)
	jmp	.L183
.L173:
	.loc 1 444 0
	movl	8(%ebp), %eax
	movw	$361, (%eax)
	jmp	.L183
.L174:
	.loc 1 445 0
	movl	8(%ebp), %eax
	movw	$365, (%eax)
	jmp	.L183
.L175:
	.loc 1 446 0
	movl	8(%ebp), %eax
	movw	$46, (%eax)
	jmp	.L183
.L176:
	.loc 1 449 0
	movl	8(%ebp), %eax
	movw	$345, (%eax)
	jmp	.L183
.L177:
	.loc 1 450 0
	movl	8(%ebp), %eax
	movw	$360, (%eax)
	jmp	.L183
.L178:
	.loc 1 451 0
	movl	8(%ebp), %eax
	movw	$359, (%eax)
	jmp	.L183
.L164:
	.loc 1 452 0
	movl	8(%ebp), %eax
	movl	$80, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L165:
	.loc 1 453 0
	movl	8(%ebp), %eax
	movl	$81, 8(%eax)
	movl	8(%ebp), %eax
	movw	$351, (%eax)
	jmp	.L183
.L139:
	.loc 1 454 0
	movl	8(%ebp), %eax
	movl	$80, 8(%eax)
	movl	8(%ebp), %eax
	movw	$354, (%eax)
	jmp	.L183
.L140:
	.loc 1 455 0
	movl	8(%ebp), %eax
	movl	$81, 8(%eax)
	movl	8(%ebp), %eax
	movw	$354, (%eax)
	jmp	.L183
.L149:
	.loc 1 460 0
	movl	8(%ebp), %eax
	movw	$0, (%eax)
	.loc 1 461 0
	jmp	.L183
.L179:
	.loc 1 464 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	read_process_identifier
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 466 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$258, %ax
	jne	.L183
	movl	in_omp_pragma@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L183
.LBB3:
	.loc 1 468 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	je	.L187
	leal	__FUNCTION__.13850@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$468, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L187:
	.loc 1 469 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 470 0
	movb	$0, -5(%ebp)
	.loc 1 471 0
	leal	-5(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	check_omp_string
	movl	%eax, -12(%ebp)
	.loc 1 472 0
	movzbl	-5(%ebp), %eax
	testb	%al, %al
	je	.L183
	.loc 1 473 0
	movl	-12(%ebp), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 476 0
	jmp	.L183
.L180:
.LBE3:
	.loc 1 481 0
	movl	8(%ebp), %eax
	movw	$265, (%eax)
	.loc 1 482 0
	jmp	.L183
.L181:
	.loc 1 486 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	yylexstring
	.loc 1 487 0
	jmp	.L183
.L124:
	.loc 1 490 0
	leal	.LC41@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	yyerror@PLT
	.loc 1 491 0
	jmp	.L123
.L183:
	.loc 1 494 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 495 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	.loc 1 496 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	read_token, .-read_token
	.type	read_process_identifier, @function
read_process_identifier:
.LFB16:
	.loc 1 215 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	subl	$20, %esp
.LCFI20:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 216 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 218 0
	movl	-4(%ebp), %eax
	movzbl	11(%eax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L192
	.loc 1 222 0
	movl	in_omp_pragma@GOT(%ecx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L194
	movl	-4(%ebp), %eax
	movzbl	31(%eax), %eax
	cmpb	$74, %al
	je	.L196
	movl	-4(%ebp), %eax
	movzbl	31(%eax), %eax
	testb	%al, %al
	jne	.L194
.L196:
	.loc 1 225 0
	movl	$258, -20(%ebp)
	jmp	.L198
.L194:
	.loc 1 228 0
	movl	-4(%ebp), %eax
	movzbl	31(%eax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	ridpointers@GOT(%ecx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 229 0
	movl	-4(%ebp), %eax
	movzbl	31(%eax), %eax
	movzbl	%al, %edx
	movl	rid_to_yy@GOT(%ecx), %eax
	movzwl	(%eax,%edx,2), %eax
	cwtl
	movl	%eax, -20(%ebp)
	jmp	.L198
.L192:
	.loc 1 245 0
	movl	$258, -20(%ebp)
.L198:
	movl	-20(%ebp), %eax
	.loc 1 246 0
	leave
	ret
.LFE16:
	.size	read_process_identifier, .-read_process_identifier
.globl end_input
	.type	end_input, @function
end_input:
.LFB21:
	.loc 1 539 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	pushl	%ebx
.LCFI23:
	subl	$36, %esp
.LCFI24:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 540 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 542 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 543 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 544 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	yychar@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 545 0
	movl	yylval@GOT(%ebx), %ecx
	movl	-16(%ebp), %edx
	movl	16(%edx), %eax
	movl	%eax, (%ecx)
	movl	20(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	24(%edx), %eax
	movl	%eax, 8(%ecx)
	.loc 1 546 0
	movl	-16(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, first_token@GOTOFF(%ebx)
.LBB4:
	.loc 1 547 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L201
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L201
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L204
.L201:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L204:
.LBE4:
	.loc 1 548 0
	movl	-16(%ebp), %edx
	movl	32(%edx), %eax
	movl	%eax, token_obstack@GOTOFF(%ebx)
	movl	36(%edx), %eax
	movl	%eax, 4+token_obstack@GOTOFF(%ebx)
	movl	40(%edx), %eax
	movl	%eax, 8+token_obstack@GOTOFF(%ebx)
	movl	44(%edx), %eax
	movl	%eax, 12+token_obstack@GOTOFF(%ebx)
	movl	48(%edx), %eax
	movl	%eax, 16+token_obstack@GOTOFF(%ebx)
	movl	52(%edx), %eax
	movl	%eax, 20+token_obstack@GOTOFF(%ebx)
	movl	56(%edx), %eax
	movl	%eax, 24+token_obstack@GOTOFF(%ebx)
	movl	60(%edx), %eax
	movl	%eax, 28+token_obstack@GOTOFF(%ebx)
	movl	64(%edx), %eax
	movl	%eax, 32+token_obstack@GOTOFF(%ebx)
	movl	68(%edx), %eax
	movl	%eax, 36+token_obstack@GOTOFF(%ebx)
	movl	72(%edx), %eax
	movl	%eax, 40+token_obstack@GOTOFF(%ebx)
	.loc 1 549 0
	movl	-16(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, feed@GOTOFF(%ebx)
	.loc 1 555 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	end_input, .-end_input
	.section	.rodata
	.align 4
	.type	Teosi, @object
	.size	Teosi, 20
Teosi:
	.value	383
	.zero	2
	.long	0
	.long	0
	.zero	8
	.align 4
	.type	Tpad, @object
	.size	Tpad, 20
Tpad:
	.value	347
	.zero	2
	.long	0
	.long	0
	.zero	8
	.text
	.type	scan_tokens, @function
scan_tokens:
.LFB28:
	.loc 1 657 0
	pushl	%ebp
.LCFI25:
	movl	%esp, %ebp
.LCFI26:
	pushl	%edi
.LCFI27:
	pushl	%esi
.LCFI28:
	pushl	%ebx
.LCFI29:
	subl	$44, %esp
.LCFI30:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 659 0
	call	num_tokens
	movl	%eax, -36(%ebp)
	.loc 1 663 0
	movl	-36(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 664 0
	jmp	.L207
.L208:
	.loc 1 665 0
	subl	$1, -40(%ebp)
.L207:
	.loc 1 664 0
	cmpl	$0, -40(%ebp)
	jle	.L209
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cmpw	$347, %ax
	je	.L208
.L209:
	.loc 1 666 0
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jge	.L211
.LBB5:
	.loc 1 668 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	negl	%eax
	movl	%eax, -24(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-24(%ebp), %eax
	jge	.L213
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L213:
	movl	-28(%ebp), %eax
	movl	12(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE5:
	.loc 1 669 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
.L211:
	.loc 1 673 0
	movl	-36(%ebp), %eax
	cmpl	8(%ebp), %eax
	jg	.L233
	.loc 1 678 0
	movl	$0, -40(%ebp)
	jmp	.L217
.L218:
	.loc 1 680 0
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -32(%ebp)
	.loc 1 681 0
	cmpl	$123, -32(%ebp)
	je	.L229
	cmpl	$58, -32(%ebp)
	je	.L229
	cmpl	$59, -32(%ebp)
	je	.L229
	.loc 1 678 0
	addl	$1, -40(%ebp)
.L217:
	movl	-40(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L218
	.loc 1 685 0
	jmp	.L224
.L225:
	.loc 1 687 0
	call	shift_token
	movl	%eax, -32(%ebp)
	.loc 1 688 0
	cmpl	$123, -32(%ebp)
	je	.L229
	cmpl	$58, -32(%ebp)
	je	.L229
	cmpl	$59, -32(%ebp)
	je	.L229
.L224:
	.loc 1 685 0
	call	num_tokens
	cmpl	8(%ebp), %eax
	jle	.L225
	.loc 1 691 0
	jmp	.L233
.L219:
.L230:
.LBB6:
	.loc 1 695 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$20, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jbe	.L231
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L231:
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edi
	leal	Tpad@GOTOFF(%ebx), %esi
	cld
	movl	%edx, %ecx
	rep
	movsb
	movl	-20(%ebp), %eax
	movl	12(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
.L229:
.LBE6:
	.loc 1 694 0
	call	num_tokens
	cmpl	8(%ebp), %eax
	jle	.L230
.L233:
	.loc 1 696 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE28:
	.size	scan_tokens, .-scan_tokens
	.type	nth_token, @function
nth_token:
.LFB23:
	.loc 1 572 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	pushl	%ebx
.LCFI33:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 578 0
	movl	8+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, %ecx
	movl	first_token@GOTOFF(%ebx), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	.loc 1 579 0
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	nth_token, .-nth_token
	.type	shift_token, @function
shift_token:
.LFB25:
	.loc 1 612 0
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
.LBB7:
	.loc 1 613 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBE7:
	movl	%eax, -20(%ebp)
.LBB8:
	.loc 1 614 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$20, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-8(%ebp), %eax
	jge	.L237
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L237:
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE8:
	.loc 1 615 0
	movl	8+token_obstack@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, (%esp)
	call	next_token
	.loc 1 616 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	shift_token, .-shift_token
	.type	next_token, @function
next_token:
.LFB24:
	.loc 1 588 0
	pushl	%ebp
.LCFI38:
	movl	%esp, %ebp
.LCFI39:
	pushl	%ebx
.LCFI40:
	subl	$20, %esp
.LCFI41:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 589 0
	movl	feed@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L241
	.loc 1 590 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	read_token
	movl	%eax, -8(%ebp)
	jmp	.L243
.L241:
	.loc 1 592 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %edx
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L244
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movzwl	30(%eax), %edx
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movzwl	28(%eax), %eax
	cmpw	%ax, %dx
	je	.L246
.L244:
	.loc 1 595 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movzwl	30(%eax), %eax
	cmpw	$20, %ax
	jne	.L247
	.loc 1 597 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %edx
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 32(%edx)
	.loc 1 598 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movw	$0, 30(%eax)
.L247:
	.loc 1 600 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	32(%eax), %eax
	leal	4(%eax), %ecx
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movzwl	30(%eax), %eax
	movswl	%ax,%edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %edx
	movl	8(%ebp), %ecx
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
	.loc 1 602 0
	movl	feed@GOTOFF(%ebx), %eax
	movl	(%eax), %edx
	movzwl	30(%edx), %eax
	addl	$1, %eax
	movw	%ax, 30(%edx)
	.loc 1 603 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -8(%ebp)
	jmp	.L243
.L246:
	.loc 1 606 0
	movl	$0, -8(%ebp)
.L243:
	movl	-8(%ebp), %eax
	.loc 1 607 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	next_token, .-next_token
	.type	num_tokens, @function
num_tokens:
.LFB22:
	.loc 1 562 0
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
.LBB9:
	.loc 1 563 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
.LBE9:
	movl	$-858993459, -24(%ebp)
	movl	-24(%ebp), %eax
	mull	%edx
	shrl	$4, %edx
	movl	first_token@GOTOFF(%ebx), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 565 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE22:
	.size	num_tokens, .-num_tokens
.globl see_typename
	.type	see_typename, @function
see_typename:
.LFB31:
	.loc 1 796 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$20, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 798 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	$2, (%eax)
	.loc 1 799 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L253
	.loc 1 800 0
	call	yylex@PLT
	movl	%eax, %edx
	movl	yychar@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jns	.L253
	movl	yychar@GOT(%ebx), %eax
	movl	$0, (%eax)
.L253:
	.loc 1 801 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 802 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$258, %eax
	jne	.L259
	.loc 1 804 0
	movl	yylval@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	$-2, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, %edx
	movl	lastiddecl@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 805 0
	movl	lastiddecl@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L259
	.loc 1 806 0
	movl	lastiddecl@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	identifier_type
	movl	%eax, %edx
	movl	yychar@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L259:
	.loc 1 808 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	see_typename, .-see_typename
	.type	identifier_type, @function
identifier_type:
.LFB29:
	.loc 1 711 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	pushl	%ebx
.LCFI52:
	subl	$36, %esp
.LCFI53:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 714 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L261
	.loc 1 716 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	jne	.L263
	.loc 1 717 0
	movl	$349, -24(%ebp)
	jmp	.L265
.L263:
	.loc 1 718 0
	movl	looking_for_template@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L261
	.loc 1 719 0
	movl	$261, -24(%ebp)
	jmp	.L265
.L261:
	.loc 1 721 0
	movl	looking_for_template@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L267
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	really_overloaded_fn@PLT
	testl	%eax, %eax
	je	.L267
	.loc 1 724 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-65, %al
	jne	.L270
	.loc 1 725 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, 8(%ebp)
.L270:
	.loc 1 727 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L272
.L273:
	.loc 1 728 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-64, %al
	jne	.L274
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	64(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L274
	.loc 1 729 0
	movl	$261, -24(%ebp)
	jmp	.L265
.L274:
	.loc 1 727 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L272:
	cmpl	$0, -8(%ebp)
	jne	.L273
.L267:
	.loc 1 731 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$39, %al
	jne	.L277
	.loc 1 732 0
	movl	$348, -24(%ebp)
	jmp	.L265
.L277:
	.loc 1 733 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$34, %al
	je	.L279
	.loc 1 734 0
	movl	$258, -24(%ebp)
	jmp	.L265
.L279:
	.loc 1 735 0
	movl	8(%ebp), %eax
	movzbl	35(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L281
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jne	.L281
	.loc 1 736 0
	movl	$260, -24(%ebp)
	jmp	.L265
.L281:
	.loc 1 740 0
	movl	got_scope@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 741 0
	cmpl	$0, -8(%ebp)
	je	.L284
	movl	-8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L284
	.loc 1 742 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.L284:
	.loc 1 743 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 744 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$-59, %al
	jne	.L287
	.loc 1 745 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L287:
	.loc 1 746 0
	cmpl	$0, -8(%ebp)
	je	.L289
	movl	-8(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	.L289
	.loc 1 747 0
	movl	$260, -24(%ebp)
	jmp	.L265
.L289:
	.loc 1 749 0
	movl	$259, -24(%ebp)
.L265:
	movl	-24(%ebp), %eax
	.loc 1 750 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	identifier_type, .-identifier_type
.globl yylex
	.type	yylex, @function
yylex:
.LFB32:
	.loc 1 812 0
	pushl	%ebp
.LCFI54:
	movl	%esp, %ebp
.LCFI55:
	pushl	%esi
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$64, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 814 0
	movl	$0, -28(%ebp)
	.loc 1 815 0
	movl	$0, -24(%ebp)
	.loc 1 816 0
	movl	$0, -20(%ebp)
	.loc 1 818 0
	movl	$9, (%esp)
	call	timevar_push@PLT
.L294:
	.loc 1 829 0
	movl	do_snarf_defarg@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L295
	.loc 1 831 0
	movl	$0, do_snarf_defarg@GOTOFF(%ebx)
	.loc 1 832 0
	call	snarf_defarg
	movl	%eax, %edx
	movl	yylval@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 833 0
	movl	yychar@GOT(%ebx), %eax
	movl	$371, (%eax)
	.loc 1 834 0
	movl	got_object@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 835 0
	movl	$9, (%esp)
	call	timevar_pop@PLT
	.loc 1 836 0
	movl	$371, -44(%ebp)
	jmp	.L297
.L295:
	.loc 1 840 0
	call	num_tokens
	testl	%eax, %eax
	je	.L298
	.loc 1 841 0
	movl	$0, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -32(%ebp)
	jmp	.L300
.L298:
	.loc 1 843 0
	call	shift_token
	movl	%eax, -32(%ebp)
.L300:
	.loc 1 848 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	cmpl	$263, -48(%ebp)
	je	.L303
	cmpl	$263, -48(%ebp)
	jg	.L311
	cmpl	$123, -48(%ebp)
	je	.L303
	cmpl	$123, -48(%ebp)
	jg	.L312
	cmpl	$40, -48(%ebp)
	je	.L302
	cmpl	$40, -48(%ebp)
	jl	.L301
	movl	-48(%ebp), %eax
	subl	$58, %eax
	cmpl	$1, %eax
	ja	.L301
	jmp	.L303
.L312:
	cmpl	$259, -48(%ebp)
	je	.L305
	cmpl	$262, -48(%ebp)
	je	.L306
	cmpl	$258, -48(%ebp)
	je	.L304
	jmp	.L301
.L311:
	cmpl	$347, -48(%ebp)
	je	.L310
	cmpl	$347, -48(%ebp)
	jg	.L313
	cmpl	$326, -48(%ebp)
	je	.L308
	cmpl	$329, -48(%ebp)
	je	.L309
	cmpl	$303, -48(%ebp)
	je	.L307
	jmp	.L301
.L313:
	cmpl	$349, -48(%ebp)
	je	.L305
	cmpl	$349, -48(%ebp)
	jl	.L301
	movl	-48(%ebp), %eax
	subl	$374, %eax
	cmpl	$2, %eax
	ja	.L301
	jmp	.L305
.L310:
	.loc 1 856 0
	call	consume_token
	.loc 1 857 0
	jmp	.L294
.L302:
	.loc 1 860 0
	movl	$1, (%esp)
	call	scan_tokens
	.loc 1 861 0
	movl	$1, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cmpw	$41, %ax
	jne	.L301
	.loc 1 863 0
	call	consume_token
	.loc 1 864 0
	movl	$338, -32(%ebp)
	.loc 1 866 0
	jmp	.L301
.L304:
.LBB10:
	.loc 1 872 0
	movl	$1, (%esp)
	call	scan_tokens
	.loc 1 873 0
	movl	$1, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -16(%ebp)
	.loc 1 874 0
	movl	$0, (%esp)
	call	nth_token
	addl	$8, %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	frob_id
	movl	%eax, -32(%ebp)
	.loc 1 875 0
	jmp	.L301
.L305:
.LBE10:
	.loc 1 884 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 885 0
	movl	looking_for_template@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 886 0
	jmp	.L301
.L306:
	.loc 1 889 0
	movl	$0, (%esp)
	call	nth_token
	movl	8(%eax), %edx
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L316
	.loc 1 891 0
	movl	$1, (%esp)
	call	scan_tokens
	.loc 1 892 0
	movl	$1, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cmpw	$267, %ax
	jne	.L301
	.loc 1 894 0
	movl	$368, -32(%ebp)
	.loc 1 895 0
	movl	$1, (%esp)
	call	nth_token
	movl	%eax, %esi
	movl	$1, (%esp)
	call	nth_token
	movl	8(%eax), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	get_identifier@PLT
	movl	%eax, 8(%esi)
	.loc 1 897 0
	call	consume_token
	jmp	.L301
.L316:
	.loc 1 901 0
	movl	$0, (%esp)
	call	nth_token
	movl	8(%eax), %edx
	movl	ridpointers@GOT(%ebx), %eax
	movl	(%eax), %eax
	addl	$84, %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L301
	.loc 1 902 0
	movl	$1, -20(%ebp)
	.loc 1 904 0
	jmp	.L301
.L309:
	.loc 1 908 0
	movl	$1, -24(%ebp)
	.loc 1 909 0
	jmp	.L301
.L303:
	.loc 1 917 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 918 0
	jmp	.L301
.L308:
	.loc 1 921 0
	call	do_aggr
	.loc 1 922 0
	jmp	.L301
.L307:
	.loc 1 926 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	$2, (%eax)
.L301:
	.loc 1 933 0
	movl	-20(%ebp), %eax
	movl	%eax, after_friend@GOTOFF(%ebx)
	.loc 1 934 0
	movl	-24(%ebp), %eax
	movl	%eax, after_new@GOTOFF(%ebx)
	.loc 1 938 0
	cmpl	$126, -32(%ebp)
	je	.L322
	.loc 1 939 0
	movl	got_object@GOT(%ebx), %eax
	movl	$0, (%eax)
.L322:
	.loc 1 941 0
	movl	yychar@GOT(%ebx), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
.LBB11:
	.loc 1 943 0
	movl	$0, (%esp)
	call	nth_token
	movl	%eax, -12(%ebp)
	.loc 1 945 0
	movl	yylval@GOT(%ebx), %ecx
	movl	-12(%ebp), %edx
	movl	8(%edx), %eax
	movl	%eax, (%ecx)
	movl	12(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	16(%edx), %eax
	movl	%eax, 8(%ecx)
	.loc 1 946 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L324
	.loc 1 947 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L324:
.LBE11:
	.loc 1 954 0
	call	consume_token
	.loc 1 956 0
	movl	$9, (%esp)
	call	timevar_pop@PLT
	.loc 1 957 0
	movl	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
.L297:
	movl	-44(%ebp), %eax
	.loc 1 958 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	yylex, .-yylex
	.section	.rodata
	.type	__FUNCTION__.14242, @object
	.size	__FUNCTION__.14242, 8
__FUNCTION__.14242:
	.string	"do_aggr"
	.text
	.type	do_aggr, @function
do_aggr:
.LFB30:
	.loc 1 760 0
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
	.loc 1 763 0
	movl	$2, (%esp)
	call	scan_tokens
	.loc 1 764 0
	movl	$1, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -12(%ebp)
	.loc 1 765 0
	cmpl	$259, -12(%ebp)
	je	.L328
	cmpl	$258, -12(%ebp)
	je	.L328
	cmpl	$349, -12(%ebp)
	jne	.L343
.L328:
	.loc 1 767 0
	movl	$2, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cwtl
	movl	%eax, -8(%ebp)
	.loc 1 768 0
	cmpl	$59, -8(%ebp)
	jne	.L332
	.loc 1 772 0
	movl	after_friend@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L343
	movl	after_new@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L337
	.loc 1 773 0
	jmp	.L343
.L332:
	.loc 1 775 0
	cmpl	$123, -8(%ebp)
	je	.L337
	cmpl	$58, -8(%ebp)
	jne	.L343
.L337:
	.loc 1 778 0
	movl	-12(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$259, -24(%ebp)
	je	.L341
	cmpl	$349, -24(%ebp)
	je	.L342
	cmpl	$258, -24(%ebp)
	je	.L340
	jmp	.L339
.L341:
	.loc 1 781 0
	movl	$1, (%esp)
	call	nth_token
	movw	$374, (%eax)
	.loc 1 782 0
	jmp	.L343
.L342:
	.loc 1 784 0
	movl	$1, (%esp)
	call	nth_token
	movw	$376, (%eax)
	.loc 1 785 0
	jmp	.L343
.L340:
	.loc 1 787 0
	movl	$1, (%esp)
	call	nth_token
	movw	$375, (%eax)
	.loc 1 788 0
	jmp	.L343
.L339:
	.loc 1 790 0
	leal	__FUNCTION__.14242@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$790, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L343:
	.loc 1 792 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	do_aggr, .-do_aggr
	.type	consume_token, @function
consume_token:
.LFB26:
	.loc 1 622 0
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
	.loc 1 623 0
	call	num_tokens
	cmpl	$1, %eax
	jne	.L345
.LBB12:
	.loc 1 625 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	8+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	jae	.L347
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	-8(%ebp), %eax
	jbe	.L347
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	jmp	.L350
.L347:
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	obstack_free@PLT
.L350:
.LBE12:
	.loc 1 626 0
	movl	$0, first_token@GOTOFF(%ebx)
	jmp	.L352
.L345:
	.loc 1 629 0
	movl	first_token@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, first_token@GOTOFF(%ebx)
.L352:
	.loc 1 630 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	consume_token, .-consume_token
.globl yyungetc
	.type	yyungetc, @function
yyungetc:
.LFB33:
	.loc 1 968 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%ebx
.LCFI69:
	subl	$36, %esp
.LCFI70:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 970 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	je	.L354
	cmpl	$0, 12(%ebp)
	jne	.L356
.L354:
.LBB13:
	.loc 1 974 0
	movl	8(%ebp), %eax
	movw	%ax, -24(%ebp)
	.loc 1 975 0
	movl	$0, -16(%ebp)
	.loc 1 976 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 978 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	push_token
	.loc 1 970 0
	jmp	.L358
.L356:
.LBE13:
	.loc 1 982 0
	movl	yychar@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
.L358:
	.loc 1 984 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE33:
	.size	yyungetc, .-yyungetc
	.type	push_token, @function
push_token:
.LFB27:
	.loc 1 636 0
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
	.loc 1 637 0
	movl	first_token@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L360
.LBB14:
.LBB15:
	.loc 1 639 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
.LBE15:
	movl	%eax, -20(%ebp)
.LBB16:
	.loc 1 640 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	$20, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	-8(%ebp), %eax
	jge	.L362
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_obstack_newchunk@PLT
.L362:
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
.LBE16:
	.loc 1 641 0
	cmpl	$0, -20(%ebp)
	je	.L364
	.loc 1 642 0
	movl	8+token_obstack@GOTOFF(%ebx), %edx
	movl	8+token_obstack@GOTOFF(%ebx), %eax
	leal	20(%eax), %ecx
	movl	-20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	memmove@PLT
.L364:
	.loc 1 644 0
	movl	first_token@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, first_token@GOTOFF(%ebx)
.L360:
.LBE14:
	.loc 1 646 0
	movl	first_token@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, first_token@GOTOFF(%ebx)
	.loc 1 647 0
	movl	$0, (%esp)
	call	nth_token
	movl	%eax, %ecx
	movl	8(%ebp), %edx
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
	.loc 1 648 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE27:
	.size	push_token, .-push_token
	.section	.rodata
	.type	__FUNCTION__.14398, @object
	.size	__FUNCTION__.14398, 8
__FUNCTION__.14398:
	.string	"frob_id"
	.text
	.type	frob_id, @function
frob_id:
.LFB34:
	.loc 1 993 0
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
	.loc 1 995 0
	movl	$0, -8(%ebp)
	.loc 1 997 0
	cmpl	$345, 12(%ebp)
	jne	.L368
	.loc 1 1000 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1001 0
	movl	looking_for_typename@GOT(%ebx), %eax
	movl	$1, (%eax)
	jmp	.L370
.L368:
	.loc 1 1003 0
	cmpl	$60, 12(%ebp)
	jne	.L370
	.loc 1 1004 0
	movl	looking_for_template@GOT(%ebx), %eax
	movl	$1, (%eax)
.L370:
	.loc 1 1005 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	$-2, 4(%esp)
	movl	%eax, (%esp)
	call	lookup_name@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1006 0
	cmpl	$0, -12(%ebp)
	je	.L372
	.loc 1 1008 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	identifier_type
	movl	%eax, 8(%ebp)
	.loc 1 1009 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	cmpl	$260, -24(%ebp)
	jg	.L377
	cmpl	$259, -24(%ebp)
	jge	.L376
	cmpl	$258, -24(%ebp)
	je	.L375
	jmp	.L374
.L377:
	cmpl	$261, -24(%ebp)
	je	.L375
	movl	-24(%ebp), %eax
	subl	$348, %eax
	cmpl	$1, %eax
	ja	.L374
.L376:
	.loc 1 1017 0
	movl	got_scope@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L378
	movl	got_object@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L375
.L378:
	.loc 1 1018 0
	movl	16(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L375:
	.loc 1 1022 0
	movl	lastiddecl@GOT(%ebx), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L380
.L374:
	.loc 1 1025 0
	leal	__FUNCTION__.14398@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1025, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L372:
	.loc 1 1029 0
	movl	lastiddecl@GOT(%ebx), %eax
	movl	$0, (%eax)
.L380:
	.loc 1 1030 0
	movl	got_scope@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1031 0
	movl	looking_for_typename@GOT(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1032 0
	movl	looking_for_template@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1033 0
	movl	8(%ebp), %eax
	.loc 1 1034 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE34:
	.size	frob_id, .-frob_id
.globl frob_opname
	.type	frob_opname, @function
frob_opname:
.LFB35:
	.loc 1 1041 0
	pushl	%ebp
.LCFI79:
	movl	%esp, %ebp
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$20, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1042 0
	movl	$0, (%esp)
	call	scan_tokens
	.loc 1 1043 0
	movl	$0, (%esp)
	call	nth_token
	movzwl	(%eax), %eax
	cwtl
	leal	8(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	frob_id
	.loc 1 1044 0
	movl	got_object@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 1045 0
	movl	8(%ebp), %eax
	.loc 1 1046 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	frob_opname, .-frob_opname
	.type	begin_parsing_inclass_inline, @function
begin_parsing_inclass_inline:
.LFB36:
	.loc 1 1054 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$36, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1059 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L385
	.loc 1 1060 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 96(%edx)
	jmp	.L387
.L385:
	.loc 1 1062 0
	movl	8(%ebp), %eax
	movl	%eax, processing_these_inlines@GOTOFF(%ebx)
.L387:
	.loc 1 1064 0
	call	ggc_collect@PLT
	.loc 1 1069 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1070 0
	cmpl	$0, -8(%ebp)
	je	.L388
	.loc 1 1071 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_function_context_to@PLT
.L388:
	.loc 1 1073 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	feed_input
	.loc 1 1074 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %edx
	movl	interface_unknown@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1075 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	interface_only@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 1076 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	andl	$-3, %eax
	movb	%al, 44(%edx)
	.loc 1 1077 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	136(%eax), %eax
	movl	$0, 48(%eax)
	.loc 1 1081 0
	movl	yychar@GOT(%ebx), %eax
	movl	$373, (%eax)
	.loc 1 1082 0
	movl	yylval@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1084 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$3, 12(%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	start_function@PLT
	.loc 1 1086 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	begin_parsing_inclass_inline, .-begin_parsing_inclass_inline
	.type	feed_input, @function
feed_input:
.LFB20:
	.loc 1 501 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$20, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 508 0
	movl	$80, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 510 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 511 0
	movl	8(%ebp), %eax
	movw	$0, 30(%eax)
	.loc 1 519 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 520 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 521 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 522 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 523 0
	movl	-8(%ebp), %ecx
	movl	yylval@GOT(%ebx), %edx
	movl	(%edx), %eax
	movl	%eax, 16(%ecx)
	movl	4(%edx), %eax
	movl	%eax, 20(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 24(%ecx)
	.loc 1 524 0
	movl	first_token@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 28(%eax)
	.loc 1 525 0
	movl	-8(%ebp), %edx
	movl	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 32(%edx)
	movl	4+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 36(%edx)
	movl	8+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 40(%edx)
	movl	12+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 44(%edx)
	movl	16+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 48(%edx)
	movl	20+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 52(%edx)
	movl	24+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 56(%edx)
	movl	28+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 60(%edx)
	movl	32+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 64(%edx)
	movl	36+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 68(%edx)
	movl	40+token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, 72(%edx)
	.loc 1 526 0
	movl	feed@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 76(%eax)
	.loc 1 528 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	input_filename@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 529 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	lineno@GOT(%ebx), %eax
	movl	%edx, (%eax)
	.loc 1 530 0
	movl	yychar@GOT(%ebx), %eax
	movl	$-2, (%eax)
	.loc 1 531 0
	movl	yylval@GOT(%ebx), %eax
	movl	$0, (%eax)
	.loc 1 532 0
	movl	$0, first_token@GOTOFF(%ebx)
	.loc 1 533 0
	leal	token_obstack@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	gcc_obstack_init@PLT
	.loc 1 534 0
	movl	-8(%ebp), %eax
	movl	%eax, feed@GOTOFF(%ebx)
	.loc 1 535 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	feed_input, .-feed_input
.globl do_pending_inlines
	.type	do_pending_inlines, @function
do_pending_inlines:
.LFB37:
	.loc 1 1095 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$20, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1097 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$373, %eax
	je	.L397
	.loc 1 1100 0
	movl	pending_inlines@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L397
.LBB17:
	.loc 1 1105 0
	movl	pending_inlines@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1106 0
	movl	$0, pending_inlines_tail@GOTOFF(%ebx)
	movl	pending_inlines_tail@GOTOFF(%ebx), %eax
	movl	%eax, pending_inlines@GOTOFF(%ebx)
	.loc 1 1108 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	begin_parsing_inclass_inline
.L397:
.LBE17:
	.loc 1 1110 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	do_pending_inlines, .-do_pending_inlines
	.section	.rodata
	.align 4
.LC42:
	.string	"parse error at end of saved function text"
	.text
.globl process_next_inline
	.type	process_next_inline, @function
process_next_inline:
.LFB38:
	.loc 1 1119 0
	pushl	%ebp
.LCFI95:
	movl	%esp, %ebp
.LCFI96:
	pushl	%ebx
.LCFI97:
	subl	$20, %esp
.LCFI98:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1120 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1121 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	decl_function_context@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1123 0
	cmpl	$0, -8(%ebp)
	je	.L399
	.loc 1 1124 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	pop_function_context_from@PLT
.L399:
	.loc 1 1125 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	jne	.L401
	.loc 1 1126 0
	call	yylex@PLT
	movl	%eax, %edx
	movl	yychar@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L401:
	.loc 1 1127 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$383, %eax
	je	.L403
	.loc 1 1128 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L403:
	.loc 1 1129 0
	call	end_input@PLT
	.loc 1 1131 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
	.loc 1 1132 0
	cmpl	$0, 8(%ebp)
	je	.L405
	.loc 1 1133 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	begin_parsing_inclass_inline
	jmp	.L411
.L405:
	.loc 1 1136 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L408
	.loc 1 1137 0
	movl	cfun@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	288(%eax), %eax
	movl	$0, 96(%eax)
	jmp	.L410
.L408:
	.loc 1 1139 0
	movl	$0, processing_these_inlines@GOTOFF(%ebx)
.L410:
	.loc 1 1140 0
	call	extract_interface_info@PLT
.L411:
	.loc 1 1142 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	process_next_inline, .-process_next_inline
	.type	alloc_unparsed_text, @function
alloc_unparsed_text:
.LFB41:
	.loc 1 1188 0
	pushl	%ebp
.LCFI99:
	movl	%esp, %ebp
.LCFI100:
	pushl	%ebx
.LCFI101:
	subl	$20, %esp
.LCFI102:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1190 0
	movl	$36, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1191 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1192 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	-8(%ebp), %ecx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	.loc 1 1193 0
	movl	-8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 1194 0
	movl	$404, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	-8(%ebp), %eax
	movl	24(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 20(%eax)
	.loc 1 1195 0
	movl	-8(%ebp), %eax
	.loc 1 1196 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE41:
	.size	alloc_unparsed_text, .-alloc_unparsed_text
	.section	.rodata
	.align 4
.LC43:
	.string	"%Hend of file read inside definition"
	.text
	.type	snarf_parenthesized_expression, @function
snarf_parenthesized_expression:
.LFB42:
	.loc 1 1203 0
	pushl	%ebp
.LCFI103:
	movl	%esp, %ebp
.LCFI104:
	pushl	%ebx
.LCFI105:
	subl	$36, %esp
.LCFI106:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1205 0
	movl	$1, -8(%ebp)
	jmp	.L424
.L415:
.L424:
	.loc 1 1209 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, (%esp)
	call	next_token
	movl	%eax, -12(%ebp)
	.loc 1 1210 0
	cmpl	$40, -12(%ebp)
	jne	.L416
	.loc 1 1211 0
	addl	$1, -8(%ebp)
	jmp	.L415
.L416:
	.loc 1 1212 0
	cmpl	$41, -12(%ebp)
	jne	.L419
	subl	$1, -8(%ebp)
	cmpl	$0, -8(%ebp)
	je	.L423
.L419:
	.loc 1 1214 0
	cmpl	$0, -12(%ebp)
	jne	.L415
	.loc 1 1216 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L423:
	.loc 1 1220 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	snarf_parenthesized_expression, .-snarf_parenthesized_expression
	.type	space_for_token, @function
space_for_token:
.LFB39:
	.loc 1 1148 0
	pushl	%ebp
.LCFI107:
	movl	%esp, %ebp
.LCFI108:
	pushl	%esi
.LCFI109:
	pushl	%ebx
.LCFI110:
	subl	$16, %esp
.LCFI111:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1149 0
	movl	8(%ebp), %eax
	movzwl	28(%eax), %eax
	cmpw	$20, %ax
	je	.L426
	.loc 1 1150 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzwl	28(%eax), %esi
	movswl	%si,%edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%eax, %ecx
	movl	%ecx, -12(%ebp)
	leal	1(%esi), %edx
	movl	8(%ebp), %eax
	movw	%dx, 28(%eax)
	jmp	.L428
.L426:
	.loc 1 1152 0
	movl	8(%ebp), %eax
	movl	24(%eax), %esi
	movl	$404, (%esp)
	call	ggc_alloc_cleared@PLT
	movl	%eax, (%esi)
	.loc 1 1153 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	.loc 1 1154 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	$0, (%eax)
	.loc 1 1156 0
	movl	8(%ebp), %eax
	movw	$1, 28(%eax)
	.loc 1 1157 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	addl	$4, %eax
	movl	%eax, -12(%ebp)
.L428:
	movl	-12(%ebp), %eax
	.loc 1 1158 0
	addl	$16, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE39:
	.size	space_for_token, .-space_for_token
	.section	.rodata
	.align 4
.LC44:
	.string	"parse error in method specification"
	.align 4
.LC45:
	.string	"function body for constructor missing"
	.text
	.type	snarf_block, @function
snarf_block:
.LFB43:
	.loc 1 1227 0
	pushl	%ebp
.LCFI112:
	movl	%esp, %ebp
.LCFI113:
	pushl	%ebx
.LCFI114:
	subl	$52, %esp
.LCFI115:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1228 0
	movl	$1, -32(%ebp)
	.loc 1 1229 0
	movl	$0, -28(%ebp)
	.loc 1 1230 0
	movl	$0, -24(%ebp)
	.loc 1 1231 0
	movl	$0, -20(%ebp)
	.loc 1 1235 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$123, %eax
	je	.L431
	.loc 1 1237 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$61, %eax
	jne	.L433
	.loc 1 1238 0
	movl	$1, -28(%ebp)
	jmp	.L431
.L433:
	.loc 1 1239 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$58, %eax
	je	.L435
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$314, %eax
	je	.L435
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$367, %eax
	jne	.L438
.L435:
	.loc 1 1241 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$367, %eax
	jne	.L439
	.loc 1 1242 0
	movl	$1, -20(%ebp)
.L439:
	.loc 1 1243 0
	movl	$1, -24(%ebp)
	.loc 1 1244 0
	movl	$0, -32(%ebp)
	.loc 1 1239 0
	jmp	.L431
.L438:
	.loc 1 1247 0
	leal	.LC44@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	yyerror@PLT
.L431:
	.loc 1 1250 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, -12(%ebp)
	.loc 1 1251 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movw	%dx, (%eax)
	.loc 1 1252 0
	movl	-12(%ebp), %ecx
	movl	yylval@GOT(%ebx), %edx
	movl	(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	4(%edx), %eax
	movl	%eax, 12(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 16(%ecx)
	.loc 1 1253 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L465
.L441:
.L465:
	.loc 1 1257 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, (%esp)
	call	next_token
	movl	%eax, -16(%ebp)
	.loc 1 1259 0
	cmpl	$123, -16(%ebp)
	jne	.L442
	.loc 1 1261 0
	movl	$0, -24(%ebp)
	.loc 1 1262 0
	addl	$1, -32(%ebp)
	jmp	.L441
.L442:
	.loc 1 1264 0
	cmpl	$125, -16(%ebp)
	jne	.L445
	.loc 1 1266 0
	subl	$1, -32(%ebp)
	.loc 1 1267 0
	cmpl	$0, -32(%ebp)
	jne	.L441
	cmpl	$0, -28(%ebp)
	jne	.L441
	.loc 1 1269 0
	cmpl	$0, -20(%ebp)
	je	.L464
	.loc 1 1272 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, (%esp)
	call	next_token
	cmpl	$366, %eax
	je	.L452
	.loc 1 1274 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_last_token
	movl	%eax, (%esp)
	call	push_token
	.loc 1 1275 0
	jmp	.L464
.L452:
	.loc 1 1278 0
	movl	$1, -24(%ebp)
	jmp	.L441
.L445:
	.loc 1 1281 0
	cmpl	$59, -16(%ebp)
	jne	.L454
	.loc 1 1283 0
	cmpl	$0, -24(%ebp)
	je	.L456
.LBB18:
	.loc 1 1287 0
	leal	.LC45@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1289 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, -8(%ebp)
	.loc 1 1290 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1291 0
	movl	-8(%ebp), %eax
	movw	$123, (%eax)
	.loc 1 1292 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, -8(%ebp)
	.loc 1 1293 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 1294 0
	movl	-8(%ebp), %eax
	movw	$125, (%eax)
	.loc 1 1295 0
	jmp	.L464
.L456:
.LBE18:
	.loc 1 1297 0
	cmpl	$0, -28(%ebp)
	je	.L441
	cmpl	$0, -32(%ebp)
	je	.L464
	.loc 1 1298 0
	jmp	.L441
.L454:
	.loc 1 1300 0
	cmpl	$40, -16(%ebp)
	jne	.L460
	cmpl	$0, -32(%ebp)
	jne	.L460
	.loc 1 1301 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	snarf_parenthesized_expression
	.loc 1 1300 0
	jmp	.L441
.L460:
	.loc 1 1302 0
	cmpl	$0, -16(%ebp)
	jne	.L441
	.loc 1 1304 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	leal	.LC43@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L464:
	.loc 1 1308 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	snarf_block, .-snarf_block
	.section	.rodata
	.type	__FUNCTION__.14509, @object
	.size	__FUNCTION__.14509, 18
__FUNCTION__.14509:
	.string	"remove_last_token"
	.text
	.type	remove_last_token, @function
remove_last_token:
.LFB40:
	.loc 1 1164 0
	pushl	%ebp
.LCFI116:
	movl	%esp, %ebp
.LCFI117:
	pushl	%ebx
.LCFI118:
	subl	$36, %esp
.LCFI119:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1165 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	4(%eax), %ecx
	movl	8(%ebp), %eax
	movzwl	28(%eax), %eax
	movswl	%ax,%edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	subl	$20, %eax
	movl	%eax, -12(%ebp)
	.loc 1 1166 0
	movl	8(%ebp), %eax
	movzwl	28(%eax), %eax
	testw	%ax, %ax
	jne	.L467
	.loc 1 1167 0
	leal	__FUNCTION__.14509@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1167, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L467:
	.loc 1 1168 0
	movl	8(%ebp), %eax
	movzwl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movw	%dx, 28(%eax)
	.loc 1 1169 0
	movl	8(%ebp), %eax
	movzwl	28(%eax), %eax
	testw	%ax, %ax
	jne	.L469
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	je	.L469
.LBB19:
	.loc 1 1172 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1173 0
	jmp	.L472
.L473:
	.loc 1 1174 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L472:
	.loc 1 1173 0
	movl	-8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jne	.L473
	.loc 1 1175 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1176 0
	movl	8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 24(%edx)
	.loc 1 1177 0
	movl	8(%ebp), %eax
	movw	$20, 28(%eax)
.L469:
.LBE19:
	.loc 1 1179 0
	movl	-12(%ebp), %eax
	.loc 1 1180 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE40:
	.size	remove_last_token, .-remove_last_token
.globl snarf_method
	.type	snarf_method, @function
snarf_method:
.LFB44:
	.loc 1 1315 0
	pushl	%ebp
.LCFI120:
	movl	%esp, %ebp
.LCFI121:
	pushl	%ebx
.LCFI122:
	subl	$36, %esp
.LCFI123:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1318 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1319 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1321 0
	movl	interface_unknown@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L477
	movl	interface_only@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L479
	movl	$0, -24(%ebp)
	jmp	.L481
.L479:
	movl	$2, -24(%ebp)
.L481:
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	.L482
.L477:
	movl	$1, -28(%ebp)
.L482:
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_unparsed_text
	movl	%eax, -8(%ebp)
	.loc 1 1324 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	snarf_block
	.loc 1 1330 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, %edx
	movl	Teosi@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	.loc 1 1331 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, %edx
	movl	Teosi@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	.loc 1 1332 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, %edx
	movl	Teosi@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	.loc 1 1336 0
	movl	global_trees@GOT(%ebx), %eax
	movl	128(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L491
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L485
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	8(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L485
	.loc 1 1338 0
	jmp	.L491
.L485:
	.loc 1 1346 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 48(%edx)
	.loc 1 1347 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	44(%edx), %eax
	orl	$2, %eax
	movb	%al, 44(%edx)
	.loc 1 1351 0
	movl	8(%ebp), %eax
	movl	136(%eax), %edx
	movzbl	6(%edx), %eax
	orl	$64, %eax
	movb	%al, 6(%edx)
	.loc 1 1353 0
	movl	pending_inlines_tail@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L488
	.loc 1 1354 0
	movl	pending_inlines_tail@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	jmp	.L490
.L488:
	.loc 1 1356 0
	movl	-8(%ebp), %eax
	movl	%eax, pending_inlines@GOTOFF(%ebx)
.L490:
	.loc 1 1357 0
	movl	-8(%ebp), %eax
	movl	%eax, pending_inlines_tail@GOTOFF(%ebx)
.L491:
	.loc 1 1358 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	snarf_method, .-snarf_method
	.section	.rodata
	.align 4
.LC46:
	.string	"%Hend of file read inside default argument"
	.text
	.type	snarf_defarg, @function
snarf_defarg:
.LFB45:
	.loc 1 1365 0
	pushl	%ebp
.LCFI124:
	movl	%esp, %ebp
.LCFI125:
	pushl	%ebx
.LCFI126:
	subl	$52, %esp
.LCFI127:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1367 0
	movl	$0, -16(%ebp)
	.loc 1 1371 0
	movl	input_filename@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1372 0
	movl	lineno@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1374 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	alloc_unparsed_text
	movl	%eax, -12(%ebp)
	jmp	.L508
.L493:
.L508:
	.loc 1 1378 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, (%esp)
	call	next_token
	movl	%eax, -20(%ebp)
	.loc 1 1380 0
	cmpl	$0, -16(%ebp)
	jg	.L494
	cmpl	$41, -20(%ebp)
	je	.L496
	cmpl	$44, -20(%ebp)
	je	.L496
.L494:
	.loc 1 1382 0
	cmpl	$40, -20(%ebp)
	je	.L498
	cmpl	$91, -20(%ebp)
	jne	.L500
.L498:
	.loc 1 1383 0
	addl	$1, -16(%ebp)
	.loc 1 1382 0
	jmp	.L493
.L500:
	.loc 1 1384 0
	cmpl	$93, -20(%ebp)
	je	.L502
	cmpl	$41, -20(%ebp)
	jne	.L504
.L502:
	.loc 1 1385 0
	subl	$1, -16(%ebp)
	.loc 1 1384 0
	jmp	.L493
.L504:
	.loc 1 1386 0
	cmpl	$0, -20(%ebp)
	jne	.L493
	.loc 1 1388 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC46@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1389 0
	jmp	.L506
.L496:
	.loc 1 1394 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	remove_last_token
	movl	%eax, (%esp)
	call	push_token
	.loc 1 1400 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, %edx
	movl	Teosi@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	.loc 1 1401 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, %edx
	movl	Teosi@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
	.loc 1 1402 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	space_for_token
	movl	%eax, %edx
	movl	Teosi@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	movl	4+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	movl	8+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	movl	12+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	movl	16+Teosi@GOTOFF(%ebx), %eax
	movl	%eax, 16(%edx)
.L506:
	.loc 1 1411 0
	movl	$202, (%esp)
	call	make_node@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1412 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1414 0
	movl	-8(%ebp), %eax
	.loc 1 1415 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE45:
	.size	snarf_defarg, .-snarf_defarg
.globl maybe_snarf_defarg
	.type	maybe_snarf_defarg, @function
maybe_snarf_defarg:
.LFB46:
	.loc 1 1422 0
	pushl	%ebp
.LCFI128:
	movl	%esp, %ebp
.LCFI129:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1423 0
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L513
	movl	scope_chain@GOT(%ecx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	92(%eax), %eax
	movzbl	7(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L513
	.loc 1 1424 0
	movl	$1, do_snarf_defarg@GOTOFF(%ecx)
.L513:
	.loc 1 1425 0
	popl	%ebp
	ret
.LFE46:
	.size	maybe_snarf_defarg, .-maybe_snarf_defarg
.globl add_defarg_fn
	.type	add_defarg_fn, @function
add_defarg_fn:
.LFB47:
	.loc 1 1435 0
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
	.loc 1 1436 0
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L515
	.loc 1 1437 0
	movl	defarg_fns@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 20(%edx)
	jmp	.L518
.L515:
	.loc 1 1440 0
	movl	defarg_fns@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, defarg_fns@GOTOFF(%ebx)
	.loc 1 1441 0
	movl	defarg_fns@GOTOFF(%ebx), %edx
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 4(%edx)
.L518:
	.loc 1 1443 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE47:
	.size	add_defarg_fn, .-add_defarg_fn
	.type	feed_defarg, @function
feed_defarg:
.LFB48:
	.loc 1 1450 0
	pushl	%ebp
.LCFI134:
	movl	%esp, %ebp
.LCFI135:
	pushl	%ebx
.LCFI136:
	subl	$20, %esp
.LCFI137:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1451 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1453 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	feed_input
	.loc 1 1454 0
	movl	yychar@GOT(%ebx), %eax
	movl	$372, (%eax)
	.loc 1 1455 0
	movl	yylval@GOT(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 1456 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE48:
	.size	feed_defarg, .-feed_defarg
	.type	finish_defarg, @function
finish_defarg:
.LFB49:
	.loc 1 1462 0
	pushl	%ebp
.LCFI138:
	movl	%esp, %ebp
.LCFI139:
	pushl	%ebx
.LCFI140:
	subl	$4, %esp
.LCFI141:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1463 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$-2, %eax
	jne	.L522
	.loc 1 1464 0
	call	yylex@PLT
	movl	%eax, %edx
	movl	yychar@GOT(%ebx), %eax
	movl	%edx, (%eax)
.L522:
	.loc 1 1465 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$383, %eax
	je	.L524
	.loc 1 1466 0
	leal	.LC42@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L524:
	.loc 1 1468 0
	call	end_input@PLT
	.loc 1 1469 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE49:
	.size	finish_defarg, .-finish_defarg
	.section	.rodata
	.align 4
.LC47:
	.string	"circular dependency in default args of `%#D'"
	.text
.globl do_pending_defargs
	.type	do_pending_defargs, @function
do_pending_defargs:
.LFB50:
	.loc 1 1476 0
	pushl	%ebp
.LCFI142:
	movl	%esp, %ebp
.LCFI143:
	pushl	%ebx
.LCFI144:
	subl	$36, %esp
.LCFI145:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1477 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L564
	.loc 1 1478 0
	call	finish_defarg
	.loc 1 1480 0
	jmp	.L564
.L531:
.LBB20:
	.loc 1 1482 0
	movl	defarg_fns@GOTOFF(%ebx), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1484 0
	movl	defarg_fns@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1485 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L532
	.loc 1 1487 0
	movl	defarg_fns@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	push_nested_class@PLT
	.loc 1 1488 0
	movl	$0, (%esp)
	call	pushlevel@PLT
	.loc 1 1489 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L534
	.loc 1 1490 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	maybe_begin_member_template_processing@PLT
.L534:
	.loc 1 1492 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L536
	.loc 1 1493 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, defarg_parm@GOTOFF(%ebx)
	jmp	.L540
.L536:
	.loc 1 1495 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, defarg_parm@GOTOFF(%ebx)
	jmp	.L540
.L532:
	.loc 1 1498 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, defarg_parm@GOTOFF(%ebx)
	.loc 1 1500 0
	jmp	.L540
.L541:
	.loc 1 1501 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L542
	movl	defarg_parm@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-54, %al
	jne	.L542
	.loc 1 1504 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L545
	.loc 1 1505 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	$0, 16(%eax)
	jmp	.L542
.L545:
	.loc 1 1508 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	feed_defarg
	.loc 1 1512 0
	jmp	.L563
.L542:
	.loc 1 1500 0
	movl	defarg_parm@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, defarg_parm@GOTOFF(%ebx)
.L540:
	movl	defarg_parm@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L541
	.loc 1 1515 0
	movl	-16(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L549
	.loc 1 1517 0
	call	maybe_end_member_template_processing@PLT
	.loc 1 1518 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	check_default_args@PLT
.L549:
	.loc 1 1521 0
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	poplevel@PLT
	.loc 1 1522 0
	call	pop_nested_class@PLT
	.loc 1 1524 0
	movl	defarg_fns@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, defarg_fns@GOTOFF(%ebx)
	.loc 1 1525 0
	movl	defarg_depfns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L551
.LBB21:
	.loc 1 1532 0
	movl	defarg_depfns@GOTOFF(%ebx), %eax
	movl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L553
.L554:
	.loc 1 1534 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %edx
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jne	.L555
	.loc 1 1533 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L553:
	.loc 1 1532 0
	cmpl	$0, -12(%ebp)
	je	.L557
	cmpl	$0, -8(%ebp)
	jne	.L554
.L557:
	.loc 1 1536 0
	cmpl	$0, -12(%ebp)
	jne	.L555
	cmpl	$0, -8(%ebp)
	je	.L560
.L555:
	.loc 1 1539 0
	movl	-20(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 1540 0
	movl	defarg_fns@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	chainon@PLT
	movl	%eax, defarg_fns@GOTOFF(%ebx)
	.loc 1 1541 0
	movl	defarg_depfns@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 1536 0
	jmp	.L561
.L560:
	.loc 1 1545 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC47@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cp_warning_at@PLT
	.loc 1 1550 0
	movl	-20(%ebp), %eax
	movl	%eax, defarg_fns@GOTOFF(%ebx)
	.loc 1 1551 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 16(%eax)
.L561:
	.loc 1 1553 0
	movl	$0, defarg_depfns@GOTOFF(%ebx)
	jmp	.L530
.L551:
.LBE21:
	.loc 1 1555 0
	movl	-20(%ebp), %eax
	movl	16(%eax), %edx
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jne	.L530
	.loc 1 1556 0
	movl	defarg_fnsdone@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, defarg_fnsdone@GOTOFF(%ebx)
.L530:
.L564:
.LBE20:
	.loc 1 1480 0
	movl	defarg_fns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L531
.L563:
	.loc 1 1558 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE50:
	.size	do_pending_defargs, .-do_pending_defargs
	.section	.rodata
	.type	__FUNCTION__.14849, @object
	.size	__FUNCTION__.14849, 21
__FUNCTION__.14849:
	.string	"done_pending_defargs"
	.text
.globl done_pending_defargs
	.type	done_pending_defargs, @function
done_pending_defargs:
.LFB51:
	.loc 1 1564 0
	pushl	%ebp
.LCFI146:
	movl	%esp, %ebp
.LCFI147:
	pushl	%ebx
.LCFI148:
	subl	$36, %esp
.LCFI149:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LBB22:
	.loc 1 1565 0
	jmp	.L566
.L567:
	.loc 1 1567 0
	movl	defarg_fnsdone@GOTOFF(%ebx), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1570 0
	movl	-12(%ebp), %eax
	movzbl	8(%eax), %eax
	cmpb	$31, %al
	jne	.L568
	.loc 1 1571 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L571
.L568:
	.loc 1 1573 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1574 0
	jmp	.L571
.L572:
	.loc 1 1575 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L573
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$-54, %al
	jne	.L573
	.loc 1 1578 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L576
	leal	__FUNCTION__.14849@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$1578, 4(%esp)
	leal	.LC40@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L576:
	.loc 1 1579 0
	movl	-8(%ebp), %eax
	movl	$0, 16(%eax)
.L573:
	.loc 1 1574 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L571:
	cmpl	$0, -8(%ebp)
	jne	.L572
.LBE22:
	.loc 1 1565 0
	movl	defarg_fnsdone@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, defarg_fnsdone@GOTOFF(%ebx)
.L566:
	movl	defarg_fnsdone@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L567
	.loc 1 1582 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE51:
	.size	done_pending_defargs, .-done_pending_defargs
.globl unprocessed_defarg_fn
	.type	unprocessed_defarg_fn, @function
unprocessed_defarg_fn:
.LFB52:
	.loc 1 1591 0
	pushl	%ebp
.LCFI150:
	movl	%esp, %ebp
.LCFI151:
	pushl	%ebx
.LCFI152:
	subl	$20, %esp
.LCFI153:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1592 0
	movl	defarg_depfns@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	tree_cons@PLT
	movl	%eax, defarg_depfns@GOTOFF(%ebx)
	.loc 1 1593 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE52:
	.size	unprocessed_defarg_fn, .-unprocessed_defarg_fn
	.section	.rodata
	.align 4
.LC48:
	.string	"invalid type `%T' for default argument to `%T'"
	.text
.globl replace_defarg
	.type	replace_defarg, @function
replace_defarg:
.LFB53:
	.loc 1 1602 0
	pushl	%ebp
.LCFI154:
	movl	%esp, %ebp
.LCFI155:
	pushl	%ebx
.LCFI156:
	subl	$20, %esp
.LCFI157:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1603 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L584
	.loc 1 1604 0
	movl	global_trees@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	jmp	.L591
.L584:
	.loc 1 1607 0
	movl	scope_chain@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	64(%eax), %edx
	movl	60(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.L587
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	can_convert_arg@PLT
	testl	%eax, %eax
	jne	.L587
	.loc 1 1609 0
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC48@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	pedwarn@PLT
.L587:
	.loc 1 1611 0
	movl	defarg_depfns@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L591
	.loc 1 1612 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
.L591:
	.loc 1 1614 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE53:
	.size	replace_defarg, .-replace_defarg
	.section	.rodata
.LC49:
	.string	"%s at end of input"
.LC50:
	.string	""
.LC51:
	.string	"L"
.LC52:
	.string	"%s before %s'%c'"
.LC53:
	.string	"%s before %s'\\x%x'"
.LC54:
	.string	"%s"
.LC55:
	.string	"%s before string constant"
.LC56:
	.string	"%s before numeric constant"
.LC57:
	.string	"%s before `%s'"
.LC58:
	.string	"%s before `%c'"
.LC59:
	.string	"%s before `%o'"
.LC60:
	.string	"%s before `%s' token"
	.text
.globl yyerror
	.type	yyerror, @function
yyerror:
.LFB54:
	.loc 1 1647 0
	pushl	%ebp
.LCFI158:
	movl	%esp, %ebp
.LCFI159:
	pushl	%ebx
.LCFI160:
	subl	$36, %esp
.LCFI161:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1648 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1650 0
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$24, %eax
	jne	.L593
	.loc 1 1651 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC49@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L622
.L593:
	.loc 1 1652 0
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$59, %eax
	je	.L596
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$60, %eax
	jne	.L598
.L596:
	.loc 1 1654 0
	movl	yylval@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L599
	movl	yylval@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	8(%eax), %eax
	cmpb	$26, %al
	jne	.L599
.LBB23:
	.loc 1 1656 0
	movl	yylval@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	24(%eax), %edx
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1657 0
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$59, %eax
	jne	.L602
	leal	.LC50@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
	jmp	.L604
.L602:
	leal	.LC51@GOTOFF(%ebx), %eax
	movl	%eax, -24(%ebp)
.L604:
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1658 0
	cmpl	$255, -12(%ebp)
	ja	.L605
	movzbl	-12(%ebp),%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$172, %eax
	testl	%eax, %eax
	je	.L605
	.loc 1 1659 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC52@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1658 0
	jmp	.L622
.L605:
	.loc 1 1661 0
	movl	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC53@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1654 0
	jmp	.L622
.L599:
.LBE23:
	.loc 1 1664 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC54@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1652 0
	jmp	.L622
.L598:
	.loc 1 1666 0
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$62, %eax
	je	.L610
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$63, %eax
	jne	.L612
.L610:
	.loc 1 1668 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC55@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	.loc 1 1666 0
	jmp	.L622
.L612:
	.loc 1 1669 0
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$58, %eax
	jne	.L613
	.loc 1 1670 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC56@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L622
.L613:
	.loc 1 1671 0
	movl	last_token@GOTOFF(%ebx), %eax
	cmpl	$57, %eax
	jne	.L615
	.loc 1 1673 0
	movl	last_token_id@GOTOFF(%ebx), %eax
	movzbl	8(%eax), %eax
	cmpb	$1, %al
	jne	.L617
	.loc 1 1674 0
	movl	last_token_id@GOTOFF(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC57@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L622
.L617:
	.loc 1 1675 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	movzbl	%al,%edx
	movl	_sch_istable@GOT(%ebx), %eax
	movzwl	(%eax,%edx,2), %eax
	movzwl	%ax, %eax
	andl	$172, %eax
	testl	%eax, %eax
	je	.L620
	.loc 1 1676 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC58@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L622
.L620:
	.loc 1 1678 0
	movl	yychar@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC59@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
	jmp	.L622
.L615:
	.loc 1 1681 0
	movl	last_token@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cpp_type2name@PLT
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC60@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	error@PLT
.L622:
	.loc 1 1682 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE54:
	.size	yyerror, .-yyerror
.globl gt_ggc_mx_feed
	.type	gt_ggc_mx_feed, @function
gt_ggc_mx_feed:
.LFB55:
	.file 2 "../../../kg++fe/gnu/MIPS/gt-cp-spew.h"
	.loc 2 26 0
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
	.loc 2 27 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 28 0
	cmpl	$0, -8(%ebp)
	je	.L704
	cmpl	$1, -8(%ebp)
	je	.L704
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L704
	.loc 2 30 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L628
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_unparsed_text@PLT
.L628:
	.loc 2 31 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	subl	$258, %eax
	movl	%eax, -24(%ebp)
	cmpl	$118, -24(%ebp)
	ja	.L630
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L655@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L655:
	.long	.L631@GOTOFF
	.long	.L632@GOTOFF
	.long	.L633@GOTOFF
	.long	.L634@GOTOFF
	.long	.L635@GOTOFF
	.long	.L636@GOTOFF
	.long	.L637@GOTOFF
	.long	.L638@GOTOFF
	.long	.L639@GOTOFF
	.long	.L640@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L641@GOTOFF
	.long	.L642@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L643@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L644@GOTOFF
	.long	.L645@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L630@GOTOFF
	.long	.L646@GOTOFF
	.long	.L647@GOTOFF
	.long	.L648@GOTOFF
	.long	.L649@GOTOFF
	.long	.L650@GOTOFF
	.long	.L651@GOTOFF
	.long	.L652@GOTOFF
	.long	.L653@GOTOFF
	.long	.L654@GOTOFF
	.text
.L644:
	.loc 2 34 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 35 0
	jmp	.L630
.L654:
	.loc 2 37 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 38 0
	jmp	.L630
.L652:
	.loc 2 40 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 41 0
	jmp	.L630
.L653:
	.loc 2 43 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 44 0
	jmp	.L630
.L651:
	.loc 2 46 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_unparsed_text@PLT
	.loc 2 47 0
	jmp	.L630
.L650:
	.loc 2 49 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 50 0
	jmp	.L630
.L649:
	.loc 2 52 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 53 0
	jmp	.L630
.L648:
	.loc 2 55 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 56 0
	jmp	.L630
.L647:
	.loc 2 58 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 59 0
	jmp	.L630
.L646:
	.loc 2 61 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 62 0
	jmp	.L630
.L645:
	.loc 2 64 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 65 0
	jmp	.L630
.L637:
	.loc 2 67 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 68 0
	jmp	.L630
.L636:
	.loc 2 70 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 71 0
	jmp	.L630
.L635:
	.loc 2 73 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 74 0
	jmp	.L630
.L640:
	.loc 2 76 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 77 0
	jmp	.L630
.L633:
	.loc 2 79 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 80 0
	jmp	.L630
.L634:
	.loc 2 82 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 83 0
	jmp	.L630
.L638:
	.loc 2 85 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 86 0
	jmp	.L630
.L632:
	.loc 2 88 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 89 0
	jmp	.L630
.L631:
	.loc 2 91 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 92 0
	jmp	.L630
.L643:
	.loc 2 94 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 95 0
	jmp	.L630
.L642:
	.loc 2 97 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 98 0
	jmp	.L630
.L641:
	.loc 2 100 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 101 0
	jmp	.L630
.L639:
	.loc 2 103 0
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L630
	movl	-8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L630:
	.loc 2 108 0
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	testl	%eax, %eax
	je	.L704
	movl	-8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_feed@PLT
.L704:
	.loc 2 110 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE55:
	.size	gt_ggc_mx_feed, .-gt_ggc_mx_feed
.globl gt_ggc_mx_token_chunk
	.type	gt_ggc_mx_token_chunk, @function
gt_ggc_mx_token_chunk:
.LFB56:
	.loc 2 115 0
	pushl	%ebp
.LCFI166:
	movl	%esp, %ebp
.LCFI167:
	pushl	%ebx
.LCFI168:
	subl	$36, %esp
.LCFI169:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 116 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 2 117 0
	cmpl	$0, -16(%ebp)
	je	.L787
	cmpl	$1, -16(%ebp)
	je	.L787
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L787
	.loc 2 119 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L710
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_token_chunk@PLT
.L710:
.LBB24:
	.loc 2 122 0
	movl	$20, -8(%ebp)
	.loc 2 123 0
	movl	$0, -12(%ebp)
	jmp	.L712
.L713:
	.loc 2 124 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movzwl	4(%eax,%ecx), %eax
	cwtl
	subl	$258, %eax
	movl	%eax, -24(%ebp)
	cmpl	$118, -24(%ebp)
	ja	.L714
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	.L739@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L739:
	.long	.L715@GOTOFF
	.long	.L716@GOTOFF
	.long	.L717@GOTOFF
	.long	.L718@GOTOFF
	.long	.L719@GOTOFF
	.long	.L720@GOTOFF
	.long	.L721@GOTOFF
	.long	.L722@GOTOFF
	.long	.L723@GOTOFF
	.long	.L724@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L725@GOTOFF
	.long	.L726@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L727@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L728@GOTOFF
	.long	.L729@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L714@GOTOFF
	.long	.L730@GOTOFF
	.long	.L731@GOTOFF
	.long	.L732@GOTOFF
	.long	.L733@GOTOFF
	.long	.L734@GOTOFF
	.long	.L735@GOTOFF
	.long	.L736@GOTOFF
	.long	.L737@GOTOFF
	.long	.L738@GOTOFF
	.text
.L728:
	.loc 2 127 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 128 0
	jmp	.L714
.L738:
	.loc 2 130 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 131 0
	jmp	.L714
.L736:
	.loc 2 133 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 134 0
	jmp	.L714
.L737:
	.loc 2 136 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 137 0
	jmp	.L714
.L735:
	.loc 2 139 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_unparsed_text@PLT
	.loc 2 140 0
	jmp	.L714
.L734:
	.loc 2 142 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 143 0
	jmp	.L714
.L733:
	.loc 2 145 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 146 0
	jmp	.L714
.L732:
	.loc 2 148 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 149 0
	jmp	.L714
.L731:
	.loc 2 151 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 152 0
	jmp	.L714
.L730:
	.loc 2 154 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 155 0
	jmp	.L714
.L729:
	.loc 2 157 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 158 0
	jmp	.L714
.L721:
	.loc 2 160 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 161 0
	jmp	.L714
.L720:
	.loc 2 163 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 164 0
	jmp	.L714
.L719:
	.loc 2 166 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 167 0
	jmp	.L714
.L724:
	.loc 2 169 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 170 0
	jmp	.L714
.L717:
	.loc 2 172 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 173 0
	jmp	.L714
.L718:
	.loc 2 175 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 176 0
	jmp	.L714
.L722:
	.loc 2 178 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 179 0
	jmp	.L714
.L716:
	.loc 2 181 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 182 0
	jmp	.L714
.L715:
	.loc 2 184 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 185 0
	jmp	.L714
.L727:
	.loc 2 187 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 188 0
	jmp	.L714
.L726:
	.loc 2 190 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 191 0
	jmp	.L714
.L725:
	.loc 2 193 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
	.loc 2 194 0
	jmp	.L714
.L723:
	.loc 2 196 0
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L714
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$12, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L714:
	.loc 2 123 0
	addl	$1, -12(%ebp)
.L712:
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jb	.L713
.L787:
.LBE24:
	.loc 2 204 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE56:
	.size	gt_ggc_mx_token_chunk, .-gt_ggc_mx_token_chunk
.globl gt_ggc_mx_unparsed_text
	.type	gt_ggc_mx_unparsed_text, @function
gt_ggc_mx_unparsed_text:
.LFB57:
	.loc 2 209 0
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
	.loc 2 210 0
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 2 211 0
	cmpl	$0, -8(%ebp)
	je	.L802
	cmpl	$1, -8(%ebp)
	je	.L802
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	ggc_set_mark@PLT
	testl	%eax, %eax
	jne	.L802
	.loc 2 213 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L793
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_unparsed_text@PLT
.L793:
	.loc 2 214 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L795
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_lang_tree_node@PLT
.L795:
	.loc 2 215 0
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	.L797
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_token_chunk@PLT
.L797:
	.loc 2 216 0
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L799
	movl	-8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_token_chunk@PLT
.L799:
	.loc 2 217 0
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L802
	movl	-8(%ebp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	call	gt_ggc_mx_token_chunk@PLT
.L802:
	.loc 2 219 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE57:
	.size	gt_ggc_mx_unparsed_text, .-gt_ggc_mx_unparsed_text
.globl gt_ggc_r_gt_cp_spew_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cp_spew_h, @object
	.size	gt_ggc_r_gt_cp_spew_h, 144
gt_ggc_r_gt_cp_spew_h:
	.long	defarg_fnsdone
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	defarg_depfns
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	defarg_parm
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	defarg_fns
	.long	1
	.long	4
	.long	gt_ggc_mx_lang_tree_node
	.long	processing_these_inlines
	.long	1
	.long	4
	.long	gt_ggc_mx_unparsed_text
	.long	pending_inlines_tail
	.long	1
	.long	4
	.long	gt_ggc_mx_unparsed_text
	.long	pending_inlines
	.long	1
	.long	4
	.long	gt_ggc_mx_unparsed_text
	.long	feed
	.long	1
	.long	4
	.long	gt_ggc_mx_feed
	.long	0
	.long	0
	.long	0
	.long	0
	.local	feed
	.comm	feed,4,4
	.local	pending_inlines
	.comm	pending_inlines,4,4
	.local	pending_inlines_tail
	.comm	pending_inlines_tail,4,4
	.local	processing_these_inlines
	.comm	processing_these_inlines,4,4
	.local	last_token
	.comm	last_token,4,4
	.local	last_token_id
	.comm	last_token_id,4,4
	.local	token_obstack
	.comm	token_obstack,44,32
	.local	first_token
	.comm	first_token,4,4
	.local	defarg_fns
	.comm	defarg_fns,4,4
	.local	defarg_parm
	.comm	defarg_parm,4,4
	.local	defarg_depfns
	.comm	defarg_depfns,4,4
	.local	defarg_fnsdone
	.comm	defarg_fnsdone,4,4
	.local	after_friend
	.comm	after_friend,4,4
	.local	after_new
	.comm	after_new,4,4
	.local	do_snarf_defarg
	.comm	do_snarf_defarg,4,4
	.comm	looking_for_typename,4,4
	.comm	looking_for_template,4,4
	.comm	got_scope,4,4
	.comm	got_object,4,4
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI9
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI14-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI17-.LCFI15
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI18-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI25-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI30-.LCFI26
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI31-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI34-.LFB25
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI42-.LFB22
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.byte	0x4
	.long	.LCFI46-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI49-.LCFI47
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.byte	0x4
	.long	.LCFI50-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI53-.LCFI51
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.byte	0x4
	.long	.LCFI54-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI55
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
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
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI63-.LFB26
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
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
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
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI71-.LFB27
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
	.long	.LFB34
	.long	.LFE34-.LFB34
	.byte	0x4
	.long	.LCFI75-.LFB34
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
	.long	.LFB35
	.long	.LFE35-.LFB35
	.byte	0x4
	.long	.LCFI79-.LFB35
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI83-.LFB36
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
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI87-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI88-.LCFI87
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI90-.LCFI88
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
	.long	.LCFI91-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI92-.LCFI91
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI94-.LCFI92
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
	.long	.LCFI95-.LFB38
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
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI99-.LFB41
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
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.byte	0x4
	.long	.LCFI103-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI104-.LCFI103
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI106-.LCFI104
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI107-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI108-.LCFI107
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI111-.LCFI108
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
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI112-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI113-.LCFI112
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI115-.LCFI113
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI116-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI117-.LCFI116
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI119-.LCFI117
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
	.long	.LCFI120-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI121-.LCFI120
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI123-.LCFI121
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
	.long	.LCFI124-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI125-.LCFI124
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI127-.LCFI125
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
	.long	.LCFI128-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI129-.LCFI128
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
	.long	.LCFI133-.LCFI131
	.byte	0x83
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
	.long	.LCFI134-.LFB48
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
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.byte	0x4
	.long	.LCFI138-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI141-.LCFI139
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
	.long	.LCFI142-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI143-.LCFI142
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI145-.LCFI143
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
	.long	.LCFI146-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI147-.LCFI146
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI149-.LCFI147
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
	.long	.LCFI150-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI151-.LCFI150
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI153-.LCFI151
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
	.long	.LCFI154-.LFB53
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
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI158-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI159-.LCFI158
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI161-.LCFI159
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
	.long	.LCFI162-.LFB55
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
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI166-.LFB56
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
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.byte	0x4
	.long	.LCFI170-.LFB57
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
.LEFDE84:
	.file 3 "parse.h"
	.file 4 "../../../kg++fe/gnu/cp/parse.y"
	.file 5 "../../../kg++fe/gnu/MIPS/config.h"
	.file 6 "../../../kg++fe/gnu/tree.h"
	.file 7 "../../../kg++fe/gnu/hashtable.h"
	.file 8 "../../../kg++fe/gnu/location.h"
	.file 9 "../../../kg++fe/gnu/machmode.h"
	.file 10 "../../../kg++fe/gnu/function.h"
	.file 11 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 12 "../../../kg++fe/gnu/cp/cp-tree.h"
	.file 13 "../../../kg++fe/gnu/c-common.h"
	.file 14 "../../../kg++fe/gnu/varray.h"
	.file 15 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 16 "../../../kg++fe/omp_types.h"
	.file 17 "../../../kg++fe/gnu/cpplib.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "../../../include/gnu/obstack.h"
	.file 20 "../../../include/gnu/safe-ctype.h"
	.file 21 "../../../kg++fe/gnu/c-pragma.h"
	.file 22 "../../../kg++fe/gnu/ggc.h"
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
.LLST2:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB19-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI15-.Ltext0
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB16-.Ltext0
	.long	.LCFI18-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI18-.Ltext0
	.long	.LCFI19-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI19-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
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
.LLST6:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB23-.Ltext0
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
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
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
	.long	.LFB22-.Ltext0
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
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB31-.Ltext0
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
	.long	.LFE31-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB29-.Ltext0
	.long	.LCFI50-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI50-.Ltext0
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI51-.Ltext0
	.long	.LFE29-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB32-.Ltext0
	.long	.LCFI54-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI54-.Ltext0
	.long	.LCFI55-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI55-.Ltext0
	.long	.LFE32-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
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
.LLST15:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
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
.LLST17:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB34-.Ltext0
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
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB37-.Ltext0
	.long	.LCFI91-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI91-.Ltext0
	.long	.LCFI92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI92-.Ltext0
	.long	.LFE37-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB38-.Ltext0
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
	.long	.LFE38-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB39-.Ltext0
	.long	.LCFI107-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI107-.Ltext0
	.long	.LCFI108-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI108-.Ltext0
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB43-.Ltext0
	.long	.LCFI112-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI112-.Ltext0
	.long	.LCFI113-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI113-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB40-.Ltext0
	.long	.LCFI116-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI116-.Ltext0
	.long	.LCFI117-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI117-.Ltext0
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
	.long	.LCFI124-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI124-.Ltext0
	.long	.LCFI125-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI125-.Ltext0
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LFB46-.Ltext0
	.long	.LCFI128-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI128-.Ltext0
	.long	.LCFI129-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI129-.Ltext0
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
	.long	.LFE48-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LFB49-.Ltext0
	.long	.LCFI138-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI138-.Ltext0
	.long	.LCFI139-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI139-.Ltext0
	.long	.LFE49-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LFB50-.Ltext0
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
	.long	.LFE50-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LFB51-.Ltext0
	.long	.LCFI146-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI146-.Ltext0
	.long	.LCFI147-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI147-.Ltext0
	.long	.LFE51-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LFB52-.Ltext0
	.long	.LCFI150-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI150-.Ltext0
	.long	.LCFI151-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI151-.Ltext0
	.long	.LFE52-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LFB53-.Ltext0
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
	.long	.LFE53-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LFB55-.Ltext0
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
	.long	.LFE55-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LFB57-.Ltext0
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
	.long	.LFE57-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x8dc0
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/spew.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x10
	.long	0xe2
	.uleb128 0x3
	.byte	0x4
	.long	0xe8
	.uleb128 0x5
	.long	0x1c0
	.string	"tree_node"
	.byte	0xa0
	.byte	0x5
	.byte	0xf
	.uleb128 0x6
	.long	.LASF0
	.byte	0x6
	.value	0x887
	.long	0x2ce2
	.uleb128 0x7
	.string	"int_cst"
	.byte	0x6
	.value	0x888
	.long	0x3000
	.uleb128 0x7
	.string	"real_cst"
	.byte	0x6
	.value	0x889
	.long	0x3048
	.uleb128 0x7
	.string	"vector"
	.byte	0x6
	.value	0x88a
	.long	0x316b
	.uleb128 0x7
	.string	"string"
	.byte	0x6
	.value	0x88b
	.long	0x30a9
	.uleb128 0x7
	.string	"complex"
	.byte	0x6
	.value	0x88c
	.long	0x3116
	.uleb128 0x7
	.string	"identifier"
	.byte	0x6
	.value	0x88d
	.long	0x33a5
	.uleb128 0x6
	.long	.LASF1
	.byte	0x6
	.value	0x88e
	.long	0x4422
	.uleb128 0x6
	.long	.LASF2
	.byte	0x6
	.value	0x88f
	.long	0x360a
	.uleb128 0x7
	.string	"list"
	.byte	0x6
	.value	0x890
	.long	0x33dc
	.uleb128 0x7
	.string	"vec"
	.byte	0x6
	.value	0x891
	.long	0x3423
	.uleb128 0x7
	.string	"exp"
	.byte	0x6
	.value	0x892
	.long	0x3474
	.uleb128 0x7
	.string	"block"
	.byte	0x6
	.value	0x893
	.long	0x34c0
	.uleb128 0x7
	.string	"omp"
	.byte	0x6
	.value	0x895
	.long	0x575c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1c6
	.uleb128 0x8
	.long	0x1cb
	.uleb128 0x9
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xa
	.long	0x2ac
	.string	"mips_args"
	.byte	0x40
	.byte	0xb
	.value	0xaaa
	.uleb128 0xb
	.string	"gp_reg_found"
	.byte	0xb
	.value	0xaad
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"arg_number"
	.byte	0xb
	.value	0xab0
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"num_gprs"
	.byte	0xb
	.value	0xab5
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"num_fprs"
	.byte	0xb
	.value	0xab8
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"stack_words"
	.byte	0xb
	.value	0xabb
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"fp_code"
	.byte	0xb
	.value	0xac8
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"prototype"
	.byte	0xb
	.value	0xacb
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"num_adjusts"
	.byte	0xb
	.value	0xad3
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"adjust"
	.byte	0xb
	.value	0xad4
	.long	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xc
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x2c3
	.long	0x9c
	.uleb128 0xe
	.long	0x2c3
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.long	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.string	"CUMULATIVE_ARGS"
	.byte	0xb
	.value	0xad5
	.long	0x1da
	.uleb128 0x2
	.string	"size_t"
	.byte	0xf
	.byte	0xd6
	.long	0x2ac
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
	.long	0x1cb
	.uleb128 0xd
	.long	0x397
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x39d
	.uleb128 0x8
	.long	0x2f0
	.uleb128 0x3
	.byte	0x4
	.long	0x2f0
	.uleb128 0x3
	.byte	0x4
	.long	0x3ae
	.uleb128 0x11
	.long	0x3ba
	.byte	0x1
	.uleb128 0x12
	.long	0x37f
	.byte	0x0
	.uleb128 0xd
	.long	0x3ca
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x3da
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.long	0x623
	.string	"machine_mode"
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.uleb128 0x14
	.string	"VOIDmode"
	.sleb128 0
	.uleb128 0x14
	.string	"BImode"
	.sleb128 1
	.uleb128 0x14
	.string	"QImode"
	.sleb128 2
	.uleb128 0x14
	.string	"HImode"
	.sleb128 3
	.uleb128 0x14
	.string	"SImode"
	.sleb128 4
	.uleb128 0x14
	.string	"DImode"
	.sleb128 5
	.uleb128 0x14
	.string	"TImode"
	.sleb128 6
	.uleb128 0x14
	.string	"OImode"
	.sleb128 7
	.uleb128 0x14
	.string	"PQImode"
	.sleb128 8
	.uleb128 0x14
	.string	"PHImode"
	.sleb128 9
	.uleb128 0x14
	.string	"PSImode"
	.sleb128 10
	.uleb128 0x14
	.string	"PDImode"
	.sleb128 11
	.uleb128 0x14
	.string	"QFmode"
	.sleb128 12
	.uleb128 0x14
	.string	"HFmode"
	.sleb128 13
	.uleb128 0x14
	.string	"TQFmode"
	.sleb128 14
	.uleb128 0x14
	.string	"SFmode"
	.sleb128 15
	.uleb128 0x14
	.string	"DFmode"
	.sleb128 16
	.uleb128 0x14
	.string	"XFmode"
	.sleb128 17
	.uleb128 0x14
	.string	"TFmode"
	.sleb128 18
	.uleb128 0x14
	.string	"QCmode"
	.sleb128 19
	.uleb128 0x14
	.string	"HCmode"
	.sleb128 20
	.uleb128 0x14
	.string	"SCmode"
	.sleb128 21
	.uleb128 0x14
	.string	"DCmode"
	.sleb128 22
	.uleb128 0x14
	.string	"XCmode"
	.sleb128 23
	.uleb128 0x14
	.string	"TCmode"
	.sleb128 24
	.uleb128 0x14
	.string	"CQImode"
	.sleb128 25
	.uleb128 0x14
	.string	"CHImode"
	.sleb128 26
	.uleb128 0x14
	.string	"CSImode"
	.sleb128 27
	.uleb128 0x14
	.string	"CDImode"
	.sleb128 28
	.uleb128 0x14
	.string	"CTImode"
	.sleb128 29
	.uleb128 0x14
	.string	"COImode"
	.sleb128 30
	.uleb128 0x14
	.string	"V1DImode"
	.sleb128 31
	.uleb128 0x14
	.string	"V2QImode"
	.sleb128 32
	.uleb128 0x14
	.string	"V2HImode"
	.sleb128 33
	.uleb128 0x14
	.string	"V2SImode"
	.sleb128 34
	.uleb128 0x14
	.string	"V2DImode"
	.sleb128 35
	.uleb128 0x14
	.string	"V4QImode"
	.sleb128 36
	.uleb128 0x14
	.string	"V4HImode"
	.sleb128 37
	.uleb128 0x14
	.string	"V4SImode"
	.sleb128 38
	.uleb128 0x14
	.string	"V4DImode"
	.sleb128 39
	.uleb128 0x14
	.string	"V8QImode"
	.sleb128 40
	.uleb128 0x14
	.string	"V8HImode"
	.sleb128 41
	.uleb128 0x14
	.string	"V8SImode"
	.sleb128 42
	.uleb128 0x14
	.string	"V8DImode"
	.sleb128 43
	.uleb128 0x14
	.string	"V16QImode"
	.sleb128 44
	.uleb128 0x14
	.string	"V2SFmode"
	.sleb128 45
	.uleb128 0x14
	.string	"V2DFmode"
	.sleb128 46
	.uleb128 0x14
	.string	"V4SFmode"
	.sleb128 47
	.uleb128 0x14
	.string	"V4DFmode"
	.sleb128 48
	.uleb128 0x14
	.string	"V8SFmode"
	.sleb128 49
	.uleb128 0x14
	.string	"V8DFmode"
	.sleb128 50
	.uleb128 0x14
	.string	"V16SFmode"
	.sleb128 51
	.uleb128 0x14
	.string	"BLKmode"
	.sleb128 52
	.uleb128 0x14
	.string	"CCmode"
	.sleb128 53
	.uleb128 0x14
	.string	"MAX_MACHINE_MODE"
	.sleb128 54
	.byte	0x0
	.uleb128 0x15
	.long	0x655
	.string	"location_s"
	.byte	0x8
	.byte	0x8
	.byte	0x1c
	.uleb128 0x16
	.string	"file"
	.byte	0x8
	.byte	0x1e
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"line"
	.byte	0x8
	.byte	0x21
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"location_t"
	.byte	0x8
	.byte	0x23
	.long	0x623
	.uleb128 0x13
	.long	0xf89
	.string	"tree_code"
	.byte	0x4
	.byte	0x6
	.byte	0x25
	.uleb128 0x14
	.string	"ERROR_MARK"
	.sleb128 0
	.uleb128 0x14
	.string	"IDENTIFIER_NODE"
	.sleb128 1
	.uleb128 0x14
	.string	"OP_IDENTIFIER"
	.sleb128 2
	.uleb128 0x14
	.string	"TREE_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"TREE_VEC"
	.sleb128 4
	.uleb128 0x14
	.string	"BLOCK"
	.sleb128 5
	.uleb128 0x14
	.string	"VOID_TYPE"
	.sleb128 6
	.uleb128 0x14
	.string	"INTEGER_TYPE"
	.sleb128 7
	.uleb128 0x14
	.string	"REAL_TYPE"
	.sleb128 8
	.uleb128 0x14
	.string	"COMPLEX_TYPE"
	.sleb128 9
	.uleb128 0x14
	.string	"VECTOR_TYPE"
	.sleb128 10
	.uleb128 0x14
	.string	"ENUMERAL_TYPE"
	.sleb128 11
	.uleb128 0x14
	.string	"BOOLEAN_TYPE"
	.sleb128 12
	.uleb128 0x14
	.string	"CHAR_TYPE"
	.sleb128 13
	.uleb128 0x14
	.string	"POINTER_TYPE"
	.sleb128 14
	.uleb128 0x14
	.string	"OFFSET_TYPE"
	.sleb128 15
	.uleb128 0x14
	.string	"REFERENCE_TYPE"
	.sleb128 16
	.uleb128 0x14
	.string	"METHOD_TYPE"
	.sleb128 17
	.uleb128 0x14
	.string	"FILE_TYPE"
	.sleb128 18
	.uleb128 0x14
	.string	"ARRAY_TYPE"
	.sleb128 19
	.uleb128 0x14
	.string	"SET_TYPE"
	.sleb128 20
	.uleb128 0x14
	.string	"RECORD_TYPE"
	.sleb128 21
	.uleb128 0x14
	.string	"UNION_TYPE"
	.sleb128 22
	.uleb128 0x14
	.string	"QUAL_UNION_TYPE"
	.sleb128 23
	.uleb128 0x14
	.string	"FUNCTION_TYPE"
	.sleb128 24
	.uleb128 0x14
	.string	"LANG_TYPE"
	.sleb128 25
	.uleb128 0x14
	.string	"INTEGER_CST"
	.sleb128 26
	.uleb128 0x14
	.string	"REAL_CST"
	.sleb128 27
	.uleb128 0x14
	.string	"COMPLEX_CST"
	.sleb128 28
	.uleb128 0x14
	.string	"VECTOR_CST"
	.sleb128 29
	.uleb128 0x14
	.string	"STRING_CST"
	.sleb128 30
	.uleb128 0x14
	.string	"FUNCTION_DECL"
	.sleb128 31
	.uleb128 0x14
	.string	"LABEL_DECL"
	.sleb128 32
	.uleb128 0x14
	.string	"CONST_DECL"
	.sleb128 33
	.uleb128 0x14
	.string	"TYPE_DECL"
	.sleb128 34
	.uleb128 0x14
	.string	"VAR_DECL"
	.sleb128 35
	.uleb128 0x14
	.string	"PARM_DECL"
	.sleb128 36
	.uleb128 0x14
	.string	"RESULT_DECL"
	.sleb128 37
	.uleb128 0x14
	.string	"FIELD_DECL"
	.sleb128 38
	.uleb128 0x14
	.string	"NAMESPACE_DECL"
	.sleb128 39
	.uleb128 0x14
	.string	"COMPONENT_REF"
	.sleb128 40
	.uleb128 0x14
	.string	"BIT_FIELD_REF"
	.sleb128 41
	.uleb128 0x14
	.string	"INDIRECT_REF"
	.sleb128 42
	.uleb128 0x14
	.string	"BUFFER_REF"
	.sleb128 43
	.uleb128 0x14
	.string	"ARRAY_REF"
	.sleb128 44
	.uleb128 0x14
	.string	"ARRAY_RANGE_REF"
	.sleb128 45
	.uleb128 0x14
	.string	"VTABLE_REF"
	.sleb128 46
	.uleb128 0x14
	.string	"CONSTRUCTOR"
	.sleb128 47
	.uleb128 0x14
	.string	"COMPOUND_EXPR"
	.sleb128 48
	.uleb128 0x14
	.string	"MODIFY_EXPR"
	.sleb128 49
	.uleb128 0x14
	.string	"INIT_EXPR"
	.sleb128 50
	.uleb128 0x14
	.string	"TARGET_EXPR"
	.sleb128 51
	.uleb128 0x14
	.string	"COND_EXPR"
	.sleb128 52
	.uleb128 0x14
	.string	"BIND_EXPR"
	.sleb128 53
	.uleb128 0x14
	.string	"CALL_EXPR"
	.sleb128 54
	.uleb128 0x14
	.string	"METHOD_CALL_EXPR"
	.sleb128 55
	.uleb128 0x14
	.string	"WITH_CLEANUP_EXPR"
	.sleb128 56
	.uleb128 0x14
	.string	"CLEANUP_POINT_EXPR"
	.sleb128 57
	.uleb128 0x14
	.string	"PLACEHOLDER_EXPR"
	.sleb128 58
	.uleb128 0x14
	.string	"WITH_RECORD_EXPR"
	.sleb128 59
	.uleb128 0x14
	.string	"PLUS_EXPR"
	.sleb128 60
	.uleb128 0x14
	.string	"MINUS_EXPR"
	.sleb128 61
	.uleb128 0x14
	.string	"MULT_EXPR"
	.sleb128 62
	.uleb128 0x14
	.string	"TRUNC_DIV_EXPR"
	.sleb128 63
	.uleb128 0x14
	.string	"CEIL_DIV_EXPR"
	.sleb128 64
	.uleb128 0x14
	.string	"FLOOR_DIV_EXPR"
	.sleb128 65
	.uleb128 0x14
	.string	"ROUND_DIV_EXPR"
	.sleb128 66
	.uleb128 0x14
	.string	"TRUNC_MOD_EXPR"
	.sleb128 67
	.uleb128 0x14
	.string	"CEIL_MOD_EXPR"
	.sleb128 68
	.uleb128 0x14
	.string	"FLOOR_MOD_EXPR"
	.sleb128 69
	.uleb128 0x14
	.string	"ROUND_MOD_EXPR"
	.sleb128 70
	.uleb128 0x14
	.string	"RDIV_EXPR"
	.sleb128 71
	.uleb128 0x14
	.string	"EXACT_DIV_EXPR"
	.sleb128 72
	.uleb128 0x14
	.string	"FIX_TRUNC_EXPR"
	.sleb128 73
	.uleb128 0x14
	.string	"FIX_CEIL_EXPR"
	.sleb128 74
	.uleb128 0x14
	.string	"FIX_FLOOR_EXPR"
	.sleb128 75
	.uleb128 0x14
	.string	"FIX_ROUND_EXPR"
	.sleb128 76
	.uleb128 0x14
	.string	"FLOAT_EXPR"
	.sleb128 77
	.uleb128 0x14
	.string	"EXPON_EXPR"
	.sleb128 78
	.uleb128 0x14
	.string	"NEGATE_EXPR"
	.sleb128 79
	.uleb128 0x14
	.string	"MIN_EXPR"
	.sleb128 80
	.uleb128 0x14
	.string	"MAX_EXPR"
	.sleb128 81
	.uleb128 0x14
	.string	"ABS_EXPR"
	.sleb128 82
	.uleb128 0x14
	.string	"FFS_EXPR"
	.sleb128 83
	.uleb128 0x14
	.string	"LSHIFT_EXPR"
	.sleb128 84
	.uleb128 0x14
	.string	"RSHIFT_EXPR"
	.sleb128 85
	.uleb128 0x14
	.string	"LROTATE_EXPR"
	.sleb128 86
	.uleb128 0x14
	.string	"RROTATE_EXPR"
	.sleb128 87
	.uleb128 0x14
	.string	"BIT_IOR_EXPR"
	.sleb128 88
	.uleb128 0x14
	.string	"BIT_XOR_EXPR"
	.sleb128 89
	.uleb128 0x14
	.string	"BIT_AND_EXPR"
	.sleb128 90
	.uleb128 0x14
	.string	"BIT_ANDTC_EXPR"
	.sleb128 91
	.uleb128 0x14
	.string	"BIT_NOT_EXPR"
	.sleb128 92
	.uleb128 0x14
	.string	"TRUTH_ANDIF_EXPR"
	.sleb128 93
	.uleb128 0x14
	.string	"TRUTH_ORIF_EXPR"
	.sleb128 94
	.uleb128 0x14
	.string	"TRUTH_AND_EXPR"
	.sleb128 95
	.uleb128 0x14
	.string	"TRUTH_OR_EXPR"
	.sleb128 96
	.uleb128 0x14
	.string	"TRUTH_XOR_EXPR"
	.sleb128 97
	.uleb128 0x14
	.string	"TRUTH_NOT_EXPR"
	.sleb128 98
	.uleb128 0x14
	.string	"LT_EXPR"
	.sleb128 99
	.uleb128 0x14
	.string	"LE_EXPR"
	.sleb128 100
	.uleb128 0x14
	.string	"GT_EXPR"
	.sleb128 101
	.uleb128 0x14
	.string	"GE_EXPR"
	.sleb128 102
	.uleb128 0x14
	.string	"EQ_EXPR"
	.sleb128 103
	.uleb128 0x14
	.string	"NE_EXPR"
	.sleb128 104
	.uleb128 0x14
	.string	"UNORDERED_EXPR"
	.sleb128 105
	.uleb128 0x14
	.string	"ORDERED_EXPR"
	.sleb128 106
	.uleb128 0x14
	.string	"UNLT_EXPR"
	.sleb128 107
	.uleb128 0x14
	.string	"UNLE_EXPR"
	.sleb128 108
	.uleb128 0x14
	.string	"UNGT_EXPR"
	.sleb128 109
	.uleb128 0x14
	.string	"UNGE_EXPR"
	.sleb128 110
	.uleb128 0x14
	.string	"UNEQ_EXPR"
	.sleb128 111
	.uleb128 0x14
	.string	"IN_EXPR"
	.sleb128 112
	.uleb128 0x14
	.string	"SET_LE_EXPR"
	.sleb128 113
	.uleb128 0x14
	.string	"CARD_EXPR"
	.sleb128 114
	.uleb128 0x14
	.string	"RANGE_EXPR"
	.sleb128 115
	.uleb128 0x14
	.string	"CONVERT_EXPR"
	.sleb128 116
	.uleb128 0x14
	.string	"NOP_EXPR"
	.sleb128 117
	.uleb128 0x14
	.string	"NON_LVALUE_EXPR"
	.sleb128 118
	.uleb128 0x14
	.string	"VIEW_CONVERT_EXPR"
	.sleb128 119
	.uleb128 0x14
	.string	"SAVE_EXPR"
	.sleb128 120
	.uleb128 0x14
	.string	"UNSAVE_EXPR"
	.sleb128 121
	.uleb128 0x14
	.string	"RTL_EXPR"
	.sleb128 122
	.uleb128 0x14
	.string	"ADDR_EXPR"
	.sleb128 123
	.uleb128 0x14
	.string	"REFERENCE_EXPR"
	.sleb128 124
	.uleb128 0x14
	.string	"ENTRY_VALUE_EXPR"
	.sleb128 125
	.uleb128 0x14
	.string	"FDESC_EXPR"
	.sleb128 126
	.uleb128 0x14
	.string	"COMPLEX_EXPR"
	.sleb128 127
	.uleb128 0x14
	.string	"CONJ_EXPR"
	.sleb128 128
	.uleb128 0x14
	.string	"REALPART_EXPR"
	.sleb128 129
	.uleb128 0x14
	.string	"IMAGPART_EXPR"
	.sleb128 130
	.uleb128 0x14
	.string	"PREDECREMENT_EXPR"
	.sleb128 131
	.uleb128 0x14
	.string	"PREINCREMENT_EXPR"
	.sleb128 132
	.uleb128 0x14
	.string	"POSTDECREMENT_EXPR"
	.sleb128 133
	.uleb128 0x14
	.string	"POSTINCREMENT_EXPR"
	.sleb128 134
	.uleb128 0x14
	.string	"VA_ARG_EXPR"
	.sleb128 135
	.uleb128 0x14
	.string	"TRY_CATCH_EXPR"
	.sleb128 136
	.uleb128 0x14
	.string	"TRY_FINALLY_EXPR"
	.sleb128 137
	.uleb128 0x14
	.string	"GOTO_SUBROUTINE_EXPR"
	.sleb128 138
	.uleb128 0x14
	.string	"POPDHC_EXPR"
	.sleb128 139
	.uleb128 0x14
	.string	"POPDCC_EXPR"
	.sleb128 140
	.uleb128 0x14
	.string	"LABEL_EXPR"
	.sleb128 141
	.uleb128 0x14
	.string	"GOTO_EXPR"
	.sleb128 142
	.uleb128 0x14
	.string	"RETURN_EXPR"
	.sleb128 143
	.uleb128 0x14
	.string	"EXIT_EXPR"
	.sleb128 144
	.uleb128 0x14
	.string	"LOOP_EXPR"
	.sleb128 145
	.uleb128 0x14
	.string	"LABELED_BLOCK_EXPR"
	.sleb128 146
	.uleb128 0x14
	.string	"EXIT_BLOCK_EXPR"
	.sleb128 147
	.uleb128 0x14
	.string	"EXPR_WITH_FILE_LOCATION"
	.sleb128 148
	.uleb128 0x14
	.string	"SWITCH_EXPR"
	.sleb128 149
	.uleb128 0x14
	.string	"EXC_PTR_EXPR"
	.sleb128 150
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_TREE_CODE"
	.sleb128 151
	.byte	0x0
	.uleb128 0x2
	.string	"LABEL_IDX"
	.byte	0x6
	.byte	0x2f
	.long	0x2ac
	.uleb128 0x15
	.long	0xfd9
	.string	"mongoose_gcc_DST_IDX"
	.byte	0x8
	.byte	0x6
	.byte	0x30
	.uleb128 0x16
	.string	"block"
	.byte	0x6
	.byte	0x30
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"offset"
	.byte	0x6
	.byte	0x30
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"ST"
	.byte	0x6
	.byte	0x34
	.long	0xfe3
	.uleb128 0x4
	.string	"st"
	.byte	0x1
	.uleb128 0x17
	.long	0x1038
	.long	.LASF4
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uleb128 0x14
	.string	"NOT_BUILT_IN"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_FRONTEND"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_MD"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_NORMAL"
	.sleb128 3
	.byte	0x0
	.uleb128 0x13
	.long	0x2ce2
	.string	"built_in_function"
	.byte	0x4
	.byte	0x6
	.byte	0x67
	.uleb128 0x14
	.string	"BUILT_IN_ALLOCA"
	.sleb128 0
	.uleb128 0x14
	.string	"BUILT_IN_ABS"
	.sleb128 1
	.uleb128 0x14
	.string	"BUILT_IN_LABS"
	.sleb128 2
	.uleb128 0x14
	.string	"BUILT_IN_FABS"
	.sleb128 3
	.uleb128 0x14
	.string	"BUILT_IN_FABSF"
	.sleb128 4
	.uleb128 0x14
	.string	"BUILT_IN_FABSL"
	.sleb128 5
	.uleb128 0x14
	.string	"BUILT_IN_LLABS"
	.sleb128 6
	.uleb128 0x14
	.string	"BUILT_IN_IMAXABS"
	.sleb128 7
	.uleb128 0x14
	.string	"BUILT_IN_CONJ"
	.sleb128 8
	.uleb128 0x14
	.string	"BUILT_IN_CONJF"
	.sleb128 9
	.uleb128 0x14
	.string	"BUILT_IN_CONJL"
	.sleb128 10
	.uleb128 0x14
	.string	"BUILT_IN_CREAL"
	.sleb128 11
	.uleb128 0x14
	.string	"BUILT_IN_CREALF"
	.sleb128 12
	.uleb128 0x14
	.string	"BUILT_IN_CREALL"
	.sleb128 13
	.uleb128 0x14
	.string	"BUILT_IN_CIMAG"
	.sleb128 14
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGF"
	.sleb128 15
	.uleb128 0x14
	.string	"BUILT_IN_CIMAGL"
	.sleb128 16
	.uleb128 0x14
	.string	"BUILT_IN_DIV"
	.sleb128 17
	.uleb128 0x14
	.string	"BUILT_IN_LDIV"
	.sleb128 18
	.uleb128 0x14
	.string	"BUILT_IN_FFLOOR"
	.sleb128 19
	.uleb128 0x14
	.string	"BUILT_IN_FCEIL"
	.sleb128 20
	.uleb128 0x14
	.string	"BUILT_IN_FMOD"
	.sleb128 21
	.uleb128 0x14
	.string	"BUILT_IN_FREM"
	.sleb128 22
	.uleb128 0x14
	.string	"BUILT_IN_BZERO"
	.sleb128 23
	.uleb128 0x14
	.string	"BUILT_IN_BCOPY"
	.sleb128 24
	.uleb128 0x14
	.string	"BUILT_IN_BCMP"
	.sleb128 25
	.uleb128 0x14
	.string	"BUILT_IN_FFS"
	.sleb128 26
	.uleb128 0x14
	.string	"BUILT_IN_INDEX"
	.sleb128 27
	.uleb128 0x14
	.string	"BUILT_IN_RINDEX"
	.sleb128 28
	.uleb128 0x14
	.string	"BUILT_IN_MEMCPY"
	.sleb128 29
	.uleb128 0x14
	.string	"BUILT_IN_MEMMOVE"
	.sleb128 30
	.uleb128 0x14
	.string	"BUILT_IN_MEMCMP"
	.sleb128 31
	.uleb128 0x14
	.string	"BUILT_IN_MEMSET"
	.sleb128 32
	.uleb128 0x14
	.string	"BUILT_IN_MEMPCPY"
	.sleb128 33
	.uleb128 0x14
	.string	"BUILT_IN_STRCAT"
	.sleb128 34
	.uleb128 0x14
	.string	"BUILT_IN_STRNCAT"
	.sleb128 35
	.uleb128 0x14
	.string	"BUILT_IN_STPCPY"
	.sleb128 36
	.uleb128 0x14
	.string	"BUILT_IN_STRCPY"
	.sleb128 37
	.uleb128 0x14
	.string	"BUILT_IN_STRNCPY"
	.sleb128 38
	.uleb128 0x14
	.string	"BUILT_IN_STRCMP"
	.sleb128 39
	.uleb128 0x14
	.string	"BUILT_IN_STRNCMP"
	.sleb128 40
	.uleb128 0x14
	.string	"BUILT_IN_STRLEN"
	.sleb128 41
	.uleb128 0x14
	.string	"BUILT_IN_STRSTR"
	.sleb128 42
	.uleb128 0x14
	.string	"BUILT_IN_STRPBRK"
	.sleb128 43
	.uleb128 0x14
	.string	"BUILT_IN_STRSPN"
	.sleb128 44
	.uleb128 0x14
	.string	"BUILT_IN_STRCSPN"
	.sleb128 45
	.uleb128 0x14
	.string	"BUILT_IN_STRCHR"
	.sleb128 46
	.uleb128 0x14
	.string	"BUILT_IN_STRRCHR"
	.sleb128 47
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_LOW"
	.sleb128 48
	.uleb128 0x14
	.string	"BUILT_IN_CVT64_HIGH"
	.sleb128 49
	.uleb128 0x14
	.string	"BUILT_IN_CVT32"
	.sleb128 50
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_BEGIN"
	.sleb128 51
	.uleb128 0x14
	.string	"BUILT_IN_PERIPHERAL_RW_END"
	.sleb128 52
	.uleb128 0x14
	.string	"BUILT_IN_VBUF_OFFSET"
	.sleb128 53
	.uleb128 0x14
	.string	"BUILT_IN_SBUF_OFFSET"
	.sleb128 54
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT_HI"
	.sleb128 55
	.uleb128 0x14
	.string	"BUILD_IN_MUL_SHIFT"
	.sleb128 56
	.uleb128 0x14
	.string	"BUILD_IN_C3_LEAD"
	.sleb128 57
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC"
	.sleb128 58
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN"
	.sleb128 59
	.uleb128 0x14
	.string	"BUILD_IN_C3_ROUND"
	.sleb128 60
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDS"
	.sleb128 61
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBS"
	.sleb128 62
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA"
	.sleb128 63
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ACC"
	.sleb128 64
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ACC"
	.sleb128 65
	.uleb128 0x14
	.string	"BUILD_IN_MPY_32_16"
	.sleb128 66
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACD"
	.sleb128 67
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULAD"
	.sleb128 68
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDSH"
	.sleb128 69
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBSH"
	.sleb128 70
	.uleb128 0x14
	.string	"BUILD_IN_C3_MVFS"
	.sleb128 71
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_ADDR"
	.sleb128 72
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_ADDR"
	.sleb128 73
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_A"
	.sleb128 74
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_A"
	.sleb128 75
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC_A"
	.sleb128 76
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN_A"
	.sleb128 77
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_DACC"
	.sleb128 78
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAVE_DACC"
	.sleb128 79
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDH_A"
	.sleb128 80
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUBH_A"
	.sleb128 81
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULSH"
	.sleb128 82
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_A"
	.sleb128 83
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAMULH_A"
	.sleb128 84
	.uleb128 0x14
	.string	"BUILD_IN_C3_PTR"
	.sleb128 85
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_AR"
	.sleb128 86
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_AR"
	.sleb128 87
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_AR"
	.sleb128 88
	.uleb128 0x14
	.string	"BUILD_IN_C3_INIT_PTR"
	.sleb128 89
	.uleb128 0x14
	.string	"BUILD_IN_C3_TRBACK"
	.sleb128 90
	.uleb128 0x14
	.string	"BUILD_IN_C3_VITERBI"
	.sleb128 91
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT"
	.sleb128 92
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULT_A"
	.sleb128 93
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN"
	.sleb128 94
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMULTN_A"
	.sleb128 95
	.uleb128 0x14
	.string	"BUILD_IN_SET_CIRCBUF"
	.sleb128 96
	.uleb128 0x14
	.string	"BUILD_IN_RESET_CIRCBUF"
	.sleb128 97
	.uleb128 0x14
	.string	"BUILD_IN_C3_DADD"
	.sleb128 98
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSUB"
	.sleb128 99
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFT"
	.sleb128 100
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTLD"
	.sleb128 101
	.uleb128 0x14
	.string	"BUILD_IN_C3_FFTST"
	.sleb128 102
	.uleb128 0x14
	.string	"BUILD_IN_DEPOSIT"
	.sleb128 103
	.uleb128 0x14
	.string	"BUILD_IN_EXTRACT"
	.sleb128 104
	.uleb128 0x14
	.string	"BUILD_IN_C3_BITR"
	.sleb128 105
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMAC"
	.sleb128 106
	.uleb128 0x14
	.string	"BUILD_IN_C3_DMACN"
	.sleb128 107
	.uleb128 0x14
	.string	"BUILD_IN_C3_LOAD"
	.sleb128 108
	.uleb128 0x14
	.string	"BUILD_IN_C3_STORE"
	.sleb128 109
	.uleb128 0x14
	.string	"BUILD_IN_C3_REVB"
	.sleb128 110
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHL_I"
	.sleb128 111
	.uleb128 0x14
	.string	"BUILD_IN_C3_DSHR_I"
	.sleb128 112
	.uleb128 0x14
	.string	"BUILD_IN_C3_MAC_I"
	.sleb128 113
	.uleb128 0x14
	.string	"BUILD_IN_C3_MACN_I"
	.sleb128 114
	.uleb128 0x14
	.string	"BUILD_IN_C3_MULA_I"
	.sleb128 115
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADD_A"
	.sleb128 116
	.uleb128 0x14
	.string	"BUILD_IN_C3_SADDHA"
	.sleb128 117
	.uleb128 0x14
	.string	"BUILD_IN_C3_SAADDHA_A"
	.sleb128 118
	.uleb128 0x14
	.string	"BUILD_IN_C3_SASUB_A"
	.sleb128 119
	.uleb128 0x14
	.string	"BUILD_IN_COPY_ADDR"
	.sleb128 120
	.uleb128 0x14
	.string	"BUILD_IN_SET_ADDR"
	.sleb128 121
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2R"
	.sleb128 122
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2G"
	.sleb128 123
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_G2S"
	.sleb128 124
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_S2G"
	.sleb128 125
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_C2G"
	.sleb128 126
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGC_G2C"
	.sleb128 127
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V"
	.sleb128 128
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G"
	.sleb128 129
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_S"
	.sleb128 130
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V"
	.sleb128 131
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G"
	.sleb128 132
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_G_IMM"
	.sleb128 133
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_C_IMM"
	.sleb128 134
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V_IMM"
	.sleb128 135
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_V_IMM"
	.sleb128 136
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_C_IMM"
	.sleb128 137
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G_IMM"
	.sleb128 138
	.uleb128 0x14
	.string	"BUILT_IN_C2_VADDS"
	.sleb128 139
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSUBS"
	.sleb128 140
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMUL"
	.sleb128 141
	.uleb128 0x14
	.string	"BUILT_IN_C2_VNEG"
	.sleb128 142
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSHFT"
	.sleb128 143
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLP"
	.sleb128 144
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCLG"
	.sleb128 145
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMOV"
	.sleb128 146
	.uleb128 0x14
	.string	"BUILT_IN_C2_LCZERO"
	.sleb128 147
	.uleb128 0x14
	.string	"BUILT_IN_C2_VRND"
	.sleb128 148
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPAS"
	.sleb128 149
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL"
	.sleb128 150
	.uleb128 0x14
	.string	"BUILT_IN_C2_VSPEL_MAC"
	.sleb128 151
	.uleb128 0x14
	.string	"BUILT_IN_C2_MMUL"
	.sleb128 152
	.uleb128 0x14
	.string	"BUILT_IN_C2_VMOV"
	.sleb128 153
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCOPY"
	.sleb128 154
	.uleb128 0x14
	.string	"BUILT_IN_C2_VCMPR"
	.sleb128 155
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD"
	.sleb128 156
	.uleb128 0x14
	.string	"BUILT_IN_C2_SAD_TMP"
	.sleb128 157
	.uleb128 0x14
	.string	"BUILT_IN_C2_SATD"
	.sleb128 158
	.uleb128 0x14
	.string	"BUILT_IN_C2_INTRA"
	.sleb128 159
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVSEL"
	.sleb128 160
	.uleb128 0x14
	.string	"BUILT_IN_C2_BCST"
	.sleb128 161
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS_R"
	.sleb128 162
	.uleb128 0x14
	.string	"BUILT_IN_C2_VLCS"
	.sleb128 163
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS"
	.sleb128 164
	.uleb128 0x14
	.string	"BUILT_IN_C2_ADDS_R"
	.sleb128 165
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS"
	.sleb128 166
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUBS_R"
	.sleb128 167
	.uleb128 0x14
	.string	"BUILT_IN_C2_MULS"
	.sleb128 168
	.uleb128 0x14
	.string	"BUILT_IN_C2_MADS"
	.sleb128 169
	.uleb128 0x14
	.string	"BUILT_IN_C2_SMADS"
	.sleb128 170
	.uleb128 0x14
	.string	"BUILT_IN_C2_CMOV"
	.sleb128 171
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV"
	.sleb128 172
	.uleb128 0x14
	.string	"BUILT_IN_C2_MOV_R"
	.sleb128 173
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLP"
	.sleb128 174
	.uleb128 0x14
	.string	"BUILT_IN_C2_CHKRNG"
	.sleb128 175
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND"
	.sleb128 176
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R_WB"
	.sleb128 177
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_R"
	.sleb128 178
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR"
	.sleb128 179
	.uleb128 0x14
	.string	"BUILT_IN_C2_SCOND_BR_R"
	.sleb128 180
	.uleb128 0x14
	.string	"BUILT_IN_C2_BOP"
	.sleb128 181
	.uleb128 0x14
	.string	"BUILT_IN_C2_BDEP"
	.sleb128 182
	.uleb128 0x14
	.string	"BUILT_IN_C2_WRAP"
	.sleb128 183
	.uleb128 0x14
	.string	"BUILT_IN_C2_BXTR"
	.sleb128 184
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4"
	.sleb128 185
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM3_SADDR"
	.sleb128 186
	.uleb128 0x14
	.string	"BUILT_IN_C2_SUM4_R"
	.sleb128 187
	.uleb128 0x14
	.string	"BUILT_IN_C2_MED"
	.sleb128 188
	.uleb128 0x14
	.string	"BUILT_IN_C2_GSUMS"
	.sleb128 189
	.uleb128 0x14
	.string	"BUILT_IN_C2_CLZOB"
	.sleb128 190
	.uleb128 0x14
	.string	"BUILT_IN_C2_THCTRL"
	.sleb128 191
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_F"
	.sleb128 192
	.uleb128 0x14
	.string	"BUILT_IN_C2_BR_T"
	.sleb128 193
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G"
	.sleb128 194
	.uleb128 0x14
	.string	"BUILT_IN_C2_LD_V2G_IMM"
	.sleb128 195
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V"
	.sleb128 196
	.uleb128 0x14
	.string	"BUILT_IN_C2_ST_G2V_IMM"
	.sleb128 197
	.uleb128 0x14
	.string	"BUILT_IN_C2_MVGR_R2S"
	.sleb128 198
	.uleb128 0x14
	.string	"BUILT_IN_C2_FORK"
	.sleb128 199
	.uleb128 0x14
	.string	"BUILT_IN_C2_JOINT"
	.sleb128 200
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MAJOR"
	.sleb128 201
	.uleb128 0x14
	.string	"BUILT_IN_C2_THREAD_MINOR"
	.sleb128 202
	.uleb128 0x14
	.string	"BUILT_IN_FLOOR"
	.sleb128 203
	.uleb128 0x14
	.string	"BUILT_IN_FLOORF"
	.sleb128 204
	.uleb128 0x14
	.string	"BUILT_IN_FLOORL"
	.sleb128 205
	.uleb128 0x14
	.string	"BUILT_IN_POW"
	.sleb128 206
	.uleb128 0x14
	.string	"BUILT_IN_TAN"
	.sleb128 207
	.uleb128 0x14
	.string	"BUILT_IN_ACOS"
	.sleb128 208
	.uleb128 0x14
	.string	"BUILT_IN_ACOSF"
	.sleb128 209
	.uleb128 0x14
	.string	"BUILT_IN_ACOSH"
	.sleb128 210
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHF"
	.sleb128 211
	.uleb128 0x14
	.string	"BUILT_IN_ACOSHL"
	.sleb128 212
	.uleb128 0x14
	.string	"BUILT_IN_ACOSL"
	.sleb128 213
	.uleb128 0x14
	.string	"BUILT_IN_ASIN"
	.sleb128 214
	.uleb128 0x14
	.string	"BUILT_IN_ASINF"
	.sleb128 215
	.uleb128 0x14
	.string	"BUILT_IN_ASINH"
	.sleb128 216
	.uleb128 0x14
	.string	"BUILT_IN_ASINHF"
	.sleb128 217
	.uleb128 0x14
	.string	"BUILT_IN_ASINHL"
	.sleb128 218
	.uleb128 0x14
	.string	"BUILT_IN_ASINL"
	.sleb128 219
	.uleb128 0x14
	.string	"BUILT_IN_ATAN"
	.sleb128 220
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2"
	.sleb128 221
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2F"
	.sleb128 222
	.uleb128 0x14
	.string	"BUILT_IN_ATAN2L"
	.sleb128 223
	.uleb128 0x14
	.string	"BUILT_IN_ATANF"
	.sleb128 224
	.uleb128 0x14
	.string	"BUILT_IN_ATANH"
	.sleb128 225
	.uleb128 0x14
	.string	"BUILT_IN_ATANHF"
	.sleb128 226
	.uleb128 0x14
	.string	"BUILT_IN_ATANHL"
	.sleb128 227
	.uleb128 0x14
	.string	"BUILT_IN_ATANL"
	.sleb128 228
	.uleb128 0x14
	.string	"BUILT_IN_CEIL"
	.sleb128 229
	.uleb128 0x14
	.string	"BUILT_IN_CEILF"
	.sleb128 230
	.uleb128 0x14
	.string	"BUILT_IN_CEILL"
	.sleb128 231
	.uleb128 0x14
	.string	"BUILT_IN_FMODF"
	.sleb128 232
	.uleb128 0x14
	.string	"BUILT_IN_FMODL"
	.sleb128 233
	.uleb128 0x14
	.string	"BUILT_IN_FREXP"
	.sleb128 234
	.uleb128 0x14
	.string	"BUILT_IN_FREXPF"
	.sleb128 235
	.uleb128 0x14
	.string	"BUILT_IN_FREXPL"
	.sleb128 236
	.uleb128 0x14
	.string	"BUILT_IN_LDEXP"
	.sleb128 237
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPF"
	.sleb128 238
	.uleb128 0x14
	.string	"BUILT_IN_LDEXPL"
	.sleb128 239
	.uleb128 0x14
	.string	"BUILT_IN_LOG10"
	.sleb128 240
	.uleb128 0x14
	.string	"BUILT_IN_LOG10F"
	.sleb128 241
	.uleb128 0x14
	.string	"BUILT_IN_LOG10L"
	.sleb128 242
	.uleb128 0x14
	.string	"BUILT_IN_MODF"
	.sleb128 243
	.uleb128 0x14
	.string	"BUILT_IN_MODFF"
	.sleb128 244
	.uleb128 0x14
	.string	"BUILT_IN_MODFL"
	.sleb128 245
	.uleb128 0x14
	.string	"BUILT_IN_POWF"
	.sleb128 246
	.uleb128 0x14
	.string	"BUILT_IN_POWL"
	.sleb128 247
	.uleb128 0x14
	.string	"BUILT_IN_SINH"
	.sleb128 248
	.uleb128 0x14
	.string	"BUILT_IN_SINHF"
	.sleb128 249
	.uleb128 0x14
	.string	"BUILT_IN_SINHL"
	.sleb128 250
	.uleb128 0x14
	.string	"BUILT_IN_TANF"
	.sleb128 251
	.uleb128 0x14
	.string	"BUILT_IN_TANH"
	.sleb128 252
	.uleb128 0x14
	.string	"BUILT_IN_TANHF"
	.sleb128 253
	.uleb128 0x14
	.string	"BUILT_IN_TANHL"
	.sleb128 254
	.uleb128 0x14
	.string	"BUILT_IN_TANL"
	.sleb128 255
	.uleb128 0x14
	.string	"BUILT_IN_COSH"
	.sleb128 256
	.uleb128 0x14
	.string	"BUILT_IN_COSHF"
	.sleb128 257
	.uleb128 0x14
	.string	"BUILT_IN_COSHL"
	.sleb128 258
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNT"
	.sleb128 259
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTL"
	.sleb128 260
	.uleb128 0x14
	.string	"BUILT_IN_POPCOUNTLL"
	.sleb128 261
	.uleb128 0x14
	.string	"BUILT_IN_CTZ"
	.sleb128 262
	.uleb128 0x14
	.string	"BUILT_IN_CTZL"
	.sleb128 263
	.uleb128 0x14
	.string	"BUILT_IN_CTZLL"
	.sleb128 264
	.uleb128 0x14
	.string	"BUILT_IN_SQRT"
	.sleb128 265
	.uleb128 0x14
	.string	"BUILT_IN_SIN"
	.sleb128 266
	.uleb128 0x14
	.string	"BUILT_IN_COS"
	.sleb128 267
	.uleb128 0x14
	.string	"BUILT_IN_EXP"
	.sleb128 268
	.uleb128 0x14
	.string	"BUILT_IN_LOG"
	.sleb128 269
	.uleb128 0x14
	.string	"BUILT_IN_SQRTF"
	.sleb128 270
	.uleb128 0x14
	.string	"BUILT_IN_SINF"
	.sleb128 271
	.uleb128 0x14
	.string	"BUILT_IN_COSF"
	.sleb128 272
	.uleb128 0x14
	.string	"BUILT_IN_EXPF"
	.sleb128 273
	.uleb128 0x14
	.string	"BUILT_IN_LOGF"
	.sleb128 274
	.uleb128 0x14
	.string	"BUILT_IN_SQRTL"
	.sleb128 275
	.uleb128 0x14
	.string	"BUILT_IN_SINL"
	.sleb128 276
	.uleb128 0x14
	.string	"BUILT_IN_COSL"
	.sleb128 277
	.uleb128 0x14
	.string	"BUILT_IN_EXPL"
	.sleb128 278
	.uleb128 0x14
	.string	"BUILT_IN_LOGL"
	.sleb128 279
	.uleb128 0x14
	.string	"BUILT_IN_INF"
	.sleb128 280
	.uleb128 0x14
	.string	"BUILT_IN_INFF"
	.sleb128 281
	.uleb128 0x14
	.string	"BUILT_IN_INFL"
	.sleb128 282
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VAL"
	.sleb128 283
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALF"
	.sleb128 284
	.uleb128 0x14
	.string	"BUILT_IN_HUGE_VALL"
	.sleb128 285
	.uleb128 0x14
	.string	"BUILT_IN_NAN"
	.sleb128 286
	.uleb128 0x14
	.string	"BUILT_IN_NANF"
	.sleb128 287
	.uleb128 0x14
	.string	"BUILT_IN_NANL"
	.sleb128 288
	.uleb128 0x14
	.string	"BUILT_IN_NANS"
	.sleb128 289
	.uleb128 0x14
	.string	"BUILT_IN_NANSF"
	.sleb128 290
	.uleb128 0x14
	.string	"BUILT_IN_NANSL"
	.sleb128 291
	.uleb128 0x14
	.string	"BUILT_IN_SAVEREGS"
	.sleb128 292
	.uleb128 0x14
	.string	"BUILT_IN_CLASSIFY_TYPE"
	.sleb128 293
	.uleb128 0x14
	.string	"BUILT_IN_NEXT_ARG"
	.sleb128 294
	.uleb128 0x14
	.string	"BUILT_IN_ARGS_INFO"
	.sleb128 295
	.uleb128 0x14
	.string	"BUILT_IN_CONSTANT_P"
	.sleb128 296
	.uleb128 0x14
	.string	"BUILT_IN_FRAME_ADDRESS"
	.sleb128 297
	.uleb128 0x14
	.string	"BUILT_IN_RETURN_ADDRESS"
	.sleb128 298
	.uleb128 0x14
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
	.sleb128 299
	.uleb128 0x14
	.string	"BUILT_IN_APPLY_ARGS"
	.sleb128 300
	.uleb128 0x14
	.string	"BUILT_IN_APPLY"
	.sleb128 301
	.uleb128 0x14
	.string	"BUILT_IN_RETURN"
	.sleb128 302
	.uleb128 0x14
	.string	"BUILT_IN_SETJMP"
	.sleb128 303
	.uleb128 0x14
	.string	"BUILT_IN_LONGJMP"
	.sleb128 304
	.uleb128 0x14
	.string	"BUILT_IN_TRAP"
	.sleb128 305
	.uleb128 0x14
	.string	"BUILT_IN_PREFETCH"
	.sleb128 306
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF"
	.sleb128 307
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR"
	.sleb128 308
	.uleb128 0x14
	.string	"BUILT_IN_PUTS"
	.sleb128 309
	.uleb128 0x14
	.string	"BUILT_IN_SNPRINTF"
	.sleb128 310
	.uleb128 0x14
	.string	"BUILT_IN_SPRINTF"
	.sleb128 311
	.uleb128 0x14
	.string	"BUILT_IN_SCANF"
	.sleb128 312
	.uleb128 0x14
	.string	"BUILT_IN_SSCANF"
	.sleb128 313
	.uleb128 0x14
	.string	"BUILT_IN_VPRINTF"
	.sleb128 314
	.uleb128 0x14
	.string	"BUILT_IN_VSCANF"
	.sleb128 315
	.uleb128 0x14
	.string	"BUILT_IN_VSSCANF"
	.sleb128 316
	.uleb128 0x14
	.string	"BUILT_IN_VSNPRINTF"
	.sleb128 317
	.uleb128 0x14
	.string	"BUILT_IN_VSPRINTF"
	.sleb128 318
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC"
	.sleb128 319
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS"
	.sleb128 320
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE"
	.sleb128 321
	.uleb128 0x14
	.string	"BUILT_IN_FPRINTF"
	.sleb128 322
	.uleb128 0x14
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
	.sleb128 323
	.uleb128 0x14
	.string	"BUILT_IN_PUTS_UNLOCKED"
	.sleb128 324
	.uleb128 0x14
	.string	"BUILT_IN_PRINTF_UNLOCKED"
	.sleb128 325
	.uleb128 0x14
	.string	"BUILT_IN_FPUTC_UNLOCKED"
	.sleb128 326
	.uleb128 0x14
	.string	"BUILT_IN_FPUTS_UNLOCKED"
	.sleb128 327
	.uleb128 0x14
	.string	"BUILT_IN_FWRITE_UNLOCKED"
	.sleb128 328
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATER"
	.sleb128 329
	.uleb128 0x14
	.string	"BUILT_IN_ISGREATEREQUAL"
	.sleb128 330
	.uleb128 0x14
	.string	"BUILT_IN_ISLESS"
	.sleb128 331
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSEQUAL"
	.sleb128 332
	.uleb128 0x14
	.string	"BUILT_IN_ISLESSGREATER"
	.sleb128 333
	.uleb128 0x14
	.string	"BUILT_IN_ISUNORDERED"
	.sleb128 334
	.uleb128 0x14
	.string	"BUILT_IN_UNWIND_INIT"
	.sleb128 335
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_CFA"
	.sleb128 336
	.uleb128 0x14
	.string	"BUILT_IN_DWARF_SP_COLUMN"
	.sleb128 337
	.uleb128 0x14
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
	.sleb128 338
	.uleb128 0x14
	.string	"BUILT_IN_FROB_RETURN_ADDR"
	.sleb128 339
	.uleb128 0x14
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
	.sleb128 340
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN"
	.sleb128 341
	.uleb128 0x14
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
	.sleb128 342
	.uleb128 0x14
	.string	"BUILT_IN_VA_START"
	.sleb128 343
	.uleb128 0x14
	.string	"BUILT_IN_STDARG_START"
	.sleb128 344
	.uleb128 0x14
	.string	"BUILT_IN_VA_END"
	.sleb128 345
	.uleb128 0x14
	.string	"BUILT_IN_VA_COPY"
	.sleb128 346
	.uleb128 0x14
	.string	"BUILT_IN_EXPECT"
	.sleb128 347
	.uleb128 0x14
	.string	"BUILT_IN_EXTEND_POINTER"
	.sleb128 348
	.uleb128 0x14
	.string	"BUILT_IN_NEW"
	.sleb128 349
	.uleb128 0x14
	.string	"BUILT_IN_VEC_NEW"
	.sleb128 350
	.uleb128 0x14
	.string	"BUILT_IN_DELETE"
	.sleb128 351
	.uleb128 0x14
	.string	"BUILT_IN_VEC_DELETE"
	.sleb128 352
	.uleb128 0x14
	.string	"BUILT_IN_ABORT"
	.sleb128 353
	.uleb128 0x14
	.string	"BUILT_IN_EXIT"
	.sleb128 354
	.uleb128 0x14
	.string	"BUILT_IN__EXIT"
	.sleb128 355
	.uleb128 0x14
	.string	"BUILT_IN__EXIT2"
	.sleb128 356
	.uleb128 0x14
	.string	"END_BUILTINS"
	.sleb128 357
	.byte	0x0
	.uleb128 0x15
	.long	0x2fc4
	.string	"tree_common"
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.uleb128 0x16
	.string	"chain"
	.byte	0x6
	.byte	0x8d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x6
	.byte	0x8e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.string	"code"
	.byte	0x6
	.byte	0x90
	.long	0x667
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"side_effects_flag"
	.byte	0x6
	.byte	0x92
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"constant_flag"
	.byte	0x6
	.byte	0x93
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"addressable_flag"
	.byte	0x6
	.byte	0x94
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"volatile_flag"
	.byte	0x6
	.byte	0x95
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"readonly_flag"
	.byte	0x6
	.byte	0x96
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"unsigned_flag"
	.byte	0x6
	.byte	0x97
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"asm_written_flag"
	.byte	0x6
	.byte	0x98
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"not_emitted_by_gxx"
	.byte	0x6
	.byte	0x9a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"used_flag"
	.byte	0x6
	.byte	0x9f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"nothrow_flag"
	.byte	0x6
	.byte	0xa0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"static_flag"
	.byte	0x6
	.byte	0xa1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"public_flag"
	.byte	0x6
	.byte	0xa2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"private_flag"
	.byte	0x6
	.byte	0xa3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"protected_flag"
	.byte	0x6
	.byte	0xa4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"bounded_flag"
	.byte	0x6
	.byte	0xa5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"deprecated_flag"
	.byte	0x6
	.byte	0xa6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF5
	.byte	0x6
	.byte	0xa8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF6
	.byte	0x6
	.byte	0xa9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF7
	.byte	0x6
	.byte	0xaa
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF8
	.byte	0x6
	.byte	0xab
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF9
	.byte	0x6
	.byte	0xac
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x6
	.byte	0xad
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF11
	.byte	0x6
	.byte	0xae
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1a
	.long	.LASF12
	.byte	0x6
	.byte	0xb0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.string	"sbuf"
	.byte	0x6
	.byte	0xb5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"sdram"
	.byte	0x6
	.byte	0xb6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"v1buf"
	.byte	0x6
	.byte	0xb7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"v2buf"
	.byte	0x6
	.byte	0xb8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.string	"v4buf"
	.byte	0x6
	.byte	0xb9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x3000
	.string	"tree_int_cst_lowhi"
	.byte	0x10
	.byte	0x6
	.value	0x30a
	.uleb128 0xb
	.string	"low"
	.byte	0x6
	.value	0x30b
	.long	0x359
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"high"
	.byte	0x6
	.value	0x30c
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xa
	.long	0x3048
	.string	"tree_int_cst"
	.byte	0x24
	.byte	0x6
	.value	0x303
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x304
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x6
	.value	0x305
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"int_cst"
	.byte	0x6
	.value	0x30d
	.long	0x2fc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x3096
	.string	"tree_real_cst"
	.byte	0x18
	.byte	0x6
	.value	0x31f
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x320
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x6
	.value	0x321
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real_cst_ptr"
	.byte	0x6
	.value	0x322
	.long	0x30a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x4
	.string	"real_value"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3096
	.uleb128 0xa
	.long	0x3110
	.string	"tree_string"
	.byte	0x20
	.byte	0x6
	.value	0x333
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x334
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x6
	.value	0x335
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"length"
	.byte	0x6
	.value	0x336
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"pointer"
	.byte	0x6
	.value	0x337
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"st"
	.byte	0x6
	.value	0x339
	.long	0x3110
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0xfd9
	.uleb128 0xa
	.long	0x316b
	.string	"tree_complex"
	.byte	0x1c
	.byte	0x6
	.value	0x342
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x343
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x6
	.value	0x344
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"real"
	.byte	0x6
	.value	0x345
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"imag"
	.byte	0x6
	.value	0x346
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.long	0x31b3
	.string	"tree_vector"
	.byte	0x18
	.byte	0x6
	.value	0x355
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x356
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"rtl"
	.byte	0x6
	.value	0x357
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"elements"
	.byte	0x6
	.value	0x358
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x15
	.long	0x31fd
	.string	"_obstack_chunk"
	.byte	0xc
	.byte	0x13
	.byte	0xa2
	.uleb128 0x16
	.string	"limit"
	.byte	0x13
	.byte	0xa3
	.long	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"prev"
	.byte	0x13
	.byte	0xa4
	.long	0x31fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"contents"
	.byte	0x13
	.byte	0xa5
	.long	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x31b3
	.uleb128 0xa
	.long	0x3329
	.string	"obstack"
	.byte	0x2c
	.byte	0x12
	.value	0x31b
	.uleb128 0x18
	.long	.LASF13
	.byte	0x13
	.byte	0xaa
	.long	0x373
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"chunk"
	.byte	0x13
	.byte	0xab
	.long	0x31fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"object_base"
	.byte	0x13
	.byte	0xac
	.long	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"next_free"
	.byte	0x13
	.byte	0xad
	.long	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"chunk_limit"
	.byte	0x13
	.byte	0xae
	.long	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"temp"
	.byte	0x13
	.byte	0xaf
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"alignment_mask"
	.byte	0x13
	.byte	0xb0
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"chunkfun"
	.byte	0x13
	.byte	0xb5
	.long	0x333e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"freefun"
	.byte	0x13
	.byte	0xb6
	.long	0x3355
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"extra_arg"
	.byte	0x13
	.byte	0xb7
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.string	"use_extra_arg"
	.byte	0x13
	.byte	0xbd
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.string	"maybe_empty_object"
	.byte	0x13
	.byte	0xbe
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x19
	.string	"alloc_failed"
	.byte	0x13
	.byte	0xc2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x1c
	.long	0x333e
	.byte	0x1
	.long	0x31fd
	.uleb128 0x12
	.long	0x37f
	.uleb128 0x12
	.long	0x373
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3329
	.uleb128 0x11
	.long	0x3355
	.byte	0x1
	.uleb128 0x12
	.long	0x37f
	.uleb128 0x12
	.long	0x31fd
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3344
	.uleb128 0x1d
	.long	0x3399
	.long	.LASF14
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.uleb128 0x16
	.string	"str"
	.byte	0x7
	.byte	0x1c
	.long	0x397
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"len"
	.byte	0x7
	.byte	0x1d
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"hash_value"
	.byte	0x7
	.byte	0x1e
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x1e
	.long	.LASF15
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x3399
	.uleb128 0xa
	.long	0x33dc
	.string	"tree_identifier"
	.byte	0x1c
	.byte	0x6
	.value	0x376
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x377
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"id"
	.byte	0x6
	.value	0x378
	.long	0x335b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x3423
	.string	"tree_list"
	.byte	0x18
	.byte	0x6
	.value	0x380
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x381
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"purpose"
	.byte	0x6
	.value	0x382
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"value"
	.byte	0x6
	.value	0x383
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x3464
	.string	"tree_vec"
	.byte	0x18
	.byte	0x6
	.value	0x38e
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x38f
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"length"
	.byte	0x6
	.value	0x390
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"a"
	.byte	0x6
	.value	0x391
	.long	0x3464
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x3474
	.long	0xd6
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x34c0
	.string	"tree_exp"
	.byte	0x18
	.byte	0x6
	.value	0x3d4
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x3d5
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"complexity"
	.byte	0x6
	.value	0x3d6
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"operands"
	.byte	0x6
	.value	0x3d9
	.long	0x3464
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xa
	.long	0x35b0
	.string	"tree_block"
	.byte	0x2c
	.byte	0x6
	.value	0x40a
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x40b
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"handler_block_flag"
	.byte	0x6
	.value	0x40d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x20
	.long	.LASF16
	.byte	0x6
	.value	0x40e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1f
	.string	"block_num"
	.byte	0x6
	.value	0x40f
	.long	0x2ac
	.byte	0x4
	.byte	0x1e
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vars"
	.byte	0x6
	.value	0x411
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"subblocks"
	.byte	0x6
	.value	0x412
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"supercontext"
	.byte	0x6
	.value	0x413
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x6
	.value	0x414
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"fragment_origin"
	.byte	0x6
	.value	0x415
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"fragment_chain"
	.byte	0x6
	.value	0x416
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x21
	.long	0x35f7
	.string	"tree_type_symtab"
	.byte	0x4
	.byte	0x6
	.value	0x570
	.uleb128 0x7
	.string	"address"
	.byte	0x6
	.value	0x571
	.long	0x1d3
	.uleb128 0x7
	.string	"pointer"
	.byte	0x6
	.value	0x572
	.long	0x381
	.uleb128 0x7
	.string	"die"
	.byte	0x6
	.value	0x573
	.long	0x3604
	.byte	0x0
	.uleb128 0x4
	.string	"die_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x35f7
	.uleb128 0xa
	.long	0x3954
	.string	"tree_type"
	.byte	0x74
	.byte	0x6
	.value	0x551
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x552
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"values"
	.byte	0x6
	.value	0x553
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"size"
	.byte	0x6
	.value	0x554
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x6
	.value	0x555
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x6
	.value	0x556
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"uid"
	.byte	0x6
	.value	0x557
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"precision"
	.byte	0x6
	.value	0x559
	.long	0x2ac
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"mode"
	.byte	0x6
	.value	0x55a
	.long	0x3da
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"string_flag"
	.byte	0x6
	.value	0x55c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_force_blk_flag"
	.byte	0x6
	.value	0x55d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"needs_constructing_flag"
	.byte	0x6
	.value	0x55e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"transparent_union_flag"
	.byte	0x6
	.value	0x55f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"packed_flag"
	.byte	0x6
	.value	0x560
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"restrict_flag"
	.byte	0x6
	.value	0x561
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF20
	.byte	0x6
	.value	0x562
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x6
	.value	0x564
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x6
	.value	0x565
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x6
	.value	0x566
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x6
	.value	0x567
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x6
	.value	0x568
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x6
	.value	0x569
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x6
	.value	0x56a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x6
	.value	0x56b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"align"
	.byte	0x6
	.value	0x56d
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pointer_to"
	.byte	0x6
	.value	0x56e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"reference_to"
	.byte	0x6
	.value	0x56f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"symtab"
	.byte	0x6
	.value	0x574
	.long	0x35b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"name"
	.byte	0x6
	.value	0x576
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"minval"
	.byte	0x6
	.value	0x577
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"maxval"
	.byte	0x6
	.value	0x578
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"next_variant"
	.byte	0x6
	.value	0x579
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"main_variant"
	.byte	0x6
	.value	0x57a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"binfo"
	.byte	0x6
	.value	0x57b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x6
	.value	0x57c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"alias_set"
	.byte	0x6
	.value	0x57d
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1b
	.long	.LASF23
	.byte	0x6
	.value	0x57f
	.long	0x3975
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"ty_idx"
	.byte	0x6
	.value	0x581
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.string	"field_ids_used"
	.byte	0x6
	.value	0x582
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"dst_id"
	.byte	0x6
	.value	0x583
	.long	0xf9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"extra_methods"
	.byte	0x6
	.value	0x58a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0x0
	.uleb128 0xa
	.long	0x3975
	.string	"lang_type"
	.byte	0x4c
	.byte	0x6
	.value	0x57f
	.uleb128 0xb
	.string	"u"
	.byte	0xc
	.value	0x4e0
	.long	0x732d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3954
	.uleb128 0xa
	.long	0x39c0
	.string	"tree_decl_u1_a"
	.byte	0x4
	.byte	0x6
	.value	0x817
	.uleb128 0x1f
	.string	"align"
	.byte	0x6
	.value	0x818
	.long	0x2ac
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"off_align"
	.byte	0x6
	.value	0x819
	.long	0x2ac
	.byte	0x4
	.byte	0x8
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x39f5
	.string	"tree_decl_u1"
	.byte	0x8
	.byte	0x6
	.value	0x80e
	.uleb128 0x7
	.string	"f"
	.byte	0x6
	.value	0x811
	.long	0x1038
	.uleb128 0x7
	.string	"i"
	.byte	0x6
	.value	0x814
	.long	0x348
	.uleb128 0x7
	.string	"a"
	.byte	0x6
	.value	0x81a
	.long	0x397b
	.byte	0x0
	.uleb128 0x21
	.long	0x3a34
	.string	"tree_decl_u2"
	.byte	0x4
	.byte	0x6
	.value	0x837
	.uleb128 0x7
	.string	"f"
	.byte	0x6
	.value	0x838
	.long	0x43e4
	.uleb128 0x7
	.string	"r"
	.byte	0x6
	.value	0x839
	.long	0x9c
	.uleb128 0x7
	.string	"t"
	.byte	0x6
	.value	0x83a
	.long	0xd6
	.uleb128 0x7
	.string	"i"
	.byte	0x6
	.value	0x83b
	.long	0x1d3
	.byte	0x0
	.uleb128 0x22
	.long	0x43e4
	.string	"function"
	.value	0x134
	.byte	0x6
	.value	0x7c2
	.uleb128 0x16
	.string	"eh"
	.byte	0xa
	.byte	0xb5
	.long	0x5b2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"stmt"
	.byte	0xa
	.byte	0xb6
	.long	0x5b43
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"expr"
	.byte	0xa
	.byte	0xb7
	.long	0x5b49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"emit"
	.byte	0xa
	.byte	0xb8
	.long	0x5b4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"varasm"
	.byte	0xa
	.byte	0xb9
	.long	0x5b65
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"name"
	.byte	0xa
	.byte	0xbe
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x18
	.long	.LASF1
	.byte	0xa
	.byte	0xc1
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"outer"
	.byte	0xa
	.byte	0xc4
	.long	0x43e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"pops_args"
	.byte	0xa
	.byte	0xc9
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"args_size"
	.byte	0xa
	.byte	0xce
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"pretend_args_size"
	.byte	0xa
	.byte	0xd3
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"outgoing_args_size"
	.byte	0xa
	.byte	0xd7
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"arg_offset_rtx"
	.byte	0xa
	.byte	0xdb
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.string	"args_info"
	.byte	0xa
	.byte	0xdf
	.long	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x16
	.string	"return_rtx"
	.byte	0xa
	.byte	0xe5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.string	"internal_arg_pointer"
	.byte	0xa
	.byte	0xe8
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.long	.LASF24
	.byte	0xa
	.byte	0xec
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x16
	.string	"hard_reg_initial_vals"
	.byte	0xa
	.byte	0xf0
	.long	0x5b82
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.string	"x_function_call_count"
	.byte	0xa
	.byte	0xf3
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x16
	.string	"x_nonlocal_labels"
	.byte	0xa
	.byte	0xf8
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.string	"x_nonlocal_goto_handler_slots"
	.byte	0xa
	.byte	0xfe
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"x_nonlocal_goto_handler_labels"
	.byte	0xa
	.value	0x102
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"x_nonlocal_goto_stack_level"
	.byte	0xa
	.value	0x107
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"x_cleanup_label"
	.byte	0xa
	.value	0x10d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.string	"x_return_label"
	.byte	0xa
	.value	0x112
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.string	"computed_goto_common_label"
	.byte	0xa
	.value	0x115
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.string	"computed_goto_common_reg"
	.byte	0xa
	.value	0x116
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.string	"x_save_expr_regs"
	.byte	0xa
	.value	0x11a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.string	"x_stack_slot_list"
	.byte	0xa
	.value	0x11e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.string	"x_rtl_expr_chain"
	.byte	0xa
	.value	0x121
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.string	"x_tail_recursion_label"
	.byte	0xa
	.value	0x125
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.string	"x_tail_recursion_reentry"
	.byte	0xa
	.value	0x128
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.string	"x_arg_pointer_save_area"
	.byte	0xa
	.value	0x12e
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.string	"x_clobber_return_insn"
	.byte	0xa
	.value	0x133
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.string	"x_frame_offset"
	.byte	0xa
	.value	0x138
	.long	0x348
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.string	"x_context_display"
	.byte	0xa
	.value	0x13d
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.string	"x_trampoline_list"
	.byte	0xa
	.value	0x146
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.string	"x_parm_birth_insn"
	.byte	0xa
	.value	0x149
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.string	"x_last_parm_insn"
	.byte	0xa
	.value	0x14d
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xb
	.string	"x_max_parm_reg"
	.byte	0xa
	.value	0x151
	.long	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xb
	.string	"x_parm_reg_stack_loc"
	.byte	0xa
	.value	0x157
	.long	0x59d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.string	"x_temp_slots"
	.byte	0xa
	.value	0x15a
	.long	0x5b94
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.string	"x_temp_slot_level"
	.byte	0xa
	.value	0x15d
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.string	"x_var_temp_slot_level"
	.byte	0xa
	.value	0x160
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.string	"x_target_temp_slot_level"
	.byte	0xa
	.value	0x166
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.string	"fixup_var_refs_queue"
	.byte	0xa
	.value	0x16a
	.long	0x582a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.string	"inlinable"
	.byte	0xa
	.value	0x16d
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.string	"no_debugging_symbols"
	.byte	0xa
	.value	0x16e
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.string	"original_arg_vector"
	.byte	0xa
	.value	0x16f
	.long	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.string	"original_decl_initial"
	.byte	0xa
	.value	0x170
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.string	"inl_last_parm_insn"
	.byte	0xa
	.value	0x173
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.string	"inl_max_label_num"
	.byte	0xa
	.value	0x175
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.string	"funcdef_no"
	.byte	0xa
	.value	0x178
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.string	"machine"
	.byte	0xa
	.value	0x17d
	.long	0x5bad
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0xb
	.string	"stack_alignment_needed"
	.byte	0xa
	.value	0x17f
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0xb
	.string	"preferred_stack_boundary"
	.byte	0xa
	.value	0x181
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x1b
	.long	.LASF25
	.byte	0xa
	.value	0x184
	.long	0x5de9
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.string	"epilogue_delay_list"
	.byte	0xa
	.value	0x18a
	.long	0x9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x1f
	.string	"returns_struct"
	.byte	0xa
	.value	0x190
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pcc_struct"
	.byte	0xa
	.value	0x194
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"returns_pointer"
	.byte	0xa
	.value	0x197
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"needs_context"
	.byte	0xa
	.value	0x19a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_setjmp"
	.byte	0xa
	.value	0x19d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_longjmp"
	.byte	0xa
	.value	0x1a0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_alloca"
	.byte	0xa
	.value	0x1a4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"calls_eh_return"
	.byte	0xa
	.value	0x1a7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_label"
	.byte	0xa
	.value	0x1ab
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_nonlocal_goto"
	.byte	0xa
	.value	0x1af
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"contains_functions"
	.byte	0xa
	.value	0x1b2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"has_computed_jump"
	.byte	0xa
	.value	0x1b5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"is_thunk"
	.byte	0xa
	.value	0x1ba
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"all_throwers_are_sibcalls"
	.byte	0xa
	.value	0x1c1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"instrument_entry_exit"
	.byte	0xa
	.value	0x1c5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arc_profile"
	.byte	0xa
	.value	0x1c8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"profile"
	.byte	0xa
	.value	0x1cb
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"limit_stack"
	.byte	0xa
	.value	0x1cf
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"stdarg"
	.byte	0xa
	.value	0x1d2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_whole_function_mode_p"
	.byte	0xa
	.value	0x1d8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"x_dont_save_pending_sizes_p"
	.byte	0xa
	.value	0x1e1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_const_pool"
	.byte	0xa
	.value	0x1e4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_pic_offset_table"
	.byte	0xa
	.value	0x1e7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"uses_eh_lsda"
	.byte	0xa
	.value	0x1ea
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1f
	.string	"arg_pointer_save_area_init"
	.byte	0xa
	.value	0x1ed
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x1b
	.long	.LASF26
	.byte	0xa
	.value	0x1fa
	.long	0x5ab9
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0xb
	.string	"max_jumptable_ents"
	.byte	0xa
	.value	0x1fe
	.long	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x3a34
	.uleb128 0x23
	.long	0x4422
	.byte	0x4
	.byte	0x6
	.value	0x84e
	.uleb128 0x7
	.string	"st"
	.byte	0x6
	.value	0x84f
	.long	0x3110
	.uleb128 0x7
	.string	"label_idx"
	.byte	0x6
	.value	0x850
	.long	0xf89
	.uleb128 0x7
	.string	"field_id"
	.byte	0x6
	.value	0x851
	.long	0x2ac
	.byte	0x0
	.uleb128 0xa
	.long	0x4b66
	.string	"tree_decl"
	.byte	0xa0
	.byte	0x6
	.value	0x7c5
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x7c6
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF27
	.byte	0x6
	.value	0x7c7
	.long	0x655
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"uid"
	.byte	0x6
	.value	0x7c8
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"size"
	.byte	0x6
	.value	0x7c9
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"mode"
	.byte	0x6
	.value	0x7ca
	.long	0x3da
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"external_flag"
	.byte	0x6
	.value	0x7cc
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"nonlocal_flag"
	.byte	0x6
	.value	0x7cd
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"regdecl_flag"
	.byte	0x6
	.value	0x7ce
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"inline_flag"
	.byte	0x6
	.value	0x7cf
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"bit_field_flag"
	.byte	0x6
	.value	0x7d0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"virtual_flag"
	.byte	0x6
	.value	0x7d1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"ignored_flag"
	.byte	0x6
	.value	0x7d2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x20
	.long	.LASF16
	.byte	0x6
	.value	0x7d3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sbuf_flag"
	.byte	0x6
	.value	0x7d7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"sdram_flag"
	.byte	0x6
	.value	0x7d8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v1buf_flag"
	.byte	0x6
	.value	0x7d9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v2buf_flag"
	.byte	0x6
	.value	0x7da
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"v4buf_flag"
	.byte	0x6
	.value	0x7db
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"in_system_header_flag"
	.byte	0x6
	.value	0x7df
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"common_flag"
	.byte	0x6
	.value	0x7e0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"defer_output"
	.byte	0x6
	.value	0x7e1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"transparent_union"
	.byte	0x6
	.value	0x7e2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_ctor_flag"
	.byte	0x6
	.value	0x7e3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"static_dtor_flag"
	.byte	0x6
	.value	0x7e4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"artificial_flag"
	.byte	0x6
	.value	0x7e5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"weak_flag"
	.byte	0x6
	.value	0x7e6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"non_addr_const_p"
	.byte	0x6
	.value	0x7e8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"no_instrument_function_entry_exit"
	.byte	0x6
	.value	0x7e9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"comdat_flag"
	.byte	0x6
	.value	0x7ea
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1f
	.string	"malloc_flag"
	.byte	0x6
	.value	0x7eb
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"no_limit_stack"
	.byte	0x6
	.value	0x7ec
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF4
	.byte	0x6
	.value	0x7ed
	.long	0xfe8
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"pure_flag"
	.byte	0x6
	.value	0x7ee
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF20
	.byte	0x6
	.value	0x7f0
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"non_addressable"
	.byte	0x6
	.value	0x7f1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF21
	.byte	0x6
	.value	0x7f2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"uninlinable"
	.byte	0x6
	.value	0x7f3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"thread_local_flag"
	.byte	0x6
	.value	0x7f4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"inlined_function_flag"
	.byte	0x6
	.value	0x7f5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"threadprivate_flag"
	.byte	0x6
	.value	0x7f7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF5
	.byte	0x6
	.value	0x7fa
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF6
	.byte	0x6
	.value	0x7fb
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF7
	.byte	0x6
	.value	0x7fc
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF8
	.byte	0x6
	.value	0x7fd
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF9
	.byte	0x6
	.value	0x7fe
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF10
	.byte	0x6
	.value	0x7ff
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF11
	.byte	0x6
	.value	0x800
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x20
	.long	.LASF12
	.byte	0x6
	.value	0x801
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"syscall_linkage_flag"
	.byte	0x6
	.value	0x804
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"widen_retval_flag"
	.byte	0x6
	.value	0x805
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1f
	.string	"emitted_by_gxx"
	.byte	0x6
	.value	0x808
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"u1"
	.byte	0x6
	.value	0x81b
	.long	0x39c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x6
	.value	0x81d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"name"
	.byte	0x6
	.value	0x81e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1b
	.long	.LASF22
	.byte	0x6
	.value	0x81f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"arguments"
	.byte	0x6
	.value	0x820
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"result"
	.byte	0x6
	.value	0x821
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"initial"
	.byte	0x6
	.value	0x822
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"initial_2"
	.byte	0x6
	.value	0x824
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"alias_target"
	.byte	0x6
	.value	0x825
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"thunk_delta"
	.byte	0x6
	.value	0x829
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1b
	.long	.LASF17
	.byte	0x6
	.value	0x82b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.string	"assembler_name"
	.byte	0x6
	.value	0x82c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"section_name"
	.byte	0x6
	.value	0x82d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x6
	.value	0x82e
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"rtl"
	.byte	0x6
	.value	0x82f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.string	"live_range_rtl"
	.byte	0x6
	.value	0x830
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.string	"u2"
	.byte	0x6
	.value	0x83c
	.long	0x39f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.string	"saved_tree"
	.byte	0x6
	.value	0x83f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.string	"inlined_fns"
	.byte	0x6
	.value	0x843
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.string	"vindex"
	.byte	0x6
	.value	0x845
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.string	"pointer_alias_set"
	.byte	0x6
	.value	0x846
	.long	0x348
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x1b
	.long	.LASF23
	.byte	0x6
	.value	0x848
	.long	0x4b9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x1f
	.string	"symtab_idx"
	.byte	0x6
	.value	0x84b
	.long	0x2ac
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x1f
	.string	"label_defined"
	.byte	0x6
	.value	0x84c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.string	"sgi_u1"
	.byte	0x6
	.value	0x852
	.long	0x43ea
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.string	"decl_dst_id"
	.byte	0x6
	.value	0x858
	.long	0xf9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.string	"sl_model_name"
	.byte	0x6
	.value	0x85c
	.long	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0x0
	.uleb128 0xa
	.long	0x4b9d
	.string	"lang_decl"
	.byte	0x34
	.byte	0x6
	.value	0x848
	.uleb128 0xb
	.string	"decl_flags"
	.byte	0xc
	.value	0x73a
	.long	0x73e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"u"
	.byte	0xc
	.value	0x763
	.long	0x7807
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x4b66
	.uleb128 0x13
	.long	0x4e21
	.string	"omp_tree_type"
	.byte	0x4
	.byte	0x10
	.byte	0x1d
	.uleb128 0x14
	.string	"parallel_dir_b"
	.sleb128 0
	.uleb128 0x14
	.string	"parallel_dir_e"
	.sleb128 1
	.uleb128 0x14
	.string	"for_dir_b"
	.sleb128 2
	.uleb128 0x14
	.string	"for_dir_e"
	.sleb128 3
	.uleb128 0x14
	.string	"sections_cons_b"
	.sleb128 4
	.uleb128 0x14
	.string	"sections_cons_e"
	.sleb128 5
	.uleb128 0x14
	.string	"section_cons_b"
	.sleb128 6
	.uleb128 0x14
	.string	"section_cons_e"
	.sleb128 7
	.uleb128 0x14
	.string	"single_cons_b"
	.sleb128 8
	.uleb128 0x14
	.string	"single_cons_e"
	.sleb128 9
	.uleb128 0x14
	.string	"par_for_cons_b"
	.sleb128 10
	.uleb128 0x14
	.string	"par_for_cons_e"
	.sleb128 11
	.uleb128 0x14
	.string	"par_sctn_cons_b"
	.sleb128 12
	.uleb128 0x14
	.string	"par_sctn_cons_e"
	.sleb128 13
	.uleb128 0x14
	.string	"master_cons_b"
	.sleb128 14
	.uleb128 0x14
	.string	"master_cons_e"
	.sleb128 15
	.uleb128 0x14
	.string	"critical_cons_b"
	.sleb128 16
	.uleb128 0x14
	.string	"critical_cons_e"
	.sleb128 17
	.uleb128 0x14
	.string	"barrier_dir"
	.sleb128 18
	.uleb128 0x14
	.string	"flush_dir"
	.sleb128 19
	.uleb128 0x14
	.string	"atomic_cons"
	.sleb128 20
	.uleb128 0x14
	.string	"atomic_cons_b"
	.sleb128 21
	.uleb128 0x14
	.string	"atomic_cons_e"
	.sleb128 22
	.uleb128 0x14
	.string	"thdprv_dir"
	.sleb128 23
	.uleb128 0x14
	.string	"ordered_cons_b"
	.sleb128 24
	.uleb128 0x14
	.string	"ordered_cons_e"
	.sleb128 25
	.uleb128 0x14
	.string	"options_dir"
	.sleb128 26
	.uleb128 0x14
	.string	"exec_freq_dir"
	.sleb128 27
	.uleb128 0x14
	.string	"sl2_sections_cons_b"
	.sleb128 28
	.uleb128 0x14
	.string	"sl2_minor_sections_cons_b"
	.sleb128 29
	.uleb128 0x14
	.string	"sl2_sections_cons_e"
	.sleb128 30
	.uleb128 0x14
	.string	"sl2_section_cons_b"
	.sleb128 31
	.uleb128 0x14
	.string	"sl2_section_cons_e"
	.sleb128 32
	.uleb128 0x14
	.string	"sl2_minor_section_cons_b"
	.sleb128 33
	.uleb128 0x14
	.string	"sl2_minor_section_cons_e"
	.sleb128 34
	.byte	0x0
	.uleb128 0x13
	.long	0x4ee1
	.string	"reduction_op_type"
	.byte	0x4
	.byte	0x10
	.byte	0x48
	.uleb128 0x14
	.string	"REDUCTION_OPR_BAND"
	.sleb128 0
	.uleb128 0x14
	.string	"REDUCTION_OPR_BIOR"
	.sleb128 1
	.uleb128 0x14
	.string	"REDUCTION_OPR_BXOR"
	.sleb128 2
	.uleb128 0x14
	.string	"REDUCTION_OPR_ADD"
	.sleb128 3
	.uleb128 0x14
	.string	"REDUCTION_OPR_MPY"
	.sleb128 4
	.uleb128 0x14
	.string	"REDUCTION_OPR_SUB"
	.sleb128 5
	.uleb128 0x14
	.string	"REDUCTION_OPR_CAND"
	.sleb128 6
	.uleb128 0x14
	.string	"REDUCTION_OPR_CIOR"
	.sleb128 7
	.byte	0x0
	.uleb128 0x15
	.long	0x4f19
	.string	"reduction"
	.byte	0x8
	.byte	0x10
	.byte	0x54
	.uleb128 0x16
	.string	"reduction_op"
	.byte	0x10
	.byte	0x55
	.long	0x4e21
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF28
	.byte	0x10
	.byte	0x56
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x4f5c
	.string	"default_type"
	.byte	0x4
	.byte	0x10
	.byte	0x5a
	.uleb128 0x14
	.string	"default_shared"
	.sleb128 0
	.uleb128 0x14
	.string	"default_none"
	.sleb128 1
	.uleb128 0x14
	.string	"no_default"
	.sleb128 2
	.byte	0x0
	.uleb128 0x13
	.long	0x4fde
	.string	"parallel_clause_type"
	.byte	0x4
	.byte	0x10
	.byte	0x61
	.uleb128 0x14
	.string	"p_if"
	.sleb128 0
	.uleb128 0x14
	.string	"p_num_threads"
	.sleb128 1
	.uleb128 0x14
	.string	"p_private"
	.sleb128 2
	.uleb128 0x14
	.string	"p_firstprivate"
	.sleb128 3
	.uleb128 0x14
	.string	"p_shared"
	.sleb128 4
	.uleb128 0x14
	.string	"p_default"
	.sleb128 5
	.uleb128 0x14
	.string	"p_reduction"
	.sleb128 6
	.uleb128 0x14
	.string	"p_copyin"
	.sleb128 7
	.byte	0x0
	.uleb128 0x5
	.long	0x5028
	.string	"parallel_clause_node"
	.byte	0x8
	.byte	0x10
	.byte	0x6d
	.uleb128 0x24
	.long	.LASF29
	.byte	0x10
	.byte	0x6e
	.long	0xd6
	.uleb128 0x24
	.long	.LASF28
	.byte	0x10
	.byte	0x6f
	.long	0xd6
	.uleb128 0x24
	.long	.LASF30
	.byte	0x10
	.byte	0x70
	.long	0x4f19
	.uleb128 0x24
	.long	.LASF31
	.byte	0x10
	.byte	0x71
	.long	0x4ee1
	.byte	0x0
	.uleb128 0x15
	.long	0x5070
	.string	"parallel_clause_list"
	.byte	0x10
	.byte	0x10
	.byte	0x75
	.uleb128 0x18
	.long	.LASF2
	.byte	0x10
	.byte	0x76
	.long	0x4f5c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF32
	.byte	0x10
	.byte	0x77
	.long	0x4fde
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF33
	.byte	0x10
	.byte	0x78
	.long	0x5070
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5028
	.uleb128 0x13
	.long	0x50ce
	.string	"schedule_kind_type"
	.byte	0x4
	.byte	0x10
	.byte	0x7c
	.uleb128 0x14
	.string	"SK_STATIC"
	.sleb128 0
	.uleb128 0x14
	.string	"SK_DYNAMIC"
	.sleb128 1
	.uleb128 0x14
	.string	"SK_GUIDED"
	.sleb128 2
	.uleb128 0x14
	.string	"SK_RUNTIME"
	.sleb128 3
	.uleb128 0x14
	.string	"SK_NONE"
	.sleb128 4
	.byte	0x0
	.uleb128 0x15
	.long	0x50fe
	.string	"schedule_2"
	.byte	0x8
	.byte	0x10
	.byte	0x85
	.uleb128 0x18
	.long	.LASF34
	.byte	0x10
	.byte	0x86
	.long	0x5076
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF13
	.byte	0x10
	.byte	0x87
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x17
	.long	0x517b
	.long	.LASF35
	.byte	0x4
	.byte	0x10
	.byte	0x8b
	.uleb128 0x14
	.string	"f_private"
	.sleb128 0
	.uleb128 0x14
	.string	"f_firstprivate"
	.sleb128 1
	.uleb128 0x14
	.string	"f_lastprivate"
	.sleb128 2
	.uleb128 0x14
	.string	"f_reduction"
	.sleb128 3
	.uleb128 0x14
	.string	"f_ordered"
	.sleb128 4
	.uleb128 0x14
	.string	"f_schedule_1"
	.sleb128 5
	.uleb128 0x14
	.string	"f_schedule_2"
	.sleb128 6
	.uleb128 0x14
	.string	"f_nowait"
	.sleb128 7
	.byte	0x0
	.uleb128 0x5
	.long	0x51e1
	.string	"for_clause_node"
	.byte	0x8
	.byte	0x10
	.byte	0x97
	.uleb128 0x24
	.long	.LASF28
	.byte	0x10
	.byte	0x98
	.long	0xd6
	.uleb128 0x24
	.long	.LASF29
	.byte	0x10
	.byte	0x99
	.long	0xd6
	.uleb128 0x24
	.long	.LASF31
	.byte	0x10
	.byte	0x9a
	.long	0x4ee1
	.uleb128 0x24
	.long	.LASF34
	.byte	0x10
	.byte	0x9b
	.long	0x5076
	.uleb128 0x24
	.long	.LASF36
	.byte	0x10
	.byte	0x9c
	.long	0x50ce
	.uleb128 0x25
	.string	"ordered_nowait"
	.byte	0x10
	.byte	0x9d
	.long	0x1d3
	.byte	0x0
	.uleb128 0x15
	.long	0x5224
	.string	"for_clause_list"
	.byte	0x10
	.byte	0x10
	.byte	0xa1
	.uleb128 0x18
	.long	.LASF2
	.byte	0x10
	.byte	0xa2
	.long	0x50fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF32
	.byte	0x10
	.byte	0xa3
	.long	0x517b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF33
	.byte	0x10
	.byte	0xa4
	.long	0x5224
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x51e1
	.uleb128 0x17
	.long	0x52a0
	.long	.LASF37
	.byte	0x4
	.byte	0x10
	.byte	0xa8
	.uleb128 0x14
	.string	"sections_private"
	.sleb128 0
	.uleb128 0x14
	.string	"sections_firstprivate"
	.sleb128 1
	.uleb128 0x14
	.string	"sections_lastprivate"
	.sleb128 2
	.uleb128 0x14
	.string	"sections_reduction"
	.sleb128 3
	.uleb128 0x14
	.string	"sections_nowait"
	.sleb128 4
	.byte	0x0
	.uleb128 0x5
	.long	0x52e2
	.string	"sections_clause_node"
	.byte	0x8
	.byte	0x10
	.byte	0xb1
	.uleb128 0x24
	.long	.LASF28
	.byte	0x10
	.byte	0xb2
	.long	0xd6
	.uleb128 0x24
	.long	.LASF31
	.byte	0x10
	.byte	0xb3
	.long	0x4ee1
	.uleb128 0x25
	.string	"nowait"
	.byte	0x10
	.byte	0xb4
	.long	0x1d3
	.byte	0x0
	.uleb128 0x15
	.long	0x532a
	.string	"sections_clause_list"
	.byte	0x10
	.byte	0x10
	.byte	0xb8
	.uleb128 0x18
	.long	.LASF2
	.byte	0x10
	.byte	0xb9
	.long	0x522a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF32
	.byte	0x10
	.byte	0xba
	.long	0x52a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF33
	.byte	0x10
	.byte	0xbb
	.long	0x532a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x52e2
	.uleb128 0x17
	.long	0x5389
	.long	.LASF38
	.byte	0x4
	.byte	0x10
	.byte	0xbf
	.uleb128 0x14
	.string	"single_private"
	.sleb128 0
	.uleb128 0x14
	.string	"single_firstprivate"
	.sleb128 1
	.uleb128 0x14
	.string	"single_copyprivate"
	.sleb128 2
	.uleb128 0x14
	.string	"single_nowait"
	.sleb128 3
	.byte	0x0
	.uleb128 0x5
	.long	0x53be
	.string	"single_clause_node"
	.byte	0x4
	.byte	0x10
	.byte	0xc7
	.uleb128 0x24
	.long	.LASF28
	.byte	0x10
	.byte	0xc8
	.long	0xd6
	.uleb128 0x25
	.string	"nowait"
	.byte	0x10
	.byte	0xc9
	.long	0x1d3
	.byte	0x0
	.uleb128 0x15
	.long	0x5404
	.string	"single_clause_list"
	.byte	0xc
	.byte	0x10
	.byte	0xcd
	.uleb128 0x18
	.long	.LASF2
	.byte	0x10
	.byte	0xce
	.long	0x5330
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF32
	.byte	0x10
	.byte	0xcf
	.long	0x5389
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF33
	.byte	0x10
	.byte	0xd0
	.long	0x5404
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x53be
	.uleb128 0x17
	.long	0x54f9
	.long	.LASF39
	.byte	0x4
	.byte	0x10
	.byte	0xd4
	.uleb128 0x14
	.string	"p_for_if"
	.sleb128 0
	.uleb128 0x14
	.string	"p_for_num_threads"
	.sleb128 1
	.uleb128 0x14
	.string	"p_for_private"
	.sleb128 2
	.uleb128 0x14
	.string	"p_for_copyprivate"
	.sleb128 3
	.uleb128 0x14
	.string	"p_for_firstprivate"
	.sleb128 4
	.uleb128 0x14
	.string	"p_for_lastprivate"
	.sleb128 5
	.uleb128 0x14
	.string	"p_for_shared"
	.sleb128 6
	.uleb128 0x14
	.string	"p_for_default"
	.sleb128 7
	.uleb128 0x14
	.string	"p_for_reduction"
	.sleb128 8
	.uleb128 0x14
	.string	"p_for_copyin"
	.sleb128 9
	.uleb128 0x14
	.string	"p_for_ordered"
	.sleb128 10
	.uleb128 0x14
	.string	"p_for_schedule_1"
	.sleb128 11
	.uleb128 0x14
	.string	"p_for_schedule_2"
	.sleb128 12
	.byte	0x0
	.uleb128 0x5
	.long	0x556c
	.string	"parallel_for_clause_node"
	.byte	0x8
	.byte	0x10
	.byte	0xe5
	.uleb128 0x24
	.long	.LASF29
	.byte	0x10
	.byte	0xe6
	.long	0xd6
	.uleb128 0x24
	.long	.LASF28
	.byte	0x10
	.byte	0xe7
	.long	0xd6
	.uleb128 0x24
	.long	.LASF30
	.byte	0x10
	.byte	0xe8
	.long	0x4f19
	.uleb128 0x24
	.long	.LASF31
	.byte	0x10
	.byte	0xe9
	.long	0x4ee1
	.uleb128 0x24
	.long	.LASF34
	.byte	0x10
	.byte	0xea
	.long	0x5076
	.uleb128 0x24
	.long	.LASF36
	.byte	0x10
	.byte	0xeb
	.long	0x50ce
	.uleb128 0x25
	.string	"ordered"
	.byte	0x10
	.byte	0xec
	.long	0x1d3
	.byte	0x0
	.uleb128 0x15
	.long	0x55b8
	.string	"parallel_for_clause_list"
	.byte	0x10
	.byte	0x10
	.byte	0xf0
	.uleb128 0x18
	.long	.LASF2
	.byte	0x10
	.byte	0xf1
	.long	0x540a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF32
	.byte	0x10
	.byte	0xf2
	.long	0x54f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF33
	.byte	0x10
	.byte	0xf3
	.long	0x55b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x556c
	.uleb128 0x17
	.long	0x56a9
	.long	.LASF40
	.byte	0x4
	.byte	0x10
	.byte	0xf7
	.uleb128 0x14
	.string	"p_sections_if"
	.sleb128 0
	.uleb128 0x14
	.string	"p_sections_num_threads"
	.sleb128 1
	.uleb128 0x14
	.string	"p_sections_private"
	.sleb128 2
	.uleb128 0x14
	.string	"p_sections_copyprivate"
	.sleb128 3
	.uleb128 0x14
	.string	"p_sections_firstprivate"
	.sleb128 4
	.uleb128 0x14
	.string	"p_sections_lastprivate"
	.sleb128 5
	.uleb128 0x14
	.string	"p_sections_shared"
	.sleb128 6
	.uleb128 0x14
	.string	"p_sections_default"
	.sleb128 7
	.uleb128 0x14
	.string	"p_sections_reduction"
	.sleb128 8
	.uleb128 0x14
	.string	"p_sections_copyin"
	.sleb128 9
	.byte	0x0
	.uleb128 0x21
	.long	0x5701
	.string	"parallel_sections_clause_node"
	.byte	0x8
	.byte	0x10
	.value	0x105
	.uleb128 0x6
	.long	.LASF29
	.byte	0x10
	.value	0x106
	.long	0xd6
	.uleb128 0x6
	.long	.LASF28
	.byte	0x10
	.value	0x107
	.long	0xd6
	.uleb128 0x6
	.long	.LASF30
	.byte	0x10
	.value	0x108
	.long	0x4f19
	.uleb128 0x6
	.long	.LASF31
	.byte	0x10
	.value	0x109
	.long	0x4ee1
	.byte	0x0
	.uleb128 0xa
	.long	0x5756
	.string	"parallel_sections_clause_list"
	.byte	0x10
	.byte	0x10
	.value	0x10d
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x10
	.value	0x10e
	.long	0x55be
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF32
	.byte	0x10
	.value	0x10f
	.long	0x56a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x10
	.value	0x110
	.long	0x5756
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5701
	.uleb128 0xa
	.long	0x57ab
	.string	"tree_omp"
	.byte	0x18
	.byte	0x6
	.value	0x864
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x6
	.value	0x865
	.long	0x2ce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"choice"
	.byte	0x6
	.value	0x866
	.long	0x4ba3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"omp_clause_list"
	.byte	0x6
	.value	0x867
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x8
	.long	0x1c0
	.uleb128 0x9
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x3
	.byte	0x4
	.long	0xd6
	.uleb128 0x3
	.byte	0x4
	.long	0x57b0
	.uleb128 0x15
	.long	0x582a
	.string	"var_refs_queue"
	.byte	0x10
	.byte	0xa
	.byte	0x17
	.uleb128 0x16
	.string	"modified"
	.byte	0xa
	.byte	0x18
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"promoted_mode"
	.byte	0xa
	.byte	0x19
	.long	0x3da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"unsignedp"
	.byte	0xa
	.byte	0x1a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF33
	.byte	0xa
	.byte	0x1b
	.long	0x582a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x57c5
	.uleb128 0x1d
	.long	0x5878
	.long	.LASF41
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.uleb128 0x16
	.string	"first"
	.byte	0xa
	.byte	0x26
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"last"
	.byte	0xa
	.byte	0x27
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF42
	.byte	0xa
	.byte	0x28
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF33
	.byte	0xa
	.byte	0x29
	.long	0x5878
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5830
	.uleb128 0x3
	.byte	0x4
	.long	0x3203
	.uleb128 0x15
	.long	0x59d3
	.string	"emit_status"
	.byte	0x34
	.byte	0xa
	.byte	0x37
	.uleb128 0x16
	.string	"x_reg_rtx_no"
	.byte	0xa
	.byte	0x3a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"x_first_label_num"
	.byte	0xa
	.byte	0x3d
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"x_first_insn"
	.byte	0xa
	.byte	0x44
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"x_last_insn"
	.byte	0xa
	.byte	0x45
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF42
	.byte	0xa
	.byte	0x4a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF41
	.byte	0xa
	.byte	0x50
	.long	0x5878
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"x_cur_insn_uid"
	.byte	0xa
	.byte	0x54
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"x_last_linenum"
	.byte	0xa
	.byte	0x58
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"x_last_filename"
	.byte	0xa
	.byte	0x59
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.string	"regno_pointer_align_length"
	.byte	0xa
	.byte	0x5f
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x16
	.string	"regno_pointer_align"
	.byte	0xa
	.byte	0x65
	.long	0x3a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.string	"regno_decl"
	.byte	0xa
	.byte	0x69
	.long	0x57b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x16
	.string	"x_regno_reg_rtx"
	.byte	0xa
	.byte	0x70
	.long	0x59d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x9c
	.uleb128 0x15
	.long	0x5ab9
	.string	"expr_status"
	.byte	0x1c
	.byte	0xa
	.byte	0x7d
	.uleb128 0x16
	.string	"x_pending_stack_adjust"
	.byte	0xa
	.byte	0x80
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"x_inhibit_defer_pop"
	.byte	0xa
	.byte	0x91
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"x_stack_pointer_delta"
	.byte	0xa
	.byte	0x97
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"x_saveregs_value"
	.byte	0xa
	.byte	0x9c
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"x_apply_args_value"
	.byte	0xa
	.byte	0x9f
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"x_forced_labels"
	.byte	0xa
	.byte	0xa2
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"x_pending_chain"
	.byte	0xa
	.byte	0xa5
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x26
	.long	0x5b23
	.long	.LASF26
	.byte	0x4
	.byte	0xa
	.value	0x1f1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_UNLIKELY_EXECUTED"
	.sleb128 0
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_NORMAL"
	.sleb128 1
	.uleb128 0x14
	.string	"FUNCTION_FREQUENCY_HOT"
	.sleb128 2
	.byte	0x0
	.uleb128 0x4
	.string	"eh_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b23
	.uleb128 0x4
	.string	"stmt_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b35
	.uleb128 0x3
	.byte	0x4
	.long	0x59d9
	.uleb128 0x3
	.byte	0x4
	.long	0x5884
	.uleb128 0x4
	.string	"varasm_status"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b55
	.uleb128 0x4
	.string	"initial_value_struct"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b6b
	.uleb128 0x4
	.string	"temp_slot"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b88
	.uleb128 0x4
	.string	"machine_function"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x5b9a
	.uleb128 0xa
	.long	0x5de9
	.string	"language_function"
	.byte	0x64
	.byte	0xa
	.value	0x184
	.uleb128 0xb
	.string	"base"
	.byte	0xc
	.value	0x370
	.long	0x6714
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_dtor_label"
	.byte	0xc
	.value	0x372
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"x_current_class_ptr"
	.byte	0xc
	.value	0x373
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"x_current_class_ref"
	.byte	0xc
	.value	0x374
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"x_eh_spec_block"
	.byte	0xc
	.value	0x375
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"x_in_charge_parm"
	.byte	0xc
	.value	0x376
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_vtt_parm"
	.byte	0xc
	.value	0x377
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_return_value"
	.byte	0xc
	.value	0x378
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"returns_value"
	.byte	0xc
	.value	0x37a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"returns_null"
	.byte	0xc
	.value	0x37b
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"returns_abnormally"
	.byte	0xc
	.value	0x37c
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"in_function_try_handler"
	.byte	0xc
	.value	0x37d
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"in_base_initializer"
	.byte	0xc
	.value	0x37e
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.string	"x_expanding_p"
	.byte	0xc
	.value	0x37f
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1f
	.string	"can_throw"
	.byte	0xc
	.value	0x382
	.long	0x57b0
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"x_named_label_uses"
	.byte	0xc
	.value	0x384
	.long	0x6af1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.string	"x_named_labels"
	.byte	0xc
	.value	0x385
	.long	0x6b0a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1b
	.long	.LASF43
	.byte	0xc
	.value	0x386
	.long	0x67b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.string	"x_local_names"
	.byte	0xc
	.value	0x387
	.long	0x62c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1b
	.long	.LASF24
	.byte	0xc
	.value	0x389
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.string	"unparsed_inlines"
	.byte	0xc
	.value	0x38a
	.long	0x6bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x5bb3
	.uleb128 0x15
	.long	0x5e25
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0xe
	.byte	0x24
	.uleb128 0x16
	.string	"rtx"
	.byte	0xe
	.byte	0x32
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"age"
	.byte	0xe
	.byte	0x36
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x5fc0
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0xe
	.byte	0x3c
	.uleb128 0x14
	.string	"VARRAY_DATA_C"
	.sleb128 0
	.uleb128 0x14
	.string	"VARRAY_DATA_UC"
	.sleb128 1
	.uleb128 0x14
	.string	"VARRAY_DATA_S"
	.sleb128 2
	.uleb128 0x14
	.string	"VARRAY_DATA_US"
	.sleb128 3
	.uleb128 0x14
	.string	"VARRAY_DATA_I"
	.sleb128 4
	.uleb128 0x14
	.string	"VARRAY_DATA_U"
	.sleb128 5
	.uleb128 0x14
	.string	"VARRAY_DATA_L"
	.sleb128 6
	.uleb128 0x14
	.string	"VARRAY_DATA_UL"
	.sleb128 7
	.uleb128 0x14
	.string	"VARRAY_DATA_HINT"
	.sleb128 8
	.uleb128 0x14
	.string	"VARRAY_DATA_UHINT"
	.sleb128 9
	.uleb128 0x14
	.string	"VARRAY_DATA_GENERIC"
	.sleb128 10
	.uleb128 0x14
	.string	"VARRAY_DATA_CPTR"
	.sleb128 11
	.uleb128 0x14
	.string	"VARRAY_DATA_RTX"
	.sleb128 12
	.uleb128 0x14
	.string	"VARRAY_DATA_RTVEC"
	.sleb128 13
	.uleb128 0x14
	.string	"VARRAY_DATA_TREE"
	.sleb128 14
	.uleb128 0x14
	.string	"VARRAY_DATA_BITMAP"
	.sleb128 15
	.uleb128 0x14
	.string	"VARRAY_DATA_REG"
	.sleb128 16
	.uleb128 0x14
	.string	"VARRAY_DATA_CONST_EQUIV"
	.sleb128 17
	.uleb128 0x14
	.string	"VARRAY_DATA_BB"
	.sleb128 18
	.uleb128 0x14
	.string	"VARRAY_DATA_TE"
	.sleb128 19
	.uleb128 0x14
	.string	"NUM_VARRAY_DATA"
	.sleb128 20
	.byte	0x0
	.uleb128 0x5
	.long	0x60bc
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0xe
	.byte	0x55
	.uleb128 0x25
	.string	"c"
	.byte	0xe
	.byte	0x56
	.long	0x3ba
	.uleb128 0x25
	.string	"uc"
	.byte	0xe
	.byte	0x58
	.long	0x60bc
	.uleb128 0x25
	.string	"s"
	.byte	0xe
	.byte	0x5a
	.long	0x60cc
	.uleb128 0x25
	.string	"us"
	.byte	0xe
	.byte	0x5c
	.long	0x60dc
	.uleb128 0x25
	.string	"i"
	.byte	0xe
	.byte	0x5e
	.long	0x60ec
	.uleb128 0x25
	.string	"u"
	.byte	0xe
	.byte	0x60
	.long	0x60fc
	.uleb128 0x25
	.string	"l"
	.byte	0xe
	.byte	0x62
	.long	0x610c
	.uleb128 0x25
	.string	"ul"
	.byte	0xe
	.byte	0x64
	.long	0x611c
	.uleb128 0x25
	.string	"hint"
	.byte	0xe
	.byte	0x66
	.long	0x612c
	.uleb128 0x25
	.string	"uhint"
	.byte	0xe
	.byte	0x68
	.long	0x613c
	.uleb128 0x25
	.string	"generic"
	.byte	0xe
	.byte	0x6a
	.long	0x614c
	.uleb128 0x25
	.string	"cptr"
	.byte	0xe
	.byte	0x6c
	.long	0x615c
	.uleb128 0x25
	.string	"rtx"
	.byte	0xe
	.byte	0x6e
	.long	0x616c
	.uleb128 0x25
	.string	"rtvec"
	.byte	0xe
	.byte	0x70
	.long	0x617c
	.uleb128 0x25
	.string	"tree"
	.byte	0xe
	.byte	0x72
	.long	0x618c
	.uleb128 0x25
	.string	"bitmap"
	.byte	0xe
	.byte	0x74
	.long	0x619c
	.uleb128 0x25
	.string	"reg"
	.byte	0xe
	.byte	0x76
	.long	0x61c4
	.uleb128 0x25
	.string	"const_equiv"
	.byte	0xe
	.byte	0x78
	.long	0x61e9
	.uleb128 0x25
	.string	"bb"
	.byte	0xe
	.byte	0x7a
	.long	0x61f9
	.uleb128 0x25
	.string	"te"
	.byte	0xe
	.byte	0x7c
	.long	0x6221
	.byte	0x0
	.uleb128 0xd
	.long	0x60cc
	.long	0x2f0
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x60dc
	.long	0x33b
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x60ec
	.long	0x301
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x60fc
	.long	0x1d3
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x610c
	.long	0x2ac
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x611c
	.long	0x373
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x612c
	.long	0x317
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x613c
	.long	0x348
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x614c
	.long	0x359
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x615c
	.long	0x37f
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x616c
	.long	0x381
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x617c
	.long	0xa7
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x618c
	.long	0xc4
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x619c
	.long	0xe2
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x61ac
	.long	0x61be
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"bitmap_head_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61ac
	.uleb128 0xd
	.long	0x61d4
	.long	0x61e3
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"reg_info_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x61d4
	.uleb128 0xd
	.long	0x61f9
	.long	0x5def
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x6209
	.long	0x621b
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"basic_block_def"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6209
	.uleb128 0xd
	.long	0x6231
	.long	0x623c
	.uleb128 0xe
	.long	0x2c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.string	"elt_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6231
	.uleb128 0x2
	.string	"varray_data"
	.byte	0xe
	.byte	0x7e
	.long	0x5fc0
	.uleb128 0x15
	.long	0x62c9
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0xe
	.byte	0x81
	.uleb128 0x16
	.string	"num_elements"
	.byte	0xe
	.byte	0x82
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"elements_used"
	.byte	0xe
	.byte	0x83
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF2
	.byte	0xe
	.byte	0x85
	.long	0x5e25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"name"
	.byte	0xe
	.byte	0x86
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"data"
	.byte	0xe
	.byte	0x87
	.long	0x6242
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0xe
	.byte	0x8a
	.long	0x62dc
	.uleb128 0x3
	.byte	0x4
	.long	0x6255
	.uleb128 0x13
	.long	0x6689
	.string	"cpp_ttype"
	.byte	0x4
	.byte	0x11
	.byte	0x97
	.uleb128 0x14
	.string	"CPP_EQ"
	.sleb128 0
	.uleb128 0x14
	.string	"CPP_NOT"
	.sleb128 1
	.uleb128 0x14
	.string	"CPP_GREATER"
	.sleb128 2
	.uleb128 0x14
	.string	"CPP_LESS"
	.sleb128 3
	.uleb128 0x14
	.string	"CPP_PLUS"
	.sleb128 4
	.uleb128 0x14
	.string	"CPP_MINUS"
	.sleb128 5
	.uleb128 0x14
	.string	"CPP_MULT"
	.sleb128 6
	.uleb128 0x14
	.string	"CPP_DIV"
	.sleb128 7
	.uleb128 0x14
	.string	"CPP_MOD"
	.sleb128 8
	.uleb128 0x14
	.string	"CPP_AND"
	.sleb128 9
	.uleb128 0x14
	.string	"CPP_OR"
	.sleb128 10
	.uleb128 0x14
	.string	"CPP_XOR"
	.sleb128 11
	.uleb128 0x14
	.string	"CPP_RSHIFT"
	.sleb128 12
	.uleb128 0x14
	.string	"CPP_LSHIFT"
	.sleb128 13
	.uleb128 0x14
	.string	"CPP_MIN"
	.sleb128 14
	.uleb128 0x14
	.string	"CPP_MAX"
	.sleb128 15
	.uleb128 0x14
	.string	"CPP_COMPL"
	.sleb128 16
	.uleb128 0x14
	.string	"CPP_AND_AND"
	.sleb128 17
	.uleb128 0x14
	.string	"CPP_OR_OR"
	.sleb128 18
	.uleb128 0x14
	.string	"CPP_QUERY"
	.sleb128 19
	.uleb128 0x14
	.string	"CPP_COLON"
	.sleb128 20
	.uleb128 0x14
	.string	"CPP_COMMA"
	.sleb128 21
	.uleb128 0x14
	.string	"CPP_OPEN_PAREN"
	.sleb128 22
	.uleb128 0x14
	.string	"CPP_CLOSE_PAREN"
	.sleb128 23
	.uleb128 0x14
	.string	"CPP_EOF"
	.sleb128 24
	.uleb128 0x14
	.string	"CPP_EQ_EQ"
	.sleb128 25
	.uleb128 0x14
	.string	"CPP_NOT_EQ"
	.sleb128 26
	.uleb128 0x14
	.string	"CPP_GREATER_EQ"
	.sleb128 27
	.uleb128 0x14
	.string	"CPP_LESS_EQ"
	.sleb128 28
	.uleb128 0x14
	.string	"CPP_PLUS_EQ"
	.sleb128 29
	.uleb128 0x14
	.string	"CPP_MINUS_EQ"
	.sleb128 30
	.uleb128 0x14
	.string	"CPP_MULT_EQ"
	.sleb128 31
	.uleb128 0x14
	.string	"CPP_DIV_EQ"
	.sleb128 32
	.uleb128 0x14
	.string	"CPP_MOD_EQ"
	.sleb128 33
	.uleb128 0x14
	.string	"CPP_AND_EQ"
	.sleb128 34
	.uleb128 0x14
	.string	"CPP_OR_EQ"
	.sleb128 35
	.uleb128 0x14
	.string	"CPP_XOR_EQ"
	.sleb128 36
	.uleb128 0x14
	.string	"CPP_RSHIFT_EQ"
	.sleb128 37
	.uleb128 0x14
	.string	"CPP_LSHIFT_EQ"
	.sleb128 38
	.uleb128 0x14
	.string	"CPP_MIN_EQ"
	.sleb128 39
	.uleb128 0x14
	.string	"CPP_MAX_EQ"
	.sleb128 40
	.uleb128 0x14
	.string	"CPP_HASH"
	.sleb128 41
	.uleb128 0x14
	.string	"CPP_PASTE"
	.sleb128 42
	.uleb128 0x14
	.string	"CPP_OPEN_SQUARE"
	.sleb128 43
	.uleb128 0x14
	.string	"CPP_CLOSE_SQUARE"
	.sleb128 44
	.uleb128 0x14
	.string	"CPP_OPEN_BRACE"
	.sleb128 45
	.uleb128 0x14
	.string	"CPP_CLOSE_BRACE"
	.sleb128 46
	.uleb128 0x14
	.string	"CPP_SEMICOLON"
	.sleb128 47
	.uleb128 0x14
	.string	"CPP_ELLIPSIS"
	.sleb128 48
	.uleb128 0x14
	.string	"CPP_PLUS_PLUS"
	.sleb128 49
	.uleb128 0x14
	.string	"CPP_MINUS_MINUS"
	.sleb128 50
	.uleb128 0x14
	.string	"CPP_DEREF"
	.sleb128 51
	.uleb128 0x14
	.string	"CPP_DOT"
	.sleb128 52
	.uleb128 0x14
	.string	"CPP_SCOPE"
	.sleb128 53
	.uleb128 0x14
	.string	"CPP_DEREF_STAR"
	.sleb128 54
	.uleb128 0x14
	.string	"CPP_DOT_STAR"
	.sleb128 55
	.uleb128 0x14
	.string	"CPP_ATSIGN"
	.sleb128 56
	.uleb128 0x14
	.string	"CPP_NAME"
	.sleb128 57
	.uleb128 0x14
	.string	"CPP_NUMBER"
	.sleb128 58
	.uleb128 0x14
	.string	"CPP_CHAR"
	.sleb128 59
	.uleb128 0x14
	.string	"CPP_WCHAR"
	.sleb128 60
	.uleb128 0x14
	.string	"CPP_OTHER"
	.sleb128 61
	.uleb128 0x14
	.string	"CPP_STRING"
	.sleb128 62
	.uleb128 0x14
	.string	"CPP_WSTRING"
	.sleb128 63
	.uleb128 0x14
	.string	"CPP_HEADER_NAME"
	.sleb128 64
	.uleb128 0x14
	.string	"CPP_COMMENT"
	.sleb128 65
	.uleb128 0x14
	.string	"CPP_MACRO_ARG"
	.sleb128 66
	.uleb128 0x14
	.string	"CPP_PADDING"
	.sleb128 67
	.uleb128 0x14
	.string	"N_TTYPES"
	.sleb128 68
	.byte	0x0
	.uleb128 0xa
	.long	0x6714
	.string	"stmt_tree_s"
	.byte	0x10
	.byte	0xd
	.value	0x101
	.uleb128 0xb
	.string	"x_last_stmt"
	.byte	0xd
	.value	0x103
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_last_expr_type"
	.byte	0xd
	.value	0x106
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"x_last_expr_filename"
	.byte	0xd
	.value	0x108
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"stmts_are_full_exprs_p"
	.byte	0xd
	.value	0x117
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.long	0x675f
	.string	"c_language_function"
	.byte	0x14
	.byte	0xd
	.value	0x11f
	.uleb128 0x1b
	.long	.LASF44
	.byte	0xd
	.value	0x122
	.long	0x6689
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"x_scope_stmt_stack"
	.byte	0xd
	.value	0x124
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xa
	.long	0x6793
	.string	"c_lang_decl"
	.byte	0x4
	.byte	0xd
	.value	0x169
	.uleb128 0x1f
	.string	"declared_inline"
	.byte	0xd
	.value	0x16a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x27
	.long	.LASF45
	.byte	0xc
	.byte	0xe4
	.long	0x679e
	.uleb128 0x1e
	.long	.LASF45
	.byte	0x1
	.uleb128 0x4
	.string	"cp_binding_level"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x67a4
	.uleb128 0xf
	.string	"binding_table"
	.byte	0xc
	.value	0x103
	.long	0x67d3
	.uleb128 0x3
	.byte	0x4
	.long	0x67d9
	.uleb128 0x4
	.string	"binding_table_s"
	.byte	0x1
	.uleb128 0xa
	.long	0x6842
	.string	"flagged_type_tree_s"
	.byte	0xc
	.byte	0xc
	.value	0x134
	.uleb128 0xb
	.string	"t"
	.byte	0xc
	.value	0x135
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"new_type_flag"
	.byte	0xc
	.value	0x136
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"lookups"
	.byte	0xc
	.value	0x137
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.string	"flagged_type_tree"
	.byte	0xc
	.value	0x138
	.long	0x67eb
	.uleb128 0xa
	.long	0x6ace
	.string	"saved_scope"
	.byte	0x6c
	.byte	0xc
	.value	0x316
	.uleb128 0xb
	.string	"old_bindings"
	.byte	0xc
	.value	0x317
	.long	0x6ace
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"old_namespace"
	.byte	0xc
	.value	0x318
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"decl_ns_list"
	.byte	0xc
	.value	0x319
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"class_name"
	.byte	0xc
	.value	0x31a
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"class_type"
	.byte	0xc
	.value	0x31b
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"access_specifier"
	.byte	0xc
	.value	0x31c
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"function_decl"
	.byte	0xc
	.value	0x31d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"lang_base"
	.byte	0xc
	.value	0x31e
	.long	0x62c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"lang_name"
	.byte	0xc
	.value	0x31f
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"template_parms"
	.byte	0xc
	.value	0x320
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"x_previous_class_type"
	.byte	0xc
	.value	0x321
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"x_previous_class_values"
	.byte	0xc
	.value	0x322
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"x_saved_tree"
	.byte	0xc
	.value	0x323
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"lookups"
	.byte	0xc
	.value	0x324
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"last_parms"
	.byte	0xc
	.value	0x325
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"x_processing_template_decl"
	.byte	0xc
	.value	0x327
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.string	"x_processing_specialization"
	.byte	0xc
	.value	0x328
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"x_processing_explicit_instantiation"
	.byte	0xc
	.value	0x329
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.string	"need_pop_function_context"
	.byte	0xc
	.value	0x32a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1b
	.long	.LASF44
	.byte	0xc
	.value	0x32c
	.long	0x6689
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.string	"class_bindings"
	.byte	0xc
	.value	0x32e
	.long	0x67b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1b
	.long	.LASF43
	.byte	0xc
	.value	0x32f
	.long	0x67b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.string	"prev"
	.byte	0xc
	.value	0x331
	.long	0x6ad4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6793
	.uleb128 0x3
	.byte	0x4
	.long	0x685c
	.uleb128 0x4
	.string	"named_label_use_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6ada
	.uleb128 0x4
	.string	"named_label_list"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x6af7
	.uleb128 0xa
	.long	0x6bbf
	.string	"unparsed_text"
	.byte	0x24
	.byte	0xc
	.value	0x36a
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x55
	.long	0x6bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF1
	.byte	0x1
	.byte	0x56
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.byte	0x57
	.long	0x655
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.byte	0x58
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"tokens"
	.byte	0x1
	.byte	0x5a
	.long	0x79de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"last_chunk"
	.byte	0x1
	.byte	0x5c
	.long	0x79de
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"last_pos"
	.byte	0x1
	.byte	0x5d
	.long	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"cur_pos"
	.byte	0x1
	.byte	0x60
	.long	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x16
	.string	"cur_chunk"
	.byte	0x1
	.byte	0x61
	.long	0x79de
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x6b10
	.uleb128 0x28
	.long	0x6bff
	.string	"languages"
	.byte	0x4
	.byte	0xc
	.value	0x3f1
	.uleb128 0x14
	.string	"lang_c"
	.sleb128 0
	.uleb128 0x14
	.string	"lang_cplusplus"
	.sleb128 1
	.uleb128 0x14
	.string	"lang_java"
	.sleb128 2
	.byte	0x0
	.uleb128 0xa
	.long	0x6d1e
	.string	"lang_type_header"
	.byte	0x4
	.byte	0xc
	.value	0x464
	.uleb128 0x1f
	.string	"is_lang_type_class"
	.byte	0xc
	.value	0x465
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_type_conversion"
	.byte	0xc
	.value	0x467
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_init_ref"
	.byte	0xc
	.value	0x468
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_default_ctor"
	.byte	0xc
	.value	0x469
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"uses_multiple_inheritance"
	.byte	0xc
	.value	0x46a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"const_needs_init"
	.byte	0xc
	.value	0x46b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"ref_needs_init"
	.byte	0xc
	.value	0x46c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.string	"has_const_assign_ref"
	.byte	0xc
	.value	0x46d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x72f3
	.string	"lang_type_class"
	.byte	0x4c
	.byte	0xc
	.value	0x47e
	.uleb128 0xb
	.string	"h"
	.byte	0xc
	.value	0x47f
	.long	0x6bff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"align"
	.byte	0xc
	.value	0x481
	.long	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_mutable"
	.byte	0xc
	.value	0x483
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"com_interface"
	.byte	0xc
	.value	0x484
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"non_pod_class"
	.byte	0xc
	.value	0x485
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"nearly_empty_p"
	.byte	0xc
	.value	0x486
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF21
	.byte	0xc
	.value	0x487
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_assign_ref"
	.byte	0xc
	.value	0x488
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_new"
	.byte	0xc
	.value	0x489
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_array_new"
	.byte	0xc
	.value	0x48a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"gets_delete"
	.byte	0xc
	.value	0x48c
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_call_overloaded"
	.byte	0xc
	.value	0x48d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_array_ref_overloaded"
	.byte	0xc
	.value	0x48e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_arrow_overloaded"
	.byte	0xc
	.value	0x48f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF47
	.byte	0xc
	.value	0x490
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF48
	.byte	0xc
	.value	0x491
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"marks"
	.byte	0xc
	.value	0x493
	.long	0x2ac
	.byte	0x4
	.byte	0x6
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"vec_new_uses_cookie"
	.byte	0xc
	.value	0x494
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"declared_class"
	.byte	0xc
	.value	0x495
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"being_defined"
	.byte	0xc
	.value	0x497
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"redefined"
	.byte	0xc
	.value	0x498
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"debug_requested"
	.byte	0xc
	.value	0x499
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x20
	.long	.LASF49
	.byte	0xc
	.value	0x49a
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"got_semicolon"
	.byte	0xc
	.value	0x49b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"ptrmemfunc_flag"
	.byte	0xc
	.value	0x49c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"was_anonymous"
	.byte	0xc
	.value	0x49d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_real_assign_ref"
	.byte	0xc
	.value	0x49f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_const_init_ref"
	.byte	0xc
	.value	0x4a0
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_complex_init_ref"
	.byte	0xc
	.value	0x4a1
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_complex_assign_ref"
	.byte	0xc
	.value	0x4a2
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_abstract_assign_ref"
	.byte	0xc
	.value	0x4a3
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"non_aggregate"
	.byte	0xc
	.value	0x4a4
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"is_partial_instantiation"
	.byte	0xc
	.value	0x4a5
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"java_interface"
	.byte	0xc
	.value	0x4a6
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"anon_aggr"
	.byte	0xc
	.value	0x4a8
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"non_zero_init"
	.byte	0xc
	.value	0x4a9
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"empty_p"
	.byte	0xc
	.value	0x4aa
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"contains_empty_class_p"
	.byte	0xc
	.value	0x4ab
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"has_implicit_copy_constructor"
	.byte	0xc
	.value	0x4b7
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1f
	.string	"dummy"
	.byte	0xc
	.value	0x4b8
	.long	0x2ac
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"primary_base"
	.byte	0xc
	.value	0x4bd
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"vfields"
	.byte	0xc
	.value	0x4be
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"vcall_indices"
	.byte	0xc
	.value	0x4bf
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"vtables"
	.byte	0xc
	.value	0x4c0
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"typeinfo_var"
	.byte	0xc
	.value	0x4c1
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"vbases"
	.byte	0xc
	.value	0x4c2
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"nested_udts"
	.byte	0xc
	.value	0x4c3
	.long	0x67bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"as_base"
	.byte	0xc
	.value	0x4c4
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"pure_virtuals"
	.byte	0xc
	.value	0x4c5
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.string	"friend_classes"
	.byte	0xc
	.value	0x4c6
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.string	"methods"
	.byte	0xc
	.value	0x4c7
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.string	"key_method"
	.byte	0xc
	.value	0x4c8
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.string	"decl_list"
	.byte	0xc
	.value	0x4c9
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1b
	.long	.LASF50
	.byte	0xc
	.value	0x4ca
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1b
	.long	.LASF51
	.byte	0xc
	.value	0x4cb
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.string	"copy_constructor"
	.byte	0xc
	.value	0x4cf
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0xa
	.long	0x732d
	.string	"lang_type_ptrmem"
	.byte	0x8
	.byte	0xc
	.value	0x4d4
	.uleb128 0xb
	.string	"h"
	.byte	0xc
	.value	0x4d5
	.long	0x6bff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"record"
	.byte	0xc
	.value	0x4d6
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x21
	.long	0x7366
	.string	"lang_type_u"
	.byte	0x4c
	.byte	0xc
	.value	0x4dc
	.uleb128 0x7
	.string	"h"
	.byte	0xc
	.value	0x4dd
	.long	0x6bff
	.uleb128 0x7
	.string	"c"
	.byte	0xc
	.value	0x4de
	.long	0x6d1e
	.uleb128 0x7
	.string	"ptrmem"
	.byte	0xc
	.value	0x4df
	.long	0x72f3
	.byte	0x0
	.uleb128 0x21
	.long	0x7396
	.string	"lang_decl_u"
	.byte	0x4
	.byte	0xc
	.value	0x722
	.uleb128 0x6
	.long	.LASF50
	.byte	0xc
	.value	0x725
	.long	0xd6
	.uleb128 0x7
	.string	"level"
	.byte	0xc
	.value	0x728
	.long	0x67b7
	.byte	0x0
	.uleb128 0x21
	.long	0x73e7
	.string	"lang_decl_u2"
	.byte	0x4
	.byte	0xc
	.value	0x72b
	.uleb128 0x7
	.string	"access"
	.byte	0xc
	.value	0x72d
	.long	0xd6
	.uleb128 0x7
	.string	"discriminator"
	.byte	0xc
	.value	0x730
	.long	0x1d3
	.uleb128 0x7
	.string	"vcall_offset"
	.byte	0xc
	.value	0x734
	.long	0xd6
	.byte	0x0
	.uleb128 0xa
	.long	0x76c3
	.string	"lang_decl_flags"
	.byte	0x10
	.byte	0xc
	.value	0x703
	.uleb128 0xb
	.string	"base"
	.byte	0xc
	.value	0x704
	.long	0x675f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x20
	.long	.LASF25
	.byte	0xc
	.value	0x706
	.long	0x6bc5
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"operator_attr"
	.byte	0xc
	.value	0x708
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"constructor_attr"
	.byte	0xc
	.value	0x709
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"destructor_attr"
	.byte	0xc
	.value	0x70a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"friend_attr"
	.byte	0xc
	.value	0x70b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"static_function"
	.byte	0xc
	.value	0x70c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"pure_virtual"
	.byte	0xc
	.value	0x70d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_in_charge_parm_p"
	.byte	0xc
	.value	0x70e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"has_vtt_parm_p"
	.byte	0xc
	.value	0x70f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"deferred"
	.byte	0xc
	.value	0x711
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x20
	.long	.LASF49
	.byte	0xc
	.value	0x712
	.long	0x2ac
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"nonconverting"
	.byte	0xc
	.value	0x713
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"not_really_extern"
	.byte	0xc
	.value	0x714
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"needs_final_overrider"
	.byte	0xc
	.value	0x715
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"initialized_in_class"
	.byte	0xc
	.value	0x716
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"assignment_operator_p"
	.byte	0xc
	.value	0x717
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"global_ctor_p"
	.byte	0xc
	.value	0x719
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"global_dtor_p"
	.byte	0xc
	.value	0x71a
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"anticipated_p"
	.byte	0xc
	.value	0x71b
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"template_conv_p"
	.byte	0xc
	.value	0x71c
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"u1sel"
	.byte	0xc
	.value	0x71d
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"u2sel"
	.byte	0xc
	.value	0x71e
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"can_be_full"
	.byte	0xc
	.value	0x71f
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1f
	.string	"unused"
	.byte	0xc
	.value	0x720
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"u"
	.byte	0xc
	.value	0x729
	.long	0x7366
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"u2"
	.byte	0xc
	.value	0x735
	.long	0x7396
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x21
	.long	0x772c
	.string	"lang_decl_u3"
	.byte	0x4
	.byte	0xc
	.value	0x75c
	.uleb128 0x7
	.string	"sorted_fields"
	.byte	0xc
	.value	0x75d
	.long	0xd6
	.uleb128 0x7
	.string	"pending_inline_info"
	.byte	0xc
	.value	0x75e
	.long	0x6bbf
	.uleb128 0x7
	.string	"saved_language_function"
	.byte	0xc
	.value	0x760
	.long	0x5de9
	.byte	0x0
	.uleb128 0xa
	.long	0x7807
	.string	"full_lang_decl"
	.byte	0x24
	.byte	0xc
	.value	0x73f
	.uleb128 0x1b
	.long	.LASF51
	.byte	0xc
	.value	0x740
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1b
	.long	.LASF22
	.byte	0xc
	.value	0x745
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"cloned_function"
	.byte	0xc
	.value	0x748
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"delta"
	.byte	0xc
	.value	0x74c
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"named_return_object"
	.byte	0xc
	.value	0x751
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.string	"operator_code"
	.byte	0xc
	.value	0x756
	.long	0x667
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1f
	.string	"u3sel"
	.byte	0xc
	.value	0x758
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1f
	.string	"pending_inline_p"
	.byte	0xc
	.value	0x759
	.long	0x2ac
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.string	"u"
	.byte	0xc
	.value	0x761
	.long	0x76c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x21
	.long	0x7828
	.string	"lang_decl_u4"
	.byte	0x24
	.byte	0xc
	.value	0x73d
	.uleb128 0x7
	.string	"f"
	.byte	0xc
	.value	0x762
	.long	0x772c
	.byte	0x0
	.uleb128 0x21
	.long	0x7904
	.string	"YYSTYPE"
	.byte	0xc
	.byte	0x4
	.value	0x13a
	.uleb128 0x7
	.string	"itype"
	.byte	0x4
	.value	0x13b
	.long	0x373
	.uleb128 0x7
	.string	"ttype"
	.byte	0x4
	.value	0x13c
	.long	0xd6
	.uleb128 0x7
	.string	"strtype"
	.byte	0x4
	.value	0x13d
	.long	0x381
	.uleb128 0x7
	.string	"code"
	.byte	0x4
	.value	0x13e
	.long	0x667
	.uleb128 0x7
	.string	"ftype"
	.byte	0x4
	.value	0x13f
	.long	0x6842
	.uleb128 0x7
	.string	"pi"
	.byte	0x4
	.value	0x140
	.long	0x6bbf
	.uleb128 0x7
	.string	"red_op_type"
	.byte	0x4
	.value	0x141
	.long	0x4e21
	.uleb128 0x7
	.string	"sch_k_type"
	.byte	0x4
	.value	0x142
	.long	0x5076
	.uleb128 0x7
	.string	"pclause_type"
	.byte	0x4
	.value	0x143
	.long	0x5070
	.uleb128 0x6
	.long	.LASF35
	.byte	0x4
	.value	0x144
	.long	0x5224
	.uleb128 0x6
	.long	.LASF37
	.byte	0x4
	.value	0x145
	.long	0x532a
	.uleb128 0x6
	.long	.LASF38
	.byte	0x4
	.value	0x146
	.long	0x5404
	.uleb128 0x6
	.long	.LASF39
	.byte	0x4
	.value	0x147
	.long	0x55b8
	.uleb128 0x6
	.long	.LASF40
	.byte	0x4
	.value	0x148
	.long	0x5756
	.byte	0x0
	.uleb128 0xf
	.string	"YYSTYPE"
	.byte	0x3
	.value	0x142
	.long	0x7828
	.uleb128 0x15
	.long	0x7966
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0x16
	.byte	0x32
	.uleb128 0x16
	.string	"base"
	.byte	0x16
	.byte	0x33
	.long	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"nelt"
	.byte	0x16
	.byte	0x34
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"stride"
	.byte	0x16
	.byte	0x35
	.long	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"cb"
	.byte	0x16
	.byte	0x36
	.long	0x3a8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x9
	.string	"float"
	.byte	0x4
	.byte	0x4
	.uleb128 0x15
	.long	0x79ab
	.string	"token"
	.byte	0x14
	.byte	0x1
	.byte	0x3b
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.byte	0x3d
	.long	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"lineno"
	.byte	0x1
	.byte	0x3e
	.long	0x2ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0x3f
	.long	0x7904
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x29
	.long	0x79de
	.string	"token_chunk"
	.value	0x194
	.byte	0x1
	.byte	0x4e
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x4f
	.long	0x79de
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.string	"toks"
	.byte	0x1
	.byte	0x50
	.long	0x79e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79ab
	.uleb128 0xd
	.long	0x79f4
	.long	0x796f
	.uleb128 0xe
	.long	0x2c3
	.byte	0x13
	.byte	0x0
	.uleb128 0x15
	.long	0x7a66
	.string	"feed"
	.byte	0x50
	.byte	0x1
	.byte	0x67
	.uleb128 0x16
	.string	"input"
	.byte	0x1
	.byte	0x68
	.long	0x6bbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.byte	0x69
	.long	0x655
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.byte	0x6a
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0x6b
	.long	0x7904
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.byte	0x6c
	.long	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x18
	.long	.LASF55
	.byte	0x1
	.byte	0x6d
	.long	0x3203
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x6e
	.long	0x7a66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x79f4
	.uleb128 0x2a
	.byte	0x1
	.string	"init_spew"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x2b
	.long	0x7af4
	.string	"yylexstring"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST1
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.byte	0xfd
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"next_type"
	.byte	0x1
	.byte	0xff
	.long	0x62e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF33
	.byte	0x1
	.value	0x100
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x30
	.string	"strings"
	.byte	0x1
	.value	0x105
	.long	0x62c9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x796f
	.uleb128 0x31
	.long	0x7b44
	.string	"check_omp_string"
	.byte	0x1
	.value	0x120
	.byte	0x1
	.long	0x1d3
	.long	.LFB18
	.long	.LFE18
	.long	.LLST2
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x11f
	.long	0x381
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"status"
	.byte	0x1
	.value	0x11f
	.long	0x57bf
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x31
	.long	0x7bd7
	.string	"read_token"
	.byte	0x1
	.value	0x182
	.byte	0x1
	.long	0x1d3
	.long	.LFB19
	.long	.LFE19
	.long	.LLST3
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x181
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"retry"
	.byte	0x1
	.value	0x1eb
	.long	.L123
	.uleb128 0x34
	.long	0x7bc6
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x30
	.string	"omp_name"
	.byte	0x1
	.value	0x1d5
	.long	0x381
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"valid"
	.byte	0x1
	.value	0x1d6
	.long	0x57b0
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x30
	.string	"code"
	.byte	0x1
	.value	0x1d7
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x35
	.long	.LASF56
	.long	0x89ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.13850
	.byte	0x0
	.uleb128 0x36
	.long	0x7c27
	.string	"read_process_identifier"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.long	0x1d3
	.long	.LFB16
	.long	.LFE16
	.long	.LLST4
	.uleb128 0x2c
	.string	"pyylval"
	.byte	0x1
	.byte	0xd6
	.long	0x7c27
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"id"
	.byte	0x1
	.byte	0xd8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x7904
	.uleb128 0x37
	.long	0x7c85
	.byte	0x1
	.string	"end_input"
	.byte	0x1
	.value	0x21b
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST5
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x21c
	.long	0x7a66
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x223
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"__obj"
	.byte	0x1
	.value	0x223
	.long	0x37f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7d46
	.string	"scan_tokens"
	.byte	0x1
	.value	0x291
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST6
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.value	0x290
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x292
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"num"
	.byte	0x1
	.value	0x293
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF52
	.byte	0x1
	.value	0x294
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"pad_tokens"
	.byte	0x1
	.value	0x2b5
	.long	.L219
	.uleb128 0x34
	.long	0x7d1d
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x29c
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x29c
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x2b7
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x2b7
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7d77
	.string	"nth_token"
	.byte	0x1
	.value	0x23c
	.byte	0x1
	.long	0x7af4
	.long	.LFB23
	.long	.LFE23
	.long	.LLST7
	.uleb128 0x32
	.string	"n"
	.byte	0x1
	.value	0x23b
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x7df3
	.string	"shift_token"
	.byte	0x1
	.value	0x264
	.byte	0x1
	.long	0x1d3
	.long	.LFB25
	.long	.LFE25
	.long	.LLST8
	.uleb128 0x30
	.string	"point"
	.byte	0x1
	.value	0x265
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	0x7dca
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x265
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x266
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x266
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x7e25
	.string	"next_token"
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.long	0x1d3
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x24b
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x31
	.long	0x7e63
	.string	"num_tokens"
	.byte	0x1
	.value	0x232
	.byte	0x1
	.long	0x1d3
	.long	.LFB22
	.long	.LFE22
	.long	.LLST10
	.uleb128 0x2f
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x233
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.string	"see_typename"
	.byte	0x1
	.value	0x31c
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST11
	.uleb128 0x31
	.long	0x7ec8
	.string	"identifier_type"
	.byte	0x1
	.value	0x2c7
	.byte	0x1
	.long	0x1d3
	.long	.LFB29
	.long	.LFE29
	.long	.LLST12
	.uleb128 0x3a
	.long	.LASF1
	.byte	0x1
	.value	0x2c6
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"t"
	.byte	0x1
	.value	0x2c8
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3b
	.long	0x7f81
	.byte	0x1
	.string	"yylex"
	.byte	0x1
	.value	0x32c
	.byte	0x1
	.long	0x1d3
	.long	.LFB32
	.long	.LFE32
	.long	.LLST13
	.uleb128 0x30
	.string	"yychr"
	.byte	0x1
	.value	0x32d
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF58
	.byte	0x1
	.value	0x32e
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"just_saw_new"
	.byte	0x1
	.value	0x32f
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"just_saw_friend"
	.byte	0x1
	.value	0x330
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"retry"
	.byte	0x1
	.value	0x359
	.long	.L294
	.uleb128 0x34
	.long	0x7f67
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x30
	.string	"peek"
	.byte	0x1
	.value	0x366
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x30
	.string	"tok"
	.byte	0x1
	.value	0x3af
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x7fcd
	.string	"do_aggr"
	.byte	0x1
	.value	0x2f8
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST14
	.uleb128 0x30
	.string	"yc1"
	.byte	0x1
	.value	0x2f9
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"yc2"
	.byte	0x1
	.value	0x2f9
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF56
	.long	0x89d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14242
	.byte	0x0
	.uleb128 0x38
	.long	0x801b
	.string	"consume_token"
	.byte	0x1
	.value	0x26e
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST15
	.uleb128 0x2f
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x271
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"__obj"
	.byte	0x1
	.value	0x271
	.long	0x37f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x8075
	.byte	0x1
	.string	"yyungetc"
	.byte	0x1
	.value	0x3c8
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST16
	.uleb128 0x32
	.string	"ch"
	.byte	0x1
	.value	0x3c6
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"rescan"
	.byte	0x1
	.value	0x3c7
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x30
	.string	"fake"
	.byte	0x1
	.value	0x3cc
	.long	0x796f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.long	0x8104
	.string	"push_token"
	.byte	0x1
	.value	0x27c
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST17
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x27b
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x30
	.string	"active"
	.byte	0x1
	.value	0x27f
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	0x80da
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x27f
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2f
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x30
	.string	"__o"
	.byte	0x1
	.value	0x280
	.long	0x587e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.value	0x280
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x8183
	.string	"frob_id"
	.byte	0x1
	.value	0x3e1
	.byte	0x1
	.long	0x1d3
	.long	.LFB34
	.long	.LFE34
	.long	.LLST18
	.uleb128 0x32
	.string	"yyc"
	.byte	0x1
	.value	0x3de
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"peek"
	.byte	0x1
	.value	0x3df
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.string	"idp"
	.byte	0x1
	.value	0x3e0
	.long	0x57b9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"trrr"
	.byte	0x1
	.value	0x3e2
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF58
	.byte	0x1
	.value	0x3e3
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.long	.LASF56
	.long	0x89d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14398
	.byte	0x0
	.uleb128 0x3b
	.long	0x81b8
	.byte	0x1
	.string	"frob_opname"
	.byte	0x1
	.value	0x411
	.byte	0x1
	.long	0xd6
	.long	.LFB35
	.long	.LFE35
	.long	.LLST19
	.uleb128 0x32
	.string	"id"
	.byte	0x1
	.value	0x410
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x8208
	.string	"begin_parsing_inclass_inline"
	.byte	0x1
	.value	0x41e
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST20
	.uleb128 0x32
	.string	"pi"
	.byte	0x1
	.value	0x41d
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF22
	.byte	0x1
	.value	0x41f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x38
	.long	0x8247
	.string	"feed_input"
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST21
	.uleb128 0x32
	.string	"input"
	.byte	0x1
	.value	0x1f4
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x1f6
	.long	0x7a66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x37
	.long	0x828c
	.byte	0x1
	.string	"do_pending_inlines"
	.byte	0x1
	.value	0x447
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x2f
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x30
	.string	"first"
	.byte	0x1
	.value	0x451
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x82e2
	.byte	0x1
	.string	"process_next_inline"
	.byte	0x1
	.value	0x45f
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x45e
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF1
	.byte	0x1
	.value	0x460
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF22
	.byte	0x1
	.value	0x461
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x834a
	.string	"alloc_unparsed_text"
	.byte	0x1
	.value	0x4a4
	.byte	0x1
	.long	0x6bbf
	.long	.LFB41
	.long	.LFE41
	.long	.LLST24
	.uleb128 0x3a
	.long	.LASF27
	.byte	0x1
	.value	0x4a1
	.long	0x834a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF1
	.byte	0x1
	.value	0x4a2
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF46
	.byte	0x1
	.value	0x4a3
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"r"
	.byte	0x1
	.value	0x4a5
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x8350
	.uleb128 0x8
	.long	0x655
	.uleb128 0x38
	.long	0x83b7
	.string	"snarf_parenthesized_expression"
	.byte	0x1
	.value	0x4b3
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST25
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x4b2
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"yyc"
	.byte	0x1
	.value	0x4b4
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"level"
	.byte	0x1
	.value	0x4b5
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.long	0x83ee
	.string	"space_for_token"
	.byte	0x1
	.value	0x47c
	.byte	0x1
	.long	0x7af4
	.long	.LFB39
	.long	.LFE39
	.long	.LLST26
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x47b
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x84bb
	.string	"snarf_block"
	.byte	0x1
	.value	0x4cb
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST27
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x4ca
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"blev"
	.byte	0x1
	.value	0x4cc
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"look_for_semicolon"
	.byte	0x1
	.value	0x4cd
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"look_for_lbrac"
	.byte	0x1
	.value	0x4ce
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"look_for_catch"
	.byte	0x1
	.value	0x4cf
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"yyc"
	.byte	0x1
	.value	0x4d0
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"current"
	.byte	0x1
	.value	0x4d1
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x30
	.string	"fake"
	.byte	0x1
	.value	0x505
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.long	0x8531
	.string	"remove_last_token"
	.byte	0x1
	.value	0x48c
	.byte	0x1
	.long	0x7af4
	.long	.LFB40
	.long	.LFE40
	.long	.LLST28
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x48b
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"result"
	.byte	0x1
	.value	0x48d
	.long	0x7af4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	0x8520
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.value	0x493
	.long	0x79de
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF56
	.long	0x89cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14509
	.byte	0x0
	.uleb128 0x37
	.long	0x8583
	.byte	0x1
	.string	"snarf_method"
	.byte	0x1
	.value	0x523
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x3a
	.long	.LASF1
	.byte	0x1
	.value	0x522
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"meth"
	.byte	0x1
	.value	0x524
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF59
	.byte	0x1
	.value	0x525
	.long	0x655
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x31
	.long	0x8603
	.string	"snarf_defarg"
	.byte	0x1
	.value	0x555
	.byte	0x1
	.long	0xd6
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x30
	.string	"yyc"
	.byte	0x1
	.value	0x556
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"plev"
	.byte	0x1
	.value	0x557
	.long	0x1d3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x558
	.long	0x6bbf
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"arg"
	.byte	0x1
	.value	0x559
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.long	.LASF59
	.byte	0x1
	.value	0x55a
	.long	0x655
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"done"
	.byte	0x1
	.value	0x57c
	.long	.L506
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.string	"maybe_snarf_defarg"
	.byte	0x1
	.value	0x58e
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST31
	.uleb128 0x37
	.long	0x865c
	.byte	0x1
	.string	"add_defarg_fn"
	.byte	0x1
	.value	0x59b
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST32
	.uleb128 0x3a
	.long	.LASF1
	.byte	0x1
	.value	0x59a
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x38
	.long	0x8698
	.string	"feed_defarg"
	.byte	0x1
	.value	0x5aa
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST33
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x5a9
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.value	0x5ab
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x3c
	.string	"finish_defarg"
	.byte	0x1
	.value	0x5b6
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST34
	.uleb128 0x37
	.long	0x8749
	.byte	0x1
	.string	"do_pending_defargs"
	.byte	0x1
	.value	0x5c4
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST35
	.uleb128 0x33
	.string	"different"
	.byte	0x1
	.value	0x602
	.long	.L555
	.uleb128 0x2f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x30
	.string	"current"
	.byte	0x1
	.value	0x5ca
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"defarg_fn"
	.byte	0x1
	.value	0x5cc
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x30
	.string	"a"
	.byte	0x1
	.value	0x5fa
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"b"
	.byte	0x1
	.value	0x5fa
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.long	0x87b2
	.byte	0x1
	.string	"done_pending_defargs"
	.byte	0x1
	.value	0x61c
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST36
	.uleb128 0x34
	.long	0x87a1
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x30
	.string	"fn"
	.byte	0x1
	.value	0x61f
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"parms"
	.byte	0x1
	.value	0x620
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x35
	.long	.LASF56
	.long	0x89ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.14849
	.byte	0x0
	.uleb128 0x37
	.long	0x87ed
	.byte	0x1
	.string	"unprocessed_defarg_fn"
	.byte	0x1
	.value	0x637
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST37
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0x636
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x37
	.long	0x8832
	.byte	0x1
	.string	"replace_defarg"
	.byte	0x1
	.value	0x642
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST38
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0x641
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"init"
	.byte	0x1
	.value	0x641
	.long	0xd6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x37
	.long	0x889c
	.byte	0x1
	.string	"yyerror"
	.byte	0x1
	.value	0x66f
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST39
	.uleb128 0x32
	.string	"msgid"
	.byte	0x1
	.value	0x66e
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"string"
	.byte	0x1
	.value	0x670
	.long	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x30
	.string	"val"
	.byte	0x1
	.value	0x678
	.long	0x2ac
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"ell"
	.byte	0x1
	.value	0x679
	.long	0x57ab
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.long	0x88db
	.byte	0x1
	.string	"gt_ggc_mx_feed"
	.byte	0x2
	.byte	0x1a
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST40
	.uleb128 0x2c
	.string	"x_p"
	.byte	0x2
	.byte	0x19
	.long	0x37f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.long	0x88db
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x7a66
	.uleb128 0x3d
	.long	0x8953
	.byte	0x1
	.string	"gt_ggc_mx_token_chunk"
	.byte	0x2
	.byte	0x73
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST41
	.uleb128 0x2c
	.string	"x_p"
	.byte	0x2
	.byte	0x72
	.long	0x37f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"x"
	.byte	0x2
	.byte	0x74
	.long	0x8953
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x2d
	.string	"i1_0"
	.byte	0x2
	.byte	0x79
	.long	0x2e2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.string	"ilimit1_0"
	.byte	0x2
	.byte	0x7a
	.long	0x8958
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x79de
	.uleb128 0x8
	.long	0x2e2
	.uleb128 0x3d
	.long	0x89a5
	.byte	0x1
	.string	"gt_ggc_mx_unparsed_text"
	.byte	0x2
	.byte	0xd1
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST42
	.uleb128 0x2c
	.string	"x_p"
	.byte	0x2
	.byte	0xd0
	.long	0x37f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"x"
	.byte	0x2
	.byte	0xd2
	.long	0x89a5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x8
	.long	0x6bbf
	.uleb128 0xd
	.long	0x89ba
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x14
	.byte	0x0
	.uleb128 0x8
	.long	0x89aa
	.uleb128 0xd
	.long	0x89cf
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0x11
	.byte	0x0
	.uleb128 0x8
	.long	0x89bf
	.uleb128 0x8
	.long	0x3ca
	.uleb128 0x8
	.long	0x3ca
	.uleb128 0xd
	.long	0x89ee
	.long	0x1cb
	.uleb128 0xe
	.long	0x2c3
	.byte	0xa
	.byte	0x0
	.uleb128 0x8
	.long	0x89de
	.uleb128 0x2d
	.string	"feed"
	.byte	0x1
	.byte	0x71
	.long	0x7a66
	.byte	0x5
	.byte	0x3
	.long	feed
	.uleb128 0x2d
	.string	"pending_inlines"
	.byte	0x1
	.byte	0x92
	.long	0x6bbf
	.byte	0x5
	.byte	0x3
	.long	pending_inlines
	.uleb128 0x2d
	.string	"pending_inlines_tail"
	.byte	0x1
	.byte	0x93
	.long	0x6bbf
	.byte	0x5
	.byte	0x3
	.long	pending_inlines_tail
	.uleb128 0x2d
	.string	"processing_these_inlines"
	.byte	0x1
	.byte	0x97
	.long	0x6bbf
	.byte	0x5
	.byte	0x3
	.long	processing_these_inlines
	.uleb128 0x2d
	.string	"last_token"
	.byte	0x1
	.byte	0xa4
	.long	0x62e2
	.byte	0x5
	.byte	0x3
	.long	last_token
	.uleb128 0x2d
	.string	"last_token_id"
	.byte	0x1
	.byte	0xa5
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	last_token_id
	.uleb128 0x3e
	.long	.LASF55
	.byte	0x1
	.byte	0xb2
	.long	0x3203
	.byte	0x5
	.byte	0x3
	.long	token_obstack
	.uleb128 0x3e
	.long	.LASF54
	.byte	0x1
	.byte	0xb3
	.long	0x1d3
	.byte	0x5
	.byte	0x3
	.long	first_token
	.uleb128 0x2d
	.string	"defarg_fns"
	.byte	0x1
	.byte	0xbf
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	defarg_fns
	.uleb128 0x2d
	.string	"defarg_parm"
	.byte	0x1
	.byte	0xc1
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	defarg_parm
	.uleb128 0x2d
	.string	"defarg_depfns"
	.byte	0x1
	.byte	0xc3
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	defarg_depfns
	.uleb128 0x2d
	.string	"defarg_fnsdone"
	.byte	0x1
	.byte	0xc5
	.long	0xd6
	.byte	0x5
	.byte	0x3
	.long	defarg_fnsdone
	.uleb128 0x30
	.string	"Teosi"
	.byte	0x1
	.value	0x245
	.long	0x8b3b
	.byte	0x5
	.byte	0x3
	.long	Teosi
	.uleb128 0x8
	.long	0x796f
	.uleb128 0x30
	.string	"Tpad"
	.byte	0x1
	.value	0x246
	.long	0x8b3b
	.byte	0x5
	.byte	0x3
	.long	Tpad
	.uleb128 0x30
	.string	"after_friend"
	.byte	0x1
	.value	0x2bd
	.long	0x1d3
	.byte	0x5
	.byte	0x3
	.long	after_friend
	.uleb128 0x30
	.string	"after_new"
	.byte	0x1
	.value	0x2be
	.long	0x1d3
	.byte	0x5
	.byte	0x3
	.long	after_new
	.uleb128 0x30
	.string	"do_snarf_defarg"
	.byte	0x1
	.value	0x2bf
	.long	0x1d3
	.byte	0x5
	.byte	0x3
	.long	do_snarf_defarg
	.uleb128 0xd
	.long	0x8bb4
	.long	0x301
	.uleb128 0xe
	.long	0x2c3
	.byte	0xff
	.byte	0x0
	.uleb128 0x3f
	.string	"_sch_istable"
	.byte	0x14
	.byte	0x48
	.long	0x8bca
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x8ba4
	.uleb128 0x40
	.string	"input_filename"
	.byte	0x6
	.value	0xbf6
	.long	0x1c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"lineno"
	.byte	0x6
	.value	0xbf9
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x8c09
	.long	0xd6
	.uleb128 0xe
	.long	0x2c3
	.byte	0x3f
	.byte	0x0
	.uleb128 0x40
	.string	"global_trees"
	.byte	0x6
	.value	0x8ee
	.long	0x8bf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"cfun"
	.byte	0xa
	.value	0x202
	.long	0x43e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"ridpointers"
	.byte	0xd
	.byte	0x8a
	.long	0x57b9
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x8c54
	.long	0x33b
	.uleb128 0xe
	.long	0x2c3
	.byte	0x6c
	.byte	0x0
	.uleb128 0x40
	.string	"rid_to_yy"
	.byte	0xc
	.value	0x126
	.long	0x8c68
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0x8c44
	.uleb128 0x40
	.string	"scope_chain"
	.byte	0xc
	.value	0x368
	.long	0x6ad4
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF47
	.byte	0xc
	.value	0x3e6
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF48
	.byte	0xc
	.value	0x3e6
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"parse_in"
	.byte	0x15
	.byte	0x22
	.long	0x339f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"lastiddecl"
	.byte	0x1
	.byte	0xad
	.long	0xd6
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.string	"looking_for_typename"
	.byte	0x1
	.value	0x2ba
	.long	0x1d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	looking_for_typename
	.uleb128 0x42
	.string	"looking_for_template"
	.byte	0x1
	.value	0x2bb
	.long	0x1d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	looking_for_template
	.uleb128 0x42
	.string	"got_scope"
	.byte	0x1
	.value	0x2c1
	.long	0xd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	got_scope
	.uleb128 0x42
	.string	"got_object"
	.byte	0x1
	.value	0x2c2
	.long	0xd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	got_object
	.uleb128 0x43
	.long	.LASF53
	.byte	0x1
	.byte	0xaf
	.long	0x7904
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.long	.LASF52
	.byte	0x1
	.byte	0xae
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"in_omp_pragma"
	.byte	0x1
	.byte	0xd0
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.string	"seen_omp_paren"
	.byte	0x1
	.value	0x11d
	.long	0x57b0
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x8d9a
	.long	0x7914
	.uleb128 0xe
	.long	0x2c3
	.byte	0x8
	.byte	0x0
	.uleb128 0x44
	.string	"gt_ggc_r_gt_cp_spew_h"
	.byte	0x2
	.byte	0xdf
	.long	0x8dbe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cp_spew_h
	.uleb128 0x8
	.long	0x8d8a
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x32
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3e
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x44
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x1e6
	.value	0x2
	.long	.Ldebug_info0
	.long	0x8dc4
	.long	0x7a6c
	.string	"init_spew"
	.long	0x7c2d
	.string	"end_input"
	.long	0x7e63
	.string	"see_typename"
	.long	0x7ec8
	.string	"yylex"
	.long	0x801b
	.string	"yyungetc"
	.long	0x8183
	.string	"frob_opname"
	.long	0x8247
	.string	"do_pending_inlines"
	.long	0x828c
	.string	"process_next_inline"
	.long	0x8531
	.string	"snarf_method"
	.long	0x8603
	.string	"maybe_snarf_defarg"
	.long	0x8628
	.string	"add_defarg_fn"
	.long	0x86b7
	.string	"do_pending_defargs"
	.long	0x8749
	.string	"done_pending_defargs"
	.long	0x87b2
	.string	"unprocessed_defarg_fn"
	.long	0x87ed
	.string	"replace_defarg"
	.long	0x8832
	.string	"yyerror"
	.long	0x889c
	.string	"gt_ggc_mx_feed"
	.long	0x88e0
	.string	"gt_ggc_mx_token_chunk"
	.long	0x895d
	.string	"gt_ggc_mx_unparsed_text"
	.long	0x8cc5
	.string	"looking_for_typename"
	.long	0x8ce9
	.string	"looking_for_template"
	.long	0x8d0d
	.string	"got_scope"
	.long	0x8d26
	.string	"got_object"
	.long	0x8d9a
	.string	"gt_ggc_r_gt_cp_spew_h"
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
.LASF54:
	.string	"first_token"
.LASF39:
	.string	"parallel_for_clause_type"
.LASF55:
	.string	"token_obstack"
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
.LASF41:
	.string	"sequence_stack"
.LASF13:
	.string	"chunk_size"
.LASF43:
	.string	"bindings"
.LASF27:
	.string	"locus"
.LASF48:
	.string	"interface_unknown"
.LASF40:
	.string	"parallel_sections_clause_type"
.LASF59:
	.string	"starting"
.LASF35:
	.string	"for_clause_type"
.LASF0:
	.string	"common"
.LASF23:
	.string	"lang_specific"
.LASF42:
	.string	"sequence_rtl_expr"
.LASF46:
	.string	"interface"
.LASF45:
	.string	"cxx_saved_binding"
.LASF51:
	.string	"befriending_classes"
.LASF26:
	.string	"function_frequency"
.LASF6:
	.string	"lang_flag_1"
.LASF8:
	.string	"lang_flag_3"
.LASF12:
	.string	"lang_flag_7"
.LASF28:
	.string	"var_list"
.LASF33:
	.string	"next"
.LASF3:
	.string	"unsigned int"
.LASF17:
	.string	"abstract_origin"
.LASF20:
	.string	"pointer_depth"
.LASF49:
	.string	"use_template"
.LASF15:
	.string	"cpp_reader"
.LASF58:
	.string	"old_looking_for_typename"
.LASF34:
	.string	"schedule_kind"
.LASF21:
	.string	"user_align"
.LASF57:
	.string	"__len"
.LASF18:
	.string	"size_unit"
.LASF38:
	.string	"single_clause_type"
.LASF2:
	.string	"type"
.LASF25:
	.string	"language"
.LASF47:
	.string	"interface_only"
.LASF52:
	.string	"yychar"
.LASF32:
	.string	"node"
.LASF4:
	.string	"built_in_class"
.LASF10:
	.string	"lang_flag_5"
.LASF16:
	.string	"abstract_flag"
.LASF37:
	.string	"sections_clause_type"
.LASF44:
	.string	"x_stmt_tree"
.LASF53:
	.string	"yylval"
.LASF22:
	.string	"context"
.LASF30:
	.string	"defaulttype"
.LASF36:
	.string	"schedule_node"
.LASF31:
	.string	"reduction_node"
.LASF50:
	.string	"template_info"
.LASF56:
	.string	"__FUNCTION__"
.LASF14:
	.string	"ht_identifier"
.LASF29:
	.string	"expr_no_commas"
.LASF19:
	.string	"attributes"
.LASF1:
	.string	"decl"
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
