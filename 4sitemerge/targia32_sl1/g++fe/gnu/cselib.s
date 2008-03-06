	.file	"cselib.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.type	new_elt_list, @function
new_elt_list:
.LFB15:
	.file 1 "../../../kg++fe/gnu/cselib.c"
	.loc 1 138 0
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
	.loc 1 139 0
	movl	empty_elt_lists@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 141 0
	cmpl	$0, -8(%ebp)
	je	.L2
	.loc 1 142 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, empty_elt_lists@GOTOFF(%ebx)
	jmp	.L4
.L2:
	.loc 1 144 0
	movl	$8, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
.L4:
	.loc 1 145 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 146 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 147 0
	movl	-8(%ebp), %eax
	.loc 1 148 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE15:
	.size	new_elt_list, .-new_elt_list
	.type	new_elt_loc_list, @function
new_elt_loc_list:
.LFB16:
	.loc 1 157 0
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
	.loc 1 158 0
	movl	empty_elt_loc_lists@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 160 0
	cmpl	$0, -8(%ebp)
	je	.L7
	.loc 1 161 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, empty_elt_loc_lists@GOTOFF(%ebx)
	jmp	.L9
.L7:
	.loc 1 163 0
	movl	$16, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
.L9:
	.loc 1 164 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 165 0
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 166 0
	movl	cselib_current_insn@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 167 0
	movzbl	cselib_current_insn_in_libcall@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movb	%dl, 12(%eax)
	.loc 1 168 0
	movl	-8(%ebp), %eax
	.loc 1 169 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE16:
	.size	new_elt_loc_list, .-new_elt_loc_list
	.type	unchain_one_elt_list, @function
unchain_one_elt_list:
.LFB17:
	.loc 1 177 0
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	subl	$16, %esp
.LCFI10:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 178 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 180 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 181 0
	movl	empty_elt_lists@GOTOFF(%ecx), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 182 0
	movl	-4(%ebp), %eax
	movl	%eax, empty_elt_lists@GOTOFF(%ecx)
	.loc 1 183 0
	leave
	ret
.LFE17:
	.size	unchain_one_elt_list, .-unchain_one_elt_list
	.type	unchain_one_elt_loc_list, @function
unchain_one_elt_loc_list:
.LFB18:
	.loc 1 190 0
	pushl	%ebp
.LCFI11:
	movl	%esp, %ebp
.LCFI12:
	subl	$16, %esp
.LCFI13:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 191 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	.loc 1 193 0
	movl	-4(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 194 0
	movl	empty_elt_loc_lists@GOTOFF(%ecx), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 195 0
	movl	-4(%ebp), %eax
	movl	%eax, empty_elt_loc_lists@GOTOFF(%ecx)
	.loc 1 196 0
	leave
	ret
.LFE18:
	.size	unchain_one_elt_loc_list, .-unchain_one_elt_loc_list
	.type	unchain_one_value, @function
unchain_one_value:
.LFB19:
	.loc 1 204 0
	pushl	%ebp
.LCFI14:
	movl	%esp, %ebp
.LCFI15:
	pushl	%ebx
.LCFI16:
	subl	$4, %esp
.LCFI17:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 205 0
	jmp	.L16
.L17:
	.loc 1 206 0
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	unchain_one_elt_list
.L16:
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	.L17
	.loc 1 208 0
	movl	empty_vals@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%edx)
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	%eax, empty_vals@GOTOFF(%ebx)
	.loc 1 210 0
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE19:
	.size	unchain_one_value, .-unchain_one_value
	.type	clear_table, @function
clear_table:
.LFB20:
	.loc 1 219 0
	pushl	%ebp
.LCFI18:
	movl	%esp, %ebp
.LCFI19:
	pushl	%ebx
.LCFI20:
	subl	$20, %esp
.LCFI21:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 222 0
	cmpl	$0, 8(%ebp)
	je	.L21
	.loc 1 223 0
	movl	$0, -8(%ebp)
	jmp	.L23
.L24:
	.loc 1 224 0
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	$0, 16(%edx,%eax,4)
	.loc 1 223 0
	addl	$1, -8(%ebp)
.L23:
	movl	cselib_nregs@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	jb	.L24
	jmp	.L26
.L21:
	.loc 1 226 0
	movl	$0, -8(%ebp)
	jmp	.L27
.L28:
	.loc 1 227 0
	movl	reg_values@GOTOFF(%ebx), %ecx
	movl	used_regs@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	$0, 16(%ecx,%eax,4)
	.loc 1 226 0
	addl	$1, -8(%ebp)
.L27:
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.L28
.L26:
	.loc 1 229 0
	movl	$0, max_value_regs@GOTOFF(%ebx)
	.loc 1 231 0
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	$0, 4(%eax)
	.loc 1 233 0
	movl	hash_table@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	htab_empty@PLT
	.loc 1 235 0
	movl	$0, n_useless_values@GOTOFF(%ebx)
	.loc 1 237 0
	movl	$0, next_unknown_value@GOTOFF(%ebx)
	.loc 1 238 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE20:
	.size	clear_table, .-clear_table
	.section	.rodata
	.type	__FUNCTION__.11433, @object
	.size	__FUNCTION__.11433, 22
__FUNCTION__.11433:
	.string	"entry_and_rtx_equal_p"
.LC0:
	.string	"../../../kg++fe/gnu/cselib.c"
	.text
	.type	entry_and_rtx_equal_p, @function
entry_and_rtx_equal_p:
.LFB21:
	.loc 1 248 0
	pushl	%ebp
.LCFI22:
	movl	%esp, %ebp
.LCFI23:
	pushl	%ebx
.LCFI24:
	subl	$36, %esp
.LCFI25:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 250 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 251 0
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 252 0
	movl	-12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 254 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L31
	cmpl	$0, -8(%ebp)
	jne	.L33
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L33
.L31:
	.loc 1 256 0
	leal	__FUNCTION__.11433@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$256, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L33:
	.loc 1 257 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-8(%ebp), %eax
	je	.L35
	.loc 1 258 0
	movl	$0, -24(%ebp)
	jmp	.L37
.L35:
	.loc 1 261 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$68, %ax
	jne	.L38
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L40
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L38
.L40:
	.loc 1 264 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L38:
	.loc 1 268 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -20(%ebp)
	jmp	.L42
.L43:
	.loc 1 269 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	rtx_equal_for_cselib_p@PLT
	testl	%eax, %eax
	je	.L44
	.loc 1 270 0
	movl	$1, -24(%ebp)
	jmp	.L37
.L44:
	.loc 1 268 0
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
.L42:
	cmpl	$0, -20(%ebp)
	jne	.L43
	.loc 1 272 0
	movl	$0, -24(%ebp)
.L37:
	movl	-24(%ebp), %eax
	.loc 1 273 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE21:
	.size	entry_and_rtx_equal_p, .-entry_and_rtx_equal_p
	.type	get_value_hash, @function
get_value_hash:
.LFB22:
	.loc 1 282 0
	pushl	%ebp
.LCFI26:
	movl	%esp, %ebp
.LCFI27:
	subl	$16, %esp
.LCFI28:
	.loc 1 283 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 1 284 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 285 0
	leave
	ret
.LFE22:
	.size	get_value_hash, .-get_value_hash
.globl references_value_p
	.type	references_value_p, @function
references_value_p:
.LFB23:
	.loc 1 296 0
	pushl	%ebp
.LCFI29:
	movl	%esp, %ebp
.LCFI30:
	pushl	%ebx
.LCFI31:
	subl	$28, %esp
.LCFI32:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 297 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 298 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 301 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$70, %ax
	jne	.L51
	cmpl	$0, 12(%ebp)
	je	.L53
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L51
.L53:
	.loc 1 303 0
	movl	$1, -24(%ebp)
	jmp	.L55
.L51:
	.loc 1 305 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L56
.L57:
	.loc 1 307 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L58
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	references_value_p@PLT
	testl	%eax, %eax
	je	.L58
	.loc 1 308 0
	movl	$1, -24(%ebp)
	jmp	.L55
.L58:
	.loc 1 309 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L61
	.loc 1 310 0
	movl	$0, -8(%ebp)
	jmp	.L63
.L64:
	.loc 1 311 0
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	references_value_p@PLT
	testl	%eax, %eax
	je	.L65
	.loc 1 312 0
	movl	$1, -24(%ebp)
	jmp	.L55
.L65:
	.loc 1 310 0
	addl	$1, -8(%ebp)
.L63:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L64
.L61:
	.loc 1 305 0
	subl	$1, -12(%ebp)
.L56:
	cmpl	$0, -12(%ebp)
	jns	.L57
	.loc 1 315 0
	movl	$0, -24(%ebp)
.L55:
	movl	-24(%ebp), %eax
	.loc 1 316 0
	addl	$28, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE23:
	.size	references_value_p, .-references_value_p
	.type	discard_useless_locs, @function
discard_useless_locs:
.LFB24:
	.loc 1 326 0
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
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 328 0
	movl	-16(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -12(%ebp)
	.loc 1 329 0
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -8(%ebp)
	.loc 1 331 0
	jmp	.L79
.L71:
	.loc 1 333 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	references_value_p@PLT
	testl	%eax, %eax
	je	.L72
	.loc 1 334 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	unchain_one_elt_loc_list
	jmp	.L70
.L72:
	.loc 1 336 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L70:
.L79:
	.loc 1 331 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L71
	.loc 1 339 0
	cmpl	$0, -8(%ebp)
	je	.L75
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L75
	.loc 1 341 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, n_useless_values@GOTOFF(%ebx)
	.loc 1 342 0
	movl	$1, values_became_useless@GOTOFF(%ebx)
.L75:
	.loc 1 344 0
	movl	$1, %eax
	.loc 1 345 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE24:
	.size	discard_useless_locs, .-discard_useless_locs
	.type	discard_useless_values, @function
discard_useless_values:
.LFB25:
	.loc 1 353 0
	pushl	%ebp
.LCFI37:
	movl	%esp, %ebp
.LCFI38:
	pushl	%ebx
.LCFI39:
	subl	$36, %esp
.LCFI40:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 356 0
	movl	-8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L81
	.loc 1 358 0
	movl	hash_table@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_clear_slot@PLT
	.loc 1 359 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	unchain_one_value
	.loc 1 360 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, n_useless_values@GOTOFF(%ebx)
.L81:
	.loc 1 363 0
	movl	$1, %eax
	.loc 1 364 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE25:
	.size	discard_useless_values, .-discard_useless_values
	.section	.rodata
	.type	__FUNCTION__.11573, @object
	.size	__FUNCTION__.11573, 22
__FUNCTION__.11573:
	.string	"remove_useless_values"
	.text
	.type	remove_useless_values, @function
remove_useless_values:
.LFB26:
	.loc 1 371 0
	pushl	%ebp
.LCFI41:
	movl	%esp, %ebp
.LCFI42:
	pushl	%ebx
.LCFI43:
	subl	$20, %esp
.LCFI44:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.L85:
	.loc 1 376 0
	movl	$0, values_became_useless@GOTOFF(%ebx)
	.loc 1 377 0
	movl	hash_table@GOTOFF(%ebx), %eax
	movl	$0, 8(%esp)
	leal	discard_useless_locs@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	htab_traverse@PLT
	.loc 1 379 0
	movl	values_became_useless@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L85
	.loc 1 382 0
	movl	hash_table@GOTOFF(%ebx), %eax
	movl	$0, 8(%esp)
	leal	discard_useless_values@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	htab_traverse@PLT
	.loc 1 384 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L89
	.loc 1 385 0
	leal	__FUNCTION__.11573@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$385, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L89:
	.loc 1 386 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE26:
	.size	remove_useless_values, .-remove_useless_values
	.section	.rodata
	.type	__FUNCTION__.11620, @object
	.size	__FUNCTION__.11620, 23
__FUNCTION__.11620:
	.string	"rtx_equal_for_cselib_p"
	.text
.globl rtx_equal_for_cselib_p
	.type	rtx_equal_for_cselib_p, @function
rtx_equal_for_cselib_p:
.LFB27:
	.loc 1 394 0
	pushl	%ebp
.LCFI45:
	movl	%esp, %ebp
.LCFI46:
	pushl	%edi
.LCFI47:
	pushl	%esi
.LCFI48:
	pushl	%ebx
.LCFI49:
	subl	$76, %esp
.LCFI50:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 399 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L91
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L93
.L91:
.LBB2:
	.loc 1 401 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -48(%ebp)
	.loc 1 403 0
	cmpl	$0, -48(%ebp)
	je	.L93
	.loc 1 404 0
	movl	-48(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L93:
.LBE2:
	.loc 1 407 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L95
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L97
.L95:
.LBB3:
	.loc 1 409 0
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -44(%ebp)
	.loc 1 411 0
	cmpl	$0, -44(%ebp)
	je	.L97
	.loc 1 412 0
	movl	-44(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 12(%ebp)
.L97:
.LBE3:
	.loc 1 415 0
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	.L99
	.loc 1 416 0
	movl	$1, -64(%ebp)
	jmp	.L101
.L99:
	.loc 1 418 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$70, %ax
	jne	.L102
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$70, %ax
	jne	.L102
	.loc 1 419 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	jmp	.L101
.L102:
	.loc 1 421 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$70, %ax
	jne	.L105
.LBB4:
	.loc 1 423 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	.loc 1 426 0
	movl	-40(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -36(%ebp)
	jmp	.L107
.L108:
.LBB5:
	.loc 1 428 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 431 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L109
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L109
	.loc 1 433 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_for_cselib_p@PLT
	testl	%eax, %eax
	je	.L109
	.loc 1 434 0
	movl	$1, -64(%ebp)
	jmp	.L101
.L109:
.LBE5:
	.loc 1 426 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L107:
	cmpl	$0, -36(%ebp)
	jne	.L108
	.loc 1 437 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L105:
.LBE4:
	.loc 1 440 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$70, %ax
	jne	.L114
.LBB6:
	.loc 1 442 0
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 445 0
	movl	-28(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -24(%ebp)
	jmp	.L116
.L117:
.LBB7:
	.loc 1 447 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 449 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L118
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	je	.L118
	.loc 1 451 0
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	rtx_equal_for_cselib_p@PLT
	testl	%eax, %eax
	je	.L118
	.loc 1 452 0
	movl	$1, -64(%ebp)
	jmp	.L101
.L118:
.LBE7:
	.loc 1 445 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L116:
	cmpl	$0, -24(%ebp)
	jne	.L117
	.loc 1 455 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L114:
.LBE6:
	.loc 1 458 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %edx
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	%ax, %dx
	jne	.L123
	movl	8(%ebp), %eax
	movzbl	2(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	je	.L125
.L123:
	.loc 1 459 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L125:
	.loc 1 462 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$77, %ax
	jne	.L126
	.loc 1 463 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%ebp)
	jmp	.L101
.L126:
	.loc 1 465 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -60(%ebp)
	.loc 1 466 0
	movl	-60(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -56(%ebp)
	.loc 1 468 0
	movl	-60(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -52(%ebp)
	jmp	.L128
.L129:
.LBB8:
	.loc 1 472 0
	movl	-52(%ebp), %eax
	addl	-56(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -68(%ebp)
	cmpl	$71, -68(%ebp)
	ja	.L130
	movl	-68(%ebp), %eax
	sall	$2, %eax
	movl	.L138@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L138:
	.long	.L141@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L132@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L133@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L132@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L134@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L135@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L135@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L130@GOTOFF
	.long	.L133@GOTOFF
	.long	.L141@GOTOFF
	.long	.L141@GOTOFF
	.long	.L130@GOTOFF
	.long	.L137@GOTOFF
	.text
.L137:
	.loc 1 475 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %esi
	movl	8(%eax,%edx,8), %edi
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	leal	4(%eax,%edx,8), %edx
	movl	(%edx), %eax
	movl	4(%edx), %edx
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%esi, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L141
	.loc 1 476 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L135:
	.loc 1 481 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	je	.L141
	.loc 1 482 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L132:
	.loc 1 488 0
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %ecx
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	.L144
	.loc 1 489 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L144:
	.loc 1 492 0
	movl	$0, -16(%ebp)
	jmp	.L146
.L147:
	.loc 1 493 0
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %ecx
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_cselib_p@PLT
	testl	%eax, %eax
	jne	.L148
	.loc 1 495 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L148:
	.loc 1 492 0
	addl	$1, -16(%ebp)
.L146:
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	jg	.L147
	.loc 1 496 0
	jmp	.L141
.L134:
	.loc 1 499 0
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	rtx_equal_for_cselib_p@PLT
	testl	%eax, %eax
	jne	.L141
	.loc 1 500 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L133:
	.loc 1 505 0
	movl	-52(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L141
	.loc 1 506 0
	movl	$0, -64(%ebp)
	jmp	.L101
.L130:
	.loc 1 521 0
	leal	__FUNCTION__.11620@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$521, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L141:
.LBE8:
	.loc 1 468 0
	subl	$1, -52(%ebp)
.L128:
	cmpl	$0, -52(%ebp)
	jns	.L129
	.loc 1 524 0
	movl	$1, -64(%ebp)
.L101:
	movl	-64(%ebp), %eax
	.loc 1 525 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE27:
	.size	rtx_equal_for_cselib_p, .-rtx_equal_for_cselib_p
	.section	.rodata
	.type	__FUNCTION__.11752, @object
	.size	__FUNCTION__.11752, 14
__FUNCTION__.11752:
	.string	"wrap_constant"
	.text
	.type	wrap_constant, @function
wrap_constant:
.LFB28:
	.loc 1 534 0
	pushl	%ebp
.LCFI51:
	movl	%esp, %ebp
.LCFI52:
	pushl	%ebx
.LCFI53:
	subl	$20, %esp
.LCFI54:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 535 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$64, %ax
	je	.L158
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$65, %ax
	jne	.L160
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L158
.L160:
	.loc 1 537 0
	movl	12(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L162
.L158:
	.loc 1 538 0
	cmpl	$0, 8(%ebp)
	jne	.L163
	.loc 1 539 0
	leal	__FUNCTION__.11752@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$539, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L163:
	.loc 1 540 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$68, (%esp)
	call	gen_rtx_fmt_e@PLT
	movl	%eax, -8(%ebp)
.L162:
	movl	-8(%ebp), %eax
	.loc 1 541 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE28:
	.size	wrap_constant, .-wrap_constant
	.section	.rodata
	.type	__FUNCTION__.11812, @object
	.size	__FUNCTION__.11812, 9
__FUNCTION__.11812:
	.string	"hash_rtx"
	.text
	.type	hash_rtx, @function
hash_rtx:
.LFB29:
	.loc 1 557 0
	pushl	%ebp
.LCFI55:
	movl	%esp, %ebp
.LCFI56:
	pushl	%ebx
.LCFI57:
	subl	$100, %esp
.LCFI58:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 562 0
	movl	$0, -32(%ebp)
	.loc 1 564 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 565 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	addl	-40(%ebp), %eax
	addl	%eax, -32(%ebp)
	.loc 1 567 0
	movl	-40(%ebp), %eax
	subl	$51, %eax
	movl	%eax, -80(%ebp)
	cmpl	$60, -80(%ebp)
	ja	.L167
	movl	-80(%ebp), %eax
	sall	$2, %eax
	movl	.L176@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L176:
	.long	.L168@GOTOFF
	.long	.L167@GOTOFF
	.long	.L169@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L169@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L170@GOTOFF
	.long	.L171@GOTOFF
	.long	.L172@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L169@GOTOFF
	.long	.L167@GOTOFF
	.long	.L173@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L173@GOTOFF
	.long	.L174@GOTOFF
	.long	.L175@GOTOFF
	.long	.L169@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L167@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.long	.L169@GOTOFF
	.text
.L173:
	.loc 1 571 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -52(%ebp)
	.loc 1 572 0
	cmpl	$0, -52(%ebp)
	jne	.L177
	.loc 1 573 0
	movl	$0, -76(%ebp)
	jmp	.L179
.L177:
	.loc 1 575 0
	movl	-52(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -76(%ebp)
	jmp	.L179
.L170:
	.loc 1 578 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	addl	12(%ebp), %eax
	addl	-32(%ebp), %eax
	addl	$8192, %eax
	movl	%eax, -32(%ebp)
	.loc 1 579 0
	cmpl	$0, -32(%ebp)
	je	.L180
	movl	-32(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	.L182
.L180:
	movl	$64, -72(%ebp)
.L182:
	movl	-72(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L179
.L171:
	.loc 1 584 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	addl	-40(%ebp), %eax
	addl	%eax, -32(%ebp)
	.loc 1 585 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L183
	.loc 1 586 0
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	real_hash@PLT
	addl	%eax, -32(%ebp)
	jmp	.L185
.L183:
	.loc 1 588 0
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %eax
	leal	(%ecx,%eax), %eax
	addl	%eax, -32(%ebp)
.L185:
	.loc 1 590 0
	cmpl	$0, -32(%ebp)
	je	.L186
	movl	-32(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	.L188
.L186:
	movl	$65, -68(%ebp)
.L188:
	movl	-68(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L179
.L172:
.LBB9:
	.loc 1 597 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 599 0
	movl	$0, -48(%ebp)
	jmp	.L189
.L190:
	.loc 1 601 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-48(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 602 0
	movl	-24(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_rtx
	addl	%eax, -32(%ebp)
	.loc 1 599 0
	addl	$1, -48(%ebp)
.L189:
	movl	-48(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jl	.L190
	.loc 1 605 0
	movl	-32(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L179
.L174:
.LBE9:
	.loc 1 610 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-32(%ebp), %eax
	addl	$9856, %eax
	movl	%eax, -32(%ebp)
	.loc 1 612 0
	cmpl	$0, -32(%ebp)
	je	.L192
	movl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	.L194
.L192:
	movl	$77, -64(%ebp)
.L194:
	movl	-64(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L179
.L175:
	.loc 1 615 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	-32(%ebp), %eax
	addl	$9984, %eax
	movl	%eax, -32(%ebp)
	.loc 1 617 0
	cmpl	$0, -32(%ebp)
	je	.L195
	movl	-32(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L197
.L195:
	movl	$78, -60(%ebp)
.L197:
	movl	-60(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	.L179
.L169:
	.loc 1 629 0
	movl	$0, -76(%ebp)
	jmp	.L179
.L168:
	.loc 1 632 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L167
	.loc 1 633 0
	movl	$0, -76(%ebp)
	jmp	.L179
.L167:
	.loc 1 641 0
	movl	-40(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	.loc 1 642 0
	movl	-40(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -36(%ebp)
	.loc 1 643 0
	jmp	.L199
.L200:
	.loc 1 645 0
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L201
.LBB10:
	.loc 1 647 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, -20(%ebp)
	.loc 1 648 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_rtx
	movl	%eax, -16(%ebp)
	.loc 1 650 0
	cmpl	$0, -16(%ebp)
	jne	.L203
	.loc 1 651 0
	movl	$0, -76(%ebp)
	jmp	.L179
.L203:
	.loc 1 653 0
	movl	-16(%ebp), %eax
	addl	%eax, -32(%ebp)
	jmp	.L205
.L201:
.LBE10:
	.loc 1 655 0
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L206
	.loc 1 656 0
	movl	$0, -44(%ebp)
	jmp	.L208
.L209:
.LBB11:
	.loc 1 658 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-44(%ebp), %eax
	movl	4(%edx,%eax,4), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	hash_rtx
	movl	%eax, -12(%ebp)
	.loc 1 660 0
	cmpl	$0, -12(%ebp)
	jne	.L210
	.loc 1 661 0
	movl	$0, -76(%ebp)
	jmp	.L179
.L210:
	.loc 1 663 0
	movl	-12(%ebp), %eax
	addl	%eax, -32(%ebp)
.LBE11:
	.loc 1 656 0
	addl	$1, -44(%ebp)
.L208:
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-44(%ebp), %eax
	jg	.L209
	jmp	.L205
.L206:
	.loc 1 665 0
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$115, %al
	jne	.L213
.LBB12:
	.loc 1 667 0
	movl	-48(%ebp), %eax
	movl	8(%ebp), %edx
	movl	4(%edx,%eax,8), %eax
	movl	%eax, -8(%ebp)
	.loc 1 669 0
	cmpl	$0, -8(%ebp)
	je	.L205
	.loc 1 670 0
	jmp	.L217
.L218:
	.loc 1 671 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%ebp)
	addl	$1, -8(%ebp)
.L217:
	.loc 1 670 0
	movl	-8(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L218
	jmp	.L205
.L213:
.LBE12:
	.loc 1 673 0
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$105, %al
	jne	.L219
	.loc 1 674 0
	movl	-48(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	addl	%eax, -32(%ebp)
	jmp	.L205
.L219:
	.loc 1 675 0
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	je	.L205
	movl	-48(%ebp), %eax
	addl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	je	.L205
	.loc 1 678 0
	leal	__FUNCTION__.11812@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$678, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L205:
	.loc 1 643 0
	subl	$1, -48(%ebp)
.L199:
	cmpl	$0, -48(%ebp)
	jns	.L200
	.loc 1 681 0
	cmpl	$0, -32(%ebp)
	jne	.L224
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
	jmp	.L226
.L224:
	movl	-32(%ebp), %eax
	movl	%eax, -56(%ebp)
.L226:
	movl	-56(%ebp), %eax
	movl	%eax, -76(%ebp)
.L179:
	movl	-76(%ebp), %eax
	.loc 1 682 0
	addl	$100, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE29:
	.size	hash_rtx, .-hash_rtx
	.section	.rodata
	.type	__FUNCTION__.11959, @object
	.size	__FUNCTION__.11959, 15
__FUNCTION__.11959:
	.string	"new_cselib_val"
	.text
	.type	new_cselib_val, @function
new_cselib_val:
.LFB30:
	.loc 1 691 0
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
	.loc 1 692 0
	movl	empty_vals@GOTOFF(%ebx), %eax
	movl	%eax, -8(%ebp)
	.loc 1 694 0
	cmpl	$0, -8(%ebp)
	je	.L229
	.loc 1 695 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, empty_vals@GOTOFF(%ebx)
	jmp	.L231
.L229:
	.loc 1 697 0
	movl	$16, (%esp)
	call	ggc_alloc@PLT
	movl	%eax, -8(%ebp)
.L231:
	.loc 1 699 0
	cmpl	$0, 8(%ebp)
	jne	.L232
	.loc 1 700 0
	leal	__FUNCTION__.11959@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$700, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L232:
	.loc 1 702 0
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 703 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$70, (%esp)
	call	gen_rtx_fmt_0@PLT
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	movl	%edx, 4(%eax)
	.loc 1 704 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 705 0
	movl	-8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 706 0
	movl	-8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 707 0
	movl	-8(%ebp), %eax
	.loc 1 708 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE30:
	.size	new_cselib_val, .-new_cselib_val
	.type	add_mem_for_addr, @function
add_mem_for_addr:
.LFB31:
	.loc 1 718 0
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
	.loc 1 722 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L236
.L237:
	.loc 1 723 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L238
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L242
.L238:
	.loc 1 722 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L236:
	cmpl	$0, -8(%ebp)
	jne	.L237
	.loc 1 727 0
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	new_elt_list
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	.loc 1 728 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	replace_equiv_address_nv@PLT
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_elt_loc_list
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
.L242:
	.loc 1 731 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE31:
	.size	add_mem_for_addr, .-add_mem_for_addr
	.type	cselib_lookup_mem, @function
cselib_lookup_mem:
.LFB32:
	.loc 1 740 0
	pushl	%ebp
.LCFI67:
	movl	%esp, %ebp
.LCFI68:
	pushl	%esi
.LCFI69:
	pushl	%ebx
.LCFI70:
	subl	$64, %esp
.LCFI71:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 741 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%ebp)
	.loc 1 747 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L244
	cmpl	$52, -28(%ebp)
	je	.L244
	movl	-28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$2, %eax
	je	.L247
	movl	-28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$6, %eax
	je	.L247
	movl	-28(%ebp), %eax
	movl	mode_class@GOT(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$8, %eax
	jne	.L250
.L247:
	movl	flag_float_store@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L250
.L244:
	.loc 1 749 0
	movl	$0, -44(%ebp)
	jmp	.L251
.L250:
	.loc 1 752 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -20(%ebp)
	.loc 1 753 0
	cmpl	$0, -20(%ebp)
	jne	.L252
	.loc 1 754 0
	movl	$0, -44(%ebp)
	jmp	.L251
.L252:
	.loc 1 757 0
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L254
.L255:
	.loc 1 758 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	-28(%ebp), %eax
	jne	.L256
	.loc 1 759 0
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	.L251
.L256:
	.loc 1 757 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
.L254:
	cmpl	$0, -12(%ebp)
	jne	.L255
	.loc 1 761 0
	cmpl	$0, 12(%ebp)
	jne	.L259
	.loc 1 762 0
	movl	$0, -44(%ebp)
	jmp	.L251
.L259:
	.loc 1 764 0
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_unknown_value@GOTOFF(%ebx)
	movl	next_unknown_value@GOTOFF(%ebx), %edx
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	new_cselib_val
	movl	%eax, -16(%ebp)
	.loc 1 765 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	add_mem_for_addr
	.loc 1 766 0
	movl	-16(%ebp), %eax
	movl	(%eax), %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	wrap_constant
	movl	hash_table@GOTOFF(%ebx), %edx
	movl	$1, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -24(%ebp)
	.loc 1 768 0
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 769 0
	movl	-16(%ebp), %eax
	movl	%eax, -44(%ebp)
.L251:
	movl	-44(%ebp), %eax
	.loc 1 770 0
	addl	$64, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE32:
	.size	cselib_lookup_mem, .-cselib_lookup_mem
	.section	.rodata
	.type	__FUNCTION__.12059, @object
	.size	__FUNCTION__.12059, 23
__FUNCTION__.12059:
	.string	"cselib_subst_to_values"
	.text
.globl cselib_subst_to_values
	.type	cselib_subst_to_values, @function
cselib_subst_to_values:
.LFB33:
	.loc 1 781 0
	pushl	%ebp
.LCFI72:
	movl	%esp, %ebp
.LCFI73:
	pushl	%esi
.LCFI74:
	pushl	%ebx
.LCFI75:
	subl	$80, %esp
.LCFI76:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 782 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -48(%ebp)
	.loc 1 783 0
	movl	-48(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	.loc 1 786 0
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 789 0
	movl	-48(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -64(%ebp)
	cmpl	$47, -64(%ebp)
	ja	.L263
	movl	-64(%ebp), %eax
	sall	$2, %eax
	movl	.L268@GOTOFF(%eax,%ebx), %eax
	addl	%ebx, %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L268:
	.long	.L264@GOTOFF
	.long	.L264@GOTOFF
	.long	.L264@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L265@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L266@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L263@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.long	.L267@GOTOFF
	.text
.L265:
	.loc 1 792 0
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -36(%ebp)
	jmp	.L269
.L270:
	.loc 1 793 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	%al, %dl
	jne	.L271
	.loc 1 794 0
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L273
.L271:
	.loc 1 792 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.L269:
	cmpl	$0, -36(%ebp)
	jne	.L270
	.loc 1 796 0
	leal	__FUNCTION__.12059@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$796, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L266:
	.loc 1 799 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup_mem
	movl	%eax, -40(%ebp)
	.loc 1 800 0
	cmpl	$0, -40(%ebp)
	jne	.L275
	.loc 1 804 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_unknown_value@GOTOFF(%ebx)
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_cselib_val
	movl	%eax, -40(%ebp)
.L275:
	.loc 1 806 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L273
.L264:
	.loc 1 811 0
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	.L273
.L267:
	.loc 1 819 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_unknown_value@GOTOFF(%ebx)
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_cselib_val
	movl	%eax, -40(%ebp)
	.loc 1 820 0
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -60(%ebp)
	jmp	.L273
.L263:
	.loc 1 826 0
	movl	-48(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -28(%ebp)
	jmp	.L277
.L278:
	.loc 1 828 0
	movl	-28(%ebp), %eax
	addl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L279
.LBB13:
	.loc 1 830 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	cselib_subst_to_values@PLT
	movl	%eax, -24(%ebp)
	.loc 1 832 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	-24(%ebp), %eax
	je	.L281
	movl	8(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L281
	.loc 1 833 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, -32(%ebp)
.L281:
	.loc 1 835 0
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	%eax, 4(%edx,%ecx,8)
	jmp	.L284
.L279:
.LBE13:
	.loc 1 837 0
	movl	-28(%ebp), %eax
	addl	-44(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L284
.LBB14:
	.loc 1 841 0
	movl	$0, -20(%ebp)
	jmp	.L286
.L287:
.LBB15:
	.loc 1 843 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	cselib_subst_to_values@PLT
	movl	%eax, -12(%ebp)
	.loc 1 845 0
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-20(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	cmpl	-12(%ebp), %eax
	je	.L288
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	cmpl	%eax, %ecx
	jne	.L288
	.loc 1 847 0
	movl	8(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	.L291
	.loc 1 848 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	shallow_copy_rtx@PLT
	movl	%eax, -32(%ebp)
.L291:
	.loc 1 850 0
	movl	-28(%ebp), %esi
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	rtvec_alloc@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%eax,%esi,8)
	.loc 1 851 0
	movl	$0, -16(%ebp)
	jmp	.L293
.L294:
	.loc 1 852 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-16(%ebp), %esi
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-16(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%ecx,%esi,4)
	.loc 1 851 0
	addl	$1, -16(%ebp)
.L293:
	movl	-16(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L294
.L288:
	.loc 1 855 0
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	4(%eax,%edx,8), %ecx
	movl	-20(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, 4(%ecx,%edx,4)
.LBE15:
	.loc 1 841 0
	addl	$1, -20(%ebp)
.L286:
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-20(%ebp), %eax
	jg	.L287
.L284:
.LBE14:
	.loc 1 826 0
	subl	$1, -28(%ebp)
.L277:
	cmpl	$0, -28(%ebp)
	jns	.L278
	.loc 1 860 0
	movl	-32(%ebp), %eax
	movl	%eax, -60(%ebp)
.L273:
	movl	-60(%ebp), %eax
	.loc 1 861 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE33:
	.size	cselib_subst_to_values, .-cselib_subst_to_values
.globl cselib_lookup
	.type	cselib_lookup, @function
cselib_lookup:
.LFB34:
	.loc 1 873 0
	pushl	%ebp
.LCFI77:
	movl	%esp, %ebp
.LCFI78:
	pushl	%edi
.LCFI79:
	pushl	%esi
.LCFI80:
	pushl	%ebx
.LCFI81:
	subl	$60, %esp
.LCFI82:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 878 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	testb	%al, %al
	je	.L298
	.loc 1 879 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 12(%ebp)
.L298:
	.loc 1 881 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$70, %ax
	jne	.L300
	.loc 1 882 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L302
.L300:
	.loc 1 884 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L303
.LBB16:
	.loc 1 887 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 889 0
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	jmp	.L305
.L306:
	.loc 1 890 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	cmpl	12(%ebp), %eax
	jne	.L307
	.loc 1 891 0
	movl	-24(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L302
.L307:
	.loc 1 889 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
.L305:
	cmpl	$0, -24(%ebp)
	jne	.L306
	.loc 1 893 0
	cmpl	$0, 16(%ebp)
	jne	.L310
	.loc 1 894 0
	movl	$0, -48(%ebp)
	jmp	.L302
.L310:
	.loc 1 896 0
	cmpl	$175, -20(%ebp)
	ja	.L312
.LBB17:
	.loc 1 898 0
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 900 0
	movl	max_value_regs@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jbe	.L312
	.loc 1 901 0
	movl	-16(%ebp), %eax
	movl	%eax, max_value_regs@GOTOFF(%ebx)
.L312:
.LBE17:
	.loc 1 904 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, next_unknown_value@GOTOFF(%ebx)
	movl	next_unknown_value@GOTOFF(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_cselib_val
	movl	%eax, -32(%ebp)
	.loc 1 905 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	new_elt_loc_list
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 906 0
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	.L315
	.loc 1 907 0
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L317
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	used_regs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, used_regs@GOTOFF(%ebx)
.L317:
	movl	used_regs@GOTOFF(%ebx), %esi
	movl	used_regs@GOTOFF(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L315:
	.loc 1 908 0
	movl	reg_values@GOTOFF(%ebx), %esi
	movl	-20(%ebp), %edi
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	new_elt_list
	movl	%eax, 16(%esi,%edi,4)
	.loc 1 909 0
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	hash_table@GOTOFF(%ebx), %edx
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -36(%ebp)
	.loc 1 910 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 911 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L302
.L303:
.LBE16:
	.loc 1 914 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L319
	.loc 1 915 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup_mem
	movl	%eax, -48(%ebp)
	jmp	.L302
.L319:
	.loc 1 917 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	hash_rtx
	movl	%eax, -28(%ebp)
	.loc 1 919 0
	cmpl	$0, -28(%ebp)
	jne	.L321
	.loc 1 920 0
	movl	$0, -48(%ebp)
	jmp	.L302
.L321:
	.loc 1 922 0
	cmpl	$0, 16(%ebp)
	setne	%al
	movzbl	%al, %esi
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	wrap_constant
	movl	%eax, %edx
	movl	hash_table@GOTOFF(%ebx), %ecx
	movl	%esi, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	htab_find_slot_with_hash@PLT
	movl	%eax, -36(%ebp)
	.loc 1 924 0
	cmpl	$0, -36(%ebp)
	jne	.L323
	.loc 1 925 0
	movl	$0, -48(%ebp)
	jmp	.L302
.L323:
	.loc 1 927 0
	movl	-36(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 928 0
	cmpl	$0, -32(%ebp)
	je	.L325
	.loc 1 929 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	.L302
.L325:
	.loc 1 931 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	new_cselib_val
	movl	%eax, -32(%ebp)
	.loc 1 936 0
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 937 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_subst_to_values@PLT
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	new_elt_loc_list
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 938 0
	movl	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
.L302:
	movl	-48(%ebp), %eax
	.loc 1 939 0
	addl	$60, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE34:
	.size	cselib_lookup, .-cselib_lookup
	.section	.rodata
	.type	__FUNCTION__.12284, @object
	.size	__FUNCTION__.12284, 24
__FUNCTION__.12284:
	.string	"cselib_invalidate_regno"
	.text
	.type	cselib_invalidate_regno, @function
cselib_invalidate_regno:
.LFB35:
	.loc 1 951 0
	pushl	%ebp
.LCFI83:
	movl	%esp, %ebp
.LCFI84:
	pushl	%ebx
.LCFI85:
	subl	$52, %esp
.LCFI86:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 956 0
	movl	reload_completed@GOT(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L329
	cmpl	$175, 8(%ebp)
	jbe	.L329
	movl	8(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	reg_renumber@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movzwl	(%eax), %eax
	testw	%ax, %ax
	js	.L329
	.loc 1 958 0
	leal	__FUNCTION__.12284@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$958, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L329:
	.loc 1 964 0
	cmpl	$175, 8(%ebp)
	ja	.L333
	.loc 1 966 0
	cmpl	$0, 12(%ebp)
	jne	.L335
	.loc 1 967 0
	leal	__FUNCTION__.12284@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$967, 4(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	fancy_abort@PLT
.L335:
	.loc 1 969 0
	movl	max_value_regs@GOTOFF(%ebx), %eax
	cmpl	%eax, 8(%ebp)
	jae	.L337
	.loc 1 970 0
	movl	$0, -28(%ebp)
	jmp	.L339
.L337:
	.loc 1 972 0
	movl	max_value_regs@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%ebp)
.L339:
	.loc 1 974 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	.L341
.L333:
	.loc 1 978 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 979 0
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	.loc 1 982 0
	jmp	.L341
.L342:
.LBB18:
	.loc 1 984 0
	movl	reg_values@GOTOFF(%ebx), %eax
	leal	16(%eax), %edx
	movl	-28(%ebp), %eax
	sall	$2, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 988 0
	jmp	.L357
.L344:
.LBB19:
	.loc 1 990 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 992 0
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 994 0
	cmpl	$175, -28(%ebp)
	ja	.L345
	.loc 1 995 0
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	mips_hard_regno_nregs@PLT
	addl	-12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
.L345:
	.loc 1 997 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jae	.L347
	.loc 1 999 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1000 0
	jmp	.L343
.L347:
	.loc 1 1004 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	unchain_one_elt_list
	.loc 1 1008 0
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
.L349:
.LBB20:
	.loc 1 1010 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1012 0
	movl	-8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L350
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-28(%ebp), %eax
	jne	.L350
	.loc 1 1014 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	unchain_one_elt_loc_list
.LBE20:
	.loc 1 1018 0
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L353
	jmp	.L343
.L350:
	.loc 1 1008 0
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1017 0
	jmp	.L349
.L353:
	.loc 1 1019 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, n_useless_values@GOTOFF(%ebx)
.L343:
.L357:
.LBE19:
	.loc 1 988 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L344
.LBE18:
	.loc 1 982 0
	addl	$1, -28(%ebp)
.L341:
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jb	.L342
	.loc 1 1022 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE35:
	.size	cselib_invalidate_regno, .-cselib_invalidate_regno
	.type	cselib_mem_conflict_p, @function
cselib_mem_conflict_p:
.LFB36:
	.loc 1 1031 0
	pushl	%ebp
.LCFI87:
	movl	%esp, %ebp
.LCFI88:
	pushl	%ebx
.LCFI89:
	subl	$36, %esp
.LCFI90:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1036 0
	movl	12(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1037 0
	movl	-20(%ebp), %eax
	subl	$64, %eax
	movl	%eax, -28(%ebp)
	cmpl	$15, -28(%ebp)
	ja	.L359
	movl	$1, %eax
	movl	%eax, %edx
	movzbl	-28(%ebp), %ecx
	sall	%cl, %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %eax
	andl	$57783, %eax
	testl	%eax, %eax
	jne	.L360
	movl	-32(%ebp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L361
	jmp	.L359
.L360:
	.loc 1 1050 0
	movl	$0, -24(%ebp)
	jmp	.L362
.L361:
	.loc 1 1053 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L363
	movl	12(%ebp), %eax
	movzbl	2(%eax), %eax
	cmpb	$52, %al
	je	.L363
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	anti_dependence@PLT
	testl	%eax, %eax
	je	.L359
.L363:
	.loc 1 1056 0
	movl	$1, -24(%ebp)
	jmp	.L362
.L359:
	.loc 1 1065 0
	movl	-20(%ebp), %edx
	movl	rtx_format@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1066 0
	movl	-20(%ebp), %edx
	movl	rtx_length@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.L366
.L367:
	.loc 1 1068 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$101, %al
	jne	.L368
	.loc 1 1070 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_mem_conflict_p
	testl	%eax, %eax
	je	.L372
	.loc 1 1071 0
	movl	$1, -24(%ebp)
	jmp	.L362
.L368:
	.loc 1 1073 0
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$69, %al
	jne	.L372
	.loc 1 1074 0
	movl	$0, -8(%ebp)
	jmp	.L374
.L375:
	.loc 1 1075 0
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %edx
	movl	-8(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_mem_conflict_p
	testl	%eax, %eax
	je	.L376
	.loc 1 1076 0
	movl	$1, -24(%ebp)
	jmp	.L362
.L376:
	.loc 1 1074 0
	addl	$1, -8(%ebp)
.L374:
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	movl	4(%eax,%edx,8), %eax
	movl	(%eax), %eax
	cmpl	-8(%ebp), %eax
	jg	.L375
.L372:
	.loc 1 1066 0
	subl	$1, -12(%ebp)
.L366:
	cmpl	$0, -12(%ebp)
	jns	.L367
	.loc 1 1079 0
	movl	$0, -24(%ebp)
.L362:
	movl	-24(%ebp), %eax
	.loc 1 1080 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE36:
	.size	cselib_mem_conflict_p, .-cselib_mem_conflict_p
	.type	cselib_invalidate_mem_1, @function
cselib_invalidate_mem_1:
.LFB37:
	.loc 1 1089 0
	pushl	%ebp
.LCFI91:
	movl	%esp, %ebp
.LCFI92:
	pushl	%ebx
.LCFI93:
	subl	$52, %esp
.LCFI94:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1090 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1091 0
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1092 0
	movl	-32(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -24(%ebp)
	.loc 1 1093 0
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 1095 0
	jmp	.L394
.L382:
.LBB21:
	.loc 1 1097 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1103 0
	movl	-16(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L383
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_mem_conflict_p
	testl	%eax, %eax
	jne	.L385
.L383:
	.loc 1 1106 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1107 0
	jmp	.L381
.L385:
	.loc 1 1113 0
	movl	-16(%ebp), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, -12(%ebp)
	.loc 1 1114 0
	movl	-12(%ebp), %eax
	addl	$12, %eax
	movl	%eax, -8(%ebp)
.L386:
	.loc 1 1117 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	cmpl	-32(%ebp), %eax
	jne	.L387
	.loc 1 1119 0
	movl	-8(%ebp), %eax
	movl	%eax, (%esp)
	call	unchain_one_elt_list
	.loc 1 1126 0
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	unchain_one_elt_loc_list
	jmp	.L381
.L387:
	.loc 1 1123 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	.loc 1 1124 0
	jmp	.L386
.L381:
.L394:
.LBE21:
	.loc 1 1095 0
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L382
	.loc 1 1129 0
	cmpl	$0, -20(%ebp)
	je	.L390
	movl	-32(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L390
	.loc 1 1130 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	addl	$1, %eax
	movl	%eax, n_useless_values@GOTOFF(%ebx)
.L390:
	.loc 1 1132 0
	movl	$1, %eax
	.loc 1 1133 0
	addl	$52, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE37:
	.size	cselib_invalidate_mem_1, .-cselib_invalidate_mem_1
	.type	cselib_invalidate_mem, @function
cselib_invalidate_mem:
.LFB38:
	.loc 1 1142 0
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
	.loc 1 1143 0
	movl	hash_table@GOTOFF(%ebx), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	cselib_invalidate_mem_1@GOTOFF(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	htab_traverse@PLT
	.loc 1 1144 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE38:
	.size	cselib_invalidate_mem, .-cselib_invalidate_mem
	.type	cselib_invalidate_rtx, @function
cselib_invalidate_rtx:
.LFB39:
	.loc 1 1155 0
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
	.loc 1 1156 0
	jmp	.L398
.L399:
	.loc 1 1158 0
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L398:
	.loc 1 1156 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	je	.L399
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$142, %ax
	je	.L399
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$143, %ax
	je	.L399
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$73, %ax
	je	.L399
	.loc 1 1160 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L404
	.loc 1 1161 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_invalidate_regno
	jmp	.L406
.L404:
	.loc 1 1162 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L406
	.loc 1 1163 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_invalidate_mem
.L406:
	.loc 1 1169 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	push_operand@PLT
	testl	%eax, %eax
	je	.L410
	.loc 1 1170 0
	movl	global_rtl@GOT(%ebx), %eax
	movl	8(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_invalidate_rtx
.L410:
	.loc 1 1171 0
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE39:
	.size	cselib_invalidate_rtx, .-cselib_invalidate_rtx
	.type	cselib_record_set, @function
cselib_record_set:
.LFB40:
	.loc 1 1181 0
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
	.loc 1 1182 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	jne	.L412
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -32(%ebp)
	jmp	.L414
.L412:
	movl	$-1, -32(%ebp)
.L414:
	movl	-32(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1184 0
	cmpl	$0, 12(%ebp)
	je	.L434
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	side_effects_p@PLT
	testl	%eax, %eax
	je	.L417
	.loc 1 1185 0
	jmp	.L434
.L417:
	.loc 1 1187 0
	cmpl	$0, -20(%ebp)
	js	.L419
	.loc 1 1189 0
	movl	reg_values@GOTOFF(%ebx), %eax
	movl	-20(%ebp), %edx
	movl	16(%eax,%edx,4), %eax
	testl	%eax, %eax
	jne	.L421
	.loc 1 1190 0
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	4(%eax), %edx
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	.L423
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	movl	used_regs@GOTOFF(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, used_regs@GOTOFF(%ebx)
.L423:
	movl	used_regs@GOTOFF(%ebx), %esi
	movl	used_regs@GOTOFF(%ebx), %ecx
	movl	4(%ecx), %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esi,%edx,4)
	leal	1(%edx), %eax
	movl	%eax, 4(%ecx)
.L421:
	.loc 1 1192 0
	cmpl	$175, -20(%ebp)
	jg	.L425
.LBB22:
	.loc 1 1194 0
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	mips_hard_regno_nregs@PLT
	movl	%eax, -16(%ebp)
	.loc 1 1196 0
	movl	max_value_regs@GOTOFF(%ebx), %eax
	cmpl	%eax, -16(%ebp)
	jbe	.L425
	.loc 1 1197 0
	movl	-16(%ebp), %eax
	movl	%eax, max_value_regs@GOTOFF(%ebx)
.L425:
.LBE22:
	.loc 1 1200 0
	movl	reg_values@GOTOFF(%ebx), %esi
	movl	-20(%ebp), %edi
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	-20(%ebp), %eax
	movl	16(%edx,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	new_elt_list
	movl	%eax, 16(%esi,%edi,4)
	.loc 1 1201 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L428
	.loc 1 1202 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, n_useless_values@GOTOFF(%ebx)
.L428:
	.loc 1 1203 0
	movl	12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	new_elt_loc_list
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	.L434
.L419:
	.loc 1 1205 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L434
	cmpl	$0, 16(%ebp)
	je	.L434
	.loc 1 1207 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.L432
	.loc 1 1208 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	subl	$1, %eax
	movl	%eax, n_useless_values@GOTOFF(%ebx)
.L432:
	.loc 1 1209 0
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	add_mem_for_addr
.L434:
	.loc 1 1211 0
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.LFE40:
	.size	cselib_record_set, .-cselib_record_set
	.type	cselib_record_sets, @function
cselib_record_sets:
.LFB41:
	.loc 1 1230 0
	pushl	%ebp
.LCFI109:
	movl	%esp, %ebp
.LCFI110:
	pushl	%esi
.LCFI111:
	pushl	%ebx
.LCFI112:
	subl	$5696, %esp
.LCFI113:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1231 0
	movl	$0, -40(%ebp)
	.loc 1 1234 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1235 0
	movl	$0, -28(%ebp)
	.loc 1 1237 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 1238 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$48, %ax
	jne	.L436
	.loc 1 1240 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	.loc 1 1241 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -32(%ebp)
.L436:
	.loc 1 1245 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L438
	.loc 1 1247 0
	movl	-32(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -5672(%ebp)
	.loc 1 1248 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -5668(%ebp)
	.loc 1 1249 0
	movl	$1, -40(%ebp)
	jmp	.L440
.L438:
	.loc 1 1251 0
	movl	-32(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$49, %ax
	jne	.L440
	.loc 1 1255 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	.L442
.L443:
.LBB23:
	.loc 1 1257 0
	movl	-32(%ebp), %eax
	movl	4(%eax), %edx
	movl	-36(%ebp), %eax
	movl	4(%edx,%eax,4), %eax
	movl	%eax, -24(%ebp)
	.loc 1 1259 0
	movl	-24(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$57, %ax
	jne	.L444
	.loc 1 1261 0
	movl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%edx, %eax
	sall	$4, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$5664, %eax
	movl	%ecx, (%eax)
	.loc 1 1262 0
	movl	-40(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	4(%eax), %ecx
	movl	%edx, %eax
	sall	$4, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$5660, %eax
	movl	%ecx, (%eax)
	.loc 1 1263 0
	addl	$1, -40(%ebp)
.L444:
.LBE23:
	.loc 1 1255 0
	subl	$1, -36(%ebp)
.L442:
	cmpl	$0, -36(%ebp)
	jns	.L443
.L440:
	.loc 1 1270 0
	movl	$0, -36(%ebp)
	jmp	.L446
.L447:
.LBB24:
	.loc 1 1272 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %ecx
	addl	%ecx, %eax
	subl	$5660, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	.loc 1 1276 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$5660, %eax
	movl	(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$74, %ax
	jne	.L448
	.loc 1 1277 0
	movl	-36(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	%edx, %eax
	sall	$4, %eax
	leal	-8(%ebp), %ecx
	addl	%ecx, %eax
	leal	-5660(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
.L448:
	.loc 1 1280 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L450
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L452
.L450:
.LBB25:
	.loc 1 1282 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$5664, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 1283 0
	cmpl	$0, -28(%ebp)
	je	.L453
	.loc 1 1284 0
	movl	-16(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %edx
	movl	-20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$82, (%esp)
	call	gen_rtx_fmt_eee@PLT
	movl	%eax, -16(%ebp)
.L453:
	.loc 1 1285 0
	movl	-36(%ebp), %esi
	movl	-20(%ebp), %eax
	movzbl	2(%eax), %eax
	movzbl	%al, %eax
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, %edx
	movl	%esi, %eax
	sall	$4, %eax
	leal	-8(%ebp), %ecx
	addl	%ecx, %eax
	subl	$5656, %eax
	movl	%edx, (%eax)
	.loc 1 1286 0
	movl	-20(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L455
	.loc 1 1287 0
	movl	-36(%ebp), %eax
	movl	%eax, -5680(%ebp)
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L457
	movl	target_flags@GOT(%ebx), %eax
	movl	(%eax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L457
	movl	$5, -5676(%ebp)
	jmp	.L460
.L457:
	movl	$4, -5676(%ebp)
.L460:
	movl	-20(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 8(%esp)
	movl	-5676(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_lookup@PLT
	movl	%eax, %edx
	movl	-5680(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %ecx
	addl	%ecx, %eax
	subl	$5652, %eax
	movl	%edx, (%eax)
	jmp	.L452
.L455:
	.loc 1 1289 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$5652, %eax
	movl	$0, (%eax)
.L452:
.LBE25:
.LBE24:
	.loc 1 1270 0
	addl	$1, -36(%ebp)
.L446:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L447
	.loc 1 1296 0
	movl	$0, 8(%esp)
	leal	cselib_invalidate_rtx@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	note_stores@PLT
	.loc 1 1299 0
	movl	$0, -36(%ebp)
	jmp	.L462
.L463:
.LBB26:
	.loc 1 1301 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %ecx
	addl	%ecx, %eax
	subl	$5660, %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 1302 0
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$71, %ax
	je	.L464
	movl	-12(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$76, %ax
	jne	.L466
.L464:
	.loc 1 1303 0
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %edx
	addl	%edx, %eax
	subl	$5652, %eax
	movl	(%eax), %edx
	movl	-36(%ebp), %eax
	sall	$4, %eax
	leal	-8(%ebp), %ecx
	addl	%ecx, %eax
	subl	$5656, %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_record_set
.L466:
.LBE26:
	.loc 1 1299 0
	addl	$1, -36(%ebp)
.L462:
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	.L463
	.loc 1 1305 0
	addl	$5696, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
.LFE41:
	.size	cselib_record_sets, .-cselib_record_sets
.globl cselib_process_insn
	.type	cselib_process_insn, @function
cselib_process_insn:
.LFB42:
	.loc 1 1312 0
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
	.loc 1 1316 0
	movl	$0, 8(%esp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L470
	.loc 1 1317 0
	movb	$1, cselib_current_insn_in_libcall@GOTOFF(%ebx)
.L470:
	.loc 1 1318 0
	movl	$0, 8(%esp)
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	je	.L472
	.loc 1 1319 0
	movb	$0, cselib_current_insn_in_libcall@GOTOFF(%ebx)
.L472:
	.loc 1 1320 0
	movl	8(%ebp), %eax
	movl	%eax, cselib_current_insn@GOTOFF(%ebx)
	.loc 1 1323 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$46, %ax
	je	.L474
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L476
	movl	$0, 8(%esp)
	movl	$27, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	find_reg_note@PLT
	testl	%eax, %eax
	jne	.L474
.L476:
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$42, %ax
	jne	.L478
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$51, %ax
	jne	.L478
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movzbl	3(%eax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L478
.L474:
	.loc 1 1330 0
	movl	$0, (%esp)
	call	clear_table
	.loc 1 1331 0
	jmp	.L499
.L478:
	.loc 1 1334 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	movzwl	%ax, %edx
	movl	rtx_class@GOT(%ebx), %eax
	movzbl	(%eax,%edx), %eax
	cmpb	$105, %al
	je	.L482
	.loc 1 1336 0
	movl	$0, cselib_current_insn@GOTOFF(%ebx)
	.loc 1 1337 0
	jmp	.L499
.L482:
	.loc 1 1343 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L484
	.loc 1 1345 0
	movl	$0, -12(%ebp)
	jmp	.L486
.L487:
	.loc 1 1346 0
	movl	-12(%ebp), %eax
	movl	call_used_regs@GOT(%ebx), %edx
	movzbl	(%edx,%eax), %eax
	testb	%al, %al
	je	.L488
	.loc 1 1347 0
	movl	-12(%ebp), %edx
	movl	reg_raw_mode@GOT(%ebx), %eax
	movl	(%eax,%edx,4), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	cselib_invalidate_regno
.L488:
	.loc 1 1345 0
	addl	$1, -12(%ebp)
.L486:
	cmpl	$175, -12(%ebp)
	jle	.L487
	.loc 1 1349 0
	movl	8(%ebp), %eax
	movzbl	3(%eax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L484
	.loc 1 1350 0
	movl	callmem@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	cselib_invalidate_mem
.L484:
	.loc 1 1353 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	cselib_record_sets
	.loc 1 1366 0
	movl	8(%ebp), %eax
	movzwl	(%eax), %eax
	cmpw	$44, %ax
	jne	.L492
	.loc 1 1367 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.L494
.L495:
	.loc 1 1368 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movzwl	(%eax), %eax
	cmpw	$59, %ax
	jne	.L496
	.loc 1 1369 0
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	cselib_invalidate_rtx
.L496:
	.loc 1 1367 0
	movl	-8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -8(%ebp)
.L494:
	cmpl	$0, -8(%ebp)
	jne	.L495
.L492:
	.loc 1 1371 0
	movl	$0, cselib_current_insn@GOTOFF(%ebx)
	.loc 1 1373 0
	movl	n_useless_values@GOTOFF(%ebx), %eax
	cmpl	$32, %eax
	jle	.L499
	.loc 1 1374 0
	call	remove_useless_values
.L499:
	.loc 1 1375 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE42:
	.size	cselib_process_insn, .-cselib_process_insn
.globl cselib_update_varray_sizes
	.type	cselib_update_varray_sizes, @function
cselib_update_varray_sizes:
.LFB43:
	.loc 1 1382 0
	pushl	%ebp
.LCFI118:
	movl	%esp, %ebp
.LCFI119:
	pushl	%ebx
.LCFI120:
	subl	$36, %esp
.LCFI121:
	call	__i686.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 1383 0
	call	max_reg_num@PLT
	movl	%eax, -8(%ebp)
	.loc 1 1385 0
	movl	cselib_nregs@GOTOFF(%ebx), %eax
	cmpl	%eax, -8(%ebp)
	je	.L503
	.loc 1 1388 0
	movl	-8(%ebp), %eax
	movl	%eax, cselib_nregs@GOTOFF(%ebx)
	.loc 1 1389 0
	movl	reg_values@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, reg_values@GOTOFF(%ebx)
	.loc 1 1390 0
	movl	used_regs@GOTOFF(%ebx), %edx
	movl	-8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	varray_grow@PLT
	movl	%eax, used_regs@GOTOFF(%ebx)
.L503:
	.loc 1 1391 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE43:
	.size	cselib_update_varray_sizes, .-cselib_update_varray_sizes
	.section	.rodata
.LC1:
	.string	"reg_values"
.LC2:
	.string	"used_regs"
	.text
.globl cselib_init
	.type	cselib_init, @function
cselib_init:
.LFB44:
	.loc 1 1398 0
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
	.loc 1 1400 0
	movl	callmem@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	jne	.L505
	.loc 1 1401 0
	movl	const_int_rtx@GOT(%ebx), %eax
	movl	256(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$52, (%esp)
	call	gen_rtx_MEM@PLT
	movl	%eax, callmem@GOTOFF(%ebx)
.L505:
	.loc 1 1403 0
	call	max_reg_num@PLT
	movl	%eax, cselib_nregs@GOTOFF(%ebx)
	.loc 1 1404 0
	movl	reg_values_old@GOTOFF(%ebx), %eax
	testl	%eax, %eax
	je	.L507
	movl	reg_values_old@GOTOFF(%ebx), %eax
	movl	(%eax), %edx
	movl	cselib_nregs@GOTOFF(%ebx), %eax
	cmpl	%eax, %edx
	jb	.L507
	.loc 1 1406 0
	movl	reg_values_old@GOTOFF(%ebx), %eax
	movl	%eax, reg_values@GOTOFF(%ebx)
	.loc 1 1407 0
	movl	used_regs_old@GOTOFF(%ebx), %eax
	movl	%eax, used_regs@GOTOFF(%ebx)
	.loc 1 1408 0
	movl	reg_values@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	varray_clear@PLT
	.loc 1 1409 0
	movl	used_regs@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	varray_clear@PLT
	.loc 1 1404 0
	jmp	.L510
.L507:
	.loc 1 1413 0
	movl	cselib_nregs@GOTOFF(%ebx), %edx
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$19, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, reg_values@GOTOFF(%ebx)
	.loc 1 1414 0
	movl	cselib_nregs@GOTOFF(%ebx), %edx
	leal	.LC2@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	$5, 4(%esp)
	movl	%edx, (%esp)
	call	varray_init@PLT
	movl	%eax, used_regs@GOTOFF(%ebx)
.L510:
	.loc 1 1416 0
	movl	$0, 20(%esp)
	movl	ggc_calloc@GOT(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	leal	entry_and_rtx_equal_p@GOTOFF(%ebx), %eax
	movl	%eax, 8(%esp)
	leal	get_value_hash@GOTOFF(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$31, (%esp)
	call	htab_create_alloc@PLT
	movl	%eax, hash_table@GOTOFF(%ebx)
	.loc 1 1418 0
	movl	$1, (%esp)
	call	clear_table
	.loc 1 1419 0
	movb	$0, cselib_current_insn_in_libcall@GOTOFF(%ebx)
	.loc 1 1420 0
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
.LFE44:
	.size	cselib_init, .-cselib_init
.globl cselib_finish
	.type	cselib_finish, @function
cselib_finish:
.LFB45:
	.loc 1 1426 0
	pushl	%ebp
.LCFI126:
	movl	%esp, %ebp
.LCFI127:
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	.loc 1 1427 0
	movl	reg_values@GOTOFF(%ecx), %eax
	movl	%eax, reg_values_old@GOTOFF(%ecx)
	.loc 1 1428 0
	movl	$0, reg_values@GOTOFF(%ecx)
	.loc 1 1429 0
	movl	used_regs@GOTOFF(%ecx), %eax
	movl	%eax, used_regs_old@GOTOFF(%ecx)
	.loc 1 1430 0
	movl	$0, used_regs@GOTOFF(%ecx)
	.loc 1 1431 0
	movl	$0, hash_table@GOTOFF(%ecx)
	.loc 1 1432 0
	movl	$0, n_useless_values@GOTOFF(%ecx)
	.loc 1 1433 0
	movl	$0, next_unknown_value@GOTOFF(%ecx)
	.loc 1 1434 0
	popl	%ebp
	ret
.LFE45:
	.size	cselib_finish, .-cselib_finish
.globl gt_ggc_r_gt_cselib_h
	.section	.data.rel.ro,"aw",@progbits
	.align 32
	.type	gt_ggc_r_gt_cselib_h, @object
	.size	gt_ggc_r_gt_cselib_h, 80
gt_ggc_r_gt_cselib_h:
	.long	callmem
	.long	1
	.long	4
	.long	gt_ggc_mx_rtx_def
	.long	used_regs
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	reg_values
	.long	1
	.long	4
	.long	gt_ggc_mx_varray_head_tag
	.long	hash_table
	.long	1
	.long	4
	.long	gt_ggc_m_P17cselib_val_struct4htab
	.long	0
	.long	0
	.long	0
	.long	0
.globl gt_ggc_rd_gt_cselib_h
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	gt_ggc_rd_gt_cselib_h, @object
	.size	gt_ggc_rd_gt_cselib_h, 96
gt_ggc_rd_gt_cselib_h:
	.long	empty_elt_loc_lists
	.long	1
	.long	4
	.long	0
	.long	empty_elt_lists
	.long	1
	.long	4
	.long	0
	.long	empty_vals
	.long	1
	.long	4
	.long	0
	.long	used_regs_old
	.long	1
	.long	4
	.long	0
	.long	reg_values_old
	.long	1
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.local	hash_table
	.comm	hash_table,4,4
	.local	cselib_current_insn
	.comm	cselib_current_insn,4,4
	.local	cselib_current_insn_in_libcall
	.comm	cselib_current_insn_in_libcall,1,1
	.local	next_unknown_value
	.comm	next_unknown_value,4,4
	.local	cselib_nregs
	.comm	cselib_nregs,4,4
	.local	n_useless_values
	.comm	n_useless_values,4,4
	.local	reg_values
	.comm	reg_values,4,4
	.local	reg_values_old
	.comm	reg_values_old,4,4
	.local	max_value_regs
	.comm	max_value_regs,4,4
	.local	used_regs
	.comm	used_regs,4,4
	.local	used_regs_old
	.comm	used_regs_old,4,4
	.local	callmem
	.comm	callmem,4,4
	.local	empty_vals
	.comm	empty_vals,4,4
	.local	empty_elt_lists
	.comm	empty_elt_lists,4,4
	.local	empty_elt_loc_lists
	.comm	empty_elt_loc_lists,4,4
	.local	values_became_useless
	.comm	values_became_useless,4,4
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
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
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
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.byte	0x4
	.long	.LCFI18-.LFB20
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
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.byte	0x4
	.long	.LCFI22-.LFB21
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
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.byte	0x4
	.long	.LCFI26-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x5
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
	.long	.LCFI50-.LCFI46
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI51-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI54-.LCFI52
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
	.long	.LCFI55-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI56-.LCFI55
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI58-.LCFI56
	.byte	0x83
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
	.long	.LCFI66-.LCFI64
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
	.long	.LCFI67-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI71-.LCFI68
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI76-.LCFI73
	.byte	0x83
	.uleb128 0x4
	.byte	0x86
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
	.long	.LCFI77-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI82-.LCFI78
	.byte	0x83
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
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
	.long	.LCFI83-.LFB35
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.byte	0x4
	.long	.LCFI87-.LFB36
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
	.long	.LFB39
	.long	.LFE39-.LFB39
	.byte	0x4
	.long	.LCFI99-.LFB39
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
	.long	.LFB40
	.long	.LFE40-.LFB40
	.byte	0x4
	.long	.LCFI103-.LFB40
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
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.byte	0x4
	.long	.LCFI109-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI113-.LCFI110
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
	.long	.LCFI114-.LFB42
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
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.byte	0x4
	.long	.LCFI118-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI121-.LCFI119
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
	.long	.LCFI122-.LFB44
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
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.byte	0x4
	.long	.LCFI126-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE60:
	.file 2 "../../../kg++fe/gnu/varray.h"
	.file 3 "../../../kg++fe/gnu/cselib.h"
	.file 4 "../../../kg++fe/gnu/rtl.h"
	.file 5 "../../../kg++fe/gnu/MIPS/config.h"
	.file 6 "../../../kg++fe/gnu/machmode.h"
	.file 7 "../../../kg++fe/gnu/bitmap.h"
	.file 8 "../../../kg++fe/gnu/basic-block.h"
	.file 9 "../../../kg++fe/gnu/sbitmap.h"
	.file 10 "../../../include/gnu/hashtab.h"
	.file 11 "../../../kg++fe/gnu/ggc.h"
	.file 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h"
	.file 13 "../../../kg++fe/gnu/regs.h"
	.file 14 "../../../kg++fe/gnu/hard-reg-set.h"
	.file 15 "../../../kg++fe/gnu/MIPS/mips.h"
	.file 16 "../../../kg++fe/gnu/flags.h"
	.file 17 "../../../kg++fe/gnu/MIPS/gt-cselib.h"
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
.LLST5:
	.long	.LFB20-.Ltext0
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
	.long	.LFE20-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LFB21-.Ltext0
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
	.long	.LFE21-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LFB22-.Ltext0
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
	.long	.LCFI51-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI51-.Ltext0
	.long	.LCFI52-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI52-.Ltext0
	.long	.LFE28-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LFB29-.Ltext0
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
	.long	.LCFI77-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI77-.Ltext0
	.long	.LCFI78-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI78-.Ltext0
	.long	.LFE34-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LFB35-.Ltext0
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
	.long	.LFE35-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LFB36-.Ltext0
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
	.long	.LFE36-.Ltext0
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
	.long	.LFB39-.Ltext0
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
	.long	.LFE39-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LFB40-.Ltext0
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
	.long	.LFE40-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LFB41-.Ltext0
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
	.long	.LFE41-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LFB42-.Ltext0
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
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LFB43-.Ltext0
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
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LFB44-.Ltext0
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
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LFB45-.Ltext0
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
	.long	.LFE45-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3384
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.Ldebug_line0
	.long	.Letext0
	.long	.Ltext0
	.string	"GNU C 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.byte	0x1
	.string	"../../../kg++fe/gnu/cselib.c"
	.string	"/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu"
	.uleb128 0x2
	.string	"rtx"
	.byte	0x5
	.byte	0xc
	.long	0xa6
	.uleb128 0x3
	.byte	0x4
	.long	0xac
	.uleb128 0x4
	.long	0x19a
	.string	"rtx_def"
	.byte	0xc
	.byte	0x5
	.byte	0xb
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x84
	.long	0x62a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x4
	.byte	0x87
	.long	0x332
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"jump"
	.byte	0x4
	.byte	0x8e
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"call"
	.byte	0x4
	.byte	0x91
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"unchanging"
	.byte	0x4
	.byte	0x99
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"volatil"
	.byte	0x4
	.byte	0xa2
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"in_struct"
	.byte	0x4
	.byte	0xb4
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"used"
	.byte	0x4
	.byte	0xbb
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"integrated"
	.byte	0x4
	.byte	0xc0
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"frame_related"
	.byte	0x4
	.byte	0xc9
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"fld"
	.byte	0x4
	.byte	0xce
	.long	0x128f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"rtvec"
	.byte	0x5
	.byte	0xe
	.long	0x1a7
	.uleb128 0x3
	.byte	0x4
	.long	0x1ad
	.uleb128 0x4
	.long	0x1e2
	.string	"rtvec_def"
	.byte	0x8
	.byte	0x5
	.byte	0xd
	.uleb128 0x7
	.string	"num_elem"
	.byte	0x4
	.byte	0xf2
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elem"
	.byte	0x4
	.byte	0xf3
	.long	0x129f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.string	"tree"
	.byte	0x5
	.byte	0x10
	.long	0x1ee
	.uleb128 0x3
	.byte	0x4
	.long	0x1f4
	.uleb128 0x8
	.string	"tree_node"
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x206
	.uleb128 0x9
	.long	0x20b
	.uleb128 0xa
	.string	"char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.long	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.string	"size_t"
	.byte	0xc
	.byte	0xd6
	.long	0x21a
	.uleb128 0xa
	.string	"unsigned char"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x7
	.uleb128 0xa
	.string	"long unsigned int"
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.string	"signed char"
	.byte	0x1
	.byte	0x6
	.uleb128 0xa
	.string	"short int"
	.byte	0x2
	.byte	0x5
	.uleb128 0xa
	.string	"long long int"
	.byte	0x8
	.byte	0x5
	.uleb128 0xa
	.string	"long long unsigned int"
	.byte	0x8
	.byte	0x7
	.uleb128 0xa
	.string	"long int"
	.byte	0x4
	.byte	0x5
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.long	0x20b
	.uleb128 0x3
	.byte	0x4
	.long	0x2d3
	.uleb128 0x9
	.long	0x236
	.uleb128 0x3
	.byte	0x4
	.long	0x2c5
	.uleb128 0x3
	.byte	0x4
	.long	0x2e4
	.uleb128 0xd
	.long	0x2f0
	.byte	0x1
	.uleb128 0xe
	.long	0x2c5
	.byte	0x0
	.uleb128 0xf
	.long	0x300
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x310
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x316
	.uleb128 0x11
	.long	0x32b
	.byte	0x1
	.long	0x213
	.uleb128 0xe
	.long	0x32b
	.uleb128 0xe
	.long	0x32b
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x331
	.uleb128 0x12
	.uleb128 0x13
	.long	0x57b
	.string	"machine_mode"
	.byte	0x4
	.byte	0x6
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
	.long	0x62a
	.long	.LASF3
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.uleb128 0x14
	.string	"MODE_RANDOM"
	.sleb128 0
	.uleb128 0x14
	.string	"MODE_INT"
	.sleb128 1
	.uleb128 0x14
	.string	"MODE_FLOAT"
	.sleb128 2
	.uleb128 0x14
	.string	"MODE_PARTIAL_INT"
	.sleb128 3
	.uleb128 0x14
	.string	"MODE_CC"
	.sleb128 4
	.uleb128 0x14
	.string	"MODE_COMPLEX_INT"
	.sleb128 5
	.uleb128 0x14
	.string	"MODE_COMPLEX_FLOAT"
	.sleb128 6
	.uleb128 0x14
	.string	"MODE_VECTOR_INT"
	.sleb128 7
	.uleb128 0x14
	.string	"MODE_VECTOR_FLOAT"
	.sleb128 8
	.uleb128 0x14
	.string	"MAX_MODE_CLASS"
	.sleb128 9
	.byte	0x0
	.uleb128 0x13
	.long	0xdf9
	.string	"rtx_code"
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0x14
	.string	"UNKNOWN"
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.string	"INCLUDE"
	.sleb128 2
	.uleb128 0x14
	.string	"EXPR_LIST"
	.sleb128 3
	.uleb128 0x14
	.string	"INSN_LIST"
	.sleb128 4
	.uleb128 0x14
	.string	"MATCH_OPERAND"
	.sleb128 5
	.uleb128 0x14
	.string	"MATCH_SCRATCH"
	.sleb128 6
	.uleb128 0x14
	.string	"MATCH_DUP"
	.sleb128 7
	.uleb128 0x14
	.string	"MATCH_OPERATOR"
	.sleb128 8
	.uleb128 0x14
	.string	"MATCH_PARALLEL"
	.sleb128 9
	.uleb128 0x14
	.string	"MATCH_OP_DUP"
	.sleb128 10
	.uleb128 0x14
	.string	"MATCH_PAR_DUP"
	.sleb128 11
	.uleb128 0x14
	.string	"MATCH_INSN"
	.sleb128 12
	.uleb128 0x14
	.string	"DEFINE_INSN"
	.sleb128 13
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE"
	.sleb128 14
	.uleb128 0x14
	.string	"DEFINE_SPLIT"
	.sleb128 15
	.uleb128 0x14
	.string	"DEFINE_INSN_AND_SPLIT"
	.sleb128 16
	.uleb128 0x14
	.string	"DEFINE_PEEPHOLE2"
	.sleb128 17
	.uleb128 0x14
	.string	"DEFINE_COMBINE"
	.sleb128 18
	.uleb128 0x14
	.string	"DEFINE_EXPAND"
	.sleb128 19
	.uleb128 0x14
	.string	"DEFINE_DELAY"
	.sleb128 20
	.uleb128 0x14
	.string	"DEFINE_FUNCTION_UNIT"
	.sleb128 21
	.uleb128 0x14
	.string	"DEFINE_ASM_ATTRIBUTES"
	.sleb128 22
	.uleb128 0x14
	.string	"DEFINE_COND_EXEC"
	.sleb128 23
	.uleb128 0x14
	.string	"SEQUENCE"
	.sleb128 24
	.uleb128 0x14
	.string	"ADDRESS"
	.sleb128 25
	.uleb128 0x14
	.string	"DEFINE_CPU_UNIT"
	.sleb128 26
	.uleb128 0x14
	.string	"DEFINE_QUERY_CPU_UNIT"
	.sleb128 27
	.uleb128 0x14
	.string	"EXCLUSION_SET"
	.sleb128 28
	.uleb128 0x14
	.string	"PRESENCE_SET"
	.sleb128 29
	.uleb128 0x14
	.string	"ABSENCE_SET"
	.sleb128 30
	.uleb128 0x14
	.string	"DEFINE_BYPASS"
	.sleb128 31
	.uleb128 0x14
	.string	"DEFINE_AUTOMATON"
	.sleb128 32
	.uleb128 0x14
	.string	"AUTOMATA_OPTION"
	.sleb128 33
	.uleb128 0x14
	.string	"DEFINE_RESERVATION"
	.sleb128 34
	.uleb128 0x14
	.string	"DEFINE_INSN_RESERVATION"
	.sleb128 35
	.uleb128 0x14
	.string	"DEFINE_ATTR"
	.sleb128 36
	.uleb128 0x14
	.string	"ATTR"
	.sleb128 37
	.uleb128 0x14
	.string	"SET_ATTR"
	.sleb128 38
	.uleb128 0x14
	.string	"SET_ATTR_ALTERNATIVE"
	.sleb128 39
	.uleb128 0x14
	.string	"EQ_ATTR"
	.sleb128 40
	.uleb128 0x14
	.string	"ATTR_FLAG"
	.sleb128 41
	.uleb128 0x14
	.string	"INSN"
	.sleb128 42
	.uleb128 0x14
	.string	"JUMP_INSN"
	.sleb128 43
	.uleb128 0x14
	.string	"CALL_INSN"
	.sleb128 44
	.uleb128 0x14
	.string	"BARRIER"
	.sleb128 45
	.uleb128 0x14
	.string	"CODE_LABEL"
	.sleb128 46
	.uleb128 0x14
	.string	"NOTE"
	.sleb128 47
	.uleb128 0x14
	.string	"COND_EXEC"
	.sleb128 48
	.uleb128 0x14
	.string	"PARALLEL"
	.sleb128 49
	.uleb128 0x14
	.string	"ASM_INPUT"
	.sleb128 50
	.uleb128 0x14
	.string	"ASM_OPERANDS"
	.sleb128 51
	.uleb128 0x14
	.string	"UNSPEC"
	.sleb128 52
	.uleb128 0x14
	.string	"UNSPEC_VOLATILE"
	.sleb128 53
	.uleb128 0x14
	.string	"ADDR_VEC"
	.sleb128 54
	.uleb128 0x14
	.string	"ADDR_DIFF_VEC"
	.sleb128 55
	.uleb128 0x14
	.string	"PREFETCH"
	.sleb128 56
	.uleb128 0x14
	.string	"SET"
	.sleb128 57
	.uleb128 0x14
	.string	"USE"
	.sleb128 58
	.uleb128 0x14
	.string	"CLOBBER"
	.sleb128 59
	.uleb128 0x14
	.string	"CALL"
	.sleb128 60
	.uleb128 0x14
	.string	"RETURN"
	.sleb128 61
	.uleb128 0x14
	.string	"TRAP_IF"
	.sleb128 62
	.uleb128 0x14
	.string	"RESX"
	.sleb128 63
	.uleb128 0x14
	.string	"CONST_INT"
	.sleb128 64
	.uleb128 0x14
	.string	"CONST_DOUBLE"
	.sleb128 65
	.uleb128 0x14
	.string	"CONST_VECTOR"
	.sleb128 66
	.uleb128 0x14
	.string	"CONST_STRING"
	.sleb128 67
	.uleb128 0x14
	.string	"CONST"
	.sleb128 68
	.uleb128 0x14
	.string	"PC"
	.sleb128 69
	.uleb128 0x14
	.string	"VALUE"
	.sleb128 70
	.uleb128 0x14
	.string	"REG"
	.sleb128 71
	.uleb128 0x14
	.string	"SCRATCH"
	.sleb128 72
	.uleb128 0x14
	.string	"SUBREG"
	.sleb128 73
	.uleb128 0x14
	.string	"STRICT_LOW_PART"
	.sleb128 74
	.uleb128 0x14
	.string	"CONCAT"
	.sleb128 75
	.uleb128 0x14
	.string	"MEM"
	.sleb128 76
	.uleb128 0x14
	.string	"LABEL_REF"
	.sleb128 77
	.uleb128 0x14
	.string	"SYMBOL_REF"
	.sleb128 78
	.uleb128 0x14
	.string	"CC0"
	.sleb128 79
	.uleb128 0x14
	.string	"ADDRESSOF"
	.sleb128 80
	.uleb128 0x14
	.string	"QUEUED"
	.sleb128 81
	.uleb128 0x14
	.string	"IF_THEN_ELSE"
	.sleb128 82
	.uleb128 0x14
	.string	"COND"
	.sleb128 83
	.uleb128 0x14
	.string	"COMPARE"
	.sleb128 84
	.uleb128 0x14
	.string	"PLUS"
	.sleb128 85
	.uleb128 0x14
	.string	"MINUS"
	.sleb128 86
	.uleb128 0x14
	.string	"NEG"
	.sleb128 87
	.uleb128 0x14
	.string	"MULT"
	.sleb128 88
	.uleb128 0x14
	.string	"DIV"
	.sleb128 89
	.uleb128 0x14
	.string	"MOD"
	.sleb128 90
	.uleb128 0x14
	.string	"UDIV"
	.sleb128 91
	.uleb128 0x14
	.string	"UMOD"
	.sleb128 92
	.uleb128 0x14
	.string	"AND"
	.sleb128 93
	.uleb128 0x14
	.string	"IOR"
	.sleb128 94
	.uleb128 0x14
	.string	"XOR"
	.sleb128 95
	.uleb128 0x14
	.string	"NOT"
	.sleb128 96
	.uleb128 0x14
	.string	"ASHIFT"
	.sleb128 97
	.uleb128 0x14
	.string	"ROTATE"
	.sleb128 98
	.uleb128 0x14
	.string	"ASHIFTRT"
	.sleb128 99
	.uleb128 0x14
	.string	"LSHIFTRT"
	.sleb128 100
	.uleb128 0x14
	.string	"ROTATERT"
	.sleb128 101
	.uleb128 0x14
	.string	"SMIN"
	.sleb128 102
	.uleb128 0x14
	.string	"SMAX"
	.sleb128 103
	.uleb128 0x14
	.string	"UMIN"
	.sleb128 104
	.uleb128 0x14
	.string	"UMAX"
	.sleb128 105
	.uleb128 0x14
	.string	"PRE_DEC"
	.sleb128 106
	.uleb128 0x14
	.string	"PRE_INC"
	.sleb128 107
	.uleb128 0x14
	.string	"POST_DEC"
	.sleb128 108
	.uleb128 0x14
	.string	"POST_INC"
	.sleb128 109
	.uleb128 0x14
	.string	"PRE_MODIFY"
	.sleb128 110
	.uleb128 0x14
	.string	"POST_MODIFY"
	.sleb128 111
	.uleb128 0x14
	.string	"NE"
	.sleb128 112
	.uleb128 0x14
	.string	"EQ"
	.sleb128 113
	.uleb128 0x14
	.string	"GE"
	.sleb128 114
	.uleb128 0x14
	.string	"GT"
	.sleb128 115
	.uleb128 0x14
	.string	"LE"
	.sleb128 116
	.uleb128 0x14
	.string	"LT"
	.sleb128 117
	.uleb128 0x14
	.string	"GEU"
	.sleb128 118
	.uleb128 0x14
	.string	"GTU"
	.sleb128 119
	.uleb128 0x14
	.string	"LEU"
	.sleb128 120
	.uleb128 0x14
	.string	"LTU"
	.sleb128 121
	.uleb128 0x14
	.string	"UNORDERED"
	.sleb128 122
	.uleb128 0x14
	.string	"ORDERED"
	.sleb128 123
	.uleb128 0x14
	.string	"UNEQ"
	.sleb128 124
	.uleb128 0x14
	.string	"UNGE"
	.sleb128 125
	.uleb128 0x14
	.string	"UNGT"
	.sleb128 126
	.uleb128 0x14
	.string	"UNLE"
	.sleb128 127
	.uleb128 0x14
	.string	"UNLT"
	.sleb128 128
	.uleb128 0x14
	.string	"LTGT"
	.sleb128 129
	.uleb128 0x14
	.string	"SIGN_EXTEND"
	.sleb128 130
	.uleb128 0x14
	.string	"ZERO_EXTEND"
	.sleb128 131
	.uleb128 0x14
	.string	"TRUNCATE"
	.sleb128 132
	.uleb128 0x14
	.string	"FLOAT_EXTEND"
	.sleb128 133
	.uleb128 0x14
	.string	"FLOAT_TRUNCATE"
	.sleb128 134
	.uleb128 0x14
	.string	"FLOAT"
	.sleb128 135
	.uleb128 0x14
	.string	"FIX"
	.sleb128 136
	.uleb128 0x14
	.string	"UNSIGNED_FLOAT"
	.sleb128 137
	.uleb128 0x14
	.string	"UNSIGNED_FIX"
	.sleb128 138
	.uleb128 0x14
	.string	"ABS"
	.sleb128 139
	.uleb128 0x14
	.string	"SQRT"
	.sleb128 140
	.uleb128 0x14
	.string	"FFS"
	.sleb128 141
	.uleb128 0x14
	.string	"SIGN_EXTRACT"
	.sleb128 142
	.uleb128 0x14
	.string	"ZERO_EXTRACT"
	.sleb128 143
	.uleb128 0x14
	.string	"HIGH"
	.sleb128 144
	.uleb128 0x14
	.string	"LO_SUM"
	.sleb128 145
	.uleb128 0x14
	.string	"RANGE_INFO"
	.sleb128 146
	.uleb128 0x14
	.string	"RANGE_REG"
	.sleb128 147
	.uleb128 0x14
	.string	"RANGE_VAR"
	.sleb128 148
	.uleb128 0x14
	.string	"RANGE_LIVE"
	.sleb128 149
	.uleb128 0x14
	.string	"CONSTANT_P_RTX"
	.sleb128 150
	.uleb128 0x14
	.string	"CALL_PLACEHOLDER"
	.sleb128 151
	.uleb128 0x14
	.string	"VEC_MERGE"
	.sleb128 152
	.uleb128 0x14
	.string	"VEC_SELECT"
	.sleb128 153
	.uleb128 0x14
	.string	"VEC_CONCAT"
	.sleb128 154
	.uleb128 0x14
	.string	"VEC_DUPLICATE"
	.sleb128 155
	.uleb128 0x14
	.string	"SS_PLUS"
	.sleb128 156
	.uleb128 0x14
	.string	"US_PLUS"
	.sleb128 157
	.uleb128 0x14
	.string	"SS_MINUS"
	.sleb128 158
	.uleb128 0x14
	.string	"US_MINUS"
	.sleb128 159
	.uleb128 0x14
	.string	"SS_TRUNCATE"
	.sleb128 160
	.uleb128 0x14
	.string	"US_TRUNCATE"
	.sleb128 161
	.uleb128 0x14
	.string	"PHI"
	.sleb128 162
	.uleb128 0x14
	.string	"LAST_AND_UNUSED_RTX_CODE"
	.sleb128 163
	.byte	0x0
	.uleb128 0x16
	.long	0xed3
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x6
	.string	"min_align"
	.byte	0x4
	.byte	0x49
	.long	0x21a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"base_after_vec"
	.byte	0x4
	.byte	0x4b
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_vec"
	.byte	0x4
	.byte	0x4c
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_vec"
	.byte	0x4
	.byte	0x4e
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"min_after_base"
	.byte	0x4
	.byte	0x50
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"max_after_base"
	.byte	0x4
	.byte	0x52
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"offset_unsigned"
	.byte	0x4
	.byte	0x55
	.long	0x21a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.string	"scale"
	.byte	0x4
	.byte	0x57
	.long	0x21a
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
	.long	0xdf9
	.uleb128 0x17
	.long	0xf4a
	.long	.LASF4
	.byte	0x18
	.byte	0x4
	.byte	0x62
	.uleb128 0x7
	.string	"alias"
	.byte	0x4
	.byte	0x63
	.long	0x28e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"expr"
	.byte	0x4
	.byte	0x64
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"offset"
	.byte	0x4
	.byte	0x65
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0x4
	.byte	0x66
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"align"
	.byte	0x4
	.byte	0x67
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x18
	.long	.LASF4
	.byte	0x4
	.byte	0x68
	.long	0xeee
	.uleb128 0x19
	.long	0x1027
	.string	"rtunion_def"
	.byte	0x8
	.byte	0x4
	.byte	0x6d
	.uleb128 0x1a
	.string	"rtwint"
	.byte	0x4
	.byte	0x6e
	.long	0x28e
	.uleb128 0x1a
	.string	"rtint"
	.byte	0x4
	.byte	0x6f
	.long	0x213
	.uleb128 0x1a
	.string	"rtuint"
	.byte	0x4
	.byte	0x70
	.long	0x21a
	.uleb128 0x1a
	.string	"rtstr"
	.byte	0x4
	.byte	0x71
	.long	0x200
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x4
	.byte	0x72
	.long	0x9b
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x4
	.byte	0x73
	.long	0x19a
	.uleb128 0x1a
	.string	"rttype"
	.byte	0x4
	.byte	0x74
	.long	0x332
	.uleb128 0x1a
	.string	"rt_addr_diff_vec_flags"
	.byte	0x4
	.byte	0x75
	.long	0xed3
	.uleb128 0x1a
	.string	"rt_cselib"
	.byte	0x4
	.byte	0x76
	.long	0x1081
	.uleb128 0x1a
	.string	"rtbit"
	.byte	0x4
	.byte	0x77
	.long	0x10e9
	.uleb128 0x1a
	.string	"rttree"
	.byte	0x4
	.byte	0x78
	.long	0x1e2
	.uleb128 0x1a
	.string	"bb"
	.byte	0x4
	.byte	0x79
	.long	0x1274
	.uleb128 0x1a
	.string	"rtmem"
	.byte	0x4
	.byte	0x7a
	.long	0x127a
	.byte	0x0
	.uleb128 0x4
	.long	0x1081
	.string	"cselib_val_struct"
	.byte	0x10
	.byte	0x4
	.byte	0x76
	.uleb128 0x7
	.string	"value"
	.byte	0x3
	.byte	0x1a
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"u"
	.byte	0x3
	.byte	0x21
	.long	0x1ec4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"locs"
	.byte	0x3
	.byte	0x25
	.long	0x1f58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"addr_list"
	.byte	0x3
	.byte	0x28
	.long	0x17c6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1027
	.uleb128 0x4
	.long	0x10e9
	.string	"bitmap_head_def"
	.byte	0x10
	.byte	0x4
	.byte	0x77
	.uleb128 0x7
	.string	"first"
	.byte	0x7
	.byte	0x3d
	.long	0x1903
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"current"
	.byte	0x7
	.byte	0x3e
	.long	0x1903
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x7
	.byte	0x3f
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"using_obstack"
	.byte	0x7
	.byte	0x40
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1087
	.uleb128 0x4
	.long	0x1274
	.string	"basic_block_def"
	.byte	0x50
	.byte	0x4
	.byte	0x79
	.uleb128 0x7
	.string	"head"
	.byte	0x8
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"end"
	.byte	0x8
	.byte	0xb5
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"head_tree"
	.byte	0x8
	.byte	0xb8
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"end_tree"
	.byte	0x8
	.byte	0xb9
	.long	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"pred"
	.byte	0x8
	.byte	0xbc
	.long	0x1a55
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"succ"
	.byte	0x8
	.byte	0xbc
	.long	0x1a55
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"local_set"
	.byte	0x8
	.byte	0xc1
	.long	0x1986
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"cond_local_set"
	.byte	0x8
	.byte	0xc5
	.long	0x1986
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"global_live_at_start"
	.byte	0x8
	.byte	0xcb
	.long	0x1986
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"global_live_at_end"
	.byte	0x8
	.byte	0xcd
	.long	0x1986
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"aux"
	.byte	0x8
	.byte	0xd0
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"index"
	.byte	0x8
	.byte	0xd3
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"prev_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1274
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"next_bb"
	.byte	0x8
	.byte	0xd6
	.long	0x1274
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"loop_depth"
	.byte	0x8
	.byte	0xd9
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"loop_father"
	.byte	0x8
	.byte	0xdc
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"count"
	.byte	0x8
	.byte	0xdf
	.long	0x1994
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"frequency"
	.byte	0x8
	.byte	0xe2
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"flags"
	.byte	0x8
	.byte	0xe5
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x10ef
	.uleb128 0x3
	.byte	0x4
	.long	0xf4a
	.uleb128 0x2
	.string	"rtunion"
	.byte	0x4
	.byte	0x7c
	.long	0xf55
	.uleb128 0xf
	.long	0x129f
	.long	0x1280
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x12af
	.long	0x9b
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x12e5
	.string	"const_equiv_data"
	.byte	0x8
	.byte	0x2
	.byte	0x24
	.uleb128 0x7
	.string	"rtx"
	.byte	0x2
	.byte	0x32
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"age"
	.byte	0x2
	.byte	0x36
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x13
	.long	0x1480
	.string	"varray_data_enum"
	.byte	0x4
	.byte	0x2
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
	.uleb128 0x19
	.long	0x157c
	.string	"varray_data_tag"
	.byte	0x8
	.byte	0x2
	.byte	0x55
	.uleb128 0x1a
	.string	"c"
	.byte	0x2
	.byte	0x56
	.long	0x2f0
	.uleb128 0x1a
	.string	"uc"
	.byte	0x2
	.byte	0x58
	.long	0x157c
	.uleb128 0x1a
	.string	"s"
	.byte	0x2
	.byte	0x5a
	.long	0x158c
	.uleb128 0x1a
	.string	"us"
	.byte	0x2
	.byte	0x5c
	.long	0x159c
	.uleb128 0x1a
	.string	"i"
	.byte	0x2
	.byte	0x5e
	.long	0x15ac
	.uleb128 0x1a
	.string	"u"
	.byte	0x2
	.byte	0x60
	.long	0x15bc
	.uleb128 0x1a
	.string	"l"
	.byte	0x2
	.byte	0x62
	.long	0x15cc
	.uleb128 0x1a
	.string	"ul"
	.byte	0x2
	.byte	0x64
	.long	0x15dc
	.uleb128 0x1a
	.string	"hint"
	.byte	0x2
	.byte	0x66
	.long	0x15ec
	.uleb128 0x1a
	.string	"uhint"
	.byte	0x2
	.byte	0x68
	.long	0x15fc
	.uleb128 0x1a
	.string	"generic"
	.byte	0x2
	.byte	0x6a
	.long	0x160c
	.uleb128 0x1a
	.string	"cptr"
	.byte	0x2
	.byte	0x6c
	.long	0x161c
	.uleb128 0x1a
	.string	"rtx"
	.byte	0x2
	.byte	0x6e
	.long	0x162c
	.uleb128 0x1a
	.string	"rtvec"
	.byte	0x2
	.byte	0x70
	.long	0x163c
	.uleb128 0x1a
	.string	"tree"
	.byte	0x2
	.byte	0x72
	.long	0x164c
	.uleb128 0x1a
	.string	"bitmap"
	.byte	0x2
	.byte	0x74
	.long	0x165c
	.uleb128 0x1a
	.string	"reg"
	.byte	0x2
	.byte	0x76
	.long	0x166c
	.uleb128 0x1a
	.string	"const_equiv"
	.byte	0x2
	.byte	0x78
	.long	0x1768
	.uleb128 0x1a
	.string	"bb"
	.byte	0x2
	.byte	0x7a
	.long	0x1778
	.uleb128 0x1a
	.string	"te"
	.byte	0x2
	.byte	0x7c
	.long	0x1788
	.byte	0x0
	.uleb128 0xf
	.long	0x158c
	.long	0x236
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x159c
	.long	0x281
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x15ac
	.long	0x247
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x15bc
	.long	0x213
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x15cc
	.long	0x21a
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x15dc
	.long	0x2b9
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x15ec
	.long	0x25d
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x15fc
	.long	0x28e
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x160c
	.long	0x29f
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x161c
	.long	0x2c5
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x162c
	.long	0x2c7
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x163c
	.long	0xa6
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x164c
	.long	0x1a7
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x165c
	.long	0x1ee
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x166c
	.long	0x10e9
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x167c
	.long	0x1762
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x1762
	.string	"reg_info_def"
	.byte	0x2c
	.byte	0x2
	.byte	0x76
	.uleb128 0x7
	.string	"first_uid"
	.byte	0xd
	.byte	0x31
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"last_uid"
	.byte	0xd
	.byte	0x32
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"last_note_uid"
	.byte	0xd
	.byte	0x33
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"sets"
	.byte	0xd
	.byte	0x36
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"refs"
	.byte	0xd
	.byte	0x39
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"freq"
	.byte	0xd
	.byte	0x3a
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"deaths"
	.byte	0xd
	.byte	0x3b
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"live_length"
	.byte	0xd
	.byte	0x3c
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"calls_crossed"
	.byte	0xd
	.byte	0x3d
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1b
	.long	.LASF5
	.byte	0xd
	.byte	0x3e
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"changes_mode"
	.byte	0xd
	.byte	0x3f
	.long	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x167c
	.uleb128 0xf
	.long	0x1778
	.long	0x12af
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1788
	.long	0x1274
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x1798
	.long	0x17c6
	.uleb128 0x10
	.long	0x221
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.long	0x17c6
	.string	"elt_list"
	.byte	0x8
	.byte	0x2
	.byte	0x7c
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x3
	.byte	0x3b
	.long	0x17c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elt"
	.byte	0x3
	.byte	0x3c
	.long	0x1f70
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1798
	.uleb128 0x2
	.string	"varray_data"
	.byte	0x2
	.byte	0x7e
	.long	0x1480
	.uleb128 0x4
	.long	0x1854
	.string	"varray_head_tag"
	.byte	0x18
	.byte	0x2
	.byte	0x81
	.uleb128 0x7
	.string	"num_elements"
	.byte	0x2
	.byte	0x82
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"elements_used"
	.byte	0x2
	.byte	0x83
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"type"
	.byte	0x2
	.byte	0x85
	.long	0x12e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"name"
	.byte	0x2
	.byte	0x86
	.long	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"data"
	.byte	0x2
	.byte	0x87
	.long	0x17cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.string	"varray_type"
	.byte	0x2
	.byte	0x8a
	.long	0x1867
	.uleb128 0x3
	.byte	0x4
	.long	0x17df
	.uleb128 0x2
	.string	"BITMAP_WORD"
	.byte	0x7
	.byte	0x1d
	.long	0x25d
	.uleb128 0x4
	.long	0x18d7
	.string	"bitmap_element_def"
	.byte	0x1c
	.byte	0x7
	.byte	0x34
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x7
	.byte	0x35
	.long	0x18d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"prev"
	.byte	0x7
	.byte	0x36
	.long	0x18d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"indx"
	.byte	0x7
	.byte	0x37
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bits"
	.byte	0x7
	.byte	0x38
	.long	0x18dd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1880
	.uleb128 0xf
	.long	0x18ed
	.long	0x186d
	.uleb128 0x10
	.long	0x221
	.byte	0x3
	.byte	0x0
	.uleb128 0x2
	.string	"bitmap_element"
	.byte	0x7
	.byte	0x39
	.long	0x1880
	.uleb128 0x3
	.byte	0x4
	.long	0x18ed
	.uleb128 0x2
	.string	"bitmap"
	.byte	0x7
	.byte	0x43
	.long	0x10e9
	.uleb128 0x4
	.long	0x1971
	.string	"simple_bitmap_def"
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.uleb128 0x7
	.string	"n_bits"
	.byte	0x9
	.byte	0x21
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"size"
	.byte	0x9
	.byte	0x22
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"bytes"
	.byte	0x9
	.byte	0x23
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"elms"
	.byte	0x9
	.byte	0x24
	.long	0x15fc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.string	"sbitmap"
	.byte	0x9
	.byte	0x25
	.long	0x1980
	.uleb128 0x3
	.byte	0x4
	.long	0x1917
	.uleb128 0x2
	.string	"regset"
	.byte	0x8
	.byte	0x22
	.long	0x1909
	.uleb128 0x2
	.string	"gcov_type"
	.byte	0x8
	.byte	0x75
	.long	0x28e
	.uleb128 0x4
	.long	0x1a4f
	.string	"edge_def"
	.byte	0x28
	.byte	0x8
	.byte	0x78
	.uleb128 0x7
	.string	"pred_next"
	.byte	0x8
	.byte	0x7a
	.long	0x1a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"succ_next"
	.byte	0x8
	.byte	0x7a
	.long	0x1a4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"src"
	.byte	0x8
	.byte	0x7d
	.long	0x1274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1b
	.long	.LASF7
	.byte	0x8
	.byte	0x7d
	.long	0x1274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"insns"
	.byte	0x8
	.byte	0x80
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"aux"
	.byte	0x8
	.byte	0x83
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"flags"
	.byte	0x8
	.byte	0x85
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"probability"
	.byte	0x8
	.byte	0x86
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"count"
	.byte	0x8
	.byte	0x87
	.long	0x1994
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x19a5
	.uleb128 0x2
	.string	"edge"
	.byte	0x8
	.byte	0x89
	.long	0x1a4f
	.uleb128 0x4
	.long	0x1cd0
	.string	"loop"
	.byte	0x80
	.byte	0x8
	.byte	0xdc
	.uleb128 0x1c
	.string	"num"
	.byte	0x8
	.value	0x176
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1c
	.string	"header"
	.byte	0x8
	.value	0x179
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.string	"latch"
	.byte	0x8
	.value	0x17c
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.string	"pre_header"
	.byte	0x8
	.value	0x17f
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.string	"pre_header_edges"
	.byte	0x8
	.value	0x184
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.string	"num_pre_header_edges"
	.byte	0x8
	.value	0x187
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.string	"first"
	.byte	0x8
	.value	0x18b
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.string	"last"
	.byte	0x8
	.value	0x18f
	.long	0x1cd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.string	"nodes"
	.byte	0x8
	.value	0x192
	.long	0x1971
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.string	"num_nodes"
	.byte	0x8
	.value	0x195
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x1c
	.string	"entry_edges"
	.byte	0x8
	.value	0x198
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x1c
	.string	"num_entries"
	.byte	0x8
	.value	0x19b
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x1c
	.string	"exit_edges"
	.byte	0x8
	.value	0x19e
	.long	0x1ce1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.string	"num_exits"
	.byte	0x8
	.value	0x1a1
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x1c
	.string	"exits_doms"
	.byte	0x8
	.value	0x1a4
	.long	0x1971
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x1c
	.string	"depth"
	.byte	0x8
	.value	0x1a7
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x1c
	.string	"pred"
	.byte	0x8
	.value	0x1aa
	.long	0x1ce7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.string	"level"
	.byte	0x8
	.value	0x1ae
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1c
	.string	"outer"
	.byte	0x8
	.value	0x1b1
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.string	"inner"
	.byte	0x8
	.value	0x1b4
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1d
	.long	.LASF6
	.byte	0x8
	.value	0x1b7
	.long	0x1cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x1c
	.string	"invalid"
	.byte	0x8
	.value	0x1ba
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1c
	.string	"aux"
	.byte	0x8
	.value	0x1bd
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.string	"vtop"
	.byte	0x8
	.value	0x1c3
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x1c
	.string	"cont"
	.byte	0x8
	.value	0x1c7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.string	"start"
	.byte	0x8
	.value	0x1ca
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x1c
	.string	"end"
	.byte	0x8
	.value	0x1cd
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x1c
	.string	"top"
	.byte	0x8
	.value	0x1d1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x1c
	.string	"scan_start"
	.byte	0x8
	.value	0x1d4
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x1c
	.string	"sink"
	.byte	0x8
	.value	0x1d7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x1c
	.string	"exit_labels"
	.byte	0x8
	.value	0x1e2
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x1c
	.string	"exit_count"
	.byte	0x8
	.value	0x1e6
	.long	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1a61
	.uleb128 0x18
	.long	.LASF5
	.byte	0x8
	.byte	0xe6
	.long	0x1274
	.uleb128 0x3
	.byte	0x4
	.long	0x1a55
	.uleb128 0x3
	.byte	0x4
	.long	0x1cd0
	.uleb128 0xa
	.string	"_Bool"
	.byte	0x1
	.byte	0x2
	.uleb128 0x4
	.long	0x1d48
	.string	"ggc_root_tab"
	.byte	0x10
	.byte	0xb
	.byte	0x32
	.uleb128 0x7
	.string	"base"
	.byte	0xb
	.byte	0x33
	.long	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"nelt"
	.byte	0xb
	.byte	0x34
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"stride"
	.byte	0xb
	.byte	0x35
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"cb"
	.byte	0xb
	.byte	0x36
	.long	0x2de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x4
	.long	0x1e1b
	.string	"htab"
	.byte	0x2c
	.byte	0xb
	.byte	0x3e
	.uleb128 0x7
	.string	"hash_f"
	.byte	0xa
	.byte	0x5b
	.long	0x1e32
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"eq_f"
	.byte	0xa
	.byte	0x5e
	.long	0x1e59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"del_f"
	.byte	0xa
	.byte	0x61
	.long	0x1e68
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"entries"
	.byte	0xa
	.byte	0x64
	.long	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"size"
	.byte	0xa
	.byte	0x67
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"n_elements"
	.byte	0xa
	.byte	0x6a
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"n_deleted"
	.byte	0xa
	.byte	0x6d
	.long	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"searches"
	.byte	0xa
	.byte	0x71
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"collisions"
	.byte	0xa
	.byte	0x75
	.long	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"alloc_f"
	.byte	0xa
	.byte	0x78
	.long	0x1e78
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"free_f"
	.byte	0xa
	.byte	0x79
	.long	0x1ea5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1d48
	.uleb128 0x2
	.string	"hashval_t"
	.byte	0xa
	.byte	0x32
	.long	0x21a
	.uleb128 0x2
	.string	"htab_hash"
	.byte	0xa
	.byte	0x37
	.long	0x1e43
	.uleb128 0x3
	.byte	0x4
	.long	0x1e49
	.uleb128 0x11
	.long	0x1e59
	.byte	0x1
	.long	0x1e21
	.uleb128 0xe
	.long	0x32b
	.byte	0x0
	.uleb128 0x2
	.string	"htab_eq"
	.byte	0xa
	.byte	0x3e
	.long	0x310
	.uleb128 0x2
	.string	"htab_del"
	.byte	0xa
	.byte	0x42
	.long	0x2de
	.uleb128 0x2
	.string	"htab_alloc"
	.byte	0xa
	.byte	0x4e
	.long	0x1e8a
	.uleb128 0x3
	.byte	0x4
	.long	0x1e90
	.uleb128 0x11
	.long	0x1ea5
	.byte	0x1
	.long	0x2c5
	.uleb128 0xe
	.long	0x228
	.uleb128 0xe
	.long	0x228
	.byte	0x0
	.uleb128 0x2
	.string	"htab_free"
	.byte	0xa
	.byte	0x51
	.long	0x2de
	.uleb128 0x2
	.string	"htab_t"
	.byte	0xa
	.byte	0x7c
	.long	0x1e1b
	.uleb128 0x19
	.long	0x1efa
	.string	"cselib_val_u"
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.uleb128 0x1a
	.string	"val_rtx"
	.byte	0x3
	.byte	0x1e
	.long	0x9b
	.uleb128 0x1a
	.string	"next_free"
	.byte	0x3
	.byte	0x20
	.long	0x1081
	.byte	0x0
	.uleb128 0x4
	.long	0x1f58
	.string	"elt_loc_list"
	.byte	0x10
	.byte	0x3
	.byte	0x25
	.uleb128 0x1b
	.long	.LASF6
	.byte	0x3
	.byte	0x2f
	.long	0x1f58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"loc"
	.byte	0x3
	.byte	0x31
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"setting_insn"
	.byte	0x3
	.byte	0x33
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"in_libcall"
	.byte	0x3
	.byte	0x35
	.long	0x1ced
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1efa
	.uleb128 0x2
	.string	"cselib_val"
	.byte	0x3
	.byte	0x29
	.long	0x1027
	.uleb128 0x3
	.byte	0x4
	.long	0x1f5e
	.uleb128 0x1e
	.long	0x1fc5
	.string	"new_elt_list"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x17c6
	.long	.LFB15
	.long	.LFE15
	.long	.LLST0
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x1
	.byte	0x88
	.long	0x17c6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"elt"
	.byte	0x1
	.byte	0x89
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"el"
	.byte	0x1
	.byte	0x8b
	.long	0x17c6
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x2018
	.string	"new_elt_loc_list"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	0x1f58
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.uleb128 0x1f
	.long	.LASF6
	.byte	0x1
	.byte	0x9b
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"loc"
	.byte	0x1
	.byte	0x9c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"el"
	.byte	0x1
	.byte	0x9e
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x22
	.long	0x205b
	.string	"unchain_one_elt_list"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.uleb128 0x20
	.string	"pl"
	.byte	0x1
	.byte	0xb0
	.long	0x205b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.byte	0xb2
	.long	0x17c6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x17c6
	.uleb128 0x22
	.long	0x20a8
	.string	"unchain_one_elt_loc_list"
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.uleb128 0x20
	.string	"pl"
	.byte	0x1
	.byte	0xbd
	.long	0x20a8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.byte	0xbf
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x1f58
	.uleb128 0x22
	.long	0x20e1
	.string	"unchain_one_value"
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST4
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.byte	0xcb
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.long	0x2122
	.string	"clear_table"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST5
	.uleb128 0x20
	.string	"clear_all"
	.byte	0x1
	.byte	0xda
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xdc
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x1e
	.long	0x21b3
	.string	"entry_and_rtx_equal_p"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.long	0x213
	.long	.LFB21
	.long	.LFE21
	.long	.LLST6
	.uleb128 0x20
	.string	"entry"
	.byte	0x1
	.byte	0xf7
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"x_arg"
	.byte	0x1
	.byte	0xf7
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.byte	0xf9
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"v"
	.byte	0x1
	.byte	0xfa
	.long	0x21b3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0xfb
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF1
	.byte	0x1
	.byte	0xfc
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.long	.LASF8
	.long	0x2fa4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11433
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.long	0x21b9
	.uleb128 0x9
	.long	0x1f5e
	.uleb128 0x25
	.long	0x2205
	.string	"get_value_hash"
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x1e21
	.long	.LFB22
	.long	.LFE22
	.long	.LLST7
	.uleb128 0x26
	.string	"entry"
	.byte	0x1
	.value	0x119
	.long	0x32b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"v"
	.byte	0x1
	.value	0x11b
	.long	0x21b3
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x28
	.long	0x2290
	.byte	0x1
	.string	"references_value_p"
	.byte	0x1
	.value	0x128
	.byte	0x1
	.long	0x213
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x126
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"only_useless"
	.byte	0x1
	.value	0x127
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x129
	.long	0x62a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x12a
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x12b
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x12b
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x2305
	.string	"discard_useless_locs"
	.byte	0x1
	.value	0x146
	.byte	0x1
	.long	0x213
	.long	.LFB24
	.long	.LFE24
	.long	.LLST9
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x144
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"info"
	.byte	0x1
	.value	0x145
	.long	0x2c5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"v"
	.byte	0x1
	.value	0x147
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x148
	.long	0x20a8
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.value	0x149
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x2360
	.string	"discard_useless_values"
	.byte	0x1
	.value	0x161
	.byte	0x1
	.long	0x213
	.long	.LFB25
	.long	.LFE25
	.long	.LLST10
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x15f
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"info"
	.byte	0x1
	.value	0x160
	.long	0x2c5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"v"
	.byte	0x1
	.value	0x162
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x2a
	.long	0x239c
	.string	"remove_useless_values"
	.byte	0x1
	.value	0x173
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST11
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11573
	.byte	0x0
	.uleb128 0x28
	.long	0x24f3
	.byte	0x1
	.string	"rtx_equal_for_cselib_p"
	.byte	0x1
	.value	0x18a
	.byte	0x1
	.long	0x213
	.long	.LFB27
	.long	.LFE27
	.long	.LLST12
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x189
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.value	0x189
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x18b
	.long	0x62a
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x18c
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x18d
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	0x242e
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x191
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0x2b
	.long	0x2449
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x199
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x2b
	.long	0x2488
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x1a7
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x1a8
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x1ac
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x24c7
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x1ba
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x1bb
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x1bf
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.long	0x24e2
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x1d6
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11620
	.byte	0x0
	.uleb128 0x25
	.long	0x2547
	.string	"wrap_constant"
	.byte	0x1
	.value	0x216
	.byte	0x1
	.long	0x9b
	.long	.LFB28
	.long	.LFE28
	.long	.LLST13
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x214
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x215
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f85
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11752
	.byte	0x0
	.uleb128 0x25
	.long	0x268c
	.string	"hash_rtx"
	.byte	0x1
	.value	0x22d
	.byte	0x1
	.long	0x21a
	.long	.LFB29
	.long	.LFE29
	.long	.LLST14
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x22a
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x22b
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x22c
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x22e
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x22f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x22f
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x230
	.long	0x62a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x231
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"hash"
	.byte	0x1
	.value	0x232
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	0x2617
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x27
	.string	"units"
	.byte	0x1
	.value	0x252
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"elt"
	.byte	0x1
	.value	0x253
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	0x2643
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.string	"tem"
	.byte	0x1
	.value	0x287
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF11
	.byte	0x1
	.value	0x288
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0x2b
	.long	0x2660
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x29
	.long	.LASF11
	.byte	0x1
	.value	0x292
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2b
	.long	0x267b
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x29b
	.long	0x2cd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f70
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11812
	.byte	0x0
	.uleb128 0x25
	.long	0x26f2
	.string	"new_cselib_val"
	.byte	0x1
	.value	0x2b3
	.byte	0x1
	.long	0x1f70
	.long	.LFB30
	.long	.LFE30
	.long	.LLST15
	.uleb128 0x26
	.string	"value"
	.byte	0x1
	.value	0x2b1
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x2b2
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x2b4
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f5b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.11959
	.byte	0x0
	.uleb128 0x2a
	.long	0x275a
	.string	"add_mem_for_addr"
	.byte	0x1
	.value	0x2ce
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST16
	.uleb128 0x26
	.string	"addr_elt"
	.byte	0x1
	.value	0x2cc
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"mem_elt"
	.byte	0x1
	.value	0x2cc
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x2cd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x2cf
	.long	0x1f58
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x27f1
	.string	"cselib_lookup_mem"
	.byte	0x1
	.value	0x2e4
	.byte	0x1
	.long	0x1f70
	.long	.LFB32
	.long	.LFE32
	.long	.LLST17
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x2e2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x2e3
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.value	0x2e5
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"slot"
	.byte	0x1
	.value	0x2e6
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"addr"
	.byte	0x1
	.value	0x2e7
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"mem_elt"
	.byte	0x1
	.value	0x2e8
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x2e9
	.long	0x17c6
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x28
	.long	0x28ef
	.byte	0x1
	.string	"cselib_subst_to_values"
	.byte	0x1
	.value	0x30d
	.byte	0x1
	.long	0x9b
	.long	.LFB33
	.long	.LFE33
	.long	.LLST18
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x30c
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x30e
	.long	0x62a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x30f
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x310
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x311
	.long	0x17c6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"copy"
	.byte	0x1
	.value	0x312
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x313
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	0x289f
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x33e
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	0x28de
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x347
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x347
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x34b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f46
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12059
	.byte	0x0
	.uleb128 0x28
	.long	0x29ae
	.byte	0x1
	.string	"cselib_lookup"
	.byte	0x1
	.value	0x369
	.byte	0x1
	.long	0x1f70
	.long	.LFB34
	.long	.LFE34
	.long	.LLST19
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.value	0x366
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x367
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF10
	.byte	0x1
	.value	0x368
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"slot"
	.byte	0x1
	.value	0x36a
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x36b
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"hashval"
	.byte	0x1
	.value	0x36c
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LBB16
	.long	.LBE16
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x376
	.long	0x17c6
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x377
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x382
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2a98
	.string	"cselib_invalidate_regno"
	.byte	0x1
	.value	0x3b7
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST20
	.uleb128 0x26
	.string	"regno"
	.byte	0x1
	.value	0x3b5
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x3b6
	.long	0x332
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"endregno"
	.byte	0x1
	.value	0x3b8
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x3b9
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	0x2a87
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.value	0x3d8
	.long	0x205b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x27
	.string	"v"
	.byte	0x1
	.value	0x3de
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x3df
	.long	0x20a8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"this_last"
	.byte	0x1
	.value	0x3e0
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x3f2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LASF8
	.long	0x2f31
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__FUNCTION__.12284
	.byte	0x0
	.uleb128 0x25
	.long	0x2b23
	.string	"cselib_mem_conflict_p"
	.byte	0x1
	.value	0x407
	.byte	0x1
	.long	0x213
	.long	.LFB36
	.long	.LFE36
	.long	.LLST21
	.uleb128 0x26
	.string	"mem_base"
	.byte	0x1
	.value	0x405
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x406
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF0
	.byte	0x1
	.value	0x408
	.long	0x62a
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"fmt"
	.byte	0x1
	.value	0x409
	.long	0x200
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x40a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x40a
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x25
	.long	0x2bed
	.string	"cselib_invalidate_mem_1"
	.byte	0x1
	.value	0x441
	.byte	0x1
	.long	0x213
	.long	.LFB37
	.long	.LFE37
	.long	.LLST22
	.uleb128 0x26
	.string	"slot"
	.byte	0x1
	.value	0x43f
	.long	0x2d8
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"info"
	.byte	0x1
	.value	0x440
	.long	0x2c5
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"v"
	.byte	0x1
	.value	0x442
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"mem_rtx"
	.byte	0x1
	.value	0x443
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x444
	.long	0x20a8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF9
	.byte	0x1
	.value	0x445
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x449
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"addr"
	.byte	0x1
	.value	0x44a
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"mem_chain"
	.byte	0x1
	.value	0x44b
	.long	0x205b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2c2c
	.string	"cselib_invalidate_mem"
	.byte	0x1
	.value	0x476
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST23
	.uleb128 0x26
	.string	"mem_rtx"
	.byte	0x1
	.value	0x475
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x2a
	.long	0x2c89
	.string	"cselib_invalidate_rtx"
	.byte	0x1
	.value	0x483
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST24
	.uleb128 0x2d
	.long	.LASF7
	.byte	0x1
	.value	0x480
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"ignore"
	.byte	0x1
	.value	0x481
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"data"
	.byte	0x1
	.value	0x482
	.long	0x2c5
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x2a
	.long	0x2d09
	.string	"cselib_record_set"
	.byte	0x1
	.value	0x49d
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST25
	.uleb128 0x2d
	.long	.LASF7
	.byte	0x1
	.value	0x49b
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"src_elt"
	.byte	0x1
	.value	0x49c
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF12
	.byte	0x1
	.value	0x49c
	.long	0x1f70
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.string	"dreg"
	.byte	0x1
	.value	0x49e
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.value	0x4aa
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.long	0x2d57
	.string	"set"
	.byte	0x10
	.byte	0x1
	.value	0x4bf
	.uleb128 0x1c
	.string	"src"
	.byte	0x1
	.value	0x4c0
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1d
	.long	.LASF7
	.byte	0x1
	.value	0x4c1
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.string	"src_elt"
	.byte	0x1
	.value	0x4c2
	.long	0x1f70
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1d
	.long	.LASF12
	.byte	0x1
	.value	0x4c3
	.long	0x1f70
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2a
	.long	0x2e4a
	.string	"cselib_record_sets"
	.byte	0x1
	.value	0x4ce
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST26
	.uleb128 0x26
	.string	"insn"
	.byte	0x1
	.value	0x4cd
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"n_sets"
	.byte	0x1
	.value	0x4cf
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x4d0
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"sets"
	.byte	0x1
	.value	0x4d1
	.long	0x2e4a
	.byte	0x3
	.byte	0x91
	.sleb128 -5680
	.uleb128 0x27
	.string	"body"
	.byte	0x1
	.value	0x4d2
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"cond"
	.byte	0x1
	.value	0x4d3
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	0x2dfa
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x4e9
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2b
	.long	0x2e30
	.long	.LBB24
	.long	.LBE24
	.uleb128 0x29
	.long	.LASF7
	.byte	0x1
	.value	0x4f8
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x502
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.long	.LBB26
	.long	.LBE26
	.uleb128 0x29
	.long	.LASF7
	.byte	0x1
	.value	0x515
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.long	0x2e5b
	.long	0x2d09
	.uleb128 0x2f
	.long	0x221
	.value	0x15f
	.byte	0x0
	.uleb128 0x30
	.long	0x2eb0
	.byte	0x1
	.string	"cselib_process_insn"
	.byte	0x1
	.value	0x520
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST27
	.uleb128 0x26
	.string	"insn"
	.byte	0x1
	.value	0x51f
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x521
	.long	0x213
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x522
	.long	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x30
	.long	0x2ef3
	.byte	0x1
	.string	"cselib_update_varray_sizes"
	.byte	0x1
	.value	0x566
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST28
	.uleb128 0x27
	.string	"nregs"
	.byte	0x1
	.value	0x567
	.long	0x21a
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.string	"cselib_init"
	.byte	0x1
	.value	0x576
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.long	.LLST29
	.uleb128 0x31
	.byte	0x1
	.string	"cselib_finish"
	.byte	0x1
	.value	0x592
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.long	.LLST30
	.uleb128 0x9
	.long	0x300
	.uleb128 0xf
	.long	0x2f46
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0x16
	.byte	0x0
	.uleb128 0x9
	.long	0x2f36
	.uleb128 0xf
	.long	0x2f5b
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0xe
	.byte	0x0
	.uleb128 0x9
	.long	0x2f4b
	.uleb128 0xf
	.long	0x2f70
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0x8
	.byte	0x0
	.uleb128 0x9
	.long	0x2f60
	.uleb128 0xf
	.long	0x2f85
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0xd
	.byte	0x0
	.uleb128 0x9
	.long	0x2f75
	.uleb128 0x9
	.long	0x2f36
	.uleb128 0xf
	.long	0x2f9f
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0x15
	.byte	0x0
	.uleb128 0x9
	.long	0x2f8f
	.uleb128 0x9
	.long	0x2f8f
	.uleb128 0x21
	.string	"hash_table"
	.byte	0x1
	.byte	0x51
	.long	0x1eb6
	.byte	0x5
	.byte	0x3
	.long	hash_table
	.uleb128 0x21
	.string	"cselib_current_insn"
	.byte	0x1
	.byte	0x55
	.long	0x9b
	.byte	0x5
	.byte	0x3
	.long	cselib_current_insn
	.uleb128 0x21
	.string	"cselib_current_insn_in_libcall"
	.byte	0x1
	.byte	0x56
	.long	0x1ced
	.byte	0x5
	.byte	0x3
	.long	cselib_current_insn_in_libcall
	.uleb128 0x21
	.string	"next_unknown_value"
	.byte	0x1
	.byte	0x59
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	next_unknown_value
	.uleb128 0x21
	.string	"cselib_nregs"
	.byte	0x1
	.byte	0x5c
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	cselib_nregs
	.uleb128 0x21
	.string	"n_useless_values"
	.byte	0x1
	.byte	0x60
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	n_useless_values
	.uleb128 0x21
	.string	"reg_values"
	.byte	0x1
	.byte	0x68
	.long	0x1854
	.byte	0x5
	.byte	0x3
	.long	reg_values
	.uleb128 0x21
	.string	"reg_values_old"
	.byte	0x1
	.byte	0x69
	.long	0x1854
	.byte	0x5
	.byte	0x3
	.long	reg_values_old
	.uleb128 0x21
	.string	"max_value_regs"
	.byte	0x1
	.byte	0x6e
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	max_value_regs
	.uleb128 0x21
	.string	"used_regs"
	.byte	0x1
	.byte	0x72
	.long	0x1854
	.byte	0x5
	.byte	0x3
	.long	used_regs
	.uleb128 0x21
	.string	"used_regs_old"
	.byte	0x1
	.byte	0x73
	.long	0x1854
	.byte	0x5
	.byte	0x3
	.long	used_regs_old
	.uleb128 0x21
	.string	"callmem"
	.byte	0x1
	.byte	0x77
	.long	0x9b
	.byte	0x5
	.byte	0x3
	.long	callmem
	.uleb128 0x21
	.string	"empty_vals"
	.byte	0x1
	.byte	0x7a
	.long	0x1f70
	.byte	0x5
	.byte	0x3
	.long	empty_vals
	.uleb128 0x21
	.string	"empty_elt_lists"
	.byte	0x1
	.byte	0x7b
	.long	0x17c6
	.byte	0x5
	.byte	0x3
	.long	empty_elt_lists
	.uleb128 0x21
	.string	"empty_elt_loc_lists"
	.byte	0x1
	.byte	0x7c
	.long	0x1f58
	.byte	0x5
	.byte	0x3
	.long	empty_elt_loc_lists
	.uleb128 0x21
	.string	"values_became_useless"
	.byte	0x1
	.byte	0x80
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	values_became_useless
	.uleb128 0xf
	.long	0x3186
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0xaf
	.byte	0x0
	.uleb128 0x32
	.string	"call_used_regs"
	.byte	0xe
	.value	0x196
	.long	0x3176
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"target_flags"
	.byte	0xf
	.byte	0x21
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x31c5
	.long	0x57b
	.uleb128 0x10
	.long	0x221
	.byte	0x35
	.byte	0x0
	.uleb128 0x34
	.long	.LASF3
	.byte	0x6
	.byte	0x34
	.long	0x31d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x31b5
	.uleb128 0xf
	.long	0x31e7
	.long	0x236
	.uleb128 0x10
	.long	0x221
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_length"
	.byte	0x4
	.byte	0x36
	.long	0x31fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x31d7
	.uleb128 0xf
	.long	0x3210
	.long	0x200
	.uleb128 0x10
	.long	0x221
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_format"
	.byte	0x4
	.byte	0x3c
	.long	0x3224
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3200
	.uleb128 0xf
	.long	0x3239
	.long	0x20b
	.uleb128 0x10
	.long	0x221
	.byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.string	"rtx_class"
	.byte	0x4
	.byte	0x3f
	.long	0x324c
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x3229
	.uleb128 0xf
	.long	0x3261
	.long	0x9b
	.uleb128 0x10
	.long	0x221
	.byte	0x80
	.byte	0x0
	.uleb128 0x32
	.string	"const_int_rtx"
	.byte	0x4
	.value	0x69e
	.long	0x3251
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x3289
	.long	0x9b
	.uleb128 0x10
	.long	0x221
	.byte	0xa
	.byte	0x0
	.uleb128 0x32
	.string	"global_rtl"
	.byte	0x4
	.value	0x6df
	.long	0x3279
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"reload_completed"
	.byte	0x4
	.value	0x75d
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"reg_renumber"
	.byte	0xd
	.byte	0x9a
	.long	0x32cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x4
	.long	0x281
	.uleb128 0xf
	.long	0x32e5
	.long	0x332
	.uleb128 0x10
	.long	0x221
	.byte	0xaf
	.byte	0x0
	.uleb128 0x33
	.string	"reg_raw_mode"
	.byte	0xd
	.byte	0xaa
	.long	0x32d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"flag_float_store"
	.byte	0x10
	.value	0x115
	.long	0x213
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.long	0x3326
	.long	0x1cf6
	.uleb128 0x10
	.long	0x221
	.byte	0x4
	.byte	0x0
	.uleb128 0x35
	.string	"gt_ggc_r_gt_cselib_h"
	.byte	0x11
	.byte	0x19
	.long	0x3349
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_r_gt_cselib_h
	.uleb128 0x9
	.long	0x3316
	.uleb128 0xf
	.long	0x335e
	.long	0x1cf6
	.uleb128 0x10
	.long	0x221
	.byte	0x5
	.byte	0x0
	.uleb128 0x35
	.string	"gt_ggc_rd_gt_cselib_h"
	.byte	0x11
	.byte	0x38
	.long	0x3382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	gt_ggc_rd_gt_cselib_h
	.uleb128 0x9
	.long	0x334e
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
	.uleb128 0x17
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.long	0xf9
	.value	0x2
	.long	.Ldebug_info0
	.long	0x3388
	.long	0x2205
	.string	"references_value_p"
	.long	0x239c
	.string	"rtx_equal_for_cselib_p"
	.long	0x27f1
	.string	"cselib_subst_to_values"
	.long	0x28ef
	.string	"cselib_lookup"
	.long	0x2e5b
	.string	"cselib_process_insn"
	.long	0x2eb0
	.string	"cselib_update_varray_sizes"
	.long	0x2ef3
	.string	"cselib_init"
	.long	0x2f11
	.string	"cselib_finish"
	.long	0x3326
	.string	"gt_ggc_r_gt_cselib_h"
	.long	0x335e
	.string	"gt_ggc_rd_gt_cselib_h"
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
.LASF10:
	.string	"create"
.LASF9:
	.string	"had_locs"
.LASF6:
	.string	"next"
.LASF1:
	.string	"mode"
.LASF5:
	.string	"basic_block"
.LASF12:
	.string	"dest_addr_elt"
.LASF4:
	.string	"mem_attrs"
.LASF0:
	.string	"code"
.LASF11:
	.string	"tem_hash"
.LASF8:
	.string	"__FUNCTION__"
.LASF7:
	.string	"dest"
.LASF3:
	.string	"mode_class"
.LASF2:
	.string	"unsigned int"
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
