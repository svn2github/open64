/*
 * Copyright 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

 .text
 .global f
 .type f,@function
f:
 move.d [$r0+dsofn:GOT],$r1
 move.d dsofn,$r2
0:
 .size f,0b-f
