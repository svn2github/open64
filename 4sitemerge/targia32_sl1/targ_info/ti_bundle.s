	.file	"ti_bundle.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl TI_BUNDLE_Has_Property
	.type	TI_BUNDLE_Has_Property, @function
TI_BUNDLE_Has_Property:
.LFB69:
	.file 1 "../../common/targ_info/access/ti_bundle.c"
	.loc 1 60 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$24, %esp
.LCFI2:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	movl	12(%ebp), %eax
	movb	%al, -20(%ebp)
	.loc 1 63 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 65 0
	cmpl	$0, 8(%ebp)
	jne	.L2
	.loc 1 66 0
	movl	TI_errmsg@GOT(%ecx), %eax
	movl	$1598116681, (%eax)
	movl	$1145984322, 4(%eax)
	movl	$1230980428, 8(%eax)
	movl	$542066254, 12(%eax)
	movl	$1696625513, 16(%eax)
	movl	$2037674093, 20(%eax)
	movb	$0, 24(%eax)
	.loc 1 67 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 68 0
	movl	$0, -24(%ebp)
	jmp	.L4
.L2:
	.loc 1 71 0
	movl	$0, -4(%ebp)
	jmp	.L5
.L6:
	.loc 1 72 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	12(%edx,%eax), %eax
	andb	-20(%ebp), %al
	testb	%al, %al
	je	.L7
	.loc 1 73 0
	movl	$1, -24(%ebp)
	jmp	.L4
.L7:
	.loc 1 71 0
	addl	$1, -4(%ebp)
.L5:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L6
	.loc 1 76 0
	movl	$0, -24(%ebp)
.L4:
	movl	-24(%ebp), %eax
	.loc 1 77 0
	leave
	ret
.LFE69:
	.size	TI_BUNDLE_Has_Property, .-TI_BUNDLE_Has_Property
.globl TI_BUNDLE_Is_Full
	.type	TI_BUNDLE_Is_Full, @function
TI_BUNDLE_Is_Full:
.LFB70:
	.loc 1 91 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$20, %esp
.LCFI5:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 94 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 96 0
	cmpl	$0, 8(%ebp)
	jne	.L12
	.loc 1 97 0
	movl	TI_errmsg@GOT(%ecx), %eax
	movl	$1598116681, (%eax)
	movl	$1145984322, 4(%eax)
	movl	$1230980428, 8(%eax)
	movl	$542066254, 12(%eax)
	movl	$1696625513, 16(%eax)
	movl	$2037674093, 20(%eax)
	movb	$0, 24(%eax)
	.loc 1 98 0
	movl	12(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 99 0
	movl	$0, -20(%ebp)
	jmp	.L14
.L12:
	.loc 1 102 0
	movl	$0, -4(%ebp)
	jmp	.L15
.L16:
	.loc 1 103 0
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L17
	.loc 1 104 0
	movl	$0, -20(%ebp)
	jmp	.L14
.L17:
	.loc 1 102 0
	addl	$1, -4(%ebp)
.L15:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L16
	.loc 1 107 0
	movl	$1, -20(%ebp)
.L14:
	movl	-20(%ebp), %eax
	.loc 1 108 0
	leave
	ret
.LFE70:
	.size	TI_BUNDLE_Is_Full, .-TI_BUNDLE_Is_Full
.globl TI_BUNDLE_Is_Empty
	.type	TI_BUNDLE_Is_Empty, @function
TI_BUNDLE_Is_Empty:
.LFB71:
	.loc 1 122 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$20, %esp
.LCFI8:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 125 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 127 0
	cmpl	$0, 8(%ebp)
	jne	.L22
	.loc 1 128 0
	movl	TI_errmsg@GOT(%ecx), %eax
	movl	$1598116681, (%eax)
	movl	$1145984322, 4(%eax)
	movl	$1230980428, 8(%eax)
	movl	$542066254, 12(%eax)
	movl	$1696625513, 16(%eax)
	movl	$2037674093, 20(%eax)
	movb	$0, 24(%eax)
	.loc 1 129 0
	movl	12(%ebp), %eax
	movl	$-1, (%eax)
	.loc 1 130 0
	movl	$0, -20(%ebp)
	jmp	.L24
.L22:
	.loc 1 133 0
	movl	$0, -4(%ebp)
	jmp	.L25
.L26:
	.loc 1 134 0
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L27
	.loc 1 135 0
	movl	$0, -20(%ebp)
	jmp	.L24
.L27:
	.loc 1 133 0
	addl	$1, -4(%ebp)
.L25:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	-4(%ebp), %eax
	jg	.L26
	.loc 1 138 0
	movl	$1, -20(%ebp)
.L24:
	movl	-20(%ebp), %eax
	.loc 1 139 0
	leave
	ret
.LFE71:
	.size	TI_BUNDLE_Is_Empty, .-TI_BUNDLE_Is_Empty
.globl TI_BUNDLE_Return_Template
	.type	TI_BUNDLE_Return_Template, @function
TI_BUNDLE_Return_Template:
.LFB72:
	.loc 1 152 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	15(%eax), %eax
	movzbl	%al, %eax
	.loc 1 154 0
	popl	%ebp
	ret
.LFE72:
	.size	TI_BUNDLE_Return_Template, .-TI_BUNDLE_Return_Template
.globl TI_BUNDLE_Clear
	.type	TI_BUNDLE_Clear, @function
TI_BUNDLE_Clear:
.LFB73:
	.loc 1 167 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$16, %esp
.LCFI13:
	.loc 1 169 0
	movl	$0, -4(%ebp)
	jmp	.L34
.L35:
	.loc 1 170 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$0, 4(%eax,%edx,4)
	.loc 1 171 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	$0, 12(%edx,%eax)
	.loc 1 172 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	$0, 13(%edx,%eax)
	.loc 1 169 0
	addl	$1, -4(%ebp)
.L34:
	cmpl	$0, -4(%ebp)
	jle	.L35
	.loc 1 175 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movb	$0, 15(%eax)
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movb	$0, 16(%eax)
	.loc 1 177 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$1, 8(%eax)
	.loc 1 180 0
	leave
	ret
.LFE73:
	.size	TI_BUNDLE_Clear, .-TI_BUNDLE_Clear
.globl TI_BUNDLE_Slot_Available
	.type	TI_BUNDLE_Slot_Available, @function
TI_BUNDLE_Slot_Available:
.LFB74:
	.loc 1 195 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%esi
.LCFI16:
	subl	$36, %esp
.LCFI17:
	movl	12(%ebp), %eax
	movb	%al, -24(%ebp)
	.loc 1 201 0
	cmpl	$0, 16(%ebp)
	jle	.L39
	movl	$0, -32(%ebp)
	jmp	.L41
.L39:
	.loc 1 216 0
	movl	$0, -20(%ebp)
	jmp	.L42
.L43:
	.loc 1 217 0
	movl	$1, -12(%ebp)
	.loc 1 218 0
	movl	$0, -16(%ebp)
	jmp	.L44
.L45:
	.loc 1 219 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L46
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	12(%edx,%eax), %edx
	movb	%dl, -25(%ebp)
	jmp	.L48
.L46:
	movzbl	-24(%ebp), %eax
	movb	%al, -25(%ebp)
.L48:
	movzbl	-25(%ebp), %edx
	movb	%dl, -5(%ebp)
	.loc 1 220 0
	movl	-16(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L49
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L49
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	13(%edx,%eax), %eax
	testb	%al, %al
	je	.L52
.L49:
	.loc 1 222 0
	cmpb	$0, -5(%ebp)
	je	.L53
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_EXEC_Slot_Prop
	movzbl	-5(%ebp), %edx
	andl	%eax, %edx
	movl	%edx, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_EXEC_Slot_Prop
	movl	%esi, %edx
	cmpb	%al, %dl
	jne	.L55
.L53:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	13(%edx,%eax), %eax
	movzbl	%al, %esi
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_EXEC_Stop
	cmpl	%eax, %esi
	je	.L52
.L55:
	.loc 1 224 0
	movl	$0, -12(%ebp)
	.loc 1 225 0
	jmp	.L56
.L52:
	.loc 1 218 0
	addl	$1, -16(%ebp)
.L44:
	cmpl	$0, -16(%ebp)
	jle	.L45
.L56:
	.loc 1 229 0
	cmpl	$0, -12(%ebp)
	je	.L57
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movb	%al, 15(%edx)
	.loc 1 231 0
	movl	$1, -32(%ebp)
	jmp	.L41
.L57:
	.loc 1 216 0
	addl	$1, -20(%ebp)
.L42:
	cmpl	$0, -20(%ebp)
	jle	.L43
	.loc 1 234 0
	movl	$0, -32(%ebp)
.L41:
	movl	-32(%ebp), %eax
	.loc 1 235 0
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE74:
	.size	TI_BUNDLE_Slot_Available, .-TI_BUNDLE_Slot_Available
	.type	ISA_EXEC_Slot_Prop, @function
ISA_EXEC_Slot_Prop:
.LFB54:
	.file 2 "./targ_isa_bundle.h"
	.loc 2 210 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	subl	$16, %esp
.LCFI20:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 2 212 0
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	ISA_BUNDLE_info@GOT(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 2 213 0
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movzbl	12(%eax,%edx), %eax
	movzbl	%al, %eax
	.loc 2 214 0
	leave
	ret
.LFE54:
	.size	ISA_EXEC_Slot_Prop, .-ISA_EXEC_Slot_Prop
	.type	ISA_EXEC_Stop, @function
ISA_EXEC_Stop:
.LFB56:
	.loc 2 224 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$16, %esp
.LCFI23:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 2 226 0
	movl	8(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	ISA_BUNDLE_info@GOT(%ecx), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 2 227 0
	movl	12(%ebp), %edx
	movl	-4(%ebp), %eax
	movzbl	13(%eax,%edx), %eax
	movzbl	%al, %eax
	.loc 2 228 0
	leave
	ret
.LFE56:
	.size	ISA_EXEC_Stop, .-ISA_EXEC_Stop
.globl TI_BUNDLE_Stop_Bit_Available
	.type	TI_BUNDLE_Stop_Bit_Available, @function
TI_BUNDLE_Stop_Bit_Available:
.LFB75:
	.loc 1 249 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%esi
.LCFI26:
	subl	$48, %esp
.LCFI27:
	.loc 1 256 0
	cmpl	$0, 12(%ebp)
	jle	.L66
	movl	$0, -44(%ebp)
	jmp	.L68
.L66:
	.loc 1 259 0
	movl	$0, -24(%ebp)
	jmp	.L69
.L70:
	.loc 1 260 0
	movl	$1, -12(%ebp)
	.loc 1 261 0
	movl	$0, -20(%ebp)
	jmp	.L71
.L72:
	.loc 1 262 0
	movl	-20(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	.L73
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movzbl	13(%edx,%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)
	jmp	.L75
.L73:
	movl	$1, -40(%ebp)
.L75:
	movl	-40(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 263 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_EXEC_Stop
	cmpl	-16(%ebp), %eax
	je	.L76
	.loc 1 265 0
	movl	$0, -12(%ebp)
	.loc 1 266 0
	jmp	.L78
.L76:
	.loc 1 267 0
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L79
	.loc 1 269 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-20(%ebp), %eax
	movzbl	12(%edx,%eax), %eax
	movb	%al, -5(%ebp)
	.loc 1 270 0
	cmpb	$0, -5(%ebp)
	je	.L79
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_EXEC_Slot_Prop
	movzbl	-5(%ebp), %edx
	andl	%eax, %edx
	movl	%edx, %esi
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	ISA_EXEC_Slot_Prop
	movl	%esi, %edx
	cmpb	%al, %dl
	je	.L79
	.loc 1 271 0
	movl	$0, -12(%ebp)
	.loc 1 272 0
	jmp	.L78
.L79:
	.loc 1 261 0
	addl	$1, -20(%ebp)
.L71:
	cmpl	$0, -20(%ebp)
	jle	.L72
.L78:
	.loc 1 276 0
	cmpl	$0, -12(%ebp)
	je	.L83
	.loc 1 277 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-24(%ebp), %eax
	movb	%al, 15(%edx)
	.loc 1 278 0
	movl	$1, -44(%ebp)
	jmp	.L68
.L83:
	.loc 1 259 0
	addl	$1, -24(%ebp)
.L69:
	cmpl	$0, -24(%ebp)
	jle	.L70
	.loc 1 281 0
	movl	$0, -44(%ebp)
.L68:
	movl	-44(%ebp), %eax
	.loc 1 282 0
	addl	$48, %esp
	popl	%esi
	popl	%ebp
	ret
.LFE75:
	.size	TI_BUNDLE_Stop_Bit_Available, .-TI_BUNDLE_Stop_Bit_Available
.globl TI_BUNDLE_Reserve_Slot
	.type	TI_BUNDLE_Reserve_Slot, @function
TI_BUNDLE_Reserve_Slot:
.LFB76:
	.loc 1 297 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	pushl	%edi
.LCFI30:
	pushl	%esi
.LCFI31:
	subl	$24, %esp
.LCFI32:
	movl	16(%ebp), %eax
	movb	%al, -12(%ebp)
	.loc 1 299 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	$1, 4(%eax,%edx,4)
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	12(%ebp), %edx
	movzbl	-12(%ebp), %eax
	movb	%al, 12(%ecx,%edx)
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%edx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movzbl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	imull	$-12, %eax, %ecx
	movl	%edx, %eax
	sall	%cl, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-24(%ebp), %eax
	orl	%esi, %eax
	movl	-20(%ebp), %edx
	orl	%edi, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 20(%ecx)
	movl	%edx, 24(%ecx)
	.loc 1 303 0
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE76:
	.size	TI_BUNDLE_Reserve_Slot, .-TI_BUNDLE_Reserve_Slot
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3595, @object
	.size	__PRETTY_FUNCTION__.3595, 27
__PRETTY_FUNCTION__.3595:
	.string	"TI_BUNDLE_Reserve_Stop_Bit"
	.align 4
.LC0:
	.string	"TI_BUNDLE_Reserve_Stop_Bit: slot value not legal value \n"
	.align 4
.LC1:
	.string	"../../common/targ_info/access/ti_bundle.c"
.LC2:
	.string	"((BOOL) 0)"
	.text
.globl TI_BUNDLE_Reserve_Stop_Bit
	.type	TI_BUNDLE_Reserve_Stop_Bit, @function
TI_BUNDLE_Reserve_Stop_Bit:
.LFB77:
	.loc 1 317 0
	pushl	%ebp
.LCFI33:
	movl	%esp, %ebp
.LCFI34:
	pushl	%ebx
.LCFI35:
	subl	$20, %esp
.LCFI36:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 318 0
	cmpl	$0, 12(%ebp)
	js	.L90
	cmpl	$1, 12(%ebp)
	jle	.L92
.L90:
	.loc 1 319 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$56, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 320 0
	leal	__PRETTY_FUNCTION__.3595@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$320, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	__assert_fail@PLT
.L92:
	.loc 1 323 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movb	$1, 13(%edx,%eax)
	.loc 1 324 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE77:
	.size	TI_BUNDLE_Reserve_Stop_Bit, .-TI_BUNDLE_Reserve_Stop_Bit
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3606, @object
	.size	__PRETTY_FUNCTION__.3606, 29
__PRETTY_FUNCTION__.3606:
	.string	"TI_BUNDLE_Unreserve_Stop_Bit"
	.text
.globl TI_BUNDLE_Unreserve_Stop_Bit
	.type	TI_BUNDLE_Unreserve_Stop_Bit, @function
TI_BUNDLE_Unreserve_Stop_Bit:
.LFB78:
	.loc 1 338 0
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
	.loc 1 339 0
	cmpl	$0, 12(%ebp)
	js	.L95
	cmpl	$1, 12(%ebp)
	jle	.L97
.L95:
	.loc 1 340 0
	movl	stderr@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	$56, 8(%esp)
	movl	$1, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fwrite@PLT
	.loc 1 341 0
	leal	__PRETTY_FUNCTION__.3606@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	$341, 8(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	__assert_fail@PLT
.L97:
	.loc 1 344 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movb	$0, 13(%edx,%eax)
	.loc 1 345 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE78:
	.size	TI_BUNDLE_Unreserve_Stop_Bit, .-TI_BUNDLE_Unreserve_Stop_Bit
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
	.long	.LFB69
	.long	.LFE69-.LFB69
	.byte	0x4
	.long	.LCFI0-.LFB69
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
	.long	.LFB70
	.long	.LFE70-.LFB70
	.byte	0x4
	.long	.LCFI3-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.byte	0x4
	.long	.LCFI6-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.byte	0x4
	.long	.LCFI9-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.byte	0x4
	.long	.LCFI11-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.byte	0x4
	.long	.LCFI14-.LFB74
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
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.byte	0x4
	.long	.LCFI18-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.byte	0x4
	.long	.LCFI21-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.byte	0x4
	.long	.LCFI24-.LFB75
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
	.byte	0x86
	.uleb128 0x3
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.byte	0x4
	.long	.LCFI28-.LFB76
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
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.byte	0x4
	.long	.LCFI33-.LFB77
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.byte	0x4
	.long	.LCFI37-.LFB78
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
.LEFDE22:
	.file 3 "./topcode.h"
	.file 4 "../../common/targ_info/access/ti_bundle.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/bits/types.h"
	.file 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 9 "../../common/targ_info/access/ti_si.h"
	.file 10 "../../common/targ_info/access/ti_errors.h"
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB69-.Ltext0
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
	.long	.LFE69-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB70-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE70-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB71-.Ltext0
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
	.long	.LFE71-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB72-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE72-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB73-.Ltext0
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
	.long	.LFE73-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB74-.Ltext0
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
	.long	.LFE74-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB54-.Ltext0
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
	.long	.LFE54-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB56-.Ltext0
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
	.long	.LFE56-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB75-.Ltext0
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
	.long	.LFE75-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB76-.Ltext0
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
	.long	.LFE76-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB77-.Ltext0
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
	.long	.LFE77-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB78-.Ltext0
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
	.long	.LFE78-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x11d5
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../common/targ_info/access/ti_bundle.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/targ_info"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x8
	.byte	0xd6
	.long	0xb6
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
	.byte	0x7
	.byte	0x3b
	.long	0x11c
	.uleb128 0x2
	.string	"__off_t"
	.byte	0x7
	.byte	0x90
	.long	0x166
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.string	"__off64_t"
	.byte	0x7
	.byte	0x91
	.long	0x147
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x192
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.long	0x415
	.long	.LASF1
	.byte	0x94
	.byte	0x5
	.byte	0x2e
	.uleb128 0x8
	.string	"_flags"
	.byte	0x6
	.value	0x10c
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"_IO_read_ptr"
	.byte	0x6
	.value	0x111
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"_IO_read_end"
	.byte	0x6
	.value	0x112
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"_IO_read_base"
	.byte	0x6
	.value	0x113
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"_IO_write_base"
	.byte	0x6
	.value	0x114
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"_IO_write_ptr"
	.byte	0x6
	.value	0x115
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"_IO_write_end"
	.byte	0x6
	.value	0x116
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"_IO_buf_base"
	.byte	0x6
	.value	0x117
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"_IO_buf_end"
	.byte	0x6
	.value	0x118
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"_IO_save_base"
	.byte	0x6
	.value	0x11a
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"_IO_backup_base"
	.byte	0x6
	.value	0x11b
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"_IO_save_end"
	.byte	0x6
	.value	0x11c
	.long	0x18c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"_markers"
	.byte	0x6
	.value	0x11e
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"_chain"
	.byte	0x6
	.value	0x120
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"_fileno"
	.byte	0x6
	.value	0x122
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"_flags2"
	.byte	0x6
	.value	0x126
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"_old_offset"
	.byte	0x6
	.value	0x128
	.long	0x157
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"_cur_column"
	.byte	0x6
	.value	0x12c
	.long	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"_vtable_offset"
	.byte	0x6
	.value	0x12d
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x8
	.string	"_shortbuf"
	.byte	0x6
	.value	0x12e
	.long	0x47d
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x8
	.string	"_lock"
	.byte	0x6
	.value	0x132
	.long	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"_offset"
	.byte	0x6
	.value	0x13b
	.long	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"__pad1"
	.byte	0x6
	.value	0x144
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.string	"__pad2"
	.byte	0x6
	.value	0x145
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.string	"__pad3"
	.byte	0x6
	.value	0x146
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.string	"__pad4"
	.byte	0x6
	.value	0x147
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.string	"__pad5"
	.byte	0x6
	.value	0x148
	.long	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.string	"_mode"
	.byte	0x6
	.value	0x14a
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.string	"_unused2"
	.byte	0x6
	.value	0x14c
	.long	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x41b
	.uleb128 0x9
	.long	0x192
	.uleb128 0xa
	.string	"_IO_lock_t"
	.byte	0x6
	.byte	0xb0
	.uleb128 0xb
	.long	0x471
	.string	"_IO_marker"
	.byte	0xc
	.byte	0x6
	.byte	0xb6
	.uleb128 0xc
	.string	"_next"
	.byte	0x6
	.byte	0xb7
	.long	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"_sbuf"
	.byte	0x6
	.byte	0xb8
	.long	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"_pos"
	.byte	0x6
	.byte	0xbc
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x42e
	.uleb128 0x6
	.byte	0x4
	.long	0x19a
	.uleb128 0xd
	.long	0x48d
	.long	0x192
	.uleb128 0xe
	.long	0x183
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x420
	.uleb128 0xd
	.long	0x4a3
	.long	0x192
	.uleb128 0xe
	.long	0x183
	.byte	0x27
	.byte	0x0
	.uleb128 0x2
	.string	"INT"
	.byte	0x3
	.byte	0x28
	.long	0x115
	.uleb128 0x2
	.string	"mINT32"
	.byte	0x3
	.byte	0x2d
	.long	0x115
	.uleb128 0x2
	.string	"UINT"
	.byte	0x3
	.byte	0x2f
	.long	0xb6
	.uleb128 0x2
	.string	"UINT64"
	.byte	0x3
	.byte	0x31
	.long	0x12d
	.uleb128 0x2
	.string	"mUINT8"
	.byte	0x3
	.byte	0x32
	.long	0xbd
	.uleb128 0x2
	.string	"mUINT32"
	.byte	0x3
	.byte	0x34
	.long	0xb6
	.uleb128 0x2
	.string	"mUINT64"
	.byte	0x3
	.byte	0x35
	.long	0x12d
	.uleb128 0x2
	.string	"BOOL"
	.byte	0x3
	.byte	0x36
	.long	0x115
	.uleb128 0x2
	.string	"mBOOL"
	.byte	0x3
	.byte	0x37
	.long	0xbd
	.uleb128 0xf
	.long	0x533
	.byte	0x10
	.byte	0x9
	.value	0x165
	.uleb128 0x8
	.string	"dw"
	.byte	0x9
	.value	0x166
	.long	0x533
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x543
	.long	0x4f3
	.uleb128 0xe
	.long	0x183
	.byte	0x1
	.byte	0x0
	.uleb128 0x10
	.string	"SI_BAD_II_SET"
	.byte	0x9
	.value	0x167
	.long	0x51b
	.uleb128 0x10
	.string	"SI_RESOURCE_ID"
	.byte	0x9
	.value	0x188
	.long	0x4bc
	.uleb128 0xf
	.long	0x5d2
	.byte	0xc
	.byte	0x9
	.value	0x18a
	.uleb128 0x8
	.string	"name"
	.byte	0x9
	.value	0x18b
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"id"
	.byte	0x9
	.value	0x18c
	.long	0x559
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF2
	.byte	0x9
	.value	0x18d
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"word_index"
	.byte	0x9
	.value	0x18e
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"bit_index"
	.byte	0x9
	.value	0x18f
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x9
	.long	0x570
	.uleb128 0x10
	.string	"SI_RESOURCE_ID_SET"
	.byte	0x9
	.value	0x1c8
	.long	0x4f3
	.uleb128 0x10
	.string	"SI_RRW"
	.byte	0x9
	.value	0x1f6
	.long	0x4f3
	.uleb128 0xf
	.long	0x63a
	.byte	0xc
	.byte	0x9
	.value	0x21f
	.uleb128 0x8
	.string	"name"
	.byte	0x9
	.value	0x220
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"skew"
	.byte	0x9
	.value	0x221
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.long	.LASF2
	.byte	0x9
	.value	0x222
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x601
	.uleb128 0xf
	.long	0x673
	.byte	0x8
	.byte	0x9
	.value	0x251
	.uleb128 0x8
	.string	"resource"
	.byte	0x9
	.value	0x252
	.long	0x673
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"total_used"
	.byte	0x9
	.value	0x253
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d2
	.uleb128 0x9
	.long	0x63f
	.uleb128 0x10
	.string	"SI_RR"
	.byte	0x9
	.value	0x26e
	.long	0x68c
	.uleb128 0x6
	.byte	0x4
	.long	0x692
	.uleb128 0x9
	.long	0x5f2
	.uleb128 0x10
	.string	"SI_ID"
	.byte	0x9
	.value	0x27f
	.long	0x4bc
	.uleb128 0xf
	.long	0x8a3
	.byte	0x58
	.byte	0x9
	.value	0x281
	.uleb128 0x8
	.string	"name"
	.byte	0x9
	.value	0x282
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"id"
	.byte	0x9
	.value	0x283
	.long	0x697
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"operand_access_times"
	.byte	0x9
	.value	0x284
	.long	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"result_available_times"
	.byte	0x9
	.value	0x285
	.long	0x8a3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"load_access_time"
	.byte	0x9
	.value	0x286
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"last_issue_cycle"
	.byte	0x9
	.value	0x287
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"store_available_time"
	.byte	0x9
	.value	0x288
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"rr"
	.byte	0x9
	.value	0x289
	.long	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"alter_rr"
	.byte	0x9
	.value	0x28b
	.long	0x67e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"resources_used"
	.byte	0x9
	.value	0x28d
	.long	0x8ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"ii_info_size"
	.byte	0x9
	.value	0x28e
	.long	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"ii_rr"
	.byte	0x9
	.value	0x28f
	.long	0x8b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"ii_resources_used"
	.byte	0x9
	.value	0x290
	.long	0x8c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"bad_iis"
	.byte	0x9
	.value	0x291
	.long	0x543
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"valid_issue_slot_count"
	.byte	0x9
	.value	0x292
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"valid_issue_slots"
	.byte	0x9
	.value	0x293
	.long	0x8cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.string	"resource_total_vector_size"
	.byte	0x9
	.value	0x294
	.long	0x4ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.string	"resource_total_vector"
	.byte	0x9
	.value	0x295
	.long	0x8e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.string	"write_write_interlock"
	.byte	0x9
	.value	0x296
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x8a9
	.uleb128 0x9
	.long	0x4d6
	.uleb128 0x6
	.byte	0x4
	.long	0x8b4
	.uleb128 0x9
	.long	0x5d7
	.uleb128 0x6
	.byte	0x4
	.long	0x8bf
	.uleb128 0x9
	.long	0x67e
	.uleb128 0x6
	.byte	0x4
	.long	0x8ca
	.uleb128 0x9
	.long	0x8ae
	.uleb128 0x6
	.byte	0x4
	.long	0x8d5
	.uleb128 0x9
	.long	0x8da
	.uleb128 0x6
	.byte	0x4
	.long	0x63a
	.uleb128 0x6
	.byte	0x4
	.long	0x679
	.uleb128 0x9
	.long	0x6a5
	.uleb128 0x2
	.string	"ISA_EXEC_UNIT_PROPERTY"
	.byte	0x2
	.byte	0xab
	.long	0x4d6
	.uleb128 0x12
	.long	0x9b1
	.byte	0x1c
	.byte	0x2
	.byte	0xb4
	.uleb128 0xc
	.string	"name"
	.byte	0x2
	.byte	0xb5
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"asm_name"
	.byte	0x2
	.byte	0xb6
	.long	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"slot_count"
	.byte	0x2
	.byte	0xb7
	.long	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.long	.LASF3
	.byte	0x2
	.byte	0xb8
	.long	0x9b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stop"
	.byte	0x2
	.byte	0xb9
	.long	0x9c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xc
	.string	"unit"
	.byte	0x2
	.byte	0xba
	.long	0x9d1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.string	"pack_code"
	.byte	0x2
	.byte	0xbb
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xc
	.string	"stop_mask"
	.byte	0x2
	.byte	0xbc
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"slot_mask"
	.byte	0x2
	.byte	0xbd
	.long	0x4f3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xd
	.long	0x9c1
	.long	0x8eb
	.uleb128 0xe
	.long	0x183
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x9d1
	.long	0x50e
	.uleb128 0xe
	.long	0x183
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.long	0x9e1
	.long	0x4d6
	.uleb128 0xe
	.long	0x183
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"ISA_BUNDLE_INFO"
	.byte	0x2
	.byte	0xbe
	.long	0x909
	.uleb128 0xf
	.long	0xa5d
	.byte	0xc
	.byte	0x2
	.value	0x10d
	.uleb128 0x8
	.string	"comp"
	.byte	0x2
	.value	0x10e
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"index"
	.byte	0x2
	.value	0x10f
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"comp_pos"
	.byte	0x2
	.value	0x110
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"bundle_pos"
	.byte	0x2
	.value	0x111
	.long	0x4d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"mask"
	.byte	0x2
	.value	0x112
	.long	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.string	"ISA_BUNDLE_PACK_INFO"
	.byte	0x2
	.value	0x113
	.long	0x9f8
	.uleb128 0xb
	.long	0xab9
	.string	"ti_bundle"
	.byte	0x8
	.byte	0x4
	.byte	0xb7
	.uleb128 0xc
	.string	"bundle_info"
	.byte	0x4
	.byte	0xb8
	.long	0xab9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"slot_filled"
	.byte	0x4
	.byte	0xb9
	.long	0xabf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x9e1
	.uleb128 0xd
	.long	0xacf
	.long	0x502
	.uleb128 0xe
	.long	0x183
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.string	"TI_BUNDLE"
	.byte	0x4
	.byte	0xba
	.long	0xa7a
	.uleb128 0x14
	.long	0xb49
	.byte	0x1
	.string	"TI_BUNDLE_Has_Property"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x502
	.long	.LFB69
	.long	.LFE69
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x38
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0x39
	.long	0x8eb
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.byte	0x3b
	.long	0xb4f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xacf
	.uleb128 0x6
	.byte	0x4
	.long	0x4a3
	.uleb128 0x14
	.long	0xbab
	.byte	0x1
	.string	"TI_BUNDLE_Is_Full"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	0x502
	.long	.LFB70
	.long	.LFE70
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x58
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.byte	0x5a
	.long	0xb4f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x14
	.long	0xc02
	.byte	0x1
	.string	"TI_BUNDLE_Is_Empty"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	0x502
	.long	.LFB71
	.long	.LFE71
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x77
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"error"
	.byte	0x1
	.byte	0x79
	.long	0xb4f
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x14
	.long	0xc44
	.byte	0x1
	.string	"TI_BUNDLE_Return_Template"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x4a3
	.long	.LFB72
	.long	.LFE72
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0x97
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.long	0xc84
	.byte	0x1
	.string	"TI_BUNDLE_Clear"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.long	.LLST4
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0xa6
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x14
	.long	0xd17
	.byte	0x1
	.string	"TI_BUNDLE_Slot_Available"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	0x502
	.long	.LFB74
	.long	.LFE74
	.long	.LLST5
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0xbf
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF5
	.byte	0x1
	.byte	0xc0
	.long	0x8eb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF3
	.byte	0x1
	.byte	0xc2
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0xc4
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.byte	0xc5
	.long	0x8eb
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x17
	.string	"match"
	.byte	0x1
	.byte	0xc6
	.long	0x502
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1a
	.long	0xd6e
	.string	"ISA_EXEC_Slot_Prop"
	.byte	0x2
	.byte	0xd2
	.byte	0x1
	.long	0x8eb
	.long	.LFB54
	.long	.LFE54
	.long	.LLST6
	.uleb128 0x15
	.long	.LASF4
	.byte	0x2
	.byte	0xd1
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"info"
	.byte	0x2
	.byte	0xd4
	.long	0xd6e
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0xd74
	.uleb128 0x9
	.long	0x9e1
	.uleb128 0x1a
	.long	0xdcb
	.string	"ISA_EXEC_Stop"
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.long	0x502
	.long	.LFB56
	.long	.LFE56
	.long	.LLST7
	.uleb128 0x15
	.long	.LASF4
	.byte	0x2
	.byte	0xdf
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF7
	.byte	0x2
	.byte	0xdf
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"info"
	.byte	0x2
	.byte	0xe2
	.long	0xd6e
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x14
	.long	0xe6d
	.byte	0x1
	.string	"TI_BUNDLE_Stop_Bit_Available"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.long	0x502
	.long	.LFB75
	.long	.LFE75
	.long	.LLST8
	.uleb128 0x15
	.long	.LASF4
	.byte	0x1
	.byte	0xf6
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF3
	.byte	0x1
	.byte	0xf8
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xfa
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0xfa
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF6
	.byte	0x1
	.byte	0xfb
	.long	0x8eb
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x17
	.string	"stop_bit_value"
	.byte	0x1
	.byte	0xfc
	.long	0x502
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"match"
	.byte	0x1
	.byte	0xfd
	.long	0x502
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1b
	.long	0xec8
	.byte	0x1
	.string	"TI_BUNDLE_Reserve_Slot"
	.byte	0x1
	.value	0x129
	.byte	0x1
	.long	.LFB76
	.long	.LFE76
	.long	.LLST9
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.value	0x125
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x126
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF5
	.byte	0x1
	.value	0x128
	.long	0x8eb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x1b
	.long	0xf28
	.byte	0x1
	.string	"TI_BUNDLE_Reserve_Stop_Bit"
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	.LFB77
	.long	.LFE77
	.long	.LLST10
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.value	0x13a
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x13c
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF8
	.long	0xfaf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__PRETTY_FUNCTION__.3595
	.byte	0x0
	.uleb128 0x1b
	.long	0xf8a
	.byte	0x1
	.string	"TI_BUNDLE_Unreserve_Stop_Bit"
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	.LFB78
	.long	.LFE78
	.long	.LLST11
	.uleb128 0x1c
	.long	.LASF4
	.byte	0x1
	.value	0x14f
	.long	0xb49
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF3
	.byte	0x1
	.value	0x151
	.long	0x4a3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF8
	.long	0xf9a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__PRETTY_FUNCTION__.3606
	.byte	0x0
	.uleb128 0xd
	.long	0xf9a
	.long	0x192
	.uleb128 0xe
	.long	0x183
	.byte	0x1c
	.byte	0x0
	.uleb128 0x9
	.long	0xf8a
	.uleb128 0xd
	.long	0xfaf
	.long	0x192
	.uleb128 0xe
	.long	0x183
	.byte	0x1a
	.byte	0x0
	.uleb128 0x9
	.long	0xf9f
	.uleb128 0x1e
	.string	"stderr"
	.byte	0x5
	.byte	0x90
	.long	0x477
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"SI_resource_count_p"
	.byte	0x9
	.value	0x1af
	.long	0xb4f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0xfed
	.long	0x673
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1f
	.string	"SI_resources_p"
	.byte	0x9
	.value	0x1b7
	.long	0x1006
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0xfe2
	.uleb128 0x1f
	.string	"SI_RRW_initializer_p"
	.byte	0x9
	.value	0x1fc
	.long	0x102b
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x5f2
	.uleb128 0x1f
	.string	"SI_RRW_overuse_mask_p"
	.byte	0x9
	.value	0x204
	.long	0x102b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"SI_issue_slot_count_p"
	.byte	0x9
	.value	0x238
	.long	0xb4f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x107c
	.long	0x8da
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1f
	.string	"SI_issue_slots_p"
	.byte	0x9
	.value	0x240
	.long	0x1097
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x1071
	.uleb128 0xd
	.long	0x10a8
	.long	0x10a8
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.long	0x8e6
	.uleb128 0x1f
	.string	"SI_top_si_p"
	.byte	0x9
	.value	0x29d
	.long	0x10c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.long	0x109d
	.uleb128 0x1f
	.string	"SI_ID_count_p"
	.byte	0x9
	.value	0x30b
	.long	0xb4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.string	"SI_ID_si_p"
	.byte	0x9
	.value	0x318
	.long	0x10c4
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x1107
	.long	0x192
	.uleb128 0xe
	.long	0x183
	.byte	0x4f
	.byte	0x0
	.uleb128 0x1e
	.string	"TI_errmsg"
	.byte	0xa
	.byte	0x51
	.long	0x10f7
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x1125
	.long	0x8eb
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1e
	.string	"ISA_EXEC_unit_prop"
	.byte	0x2
	.byte	0xc2
	.long	0x1141
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x111a
	.uleb128 0xd
	.long	0x1151
	.long	0x9e1
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1e
	.string	"ISA_BUNDLE_info"
	.byte	0x2
	.byte	0xfd
	.long	0x116a
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x1146
	.uleb128 0xd
	.long	0x117a
	.long	0xa5d
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x1f
	.string	"ISA_BUNDLE_pack_info"
	.byte	0x2
	.value	0x117
	.long	0x1199
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x116f
	.uleb128 0xd
	.long	0x11ae
	.long	0x4d6
	.uleb128 0xe
	.long	0x183
	.byte	0x4
	.byte	0x0
	.uleb128 0x1f
	.string	"ISA_BUNDLE_pack_info_index"
	.byte	0x2
	.value	0x136
	.long	0x11d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x119e
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x121
	.value	0x2
	.long	.Ldebug_info0
	.long	0x11d9
	.long	0xae0
	.string	"TI_BUNDLE_Has_Property"
	.long	0xb55
	.string	"TI_BUNDLE_Is_Full"
	.long	0xbab
	.string	"TI_BUNDLE_Is_Empty"
	.long	0xc02
	.string	"TI_BUNDLE_Return_Template"
	.long	0xc44
	.string	"TI_BUNDLE_Clear"
	.long	0xc84
	.string	"TI_BUNDLE_Slot_Available"
	.long	0xdcb
	.string	"TI_BUNDLE_Stop_Bit_Available"
	.long	0xe6d
	.string	"TI_BUNDLE_Reserve_Slot"
	.long	0xec8
	.string	"TI_BUNDLE_Reserve_Stop_Bit"
	.long	0xf28
	.string	"TI_BUNDLE_Unreserve_Stop_Bit"
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
.LASF2:
	.string	"avail_per_cycle"
.LASF8:
	.string	"__PRETTY_FUNCTION__"
.LASF4:
	.string	"bundle"
.LASF5:
	.string	"property"
.LASF6:
	.string	"slot_prop"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"slot_index"
.LASF3:
	.string	"slot"
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
