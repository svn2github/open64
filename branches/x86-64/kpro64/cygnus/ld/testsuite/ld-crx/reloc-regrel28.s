/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test register relative relocation R_CRX_REGREL28

	.section	.text_28,"ax","progbits"
	.global _start
_start:
	cbitd $31, foo28(r9)
