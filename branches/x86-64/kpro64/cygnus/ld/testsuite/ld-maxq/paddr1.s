/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

.text
main:

	move A[0], #12h
	nop	
	nop
.data

lb: .long 0x23
plc: .long lb
