/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test register relative relocation R_CRX_REGREL32

	.section	.text_32,"ax","progbits"
	.global _start
_start:
	loadb foo32(r5), r7
