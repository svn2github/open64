
#
#  (C) 2008-2009 Advanced Micro Devices, Inc. All Rights Reserved.
#
#  This file is part of libacml_mv.
#
#  libacml_mv is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2.1 of the License, or (at your option) any later version.
#
#  libacml_mv is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with libacml_mv.  If not, see
#  <http://www.gnu.org/licenses/>.
#
#


#
# An implementation of the cos function.
#
# Prototype:
#
#     double cos(double x);
#
#   Computes cos(x).
#   It will provide proper C99 return values,
#   but may not raise floating point status bits properly.
#   Based on the NAG C implementation.
#
#

#ifdef __ELF__
.section .note.GNU-stack,"",@progbits
#endif

.data
.align 32
.L__real_7fffffffffffffff: .quad 0x07fffffffffffffff  #Sign bit zero
                        .quad 0                       # for alignment
.L__real_3ff0000000000000: .quad 0x03ff0000000000000  # 1.0
                        .quad 0                    
.L__real_3fe0000000000000: .quad 0x03fe0000000000000  # 0.5
                        .quad 0
.L__real_3fc5555555555555: .quad 0x03fc5555555555555  # 0.166666666666
                        .quad 0
.L__real_3fe45f306dc9c883: .quad 0x03fe45f306dc9c883  # twobypi
                        .quad 0
.L__real_3ff921fb54400000: .quad 0x03ff921fb54400000  # piby2_1
                        .quad 0
.L__real_3dd0b4611a626331: .quad 0x03dd0b4611a626331  # piby2_1tail
                        .quad 0
.L__real_3dd0b4611a600000: .quad 0x03dd0b4611a600000  # piby2_2
                        .quad 0
.L__real_3ba3198a2e037073: .quad 0x03ba3198a2e037073  # piby2_2tail
                        .quad 0                   
.L__real_fffffffff8000000: .quad 0x0fffffffff8000000  # mask for stripping head and tail
                        .quad 0                    
.L__real_411E848000000000: .quad 0x415312d000000000   # 5e6 0x0411E848000000000  # 5e5
                        .quad 0
.L__real_bfe0000000000000: .quad 0x0bfe0000000000000  # - 0.5
                        .quad 0
                        
.align 32
.Lcosarray:
    .quad    0x3fa5555555555555                       # 0.0416667     c1
    .quad    0
    .quad    0xbf56c16c16c16967                       # -0.00138889   c2
    .quad    0
    .quad    0x3EFA01A019F4EC91                       # 2.48016e-005  c3
    .quad    0
    .quad    0xbE927E4FA17F667B                       # -2.75573e-007 c4
    .quad    0
    .quad    0x3E21EEB690382EEC                       # 2.08761e-009  c5
    .quad    0
    .quad    0xbDA907DB47258AA7                       # -1.13826e-011 c6
    .quad    0

.align 32
.Lsinarray:
    .quad    0xbfc5555555555555                       # -0.166667     s1
    .quad    0
    .quad    0x3f81111111110bb3                       # 0.00833333    s2
    .quad    0
    .quad    0xbf2a01a019e83e5c                       # -0.000198413  s3
    .quad    0
    .quad    0x3ec71de3796cde01                       # 2.75573e-006  s4
    .quad    0
    .quad    0xbe5ae600b42fdfa7                       # -2.50511e-008 s5
    .quad    0
    .quad    0x3de5e0b2f9a43bb8                       # 1.59181e-010  s6
    .quad    0

.text
.align 32
.p2align 5,,31

#include "fn_macros.h"
#define fname FN_PROTOTYPE(cos)
#define fname_special _cos_special@PLT
    
# define local variable storage offsets
.equ    p_temp,    0x30                               # temporary for get/put bits operation
.equ    p_temp1,   0x40                               # temporary for get/put bits operation
.equ    r,         0x50                               # pointer to r for amd_remainder_piby2
.equ    rr,        0x60                               # pointer to rr for amd_remainder_piby2
.equ    region,    0x70                               # pointer to region for amd_remainder_piby2
.equ   stack_size, 0x98

.globl fname
.type  fname,@function

fname:
   sub      $stack_size, %rsp
    xorpd   %xmm2, %xmm2                              # zeroed out for later use

# GET_BITS_DP64(x, ux);
# get the input value to an integer register.
    movsd   %xmm0,p_temp(%rsp)
    mov     p_temp(%rsp), %rdx                        # rdx is ux

##  if NaN or inf
    mov     $0x07ff0000000000000, %rax
    mov     %rax, %r10
    and     %rdx, %r10
    cmp     %rax, %r10
    jz      .Lcos_naninf

#  ax = (ux & ~SIGNBIT_DP64);
    mov     $0x07fffffffffffffff, %r10
    and     %rdx, %r10                                # r10 is ax
    mov     $1, %r8d                                  # for determining region later on


##  if (ax <= 0x3fe921fb54442d18) /* abs(x) <= pi/4 */
    mov     $0x03fe921fb54442d18, %rax
    cmp     %rax, %r10
    jg      .Lcos_reduce

##      if (ax < 0x3f20000000000000) /* abs(x) < 2.0^(-13) */
    mov     $0x03f20000000000000, %rax
    cmp     %rax, %r10
    jge     .Lcos_small

##          if (ax < 0x3e40000000000000) /* abs(x) < 2.0^(-27) */
    mov     $0x03e40000000000000, %rax
    cmp     %rax, %r10
    jge     .Lcos_smaller

#                  cos = 1.0;
    movsd   .L__real_3ff0000000000000(%rip), %xmm0    # return a 1
    jmp     .Lcos_cleanup     

##          else
.align 16
.Lcos_smaller:
#              cos = 1.0 - x*x*0.5;
    movsd   %xmm0, %xmm2
    mulsd   %xmm2, %xmm2                # x^2
    movsd   .L__real_3ff0000000000000(%rip), %xmm0    # 1.0
    mulsd   .L__real_3fe0000000000000(%rip), %xmm2    # 0.5 * x^2
    subsd   %xmm2, %xmm0
    jmp     .Lcos_cleanup  
           
##      else

.align 16
.Lcos_small:
#          cos = cos_piby4(x, 0.0);
    movsd   %xmm0, %xmm2
    mulsd   %xmm0, %xmm2                              # x2

#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
# region 0 or 2     - do a cos calculation
#  zc = (c2 + x2 * (c3 + x2 * (c4 + x2 * (c5 + x2 * c6))));

    movsd   .Lcosarray+0x10(%rip), %xmm1              # c2
    movsd   %xmm2, %xmm4                              # move for x4
    mulsd   %xmm2, %xmm4                              # x4
    movsd   .Lcosarray+0x30(%rip), %xmm3              # c4
    mulsd   %xmm2, %xmm1                              # c2x2
    movsd   .Lcosarray+0x50(%rip), %xmm5              # c6
    mulsd   %xmm2, %xmm3                              # c4x2
    movsd   %xmm4, %xmm0                              # move for x8
    mulsd   %xmm2, %xmm5                              # c6x2
    mulsd   %xmm4, %xmm0                              # x8
    addsd   .Lcosarray(%rip), %xmm1                   # c1 + c2x2
    mulsd   %xmm4, %xmm1                              # c1x4 + c2x6
    addsd   .Lcosarray+0x20(%rip), %xmm3              # c3 + c4x2
    mulsd   .L__real_bfe0000000000000(%rip), %xmm2    # -0.5x2, destroy xmm2
    addsd   .Lcosarray+0x40(%rip), %xmm5              # c5 + c6x2
    mulsd   %xmm0, %xmm3                              # c3x8 + c4x10    
    mulsd   %xmm0, %xmm4                              # x12    
    mulsd   %xmm5, %xmm4                              # c5x12 + c6x14

    movsd   .L__real_3ff0000000000000(%rip), %xmm0    # 1    
    addsd   %xmm3, %xmm1                              # c1x4 + c2x6 + c3x8 + c4x10
    movsd   %xmm2, %xmm3                              # preserve -0.5x2
    addsd   %xmm0, %xmm2                              # t = 1 - 0.5x2
    subsd   %xmm2, %xmm0                              # 1-t
    addsd   %xmm3, %xmm0                              # (1-t) - r
    addsd   %xmm4, %xmm1                              # c1x4 + c2x6 + c3x8 + c4x10 + c5x12 + c6x14
    addsd   %xmm1, %xmm0                              # (1-t) - r + c1x4 + c2x6 + c3x8 + c4x10 + c5x12 + c6x14
    addsd   %xmm2, %xmm0                              # 1 - 0.5x2 + above

    jmp     .Lcos_cleanup

#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.align 16
.Lcos_reduce:

#  xneg = (ax != ux);
    cmp     %r10, %rdx

##  if (xneg) x = -x;
    jz      .Lpositive
    subsd   %xmm0, %xmm2
    movsd   %xmm2, %xmm0

.Lpositive:
##  if (x < 5.0e5)
    cmp     .L__real_411E848000000000(%rip), %r10
    jae     .Lcos_reduce_precise

# reduce  the argument to be in a range from -pi/4 to +pi/4
# by subtracting multiples of pi/2
    movsd   %xmm0, %xmm2
    movsd   .L__real_3fe45f306dc9c883(%rip), %xmm3    # twobypi
    movsd   %xmm0, %xmm4
    movsd   .L__real_3fe0000000000000(%rip), %xmm5    # .5
    mulsd   %xmm3, %xmm2

#/* How many pi/2 is x a multiple of? */
#      xexp  = ax >> EXPSHIFTBITS_DP64;
    mov     %r10, %r9
    shr     $52, %r9                                  # >>EXPSHIFTBITS_DP64

#        npi2  = (int)(x * twobypi + 0.5);
    addsd   %xmm5, %xmm2                              # npi2

    movsd   .L__real_3ff921fb54400000(%rip), %xmm3    # piby2_1
    cvttpd2dq    %xmm2, %xmm0                         # convert to integer
    movsd   .L__real_3dd0b4611a626331(%rip), %xmm1    # piby2_1tail
    cvtdq2pd    %xmm0, %xmm2                          # and back to float.

#      /* Subtract the multiple from x to get an extra-precision remainder */
#      rhead  = x - npi2 * piby2_1;
    mulsd   %xmm2, %xmm3
    subsd   %xmm3, %xmm4                              # rhead

#      rtail  = npi2 * piby2_1tail;
    mulsd   %xmm2, %xmm1
    movd    %xmm0, %eax

#      GET_BITS_DP64(rhead-rtail, uy);             
    movsd   %xmm4, %xmm0
    subsd   %xmm1, %xmm0

    movsd   .L__real_3dd0b4611a600000(%rip), %xmm3    # piby2_2
    movsd   %xmm0,p_temp(%rsp)
    movsd   .L__real_3ba3198a2e037073(%rip), %xmm5    # piby2_2tail
    mov     p_temp(%rsp), %rcx                        # rcx is rhead-rtail

#    xmm0=r, xmm4=rhead, xmm1=rtail, xmm2=npi2, xmm3=temp for calc, xmm5= temp for calc
#      expdiff = xexp - ((uy & EXPBITS_DP64) >> EXPSHIFTBITS_DP64);
    shl     $1, %rcx                                  # strip any sign bit
    shr     $53, %rcx                                 # >> EXPSHIFTBITS_DP64 +1
    sub     %rcx, %r9                                 # expdiff

##      if (expdiff > 15)
    cmp     $15, %r9
    jle     .Lexpdiffless15

#          /* The remainder is pretty small compared with x, which
#             implies that x is a near multiple of pi/2
#             (x matches the multiple to at least 15 bits) */

#          t  = rhead;
    movsd   %xmm4, %xmm1

#          rtail  = npi2 * piby2_2;
    mulsd   %xmm2, %xmm3

#          rhead  = t - rtail;
    mulsd   %xmm2, %xmm5                              # npi2 * piby2_2tail
    subsd   %xmm3, %xmm4                              # rhead

#          rtail  = npi2 * piby2_2tail - ((t - rhead) - rtail);
    subsd   %xmm4, %xmm1                              # t - rhead
    subsd   %xmm3, %xmm1                              # -rtail
    subsd   %xmm1, %xmm5                              # rtail

#      r = rhead - rtail;
    movsd   %xmm4, %xmm0

#HARSHA
#xmm1=rtail
    movsd   %xmm5, %xmm1
    subsd   %xmm5, %xmm0

#    xmm0=r, xmm4=rhead, xmm1=rtail
.Lexpdiffless15:
#      region = npi2 & 3;

    subsd   %xmm0, %xmm4                              # rhead-r
    subsd   %xmm1, %xmm4                              # rr = (rhead-r) - rtail

#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
## if the input was close to a pi/2 multiple
# The original NAG code missed this trick.  If the input is very close to n*pi/2 after
# reduction,
# then the cos is ~ 1.0 , to within 53 bits, when r is < 2^-27.  We already
# have x at this point, so we can skip the cos polynomials.

    cmp     $0x03f2, %rcx                             # if r  small.
    jge     .Lcos_piby4                               # use taylor series if not
    cmp     $0x03de, %rcx                             # if r really small.
    jle     .Lr_small                                 # then cos(r) = 1

    movsd   %xmm0, %xmm2
    mulsd   %xmm2, %xmm2                              # x^2

##      if region is 1 or 3    do a sin calc.
    and     %eax, %r8d
    jz      .Lsinsmall

# region 1 or 3
# use simply polynomial
#              *s = x - x*x*x*0.166666666666666666;
    movsd   .L__real_3fc5555555555555(%rip), %xmm3    
    mulsd   %xmm0, %xmm3                              # * x
    mulsd   %xmm2, %xmm3                              # * x^2
    subsd   %xmm3, %xmm0                              # xs
    jmp     .Ladjust_region

.align 16
.Lsinsmall:
# region 0 or 2
#              cos = 1.0 - x*x*0.5;
    movsd   .L__real_3ff0000000000000(%rip), %xmm0  # 1.0
    mulsd   .L__real_3fe0000000000000(%rip), %xmm2  # 0.5 *x^2
    subsd   %xmm2, %xmm0
    jmp     .Ladjust_region

.align 16
.Lr_small:
##      if region is 1 or 3    do a sin calc.
    and     %eax, %r8d
    jnz     .Ladjust_region

    movsd   .L__real_3ff0000000000000(%rip), %xmm0    # cos(r) is a 1
    jmp     .Ladjust_region

.align 32
.Lcos_reduce_precise:
#      // Reduce x into range [-pi/4,pi/4]
#      __amd_remainder_piby2(x, &r, &rr, &region);

    lea     region(%rsp), %rdx
    lea     rr(%rsp), %rsi
    lea     r(%rsp), %rdi
        
    call    __amd_remainder_piby2@PLT

    mov     $1, %r8d                                  # for determining region later on
    movsd   r(%rsp), %xmm0                            # x
    movsd   rr(%rsp), %xmm4                           # xx
    mov     region(%rsp), %eax                        # region

# xmm0 = x, xmm4 = xx, r8d = 1, eax= region
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.align 32
# perform taylor series to calc sinx, cosx
.Lcos_piby4:
#  x2 = r * r;

#xmm4 = a part of rr for the sin path, xmm4 is overwritten in the cos path
#instead use xmm3 because that was freed up in the sin path, xmm3 is overwritten in sin path
    movsd   %xmm0, %xmm3
    movsd   %xmm0, %xmm2
    mulsd   %xmm0, %xmm2                              # x2

##      if region is 1 or 3    do a sin calc.
    and     %eax, %r8d
    jz      .Lcospiby4

# region 1 or 3
    movsd   .Lsinarray+0x50(%rip), %xmm3              # s6
    mulsd   %xmm2, %xmm3                              # x2s6
    movsd   .Lsinarray+0x20(%rip), %xmm5              # s3
    movsd   %xmm4,p_temp(%rsp)                        # store xx
    movsd   %xmm2, %xmm1                              # move for x4
    mulsd   %xmm2, %xmm1                              # x4
    movsd   %xmm0,p_temp1(%rsp)                       # store x
    mulsd   %xmm2, %xmm5                              # x2s3
    movsd   %xmm0, %xmm4                              # move for x3
    addsd   .Lsinarray+0x40(%rip), %xmm3              # s5+x2s6
    mulsd   %xmm2, %xmm1                              # x6
    mulsd   %xmm2, %xmm3                              # x2(s5+x2s6)
    mulsd   %xmm2, %xmm4                              # x3
    addsd   .Lsinarray+0x10(%rip), %xmm5              # s2+x2s3
    mulsd   %xmm2, %xmm5                              # x2(s2+x2s3)
    addsd   .Lsinarray+0x30(%rip), %xmm3              # s4 + x2(s5+x2s6)
    mulsd   .L__real_3fe0000000000000(%rip), %xmm2    # 0.5 *x2
    movsd   p_temp(%rsp), %xmm0                       # load xx
    mulsd   %xmm1, %xmm3                              # x6(s4 + x2(s5+x2s6))
    addsd   .Lsinarray(%rip), %xmm5                   # s1+x2(s2+x2s3)
    mulsd   %xmm0, %xmm2                              # 0.5 * x2 *xx
    addsd   %xmm5, %xmm3                              # zs
    mulsd   %xmm3, %xmm4                              # *x3
    subsd   %xmm2, %xmm4                              # x3*zs - 0.5 * x2 *xx
    addsd   %xmm4, %xmm0                              # +xx
    addsd   p_temp1(%rsp), %xmm0                      # +x
    
    jmp     .Ladjust_region

#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.align 16
.Lcospiby4:
    
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
# region 0 or 2     - do a cos calculation
#  zc = (c2 + x2 * (c3 + x2 * (c4 + x2 * (c5 + x2 * c6))));
    mulsd   %xmm0, %xmm4                              # x*xx
    movsd   .L__real_3fe0000000000000(%rip), %xmm5
    movsd   .Lcosarray+0x50(%rip), %xmm1              # c6
    movsd   .Lcosarray+0x20(%rip), %xmm0              # c3
    mulsd   %xmm2, %xmm5                              # r = 0.5 *x2
    movsd   %xmm2, %xmm3                              # copy of x2
    movsd   %xmm4,p_temp(%rsp)                        # store x*xx
    mulsd   %xmm2, %xmm1                              # c6*x2
    mulsd   %xmm2, %xmm0                              # c3*x2
    subsd   .L__real_3ff0000000000000(%rip), %xmm5    # -t=r-1.0    ;trash r
    mulsd   %xmm2, %xmm3                              # x4
    addsd   .Lcosarray+0x40(%rip), %xmm1              # c5+x2c6
    addsd   .Lcosarray+0x10(%rip), %xmm0              # c2+x2C3
    addsd   .L__real_3ff0000000000000(%rip), %xmm5    # 1 + (-t)    ;trash t
    mulsd   %xmm2, %xmm3                              # x6
    mulsd   %xmm2, %xmm1                              # x2(c5+x2c6)
    mulsd   %xmm2, %xmm0                              # x2(c2+x2C3)
    movsd   %xmm2, %xmm4                              # copy of x2
    mulsd   .L__real_3fe0000000000000(%rip), %xmm4    # r recalculate
    addsd   .Lcosarray+0x30(%rip), %xmm1              # c4 + x2(c5+x2c6)
    addsd   .Lcosarray(%rip), %xmm0                   # c1+x2(c2+x2C3)
    mulsd   %xmm2, %xmm2                              # x4 recalculate
    subsd   %xmm4, %xmm5                              # (1 + (-t)) - r
    mulsd   %xmm3, %xmm1                              # x6(c4 + x2(c5+x2c6))
    addsd   %xmm1, %xmm0                              # zc
    subsd   .L__real_3ff0000000000000(%rip), %xmm4    # t relaculate
    subsd   p_temp(%rsp), %xmm5                       # ((1 + (-t)) - r) - x*xx
    mulsd   %xmm2, %xmm0                              # x4 * zc
    addsd   %xmm5, %xmm0                              # x4 * zc + ((1 + (-t)) - r -x*xx)
    subsd   %xmm4, %xmm0                              # result - (-t)

#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.align 32
.Ladjust_region:        # positive or negative (0, 1, 2, 3)=>(1, 2, 3 ,4)=>(0, 2, 2,0)
#      switch (region)
    add     $1, %eax
    and     $2, %eax
    jz      .Lcos_cleanup
## if the original region 1 or 2 then we negate the result.
    movsd   %xmm0, %xmm2
    xorpd   %xmm0, %xmm0
    subsd   %xmm2, %xmm0

.align 32
.Lcos_cleanup:
    add     $stack_size, %rsp
    ret

.align 32
.Lcos_naninf:
   call     fname_special
   add      $stack_size, %rsp
   ret



