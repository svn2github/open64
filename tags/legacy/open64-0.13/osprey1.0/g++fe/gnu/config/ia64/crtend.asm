/* Copyright (C) 2000 Free Software Foundation, Inc.
   Contributed by Jes Sorensen, <Jes.Sorensen@cern.ch>

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public License as
   published by the Free Software Foundation; either version 2 of the
   License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public
   License along with the GNU C Library; see the file COPYING.LIB.  If not,
   write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

.section .ctors,"aw","progbits"
	.align	8
__CTOR_END__:
	data8	0

.section .dtors,"aw","progbits"
	.align 8
__DTOR_END__:
	data8	0

.section .IA_64.unwind
__EH_FRAME_END__:

/*
 * Fragment of the ELF _init routine that invokes our dtor cleanup.
 *
 * We make the call by indirection, because in large programs the 
 * .fini and .init sections are not in range of the destination, and
 * we cannot allow the linker to insert a stub at the end of this
 * fragment of the _fini function.  Further, Itanium does not implement
 * the long branch instructions, and we do not wish every program to
 * trap to the kernel for emulation.
 *
 * Note that we require __do_global_ctors_aux to preserve the GP,
 * so that the next fragment in .fini gets the right value.
 */
.section .init,"ax","progbits"
#ifdef SGI_MONGOOSE
	{ .mli
	  nop.m 0
#else
	{ .mlx
#endif
	  movl r2 = @gprel(__do_global_ctors_aux#)
	  ;;
	}
	{ .mii
	  nop.m 0
	  add r2 = r2, gp
	  ;;
	  mov b6 = r2
	}
	{ .bbb
	  br.call.sptk.many b0 = b6
	  ;;
	}

.text
	.align 16
	.proc __do_global_ctors_aux#
__do_global_ctors_aux:
	/*
		for (loc0 = __CTOR_END__-1; *p != -1; --p)
		  (*p) ();
	*/
	{ .mii
	  alloc loc4 = ar.pfs, 0, 5, 0, 0
	  addl loc0 = @ltoff(__CTOR_END__# - 8), gp
	  mov loc1 = b0
	  ;;
	}
	{ .mmi
	  ld8 loc0 = [loc0]
	  ;;
	  ld8 loc3 = [loc0], -8
	  mov loc2 = gp
	  ;;
	}
	{ .mfb
	  cmp.eq p6, p0 = -1, loc3
(p6)	  br.cond.spnt.few 2f
	}
0:
	{ .mmi
	  ld8 r15 = [loc3], 8
	  ;;
	  ld8 gp = [loc3]
	  mov b6 = r15
	}
	{ .mfb
	  ld8 loc3 = [loc0], -8
	  br.call.sptk.many b0 = b6
	  ;;
	}
	{ .mfb
	  cmp.ne p6, p0 = -1, loc3
(p6)	  br.cond.sptk.few 0b
	}
2:
	{ .mii
	  mov gp = loc2
	  mov b0 = loc1
	  mov ar.pfs = loc4
	}
	{ .bbb
	  br.ret.sptk.many b0
	  ;;
	}
	.endp __do_global_ctors_aux#

.section .init,"ax","progbits"
	{ .mlx
	  // __do_frame_setup_aux is in crtbegin.asm
	  movl r2 = @gprel(__do_frame_setup_aux#)
	  ;;
	}
	{ .mii
	  nop.m 0
	  add r2 = r2, gp
	  ;;
	  mov b6 = r2
	}
	{ .mib
	  // __do_frame_setup_aux needs the address of __EH_FRAME_END__,
	  // so we pass it in r16.  This is rather evil, but we have no
	  // output registers.
          addl r16 = @ltoff(__EH_FRAME_END__#), gp
	  br.call.sptk.many b0 = b6
	  ;;
        }

