/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# Test the R_ARM_TARGET1 relocation
	.text
	.global _start
_start:
	.word foo(target1)
foo:
