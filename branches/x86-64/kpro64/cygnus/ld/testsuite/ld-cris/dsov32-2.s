/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

	.text
	.global	dsofn4
	.type	dsofn4,@function
dsofn4:
	lapc	_GLOBAL_OFFSET_TABLE_,$r0
	addo.w	expobj:GOT16,$r0,$acr
	bsr	dsofn4:PLT
	nop
.Lfe1:
	.size	dsofn4,.Lfe1-dsofn4
