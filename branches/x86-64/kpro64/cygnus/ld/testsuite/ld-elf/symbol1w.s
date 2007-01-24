/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

	.section .gnu.warning.symbol1
	.asciz "witty one-liner"
	.text
	.type symbol1,"function"
	.global symbol1
symbol1:
.L1:
	.long 0
.L0:
	.size symbol1,.L0-.L1
