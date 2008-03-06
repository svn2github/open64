	.file	"doschk.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl eroot
	.bss
	.align 4
	.type	eroot, @object
	.size	eroot, 4
eroot:
	.zero	4
.globl first_inv
	.data
	.align 4
	.type	first_inv, @object
	.size	first_inv, 4
first_inv:
	.long	1
.globl first_msg
	.align 4
	.type	first_msg, @object
	.size	first_msg, 4
first_msg:
	.long	1
	.section	.rodata
	.align 4
.LC0:
	.string	"The following files are not valid DOS file names:"
	.text
.globl invalid_msg
	.type	invalid_msg, @function
invalid_msg:
.LFB5:
	.file 1 "../../../kg++fe/gnu/doschk.c"
	.loc 1 46 0
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
	.loc 1 47 0
	movl	first_inv@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L7
	.loc 1 49 0
	movl	first_msg@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 50 0
	movl	first_msg@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L6
.L4:
	.loc 1 52 0
	movl	$10, (%esp)
	call	putchar@PLT
.L6:
	.loc 1 53 0
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 54 0
	movl	first_inv@GOT(%ebx), %eax
	movl	$0, (%eax)
.L7:
	.loc 1 56 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	invalid_msg, .-invalid_msg
	.section	.rodata
	.align 4
.LC1:
	.string	"Unable to allocate memory for an ENT\n"
	.text
.globl alloc_ent
	.type	alloc_ent, @function
alloc_ent:
.LFB6:
	.loc 1 60 0
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
	.loc 1 61 0
	movl	$20, (%esp)
	call	malloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 62 0
	cmpl	$0, -8(%ebp)
	jne	.L9
	.loc 1 64 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$37, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 65 0
	movl	$1, (%esp)
	call	exit@PLT
.L9:
	.loc 1 67 0
	movl	-8(%ebp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	.loc 1 68 0
	movl	-8(%ebp), %eax
	.loc 1 69 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	alloc_ent, .-alloc_ent
	.section	.rodata
.LC2:
	.string	"."
	.align 4
.LC3:
	.string	"%s - file name cannot start with dot\n"
.LC4:
	.string	"%s - too many dots\n"
.LC5:
	.string	"%s - invalid character `%c'\n"
	.text
.globl fill_ent
	.type	fill_ent, @function
fill_ent:
.LFB7:
	.loc 1 75 0
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
	subl	$76, %esp
.LCFI13:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 76 0
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 77 0
	movl	12(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -48(%ebp)
	movl	$0, %eax
	cld
	movl	-48(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 78 0
	movl	$47, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -32(%ebp)
	.loc 1 82 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	cmpl	-36(%ebp), %eax
	jne	.L13
	.loc 1 84 0
	subl	$1, -36(%ebp)
	movl	-36(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 85 0
	movl	$47, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	strrchr@PLT
	movl	%eax, -32(%ebp)
.L13:
	.loc 1 88 0
	cmpl	$0, -32(%ebp)
	jne	.L15
	.loc 1 90 0
	movl	-40(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
.L15:
	.loc 1 93 0
	movl	-36(%ebp), %eax
	movl	-32(%ebp), %edx
	subl	%edx, %eax
	cmpl	$12, %eax
	jg	.L17
	.loc 1 94 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.L19
.L17:
	.loc 1 96 0
	movl	$13, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L19:
	.loc 1 97 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 98 0
	movl	-32(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 100 0
	movl	-32(%ebp), %edx
	addl	$1, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcpy@PLT
	.loc 1 101 0
	movl	-32(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jbe	.L20
	.loc 1 103 0
	movl	-32(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	strncpy@PLT
	.loc 1 104 0
	movl	8(%ebp), %eax
	movl	12(%eax), %ecx
	movl	-32(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	leal	(%ecx,%eax), %eax
	movb	$0, (%eax)
	jmp	.L22
.L20:
	.loc 1 107 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movb	$0, (%eax)
.L22:
	.loc 1 109 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -28(%ebp)
	.loc 1 110 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 111 0
	movl	$0, -20(%ebp)
	.loc 1 112 0
	movl	$0, -16(%ebp)
.L23:
	.loc 1 115 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L24
	.loc 1 117 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$34, %eax
	movl	%eax, -52(%ebp)
	cmpl	$90, -52(%ebp)
	ja	.L26
	movl	-52(%ebp), %eax
	sall	$2, %eax
	movl	.L29@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L27@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L26@GOTOFF
	.long	.L28@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L27@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L26@GOTOFF
	.long	.L27@GOTOFF
	.text
.L28:
	.loc 1 120 0
	movl	-32(%ebp), %eax
	addl	$1, %eax
	cmpl	-28(%ebp), %eax
	jne	.L30
	movl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
	leal	.LC2@GOTOFF(%ebx), %edi
	movl	%edi, -60(%ebp)
	movl	$2, -64(%ebp)
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
	je	.L30
	.loc 1 122 0
	call	invalid_msg@PLT
	.loc 1 123 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 124 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 125 0
	jmp	.L33
.L30:
	.loc 1 127 0
	cmpl	$1, -20(%ebp)
	jne	.L34
	.loc 1 129 0
	call	invalid_msg@PLT
	.loc 1 130 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 131 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 132 0
	jmp	.L33
.L34:
	.loc 1 134 0
	movl	-24(%ebp), %eax
	movb	$46, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 135 0
	movl	$0, -16(%ebp)
	.loc 1 136 0
	addl	$1, -20(%ebp)
	.loc 1 137 0
	jmp	.L33
.L27:
	.loc 1 151 0
	call	invalid_msg@PLT
	.loc 1 152 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 153 0
	movl	-24(%ebp), %eax
	movb	$63, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 154 0
	addl	$1, -16(%ebp)
	.loc 1 155 0
	jmp	.L33
.L26:
	.loc 1 157 0
	cmpl	$0, -20(%ebp)
	je	.L36
	.loc 1 159 0
	cmpl	$2, -16(%ebp)
	jg	.L33
	.loc 1 160 0
	jmp	.L39
.L36:
	.loc 1 163 0
	cmpl	$7, -16(%ebp)
	jg	.L33
.L39:
	.loc 1 165 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jbe	.L40
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$126, %al
	jbe	.L42
.L40:
	.loc 1 167 0
	call	invalid_msg@PLT
	.loc 1 168 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	.LC5@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 169 0
	movl	-24(%ebp), %eax
	movb	$63, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 170 0
	addl	$1, -16(%ebp)
	.loc 1 171 0
	jmp	.L33
.L42:
	.loc 1 173 0
	call	__ctype_b_loc@PLT
	movl	(%eax), %edx
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L43
	.loc 1 174 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	toupper@PLT
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
	jmp	.L45
.L43:
	.loc 1 176 0
	movl	-28(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -24(%ebp)
.L45:
	.loc 1 177 0
	addl	$1, -16(%ebp)
.L33:
	.loc 1 180 0
	addl	$1, -28(%ebp)
	.loc 1 181 0
	jmp	.L23
.L24:
	.loc 1 182 0
	movl	-24(%ebp), %eax
	movb	$0, (%eax)
	addl	$1, -24(%ebp)
	.loc 1 183 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE7:
	.size	fill_ent, .-fill_ent
.globl compare_ent_dosname
	.type	compare_ent_dosname, @function
compare_ent_dosname:
.LFB8:
	.loc 1 189 0
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
	.loc 1 190 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -8(%ebp)
	.loc 1 191 0
	cmpl	$0, -8(%ebp)
	jne	.L48
	.loc 1 192 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -8(%ebp)
.L48:
	.loc 1 193 0
	cmpl	$0, -8(%ebp)
	jne	.L50
	.loc 1 194 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -8(%ebp)
.L50:
	.loc 1 195 0
	movl	-8(%ebp), %eax
	.loc 1 196 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE8:
	.size	compare_ent_dosname, .-compare_ent_dosname
.globl compare_ent_fullname
	.type	compare_ent_fullname, @function
compare_ent_fullname:
.LFB9:
	.loc 1 202 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$36, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 203 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$14, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strncmp@PLT
	movl	%eax, -8(%ebp)
	.loc 1 204 0
	cmpl	$0, -8(%ebp)
	jne	.L54
	.loc 1 205 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -8(%ebp)
.L54:
	.loc 1 206 0
	cmpl	$0, -8(%ebp)
	jne	.L56
	.loc 1 207 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	movl	%eax, -8(%ebp)
.L56:
	.loc 1 208 0
	movl	-8(%ebp), %eax
	.loc 1 209 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE9:
	.size	compare_ent_fullname, .-compare_ent_fullname
	.local	buf.3108
	.comm	buf.3108,500,32
	.section	.rodata
.LC6:
	.string	"%s/%s"
	.text
.globl mpath
	.type	mpath, @function
mpath:
.LFB10:
	.loc 1 214 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$20, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 216 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L60
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L60
	.loc 1 217 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	buf.3108@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	sprintf@PLT
	.loc 1 220 0
	leal	buf.3108@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	jmp	.L63
.L60:
	.loc 1 219 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
.L63:
	movl	-8(%ebp), %eax
	.loc 1 221 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE10:
	.size	mpath, .-mpath
.globl add_ent
	.type	add_ent, @function
add_ent:
.LFB11:
	.loc 1 230 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 231 0
	movl	eroot@GOT(%ecx), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 232 0
	movl	eroot@GOT(%ecx), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 233 0
	popl	%ebp
	ret
.LFE11:
	.size	add_ent, .-add_ent
.globl handle_input
	.type	handle_input, @function
handle_input:
.LFB12:
	.loc 1 238 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%ebx
.LCFI30:
	subl	$36, %esp
.LCFI31:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 239 0
	call	alloc_ent@PLT
	movl	%eax, -8(%ebp)
	.loc 1 240 0
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	fill_ent@PLT
	.loc 1 241 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	add_ent@PLT
	.loc 1 242 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE12:
	.size	handle_input, .-handle_input
	.section	.rodata
	.align 4
.LC7:
	.string	"The following resolve to the same DOS file names:"
.LC8:
	.string	"%14s : %s\n"
.LC9:
	.string	"\t\t %s\n"
	.align 4
.LC10:
	.string	"The following resolve to the same SysV file names:"
.LC11:
	.string	"%.14s : %s\n"
	.align 4
.LC12:
	.string	"The following file names are too long for SysV:"
	.text
.globl display_problems
	.type	display_problems, @function
display_problems:
.LFB13:
	.loc 1 246 0
	pushl	%ebp
.LCFI32:
	movl	%esp, %ebp
.LCFI33:
	pushl	%edi
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$64, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 250 0
	movl	$0, -24(%ebp)
	movl	eroot@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L70
.L71:
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	addl	$1, -24(%ebp)
.L70:
	cmpl	$0, -28(%ebp)
	jne	.L71
	.loc 1 251 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc@PLT
	movl	%eax, -32(%ebp)
	.loc 1 252 0
	movl	$0, -24(%ebp)
	movl	eroot@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	jmp	.L73
.L74:
	.loc 1 253 0
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	addl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 252 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	addl	$1, -24(%ebp)
.L73:
	cmpl	$0, -28(%ebp)
	jne	.L74
	.loc 1 255 0
	movl	-24(%ebp), %edx
	movl	compare_ent_dosname@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 257 0
	movl	$1, -16(%ebp)
	.loc 1 258 0
	movl	$1, -12(%ebp)
	.loc 1 259 0
	movl	$0, -20(%ebp)
	jmp	.L76
.L77:
	.loc 1 261 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L78
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L78
	.loc 1 264 0
	cmpl	$0, -12(%ebp)
	je	.L81
	.loc 1 266 0
	movl	first_msg@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L83
	.loc 1 267 0
	movl	first_msg@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L85
.L83:
	.loc 1 269 0
	movl	$10, (%esp)
	call	putchar@PLT
.L85:
	.loc 1 270 0
	leal	.LC7@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 271 0
	movl	$0, -12(%ebp)
.L81:
	.loc 1 273 0
	cmpl	$0, -16(%ebp)
	je	.L86
	.loc 1 275 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	mpath@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 276 0
	movl	$0, -16(%ebp)
.L86:
	.loc 1 278 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	mpath@PLT
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 261 0
	jmp	.L88
.L78:
	.loc 1 281 0
	movl	$1, -16(%ebp)
.L88:
	.loc 1 259 0
	addl	$1, -20(%ebp)
.L76:
	movl	-24(%ebp), %eax
	subl	$1, %eax
	cmpl	-20(%ebp), %eax
	jg	.L77
	.loc 1 284 0
	movl	-24(%ebp), %edx
	movl	compare_ent_fullname@GOT(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$4, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	qsort@PLT
	.loc 1 286 0
	movl	$1, -16(%ebp)
	.loc 1 287 0
	movl	$1, -12(%ebp)
	.loc 1 288 0
	movl	$0, -20(%ebp)
	jmp	.L90
.L91:
	.loc 1 290 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$14, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L92
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L92
	.loc 1 293 0
	cmpl	$0, -12(%ebp)
	je	.L95
	.loc 1 295 0
	movl	first_msg@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L97
	.loc 1 296 0
	movl	first_msg@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L99
.L97:
	.loc 1 298 0
	movl	$10, (%esp)
	call	putchar@PLT
.L99:
	.loc 1 299 0
	leal	.LC10@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 300 0
	movl	$0, -12(%ebp)
.L95:
	.loc 1 302 0
	cmpl	$0, -16(%ebp)
	je	.L100
	.loc 1 304 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	mpath@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 305 0
	movl	$0, -16(%ebp)
	.loc 1 306 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 16(%eax)
.L100:
	.loc 1 308 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	mpath@PLT
	movl	%eax, 4(%esp)
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
	.loc 1 309 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$1, 16(%eax)
	.loc 1 290 0
	jmp	.L102
.L92:
	.loc 1 312 0
	movl	$1, -16(%ebp)
.L102:
	.loc 1 288 0
	addl	$1, -20(%ebp)
.L90:
	movl	-24(%ebp), %eax
	subl	$1, %eax
	cmpl	-20(%ebp), %eax
	jg	.L91
	.loc 1 315 0
	movl	$1, -12(%ebp)
	.loc 1 316 0
	movl	$0, -20(%ebp)
	jmp	.L104
.L105:
	.loc 1 318 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	$-1, %ecx
	movl	%eax, -44(%ebp)
	movl	$0, %eax
	cld
	movl	-44(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	cmpl	$14, %eax
	jbe	.L106
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L106
	.loc 1 320 0
	cmpl	$0, -12(%ebp)
	je	.L109
	.loc 1 322 0
	movl	first_msg@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L111
	.loc 1 323 0
	movl	first_msg@GOT(%ebx), %eax
	movl	$0, (%eax)
	jmp	.L113
.L111:
	.loc 1 325 0
	movl	$10, (%esp)
	call	putchar@PLT
.L113:
	.loc 1 326 0
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	.loc 1 327 0
	movl	$0, -12(%ebp)
.L109:
	.loc 1 329 0
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	mpath@PLT
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	sall	$2, %eax
	addl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC11@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	printf@PLT
.L106:
	.loc 1 316 0
	addl	$1, -20(%ebp)
.L104:
	movl	-20(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	.L105
	.loc 1 332 0
	addl	$64, %esp
	popl	%ebx
	popl	%edi
	popl	%ebp
	ret
.LFE13:
	.size	display_problems, .-display_problems
	.section	.rodata
.LC13:
	.string	"r"
	.text
.globl main
	.type	main, @function
main:
.LFB14:
	.loc 1 342 0
	leal	4(%esp), %ecx
.LCFI37:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI38:
	pushl	%ebp
.LCFI39:
	movl	%esp, %ebp
.LCFI40:
	pushl	%edi
.LCFI41:
	pushl	%ebx
.LCFI42:
	pushl	%ecx
.LCFI43:
	subl	$540, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	4(%ecx), %eax
	movl	%eax, -528(%ebp)
	.loc 1 342 0
	movl	%gs:20, %eax
	movl	%eax, -16(%ebp)
	xorl	%eax, %eax
	.loc 1 343 0
	movl	stdin@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -524(%ebp)
	.loc 1 344 0
	cmpl	$1, (%ecx)
	jle	.L117
	.loc 1 346 0
	movl	-528(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fopen@PLT
	movl	%eax, -524(%ebp)
	.loc 1 347 0
	cmpl	$0, -524(%ebp)
	jne	.L117
	.loc 1 349 0
	movl	-528(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	perror@PLT
	.loc 1 350 0
	movl	$1, (%esp)
	call	exit@PLT
.L117:
.LBB2:
	.loc 1 357 0
	movl	-524(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$500, 4(%esp)
	leal	-516(%ebp), %eax
	movl	%eax, (%esp)
	call	fgets@PLT
	.loc 1 358 0
	movl	-524(%ebp), %eax
	movl	%eax, (%esp)
	call	feof@PLT
	testl	%eax, %eax
	jne	.L120
	.loc 1 360 0
	leal	-516(%ebp), %eax
	movl	$-1, %ecx
	movl	%eax, -532(%ebp)
	movl	$0, %eax
	cld
	movl	-532(%ebp), %edi
	repnz
	scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	movl	%eax, %edx
	leal	-516(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -520(%ebp)
	.loc 1 361 0
	jmp	.L122
.L123:
	.loc 1 362 0
	subl	$1, -520(%ebp)
.L122:
	.loc 1 361 0
	leal	-516(%ebp), %eax
	cmpl	-520(%ebp), %eax
	je	.L124
	movl	-520(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jbe	.L123
.L124:
	.loc 1 363 0
	movl	-520(%ebp), %eax
	addl	$1, %eax
	movb	$0, (%eax)
	.loc 1 364 0
	leal	-516(%ebp), %eax
	movl	%eax, (%esp)
	call	handle_input@PLT
	.loc 1 365 0
	jmp	.L117
.L120:
.LBE2:
	.loc 1 366 0
	call	display_problems@PLT
	movl	$0, %eax
	.loc 1 367 0
	movl	-16(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L127
	call	__stack_chk_fail_local
.L127:
	addl	$540, %esp
	popl	%ecx
	popl	%ebx
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE14:
	.size	main, .-main
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
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI0-.LFB5
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI4-.LFB6
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI8-.LFB7
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI14-.LFB8
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI18-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI21-.LCFI19
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI22-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI25-.LCFI23
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI26-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI28-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI31-.LCFI29
	.byte	0x83
	.uleb128 0x3
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI32-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI36-.LCFI33
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI37-.LFB14
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI38-.LCFI37
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI40-.LCFI39
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI43-.LCFI40
	.byte	0x84
	.uleb128 0x5
	.byte	0x83
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE18:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/libio.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB5-.Ltext0
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
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB6-.Ltext0
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
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB10-.Ltext0
	.long	.LCFI22-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI22-.Ltext0
	.long	.LCFI23-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI23-.Ltext0
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB11-.Ltext0
	.long	.LCFI26-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI26-.Ltext0
	.long	.LCFI27-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI27-.Ltext0
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB13-.Ltext0
	.long	.LCFI32-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI32-.Ltext0
	.long	.LCFI33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI33-.Ltext0
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB14-.Ltext0
	.long	.LCFI37-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI37-.Ltext0
	.long	.LCFI38-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI38-.Ltext0
	.long	.LCFI39-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI39-.Ltext0
	.long	.LCFI40-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI40-.Ltext0
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x8e2
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/doschk.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x5
	.byte	0xd6
	.long	0xa9
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
	.byte	0x4
	.byte	0x3b
	.long	0x10f
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x4
	.byte	0x90
	.long	0x159
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x4
	.byte	0x91
	.long	0x13a
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x185
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.string	"FILE"
	.byte	0x2
	.byte	0x2e
	.long	0x199
	.uleb128 0x7
	.long	0x414
	.long	.LASF1
	.byte	0x94
	.byte	0x2
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x3
	.value	0x10c
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x3
	.value	0x111
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x3
	.value	0x112
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x3
	.value	0x113
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x3
	.value	0x114
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x3
	.value	0x115
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x3
	.value	0x116
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x3
	.value	0x117
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x3
	.value	0x118
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x3
	.value	0x11a
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x3
	.value	0x11b
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x3
	.value	0x11c
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x3
	.value	0x11e
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x3
	.value	0x120
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x3
	.value	0x122
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x3
	.value	0x126
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x3
	.value	0x128
	.long	0x14a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x3
	.value	0x12c
	.long	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x3
	.value	0x12d
	.long	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x3
	.value	0x12e
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x3
	.value	0x132
	.long	0x481
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x3
	.value	0x13b
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x3
	.value	0x144
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x3
	.value	0x145
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x3
	.value	0x146
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x3
	.value	0x147
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x3
	.value	0x148
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x3
	.value	0x14a
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x3
	.value	0x14c
	.long	0x487
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x9
	.string	"_IO_lock_t"
	.byte	0x3
	.byte	0xb0
	.uleb128 0xa
	.long	0x465
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x3
	.byte	0xb6
	.uleb128 0xb
	.string	"_next"
	.byte	0x3
	.byte	0xb7
	.long	0x465
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"_sbuf"
	.byte	0x3
	.byte	0xb8
	.long	0x46b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"_pos"
	.byte	0x3
	.byte	0xbc
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x422
	.uleb128 0x6
	.byte	0x4
	.long	0x199
	.uleb128 0xc
	.long	0x481
	.long	0x185
	.uleb128 0xd
	.long	0x176
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x414
	.uleb128 0xc
	.long	0x497
	.long	0x185
	.uleb128 0xd
	.long	0x176
	.byte	0x27
	.byte	0x0
	.uleb128 0xa
	.long	0x4fa
	.string	"ENT"
	.byte	0x14
	.byte	0x1
	.byte	0x1b
	.uleb128 0xb
	.string	"next"
	.byte	0x1
	.byte	0x1c
	.long	0x4fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"dos_name"
	.byte	0x1
	.byte	0x1d
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"full_name"
	.byte	0x1
	.byte	0x1e
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"path"
	.byte	0x1
	.byte	0x1f
	.long	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"tagged"
	.byte	0x1
	.byte	0x20
	.long	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x497
	.uleb128 0x2
	.string	"ENT"
	.byte	0x1
	.byte	0x21
	.long	0x497
	.uleb128 0xe
	.byte	0x1
	.string	"invalid_msg"
	.byte	0x1
	.byte	0x2e
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xf
	.long	0x557
	.byte	0x1
	.string	"alloc_ent"
	.byte	0x1
	.byte	0x3c
	.long	0x557
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0x10
	.string	"rv"
	.byte	0x1
	.byte	0x3d
	.long	0x557
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x500
	.uleb128 0x11
	.long	0x60f
	.byte	0x1
	.string	"fill_ent"
	.byte	0x1
	.byte	0x4b
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.uleb128 0x12
	.string	"ent"
	.byte	0x1
	.byte	0x49
	.long	0x557
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"path"
	.byte	0x1
	.byte	0x4a
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"first"
	.byte	0x1
	.byte	0x4c
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"null"
	.byte	0x1
	.byte	0x4d
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"last_slash"
	.byte	0x1
	.byte	0x4e
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"cp"
	.byte	0x1
	.byte	0x4f
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"dp"
	.byte	0x1
	.byte	0x4f
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"dots_seen"
	.byte	0x1
	.byte	0x50
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"chars_seen"
	.byte	0x1
	.byte	0x50
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xf
	.long	0x662
	.byte	0x1
	.string	"compare_ent_dosname"
	.byte	0x1
	.byte	0xbd
	.long	0x108
	.long	.LFB8
	.long	.LFE8
	.long	.LLST3
	.uleb128 0x12
	.string	"e1"
	.byte	0x1
	.byte	0xbb
	.long	0x662
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"e2"
	.byte	0x1
	.byte	0xbc
	.long	0x662
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0xbe
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x557
	.uleb128 0xf
	.long	0x6bc
	.byte	0x1
	.string	"compare_ent_fullname"
	.byte	0x1
	.byte	0xca
	.long	0x108
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.uleb128 0x12
	.string	"e1"
	.byte	0x1
	.byte	0xc8
	.long	0x662
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.string	"e2"
	.byte	0x1
	.byte	0xc9
	.long	0x662
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0xcb
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xf
	.long	0x6fa
	.byte	0x1
	.string	"mpath"
	.byte	0x1
	.byte	0xd6
	.long	0x17f
	.long	.LFB10
	.long	.LFE10
	.long	.LLST5
	.uleb128 0x12
	.string	"ent"
	.byte	0x1
	.byte	0xd5
	.long	0x557
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0xd7
	.long	0x871
	.byte	0x5
	.byte	0x3
	.long	buf.3108
	.byte	0x0
	.uleb128 0x11
	.long	0x725
	.byte	0x1
	.string	"add_ent"
	.byte	0x1
	.byte	0xe6
	.long	.LFB11
	.long	.LFE11
	.long	.LLST6
	.uleb128 0x12
	.string	"ent"
	.byte	0x1
	.byte	0xe5
	.long	0x557
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x11
	.long	0x764
	.byte	0x1
	.string	"handle_input"
	.byte	0x1
	.byte	0xee
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.uleb128 0x12
	.string	"line"
	.byte	0x1
	.byte	0xed
	.long	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"ent"
	.byte	0x1
	.byte	0xef
	.long	0x557
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x11
	.long	0x7e9
	.byte	0x1
	.string	"display_problems"
	.byte	0x1
	.byte	0xf6
	.long	.LFB13
	.long	.LFE13
	.long	.LLST8
	.uleb128 0x10
	.string	"elist"
	.byte	0x1
	.byte	0xf7
	.long	0x662
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"ent"
	.byte	0x1
	.byte	0xf7
	.long	0x557
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"ecount"
	.byte	0x1
	.byte	0xf8
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xf8
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"first"
	.byte	0x1
	.byte	0xf8
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"first_err"
	.byte	0x1
	.byte	0xf8
	.long	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x13
	.long	0x865
	.byte	0x1
	.string	"main"
	.byte	0x1
	.value	0x156
	.long	0x108
	.long	.LFB14
	.long	.LFE14
	.long	.LLST9
	.uleb128 0x14
	.string	"argc"
	.byte	0x1
	.value	0x154
	.long	0x108
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x14
	.string	"argv"
	.byte	0x1
	.value	0x155
	.long	0x865
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x15
	.string	"input"
	.byte	0x1
	.value	0x157
	.long	0x86b
	.byte	0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x15
	.string	"line"
	.byte	0x1
	.value	0x163
	.long	0x871
	.byte	0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x15
	.string	"lp"
	.byte	0x1
	.value	0x164
	.long	0x17f
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x17f
	.uleb128 0x6
	.byte	0x4
	.long	0x18d
	.uleb128 0xc
	.long	0x882
	.long	0x185
	.uleb128 0x17
	.long	0x176
	.value	0x1f3
	.byte	0x0
	.uleb128 0x18
	.string	"stdin"
	.byte	0x2
	.byte	0x8e
	.long	0x46b
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"stderr"
	.byte	0x2
	.byte	0x90
	.long	0x46b
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"eroot"
	.byte	0x1
	.byte	0x23
	.long	0x557
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	eroot
	.uleb128 0x19
	.string	"first_inv"
	.byte	0x1
	.byte	0x25
	.long	0x108
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	first_inv
	.uleb128 0x19
	.string	"first_msg"
	.byte	0x1
	.byte	0x26
	.long	0x108
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	first_msg
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.long	0xd5
	.value	0x2
	.long	.Ldebug_info0
	.long	0x8e6
	.long	0x50b
	.string	"invalid_msg"
	.long	0x527
	.string	"alloc_ent"
	.long	0x55d
	.string	"fill_ent"
	.long	0x60f
	.string	"compare_ent_dosname"
	.long	0x668
	.string	"compare_ent_fullname"
	.long	0x6bc
	.string	"mpath"
	.long	0x6fa
	.string	"add_ent"
	.long	0x725
	.string	"handle_input"
	.long	0x764
	.string	"display_problems"
	.long	0x7e9
	.string	"main"
	.long	0x8a1
	.string	"eroot"
	.long	0x8b5
	.string	"first_inv"
	.long	0x8cd
	.string	"first_msg"
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
.LASF1:
	.string	"_IO_FILE"
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
