/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test pc relative relocation R_CRX_REL24

	.section	.text_24,"ax","progbits"
	.global _start
_start:
	cmpbeqb r1, r2, foo24
