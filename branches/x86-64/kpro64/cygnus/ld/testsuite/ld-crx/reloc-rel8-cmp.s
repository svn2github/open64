/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test pc relative relocation R_CRX_REL8_CMP

	.section	.text_8,"ax","progbits"
	.global _start
	.global foo8
_start:
	cmpbeqb r1, r2, foo8
foo8:
