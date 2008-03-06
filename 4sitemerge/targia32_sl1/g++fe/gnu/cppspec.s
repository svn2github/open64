	.file	"cppspec.c"
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
	.string	".c"
.LC1:
	.string	".C"
.LC2:
	.string	".S"
.LC3:
	.string	".m"
.LC4:
	.string	".cc"
.LC5:
	.string	".cxx"
.LC6:
	.string	".cpp"
.LC7:
	.string	".cp"
.LC8:
	.string	".c++"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	known_suffixes, @object
	.size	known_suffixes, 40
known_suffixes:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	0
	.section	.rodata
	.align 4
.LC9:
	.string	"\"%s\" is not a valid option to the preprocessor"
.LC10:
	.string	"cc"
.LC11:
	.string	"Tdata"
.LC12:
	.string	"Ttext"
.LC13:
	.string	"Tbss"
.LC14:
	.string	"include"
.LC15:
	.string	"imacros"
.LC16:
	.string	"aux-info"
.LC17:
	.string	"idirafter"
.LC18:
	.string	"iprefix"
.LC19:
	.string	"iwithprefix"
.LC20:
	.string	"iwithprefixbefore"
.LC21:
	.string	"isystem"
.LC22:
	.string	"-param"
.LC23:
	.string	"specs"
.LC24:
	.string	"MF"
.LC25:
	.string	"MT"
.LC26:
	.string	"MQ"
.LC27:
	.string	"too many input files"
.LC28:
	.string	".s"
.LC29:
	.string	"-E"
.LC30:
	.string	"-no-gcc"
.LC31:
	.string	"-xc"
.LC32:
	.string	"-xassembler-with-cpp"
.LC33:
	.string	"-o"
.LC34:
	.string	"-"
	.text
.globl lang_specific_driver
	.type	lang_specific_driver, @function
lang_specific_driver:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cppspec.c"
	.loc 1 56 0
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
	subl	$348, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 57 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -84(%ebp)
	.loc 1 58 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -80(%ebp)
	.loc 1 61 0
	movl	$1, -76(%ebp)
	.loc 1 64 0
	movl	$1, -72(%ebp)
	.loc 1 67 0
	movl	$1, -68(%ebp)
	.loc 1 70 0
	movl	$0, -64(%ebp)
	.loc 1 74 0
	movl	$0, -60(%ebp)
	.loc 1 75 0
	movl	$0, -56(%ebp)
	.loc 1 76 0
	movl	$0, -52(%ebp)
	.loc 1 79 0
	movl	$1, -48(%ebp)
	.loc 1 81 0
	movl	$0, -36(%ebp)
	.loc 1 86 0
	movl	is_cpp_driver@GOT(%ebx), %eax
	movl	$1, (%eax)
	.loc 1 91 0
	movl	$1, -44(%ebp)
	jmp	.L2
.L3:
	.loc 1 93 0
	cmpl	$1, -36(%ebp)
	jne	.L4
	.loc 1 95 0
	movl	$0, -36(%ebp)
	.loc 1 96 0
	jmp	.L6
.L4:
	.loc 1 99 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L7
	.loc 1 101 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L9
	.loc 1 102 0
	movl	$0, -76(%ebp)
	jmp	.L6
.L9:
	.loc 1 103 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L12
	.loc 1 105 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L14
	.loc 1 106 0
	movl	$0, -72(%ebp)
	jmp	.L6
.L14:
	.loc 1 107 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$83, %al
	je	.L17
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$99, %al
	jne	.L19
.L17:
	.loc 1 109 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L19:
	.loc 1 113 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L20
	.loc 1 115 0
	movl	$0, -48(%ebp)
	.loc 1 116 0
	movl	$1, -36(%ebp)
	jmp	.L6
.L20:
	.loc 1 118 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$68, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$85, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$111, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$84, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$117, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$73, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$109, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$76, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$65, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$86, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$66, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$98, %al
	je	.L22
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$71, %al
	jne	.L6
.L22:
	.loc 1 119 0
	movl	$1, -36(%ebp)
	jmp	.L6
.L12:
	.loc 1 121 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$120, %al
	jne	.L37
	.loc 1 122 0
	movl	$0, -48(%ebp)
	jmp	.L6
.L37:
	.loc 1 123 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	cmpb	$103, %al
	jne	.L39
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$2, %eax
	movl	%eax, -96(%ebp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, -100(%ebp)
	movl	$3, -104(%ebp)
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
	jne	.L39
	.loc 1 124 0
	movl	$0, -68(%ebp)
	.loc 1 123 0
	jmp	.L6
.L39:
	.loc 1 125 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -108(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
	movl	%esi, -112(%ebp)
	movl	$6, -116(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -120(%ebp)
	leal	.LC12@GOTOFF(%ebx), %esi
	movl	%esi, -124(%ebp)
	movl	$6, -128(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -132(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -136(%ebp)
	movl	$5, -140(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -144(%ebp)
	leal	.LC14@GOTOFF(%ebx), %esi
	movl	%esi, -148(%ebp)
	movl	$8, -152(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -156(%ebp)
	leal	.LC15@GOTOFF(%ebx), %esi
	movl	%esi, -160(%ebp)
	movl	$8, -164(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -168(%ebp)
	leal	.LC16@GOTOFF(%ebx), %esi
	movl	%esi, -172(%ebp)
	movl	$9, -176(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -180(%ebp)
	leal	.LC17@GOTOFF(%ebx), %esi
	movl	%esi, -184(%ebp)
	movl	$10, -188(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -192(%ebp)
	leal	.LC18@GOTOFF(%ebx), %esi
	movl	%esi, -196(%ebp)
	movl	$8, -200(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -204(%ebp)
	leal	.LC19@GOTOFF(%ebx), %esi
	movl	%esi, -208(%ebp)
	movl	$12, -212(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -216(%ebp)
	leal	.LC20@GOTOFF(%ebx), %esi
	movl	%esi, -220(%ebp)
	movl	$18, -224(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -228(%ebp)
	leal	.LC21@GOTOFF(%ebx), %esi
	movl	%esi, -232(%ebp)
	movl	$8, -236(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -240(%ebp)
	leal	.LC22@GOTOFF(%ebx), %esi
	movl	%esi, -244(%ebp)
	movl	$7, -248(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -252(%ebp)
	leal	.LC23@GOTOFF(%ebx), %esi
	movl	%esi, -256(%ebp)
	movl	$6, -260(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -264(%ebp)
	leal	.LC24@GOTOFF(%ebx), %esi
	movl	%esi, -268(%ebp)
	movl	$3, -272(%ebp)
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
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -276(%ebp)
	leal	.LC25@GOTOFF(%ebx), %esi
	movl	%esi, -280(%ebp)
	movl	$3, -284(%ebp)
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
	je	.L42
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -288(%ebp)
	leal	.LC26@GOTOFF(%ebx), %esi
	movl	%esi, -292(%ebp)
	movl	$3, -296(%ebp)
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
	jne	.L6
.L42:
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -300(%ebp)
	leal	.LC11@GOTOFF(%ebx), %esi
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
	je	.L6
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -312(%ebp)
	leal	.LC12@GOTOFF(%ebx), %esi
	movl	%esi, -316(%ebp)
	movl	$6, -320(%ebp)
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
	je	.L6
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, -324(%ebp)
	leal	.LC13@GOTOFF(%ebx), %esi
	movl	%esi, -328(%ebp)
	movl	$5, -332(%ebp)
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
	je	.L6
	.loc 1 126 0
	movl	$1, -36(%ebp)
	jmp	.L6
.L7:
	.loc 1 130 0
	addl	$1, -64(%ebp)
	.loc 1 131 0
	cmpl	$3, -64(%ebp)
	jne	.L61
	.loc 1 133 0
	leal	.LC27@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fatal@PLT
.L61:
	.loc 1 136 0
	cmpl	$2, -64(%ebp)
	jne	.L63
	.loc 1 138 0
	movl	-44(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	.L6
.L63:
	.loc 1 142 0
	movl	$0, -76(%ebp)
	.loc 1 143 0
	cmpl	$0, -48(%ebp)
	je	.L6
.LBB2:
	.loc 1 145 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -336(%ebp)
	movl	$0, %eax
	cld
	movl	-336(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, -24(%ebp)
	.loc 1 146 0
	movl	$0, -20(%ebp)
	.loc 1 149 0
	leal	known_suffixes@GOTOFF(%ebx), %eax
	movl	%eax, -16(%ebp)
	jmp	.L66
.L67:
	.loc 1 150 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %esi
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -340(%ebp)
	movl	$0, %eax
	cld
	movl	-340(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L68
	.loc 1 152 0
	movl	$1, -20(%ebp)
	.loc 1 153 0
	jmp	.L70
.L68:
	.loc 1 149 0
	addl	$4, -16(%ebp)
.L66:
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L67
.L70:
	.loc 1 156 0
	cmpl	$0, -20(%ebp)
	jne	.L6
	.loc 1 161 0
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %eax
	subl	$2, %eax
	movl	%eax, 4(%esp)
	leal	.LC28@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L72
	.loc 1 162 0
	movl	-44(%ebp), %eax
	movl	%eax, -56(%ebp)
	jmp	.L6
.L72:
	.loc 1 164 0
	movl	-44(%ebp), %eax
	movl	%eax, -60(%ebp)
.L6:
.LBE2:
	.loc 1 91 0
	addl	$1, -44(%ebp)
.L2:
	movl	-44(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jl	.L3
	.loc 1 173 0
	movl	-72(%ebp), %eax
	addl	-84(%ebp), %eax
	addl	-68(%ebp), %eax
	movl	%eax, %edx
	addl	-76(%ebp), %edx
	cmpl	$0, -52(%ebp)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	cmpl	$0, -60(%ebp)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	cmpl	$0, -56(%ebp)
	setne	%al
	movzbl	%al, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 176 0
	movl	-28(%ebp), %eax
	cmpl	-84(%ebp), %eax
	je	.L92
	.loc 1 180 0
	movl	-28(%ebp), %eax
	sall	$2, %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	xmalloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 182 0
	movl	-80(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 183 0
	movl	$1, -40(%ebp)
	.loc 1 185 0
	cmpl	$0, -72(%ebp)
	je	.L77
	.loc 1 186 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	leal	.LC29@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
.L77:
	.loc 1 188 0
	cmpl	$0, -68(%ebp)
	je	.L79
	.loc 1 189 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	leal	.LC30@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
.L79:
	.loc 1 191 0
	movl	$1, -44(%ebp)
	jmp	.L81
.L82:
	.loc 1 193 0
	movl	-44(%ebp), %eax
	cmpl	-60(%ebp), %eax
	jne	.L83
	.loc 1 194 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	leal	.LC31@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
	jmp	.L85
.L83:
	.loc 1 195 0
	movl	-44(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L86
	.loc 1 196 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	leal	.LC32@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
	jmp	.L85
.L86:
	.loc 1 197 0
	movl	-44(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jne	.L85
	.loc 1 198 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	leal	.LC33@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
.L85:
	.loc 1 200 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	movl	-44(%ebp), %eax
	sall	$2, %eax
	addl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%edx)
	.loc 1 191 0
	addl	$1, -44(%ebp)
	addl	$1, -40(%ebp)
.L81:
	movl	-44(%ebp), %eax
	cmpl	-84(%ebp), %eax
	jl	.L82
	.loc 1 203 0
	cmpl	$0, -76(%ebp)
	je	.L90
	.loc 1 204 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	leal	.LC34@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	addl	$1, -40(%ebp)
.L90:
	.loc 1 206 0
	movl	-40(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 207 0
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 208 0
	movl	12(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
.L92:
	.loc 1 209 0
	addl	$348, %esp
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
	.loc 1 213 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	.loc 1 214 0
	movl	$0, %eax
	.loc 1 215 0
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
	.long	0x454
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cppspec.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.byte	0x4
	.long	0xa2
	.uleb128 0x3
	.long	0xa7
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
	.long	0x9c
	.uleb128 0x2
	.byte	0x4
	.long	0xaf
	.uleb128 0x6
	.long	0x194
	.string	"spec_function"
	.byte	0x8
	.byte	0x2
	.byte	0x1d
	.uleb128 0x7
	.string	"name"
	.byte	0x2
	.byte	0x1e
	.long	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"func"
	.byte	0x2
	.byte	0x1f
	.long	0x1a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.long	0x1a9
	.byte	0x1
	.long	0x9c
	.uleb128 0x9
	.long	0xaf
	.uleb128 0x9
	.long	0x153
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x194
	.uleb128 0xa
	.long	0x367
	.byte	0x1
	.string	"lang_specific_driver"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0xb
	.string	"in_argc"
	.byte	0x1
	.byte	0x35
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"in_argv"
	.byte	0x1
	.byte	0x36
	.long	0x367
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.string	"in_added_libraries"
	.byte	0x1
	.byte	0x37
	.long	0x159
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"argc"
	.byte	0x1
	.byte	0x39
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0xc
	.string	"argv"
	.byte	0x1
	.byte	0x3a
	.long	0x36d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.string	"read_stdin"
	.byte	0x1
	.byte	0x3d
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"need_E"
	.byte	0x1
	.byte	0x40
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.string	"need_no_gcc"
	.byte	0x1
	.byte	0x43
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xc
	.string	"seen_input"
	.byte	0x1
	.byte	0x46
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.string	"lang_c_here"
	.byte	0x1
	.byte	0x4a
	.long	0xaf
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"lang_S_here"
	.byte	0x1
	.byte	0x4b
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"o_here"
	.byte	0x1
	.byte	0x4c
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"need_fixups"
	.byte	0x1
	.byte	0x4f
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x51
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"quote"
	.byte	0x1
	.byte	0x51
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"new_argv"
	.byte	0x1
	.byte	0x52
	.long	0x153
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"new_argc"
	.byte	0x1
	.byte	0x53
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xc
	.string	"l"
	.byte	0x1
	.byte	0x91
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"known"
	.byte	0x1
	.byte	0x92
	.long	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"suff"
	.byte	0x1
	.byte	0x93
	.long	0x36d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.long	0x36d
	.uleb128 0x2
	.byte	0x4
	.long	0x373
	.uleb128 0x3
	.long	0x9c
	.uleb128 0xe
	.byte	0x1
	.string	"lang_specific_pre_link"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.long	0xaf
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0xf
	.long	0x3b4
	.long	0x9c
	.uleb128 0x10
	.long	0xbd
	.byte	0x9
	.byte	0x0
	.uleb128 0xc
	.string	"known_suffixes"
	.byte	0x1
	.byte	0x2b
	.long	0x3d0
	.byte	0x5
	.byte	0x3
	.long	known_suffixes
	.uleb128 0x3
	.long	0x3a4
	.uleb128 0x11
	.string	"lang_specific_extra_outfiles"
	.byte	0x1
	.byte	0xda
	.long	0xaf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_specific_extra_outfiles
	.uleb128 0xf
	.long	0x410
	.long	0x15f
	.uleb128 0x10
	.long	0xbd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.string	"lang_specific_spec_functions"
	.byte	0x1
	.byte	0xdd
	.long	0x43b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lang_specific_spec_functions
	.uleb128 0x3
	.long	0x400
	.uleb128 0x12
	.string	"is_cpp_driver"
	.byte	0x1
	.byte	0x54
	.long	0xaf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0x12
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
	.long	0x84
	.value	0x2
	.long	.Ldebug_info0
	.long	0x458
	.long	0x1af
	.string	"lang_specific_driver"
	.long	0x378
	.string	"lang_specific_pre_link"
	.long	0x3d5
	.string	"lang_specific_extra_outfiles"
	.long	0x410
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
