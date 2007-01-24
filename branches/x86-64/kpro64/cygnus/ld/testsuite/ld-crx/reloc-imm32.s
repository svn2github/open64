/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test immediate relocation R_CRX_IMM32

	.section	.text_32,"ax","progbits"
	.global _start
_start:
	addd $foo32, r6

