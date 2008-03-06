	.file	"fibheap.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl fibheap_new
	.type	fibheap_new, @function
fibheap_new:
.LFB5:
	.file 1 "../../libiberty/fibheap.c"
	.loc 1 63 0
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
	.loc 1 64 0
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	.loc 1 65 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE5:
	.size	fibheap_new, .-fibheap_new
	.type	fibnode_new, @function
fibnode_new:
.LFB6:
	.loc 1 70 0
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
	.loc 1 73 0
	movl	$28, 4(%esp)
	movl	$1, (%esp)
	call	xcalloc@PLT
	movl	%eax, -8(%ebp)
	.loc 1 74 0
	movl	-8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 75 0
	movl	-8(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 77 0
	movl	-8(%ebp), %eax
	.loc 1 78 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE6:
	.size	fibnode_new, .-fibnode_new
.globl fibheap_insert
	.type	fibheap_insert, @function
fibheap_insert:
.LFB9:
	.loc 1 114 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$24, %esp
.LCFI10:
	.loc 1 118 0
	call	fibnode_new
	movl	%eax, -4(%ebp)
	.loc 1 121 0
	movl	-4(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 122 0
	movl	-4(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 125 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_ins_root
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L6
	movl	-4(%ebp), %eax
	movl	16(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jge	.L8
.L6:
	.loc 1 130 0
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
.L8:
	.loc 1 132 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 134 0
	movl	-4(%ebp), %eax
	.loc 1 135 0
	leave
	ret
.LFE9:
	.size	fibheap_insert, .-fibheap_insert
.globl fibheap_min
	.type	fibheap_min, @function
fibheap_min:
.LFB10:
	.loc 1 141 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$4, %esp
.LCFI13:
	.loc 1 143 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L11
	.loc 1 144 0
	movl	$0, -4(%ebp)
	jmp	.L13
.L11:
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, -4(%ebp)
.L13:
	movl	-4(%ebp), %eax
	.loc 1 146 0
	leave
	ret
.LFE10:
	.size	fibheap_min, .-fibheap_min
.globl fibheap_min_key
	.type	fibheap_min_key, @function
fibheap_min_key:
.LFB11:
	.loc 1 152 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	subl	$4, %esp
.LCFI16:
	.loc 1 154 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L16
	.loc 1 155 0
	movl	$0, -4(%ebp)
	jmp	.L18
.L16:
	.loc 1 156 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, -4(%ebp)
.L18:
	movl	-4(%ebp), %eax
	.loc 1 157 0
	leave
	ret
.LFE11:
	.size	fibheap_min_key, .-fibheap_min_key
.globl fibheap_union
	.type	fibheap_union, @function
fibheap_union:
.LFB12:
	.loc 1 164 0
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
	.loc 1 168 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	.L21
	.loc 1 170 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 171 0
	movl	12(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L21:
	.loc 1 173 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	.L24
	.loc 1 175 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	.L23
.L24:
	.loc 1 180 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 181 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 182 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 183 0
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 184 0
	movl	-12(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_compare
	testl	%eax, %eax
	jns	.L26
	.loc 1 189 0
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L26:
	.loc 1 191 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 192 0
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
.L23:
	movl	-24(%ebp), %eax
	.loc 1 193 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE12:
	.size	fibheap_union, .-fibheap_union
	.type	fibheap_compare, @function
fibheap_compare:
.LFB7:
	.loc 1 85 0
	pushl	%ebp
.LCFI21:
	movl	%esp, %ebp
.LCFI22:
	subl	$4, %esp
.LCFI23:
	.loc 1 86 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jge	.L30
	.loc 1 87 0
	movl	$-1, -4(%ebp)
	jmp	.L32
.L30:
	.loc 1 88 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jle	.L33
	.loc 1 89 0
	movl	$1, -4(%ebp)
	jmp	.L32
.L33:
	.loc 1 90 0
	movl	$0, -4(%ebp)
.L32:
	movl	-4(%ebp), %eax
	.loc 1 91 0
	leave
	ret
.LFE7:
	.size	fibheap_compare, .-fibheap_compare
.globl fibheap_extract_min
	.type	fibheap_extract_min, @function
fibheap_extract_min:
.LFB13:
	.loc 1 199 0
	pushl	%ebp
.LCFI24:
	movl	%esp, %ebp
.LCFI25:
	pushl	%ebx
.LCFI26:
	subl	$20, %esp
.LCFI27:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 201 0
	movl	$0, -8(%ebp)
	.loc 1 204 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L37
	.loc 1 208 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_extr_min_node
	movl	%eax, -12(%ebp)
	.loc 1 209 0
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 210 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
.L37:
	.loc 1 213 0
	movl	-8(%ebp), %eax
	.loc 1 214 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE13:
	.size	fibheap_extract_min, .-fibheap_extract_min
.globl fibheap_replace_key_data
	.type	fibheap_replace_key_data, @function
fibheap_replace_key_data:
.LFB14:
	.loc 1 223 0
	pushl	%ebp
.LCFI28:
	movl	%esp, %ebp
.LCFI29:
	subl	$40, %esp
.LCFI30:
	.loc 1 231 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_comp_data
	testl	%eax, %eax
	jle	.L41
	.loc 1 232 0
	movl	$0, -20(%ebp)
	jmp	.L43
.L41:
	.loc 1 234 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 235 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 236 0
	movl	12(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%edx)
	.loc 1 237 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, 16(%edx)
	.loc 1 238 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 240 0
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L44
	.loc 1 241 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	.L43
.L44:
	.loc 1 246 0
	cmpl	$0, -4(%ebp)
	je	.L46
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_compare
	testl	%eax, %eax
	jg	.L46
	.loc 1 248 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_cut
	.loc 1 249 0
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_cascading_cut
.L46:
	.loc 1 252 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_compare
	testl	%eax, %eax
	jg	.L49
	.loc 1 253 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
.L49:
	.loc 1 255 0
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
.L43:
	movl	-20(%ebp), %eax
	.loc 1 256 0
	leave
	ret
.LFE14:
	.size	fibheap_replace_key_data, .-fibheap_replace_key_data
	.type	fibheap_comp_data, @function
fibheap_comp_data:
.LFB8:
	.loc 1 99 0
	pushl	%ebp
.LCFI31:
	movl	%esp, %ebp
.LCFI32:
	subl	$44, %esp
.LCFI33:
	.loc 1 102 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 103 0
	movl	16(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 105 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_compare
	.loc 1 106 0
	leave
	ret
.LFE8:
	.size	fibheap_comp_data, .-fibheap_comp_data
.globl fibheap_replace_data
	.type	fibheap_replace_data, @function
fibheap_replace_data:
.LFB15:
	.loc 1 264 0
	pushl	%ebp
.LCFI34:
	movl	%esp, %ebp
.LCFI35:
	pushl	%ebx
.LCFI36:
	subl	$20, %esp
.LCFI37:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 265 0
	movl	12(%ebp), %eax
	movl	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_replace_key_data@PLT
	.loc 1 266 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	fibheap_replace_data, .-fibheap_replace_data
.globl fibheap_replace_key
	.type	fibheap_replace_key, @function
fibheap_replace_key:
.LFB16:
	.loc 1 274 0
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
	.loc 1 275 0
	movl	12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 276 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_replace_key_data@PLT
	.loc 1 277 0
	movl	-8(%ebp), %eax
	.loc 1 278 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	fibheap_replace_key, .-fibheap_replace_key
.globl fibheap_delete_node
	.type	fibheap_delete_node, @function
fibheap_delete_node:
.LFB17:
	.loc 1 285 0
	pushl	%ebp
.LCFI42:
	movl	%esp, %ebp
.LCFI43:
	pushl	%ebx
.LCFI44:
	subl	$36, %esp
.LCFI45:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 286 0
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 289 0
	movl	$-2147483648, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_replace_key@PLT
	.loc 1 290 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_extract_min@PLT
	.loc 1 292 0
	movl	-8(%ebp), %eax
	.loc 1 293 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE17:
	.size	fibheap_delete_node, .-fibheap_delete_node
.globl fibheap_delete
	.type	fibheap_delete, @function
fibheap_delete:
.LFB18:
	.loc 1 299 0
	pushl	%ebp
.LCFI46:
	movl	%esp, %ebp
.LCFI47:
	pushl	%ebx
.LCFI48:
	subl	$4, %esp
.LCFI49:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 300 0
	jmp	.L61
.L62:
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_extr_min_node
	movl	%eax, (%esp)
	call	free@PLT
.L61:
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L62
	.loc 1 303 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	free@PLT
	.loc 1 304 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE18:
	.size	fibheap_delete, .-fibheap_delete
.globl fibheap_empty
	.type	fibheap_empty, @function
fibheap_empty:
.LFB19:
	.loc 1 310 0
	pushl	%ebp
.LCFI50:
	movl	%esp, %ebp
.LCFI51:
	.loc 1 311 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 1 312 0
	popl	%ebp
	ret
.LFE19:
	.size	fibheap_empty, .-fibheap_empty
	.type	fibheap_extr_min_node, @function
fibheap_extr_min_node:
.LFB20:
	.loc 1 318 0
	pushl	%ebp
.LCFI52:
	movl	%esp, %ebp
.LCFI53:
	subl	$24, %esp
.LCFI54:
	.loc 1 319 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 324 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	$0, -4(%ebp)
	jmp	.L68
.L69:
	.loc 1 326 0
	cmpl	$0, -4(%ebp)
	jne	.L70
	.loc 1 327 0
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
.L70:
	.loc 1 328 0
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 329 0
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 330 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_ins_root
	.loc 1 324 0
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
.L68:
	movl	-12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	je	.L72
	cmpl	$0, -12(%ebp)
	jne	.L69
.L72:
	.loc 1 334 0
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_rem_root
	.loc 1 335 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 338 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L74
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	.L76
.L74:
	.loc 1 344 0
	movl	-16(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 345 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_consolidate
.L76:
	.loc 1 348 0
	movl	-16(%ebp), %eax
	.loc 1 349 0
	leave
	ret
.LFE20:
	.size	fibheap_extr_min_node, .-fibheap_extr_min_node
	.type	fibheap_ins_root, @function
fibheap_ins_root:
.LFB21:
	.loc 1 356 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	subl	$8, %esp
.LCFI57:
	.loc 1 359 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L79
	.loc 1 361 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 362 0
	movl	12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 363 0
	movl	12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 364 0
	jmp	.L82
.L79:
	.loc 1 369 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fibnode_insert_after
.L82:
	.loc 1 370 0
	leave
	ret
.LFE21:
	.size	fibheap_ins_root, .-fibheap_ins_root
	.type	fibheap_rem_root, @function
fibheap_rem_root:
.LFB22:
	.loc 1 377 0
	pushl	%ebp
.LCFI58:
	movl	%esp, %ebp
.LCFI59:
	subl	$8, %esp
.LCFI60:
	.loc 1 378 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L84
	.loc 1 379 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	jmp	.L87
.L84:
	.loc 1 381 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fibnode_remove
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
.L87:
	.loc 1 382 0
	leave
	ret
.LFE22:
	.size	fibheap_rem_root, .-fibheap_rem_root
	.type	fibheap_consolidate, @function
fibheap_consolidate:
.LFB23:
	.loc 1 388 0
	pushl	%ebp
.LCFI61:
	movl	%esp, %ebp
.LCFI62:
	pushl	%edi
.LCFI63:
	subl	$180, %esp
.LCFI64:
	.loc 1 397 0
	movl	$33, -12(%ebp)
	.loc 1 399 0
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	leal	-164(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	.loc 1 401 0
	jmp	.L89
.L90:
	.loc 1 403 0
	movl	-32(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 404 0
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_rem_root
	.loc 1 405 0
	movl	-24(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2147483647, %eax
	movl	%eax, -16(%ebp)
	.loc 1 406 0
	jmp	.L91
.L92:
	.loc 1 408 0
	movl	-16(%ebp), %eax
	movl	-164(%ebp,%eax,4), %eax
	movl	%eax, -28(%ebp)
	.loc 1 409 0
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_compare
	testl	%eax, %eax
	jle	.L93
.LBB2:
	.loc 1 412 0
	movl	-24(%ebp), %eax
	movl	%eax, -8(%ebp)
	.loc 1 413 0
	movl	-28(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 414 0
	movl	-8(%ebp), %eax
	movl	%eax, -28(%ebp)
.L93:
.LBE2:
	.loc 1 416 0
	movl	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_link
	.loc 1 417 0
	movl	-16(%ebp), %eax
	movl	$0, -164(%ebp,%eax,4)
	.loc 1 418 0
	addl	$1, -16(%ebp)
.L91:
	.loc 1 406 0
	movl	-16(%ebp), %eax
	movl	-164(%ebp,%eax,4), %eax
	testl	%eax, %eax
	jne	.L92
	.loc 1 420 0
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, -164(%ebp,%edx,4)
.L89:
	.loc 1 401 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	cmpl	$0, -32(%ebp)
	jne	.L90
	.loc 1 422 0
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	.loc 1 423 0
	movl	$0, -20(%ebp)
	jmp	.L97
.L98:
	.loc 1 424 0
	movl	-20(%ebp), %eax
	movl	-164(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	.L99
	.loc 1 426 0
	movl	-20(%ebp), %eax
	movl	-164(%ebp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_ins_root
	.loc 1 427 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.L101
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	-164(%ebp,%eax,4), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_compare
	testl	%eax, %eax
	jns	.L99
.L101:
	.loc 1 428 0
	movl	-20(%ebp), %eax
	movl	-164(%ebp,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
.L99:
	.loc 1 423 0
	addl	$1, -20(%ebp)
.L97:
	movl	-20(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L98
	.loc 1 430 0
	addl	$180, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE23:
	.size	fibheap_consolidate, .-fibheap_consolidate
	.type	fibheap_link, @function
fibheap_link:
.LFB24:
	.loc 1 438 0
	pushl	%ebp
.LCFI65:
	movl	%esp, %ebp
.LCFI66:
	subl	$8, %esp
.LCFI67:
	.loc 1 439 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L106
	.loc 1 440 0
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	jmp	.L108
.L106:
	.loc 1 442 0
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	fibnode_insert_after
.L108:
	.loc 1 443 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 444 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2147483647, %eax
	addl	$1, %eax
	andl	$2147483647, %eax
	movl	16(%ebp), %edx
	movl	%eax, %ecx
	andl	$2147483647, %ecx
	movl	24(%edx), %eax
	andl	$-2147483648, %eax
	orl	%ecx, %eax
	movl	%eax, 24(%edx)
	.loc 1 445 0
	movl	12(%ebp), %edx
	movzbl	27(%edx), %eax
	andl	$127, %eax
	movb	%al, 27(%edx)
	.loc 1 446 0
	leave
	ret
.LFE24:
	.size	fibheap_link, .-fibheap_link
	.type	fibheap_cut, @function
fibheap_cut:
.LFB25:
	.loc 1 454 0
	pushl	%ebp
.LCFI68:
	movl	%esp, %ebp
.LCFI69:
	subl	$8, %esp
.LCFI70:
	.loc 1 455 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	fibnode_remove
	.loc 1 456 0
	movl	16(%ebp), %eax
	movl	24(%eax), %eax
	andl	$2147483647, %eax
	subl	$1, %eax
	andl	$2147483647, %eax
	movl	16(%ebp), %edx
	movl	%eax, %ecx
	andl	$2147483647, %ecx
	movl	24(%edx), %eax
	andl	$-2147483648, %eax
	orl	%ecx, %eax
	movl	%eax, 24(%edx)
	.loc 1 457 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_ins_root
	.loc 1 458 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 459 0
	movl	12(%ebp), %edx
	movzbl	27(%edx), %eax
	andl	$127, %eax
	movb	%al, 27(%edx)
	.loc 1 460 0
	leave
	ret
.LFE25:
	.size	fibheap_cut, .-fibheap_cut
	.type	fibheap_cascading_cut, @function
fibheap_cascading_cut:
.LFB26:
	.loc 1 466 0
	pushl	%ebp
.LCFI71:
	movl	%esp, %ebp
.LCFI72:
	subl	$40, %esp
.LCFI73:
	.loc 1 469 0
	jmp	.L113
.L114:
	.loc 1 471 0
	movl	12(%ebp), %eax
	movzbl	27(%eax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L115
	.loc 1 473 0
	movl	12(%ebp), %eax
	movzbl	27(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 27(%eax)
	.loc 1 474 0
	jmp	.L118
.L115:
	.loc 1 478 0
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	fibheap_cut
	.loc 1 479 0
	movl	-4(%ebp), %eax
	movl	%eax, 12(%ebp)
.L113:
	.loc 1 469 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	jne	.L114
.L118:
	.loc 1 482 0
	leave
	ret
.LFE26:
	.size	fibheap_cascading_cut, .-fibheap_cascading_cut
	.type	fibnode_insert_after, @function
fibnode_insert_after:
.LFB27:
	.loc 1 488 0
	pushl	%ebp
.LCFI74:
	movl	%esp, %ebp
.LCFI75:
	.loc 1 489 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L120
	.loc 1 491 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 492 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 493 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 494 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	jmp	.L123
.L120:
	.loc 1 498 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 499 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 500 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 501 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
.L123:
	.loc 1 503 0
	popl	%ebp
	ret
.LFE27:
	.size	fibnode_insert_after, .-fibnode_insert_after
	.type	fibnode_remove, @function
fibnode_remove:
.LFB28:
	.loc 1 508 0
	pushl	%ebp
.LCFI76:
	movl	%esp, %ebp
.LCFI77:
	subl	$16, %esp
.LCFI78:
	.loc 1 511 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L125
	.loc 1 512 0
	movl	$0, -4(%ebp)
	jmp	.L127
.L125:
	.loc 1 514 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -4(%ebp)
.L127:
	.loc 1 516 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L128
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L128
	.loc 1 517 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 4(%edx)
.L128:
	.loc 1 519 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	.loc 1 520 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	.loc 1 522 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 523 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 524 0
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 1 526 0
	movl	-4(%ebp), %eax
	.loc 1 527 0
	leave
	ret
.LFE28:
	.size	fibnode_remove, .-fibnode_remove
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.byte	0x4
	.long	.LCFI8-.LFB9
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
	.long	.LFB10
	.long	.LFE10-.LFB10
	.byte	0x4
	.long	.LCFI11-.LFB10
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.byte	0x4
	.long	.LCFI14-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.byte	0x4
	.long	.LCFI17-.LFB12
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.byte	0x4
	.long	.LCFI21-.LFB7
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
	.long	.LFB13
	.long	.LFE13-.LFB13
	.byte	0x4
	.long	.LCFI24-.LFB13
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
	.long	.LFB14
	.long	.LFE14-.LFB14
	.byte	0x4
	.long	.LCFI28-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.byte	0x4
	.long	.LCFI31-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI32-.LCFI31
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.byte	0x4
	.long	.LCFI34-.LFB15
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
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.byte	0x4
	.long	.LCFI38-.LFB16
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
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.byte	0x4
	.long	.LCFI42-.LFB17
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
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.byte	0x4
	.long	.LCFI46-.LFB18
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
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.byte	0x4
	.long	.LCFI50-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI52-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI55-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI58-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.byte	0x4
	.long	.LCFI61-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI64-.LCFI62
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.byte	0x4
	.long	.LCFI65-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.byte	0x4
	.long	.LCFI68-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.byte	0x4
	.long	.LCFI71-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI72-.LCFI71
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.byte	0x4
	.long	.LCFI74-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.byte	0x4
	.long	.LCFI76-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE46:
	.file 2 "../../include/gnu/fibheap.h"
	.file 3 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
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
	.long	.LFB9-.Ltext0
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
	.long	.LFE9-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB10-.Ltext0
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
	.long	.LFE10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB11-.Ltext0
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
	.long	.LFE11-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LFB12-.Ltext0
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
	.long	.LFE12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB7-.Ltext0
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
	.long	.LFE7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB13-.Ltext0
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
	.long	.LFE13-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LFB14-.Ltext0
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
	.long	.LFE14-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LFB8-.Ltext0
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
	.long	.LFE8-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LFB15-.Ltext0
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
	.long	.LFE15-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LFB16-.Ltext0
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
	.long	.LFE16-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LFB17-.Ltext0
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
	.long	.LFE17-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LFB18-.Ltext0
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
	.long	.LFE18-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB19-.Ltext0
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
	.long	.LFE19-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LFB20-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI52-.Ltext0
	.long	.LCFI53-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI53-.Ltext0
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LFB22-.Ltext0
	.long	.LCFI58-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI58-.Ltext0
	.long	.LCFI59-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI59-.Ltext0
	.long	.LFE22-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LFB23-.Ltext0
	.long	.LCFI61-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI61-.Ltext0
	.long	.LCFI62-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI62-.Ltext0
	.long	.LFE23-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LFB24-.Ltext0
	.long	.LCFI65-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI65-.Ltext0
	.long	.LCFI66-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI66-.Ltext0
	.long	.LFE24-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB25-.Ltext0
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
	.long	.LFE25-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB26-.Ltext0
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
	.long	.LFE26-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LFB27-.Ltext0
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
	.long	.LFE27-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LFB28-.Ltext0
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
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xa77
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../libiberty/fibheap.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/libiberty"
	.uleb128 0x2
	.string	"size_t"
	.byte	0x3
	.byte	0xd6
	.long	0xa6
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0x4
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
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
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.string	"fibheapkey_t"
	.byte	0x2
	.byte	0x31
	.long	0xb4
	.uleb128 0x6
	.long	0x1a6
	.string	"fibheap"
	.byte	0xc
	.byte	0x2
	.byte	0x34
	.uleb128 0x7
	.string	"nodes"
	.byte	0x2
	.byte	0x35
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"min"
	.byte	0x2
	.byte	0x36
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"root"
	.byte	0x2
	.byte	0x37
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.long	0x237
	.string	"fibnode"
	.byte	0x1c
	.byte	0x2
	.byte	0x36
	.uleb128 0x8
	.long	.LASF1
	.byte	0x2
	.byte	0x3c
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"child"
	.byte	0x2
	.byte	0x3d
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"left"
	.byte	0x2
	.byte	0x3e
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"right"
	.byte	0x2
	.byte	0x3f
	.long	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"key"
	.byte	0x2
	.byte	0x40
	.long	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"data"
	.byte	0x2
	.byte	0x41
	.long	0x152
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"degree"
	.byte	0x2
	.byte	0x42
	.long	0xa6
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"mark"
	.byte	0x2
	.byte	0x43
	.long	0xa6
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.long	0x1a6
	.uleb128 0x2
	.string	"fibheap_t"
	.byte	0x2
	.byte	0x38
	.long	0x24e
	.uleb128 0xa
	.byte	0x4
	.long	0x168
	.uleb128 0x2
	.string	"fibnode_t"
	.byte	0x2
	.byte	0x44
	.long	0x237
	.uleb128 0xb
	.byte	0x1
	.string	"fibheap_new"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x23d
	.long	.LFB5
	.long	.LFE5
	.long	.LLST0
	.uleb128 0xc
	.long	0x2b9
	.string	"fibnode_new"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	0x254
	.long	.LFB6
	.long	.LFE6
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF3
	.byte	0x1
	.byte	0x47
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.long	0x31b
	.byte	0x1
	.string	"fibheap_insert"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	0x254
	.long	.LFB9
	.long	.LFE9
	.long	.LLST2
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x6f
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x70
	.long	0x154
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"data"
	.byte	0x1
	.byte	0x71
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.long	.LASF3
	.byte	0x1
	.byte	0x73
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xe
	.long	0x34f
	.byte	0x1
	.string	"fibheap_min"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	0x152
	.long	.LFB10
	.long	.LFE10
	.long	.LLST3
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x8c
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xe
	.long	0x387
	.byte	0x1
	.string	"fibheap_min_key"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x154
	.long	.LFB11
	.long	.LFE11
	.long	.LLST4
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x97
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xe
	.long	0x400
	.byte	0x1
	.string	"fibheap_union"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x23d
	.long	.LFB12
	.long	.LFE12
	.long	.LLST5
	.uleb128 0x10
	.string	"heapa"
	.byte	0x1
	.byte	0xa2
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"heapb"
	.byte	0x1
	.byte	0xa3
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"a_root"
	.byte	0x1
	.byte	0xa5
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"b_root"
	.byte	0x1
	.byte	0xa5
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"temp"
	.byte	0x1
	.byte	0xa5
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xc
	.long	0x44f
	.string	"fibheap_compare"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	0xad
	.long	.LFB7
	.long	.LFE7
	.long	.LLST6
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x52
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0x53
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x54
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0xe
	.long	0x4a5
	.byte	0x1
	.string	"fibheap_extract_min"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x152
	.long	.LFB13
	.long	.LFE13
	.long	.LLST7
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0xc6
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"z"
	.byte	0x1
	.byte	0xc8
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.long	0x53c
	.byte	0x1
	.string	"fibheap_replace_key_data"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	0x152
	.long	.LFB14
	.long	.LFE14
	.long	.LLST8
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0xdb
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF3
	.byte	0x1
	.byte	0xdc
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0xdd
	.long	0x154
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"data"
	.byte	0x1
	.byte	0xde
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"odata"
	.byte	0x1
	.byte	0xe0
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"okey"
	.byte	0x1
	.byte	0xe1
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.string	"y"
	.byte	0x1
	.byte	0xe2
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0xc
	.long	0x5aa
	.string	"fibheap_comp_data"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	0xad
	.long	.LFB8
	.long	.LFE8
	.long	.LLST9
	.uleb128 0xf
	.long	.LASF2
	.byte	0x1
	.byte	0x5f
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x60
	.long	0x154
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"data"
	.byte	0x1
	.byte	0x61
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x62
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"a"
	.byte	0x1
	.byte	0x64
	.long	0x1a6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x12
	.long	0x608
	.byte	0x1
	.string	"fibheap_replace_data"
	.byte	0x1
	.value	0x108
	.byte	0x1
	.long	0x152
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x105
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x106
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"data"
	.byte	0x1
	.value	0x107
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x12
	.long	0x674
	.byte	0x1
	.string	"fibheap_replace_key"
	.byte	0x1
	.value	0x112
	.byte	0x1
	.long	0x154
	.long	.LFB16
	.long	.LFE16
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x10f
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x110
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.value	0x111
	.long	0x154
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.string	"okey"
	.byte	0x1
	.value	0x113
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.long	0x6d0
	.byte	0x1
	.string	"fibheap_delete_node"
	.byte	0x1
	.value	0x11d
	.byte	0x1
	.long	0x152
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x11b
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x11c
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.value	0x11e
	.long	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.long	0x705
	.byte	0x1
	.string	"fibheap_delete"
	.byte	0x1
	.value	0x12b
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x12a
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x12
	.long	0x73d
	.byte	0x1
	.string	"fibheap_empty"
	.byte	0x1
	.value	0x136
	.byte	0x1
	.long	0xad
	.long	.LFB19
	.long	.LFE19
	.long	.LLST14
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x135
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x17
	.long	0x7b5
	.string	"fibheap_extr_min_node"
	.byte	0x1
	.value	0x13e
	.byte	0x1
	.long	0x254
	.long	.LFB20
	.long	.LFE20
	.long	.LLST15
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x13d
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.value	0x13f
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x140
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x140
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.string	"orig"
	.byte	0x1
	.value	0x140
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x18
	.long	0x7fa
	.string	"fibheap_ins_root"
	.byte	0x1
	.value	0x164
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST16
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x162
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x163
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x18
	.long	0x83f
	.string	"fibheap_rem_root"
	.byte	0x1
	.value	0x179
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST17
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x177
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x178
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x18
	.long	0x8ee
	.string	"fibheap_consolidate"
	.byte	0x1
	.value	0x184
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST18
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x183
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x185
	.long	0x8ee
	.byte	0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x15
	.string	"w"
	.byte	0x1
	.value	0x186
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.value	0x187
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.value	0x188
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x189
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.value	0x18a
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"D"
	.byte	0x1
	.value	0x18b
	.long	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x15
	.string	"temp"
	.byte	0x1
	.value	0x19b
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	0x8fe
	.long	0x254
	.uleb128 0x1b
	.long	0xd1
	.byte	0x20
	.byte	0x0
	.uleb128 0x18
	.long	0x94e
	.string	"fibheap_link"
	.byte	0x1
	.value	0x1b6
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST19
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x1b3
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x1b4
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x1b5
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x18
	.long	0x99d
	.string	"fibheap_cut"
	.byte	0x1
	.value	0x1c6
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.long	.LLST20
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x1c3
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x1c4
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF1
	.byte	0x1
	.value	0x1c5
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x18
	.long	0x9f2
	.string	"fibheap_cascading_cut"
	.byte	0x1
	.value	0x1d2
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST21
	.uleb128 0x13
	.long	.LASF2
	.byte	0x1
	.value	0x1d0
	.long	0x23d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"y"
	.byte	0x1
	.value	0x1d1
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"z"
	.byte	0x1
	.value	0x1d3
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x18
	.long	0xa37
	.string	"fibnode_insert_after"
	.byte	0x1
	.value	0x1e8
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST22
	.uleb128 0x14
	.string	"a"
	.byte	0x1
	.value	0x1e6
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"b"
	.byte	0x1
	.value	0x1e7
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x1c
	.string	"fibnode_remove"
	.byte	0x1
	.value	0x1fc
	.byte	0x1
	.long	0x254
	.long	.LFB28
	.long	.LFE28
	.long	.LLST23
	.uleb128 0x13
	.long	.LASF3
	.byte	0x1
	.value	0x1fb
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.value	0x1fd
	.long	0x254
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x10a
	.value	0x2
	.long	.Ldebug_info0
	.long	0xa7b
	.long	0x265
	.string	"fibheap_new"
	.long	0x2b9
	.string	"fibheap_insert"
	.long	0x31b
	.string	"fibheap_min"
	.long	0x34f
	.string	"fibheap_min_key"
	.long	0x387
	.string	"fibheap_union"
	.long	0x44f
	.string	"fibheap_extract_min"
	.long	0x4a5
	.string	"fibheap_replace_key_data"
	.long	0x5aa
	.string	"fibheap_replace_data"
	.long	0x608
	.string	"fibheap_replace_key"
	.long	0x674
	.string	"fibheap_delete_node"
	.long	0x6d0
	.string	"fibheap_delete"
	.long	0x705
	.string	"fibheap_empty"
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
	.string	"parent"
.LASF2:
	.string	"heap"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"node"
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.text.__i686.get_pc_thunk.bx,"axG",@progbits,__i686.get_pc_thunk.bx,comdat
.globl __i686.get_pc_thunk.bx
	.hidden	__i686.get_pc_thunk.bx
	.type	__i686.get_pc_thunk.bx, @function
__i686.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.section	.note.GNU-stack,"",@progbits
