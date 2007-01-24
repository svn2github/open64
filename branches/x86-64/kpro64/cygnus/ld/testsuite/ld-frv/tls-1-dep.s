/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

        .section        .tbss,"awT",@nobits
        .align 4
	.globl x
        .type   x, @tls_object
        .size   x, 4
x:
        .zero   4
