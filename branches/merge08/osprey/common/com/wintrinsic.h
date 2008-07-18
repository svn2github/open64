/*
 *  Copyright (C) 2007. QLogic Corporation. All Rights Reserved.
 */

/*
 * Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
 */

/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


/**
***		Intrinsics, Intrinsic Types, and Intrinsic Flags
***		------------------------------------------------
***
*** Description:
***
***	This interface describes all the intrinsic names, operators,
***	types associated with intrinsics, and properties associated with
***	intrinsics.
***
*** Reserved Prefixes:
***
***	INTRN		for INTRINSIC members only.
***
*** Exported types:
***
***	INTRINSIC
***
***	    An enumerated type.  The members are a partial set of all language
***	    defined intrinsics.  Those language intrinsics not included in this
***	    enumerated type are already present in WHIRL as OPC nodes.  There
***	    are usually two separate flavors of each fortran intrinsic - one
***	    named INTRN_XXX and one named INTRN_XXXe.  The former name
***	    represents the version called directly by generated code and usually
***	    has call by value semantics.  These intrinsics might eventually be
***	    turned into calls, be inlined or have direct code generated for
***	    them.  The INTRN_XXXe version is always an external routine with
***	    call by reference semantics.  It is needed to support passing an
***	    intrinsic function itself to another subprogram.
***
***	    All INTRINSICs are prefixed with INTRN.
***
*** Exported data:
***
***	    none
***
**/

#ifndef wintrinsic_INCLUDED
#define wintrinsic_INCLUDED "wintrinsic.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {

  INTRINSIC_INVALID = -1,
  INTRINSIC_NONE = 0,
  INTRINSIC_FIRST = 1,

    /* F77 type conversions - INT, SHORT, LONG, REAL, FLOAT, SNGL, DBLE, CMPLX,
			      CHAR, ZEXT, etc. */

	/* All of these are already represented by existing WHIRL nodes.  F77
	   semantics preclude them from being passed, so external versions
	   aren't needed. */

    /* F77 '**' expressions */

	/* These functions are needed to support ** in expressions.  They are
	   not directly callable, so external versions aren't needed.  F77
	   semantic rules treat f**i specially.  Here are the details:

	   a**b   \  b
	         a \  I1,I2,I4  I8    F4   F8   FQ   C4   C8   CQ
	            +--------------------------------------------
	   I1,I2,I4 |    I4     I8    F4   F8   FQ   C4   C8   CQ
		 I8 |    I8     I8    F4   F8   FQ   C4   C8   CQ
		 F4 |   F4I4   F4I8   F4   F8   FQ   C4   C8   CQ
		 F8 |   F8I4   F8I8   F8   F8   FQ   C8   C8   CQ
		 FQ |   FQI4   FQI8   FQ   FQ   FQ   CQ   CQ   CQ
		 C4 |   C4I4   C4I8   C4   C8   CQ   C4   C8   CQ
		 C8 |   C8I4   C8I8   C8   C8   CQ   C8   C8   CQ
		 CQ |   CQI4   CQI8   CQ   CQ   CQ   CQ   CQ   CQ   */

  INTRN_I4EXPEXPR = INTRINSIC_FIRST,
  INTRN_I8EXPEXPR,
  INTRN_F4EXPEXPR,
  INTRN_F8EXPEXPR,
  INTRN_FQEXPEXPR,
  INTRN_C4EXPEXPR,
  INTRN_C8EXPEXPR,
  INTRN_CQEXPEXPR,
  INTRN_F4I4EXPEXPR,
  INTRN_F4I8EXPEXPR,
  INTRN_F8I4EXPEXPR,
  INTRN_F8I8EXPEXPR,
  INTRN_FQI4EXPEXPR,
  INTRN_FQI8EXPEXPR,
  INTRN_C4I4EXPEXPR,
  INTRN_C4I8EXPEXPR,
  INTRN_C8I4EXPEXPR,
  INTRN_C8I8EXPEXPR,
  INTRN_CQI4EXPEXPR,
  INTRN_CQI8EXPEXPR,

    /* F77 character relational expressions */

	/* These functions are needed to support character relational logical
	   expressions.  They are not directly callable, so external versions
	   aren't needed. */

  INTRN_CEQEXPR,
  INTRN_CNEEXPR,
  INTRN_CGEEXPR,
  INTRN_CGTEXPR,
  INTRN_CLEEXPR,
  INTRN_CLTEXPR,

    /* F77 substring 'var(e1:e2)' expressions */

	/* These functions are needed to support character substrings in
	   expressions.  They are not directly callable, so external versions
	   aren't needed.  */

  INTRN_SUBSTRINGEXPR,

    /* F77 concat '//' expressions */

	/* These functions are needed to support // in expressions.  They are
	   not directly callable, so external versions aren't needed.  */

  INTRN_CONCATEXPR,

    /* F77 character assignment statements */

	/* These functions are needed to support character assignment
	   statements.  The normal OPC_MLOAD and OPC_MSTORE don't handle the
	   blank padding F77 requires.  They are not directly callable, so
	   external versions aren't needed.  */

  INTRN_CASSIGNSTMT,


    /* F77 max/min intrinsics - MAX, AMAX, MIN, AMIN, etc. */

	/* All of these differ from the existing WHIRL nodes in that they
	   take an arbitrary number of arguments.  However; they can all be
	   transformed into a cascaded set of WHIRL OPC_MAX/MIN nodes with (if
	   needed) an OPC_CVT node on top.  F77 semantics preclude them from
	   being passed, so external versions aren't needed. */

    /* F77 abs intrinsics - ABS, etc. */

	/* All of these are already represented by existing WHIRL nodes.
	   However; F77 semantics allow them to be passed, so external versions
	   are needed. */

  INTRN_I2ABSe,
  INTRN_I4ABSe,
  INTRN_I8ABSe,
  INTRN_F4ABSe,
  INTRN_F8ABSe,
  INTRN_FQABSe,
  INTRN_F4C4ABS,
  INTRN_F4C4ABSe,
  INTRN_F8C8ABS,
  INTRN_F8C8ABSe,
  INTRN_FQCQABS,
  INTRN_FQCQABSe,

    /* F77 mod intrinsics - MOD, etc. */

	/* The integer cases are already represented by existing WHIRL nodes.
	   F77 semantics allow them to be passed, so external versions are
	   needed. */

  INTRN_I2MODe,
  INTRN_I4MODe,
  INTRN_I8MODe,
  INTRN_F4MOD,
  INTRN_F4MODe,
  INTRN_F8MOD,
  INTRN_F8MODe,
  INTRN_FQMOD,
  INTRN_FQMODe,

    /* F77 sqrt intrinsics - SQRT, etc. */

	/* All of these are already represented by existing WHIRL nodes
	   However; F77 semantics allow them to be passed, so external versions
	   are needed. */

  INTRN_F4SQRTe,
  INTRN_F8SQRTe,
  INTRN_FQSQRTe,
  INTRN_C4SQRTe,
  INTRN_C8SQRTe,
  INTRN_CQSQRTe,

    /* F77 misc. math intrinsics - CONJG, DIM, PROD, SIGN, etc. */

	/* None of these have corresponding, single WHIRL nodes.  F77 semantics
	   allow them to be passed, so external versions are needed. */

  INTRN_C4CONJG,
  INTRN_C4CONJGe,
  INTRN_C8CONJG,
  INTRN_C8CONJGe,
  INTRN_CQCONJG,
  INTRN_CQCONJGe,

  INTRN_I1DIM,
  INTRN_I2DIM,
  INTRN_I2DIMe,
  INTRN_I4DIM,
  INTRN_I4DIMe,
  INTRN_I8DIM,
  INTRN_I8DIMe,
  INTRN_F4DIM,
  INTRN_F4DIMe,
  INTRN_F8DIM,
  INTRN_F8DIMe,
  INTRN_FQDIM,
  INTRN_FQDIMe,

  INTRN_F8F4PROD,
  INTRN_F8F4PRODe,
  INTRN_FQF8PROD,
  INTRN_FQF8PRODe,

  INTRN_I1SIGN,
  INTRN_I2SIGN,
  INTRN_I2SIGNe,
  INTRN_I4SIGN,
  INTRN_I4SIGNe,
  INTRN_I8SIGN,
  INTRN_I8SIGNe,
  INTRN_F4SIGN,
  INTRN_F4SIGNe,
  INTRN_F8SIGN,
  INTRN_F8SIGNe,
  INTRN_FQSIGN,
  INTRN_FQSIGNe,

    /* F77 misc. math intrinsics - AIMAG, AINT, ANINT, IDINT, NINT, etc. */

	/* Some of these are already represented by existing WHIRL nodes.
	   F77 semantics allow these to be passed, so external versions are
	   needed.
	   Note that some of these (e.g., IDINT) are explicitly disallowed
	   as actual arguments by the F77 standard, but are allowed
	   historically on our platform (as well as on others, e.g., DEC VAX).
	   */

  INTRN_F4IMAGe,
  INTRN_F8IMAGe,
  INTRN_FQIMAGe,

  INTRN_F4AINT,
  INTRN_F4AINTe,
  INTRN_F8AINT,
  INTRN_F8AINTe,
  INTRN_FQAINT,
  INTRN_FQAINTe,

  INTRN_I2F4INTe,
  INTRN_I4F4INTe,
  INTRN_I8F4INTe,

  INTRN_I2F8IDINTe,
  INTRN_I4F8IDINTe,
  INTRN_I8F8IDINTe,

  INTRN_I2FQIQINTe,
  INTRN_I4FQIQINTe,
  INTRN_I8FQIQINTe,

  INTRN_I2F4NINT,
  INTRN_I2F4NINTe,
  INTRN_I4F4NINT,
  INTRN_I4F4NINTe,
  INTRN_I8F4NINT,
  INTRN_I8F4NINTe,

  INTRN_I2F8IDNINT,
  INTRN_I2F8IDNINTe,
  INTRN_I4F8IDNINT,
  INTRN_I4F8IDNINTe,
  INTRN_I8F8IDNINT,
  INTRN_I8F8IDNINTe,

  INTRN_I2FQIQNINT,
  INTRN_I2FQIQNINTe,
  INTRN_I4FQIQNINT,
  INTRN_I4FQIQNINTe,
  INTRN_I8FQIQNINT,
  INTRN_I8FQIQNINTe,

  INTRN_F4ANINT,
  INTRN_F4ANINTe,
  INTRN_F8ANINT,
  INTRN_F8ANINTe,
  INTRN_FQANINT,
  INTRN_FQANINTe,

    /* F77 bit intrisics - BNOT, BAND, BIOR, BXOR, BITS, BSET, BCLR, BTEST,
			   MVBITS, etc. */

	/* Some of these are already represented by existing WHIRL nodes.
	   F77 semantics allow them to be passed, so external versions are
	   needed. */

  INTRN_I2BNOTe,
  INTRN_I4BNOTe,
  INTRN_I8BNOTe,

  INTRN_I2BANDe,
  INTRN_I4BANDe,
  INTRN_I8BANDe,

  INTRN_I2BIORe,
  INTRN_I4BIORe,
  INTRN_I8BIORe,

  INTRN_I2BXORe,
  INTRN_I4BXORe,
  INTRN_I8BXORe,

  INTRN_I1BITS,
  INTRN_I2BITS,
  INTRN_I2BITSe,
  INTRN_I4BITS,
  INTRN_I4BITSe,
  INTRN_I8BITS,
  INTRN_I8BITSe,

  INTRN_I1BSET,
  INTRN_I2BSET,
  INTRN_I2BSETe,
  INTRN_I4BSET,
  INTRN_I4BSETe,
  INTRN_I8BSET,
  INTRN_I8BSETe,

  INTRN_I1BCLR,
  INTRN_I2BCLR,
  INTRN_I2BCLRe,
  INTRN_I4BCLR,
  INTRN_I4BCLRe,
  INTRN_I8BCLR,
  INTRN_I8BCLRe,

  INTRN_I1BTEST,
  INTRN_I2BTEST,
  INTRN_I2BTESTe,
  INTRN_I4BTEST,
  INTRN_I4BTESTe,
  INTRN_I8BTEST,
  INTRN_I8BTESTe,

  INTRN_I1MVBITS,
  INTRN_I2MVBITS,
  INTRN_I4MVBITS,
  INTRN_I8MVBITS,

    /* Fortran shift intrinsics - LSHIFT, RSHIFT, SHIFT, SHIFTC, etc. */

	/* Some of these are already represented by existing WHIRL nodes
	   F77 semantics allow them to be passed, so external versions are
	   needed. */

  INTRN_I1SHL,
  INTRN_I2SHL,

  INTRN_I1SHR,
  INTRN_I2SHR,

  INTRN_I1SHFT,
  INTRN_I2SHFT,
  INTRN_I2SHFTe,
  INTRN_I4SHFT,
  INTRN_I4SHFTe,
  INTRN_I8SHFT,
  INTRN_I8SHFTe,

  INTRN_I1SHFTC,
  INTRN_I2SHFTC,
  INTRN_I2SHFTCe,
  INTRN_I4SHFTC,
  INTRN_I4SHFTCe,
  INTRN_I8SHFTC,
  INTRN_I8SHFTCe,

    /* F77 character intrinsics - LEN, INDEX, LGE, LGT, LLE, LLT, etc. */

	/* None of these have corresponding, single WHIRL nodes.  F77 semantics
	   allow them to be passed, so external versions are needed. */

  INTRN_I4CLEN,
  INTRN_I4CLENe,

  INTRN_I4CINDEX,
  INTRN_I4CINDEXe,

  INTRN_CLGE,
  INTRN_CLGEe,

  INTRN_CLGT,
  INTRN_CLGTe,

  INTRN_CLLE,
  INTRN_CLLEe,

  INTRN_CLLT,
  INTRN_CLLTe,

    /* F77 transcendental intrinsics - EXP, LOG, LOG10, etc. */

	/* None of these have corresponding, single WHIRL nodes.  F77 semantics
	   allow them to be passed, so external versions are needed. */

  INTRN_F4EXP,
  INTRN_F4EXPe,
  INTRN_F8EXP,
  INTRN_F8EXPe,
  INTRN_FQEXP,
  INTRN_FQEXPe,
  INTRN_C4EXP,
  INTRN_C4EXPe,
  INTRN_C8EXP,
  INTRN_C8EXPe,
  INTRN_CQEXP,
  INTRN_CQEXPe,

  INTRN_F4LOG,
  INTRN_F4LOGe,
  INTRN_F8LOG,
  INTRN_F8LOGe,
  INTRN_FQLOG,
  INTRN_FQLOGe,
  INTRN_C4LOG,
  INTRN_C4LOGe,
  INTRN_C8LOG,
  INTRN_C8LOGe,
  INTRN_CQLOG,
  INTRN_CQLOGe,

  INTRN_F4LOG10,
  INTRN_F4LOG10e,
  INTRN_F8LOG10,
  INTRN_F8LOG10e,
  INTRN_FQLOG10,
  INTRN_FQLOG10e,

    /* F77 trigonometic intrinsics - COS, SIN, CIS, TAN, COSD, SIND, TAND,
				     COSH, SINH, TANH, ACOS, ASIN, ATAN, ACOSD,
				     ASIND, ATAND, ATAN2, ATAN2D, etc. */

	/* None of these have corresponding, single WHIRL nodes.  F77 semantics
	   allow them to be passed, so external versions are needed. */

  INTRN_F4COS,
  INTRN_F4COSe,
  INTRN_F8COS,
  INTRN_F8COSe,
  INTRN_FQCOS,
  INTRN_FQCOSe,
  INTRN_C4COS,
  INTRN_C4COSe,
  INTRN_C8COS,
  INTRN_C8COSe,
  INTRN_CQCOS,
  INTRN_CQCOSe,

  INTRN_F4SIN,
  INTRN_F4SINe,
  INTRN_F8SIN,
  INTRN_F8SINe,
  INTRN_FQSIN,
  INTRN_FQSINe,
  INTRN_C4SIN,
  INTRN_C4SINe,
  INTRN_C8SIN,
  INTRN_C8SINe,
  INTRN_CQSIN,
  INTRN_CQSINe,

  INTRN_F4CIS,
  INTRN_F4CISe,
  INTRN_F8CIS,
  INTRN_F8CISe,
  INTRN_FQCIS,
  INTRN_FQCISe,

  INTRN_F4TAN,
  INTRN_F4TANe,
  INTRN_F8TAN,
  INTRN_F8TANe,
  INTRN_FQTAN,
  INTRN_FQTANe,

  INTRN_F4COSD,
  INTRN_F4COSDe,
  INTRN_F8COSD,
  INTRN_F8COSDe,
  INTRN_FQCOSD,
  INTRN_FQCOSDe,

  INTRN_F4SIND,
  INTRN_F4SINDe,
  INTRN_F8SIND,
  INTRN_F8SINDe,
  INTRN_FQSIND,
  INTRN_FQSINDe,

  INTRN_F4TAND,
  INTRN_F4TANDe,
  INTRN_F8TAND,
  INTRN_F8TANDe,
  INTRN_FQTAND,
  INTRN_FQTANDe,

  INTRN_F4COSH,
  INTRN_F4COSHe,
  INTRN_F8COSH,
  INTRN_F8COSHe,
  INTRN_FQCOSH,
  INTRN_FQCOSHe,

  INTRN_F4SINH,
  INTRN_F4SINHe,
  INTRN_F8SINH,
  INTRN_F8SINHe,
  INTRN_FQSINH,
  INTRN_FQSINHe,

  INTRN_F4TANH,
  INTRN_F4TANHe,
  INTRN_F8TANH,
  INTRN_F8TANHe,
  INTRN_FQTANH,
  INTRN_FQTANHe,

  INTRN_F4ACOS,
  INTRN_F4ACOSe,
  INTRN_F8ACOS,
  INTRN_F8ACOSe,
  INTRN_FQACOS,
  INTRN_FQACOSe,

  INTRN_F4ASIN,
  INTRN_F4ASINe,
  INTRN_F8ASIN,
  INTRN_F8ASINe,
  INTRN_FQASIN,
  INTRN_FQASINe,

  INTRN_F4ATAN,
  INTRN_F4ATANe,
  INTRN_F8ATAN,
  INTRN_F8ATANe,
  INTRN_FQATAN,
  INTRN_FQATANe,

  INTRN_F4ACOSD,
  INTRN_F4ACOSDe,
  INTRN_F8ACOSD,
  INTRN_F8ACOSDe,
  INTRN_FQACOSD,
  INTRN_FQACOSDe,

  INTRN_F4ASIND,
  INTRN_F4ASINDe,
  INTRN_F8ASIND,
  INTRN_F8ASINDe,
  INTRN_FQASIND,
  INTRN_FQASINDe,

  INTRN_F4ATAND,
  INTRN_F4ATANDe,
  INTRN_F8ATAND,
  INTRN_F8ATANDe,
  INTRN_FQATAND,
  INTRN_FQATANDe,

  INTRN_F4ATAN2,
  INTRN_F4ATAN2e,
  INTRN_F8ATAN2,
  INTRN_F8ATAN2e,
  INTRN_FQATAN2,
  INTRN_FQATAN2e,

  INTRN_F4ATAN2D,
  INTRN_F4ATAN2De,
  INTRN_F8ATAN2D,
  INTRN_F8ATAN2De,
  INTRN_FQATAN2D,
  INTRN_FQATAN2De,

    /* F77 sizeof intrinsic - SIZEOF, etc. */

	/* All of these will have been converted to either constant nodes or
	   the LEN intrinsic. */

    /* F77 addressing intrinsics - %VAL, %REF, %LOC, etc. */

	/* All of these will have been converted to corresponding WHIRL
	   nodes. */

    /* C misc. intrinsics - currently, just alloca(). */

  INTRN_U4I4ALLOCA,
  INTRN_U8I8ALLOCA,

    /* F77 misc. intrinsics - MALLOC, FREE, DATE, ERRSNS, EXIT, TIME,
			      SECNDS, etc. */

	/* None of these have corresponding, single WHIRL nodes.  F77 semantics
	   do not allow them to be passed, so external versions aren't
	   needed. */

  INTRN_U4I4MALLOC,
  INTRN_U8I8MALLOC,

  INTRN_U4FREE,
  INTRN_U8FREE,

  INTRN_MDATE,
  INTRN_I1DATE,
  INTRN_I2DATE,
  INTRN_I4DATE,
  INTRN_I8DATE,

  INTRN_I1ERRSNS,
  INTRN_I2ERRSNS,
  INTRN_I4ERRSNS,
  INTRN_I8ERRSNS,

  INTRN_VEXIT,
  INTRN_I1EXIT,
  INTRN_I2EXIT,
  INTRN_I4EXIT,
  INTRN_I8EXIT,

  INTRN_TIME,

  INTRN_F4SECNDS,
  INTRN_F8SECNDS,

    /* Fortran pause/stop statement - PAUSE, STOP, etc. */

	/* These are made intrinsics so that the optimizer can make use of
	   their special properties. */

  INTRN_PAUSE,
  INTRN_STOP,

    /* Fortran 90 intrinsics */

  INTRN_F4I4RAN,
  INTRN_F4I8RAN,
  INTRN_F8I4RAN,
  INTRN_F8I8RAN,
  INTRN_FQI4RAN,
  INTRN_FQI8RAN,

    /* C intrinsics */

    /* C++ intrinsics */

    /* LNO generated intrinsics */

	/* These additional intrinsics are potentially generated by LNO. */

  INTRN_I4DIVFLOOR,
  INTRN_I8DIVFLOOR,
  INTRN_U4DIVFLOOR,
  INTRN_U8DIVFLOOR,

  INTRN_I4DIVCEIL,
  INTRN_I8DIVCEIL,
  INTRN_U4DIVCEIL,
  INTRN_U8DIVCEIL,

  INTRN_I4MODFLOOR,
  INTRN_I8MODFLOOR,
  INTRN_U4MODFLOOR,
  INTRN_U8MODFLOOR,

  INTRN_I4MODCEIL,
  INTRN_I8MODCEIL,
  INTRN_U4MODCEIL,
  INTRN_U8MODCEIL,

    /* Internal to alloca */
  INTRN_U4I4SETSTACKPOINTER,
  INTRN_U8I8SETSTACKPOINTER,
  INTRN_U4READSTACKPOINTER,
  INTRN_U8READSTACKPOINTER,

    /* OS kernel intrinsics */

  INTRN_ADD_AND_FETCH_I4,
  INTRN_SUB_AND_FETCH_I4,
  INTRN_OR_AND_FETCH_I4,
  INTRN_XOR_AND_FETCH_I4,
  INTRN_AND_AND_FETCH_I4,
  INTRN_NAND_AND_FETCH_I4,

  INTRN_FETCH_AND_ADD_I4,
  INTRN_FETCH_AND_SUB_I4,
  INTRN_FETCH_AND_OR_I4,
  INTRN_FETCH_AND_XOR_I4,
  INTRN_FETCH_AND_AND_I4,
  INTRN_FETCH_AND_NAND_I4,

  INTRN_ADD_AND_FETCH_I8,
  INTRN_SUB_AND_FETCH_I8,
  INTRN_OR_AND_FETCH_I8,
  INTRN_XOR_AND_FETCH_I8,
  INTRN_AND_AND_FETCH_I8,
  INTRN_NAND_AND_FETCH_I8,

  INTRN_FETCH_AND_ADD_I8,
  INTRN_FETCH_AND_SUB_I8,
  INTRN_FETCH_AND_OR_I8,
  INTRN_FETCH_AND_XOR_I8,
  INTRN_FETCH_AND_AND_I8,
  INTRN_FETCH_AND_NAND_I8,

  INTRN_LOCK_TEST_AND_SET_I4,
  INTRN_LOCK_TEST_AND_SET_I8,

  INTRN_LOCK_RELEASE_I4,
  INTRN_LOCK_RELEASE_I8,

  INTRN_COMPARE_AND_SWAP_I4,
  INTRN_COMPARE_AND_SWAP_I8,

  INTRN_SYNCHRONIZE,

  INTRN_RETURN_ADDRESS,

    /* F77 (internal only) I/O intrinsics */
  INTRN_U4I1ADRTMP,
  INTRN_U4I2ADRTMP,
  INTRN_U4I4ADRTMP,
  INTRN_U4I8ADRTMP,
  INTRN_U4F4ADRTMP,
  INTRN_U4F8ADRTMP,
  INTRN_U4FQADRTMP,
  INTRN_U4C4ADRTMP,
  INTRN_U4C8ADRTMP,
  INTRN_U4CQADRTMP,
  INTRN_U4VADRTMP,
  INTRN_U8I1ADRTMP,
  INTRN_U8I2ADRTMP,
  INTRN_U8I4ADRTMP,
  INTRN_U8I8ADRTMP,
  INTRN_U8F4ADRTMP,
  INTRN_U8F8ADRTMP,
  INTRN_U8FQADRTMP,
  INTRN_U8C4ADRTMP,
  INTRN_U8C8ADRTMP,
  INTRN_U8CQADRTMP,
  INTRN_U8VADRTMP,

  INTRN_I4VALTMP,
  INTRN_I8VALTMP,
  INTRN_U4VALTMP,
  INTRN_U8VALTMP,
  INTRN_F4VALTMP,
  INTRN_F8VALTMP,
  INTRN_FQVALTMP,
  INTRN_C4VALTMP,
  INTRN_C8VALTMP,
  INTRN_CQVALTMP,

    /* C intrinsics */

  INTRN_BCOPY,
  INTRN_BCMP,
  INTRN_BZERO,

  INTRN_MEMCCPY,
  INTRN_MEMCHR,
  INTRN_MEMCMP,
  INTRN_MEMCPY,
  INTRN_MEMMOVE,
  INTRN_MEMSET,

  INTRN_STRCMP,
  INTRN_STRNCMP,
  INTRN_STRCPY,
  INTRN_STRNCPY,
  INTRN_STRLEN,

  INTRN_PRINTF,
  INTRN_FPRINTF,
  INTRN_SPRINTF,
  INTRN_PRINTW,
  INTRN_SCANF,
  INTRN_FSCANF,
  INTRN_SSCANF,
  INTRN_FPUTC,
  INTRN_FPUTS,
  INTRN_FGETC,
  INTRN_FGETS,

  INTRN_F4VACOS,
  INTRN_F8VACOS,
  INTRN_F4VASIN,
  INTRN_F8VASIN,
  INTRN_F4VATAN,
  INTRN_F8VATAN,
  INTRN_F4VCOS,
  INTRN_F8VCOS,
  INTRN_F4VEXP,
  INTRN_F8VEXP,
  INTRN_F4VLOG,
  INTRN_F8VLOG,
  INTRN_F4VSIN,
  INTRN_F8VSIN,
  INTRN_F4VSQRT,
  INTRN_F8VSQRT,
  INTRN_F4VTAN,
  INTRN_F8VTAN,

  INTRN_NARY_ADD,
  INTRN_NARY_MPY,

    /* F77 intrinsics needed for -trapuv - MALLOC */

  INTRN_U4I4TRAPUV_MALLOC,
  INTRN_U8I8TRAPUV_MALLOC,

    /* F77 intrinsics needed for -check_bounds */

  INTRN_F77_BOUNDS_ERR,

    /* F77 intrinsics needed for DSM */

  INTRN_DSM_NUMTHREADS,
  INTRN_DSM_CHUNKSIZE,
  INTRN_DSM_THIS_CHUNKSIZE,
  INTRN_DSM_REM_CHUNKSIZE,
  INTRN_DSM_NUMCHUNKS,
  INTRN_DSM_THIS_THREADNUM,
  INTRN_DSM_DISTRIBUTION_BLOCK,
  INTRN_DSM_DISTRIBUTION_STAR,
  INTRN_DSM_ISRESHAPED,
  INTRN_DSM_ISDISTRIBUTED,
  INTRN_DSM_THIS_STARTINDEX,
  INTRN_DSM_DISTRIBUTION_CYCLIC,

    /* More OS kernel intrinsics -- added here so we wouldn't have to
       make an incompatible Whirl change */

  INTRN_MPY_AND_FETCH_I4,
  INTRN_MIN_AND_FETCH_I4,
  INTRN_MAX_AND_FETCH_I4,
  INTRN_FETCH_AND_MPY_I4,
  INTRN_FETCH_AND_MIN_I4,
  INTRN_FETCH_AND_MAX_I4,
  INTRN_MPY_AND_FETCH_I8,
  INTRN_MIN_AND_FETCH_I8,
  INTRN_MAX_AND_FETCH_I8,
  INTRN_FETCH_AND_MPY_I8,
  INTRN_FETCH_AND_MIN_I8,
  INTRN_FETCH_AND_MAX_I8,

  INTRN_ADD_AND_FETCH_F4,
  INTRN_SUB_AND_FETCH_F4,
  INTRN_OR_AND_FETCH_F4,
  INTRN_XOR_AND_FETCH_F4,
  INTRN_AND_AND_FETCH_F4,
  INTRN_NAND_AND_FETCH_F4,
  INTRN_MPY_AND_FETCH_F4,
  INTRN_MIN_AND_FETCH_F4,
  INTRN_MAX_AND_FETCH_F4,

  INTRN_FETCH_AND_ADD_F4,
  INTRN_FETCH_AND_SUB_F4,
  INTRN_FETCH_AND_OR_F4,
  INTRN_FETCH_AND_XOR_F4,
  INTRN_FETCH_AND_AND_F4,
  INTRN_FETCH_AND_NAND_F4,
  INTRN_FETCH_AND_MPY_F4,
  INTRN_FETCH_AND_MIN_F4,
  INTRN_FETCH_AND_MAX_F4,

  INTRN_ADD_AND_FETCH_F8,
  INTRN_SUB_AND_FETCH_F8,
  INTRN_OR_AND_FETCH_F8,
  INTRN_XOR_AND_FETCH_F8,
  INTRN_AND_AND_FETCH_F8,
  INTRN_NAND_AND_FETCH_F8,
  INTRN_MPY_AND_FETCH_F8,
  INTRN_MIN_AND_FETCH_F8,
  INTRN_MAX_AND_FETCH_F8,

  INTRN_FETCH_AND_ADD_F8,
  INTRN_FETCH_AND_SUB_F8,
  INTRN_FETCH_AND_OR_F8,
  INTRN_FETCH_AND_XOR_F8,
  INTRN_FETCH_AND_AND_F8,
  INTRN_FETCH_AND_NAND_F8,
  INTRN_FETCH_AND_MPY_F8,
  INTRN_FETCH_AND_MIN_F8,
  INTRN_FETCH_AND_MAX_F8,

  INTRN_LOCK_ACQUIRE_I4,
  INTRN_LOCK_ACQUIRE_I8,

    /* Start of F90 specific intrinsics */

    /* The next four are for allocations produced by the F90 lowerer, and
       are internal to the lowerer */
  INTRN_F90_STACKTEMPALLOC,
  INTRN_F90_HEAPTEMPALLOC,
  INTRN_F90_STACKTEMPFREE,
  INTRN_F90_HEAPTEMPFREE,

#include "wintrinsic90.h" /* INTRN_LAST_F90_INTRINSIC = 685 */

  INTRN_MP_IN_PARALLEL_REGION ,
  INTRN_RT_ERR ,
  INTRN_OMP_DO_WORKSHARING ,
  INTRN_OMP_TEST_LOCK ,
  INTRN_OMP_GET_NUM_THREADS ,
  INTRN_OMP_GET_MAX_THREADS ,
  INTRN_OMP_GET_THREAD_NUM ,
  INTRN_OMP_GET_NUM_PROCS ,
  INTRN_OMP_IN_PARALLEL	,
  INTRN_OMP_GET_DYNAMIC ,
  INTRN_OMP_GET_NESTED ,

/* Hand-added F90 intrinsics */

    INTRN_I1IEEE_INT,
    INTRN_I2IEEE_INT,
    INTRN_I4IEEE_INT,
    INTRN_I8IEEE_INT,
    INTRN_F4IEEE_INT,
    INTRN_F8IEEE_INT,
    INTRN_FQIEEE_INT,
    INTRN_F90BOUNDS_CHECK,
 
/* Two more intrisics used only by the F90 lowerer/front-end */
    INTRN_F90_DYNAMICTEMPALLOC ,
    INTRN_F90_DYNAMICTEMPFREE ,

/* More checking */
    INTRN_F90CONFORM_CHECK ,
  
    /* End of intrinsics list */
/* More C intrinsics */

  INTRN_C_F4FLOOR,
  INTRN_C_F8FLOOR,
  INTRN_C_FQFLOOR,
  INTRN_C_F4CEIL ,
  INTRN_C_F8CEIL ,
  INTRN_C_FQCEIL ,
  INTRN_C_F4TRUNC,
  INTRN_C_F8TRUNC,
  INTRN_C_FQTRUNC,

/* Super Computing ABI Intrinsics */

  INTRN_I4DSHIFTL,
  INTRN_I8DSHIFTL,
  INTRN_I4DSHIFTR,
  INTRN_I8DSHIFTR,
  INTRN_I4GBIT   ,
  INTRN_I8GBIT   ,
  INTRN_I4GBITS  ,
  INTRN_I8GBITS  ,
  INTRN_I4MASK   ,
  INTRN_I8MASK   ,
  INTRN_I4MASKL  ,
  INTRN_I8MASKL  ,
  INTRN_I4MASKR  ,
  INTRN_I8MASKR  ,
  INTRN_I4PBIT   ,
  INTRN_I8PBIT   ,
  INTRN_I4PBITS  ,
  INTRN_I8PBITS  ,
  INTRN_I4POPPAR ,
  INTRN_I8POPPAR ,
  INTRN_I4RTC    ,
  INTRN_I8RTC    ,

  INTRN_GETF_EXP ,
  INTRN_SETF_EXP ,
  INTRN_GETF_SIG ,
  INTRN_SETF_SIG ,

  INTRN_FMERGE_NS,
  INTRN_FMERGE_S ,
  INTRN_FMERGE_SE,

  /* F90 stop */
  INTRN_STOP_F90 ,

  /* log10 */
  INTRN_F4VLOG10 ,
  INTRN_F8VLOG10 ,

  /* gcc divide intrinsics */
  INTRN_MODSI3   ,
  INTRN_UMODSI3  ,
  INTRN_DIVSI3   ,
  INTRN_UDIVSI3  ,
  INTRN_MODDI3   ,
  INTRN_UMODDI3  ,
  INTRN_DIVDI3   ,
  INTRN_UDIVDI3  ,
  INTRN_DIVSF3   ,
  INTRN_DIVDF3   ,

  /* gcc extensions */
  INTRN_I4FFS,

  /* linux intrinsics */
  INTRN_SINCOSF  ,
  INTRN_SINCOS   ,
  INTRN_SINCOSL  ,

#ifdef KEY
  /* gcc stuff */
  INTRN_U4READFRAMEPOINTER,
  INTRN_U8READFRAMEPOINTER,
  INTRN_APPLY_ARGS,
  INTRN_APPLY     ,
  INTRN_RETURN    ,

  /* x86-64 vararg support */
  INTRN_VA_START  ,
  INTRN_SAVE_XMMS ,

  /* builtins */
  INTRN_CONSTANT_P,

  /* C99 builtins */
  INTRN_ISGREATER      ,
  INTRN_ISGREATEREQUAL ,
  INTRN_ISLESS         ,
  INTRN_ISLESSEQUAL    ,
  INTRN_ISLESSGREATER  ,
  INTRN_ISORDERED      ,
  INTRN_ISUNORDERED    ,

  /* Saturation arithmetic */
  INTRN_SUBSU2         ,
  INTRN_SUBSV16I2      ,

  /* g++ 3.4 builtins */
  INTRN_POPCOUNT       ,
  INTRN_PARITY         ,
  INTRN_CLZ            ,
  INTRN_CTZ64		,
  INTRN_CLZ32          ,
  INTRN_CTZ            ,

  /* in GNU libm */
  INTRN_F4CBRT         ,
  INTRN_F8CBRT         ,

#ifdef TARG_X8664
  /* Shorter vector math functions */
  INTRN_V16F4SIN       ,
  INTRN_V16F4EXP       ,
  INTRN_V16F4EXPEXPR   ,
  INTRN_V16F4LOG       ,
  INTRN_V16F4COS       ,
  INTRN_V16F8SIN       ,
  INTRN_V16F8EXP       ,
  INTRN_V16F8LOG       ,
  INTRN_V16F8COS       ,
  INTRN_V16F8EXPEXPR   ,
  INTRN_V16F8LOG10     ,
  INTRN_V16F8SINCOS    ,

  /* Intrinsic to represent a complex C8 multiply (multiply and addsub) */
  INTRN_V16C8MPY_ADDSUB,
  
  /* Intrinsic to represent complex C8 conjugate */
  INTRN_V16C8CONJG     ,

  /* GNU x8664 builtins */
  INTRN_PADDSB	       ,
  INTRN_PADDSW         ,
  INTRN_PSUBSB         ,
  INTRN_PSUBSW         ,
  INTRN_PADDUSB        ,
  INTRN_PADDUSW        ,
  INTRN_PSUBUSB        ,
  INTRN_PSUBUSW        ,
  INTRN_PMULLW         ,
  INTRN_PMULHW         ,
  INTRN_PAND           ,
  INTRN_PCMPEQB        ,
  INTRN_PCMPEQW        ,
  INTRN_PCMPEQD        ,
  INTRN_PCMPGTB        ,
  INTRN_PCMPGTW        ,
  INTRN_PCMPGTD        ,
  INTRN_PUNPCKHBW      ,
  INTRN_PUNPCKHWD      ,
  INTRN_PUNPCKHDQ      ,
  INTRN_PUNPCKLBW      ,
  INTRN_PUNPCKLWD      ,
  INTRN_PUNPCKLDQ      ,
  INTRN_PACKSSWB       ,
  INTRN_PACKSSDW       ,
  INTRN_PACKUSWB       ,
  INTRN_PMULHUW        ,
  INTRN_PAVGB          ,
  INTRN_PAVGW          ,
  INTRN_PSADBW         ,
  INTRN_PMAXUB         ,
  INTRN_PMAXSW         ,
  INTRN_PMINUB         ,
  INTRN_PMINSW         ,
  INTRN_PEXTRW0        ,
  INTRN_PEXTRW1        ,
  INTRN_PEXTRW2        ,
  INTRN_PEXTRW3        ,
  INTRN_PINSRW0        ,
  INTRN_PINSRW1        ,
  INTRN_PINSRW2        ,
  INTRN_PINSRW3        ,
  INTRN_PMOVMSKB       ,
  INTRN_MOVNTQ         ,
  INTRN_SFENCE         ,
  INTRN_COMIEQSS       ,
  INTRN_ADDPS          ,
  INTRN_SUBPS          ,
  INTRN_MULPS          ,
  INTRN_DIVPS          ,
  INTRN_ADDSS          ,
  INTRN_SUBSS          ,
  INTRN_MULSS          ,
  INTRN_DIVSS          ,
  INTRN_CMPEQPS        ,
  INTRN_CMPLTPS        ,
  INTRN_CMPLEPS        ,
  INTRN_CMPGTPS        ,
  INTRN_CMPGEPS        ,
  INTRN_CMPUNORDPS     ,
  INTRN_CMPNEQPS       ,
  INTRN_CMPNLTPS       ,
  INTRN_CMPNLEPS       ,
  INTRN_CMPNGTPS       ,
  INTRN_CMPNGEPS       ,
  INTRN_CMPORDPS       ,
  INTRN_CMPEQSS        ,
  INTRN_CMPLTSS        ,
  INTRN_CMPLESS        ,
  INTRN_CMPUNORDSS     ,
  INTRN_CMPNEQSS       ,
  INTRN_CMPNLTSS       ,
  INTRN_CMPNLESS       ,
  INTRN_CMPORDSS       ,
  INTRN_MAXPS          ,
  INTRN_MAXSS          ,
  INTRN_MINPS          ,
  INTRN_MINSS          ,
  INTRN_ANDPS          ,
  INTRN_ANDNPS         ,
  INTRN_ORPS           ,
  INTRN_XORPS          ,
  INTRN_MOVSS          ,
  INTRN_MOVHLPS        ,
  INTRN_MOVLHPS        ,
  INTRN_UNPCKHPS       ,
  INTRN_UNPCKLPS       ,
  INTRN_RCPPS          ,
  INTRN_RSQRTPS        ,
  INTRN_SQRTPS         ,
  INTRN_RCPSS          ,
  INTRN_RSQRTSS        ,
  INTRN_SQRTSS         ,
  INTRN_SHUFPS         ,
  INTRN_EMMS           ,
  INTRN_PADDQ          ,
  INTRN_PSUBQ          ,
  INTRN_UNIMP_PURE     ,
  INTRN_UNIMP          ,
  INTRN_LOADAPS        ,
  INTRN_STOREAPS       ,
  INTRN_COSL           ,
  INTRN_SINL           ,
  INTRN_PSLLDQ         ,
  INTRN_PSLLW          ,
  INTRN_PSLLD          ,
  INTRN_PSLLQ          ,
  INTRN_PSRLW          ,
  INTRN_PSRLD          ,
  INTRN_PSRLQ          ,
  INTRN_PSRAW          ,
  INTRN_PSRAD          ,
  INTRN_V16F4SINH      ,
  INTRN_V16F4COSH      ,
  INTRN_V16F8SINH      ,
  INTRN_V16F8COSH      ,
  INTRN_MOVNTDQ        ,
  INTRN_LOADD          ,
  INTRN_MOVNTPS        ,
  INTRN_SSE_ZERO       ,
  INTRN_CLRTI          ,
  INTRN_PSHUFD         ,
  INTRN_LOADSS         ,
  INTRN_SIGNV16F4      ,
  INTRN_SIGNV16F8      ,
  INTRN_SHUFPD         ,
  INTRN_XORPD          ,
  INTRN_ANDPD          ,
  INTRN_ORPD           ,
  INTRN_STORELPD       ,
  INTRN_STOREHPD       ,
  INTRN_LOADLPD        ,
  INTRN_LOADHPD        ,
  INTRN_UNPCKLPD       ,
  INTRN_UNPCKHPD       ,
  INTRN_LFENCE         ,
  INTRN_MFENCE         ,
  INTRN_PSHUFW         ,
  INTRN_PSRLDQ         ,
  INTRN_LOADDQA        ,
  INTRN_LOADDQU        ,
  INTRN_STOREDQA       ,
  INTRN_STOREDQU       ,
  INTRN_VEC_INIT_V2SI,
  INTRN_VEC_EXT_V2SI,
  INTRN_PMADDWD,
  INTRN_PSLLW_MMX,
  INTRN_PSLLD_MMX,
  INTRN_PSRLW_MMX,
  INTRN_PSRLD_MMX,
  INTRN_PSRAW_MMX,
  INTRN_PSRAD_MMX,
  INTRN_PAND_MMX,
  INTRN_PANDN_MMX,
  INTRN_POR_MMX,
  INTRN_PXOR_MMX, 
  INTRN_COMILTSS,
  INTRN_COMILESS,
  INTRN_COMIGTSS,
  INTRN_COMIGESS,
  INTRN_COMINEQSS,
  INTRN_COMIEQSD	,
  INTRN_COMILTSD	,
  INTRN_COMILESD	,
  INTRN_COMIGTSD	,
  INTRN_COMIGESD	,
  INTRN_COMINEQSD	,
  INTRN_CVTPI2PS	,
  INTRN_CVTPS2PI	,
  INTRN_CVTTPS2PI	,
  INTRN_CVTPI2PD	,
  INTRN_CVTPD2PI	,
  INTRN_CVTTPD2PI	,
  INTRN_CVTSI2SS	,
  INTRN_CVTSI642SS	,
  INTRN_CVTSS2SI	,
  INTRN_CVTSS2SI64	,
  INTRN_CVTTSS2SI	,
  INTRN_CVTTSS2SI64	,
  INTRN_CVTSI2SD	,
  INTRN_CVTSI642SD	,
  INTRN_CVTSD2SI	,
  INTRN_CVTSD2SI64	,
  INTRN_CVTTSD2SI	,
  INTRN_CVTTSD2SI64	,
  INTRN_CVTDQ2PS	,
  INTRN_CVTPS2DQ	,
  INTRN_CVTTPS2DQ	,
  INTRN_CVTDQ2PD	,
  INTRN_CVTPD2DQ	,
  INTRN_CVTTPD2DQ	,
  INTRN_CVTPD2PS	,
  INTRN_CVTPS2PD	,
  INTRN_CVTSD2SS	,
  INTRN_CVTSS2SD	,
  INTRN_LOADUPS		,
  INTRN_STOREUPS	,
  INTRN_LOADUPD		,
  INTRN_STOREUPD	,
  INTRN_LOADHPS		,
  INTRN_STOREHPS	,
  INTRN_LOADLPS		,
  INTRN_STORELPS	,
  INTRN_MOVMSKPS	,
  INTRN_MOVMSKPD	,
  INTRN_MASKMOVDQU	,
  INTRN_MASKMOVQ	,
  INTRN_MOVNTPD		,
  INTRN_MOVNTI		,
  INTRN_STMXCSR		,
  INTRN_LDMXCSR		,
  INTRN_MOVSD           ,
  INTRN_PSHUFLW         ,
  INTRN_PSHUFHW         ,
  INTRN_MOVNTSS         ,
  INTRN_MOVNTSD         ,
  INTRN_EXTRQI          ,
  INTRN_EXTRQ           ,
  INTRN_INSERTQI        ,
  INTRN_INSERTQ         ,
  INTRN_PADDD128        ,  
  INTRN_PADDW128        ,
  INTRN_PMOVMSKB128     ,    
  INTRN_V16F4LOG10      ,
  
  #define INTRINSIC_LAST_TMP  INTRN_V16F4LOG10
#elif defined(TARG_SL)

  INTRN_VBUF_OFFSET ,
  INTRN_SL_INTRN_BGN = INTRN_VBUF_OFFSET,
  INTRN_SBUF_OFFSET  ,
  INTRN_C2_MVGR_R2G ,
  INTRN_SL2_BEGIN = INTRN_C2_MVGR_R2G ,
  INTRN_C2_MVGR_G2R ,
  INTRN_C2_MVGR_G2S ,
  INTRN_C2_MVGR_S2G ,
  INTRN_C2_MVGC_C2G ,
  INTRN_C2_MVGC_G2C ,
  INTRN_C2_LD_V ,
  INTRN_C2_LD_G ,
  INTRN_C2_LD_S ,
  INTRN_C2_ST_V ,
  INTRN_C2_ST_G ,
  INTRN_C2_LD_G_IMM, 
  INTRN_C2_LD_C_IMM, 
  INTRN_C2_LD_V_IMM ,
  INTRN_C2_ST_V_IMM ,
  INTRN_C2_ST_C_IMM ,
  INTRN_C2_ST_G_IMM ,
  INTRN_C2_VADDS ,
  INTRN_C2_VSUBS ,
  INTRN_C2_VMUL ,
  INTRN_C2_VNEG ,
  INTRN_C2_VMACS ,
  INTRN_C2_VSHFT ,
  INTRN_C2_VCLP ,
  INTRN_C2_VCLG ,
  INTRN_C2_VCMOV ,
  INTRN_C2_LCZERO ,
  INTRN_C2_VRND ,
  INTRN_C2_VSPAS ,
  INTRN_C2_VSPEL ,
  INTRN_C2_MMUL_S123 ,
  INTRN_C2_MMUL ,
  INTRN_C2_VMOV ,
  INTRN_C2_VCOPY ,
  INTRN_C2_VCMPR ,
  INTRN_C2_SAD ,
  INTRN_C2_SATD ,
  INTRN_C2_INTRA ,
  INTRN_C2_MVSEL ,
  INTRN_C2_BCST ,
  INTRN_C2_VLCS ,
  INTRN_C2_VLCS_R ,
  INTRN_C2_ADDS ,
  INTRN_C2_ADDS_R, 
  INTRN_C2_SUBS ,
  INTRN_C2_SUBS_R, 
  INTRN_C2_MULS ,
  INTRN_C2_MULS_R, 
  INTRN_C2_MADS ,
  INTRN_C2_SMADS ,
  INTRN_C2_MINMAX ,
  INTRN_C2_CMOV ,
  INTRN_C2_MOV ,
  INTRN_C2_MOV_R, 
  INTRN_C2_CLP ,
  INTRN_C2_CHKRNG ,
  INTRN_C2_SCOND  ,
  INTRN_C2_SCOND_R ,
  INTRN_C2_BOP ,
  INTRN_C2_BDEP ,
  INTRN_C2_BXTR ,
  INTRN_C2_BXTRR48 ,
  INTRN_C2_SUM4 ,
  INTRN_C2_SUM4_R, 
  INTRN_C2_MED ,
  INTRN_C2_FORK ,
  INTRN_C2_JOINT ,
  INTRN_C2_LD_V2G ,
  INTRN_C2_ST_G2V  , 
  INTRN_C2_LD_V2G_IMM ,
  INTRN_C2_ST_G2V_IMM ,
  INTRN_C2_MVGR_R2S ,
  INTRN_C2_GSUMS  ,
  INTRN_C2_WRAP  ,
  INTRN_C2_CLZOB  ,
  INTRN_C2_THCTRL ,
  INTRN_C2_SCOND_R_WB ,
  INTRN_C2_VSPEL_MAC ,
  INTRN_C2_SUM3_SADDR ,
  INTRN_PERIPHERAL_RW_BEGIN , // add peripheral here
  INTRN_PERIPHERAL_RW_END ,
  INTRN_VBUF_ABSOLUTE ,
  INTRN_SL_INTRN_END = INTRN_VBUF_ABSOLUTE ,
  INTRN_SL2_END = INTRN_VBUF_ABSOLUTE ,

  INTRN_MUL_SHIFT_HI ,
  INTRN_C3_INTRINSIC_BEGIN = INTRN_MUL_SHIFT_HI,
  INTRN_MUL_SHIFT ,
  INTRN_C3_LEAD ,
  INTRN_C3_MAC ,
  INTRN_C3_MACN ,
  INTRN_C3_ROUND ,
  INTRN_C3_SAADDS ,
  INTRN_C3_SASUBS ,
  INTRN_C3_MULA ,
  INTRN_C3_INIT_ACC ,
  INTRN_C3_SAVE_ACC ,
  INTRN_C3_TRBACK ,
  INTRN_MPY_32_16 ,
  INTRN_C3_MACD ,
  INTRN_C3_SAADDSH ,
  INTRN_C3_SASUBSH ,
  INTRN_C3_MVFS ,
  INTRN_C3_INIT_ADDR ,
  INTRN_C3_SAVE_ADDR ,
  INTRN_C3_MAC_A ,
  INTRN_C3_MACN_A ,
  INTRN_C3_DMAC_A ,
  INTRN_C3_DMACN_A ,
  INTRN_C3_INIT_DACC ,
  INTRN_C3_SAVE_DACC ,
  INTRN_C3_SAADDH_A ,
  INTRN_C3_SASUBH_A ,
  INTRN_C3_SAMULSH ,
  INTRN_C3_MULA_A ,
  INTRN_C3_SAMULH_A ,
  INTRN_C3_PTR ,
  INTRN_C3_MAC_AR ,
  INTRN_C3_MACN_AR ,
  INTRN_C3_MULA_AR ,
  INTRN_C3_INIT_PTR ,
  INTRN_C3_VITERBI ,
  INTRN_C3_DMULT ,
  INTRN_C3_DMULT_A ,
  INTRN_C3_DMULTN ,
  INTRN_C3_DMULTN_A ,
  INTRN_SET_CIRCBUF ,
  INTRN_RESET_CIRCBUF ,
  INTRN_C3_DADD ,
  INTRN_C3_DSUB ,
  INTRN_C3_FFT ,
  INTRN_C3_FFTLD ,
  INTRN_C3_FFTST ,
  INTRN_DEPOSIT ,
  INTRN_EXTRACT ,
  INTRN_C3_BITR ,
  INTRN_C3_DMAC ,
  INTRN_C3_DMACN ,
  INTRN_C3_LOAD ,
  INTRN_C3_STORE ,
  INTRN_C3_REVB ,
  INTRN_C3_DSHL_I ,
  INTRN_C3_DSHR_I ,
  INTRN_C3_MAC_I ,
  INTRN_C3_MACN_I ,
  INTRN_C3_MULA_I ,
  INTRN_C3_SAADD_A ,
  INTRN_C3_SADDHA ,
  INTRN_C3_SAADDHA_A , 
  INTRN_C3_SASUB_A ,
  INTRN_C3_COPY_ADDR ,
  INTRN_C3_SET_ADDR ,
  INTRN_CVT64_HIGH ,
  INTRN_CVT64_LOW ,
  INTRN_CVT32 ,
  INTRN_LONGLONG_CVT64_HIGH ,
  INTRN_LONGLONG_CVT64_LOW ,
  INTRN_MUL_SHIFT_HI_U ,
  INTRN_EXTRACTU ,
  INTRN_MUL_SHIFT_U ,
  INTRN_C3AADDA ,
  INTRN_C3BITR ,
  INTRN_C3CS ,
  INTRN_C3DADD ,
  INTRN_C3DMAC ,
  INTRN_C3DMAC_A ,
  INTRN_C3DMULA ,
  INTRN_C3DMULA_A ,
  INTRN_C3DSHLL_I ,
  INTRN_C3FFE ,
  INTRN_C3LD ,
  INTRN_C3ST ,
  INTRN_C3LEAD ,
  INTRN_C3MAC ,
  INTRN_C3MAC_A ,
  INTRN_C3MAC_AR ,
  INTRN_C3MAC_I ,
  INTRN_C3MULA ,
  INTRN_C3MULA_A ,
  INTRN_C3MULA_AR ,
  INTRN_C3MULA_I ,
  INTRN_C3MULS ,
  INTRN_C3MULUS ,
  INTRN_C3REVB ,
  INTRN_C3ROUND ,
  INTRN_C3SAADD_A ,
  INTRN_C3SAADDH_A ,
  INTRN_C3SAADDS ,
  INTRN_C3SAADDSH ,
  INTRN_C3SADDA ,
  INTRN_C3SADDA_A ,
  INTRN_C3SAMULH_A ,
  INTRN_C3SAMULSH ,
  INTRN_C3SHAV ,
  INTRN_C3SHLAFA_I ,
  INTRN_C3SHLATA_I ,
  INTRN_C3SHLA_I ,
  INTRN_C3SUBC ,
  INTRN_C3NEGA ,
  INTRN_INIT_HI ,
  INTRN_COPY_HI ,
  INTRN_C3_INTRINSIC_END = INTRN_COPY_HI,
  // end new c3 instruction version
#endif // TARG_X8664
 
#ifdef TARG_NVISA
  INTRN_BRKPT,
  INTRN_TRAP,
  INTRN_C_F4ROUND,
  INTRN_C_F8ROUND,
  INTRN_F4EXP2,
  INTRN_F8EXP2,
  INTRN_F4LOG2,
  INTRN_F8LOG2,
  INTRN_F4SATURATE,
  INTRN_F8SATURATE,
  INTRN_CLOCK,
  INTRN_MUL24,
  INTRN_UMUL24,
  INTRN_F4MA,
  INTRN_F8MA_ROUND,
  INTRN_F8MA_TRUNC,
  INTRN_F8MA_FLOOR,
  INTRN_F8MA_CEIL,
  INTRN_F4ADD_ROUND,
  INTRN_F4ADD_TRUNC,
  INTRN_F8ADD_ROUND,
  INTRN_F8ADD_TRUNC,
  INTRN_F8ADD_FLOOR,
  INTRN_F8ADD_CEIL,
  INTRN_F4MUL_ROUND,
  INTRN_F4MUL_TRUNC,
  INTRN_F8MUL_ROUND,
  INTRN_F8MUL_TRUNC,
  INTRN_F8MUL_FLOOR,
  INTRN_F8MUL_CEIL,
  INTRN_I4SAD,
  INTRN_U4SAD,
  INTRN_F4F8CVT_ROUND,
  INTRN_F4F8CVT_TRUNC,
  INTRN_F4F8CVT_FLOOR,
  INTRN_F4F8CVT_CEIL,
  INTRN_I4F8CVT_ROUND,
  INTRN_I4F8CVT_TRUNC,
  INTRN_I4F8CVT_FLOOR,
  INTRN_I4F8CVT_CEIL,
  INTRN_U4F8CVT_ROUND,
  INTRN_U4F8CVT_TRUNC,
  INTRN_U4F8CVT_FLOOR,
  INTRN_U4F8CVT_CEIL,
  INTRN_F8I4CVT_ROUND,
  INTRN_F8I4CVT_TRUNC,
  INTRN_F8I4CVT_FLOOR,
  INTRN_F8I4CVT_CEIL,
  INTRN_F8U4CVT_ROUND,
  INTRN_F8U4CVT_TRUNC,
  INTRN_F8U4CVT_FLOOR,
  INTRN_F8U4CVT_CEIL,
  INTRN_F4I4CVT_ROUND,
  INTRN_F4I4CVT_TRUNC,
  INTRN_F4I4CVT_FLOOR,
  INTRN_F4I4CVT_CEIL,
  INTRN_F4U4CVT_ROUND,
  INTRN_F4U4CVT_TRUNC,
  INTRN_F4U4CVT_FLOOR,
  INTRN_F4U4CVT_CEIL,
  INTRN_I4F4CVT_ROUND,
  INTRN_I4F4CVT_TRUNC,
  INTRN_I4F4CVT_FLOOR,
  INTRN_I4F4CVT_CEIL,
  INTRN_U4F4CVT_ROUND,
  INTRN_U4F4CVT_TRUNC,
  INTRN_U4F4CVT_FLOOR,
  INTRN_U4F4CVT_CEIL,
  INTRN_F4I8CVT_ROUND,
  INTRN_F4I8CVT_TRUNC,
  INTRN_F4I8CVT_FLOOR,
  INTRN_F4I8CVT_CEIL,
  INTRN_F4U8CVT_ROUND,
  INTRN_F4U8CVT_TRUNC,
  INTRN_F4U8CVT_FLOOR,
  INTRN_F4U8CVT_CEIL,
  INTRN_F8I8CVT_ROUND,
  INTRN_F8I8CVT_TRUNC,
  INTRN_F8I8CVT_FLOOR,
  INTRN_F8I8CVT_CEIL,
  INTRN_F8U8CVT_ROUND,
  INTRN_F8U8CVT_TRUNC,
  INTRN_F8U8CVT_FLOOR,
  INTRN_F8U8CVT_CEIL,
  INTRN_I8F4CVT_ROUND,
  INTRN_I8F4CVT_TRUNC,
  INTRN_I8F4CVT_FLOOR,
  INTRN_I8F4CVT_CEIL,
  INTRN_U8F4CVT_ROUND,
  INTRN_U8F4CVT_TRUNC,
  INTRN_U8F4CVT_FLOOR,
  INTRN_U8F4CVT_CEIL,
  INTRN_I8F8CVT_ROUND,
  INTRN_I8F8CVT_TRUNC,
  INTRN_I8F8CVT_FLOOR,
  INTRN_I8F8CVT_CEIL,
  INTRN_U8F8CVT_ROUND,
  INTRN_U8F8CVT_TRUNC,
  INTRN_U8F8CVT_FLOOR,
  INTRN_U8F8CVT_CEIL,
  INTRN_F8HLI2D,
  INTRN_I4D2LI,
  INTRN_I4D2HI,
  INTRN_I4ATOMICADD,
  INTRN_U4ATOMICADD,
  INTRN_U8ATOMICADD,
  INTRN_F4ATOMICADD,
  INTRN_F8ATOMICADD,
  INTRN_I4ATOMICMIN,
  INTRN_U4ATOMICMIN,
  INTRN_F4ATOMICMIN,
  INTRN_I4ATOMICMAX,
  INTRN_U4ATOMICMAX,
  INTRN_F4ATOMICMAX,
  INTRN_I4ATOMICEXCH,
  INTRN_U4ATOMICEXCH,
  INTRN_U8ATOMICEXCH,
  INTRN_F4ATOMICEXCH,
  INTRN_F8ATOMICEXCH,
  INTRN_U4ATOMICAND,
  INTRN_U4ATOMICOR,
  INTRN_U4ATOMICXOR,
  INTRN_U4ATOMICINC,
  INTRN_U4ATOMICDEC,
  INTRN_I4ATOMICCAS,
  INTRN_U4ATOMICCAS,
  INTRN_U8ATOMICCAS,
  INTRN_F4ATOMICCAS,
  INTRN_F8ATOMICCAS,
  INTRN_VOTEALL,
  INTRN_VOTEANY,
  INTRN_VOTEUNI,
  INTRN_VOTEALL_NOT,
  INTRN_VOTEANY_NOT,
  
  /* CUDA CMC intrinsics */
  INTRN_GETSHAREDMEM,
  INTRN_GETBLOCKIDPTR,
#endif // TARG_NVISA

  INTRN_TAN           ,
  INTRN_F8F8I4EXPEXPR   ,
  INTRN_F4F4I4EXPEXPR   ,
  INTRN_FQFQI4EXPEXPR   ,
  INTRN_EXPECT        ,
  INTRN_FLOOR	      ,
  INTRN_FLOORF	      ,

  INTRN_CTYPE_B_LOC      ,
  INTRN_CTYPE_TOUPPER_LOC,
  INTRN_CTYPE_TOLOWER_LOC,
  INTRINSIC_LAST         ,

#endif // KEY

} INTRINSIC;

#ifdef __cplusplus
}
#endif

#endif
