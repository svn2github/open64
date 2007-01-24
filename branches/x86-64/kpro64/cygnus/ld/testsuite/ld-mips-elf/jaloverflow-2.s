/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

# jal relocs against undefined weak symbols should not be treated as
# overflowing

	.globl	start
	.weak	foo
start:
	jal	foo
