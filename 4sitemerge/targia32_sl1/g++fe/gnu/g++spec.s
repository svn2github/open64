	.file	"g++spec.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"-nostdlib"
.LC1:
	.string	"-nodefaultlibs"
.LC2:
	.string	"-lm"
.LC3:
	.string	"-lmath"
.LC4:
	.string	"-lc"
.LC5:
	.string	"-pg"
.LC6:
	.string	"-p"
.LC7:
	.string	"-v"
.LC8:
	.string	"-x"
.LC9:
	.string	"bBVDUoeTuIYmLiA"
.LC10:
	.string	"-Xlinker"
.LC11:
	.string	"-Tdata"
.LC12:
	.string	"cSEM"
.LC13:
	.string	"-MM"
.LC14:
	.string	"-fsyntax-only"
.LC15:
	.string	"-static-libgcc"
.LC16:
	.string	"-static"
.LC17:
	.string	"Tdata"
.LC18:
	.string	"Ttext"
.LC19:
	.string	"Tbss"
.LC20:
	.string	"include"
.LC21:
	.string	"imacros"
.LC22:
	.string	"aux-info"
.LC23:
	.string	"idirafter"
.LC24:
	.string	"iprefix"
.LC25:
	.string	"iwithprefix"
.LC26:
	.string	"iwithprefixbefore"
.LC27:
	.string	"isystem"
.LC28:
	.string	"-param"
.LC29:
	.string	"specs"
.LC30:
	.string	"MF"
.LC31:
	.string	"MT"
.LC32:
	.string	"MQ"
.LC33:
	.string	"argument to `%s' missing\n"
.LC34:
	.string	"-xc++-cpp-output"
.LC35:
	.string	"-xc++"
.LC36:
	.string	"-xnone"
.LC37:
	.string	"-lstdc++"
.LC38:
	.string	"-shared-libgcc"
	.text
.globl lang_specific_driver
	.type	lang_specific_driver, @function
lang_specific_driver:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cp/g++spec.c"
	.loc 1 51 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushl	%edi
.LCFI2:
	pushl	%esi
.LCFI3:
	pushl	%ebx
.LCFI4:
	subl	$492, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 55 0
	movl	$0, -84(%ebp)
	.loc 1 58 0
	movl	$0, -80(%ebp)
	.loc 1 62 0
	movl	$1, -76(%ebp)
	.loc 1 67 0
	movl	$2, -72(%ebp)
	.loc 1 71 0
	movl	$0, -68(%ebp)
	.loc 1 79 0
	movl	$0, -60(%ebp)
	.loc 1 82 0
	movl	$0, -56(%ebp)
	.loc 1 85 0
	movl	$0, -52(%ebp)
	.loc 1 92 0
	movl	$45, %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	.loc 1 95 0
	movl	$1, -40(%ebp)
	.loc 1 107 0
	movl	$1, -24(%ebp)
	.loc 1 109 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
	.loc 1 110 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 111 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 113 0
	movl	-36(%ebp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	xcalloc@PLT
	movl	%eax, -48(%ebp)
	.loc 1 115 0
	movl	$1, -92(%ebp)
	jmp	.L2
.L3:
	.loc 1 118 0
	cmpl	$0, -68(%ebp)
	je	.L4
	.loc 1 120 0
	movl	$0, -68(%ebp)
	.loc 1 121 0
	jmp	.L6
.L4:
	.loc 1 126 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L6
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L6
	.loc 1 129 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L9
	.loc 1 131 0
	cmpl	$0, -76(%ebp)
	je	.L11
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -96(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	$10, -104(%ebp)
	cld
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %edi
	movl	-104(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L13
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -108(%ebp)
	leal	.LC1@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	movl	$15, -116(%ebp)
	cld
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edi
	movl	-116(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L11
.L13:
	.loc 1 134 0
	movl	$0, -76(%ebp)
	.loc 1 131 0
	jmp	.L6
.L11:
	.loc 1 136 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -120(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -124(%ebp)
	movl	$4, -128(%ebp)
	cld
	movl	-120(%ebp), %esi
	movl	-124(%ebp), %edi
	movl	-128(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L16
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -132(%ebp)
	leal	.LC3@GOTOFF(%ebx), %esi
	movl	%esi, -136(%ebp)
	movl	$7, -140(%ebp)
	cld
	movl	-132(%ebp), %esi
	movl	-136(%ebp), %edi
	movl	-140(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L16
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -144(%ebp)
	leal	.LC2@GOTOFF(%ebx), %esi
	movl	%esi, -148(%ebp)
	movl	$4, -152(%ebp)
	cld
	movl	-144(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	-152(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L19
.L16:
	.loc 1 144 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	orl	$4, %eax
	movl	%eax, (%edx)
	.loc 1 145 0
	movl	$0, -44(%ebp)
	.loc 1 136 0
	jmp	.L6
.L19:
	.loc 1 147 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -156(%ebp)
	leal	.LC4@GOTOFF(%ebx), %esi
	movl	%esi, -160(%ebp)
	movl	$4, -164(%ebp)
	cld
	movl	-156(%ebp), %esi
	movl	-160(%ebp), %edi
	movl	-164(%ebp), %ecx
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
	.loc 1 148 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	orl	$8, %eax
	movl	%eax, (%edx)
	jmp	.L6
.L20:
	.loc 1 149 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -168(%ebp)
	leal	.LC5@GOTOFF(%ebx), %esi
	movl	%esi, -172(%ebp)
	movl	$4, -176(%ebp)
	cld
	movl	-168(%ebp), %esi
	movl	-172(%ebp), %edi
	movl	-176(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L22
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -180(%ebp)
	leal	.LC6@GOTOFF(%ebx), %esi
	movl	%esi, -184(%ebp)
	movl	$3, -188(%ebp)
	cld
	movl	-180(%ebp), %esi
	movl	-184(%ebp), %edi
	movl	-188(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L24
.L22:
	.loc 1 150 0
	addl	$1, -84(%ebp)
	.loc 1 149 0
	jmp	.L6
.L24:
	.loc 1 151 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -192(%ebp)
	leal	.LC7@GOTOFF(%ebx), %esi
	movl	%esi, -196(%ebp)
	movl	$3, -200(%ebp)
	cld
	movl	-192(%ebp), %esi
	movl	-196(%ebp), %edi
	movl	-200(%ebp), %ecx
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
	.loc 1 153 0
	movl	$1, -80(%ebp)
	.loc 1 154 0
	cmpl	$2, -36(%ebp)
	jne	.L6
	.loc 1 158 0
	movl	$0, -76(%ebp)
	jmp	.L6
.L25:
	.loc 1 161 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -204(%ebp)
	leal	.LC8@GOTOFF(%ebx), %esi
	movl	%esi, -208(%ebp)
	movl	$2, -212(%ebp)
	cld
	movl	-204(%ebp), %esi
	movl	-208(%ebp), %edi
	movl	-212(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L29
	.loc 1 162 0
	movl	$1, -60(%ebp)
	jmp	.L6
.L29:
	.loc 1 163 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L31
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L33
.L31:
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -216(%ebp)
	leal	.LC10@GOTOFF(%ebx), %esi
	movl	%esi, -220(%ebp)
	movl	$9, -224(%ebp)
	cld
	movl	-216(%ebp), %esi
	movl	-220(%ebp), %edi
	movl	-224(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L33
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -228(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -232(%ebp)
	movl	$7, -236(%ebp)
	cld
	movl	-228(%ebp), %esi
	movl	-232(%ebp), %edi
	movl	-236(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L35
.L33:
	.loc 1 167 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -68(%ebp)
	.loc 1 163 0
	jmp	.L6
.L35:
	.loc 1 168 0
	cmpl	$0, -76(%ebp)
	je	.L36
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L38
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strchr@PLT
	testl	%eax, %eax
	jne	.L40
.L38:
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -240(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -244(%ebp)
	movl	$4, -248(%ebp)
	cld
	movl	-240(%ebp), %esi
	movl	-244(%ebp), %edi
	movl	-248(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L40
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -252(%ebp)
	leal	.LC14@GOTOFF(%ebx), %esi
	movl	%esi, -256(%ebp)
	movl	$14, -260(%ebp)
	cld
	movl	-252(%ebp), %esi
	movl	-256(%ebp), %edi
	movl	-260(%ebp), %ecx
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
.L40:
	.loc 1 175 0
	movl	$0, -76(%ebp)
	.loc 1 176 0
	subl	$2, -72(%ebp)
	.loc 1 168 0
	jmp	.L6
.L36:
	.loc 1 178 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -264(%ebp)
	leal	.LC15@GOTOFF(%ebx), %esi
	movl	%esi, -268(%ebp)
	movl	$15, -272(%ebp)
	cld
	movl	-264(%ebp), %esi
	movl	-268(%ebp), %edi
	movl	-272(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L42
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -276(%ebp)
	leal	.LC16@GOTOFF(%ebx), %esi
	movl	%esi, -280(%ebp)
	movl	$8, -284(%ebp)
	cld
	movl	-276(%ebp), %esi
	movl	-280(%ebp), %edi
	movl	-284(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L44
.L42:
	.loc 1 180 0
	movl	$0, -40(%ebp)
	.loc 1 178 0
	jmp	.L6
.L44:
	.loc 1 181 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -288(%ebp)
	leal	.LC17@GOTOFF(%ebx), %esi
	movl	%esi, -292(%ebp)
	movl	$6, -296(%ebp)
	cld
	movl	-288(%ebp), %esi
	movl	-292(%ebp), %edi
	movl	-296(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -300(%ebp)
	leal	.LC18@GOTOFF(%ebx), %esi
	movl	%esi, -304(%ebp)
	movl	$6, -308(%ebp)
	cld
	movl	-300(%ebp), %esi
	movl	-304(%ebp), %edi
	movl	-308(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -312(%ebp)
	leal	.LC19@GOTOFF(%ebx), %esi
	movl	%esi, -316(%ebp)
	movl	$5, -320(%ebp)
	cld
	movl	-312(%ebp), %esi
	movl	-316(%ebp), %edi
	movl	-320(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -324(%ebp)
	leal	.LC20@GOTOFF(%ebx), %esi
	movl	%esi, -328(%ebp)
	movl	$8, -332(%ebp)
	cld
	movl	-324(%ebp), %esi
	movl	-328(%ebp), %edi
	movl	-332(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -336(%ebp)
	leal	.LC21@GOTOFF(%ebx), %esi
	movl	%esi, -340(%ebp)
	movl	$8, -344(%ebp)
	cld
	movl	-336(%ebp), %esi
	movl	-340(%ebp), %edi
	movl	-344(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -348(%ebp)
	leal	.LC22@GOTOFF(%ebx), %esi
	movl	%esi, -352(%ebp)
	movl	$9, -356(%ebp)
	cld
	movl	-348(%ebp), %esi
	movl	-352(%ebp), %edi
	movl	-356(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -360(%ebp)
	leal	.LC23@GOTOFF(%ebx), %esi
	movl	%esi, -364(%ebp)
	movl	$10, -368(%ebp)
	cld
	movl	-360(%ebp), %esi
	movl	-364(%ebp), %edi
	movl	-368(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -372(%ebp)
	leal	.LC24@GOTOFF(%ebx), %esi
	movl	%esi, -376(%ebp)
	movl	$8, -380(%ebp)
	cld
	movl	-372(%ebp), %esi
	movl	-376(%ebp), %edi
	movl	-380(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -384(%ebp)
	leal	.LC25@GOTOFF(%ebx), %esi
	movl	%esi, -388(%ebp)
	movl	$12, -392(%ebp)
	cld
	movl	-384(%ebp), %esi
	movl	-388(%ebp), %edi
	movl	-392(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -396(%ebp)
	leal	.LC26@GOTOFF(%ebx), %esi
	movl	%esi, -400(%ebp)
	movl	$18, -404(%ebp)
	cld
	movl	-396(%ebp), %esi
	movl	-400(%ebp), %edi
	movl	-404(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -408(%ebp)
	leal	.LC27@GOTOFF(%ebx), %esi
	movl	%esi, -412(%ebp)
	movl	$8, -416(%ebp)
	cld
	movl	-408(%ebp), %esi
	movl	-412(%ebp), %edi
	movl	-416(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -420(%ebp)
	leal	.LC28@GOTOFF(%ebx), %esi
	movl	%esi, -424(%ebp)
	movl	$7, -428(%ebp)
	cld
	movl	-420(%ebp), %esi
	movl	-424(%ebp), %edi
	movl	-428(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -432(%ebp)
	leal	.LC29@GOTOFF(%ebx), %esi
	movl	%esi, -436(%ebp)
	movl	$6, -440(%ebp)
	cld
	movl	-432(%ebp), %esi
	movl	-436(%ebp), %edi
	movl	-440(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -444(%ebp)
	leal	.LC30@GOTOFF(%ebx), %esi
	movl	%esi, -448(%ebp)
	movl	$3, -452(%ebp)
	cld
	movl	-444(%ebp), %esi
	movl	-448(%ebp), %edi
	movl	-452(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -456(%ebp)
	leal	.LC31@GOTOFF(%ebx), %esi
	movl	%esi, -460(%ebp)
	movl	$3, -464(%ebp)
	cld
	movl	-456(%ebp), %esi
	movl	-460(%ebp), %edi
	movl	-464(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L45
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -468(%ebp)
	leal	.LC32@GOTOFF(%ebx), %esi
	movl	%esi, -472(%ebp)
	movl	$3, -476(%ebp)
	cld
	movl	-468(%ebp), %esi
	movl	-472(%ebp), %edi
	movl	-476(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	jne	.L6
.L45:
	.loc 1 182 0
	addl	$1, -92(%ebp)
	jmp	.L6
.L9:
.LBB2:
	.loc 1 191 0
	cmpl	$0, -60(%ebp)
	je	.L61
	.loc 1 193 0
	movl	$0, -60(%ebp)
	.loc 1 194 0
	jmp	.L6
.L61:
	.loc 1 199 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -480(%ebp)
	movl	$0, %eax
	cld
	movl	-480(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	.loc 1 200 0
	cmpl	$2, -20(%ebp)
	jle	.L6
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$99, %al
	je	.L64
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L6
.L64:
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$2, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	.L6
	.loc 1 204 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-48(%ebp), %edx
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	orl	$2, %eax
	movl	%eax, (%edx)
	.loc 1 205 0
	addl	$2, -72(%ebp)
.L6:
.LBE2:
	.loc 1 115 0
	addl	$1, -92(%ebp)
.L2:
	movl	-92(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L3
	.loc 1 210 0
	cmpl	$0, -68(%ebp)
	je	.L68
	.loc 1 211 0
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L68:
	.loc 1 214 0
	cmpl	$0, -72(%ebp)
	jne	.L70
	cmpl	$0, -76(%ebp)
	jne	.L70
	.loc 1 216 0
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 217 0
	jmp	.L101
.L70:
	.loc 1 223 0
	movl	$0, -40(%ebp)
	.loc 1 227 0
	movl	-72(%ebp), %eax
	addl	-36(%ebp), %eax
	addl	-44(%ebp), %eax
	addl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 228 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -64(%ebp)
	.loc 1 230 0
	movl	$0, -92(%ebp)
	.loc 1 231 0
	movl	$0, -88(%ebp)
	.loc 1 234 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-88(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -92(%ebp)
	addl	$1, -88(%ebp)
	.loc 1 237 0
	jmp	.L74
.L75:
	.loc 1 239 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 243 0
	cmpl	$0, -56(%ebp)
	jne	.L76
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L76
	cmpl	$0, -76(%ebp)
	je	.L76
	.loc 1 245 0
	subl	$1, -88(%ebp)
	.loc 1 246 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -56(%ebp)
.L76:
	.loc 1 249 0
	cmpl	$0, -52(%ebp)
	jne	.L80
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L80
	cmpl	$0, -76(%ebp)
	je	.L80
	.loc 1 251 0
	subl	$1, -88(%ebp)
	.loc 1 252 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -52(%ebp)
.L80:
	.loc 1 257 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-48(%ebp), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L84
.LBB3:
	.loc 1 259 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -484(%ebp)
	movl	$0, %eax
	cld
	movl	-484(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	.loc 1 260 0
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L86
	.loc 1 261 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
	jmp	.L88
.L86:
	.loc 1 263 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	leal	.LC35@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
.L88:
	.loc 1 264 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-92(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
	.loc 1 265 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	leal	.LC36@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
.L84:
.LBE3:
	.loc 1 268 0
	addl	$1, -92(%ebp)
	.loc 1 269 0
	addl	$1, -88(%ebp)
.L74:
	.loc 1 237 0
	movl	-92(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	.L75
	.loc 1 273 0
	cmpl	$0, -76(%ebp)
	je	.L90
	.loc 1 275 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	leal	.LC37@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
	.loc 1 276 0
	addl	$1, -28(%ebp)
.L90:
	.loc 1 285 0
	cmpl	$0, -56(%ebp)
	je	.L92
	.loc 1 286 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-56(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
	jmp	.L94
.L92:
	.loc 1 287 0
	cmpl	$0, -76(%ebp)
	je	.L94
	cmpl	$0, -44(%ebp)
	je	.L94
	.loc 1 289 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
	.loc 1 290 0
	addl	$1, -28(%ebp)
.L94:
	.loc 1 292 0
	cmpl	$0, -52(%ebp)
	je	.L97
	.loc 1 293 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
.L97:
	.loc 1 294 0
	cmpl	$0, -40(%ebp)
	je	.L99
	.loc 1 295 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-64(%ebp), %edx
	leal	.LC38@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -88(%ebp)
.L99:
	.loc 1 297 0
	movl	-88(%ebp), %eax
	sall	$2, %eax
	addl	-64(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 299 0
	movl	8(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 300 0
	movl	12(%ebp), %edx
	movl	-64(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 301 0
	movl	16(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
.L101:
	.loc 1 302 0
	addl	$492, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	lang_specific_driver, .-lang_specific_driver
.globl lang_specific_pre_link
	.type	lang_specific_pre_link, @function
lang_specific_pre_link:
.LFB16:
	.loc 1 306 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	.loc 1 307 0
	movl	$0, %eax
	.loc 1 308 0
	popl	%ebp
	ret
.LFE16:
	.size	lang_specific_pre_link, .-lang_specific_pre_link
.globl lang_specific_extra_outfiles
	.bss
	.align 4
	.type	lang_specific_extra_outfiles, @object
	.size	lang_specific_extra_outfiles, 4
lang_specific_extra_outfiles:
	.zero	4
.globl lang_specific_spec_functions
	.section	.rodata
	.align 4
	.type	lang_specific_spec_functions, @object
	.size	lang_specific_spec_functions, 8
lang_specific_spec_functions:
	.zero	8
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
	.long	.LCFI5-.LCFI1
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
	.file 2 "../../../kg++fe/gnu/gcc.h"
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
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x459
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cp/g++spec.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa5
	.uleb128 0x3
	.long	0xaa
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0x4
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.byte	0x4
	.long	0x9f
	.uleb128 0x2
	.byte	0x4
	.long	0xb2
	.uleb128 0x6
	.long	0x197
	.string	"spec_function"
	.byte	0x8
	.byte	0x2
	.byte	0x1d
	.uleb128 0x7
	.string	"name"
	.byte	0x2
	.byte	0x1e
	.long	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"func"
	.byte	0x2
	.byte	0x1f
	.long	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.long	0x1ac
	.byte	0x1
	.long	0x9f
	.uleb128 0x9
	.long	0xb2
	.uleb128 0x9
	.long	0x156
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x197
	.uleb128 0xa
	.long	0x3b1
	.byte	0x1
	.string	"lang_specific_driver"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0xb
	.string	"in_argc"
	.byte	0x1
	.byte	0x30
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"in_argv"
	.byte	0x1
	.byte	0x31
	.long	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.string	"in_added_libraries"
	.byte	0x1
	.byte	0x32
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x34
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.string	"saw_profile_flag"
	.byte	0x1
	.byte	0x37
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xc
	.string	"saw_verbose_flag"
	.byte	0x1
	.byte	0x3a
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.string	"library"
	.byte	0x1
	.byte	0x3e
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"added"
	.byte	0x1
	.byte	0x43
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.string	"quote"
	.byte	0x1
	.byte	0x47
	.long	0x9f
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xc
	.string	"arglist"
	.byte	0x1
	.byte	0x4a
	.long	0x156
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.string	"saw_speclang"
	.byte	0x1
	.byte	0x4f
	.long	0xb2
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"saw_math"
	.byte	0x1
	.byte	0x52
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"saw_libc"
	.byte	0x1
	.byte	0x55
	.long	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"args"
	.byte	0x1
	.byte	0x59
	.long	0x15c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"need_math"
	.byte	0x1
	.byte	0x5c
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"shared_libgcc"
	.byte	0x1
	.byte	0x5f
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"argc"
	.byte	0x1
	.byte	0x62
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"argv"
	.byte	0x1
	.byte	0x65
	.long	0x3b7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"added_libraries"
	.byte	0x1
	.byte	0x68
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"num_args"
	.byte	0x1
	.byte	0x6b
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.long	0x397
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0xbd
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0xe
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x103
	.long	0xb2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x3b7
	.uleb128 0x2
	.byte	0x4
	.long	0x3bd
	.uleb128 0x3
	.long	0x9f
	.uleb128 0x10
	.byte	0x1
	.string	"lang_specific_pre_link"
	.byte	0x1
	.value	0x132
	.byte	0x1
	.long	0xb2
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x11
	.string	"lang_specific_extra_outfiles"
	.byte	0x1
	.value	0x137
	.long	0xb2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_specific_extra_outfiles
	.uleb128 0x12
	.long	0x42b
	.long	0x162
	.uleb128 0x13
	.long	0xc0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.string	"lang_specific_spec_functions"
	.byte	0x1
	.value	0x13a
	.long	0x457
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_specific_spec_functions
	.uleb128 0x3
	.long	0x41b
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x84
	.value	0x2
	.long	.Ldebug_info0
	.long	0x45d
	.long	0x1b2
	.string	"lang_specific_driver"
	.long	0x3c2
	.string	"lang_specific_pre_link"
	.long	0x3ef
	.string	"lang_specific_extra_outfiles"
	.long	0x42b
	.string	"lang_specific_spec_functions"
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
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
