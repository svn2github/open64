	.file	"license.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align 4
.LC0:
	.string	"Unable to obtain subscription.  The PathScale compiler cannot run without a subscription.\nPlease see http://www.pathscale.com/support/subscription_msgs.html for details.\n"
.LC1:
	.string	"PATHSCALE_SUBSCRIPTION_CLIENT"
.LC2:
	.string	"%s/subclient"
	.align 4
.LC3:
	.string	"Subscription client: looking for %s\n"
.LC4:
	.string	"-Wl"
.LC5:
	.string	"-TENV:ipa_ident"
.LC6:
	.string	" "
.LC7:
	.string	"Compiler"
.LC8:
	.string	""
.LC9:
	.string	"--v"
.LC10:
	.string	"Compilation terminated\n"
	.align 4
.LC11:
	.string	"Subscription client exited with error status\n"
	.text
.globl obtain_license
	.type	obtain_license, @function
obtain_license:
.LFB15:
	.file 1 "../../driver/license.c"
	.loc 1 45 0
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
	subl	$5340, %esp
.LCFI5:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -5312(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -5316(%ebp)
	.loc 1 45 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 55 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, -5152(%ebp)
	.loc 1 57 0
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	getenv@PLT
	movl	%eax, -5156(%ebp)
	.loc 1 58 0
	cmpl	$0, -5156(%ebp)
	jne	.L2
	.loc 1 59 0
	movl	-5312(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4096, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	snprintf@PLT
	.loc 1 60 0
	movl	subverbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 61 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-5146(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L4:
	.loc 1 63 0
	leal	-5308(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L11
	.loc 1 64 0
	movl	$30, (%esp)
	call	get_phase_dir@PLT
	movl	%eax, 12(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$4096, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	snprintf@PLT
	.loc 1 66 0
	movl	subverbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L8
	.loc 1 67 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-5146(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L8:
	.loc 1 69 0
	leal	-5308(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L11
	.loc 1 70 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-5152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 71 0
	movl	$1, (%esp)
	call	do_exit@PLT
.L2:
	.loc 1 75 0
	movl	-5156(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 76 0
	movl	subverbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 77 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	leal	-5146(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
.L12:
	.loc 1 79 0
	leal	-5308(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	stat@PLT
	testl	%eax, %eax
	je	.L11
	.loc 1 80 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-5152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 81 0
	movl	$1, (%esp)
	call	do_exit@PLT
.L11:
	.loc 1 85 0
	movb	$0, -1050(%ebp)
	.loc 1 86 0
	movl	$1, -5160(%ebp)
	jmp	.L15
.L16:
	.loc 1 87 0
	movl	-5160(%ebp), %eax
	sall	$2, %eax
	addl	-5316(%ebp), %eax
	movl	(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L17
	.loc 1 88 0
	movl	-5160(%ebp), %eax
	sall	$2, %eax
	addl	-5316(%ebp), %eax
	movl	(%eax), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$68, %eax
	movl	%eax, -5324(%ebp)
	cmpl	$43, -5324(%ebp)
	ja	.L19
	movl	-5324(%ebp), %eax
	sall	$2, %eax
	movl	.L23@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L23:
	.long	.L17@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L17@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L17@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L21@GOTOFF
	.long	.L17@GOTOFF
	.long	.L19@GOTOFF
	.long	.L22@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L19@GOTOFF
	.long	.L17@GOTOFF
	.text
.L22:
	.loc 1 98 0
	jmp	.L19
.L21:
	.loc 1 100 0
	movl	-5160(%ebp), %eax
	sall	$2, %eax
	addl	-5316(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -5328(%ebp)
	leal	.LC5@GOTOFF(%ebx), %ecx
	movl	%ecx, -5332(%ebp)
	movl	$15, -5336(%ebp)
	cld
	movl	-5328(%ebp), %esi
	movl	-5332(%ebp), %edi
	movl	-5336(%ebp), %ecx
	repz
	cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al,%eax
	testl	%eax, %eax
	je	.L17
.L19:
	.loc 1 106 0
	movl	-5160(%ebp), %eax
	sall	$2, %eax
	addl	-5316(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	leal	-1050(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
	.loc 1 107 0
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	-1050(%ebp), %eax
	movl	%eax, (%esp)
	call	strcat@PLT
.L17:
	.loc 1 86 0
	addl	$1, -5160(%ebp)
.L15:
	movl	-5160(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	.L16
	.loc 1 113 0
	movl	invoked_lang@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -5320(%ebp)
	cmpl	$4, -5320(%ebp)
	je	.L27
	cmpl	$4, -5320(%ebp)
	ja	.L30
	cmpl	$3, -5320(%ebp)
	je	.L26
	jmp	.L25
.L30:
	cmpl	$5, -5320(%ebp)
	je	.L28
	cmpl	$6, -5320(%ebp)
	je	.L29
	jmp	.L25
.L28:
	.loc 1 115 0
	leal	-26(%ebp), %eax
	movl	$1414680390, (%eax)
	movl	$927875410, 4(%eax)
	movw	$55, 8(%eax)
	.loc 1 116 0
	jmp	.L25
.L29:
	.loc 1 118 0
	leal	-26(%ebp), %eax
	movl	$1414680390, (%eax)
	movl	$961429842, 4(%eax)
	movw	$48, 8(%eax)
	.loc 1 119 0
	jmp	.L25
.L26:
	.loc 1 121 0
	leal	-26(%ebp), %eax
	movw	$67, (%eax)
	.loc 1 122 0
	jmp	.L25
.L27:
	.loc 1 124 0
	leal	-26(%ebp), %eax
	movw	$17219, (%eax)
	movb	$0, 2(%eax)
.L25:
	.loc 1 128 0
	call	fork@PLT
	movl	%eax, -5164(%ebp)
	.loc 1 129 0
	cmpl	$0, -5164(%ebp)
	jne	.L31
.LBB2:
	.loc 1 132 0
	leal	-5146(%ebp), %eax
	movl	%eax, -5220(%ebp)
	.loc 1 133 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, -5216(%ebp)
	.loc 1 134 0
	leal	-26(%ebp), %eax
	movl	%eax, -5212(%ebp)
	.loc 1 135 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -5208(%ebp)
	.loc 1 136 0
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, -5204(%ebp)
	.loc 1 137 0
	movl	$0, -5200(%ebp)
	.loc 1 138 0
	movl	subverbose@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 139 0
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, -5200(%ebp)
	.loc 1 140 0
	movl	$0, -5196(%ebp)
.L33:
	.loc 1 142 0
	leal	-5220(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-5146(%ebp), %eax
	movl	%eax, (%esp)
	call	execv@PLT
	.loc 1 143 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %edx
	movl	-5152(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fprintf@PLT
	.loc 1 144 0
	movl	$6, (%esp)
	call	do_exit@PLT
.L31:
.LBE2:
.LBB3:
	.loc 1 147 0
	movl	$0, 8(%esp)
	leal	-5168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-5164(%ebp), %eax
	movl	%eax, (%esp)
	call	waitpid@PLT
.LBB4:
	.loc 1 150 0
	movl	-5168(%ebp), %eax
	movl	%eax, -5172(%ebp)
	movl	-5172(%ebp), %eax
.LBE4:
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L42
.LBB5:
	.loc 1 151 0
	movl	-5168(%ebp), %eax
	movl	%eax, -5176(%ebp)
	movl	-5176(%ebp), %eax
.LBE5:
	andl	$65280, %eax
	sarl	$8, %eax
	cmpl	$6, %eax
	jne	.L37
	.loc 1 152 0
	movl	$1, (%esp)
	call	do_exit@PLT
.L37:
.LBB6:
	.loc 1 153 0
	movl	-5168(%ebp), %eax
	movl	%eax, -5180(%ebp)
	movl	-5180(%ebp), %eax
.LBE6:
	andl	$65280, %eax
	sarl	$8, %eax
	cmpl	$7, %eax
	jne	.L39
	.loc 1 154 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$23, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 155 0
	movl	$1, (%esp)
	call	do_exit@PLT
.L39:
.LBB7:
	.loc 1 156 0
	movl	-5168(%ebp), %eax
	movl	%eax, -5184(%ebp)
	movl	-5184(%ebp), %eax
.LBE7:
	andl	$65280, %eax
	sarl	$8, %eax
	testl	%eax, %eax
	je	.L42
	.loc 1 157 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$45, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 158 0
	movl	$1, (%esp)
	call	do_exit@PLT
.L42:
.LBE3:
	.loc 1 163 0
	movl	-16(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L43
	call	__stack_chk_fail_local
.L43:
	addl	$5340, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE15:
	.size	obtain_license, .-obtain_license
	.comm	subverbose,4,4
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
	.file 2 "/usr/include/bits/stat.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 8 "../../driver/lang_defs.h"
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
	.section	.debug_info
	.long	0x9d1
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../driver/license.c"
	.string	"/usa/handong/simplnano/cmplr/targia32_sl1/driver"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x7
	.byte	0xd6
	.long	0x93
	.uleb128 0x3
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
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x4
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.string	"__quad_t"
	.byte	0x3
	.byte	0x3b
	.long	0xf9
	.uleb128 0x2
	.string	"__u_quad_t"
	.byte	0x3
	.byte	0x3c
	.long	0x10a
	.uleb128 0x2
	.string	"__dev_t"
	.byte	0x3
	.byte	0x89
	.long	0x134
	.uleb128 0x2
	.string	"__uid_t"
	.byte	0x3
	.byte	0x8a
	.long	0x93
	.uleb128 0x2
	.string	"__gid_t"
	.byte	0x3
	.byte	0x8b
	.long	0x93
	.uleb128 0x2
	.string	"__ino_t"
	.byte	0x3
	.byte	0x8c
	.long	0xc1
	.uleb128 0x2
	.string	"__mode_t"
	.byte	0x3
	.byte	0x8e
	.long	0x93
	.uleb128 0x2
	.string	"__nlink_t"
	.byte	0x3
	.byte	0x8f
	.long	0x93
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x3
	.byte	0x90
	.long	0x1b2
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x3
	.byte	0x91
	.long	0x124
	.uleb128 0x5
	.long	0x1df
	.long	0xf2
	.uleb128 0x6
	.long	0x1df
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"__time_t"
	.byte	0x3
	.byte	0x98
	.long	0x1b2
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.string	"__blksize_t"
	.byte	0x3
	.byte	0xa7
	.long	0x1b2
	.uleb128 0x2
	.string	"__blkcnt_t"
	.byte	0x3
	.byte	0xac
	.long	0x1b2
	.uleb128 0x8
	.byte	0x4
	.long	0x223
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.long	0x4a6
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0xa
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x508
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x51e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x524
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x4ac
	.uleb128 0xb
	.long	0x223
	.uleb128 0xc
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xd
	.long	0x502
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0xe
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x508
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x4bf
	.uleb128 0x8
	.byte	0x4
	.long	0x22b
	.uleb128 0x5
	.long	0x51e
	.long	0x223
	.uleb128 0x6
	.long	0x1df
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x4b1
	.uleb128 0x5
	.long	0x534
	.long	0x223
	.uleb128 0x6
	.long	0x1df
	.byte	0x27
	.byte	0x0
	.uleb128 0xd
	.long	0x569
	.string	"timespec"
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.uleb128 0xe
	.string	"tv_sec"
	.byte	0x4
	.byte	0x7b
	.long	0x1e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"tv_nsec"
	.byte	0x4
	.byte	0x7c
	.long	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xd
	.long	0x6ad
	.string	"stat"
	.byte	0x58
	.byte	0x2
	.byte	0x25
	.uleb128 0xe
	.string	"st_dev"
	.byte	0x2
	.byte	0x26
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.string	"__pad1"
	.byte	0x2
	.byte	0x27
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"st_ino"
	.byte	0x2
	.byte	0x29
	.long	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"st_mode"
	.byte	0x2
	.byte	0x2d
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"st_nlink"
	.byte	0x2
	.byte	0x2e
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"st_uid"
	.byte	0x2
	.byte	0x2f
	.long	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"st_gid"
	.byte	0x2
	.byte	0x30
	.long	0x164
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"st_rdev"
	.byte	0x2
	.byte	0x31
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"__pad2"
	.byte	0x2
	.byte	0x32
	.long	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"st_size"
	.byte	0x2
	.byte	0x34
	.long	0x1a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"st_blksize"
	.byte	0x2
	.byte	0x38
	.long	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"st_blocks"
	.byte	0x2
	.byte	0x3b
	.long	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.string	"st_atim"
	.byte	0x2
	.byte	0x46
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"st_mtim"
	.byte	0x2
	.byte	0x47
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"st_ctim"
	.byte	0x2
	.byte	0x48
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"__unused4"
	.byte	0x2
	.byte	0x55
	.long	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"__unused5"
	.byte	0x2
	.byte	0x56
	.long	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0xf
	.long	0x711
	.byte	0x4
	.byte	0x8
	.byte	0x2f
	.uleb128 0x10
	.string	"L_NONE"
	.sleb128 0
	.uleb128 0x10
	.string	"L_ALL"
	.sleb128 1
	.uleb128 0x10
	.string	"L_cpp"
	.sleb128 2
	.uleb128 0x10
	.string	"L_cc"
	.sleb128 3
	.uleb128 0x10
	.string	"L_CC"
	.sleb128 4
	.uleb128 0x10
	.string	"L_f77"
	.sleb128 5
	.uleb128 0x10
	.string	"L_f90"
	.sleb128 6
	.uleb128 0x10
	.string	"L_as"
	.sleb128 7
	.uleb128 0x10
	.string	"L_ld"
	.sleb128 8
	.uleb128 0x10
	.string	"L_internal"
	.sleb128 9
	.uleb128 0x10
	.string	"L_LAST"
	.sleb128 10
	.byte	0x0
	.uleb128 0x2
	.string	"languages_t"
	.byte	0x8
	.byte	0x3b
	.long	0x6ad
	.uleb128 0x11
	.long	0x94d
	.byte	0x1
	.string	"obtain_license"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x12
	.string	"exedir"
	.byte	0x1
	.byte	0x2d
	.long	0x21d
	.byte	0x3
	.byte	0x91
	.sleb128 -5320
	.uleb128 0x12
	.string	"argc"
	.byte	0x1
	.byte	0x2d
	.long	0xf2
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"argv"
	.byte	0x1
	.byte	0x2d
	.long	0x94d
	.byte	0x3
	.byte	0x91
	.sleb128 -5324
	.uleb128 0x13
	.string	"pipes"
	.byte	0x1
	.byte	0x2e
	.long	0x1cf
	.byte	0x3
	.byte	0x91
	.sleb128 -5200
	.uleb128 0x13
	.string	"pid"
	.byte	0x1
	.byte	0x2f
	.long	0xf2
	.byte	0x3
	.byte	0x91
	.sleb128 -5172
	.uleb128 0x13
	.string	"exename"
	.byte	0x1
	.byte	0x30
	.long	0x953
	.byte	0x3
	.byte	0x91
	.sleb128 -5154
	.uleb128 0x13
	.string	"subflags"
	.byte	0x1
	.byte	0x31
	.long	0x964
	.byte	0x3
	.byte	0x91
	.sleb128 -1058
	.uleb128 0x13
	.string	"language"
	.byte	0x1
	.byte	0x32
	.long	0x975
	.byte	0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x13
	.string	"st"
	.byte	0x1
	.byte	0x33
	.long	0x569
	.byte	0x3
	.byte	0x91
	.sleb128 -5316
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0xf2
	.byte	0x3
	.byte	0x91
	.sleb128 -5168
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x35
	.long	0x21d
	.byte	0x3
	.byte	0x91
	.sleb128 -5164
	.uleb128 0x13
	.string	"errortext"
	.byte	0x1
	.byte	0x37
	.long	0x4a6
	.byte	0x3
	.byte	0x91
	.sleb128 -5160
	.uleb128 0x14
	.string	"addflag"
	.byte	0x1
	.byte	0x69
	.long	.L19
	.uleb128 0x15
	.long	0x83f
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x13
	.string	"argvec"
	.byte	0x1
	.byte	0x82
	.long	0x985
	.byte	0x3
	.byte	0x91
	.sleb128 -5228
	.byte	0x0
	.uleb128 0x16
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x13
	.string	"statloc"
	.byte	0x1
	.byte	0x92
	.long	0xf2
	.byte	0x3
	.byte	0x91
	.sleb128 -5176
	.uleb128 0x15
	.long	0x898
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x17
	.long	0x888
	.byte	0x4
	.byte	0x1
	.byte	0x96
	.uleb128 0x18
	.string	"__in"
	.byte	0x1
	.byte	0x96
	.long	0xf2
	.uleb128 0x18
	.string	"__i"
	.byte	0x1
	.byte	0x96
	.long	0xf2
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0x96
	.long	0x868
	.byte	0x3
	.byte	0x91
	.sleb128 -5180
	.byte	0x0
	.uleb128 0x15
	.long	0x8d5
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x17
	.long	0x8c5
	.byte	0x4
	.byte	0x1
	.byte	0x97
	.uleb128 0x18
	.string	"__in"
	.byte	0x1
	.byte	0x97
	.long	0xf2
	.uleb128 0x18
	.string	"__i"
	.byte	0x1
	.byte	0x97
	.long	0xf2
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0x97
	.long	0x8a5
	.byte	0x3
	.byte	0x91
	.sleb128 -5184
	.byte	0x0
	.uleb128 0x15
	.long	0x912
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x17
	.long	0x902
	.byte	0x4
	.byte	0x1
	.byte	0x99
	.uleb128 0x18
	.string	"__in"
	.byte	0x1
	.byte	0x99
	.long	0xf2
	.uleb128 0x18
	.string	"__i"
	.byte	0x1
	.byte	0x99
	.long	0xf2
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0x99
	.long	0x8e2
	.byte	0x3
	.byte	0x91
	.sleb128 -5188
	.byte	0x0
	.uleb128 0x16
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x17
	.long	0x93b
	.byte	0x4
	.byte	0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"__in"
	.byte	0x1
	.byte	0x9c
	.long	0xf2
	.uleb128 0x18
	.string	"__i"
	.byte	0x1
	.byte	0x9c
	.long	0xf2
	.byte	0x0
	.uleb128 0x13
	.string	"__u"
	.byte	0x1
	.byte	0x9c
	.long	0x91b
	.byte	0x3
	.byte	0x91
	.sleb128 -5192
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.long	0x21d
	.uleb128 0x5
	.long	0x964
	.long	0x223
	.uleb128 0x19
	.long	0x1df
	.value	0xfff
	.byte	0x0
	.uleb128 0x5
	.long	0x975
	.long	0x223
	.uleb128 0x19
	.long	0x1df
	.value	0x3ff
	.byte	0x0
	.uleb128 0x5
	.long	0x985
	.long	0x223
	.uleb128 0x6
	.long	0x1df
	.byte	0x9
	.byte	0x0
	.uleb128 0x5
	.long	0x995
	.long	0x4a6
	.uleb128 0x6
	.long	0x1df
	.byte	0x6
	.byte	0x0
	.uleb128 0x1a
	.string	"stderr"
	.byte	0x5
	.byte	0x90
	.long	0x508
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"invoked_lang"
	.byte	0x8
	.byte	0x99
	.long	0x711
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.string	"subverbose"
	.byte	0x1
	.byte	0x2b
	.long	0xf2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	subverbose
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.long	0x30
	.value	0x2
	.long	.Ldebug_info0
	.long	0x9d5
	.long	0x724
	.string	"obtain_license"
	.long	0x9bb
	.string	"subverbose"
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
.LASF1:
	.string	"_IO_FILE"
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
