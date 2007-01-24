/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

	.h8300s
	.global _start
_start:
	mov.b	r2l,@0xFFFFFFBD:32
	rts
