/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

.global foo
.text
	.align 4
label1:
	.literal .Lunused, 0xffffffff
	entry a5,16
.begin longcalls
	call4  foo
.end longcalls
	nop
