	.file	"tag_attr.c"
	.section	.rodata
.LC0:
	.string	"0x00"
.LC1:
	.string	"0x01 DW_TAG_array_type"
.LC2:
	.string	"0x02 DW_TAG_class_type"
.LC3:
	.string	"0x03 DW_TAG_entry_point"
.LC4:
	.string	"0x04 DW_TAG_enumeration_type"
.LC5:
	.string	"0x05 DW_TAG_formal_parameter"
.LC6:
	.string	"0x06"
.LC7:
	.string	"0x07"
	.align 4
.LC8:
	.string	"0x08 DW_TAG_imported_declaration"
.LC9:
	.string	"0x09"
.LC10:
	.string	"0x0a DW_TAG_label"
.LC11:
	.string	"0x0b DW_TAG_lexical_block"
.LC12:
	.string	"0x0c"
.LC13:
	.string	"0x0d DW_TAG_member"
.LC14:
	.string	"0x0e"
.LC15:
	.string	"0x0f DW_TAG_pointer_type"
.LC16:
	.string	"0x10 DW_TAG_reference_type"
.LC17:
	.string	"0x11 DW_TAG_compile_unit"
.LC18:
	.string	"0x12 DW_TAG_string_type"
.LC19:
	.string	"0x13 DW_TAG_structure_type"
.LC20:
	.string	"0x14"
.LC21:
	.string	"0x15 DW_TAG_subroutine_type"
.LC22:
	.string	"0x16 DW_TAG_typedef"
.LC23:
	.string	"0x17 DW_TAG_union_type"
	.align 4
.LC24:
	.string	"0x18 DW_TAG_unspecified_parameters"
.LC25:
	.string	"0x19 DW_TAG_variant"
.LC26:
	.string	"0x1a DW_TAG_common_block"
.LC27:
	.string	"0x1b DW_TAG_common_inclusion"
.LC28:
	.string	"0x1c DW_TAG_inheritance"
	.align 4
.LC29:
	.string	"0x1d DW_TAG_inlined_subroutine"
.LC30:
	.string	"0x1e DW_TAG_module"
	.align 4
.LC31:
	.string	"0x1f DW_TAG_ptr_to_member_type"
.LC32:
	.string	"0x20 DW_TAG_set_type"
.LC33:
	.string	"0x21 DW_TAG_subrange_type"
.LC34:
	.string	"0x22 DW_TAG_with_stmt"
	.align 4
.LC35:
	.string	"0x23 DW_TAG_access_declaration"
.LC36:
	.string	"0x24 DW_TAG_base_type"
.LC37:
	.string	"0x25 DW_TAG_catch_block"
.LC38:
	.string	"0x26 DW_TAG_const_type"
.LC39:
	.string	"0x27 DW_TAG_constant"
.LC40:
	.string	"0x28 DW_TAG_enumerator"
.LC41:
	.string	"0x29 DW_TAG_file_type"
.LC42:
	.string	"0x2a DW_TAG_friend"
.LC43:
	.string	"0x2b DW_TAG_namelist"
.LC44:
	.string	"0x2c DW_TAG_namelist_item"
.LC45:
	.string	"0x2d DW_TAG_packed_type"
.LC46:
	.string	"0x2e DW_TAG_subprogram"
	.align 4
.LC47:
	.string	"0x2f DW_TAG_template_type_parameter"
	.align 4
.LC48:
	.string	"0x30 DW_TAG_template_value_parameter"
.LC49:
	.string	"0x31 DW_TAG_thrown_type"
.LC50:
	.string	"0x32 DW_TAG_try_block"
.LC51:
	.string	"0x33 DW_TAG_variant_part"
.LC52:
	.string	"0x34 DW_TAG_variable"
.LC53:
	.string	"0x35 DW_TAG_volatile_type"
	.data
	.align 32
	.type	tag_name, @object
	.size	tag_name, 216
tag_name:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.section	.rodata
.LC54:
	.string	"%x\n"
	.align 4
.LC55:
	.string	"static unsigned int tag_attr_combination_table [ ][3] = {"
.LC56:
	.string	"/* %-37s*/\n"
.LC57:
	.string	"    { %#.8x, %#.8x, %#.8x},\n"
.LC58:
	.string	"};"
	.text
.globl main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$60, %esp
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC54, (%esp)
	call	scanf
	jmp	.L2
.L3:
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC54, (%esp)
	call	scanf
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC54, (%esp)
	call	scanf
	jmp	.L4
.L5:
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%edx, %eax
	sarl	$5, %eax
	movl	%eax, -20(%ebp)
	movl	-28(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	movl	%eax, %ecx
	shrl	$27, %ecx
	leal	(%edx,%ecx), %eax
	andl	$31, %eax
	subl	%ecx, %eax
	movl	%eax, -16(%ebp)
	movl	-32(%ebp), %ebx
	movl	-20(%ebp), %esi
	movl	-32(%ebp), %edx
	movl	-20(%ebp), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	tag_attr_combination_table(,%eax,4), %edx
	movl	-16(%ebp), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	orl	%eax, %edx
	movl	%ebx, %eax
	addl	%eax, %eax
	addl	%ebx, %eax
	addl	%esi, %eax
	movl	%edx, tag_attr_combination_table(,%eax,4)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC54, (%esp)
	call	scanf
.L4:
	movl	-28(%ebp), %eax
	cmpl	$-1, %eax
	jne	.L5
.L2:
	movl	stdin, %eax
	movl	%eax, (%esp)
	call	feof
	testl	%eax, %eax
	je	.L3
	movl	$.LC55, (%esp)
	call	puts
	movl	$0, -24(%ebp)
	jmp	.L7
.L8:
	movl	-24(%ebp), %eax
	movl	tag_name(,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$.LC56, (%esp)
	call	printf
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	tag_attr_combination_table+8(%eax), %ebx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	tag_attr_combination_table+4(%eax), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	tag_attr_combination_table(%eax), %eax
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$.LC57, (%esp)
	call	printf
	addl	$1, -24(%ebp)
.L7:
	cmpl	$53, -24(%ebp)
	jle	.L8
	movl	$.LC58, (%esp)
	call	puts
	movl	$0, %eax
	addl	$60, %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.local	tag_attr_combination_table
	.comm	tag_attr_combination_table,648,32
	.ident	"GCC: (GNU) 4.1.2 (Ubuntu 4.1.2-0ubuntu4)"
	.section	.note.GNU-stack,"",@progbits
