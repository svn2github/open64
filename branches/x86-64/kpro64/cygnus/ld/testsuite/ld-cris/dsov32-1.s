/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

	.text
	.global	dsofn3
	.type	dsofn3,@function
dsofn3:
	bsr	dsofn:PLT
	nop
.Lfe1:
	.size	dsofn3,.Lfe1-dsofn3
