/*
   Copyright (C) 2009 Advanced Micro Devices, Inc.  All Rights Reserved.

   The Open64 Runtime Library is free software; you can redistribute it
   and/or modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The Open64 Runtime Library is distributed in the hope that it will be
   useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the Open64 Runtime Library; if not, write to the
   Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
   02111-1307 USA.
*/

        .text

################################################################################

/*
 # __fastcopy_stride64_gh(int *dst, int *src, long cnt, int exact)
 #
 # This code encapsulates iterations of 2 and greater including remainder
 # drain code in the loop epilog.  The cleanup code is only executed with
 # exact is false.
*/

################################################################################

        .align 16
.globl __fastcopy_stride64_gh
__fastcopy_stride64_gh:
	subq	 $32, %rsp
	movups %xmm0, (%rsp)
	movups %xmm1, 16(%rsp)

        .align 4
.loop_64_gh:
        movdqu        (%rsi), %xmm0
        movdqu     16 (%rsi), %xmm1
        movdqu     %xmm0,    (%rdi)
        movdqu     %xmm1, 16 (%rdi)
        movdqu     32 (%rsi), %xmm0
        movdqu     48 (%rsi), %xmm1
        movdqu     %xmm0, 32 (%rdi)
        movdqu     %xmm1, 48 (%rdi)
        lea     64 (%rsi), %rsi
        lea     64 (%rdi), %rdi
        dec     %rdx
        jnz     .loop_64_gh

        cmp     $0, %rcx
        jnz	.no_rem_gh

        movdqu        (%rsi), %xmm0
        movdqu     16 (%rsi), %xmm1
        movdqu     %xmm0,    (%rdi)
        movdqu     %xmm1, 16 (%rdi)

.no_rem_gh:
	movups	(%rsp), %xmm0
	movups	16(%rsp), %xmm1
	addq	$32, %rsp
        ret
        .type __fastcopy_stride64_gh,@function
        .size __fastcopy_stride64_gh,.-__fastcopy_stride64_gh

################################################################################

/*
 # __fastcopy_stride64_gp(int *dst, int *src, long cnt, int exact)
 #
 # This code encapsulates iterations of 2 and greater including remainder
 # drain code in the loop epilog.  The cleanup code is only executed with
 # exact is false.
*/

        .align 16
.globl __fastcopy_stride64_gp
__fastcopy_stride64_gp:

        .align 4
.loop_copy64_gp:
        mov        (%rsi), %rax
        mov      8 (%rsi), %r11
        mov     16 (%rsi), %r9
        mov     24 (%rsi), %r10
        mov     %rax,    (%rdi)
        mov     %r11,  8 (%rdi)
        mov     %r9,  16 (%rdi)
        mov     %r10, 24 (%rdi)
        mov     32 (%rsi), %rax
        mov     40 (%rsi), %r11
        mov     48 (%rsi), %r9
        mov     56 (%rsi), %r10
        mov     %rax, 32 (%rdi)
        mov     %r11, 40 (%rdi)
        mov     %r9,  48 (%rdi)
        mov     %r10, 56 (%rdi)
        lea     64 (%rsi), %rsi
        lea     64 (%rdi), %rdi
        dec     %rdx
        jnz     .loop_copy64_gp

        cmp     $0, %rcx
        jnz	.no_rem_gp

        mov        (%rsi), %rax
        mov      8 (%rsi), %r11
        mov     16 (%rsi), %r9
        mov     24 (%rsi), %r10
        mov     %rax,    (%rdi)
        mov     %r11,  8 (%rdi)
        mov     %r9,  16 (%rdi)
        mov     %r10, 24 (%rdi)

.no_rem_gp:
        ret
        .type __fastcopy_stride64_gp,@function
        .size __fastcopy_stride64_gp,.-__fastcopy_stride64_gp

################################################################################
