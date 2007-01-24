/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

	.section .text,"axG",%progbits,foo_group,comdat
	.weak foo
foo:
	.word 0
