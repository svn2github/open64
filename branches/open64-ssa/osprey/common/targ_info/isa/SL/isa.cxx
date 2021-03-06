/********************************************************************\
|*                                                                  *|   
|*  Copyright (c) 2006 by SimpLight Nanoelectronics.                *|
|*  All rights reserved                                             *|
|*                                                                  *|
|*  This program is free software; you can redistribute it and/or   *|
|*  modify it under the terms of the GNU General Public License as  *|
|*  published by the Free Software Foundation; either version 2,    *|
|*  or (at your option) any later version.                          *|
|*                                                                  *|
\********************************************************************/

//
// Generate an ISA containing the instructions specified.
/////////////////////////////////////////////////////////
// The instructions are listed by category. The different categories of
// instructions are:
//
//   1. Integer instructions
//   2. FP instructions
//   3. Simulated instructions
//   4. Dummy instructions
//
// Within each category, the instructions are in alphabetical order.
// This arrangement of instructions matches the order in the ISA manual.
/////////////////////////////////////
//
//  $Revision: 1.11 $
//  $Date: 2006/04/28 08:27:15 $
//  $Author: weitang $
//  $Source: /depot/CVSROOT/javi/src/sw/cmplr/common/targ_info/isa/MIPS/isa.cxx,v $

#include <stddef.h>
#include "isa_gen.h"

main ()
{
  ISA_Create ("MIPS",
#if defined(TARG_SL)        
        "abs16",
	"add16",
	"add16.i",
	"add16.sp",
	"and16",
        "and16.i",
	"jr16",
	"jr16.lnk",
        "ldw16",
        "ldub16.rs",
        "lduh16.rs",
	"mv16",
	"mv16.i",
	"mvfc16",
	"mvtc16",
	"nop16",
	"inv16",
	"or16",
	"or16.i",
	"pop16",
	"push16",
	"ret16",
	"shll16",
	"shll16.i",
	"shra16",
	"shra16.i",
	"shrl16",
	"shrl16.i",
	"stw16",
	"sub16",
	"sub16.i",
	"xor16",
	"xor16.i",
	"br16.eqz",
        "br16.nez",
        "c3.aadda",
        "c3.bitr",
        "c3.cs",
        "c3.dadd",
        "c3.dmac",
        "c3.dmacn",
        "c3.dmac.a",
        "c3.dmacn.a",
        "c3.dmula",
        "c3.dmulan",
        "c3.dmula.a",
        "c3.dmulan.a",
        "c3.dshll.i",
        "c3.dshrl.i",
        "c3.dsub",
        "c3.ffe",
        "c3.fftld",
        "c3.fftst",
        "c3.ld",
        "c3.lead",
        "c3.mac",
        "c3.mac.a",
        "c3.mac.ar",
        "c3.mac.i",
        "c3.macn",
        "c3.macn.a",
        "c3.macn.ar",
        "c3.macn.i",
        "c3.mula",
        "c3.mula.a",
        "c3.mula.ar",
        "c3.mula.i",
        "c3.mulan",
        "c3.muls",
        "c3.mulus",
        "c3.mvfs",
        "c3.mvts",
        "c3.revb",
        "c3.round",
        "c3.saadd.a",
        "c3.saaddh.a",
        "c3.saadds",
        "c3.saaddsh",
        "c3.sadda",
        "c3.sadda.a",
        "c3.samulh.a",
        "c3.samulsh",
        "c3.sasub.a",
        "c3.sasubh.a",
        "c3.sasubs",
        "c3.sasubsh",
        "c3.shav",
        "c3.shlafa.i",
        "c3.shlata.i",
        "c3.shla.i",
        "c3.shrafa.i",
        "c3.shrata.i",
        "c3.shra.i",
        "c3.st",
        "c3.subc",
        "c3.nega",
        "c3.mvfacc",
        "c3.mvfaddr",
        "c3.mvfadds",
        "c3.mvtacc",
        "c3.mvtaddr",
        "c3.mvtadds",
        "loop",
        "mvtc",
        "mvfc",
	"mvtc.i",
        "ret",
        "mc.r.ge",
        "mc.r.le",
        "mc.r.lt",
        "mc.r.gt",
        "mc.r.eq",
        "mc.r.ne",
        "mc.abs",
        "mc.zc.le",
        "mc.zc.lt",
        "mc.zc.gt",
        "mc.zc.ge",
        "mc.zc.eq",
        "mc.zc.ne",
#endif
        "jp",
        "jp.lnk", 
	"ldb",
	"ldub",
	"ldh",
	"lduh",
	"ldw",
	"lwl",
	"lwr",
	"stb",
	"sth",
	"stw",
	"swl",
	"swr",
	"ld.lnk",
	"sc",
	"sync",
	"lwu",
	"ld",
	"ldl",
	"ldr",
	"lld",
	"sd",
	"sdl",
	"sdr",
	"scd",
	"pref",
	"prefx",
	"add",
	"addi",
	"add.i",
	"addu",
	"smult",
	"div",
	"divu",
	"mult",
	"multu",
	"setlt",
	"setlt.i",
	"setltu.i",
	"setltu",
	"sub",
	"subu",
	"dadd",
	"daddi",
	"daddiu",
	"daddu",
	"ddiv",
	"ddivu",
	"dmult",
	"dmultu",
	"dsub",
	"dsubu",
	"and",
	"and.i",
	"mvup.i",
	"nor",
	"or",
	"or.i",
	"xor",
	"xor.i",
	"movf.hi",
	"movf.lo",
	"mthi",
	"mtlo",
	"mc.z.eq",
	"mc.z.ne",
	"mc.z.gt",
	"mc.z.ge",
	"mc.z.lt",
	"mc.z.le",
	"mc.zn.eq",
	"mc.zn.ne",
	"mc.zn.gt",
	"mc.zn.ge",
	"mc.zn.lt",
	"mc.zn.le",
	"depb",
	"extrb",
	"extrbu",	
	"movf",
	"movn",
	"movt",
	"movz",
	"shll",
	"shll.i",
	"shra",
	"shra.i",
	"shrl",
	"shrl.i",
	"dsll",
	"dsll32",
	"dsllv",
	"dsra",
	"dsra32",
	"dsrav",
	"dsrl",
	"dsrl32",
	"dsrlv",
	"br.eq",
	"br.gez",
	"bgezal",
	"br.gtz",
	"br.lez",
	"br.ltz",
	"bltzal",
	"br.ne",
	//"j",
	//"jal",
	"jr.lnk",
	"jr",
	"break",
	"syscall",
	"teq",
	"teqi",
	"tge",
	"tgei",
	"tgeiu",
	"tgeu",
	"tlt",
	"tlti",
	"tltiu",
	"tltu",
	"tne",
	"tnei",
	"lwc1",
	"ldc1",
	"lwxc1",
	"ldxc1",
	"swc1",
	"sdc1",
	"swxc1",
	"sdxc1",
	"abs.s",
	"abs.d",
	"add.s",
	"add.d",
	"c.f.s",
	"c.f.d",
	"c.t.s",
	"c.t.d",
	"c.un.s",
	"c.un.d",
	"c.or.s",
	"c.or.d",
	"c.eq.s",
	"c.eq.d",
	"c.neq.s",
	"c.neq.d",
	"c.ueq.s",
	"c.ueq.d",
	"c.olg.s",
	"c.olg.d",
	"c.olt.s",
	"c.olt.d",
	"c.uge.s",
	"c.uge.d",
	"c.ult.s",
	"c.ult.d",
	"c.oge.s",
	"c.oge.d",
	"c.ole.s",
	"c.ole.d",
	"c.ugt.s",
	"c.ugt.d",
	"c.ule.s",
	"c.ule.d",
	"c.ogt.s",
	"c.ogt.d",
	"c.sf.s",
	"c.sf.d",
	"c.st.s",
	"c.st.d",
	"c.ngle.s",
	"c.ngle.d",
	"c.gle.s",
	"c.gle.d",
	"c.seq.s",
	"c.seq.d",
	"c.sne.s",
	"c.sne.d",
	"c.ngl.s",
	"c.ngl.d",
	"c.gl.s",
	"c.gl.d",
	"c.lt.s",
	"c.lt.d",
	"c.nlt.s",
	"c.nlt.d",
	"c.nge.s",
	"c.nge.d",
	"c.ge.s",
	"c.ge.d",
	"c.le.s",
	"c.le.d",
	"c.nle.s",
	"c.nle.d",
	"c.ngt.s",
	"c.ngt.d",
	"c.gt.s",
	"c.gt.d",
	"div.s",
	"div.d",
	"mul.s",
	"mul.d",
	"neg.s",
	"neg.d",
	"sub.s",
	"sub.d",
	"sqrt.s",
	"sqrt.d",
	"madd.s",
	"madd.d",
	"msub.s",
	"msub.d",
	"nmadd.s",
	"nmadd.d",
	"nmsub.s",
	"nmsub.d",
	"recip.s",
	"recip.d",
	"rsqrt.s",
	"rsqrt.d",
	"cfc1",
	"ctc1",
	"mfc1",
	"mtc1",
	"dmfc1",
	"dmtc1",
	"mov.s",
	"mov.d",
	"movf.s",
	"movf.d",
	"movn.s",
	"movn.d",
	"movt.s",
	"movt.d",
	"movz.s",
	"movz.d",
	"cvt.d.s",
	"cvt.d.w",
	"cvt.d.l",
	"cvt.l.s",
	"cvt.l.d",
	"cvt.s.d",
	"cvt.s.w",
	"cvt.s.l",
	"cvt.w.s",
	"cvt.w.d",
	"ceil.w.s",
	"ceil.w.d",
	"ceil.l.s",
	"ceil.l.d",
	"floor.w.s",
	"floor.w.d",
	"floor.l.s",
	"floor.l.d",
	"round.w.s",
	"round.w.d",
	"round.l.s",
	"round.l.d",
	"trunc.w.s",
	"trunc.w.d",
	"trunc.l.s",
	"trunc.l.d",
	"bc1f",
	"bc1t",
     // And pseudo-opcodes
        "asm",
        "intrncall",
        "spadjust",

    // Dummy instructions
        "begin_pregtn",
        "end_pregtn",
        "bwd_bar",
        "fwd_bar",
        "label",
#if defined(TARG_SL2) 
        "c2.mvgr.r2g.h.u",
        "c2.mvgr.r2g.h",
        "c2.mvgr.r2g.w",
        "c2.mvgr.r2g.h.u.i",
        "c2.mvgr.r2g.h.i",
        "c2.mvgr.r2g.w.i",
        "c2.mvgr.g2r.ba.lh",
        "c2.mvgr.g2r.ba.hh",
        "c2.mvgr.g2r.ba.w",
        "c2.mvgr.g2r.lh.i",
        "c2.mvgr.g2r.hh.i",
        "c2.mvgr.g2r.w.i",
        "c2.mvgr.g2r.lh",
        "c2.mvgr.g2r.hh",
        "c2.mvgr.g2r.w",
        "c2.mvgr.g2r.bh",
        "c2.mvgr.g2r.bh.u",
        "c2.mvgr.g2r.bv",
        "c2.mvgr.g2r.bv.u",
        "c2.mvgr.g2r.b4.i",
        "c2.mvgr.g2r.b4",
        "c2.mvgc.c2g",
        "c2.mvgc.g2c",
        "c2.ld.v.b.u",
        "c2.ld.v.b",
        "c2.ld.v.h",
        "c2.ld.v.w",
        "c2.ld.v.sw",
        "c2.ld.v.m.b.u",
        "c2.ld.v.m.b",
        "c2.ld.v.m.h",
        "c2.ld.v.m.w",
        "c2.ld.s.h.u.p",
        "c2.ld.s.h.u",
        "c2.ld.s.h.p",
        "c2.ld.s.h",
        "c2.ld.s.w.p",
        "c2.ld.s.w",
        "c2.ld.v2g.b.u",
        "c2.ld.v2g.b",
        "c2.ld.v2g.h.u",
        "c2.ld.v2g.h",
        "c2.ld.v2g.w",
        "c2.st.v.b",
        "c2.st.v.h",
        "c2.st.v.w",
        "c2.st.v.m.b",
        "c2.st.v.m.h",
        "c2.st.v.m.w",
        "c2.st.s.h",
        "c2.st.s.h.p",
        "c2.st.s.w",
        "c2.st.s.w.p",
        "c2.st.g2v.b",
        "c2.st.g2v.h",
        "c2.st.g2v.w",
        "c2.ldi.s.h.u",
        "c2.ldi.s.h",
        "c2.ldi.s.w",
        "c2.ldi.c",
        "c2.ldi.v.b.u",
        "c2.ldi.v.b",
        "c2.ldi.v.h",
        "c2.ldi.v.w",
        "c2.ldi.v.m.b.u",
        "c2.ldi.v.m.b",
        "c2.ldi.v.m.h",
        "c2.ldi.v.m.w",
        "c2.ldi.v2g.b.u",
        "c2.ldi.v2g.b",
        "c2.ldi.v2g.h.u",
        "c2.ldi.v2g.h",
        "c2.ldi.v2g.w",
        "c2.sti.v.b",
        "c2.sti.v.h",
        "c2.sti.v.w",
        "c2.sti.v.m.b",
        "c2.sti.v.m.h",
        "c2.sti.v.m.w",
        "c2.sti.c",
        "c2.sti.s.h",
        "c2.sti.s.w",
        "c2.sti.g2v.b",
        "c2.sti.g2v.h",
        "c2.sti.g2v.w",
        "c2.vadds.h",
        "c2.vadds.w",
        "c2.vadds.p",
        "c2.vadds.h.mode6",
        "c2.vadds.h.mode2",
        "c2.vadds.w.mode6",
        "c2.vadds.w.mode2",
        "c2.vadds.p.mode6",
        "c2.vadds.p.mode2",
        "c2.vsubs.h",
        "c2.vsubs.h.sm",
        "c2.vsubs.h.abs",
        "c2.vsubs.h.abs.sm",
        "c2.vabs.h",
        "c2.vabs.h.sm",
        "c2.vsubs.w",
        "c2.vsubs.w.sm",
        "c2.vsubs.w.abs",
        "c2.vsubs.w.abs.sm",
        "c2.vabs.w",
        "c2.vabs.w.sm",
        "c2.vsubs.p",
        "c2.vsubs.p.sm",
        "c2.vsubs.p.abs",
        "c2.vsubs.p.abs.sm",
        "c2.vabs.p",
        "c2.vabs.p.sm",
        "c2.vmul.h",
        "c2.vmul.w",
        "c2.vneg.h",
        "c2.vneg.w",
        "c2.vneg.p",
        "c2.vshr.p",
        "c2.vshr.h",
        "c2.vshr.w",
        "c2.vshl.p",
        "c2.vshl.h",
        "c2.vshl.w",
        "c2.vclp",
        "c2.vclp.p",
        "c2.vclp.a",
        "c2.vclp.s",
        "c2.vclp.2",
        "c2.vclp.n",
        "c2.vclg.h.lt.and",
        "c2.vclg.h.lt.or",
        "c2.vclg.h.le.and",
        "c2.vclg.h.le.or",
        "c2.vclg.h.eq.and",
        "c2.vclg.h.eq.or",
        "c2.vclg.h.ge.and",
        "c2.vclg.h.ge.or",
        "c2.vclg.h.gt.and",
        "c2.vclg.h.gt.or",
        "c2.vclg.h.and",
        "c2.vclg.h.or",
        "c2.vclg.h.le",
        "c2.vclg.h.lt",
        "c2.vclg.h.ge",
        "c2.vclg.h.gt",
        "c2.vclg.w.lt.and",
        "c2.vclg.w.lt.or",
        "c2.vclg.w.le.and",
        "c2.vclg.w.le.or",
        "c2.vclg.w.eq.and",
        "c2.vclg.w.eq.or",
        "c2.vclg.w.ge.and",
        "c2.vclg.w.ge.or",
        "c2.vclg.w.gt.and",
        "c2.vclg.w.gt.or",
        "c2.vclg.w.and",
        "c2.vclg.w.or",
        "c2.vclg.w.le",
        "c2.vclg.w.lt",
        "c2.vclg.w.ge",
        "c2.vclg.w.gt",
        "c2.vclg.p.lt.and",
        "c2.vclg.p.lt.or",
        "c2.vclg.p.le.and",
        "c2.vclg.p.le.or",
        "c2.vclg.p.eq.and",
        "c2.vclg.p.eq.or",
        "c2.vclg.p.ge.and",
        "c2.vclg.p.ge.or",
        "c2.vclg.p.gt.and",
        "c2.vclg.p.gt.or",
        "c2.vclg.p.and",
        "c2.vclg.p.or",
        "c2.vclg.p.le",
        "c2.vclg.p.eq",
        "c2.vclg.p.ge",
        "c2.vclg.p.gt",
        "c2.vcmov.h.f",
        "c2.vcmov.h.t",
        "c2.vcmov.w.f",
        "c2.vcmov.w.t",
        "c2.lczero.z",
        "c2.lczero.nz.fw",
        "c2.lczero.nz.bw",
        "c2.vrnd.h",
        "c2.vrnd.w",
        "c2.vspas",
        "c2.vspel.mul.h",
        "c2.vspel.mul.w",
        "c2.vspel.adds",
        "c2.vspel.mac.h",
        "c2.vspel.mac.w",
        "c2.mmul.h",
        "c2.mmul.w",
        "c2.vmov",
        "c2.vmov.swin",
        "c2.vcopy", 
        "c2.vcmpr.h.eq",
        "c2.vcmpr.h.lt",
        "c2.vcmpr.h.le",
        "c2.vcmpr.h.gt",
        "c2.vcmpr.h.ge",
        "c2.vcmpr.w.eq",
        "c2.vcmpr.w.lt",
        "c2.vcmpr.w.le",
        "c2.vcmpr.w.gt",
        "c2.vcmpr.w.ge",
        "c2.sad",
        "c2.satd", 
        "c2.intra",
        "c2.intra.0.1.9.14.16",
        "c2.intra.2.3.8.10",
        "c2.intra.4",
        "c2.intra.5.11",
        "c2.intra.6",
        "c2.intra.7",
        "c2.intra.12.13",
        "c2.intra.15.17",
        "c2.mvsel.mode0",
        "c2.mvsel.mode1", 
        "c2.mvsel.mode2", 
        "c2.mvsel.mode345", 
        "c2.bcst.q",
        "c2.bcst.i",
        "c2.vlcs.dc",
        "c2.vlcs.ac",
        "c2.vlcs.wb",
        "c2.add.shl.g.i",
        "c2.add.shr.g.i",
        "c2.add.shl.g",
        "c2.add.shr.g",
        "c2.add.shl.r.h.i",
        "c2.add.shr.r.h.i",
        "c2.add.shl.r.w.i",
        "c2.add.shr.r.w.i",
        "c2.add.shl.r.h",
        "c2.add.shr.r.h",
        "c2.add.shl.r.w",
        "c2.add.shr.r.w",
        "c2.sub.g.abs.i",
        "c2.subs.g.i",
        "c2.sub.g.abs",
        "c2.subs.g",
        "c2.subs.r.h.i",
        "c2.subs.r.w.i",
        "c2.sub.r.abs.h.i",
        "c2.sub.r.abs.w.i",
        "c2.subs.r.h",
        "c2.subs.r.w",
        "c2.sub.r.abs.h",
        "c2.sub.r.abs.w",
        "c2.muls",
        "c2.mads",
        "c2.smads",
        "c2.min",
        "c2.max",
        "c2.cmov",
        "c2.mov.g",
        "c2.mov.r",
        "c2.mov.c.i",
        "c2.mov.c",
        "c2.mov.s.i",
        "c2.mov.s",
        "c2.clp",
        "c2.clp.i",
        "c2.chkrng",
        "c2.scond.r.h.wb.eq",
        "c2.scond.r.h.wb.lt",
        "c2.scond.r.h.wb.le",
        "c2.scond.r.h.wb.gt",
        "c2.scond.r.h.wb.ge",
        "c2.scond.r.wb.eq.i",
        "c2.scond.r.wb.lt.i",
        "c2.scond.r.wb.le.i",
        "c2.scond.r.wb.gt.i",
        "c2.scond.r.wb.ge.i",
        "c2.scond.r.w.wb.eq",
        "c2.scond.r.w.wb.lt",
        "c2.scond.r.w.wb.le",
        "c2.scond.r.w.wb.gt",
        "c2.scond.r.w.wb.ge",
        "c2.scond.r.w.wb.eq.i",
        "c2.scond.r.w.wb.lt.i",
        "c2.scond.r.w.wb.le.i",
        "c2.scond.r.w.wb.gt.i",
        "c2.scond.r.w.wb.ge.i",
        "c2.scond.r.h.eq",
        "c2.scond.r.h.lt",
        "c2.scond.r.h.le",
        "c2.scond.r.h.gt",
        "c2.scond.r.h.ge",
        "c2.scond.r.h.eq.i",
        "c2.scond.r.h.lt.i",
        "c2.scond.r.h.le.i",
        "c2.scond.r.h.gt.i",
        "c2.scond.r.h.ge.i",
        "c2.scond.r.w.eq",
        "c2.scond.r.w.lt",
        "c2.scond.r.w.le",
        "c2.scond.r.w.gt",
        "c2.scond.r.w.ge",
        "c2.scond.r.w.eq.i",
        "c2.scond.r.w.lt.i",
        "c2.scond.r.w.le.i",
        "c2.scond.r.w.gt.i",
        "c2.scond.r.w.ge.i",
        "c2.scond.eq",
        "c2.scond.lt",
        "c2.scond.le",
        "c2.scond.gt",
        "c2.scond.ge",
        "c2.scond.eq.i",
        "c2.scond.lt.i",
        "c2.scond.le.i",
        "c2.scond.gt.i",
        "c2.scond.ge.i",
        "c2.bop.ls",
        "c2.bop.rs",
        "c2.bop.and",
        "c2.bop.or",
        "c2.bop.xor",
        "c2.bop.ls.i",
        "c2.bop.rs.i",
        "c2.bop.and.i",
        "c2.bop.or.i",
        "c2.bop.xor.i",
        "c2.bop.andxor",
        "c2.bdep.l",
        "c2.bdep.m",
        "c2.bxtr.u.l",
        "c2.bxtr.s.l",
        "c2.bxtr.u.m",
        "c2.bxtr.s.m",
        "c2.bxtrr48",
        "c2.bxtrr48.i",
        "c2.sum4.c",
        "c2.sum4.g",
        "c2.sum4.sw",
        "c2.sum4.r",
        "c2.sum4.saddr",
        "c2.med", 
        "c2.gsums",
        "c2.wrap",
        "c2.clzob.zd", 
        "c2.clzob.od", 
        "c2.clzob.zd.i", 
        "c2.clzob.od.i", 
        "c2.thctrl.lock",
        "c2.thctrl.unlock",
        "c2.thctrl.deact",
        "c2.thctrl.act",
        "c2.thctrl.mode4", 
        "c2.thctrl.mode5",
        "c2.thctrl.mode6",
        "c2.thctrl.mode7",
        "c2.joint",
        "peripheral.rw.begin", 
        "peripheral.rw.end", 
        "c2.shor.l",
        "c2.shor.rl",
        "c2.shor.ra", 
        "c2.shsub.l",
        "c2.shsub.rl",
        "c2.shsub.ra",
        "c2.shadd.l",
        "c2.shadd.rl",
        "c2.shadd.ra",
        "c2.shor.l.i",
        "c2.shor.rl.i",
        "c2.shor.ra.i", 
        "c2.shsub.l.i",
        "c2.shsub.rl.i",
        "c2.shsub.ra.i",
        "c2.shadd.l.i",
        "c2.shadd.rl.i",
        "c2.shadd.ra.i",
        "c2.fork.m",
        "c2.fork.n", 
        // following instruction is a pseudo instruction used as
        // representive instruction when merging sl2 macro instruction 
        "c2.macro", 
#endif // TARG_SL2      

	"nop",
	"noop",
	//"add16"
	NULL);
}
