/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# This file gets linked to start at 0xffffff0, so the call is an overflow.
	.text
	.global start
	.set	noreorder
start:
	nop
	nop
	nop
	nop
	jal	start
	nop
	.type start, @function
