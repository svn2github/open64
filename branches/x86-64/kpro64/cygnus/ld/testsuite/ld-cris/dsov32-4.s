/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

	.text
	.global	dsofn5
	.type	dsofn5,@function
dsofn5:
	bsr	localfn
	nop
.Lfe:
	.size	dsofn5,.Lfe-dsofn5

	.type	localfn,@function
localfn:
	nop
.Lfe1:
	.size	localfn,.Lfe1-localfn
