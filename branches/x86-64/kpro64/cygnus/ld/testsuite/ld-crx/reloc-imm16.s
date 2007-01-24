/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test immediate relocation R_CRX_IMM16

	.section	.text_16,"ax","progbits"
	.global _start
_start:
	addw $foo16 , ra

