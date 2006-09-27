/*
 * Copyright 2005 PathScale, Inc.  All Rights Reserved.
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

#ifndef _ELF_STUFF_H
#define	_ELF_STUFF_H 1

#include <elf.h>

#ifdef __FreeBSD__
/* FreeBSD defines ELF_DATA to either ELFDATA2LSB or ELFDATA2MSB */
#undef ELF_DATA

typedef struct
{
  Elf32_Word hwp_flags1;        /* Extra flags.  */
  Elf32_Word hwp_flags2;        /* Extra flags.  */
} Elf_Options_Hw;
#endif /* __FreeBSD__ */

#ifndef ELF32_FSZ_WORD
#define ELF32_FSZ_WORD		sizeof(Elf32_Word)
#endif

#ifndef ELF64_FSZ_WORD
#define ELF64_FSZ_WORD		sizeof(Elf64_Word)
#endif
#ifndef ELF64_FSZ_XWORD
#define ELF64_FSZ_XWORD		sizeof(Elf64_Xword)
#endif

#ifndef IS_ELF
#define IS_ELF(e)	\
	((e).e_ident[EI_MAG0] == ELFMAG0 && (e).e_ident[EI_MAG1] == ELFMAG1 && \
	 (e).e_ident[EI_MAG2] == ELFMAG2 && (e).e_ident[EI_MAG3] == ELFMAG3)
#endif

#ifndef EF_MIPS_PIC
#define EF_MIPS_PIC		0x02
#endif
#ifndef EF_MIPS_CPIC
#define EF_MIPS_CPIC		0x04
#endif
#ifndef EF_MIPS_XGOT
#define EF_MIPS_XGOT		0x08
#endif
#define EF_MIPS_ABI64		0x10
#define EF_MIPS_OPTIONS_FIRST   0x80 

#define ET_IR	(ET_LOPROC+0)	/* file is a 32-bit or 64-bit WHIRL file */

#define STB_SPLIT_COMMON	(STB_LOPROC+0)

#ifndef SHF_MIPS_NODUPE
#define SHF_MIPS_NODUPE		0x01000000
#endif
#ifndef SHF_MIPS_NAMES
#define SHF_MIPS_NAMES		0x02000000
#endif
#ifndef SHF_MIPS_LOCAL
#define SHF_MIPS_LOCAL		0x04000000
#endif
#ifndef SHF_MIPS_NOSTRIP
#define SHF_MIPS_NOSTRIP	0x08000000
#endif
#ifndef SHF_MIPS_MERGE
#define SHF_MIPS_MERGE		0x20000000
#endif

#ifndef SHF_IA_64_SHORT
#define SHF_IA_64_SHORT		0x10000000
#endif

#ifndef SHN_MIPS_TEXT
#define SHN_MIPS_TEXT		(SHN_LOPROC+1)
#endif
#ifndef SHN_MIPS_DATA
#define SHN_MIPS_DATA		(SHN_LOPROC+2)
#endif
#ifndef SHN_MIPS_SCOMMON
#define SHN_MIPS_SCOMMON	(SHN_LOPROC+3)
#endif
#ifndef SHN_MIPS_SUNDEFINED
#define SHN_MIPS_SUNDEFINED	(SHN_LOPROC+4)
#endif
#ifndef SHN_MIPS_LCOMMON
#define SHN_MIPS_LCOMMON	(SHN_LOPROC+5)
#endif

#ifndef SHT_IA_64_UNWIND
#define SHT_IA_64_UNWIND	(SHT_LOPROC+1)
#endif
#define SHT_IA_64_UNWIND_INFO	SHT_PROGBITS

#ifndef SHT_MIPS_IFACE
#define SHT_MIPS_IFACE		(SHT_LOPROC+11)
#endif
#define SHT_MIPS_IPALNO		(SHT_LOPROC+42)
#ifndef SHT_MIPS_WHIRL
#define SHT_MIPS_WHIRL		(SHT_LOPROC+38)
#endif
#define STO_SC_ALIGN_UNUSED	0xff	/* No longer used */

/* Special section names */
#define	ELF__CPLINIT		"__cplinit"
#define ELF_BSS			".bss"
#define ELF_COMMENT		".comment"
#define ELF_DATA		".data"
#define ELF_DATA_PU		".data_pu"
#define ELF_DATA_REL_RO_LOCAL	".data.rel.ro.local"
#define ELF_DEBUG		".debug"
#define ELF_DYNAMIC		".dynamic"
#define ELF_DYNSTR		".dynstr"
#define ELF_DYNSYM		".dynsym"
#define ELF_EXCEPT_TABLE	".except_table"
#define ELF_EXCEPT_TABLE_SUPP	".except_table_supp"
#define ELF_FINI		".fini"
#define ELF_GOT			".got"
#define ELF_HASH		".hash"
#define ELF_INIT		".init"
#define ELF_LIT4		".lit4"
#define ELF_LIT8		".lit8"
#define ELF_LIT16		".lit16"
#define ELF_MSYM		".msym"
#define ELF_PLT			".plt"
#define ELF_REL_DATA		".rel.data"
#define ELF_REL_DYN		".rel.dyn"
#define ELF_REL_FINI		".rel.fini"
#define ELF_REL_INIT		".rel.init"
#define ELF_REL_RODATA		".rel.rodata"
#define ELF_REL_TEXT		".rel.text"
#define ELF_RODATA		".rodata"
#define ELF_RODATA_PU		".rodata_pu"
#define ELF_SBSS		".sbss"
#define	ELF_SDATA		".sdata"
#define ELF_SHSTRTAB		".shstrtab"
#define ELF_SRDATA		".srdata"
#define ELF_STRTAB		".strtab"
#define ELF_SYMTAB		".symtab"
#define ELF_TEXT		".text"

#define ELF_IA_64_UNWIND	".IA_64.unwind"
#define ELF_IA_64_UNWIND_INFO	".IA_64.unwind_info"

#define ELF_IA64_INTERFACES	".IA64.interfaces"

#define ELF_MIPS_LDATA		".MIPS.ldata"
#define	ELF_MIPS_DISTR_ARRAY	"_MIPS_distr_array"

#if 0
/*
 * special section names
 *
 *	These are the section names for those sections
 *	that exist in both Irix/mips and Irix/ia64 objects.
 */
#define MIPS_LIBLIST            ".liblist"
#define MIPS_MSYM               ".msym"
#define MIPS_CONFLICT           ".conflict"
#define MIPS_SDATA              ".sdata"
#define MIPS_SDATA_PU           ".sdata_pu"
#define MIPS_REL_SDATA          ".rel.sdata"
#define MIPS_SRDATA_PU          ".srdata_pu"
#define MIPS_RDATA              ".rdata"
#define MIPS_EVENTS             ".MIPS.events"
#define MIPS_INTERFACES         ".MIPS.interfaces"
#define MIPS_OPTIONS            ".MIPS.options"
#define MIPS_SYMBOL_LIB         ".MIPS.symlib"
#define MIPS_DEBUG_INFO         ".debug_info"
#define MIPS_DEBUG_LINE         ".debug_line"
#define MIPS_DEBUG_ABBREV       ".debug_abbrev"
#define MIPS_DEBUG_FRAME        ".debug_frame"
#define MIPS_DEBUG_ARANGES      ".debug_aranges"
#define MIPS_DEBUG_PUBNAMES     ".debug_pubnames"
#define MIPS_DEBUG_STR          ".debug_str"
#define MIPS_DEBUG_FUNCNAMES    ".debug_funcnames"
#define MIPS_DEBUG_TYPENAMES    ".debug_typenames"
#define MIPS_DEBUG_VARNAMES     ".debug_varnames"
#define MIPS_DEBUG_WEAKNAMES    ".debug_weaknames"
#define MIPS_XLATE              ".MIPS.Xlate"
#define MIPS_XLATE_DEBUG	".MIPS.Xlate_debug"
#define MIPS_CONTENT		".MIPS.content"
#define MIPS_WHIRL              ".WHIRL"	/* Mips uses this name       */

/*
 * special section names
 *
 *      These are the section names for those sections
 *      that exist in both Irix/mips and Irix/ia64 objects.
 */
#define IA64_LIBLIST            ".liblist"
#define IA64_MSYM               ".msym"
#define IA64_CONFLICT           ".conflict"
#define IA64_SDATA              ".sdata"
#define IA64_REL_SDATA          ".rel.sdata"
#define IA64_SRDATA             ".srdata"
#define IA64_RDATA              ".rdata"
#define IA64_SBSS               ".sbss"
#define IA64_LIT4               ".lit4"
#define IA64_LIT8               ".lit8"
#define IA64_LIT16              ".lit16"
#define IA64_EVENTS             ".IA64.events"
#define IA64_OPTIONS            ".IA64.options"
#define IA64_SYMBOL_LIB         ".IA64.symlib"
#define IA64_DEBUG_INFO         ".debug_info"
#define IA64_DEBUG_LINE         ".debug_line"
#define IA64_DEBUG_ABBREV       ".debug_abbrev"
#define IA64_DEBUG_FRAME        ".debug_frame"
#define IA64_DEBUG_ARANGES      ".debug_aranges"
#define IA64_DEBUG_PUBNAMES     ".debug_pubnames"
#define IA64_DEBUG_STR          ".debug_str"
#define IA64_DEBUG_FUNCNAMES    ".debug_funcnames"
#define IA64_DEBUG_TYPENAMES    ".debug_typenames"
#define IA64_DEBUG_VARNAMES     ".debug_varnames"
#define IA64_DEBUG_WEAKNAMES    ".debug_weaknames"
#define IA64_XLATE              ".IA64.Xlate"
#define IA64_XLATE_DEBUG	".IA64.Xlate_debug"
#define IA64_WHIRL              ".IA64.WHIRL"
#define IA64_CONTENT            ".IA64.content"

/*
 * special section names
 *
 *	These are the section names for sections 
 *	that are unique to Irix/ia64.
 */
#define IA64_ARCHEXT		".IA_64.archext"
#define IA64_PLTOFF		".IA_64.pltoff"
#endif

/* Content kind -- valid for ELF-32 and ELF-64: */
typedef enum {
    CK_NULL	= 0,	    /* Invalid, same as EK_NULL */
    CK_DEFAULT	= 0x30,	    /* Default type of data for section */
    CK_ALIGN	= 0x31,	    /* Alignment for described range */
    CK_INSTR	= 0x32,	    /* Instructions */
    CK_DATA	= 0x33,	    /* Non-address data */
    CK_SADDR_32	= 0x34,	    /* Simple 32-bit addresses */
    CK_GADDR_32	= 0x35,	    /* GP-relative 32-bit addresses */
    CK_CADDR_32	= 0x36,	    /* Complex 32-bit addresses */
    CK_SADDR_64	= 0x37,	    /* Simple 64-bit addresses */
    CK_GADDR_64	= 0x38,	    /* GP-relative 64-bit addresses */
    CK_CADDR_64	= 0x39,	    /* Complex 64-bit addresses */
    CK_NO_XFORM	= 0x3a,	    /* No transformations allowed in this range */
    CK_NO_REORDER = 0x3b,   /* No reordering allowed in this range */
    CK_GP_GROUP = 0x3c,	    /* Text/data in range with length given by
			       second argument references GP group given
			       by first. */
    CK_STUBS	= 0x3d	    /* Text in range is stub code. ULEB */
} Elf_MIPS_Content_Kind;

/*
 * 	Elf_Options.kind		Options descriptor kinds
 */
#define ODK_NULL                 0      /* Undefined */
#define ODK_MIPS_REGINFO         1      /* MIPS Register usage information */
#define ODK_REGINFO         1      /* MIPS Register usage information */
#define ODK_MIPS_EXCEPTIONS      2      /* MIPS Exception processing options  */
#define ODK_EXCEPTIONS		 2      /* MIPS Exception processing options  */
#define ODK_PAD                  3      /* Section padding options */
#define ODK_MIPS_HWPATCH         4      /* MIPS Hardware workarounds performed*/
#define ODK_HWPATCH		 4      /* MIPS Hardware workarounds performed*/
#define ODK_FILL                 5      /* The fill value used by the linker */
#define ODK_TAGS                 6      /* Space for desktop tools to write */
#define ODK_MIPS_HWAND           7      /* HW workarounds.'AND' when merging */
#define ODK_HWAND		 7      /* HW workarounds.'AND' when merging */
#define ODK_MIPS_HWOR            8      /* HW workarounds.'OR'  when merging */
#define ODK_HWOR		 8      /* HW workarounds.'OR'  when merging */
#define ODK_GP_GROUP             9      /* GP group for text/data sections */
#define ODK_IDENT               10      /* ID information */
#define ODK_IA64_REGINFO        11      /* TO BE CHANGED! */
#define ODK_PAGESIZE            12      /* Alternate segment page size */

#define ODK_IA64_EXCEPTIONS     12      /* NOT USED! */
#define ODK_IA64_HWAND          13      /* NOT USED! */
#define ODK_IA64_HWOR           14      /* NOT USED! */

/*
 *	Elf_Options.kind == ODK_MIPS_EXCEPTIONS	
 *
 *      masks for Elf_Options.info
 */
#define OEX_PAGE0       0x10000 /* page zero must be mapped */
#define OEX_SMM         0x20000 /* Force sequential memory mode? */
#define OEX_FPDBUG      0x40000 /* Force floating point debug mode? */
#define OEX_PRECISEFP   OEX_FPDBUG
#define OEX_DISMISS     0x80000 /* Dismiss invalid address faults? */
#define OEX_FPU_MIN     0x1f    /* FPE's which MUST be enabled */
#define OEX_FPU_MAX     0x1f00  /* FPE's which MAY be enabled */
#define OEX_FPU_INVAL   0x10
#define OEX_FPU_DIV0    0x08
#define OEX_FPU_OFLO    0x04
#define OEX_FPU_UFLO    0x02
#define OEX_FPU_INEX    0x01

/*
 *	Elf_Options.kind == ODK_MIPS_HWPATCH
 *
 *      masks for Elf_Options.info
 */
#define OHW_R4KEOP      0x1     /* R4000 end-of-page patch */
#define OHW_R8KPFETCH   0x2     /* may need R8000 prefetch patch */
#define OHW_R5KEOP      0x4     /* R5000 end-of-page patch */
#define OHW_R5KCVTL     0x8     /* R5000 cvt.[ds].l bug.  clean=1 */
#define OHW_R10KLDL     0x10    /* R10000 requires LDL patch    */

/*
 *      Elf_Options.kind == ODK_MIPS_HWOR
 *
 *      masks for Elf_Options.info
 */
#define OHWO0_FIXADE	0x00000001	/* Object requires FIXADE call */

/*
 *      Elf_Options.kind == ODK_PAD
 *
 *      masks for Elf_Options.info
 */
#define OPAD_PREFIX	0x1	
#define OPAD_POSTFIX	0x2
#define OPAD_SYMBOL	0x4

/*
 *      Elf_Options.kind == ODK_GP_GROUP
 *
 *      masks for Elf_Options.info
 */
#define OGP_GROUP	0x0000ffff	/* GP group number */
#define OGP_SELF	0x00010000	/* Self-contained GP groups */

/* Event kind -- valid for ELF-32 and ELF-64: */
typedef enum {
    EK_NULL = 0x00,	    /* No valid information */
    EK_ADDR_RESET = 0x01,   /* Reset offset into associated text section */
    EK_INCR_LOC_EXT = 0x02, /* Increment offset into associated text section */
    EK_ENTRY = 0x03,	    /* Subprogram entrypoint */
    EK_IF_ENTRY = 0x04,	    /* Subprogram entrypoint with associated interface offset */
    EK_EXIT = 0x05,	    /* Subprogram exit */
    EK_PEND = 0x06,	    /* Subprogram end (last instruction) */

    EK_SWITCH_32 = 0x7,	    /* jr for switch stmt, table entries are 32bit */
    EK_SWITCH_64 = 0x8,	    /* jr for switch stmt, table entries are 64bit */
    EK_DUMMY = 0x09,	    /* empty slot */

    EK_BB_START = 0x0a,	    /* Basic block beginning */
    EK_INCR_LOC_UNALIGNED = 0x0b,    /* Increment unaligned byte offset */
    EK_GP_PROLOG_HI = 0x0c, /* Establish high 16bits of GP */
    EK_GP_PROLOG_LO = 0x0d, /* Establish low 16bits of GP */
    EK_GOT_PAGE = 0x0e,	    /* Compact relocation: GOT page pointer */
    EK_GOT_OFST = 0x0f,     /* Compact relocation: GOT page offset */
    EK_HI = 0x10,	    /* Compact relocation: high 16bits of abs. addr */
    EK_LO = 0x11,	    /* Compact relocation: low 16bits of abs. addr */
    EK_64_HIGHEST = 0x12,   /* Compact relocation: most significant 16 bits
			       of a 64bit absolute address */
    EK_64_HIGHER = 0x13,    /* Compact relocation: second most significant
			       16 bits of a 64bit absolute address */
    EK_64_HIGH = 0x14,	    /* Compact relocation: third most significant
			       16 bits of a 64bit absolute address */
    EK_64_LOW = 0x15,       /* Compact relocation: least significant 16 bits
			       of a 64bit absolute address */
    EK_GPREL = 0x16,        /* Compact relocation: GP relative reference */

    EK_DEF = 0x17,	    /* Define new event kind format */

    EK_FCALL_LOCAL = 0x18,	/* point-of-call (jalr) to a local procedure */
    EK_FCALL_EXTERN = 0x19,	/* jalr to extern procedure (small got case) */
    EK_FCALL_EXTERN_BIG = 0x1a,	/* jalr to extern procedure (large got case) */
    EK_FCALL_MULT = 0x1b,	/* jalr to more than one procedure */
    EK_FCALL_MULT_PARTIAL = 0x1c, /* jalr to multiple + unknown procedures */

    EK_LTR_FCALL = 0x1d,	/* jalr to rld lazy-text res.  index of
				   symbol associated. */
    EK_PCREL_GOT0 = 0x1e, 	/* immediate is hi 16 bits of 32-bit
				   constant.  Argument is offset to lo,
				   in instructions, not bytes*/

    /* The following events are reserved for supporting Purify-type tools: */
    EK_MEM_COPY_LOAD = 0x1f,    /* load only for copying data */
    EK_MEM_COPY_STORE = 0x20,   /* store only for copying data --
                                   LEB128 operand is word offset to
                                   paired load */
    EK_MEM_PARTIAL_LOAD = 0x21, /* load for reference to a subset of bytes --
                                   BYTE operand's 8 bits indicate which
                                   bytes are actually used */
    EK_MEM_EAGER_LOAD = 0x22,   /* load is speculative */
    EK_MEM_VALID_LOAD = 0x23,   /* load of data known to be valid */

				  
		/*
		 * Yet to be defined kinds with no fields (like EK_EXIT)
		 */
    EK_CK_UNUSED_NONE_0 = 0x50, /*  */
    EK_CK_UNUSED_NONE_1 = 0x51, /*  */
    EK_CK_UNUSED_NONE_2 = 0x52, /*  */
    EK_CK_UNUSED_NONE_3 = 0x53, /*  */
    EK_CK_UNUSED_NONE_4 = 0x54, /*  */

		/*
		 * Yet to be defined kinds with 1 16 bit field
		 */
    EK_CK_UNUSED_16BIT_0 = 0x55,
    EK_CK_UNUSED_16BIT_1 = 0x56,
    EK_CK_UNUSED_16BIT_2 = 0x57, /*  */
    EK_CK_UNUSED_16BIT_3 = 0x58, /*  */
    EK_CK_UNUSED_16BIT_4 = 0x59, /*  */

		/*
		 * Yet to be defined kinds with 1 32 bit field
		 */
    EK_CK_UNUSED_32BIT_0 = 0x5a, /*  */
    EK_CK_UNUSED_32BIT_1 = 0x5b, /*  */
    EK_CK_UNUSED_32BIT_2 = 0x5c, /*  */

		/*
		 * Yet to be defined kinds with 1 64 bit field
		 */

    EK_CK_UNUSED_64BIT_0 = 0x5d,
    EK_CK_UNUSED_64BIT_1 = 0x5e,
    EK_CK_UNUSED_64BIT_2 = 0x5f, /*  */
    EK_CK_UNUSED_64BIT_3 = 0x60, /*  */
    EK_CK_UNUSED_64BIT_4 = 0x61, /*  */

		/*
		 * Yet to be defined kinds with 1 uleb128 field
		 */
    EK_CK_UNUSED_ULEB128_0 = 0x62, /* */
    EK_CK_UNUSED_ULEB128_1 = 0x63, /*  */
    EK_CK_UNUSED_ULEB128_2 = 0x64, /*  */
    EK_CK_UNUSED_ULEB128_3 = 0x65, /*  */
    EK_CK_UNUSED_ULEB128_4 = 0x66, /*  */
    EK_CK_UNUSED_ULEB128_5 = 0x67, /*  */
    EK_CK_UNUSED_ULEB128_6 = 0x68, /*  */
    EK_CK_UNUSED_ULEB128_7 = 0x69, /*  */
    EK_CK_UNUSED_ULEB128_8 = 0x6a, /*  */
    EK_CK_UNUSED_ULEB128_9 = 0x6b, /*  */


    EK_INCR_LOC = 0x80	    /* Increment offset into associated text section */

} Elf_MIPS_Event_Kind;
typedef	Elf_MIPS_Event_Kind Elf_Event_Kind;

/* The following defines list the various types of operands that are 
 * supported with the EK_DEF event kind.
 */
#define EK_DEF_UCHAR	(1)	    /* unsigned char (8 bits) */
#define EK_DEF_USHORT	(2)	    /* unsigned short (16 bits) */
#define EK_DEF_UINT	(3)	    /* unsigned int (32 bits) */
#define EK_DEF_ULONG	(4)	    /* unsigned long (64 bits) */
#define EK_DEF_ULEB128	(5)	    /* unsigned LEB128 encoded number */
#define EK_DEF_CHAR	(6)	    /* signed char (8 bits) */
#define EK_DEF_SHORT	(7)	    /* signed short (16 bits) */
#define EK_DEF_INT	(8)	    /* signed int (32 bits) */
#define EK_DEF_LONG	(9)	    /* signed long (64 bits) */
#define EK_DEF_LEB128	(10)	    /* signed LEB128 encoded number */
#define EK_DEF_STRING	(11)	    /* null terminated string */
#define EK_DEF_VAR	(12)	    /* variable length field: the first 2
				       bytes is an unsigned short
				       specifying the total number of bytes
				       of this field including the first 2
				       bytes */
#define CK_DEF EK_DEF

#ifndef R_MIPS_26
#define R_MIPS_26		4
#endif
#ifndef R_MIPS_GPREL16
#define R_MIPS_GPREL16		7
#endif

typedef struct {
  Elf64_Word	symbol;		/* symbol table index of subprogram, or 0 */
  Elf64_Half	attrs;		/* Attributes: See list below */
  unsigned char	pcnt;		/* Parameter count */
  unsigned char	fpmask;		/* bit on indicates an FP parameter register */
} Elf_Ifd;

typedef Elf_Ifd Elf_Interface_Descriptor;  /* for compatibility */

/* Flags that can be set in the 'attrs' field of Elf_Interface_Descriptor */
#define SA_PROTOTYPED	0x8000	/* Does def or ref have prototype ? */
#define SA_VARARGS	0x4000	/* Is this a varargs subprogram ? */
#define SA_PIC		0x2000	/* Are memory references PIC? */
#define SA_DSO_ENTRY	0x1000	/* Is subprogram valid DSO entry? */
#define SA_ADDRESSED	0x0800	/* Is subprogram address taken? */
#define SA_FUNCTION	0x0400	/* Does subprogram return a result? */
#define SA_NESTED	0x0200	/* Is subprogram nested? */
#define SA_IGNORE_ERROR	0x0100	/* Ignore consistency errors? */
#define SA_DEFINITION	0x0080	/* Is this a definition (no just call)? */
#define SA_AT_FREE	0x0040	/* Is the at register free at all branches? */
#define SA_FREE_REGS	0x0020	/* Free register mask precedes parm profile */
#define SA_PARAMETERS	0x0010	/* Parameter profile follows descriptor? */
#define SA_ALTINTERFACE 0x0008	/* Alternate descriptor follows? */

/* Fundamental Parameter Types */
#define FT_unknown         0x0000
#define FT_signed_char     0x0001
#define FT_unsigned_char   0x0002
#define FT_signed_short    0x0003
#define FT_unsigned_short  0x0004
#define FT_signed_int32    0x0005
#define FT_unsigned_int32  0x0006
#define FT_signed_int64    0x0007
#define FT_unsigned_int64  0x0008
#define FT_pointer32       0x0009
#define FT_pointer64       0x000a
#define FT_float32         0x000b
#define FT_float64         0x000c
#define FT_float128        0x000d
#define FT_complex64       0x000e
#define FT_complex128      0x000f
#define FT_complex256      0x0010
#define FT_void            0x0011
#define FT_bool32          0x0012
#define FT_bool64          0x0013
#define FT_label32         0x0014
#define FT_label64         0x0015
#define FT_struct          0x0020
#define FT_union           0x0021
#define FT_enum            0x0022
#define FT_typedef         0x0023
#define FT_set             0x0024
#define FT_range           0x0025
#define FT_member_ptr      0x0026
#define FT_virtual_ptr     0x0027
#define FT_class           0x0028

/* Parameter Qualifiers (aka Modifiers)  */
#define MOD_pointer_to     0x01
#define MOD_reference_to   0x02
#define MOD_const          0x03
#define MOD_volatile       0x04
#define MOD_function       0x80
#define MOD_array_of       0x81

/* Parameter descriptor masks */
#define PDM_TYPE	0x00ff	/* Fundamental type of parameter */
#define PDM_REFERENCE	0x4000	/* Reference parameter ? */
#define PDM_SIZE	0x2000	/* Followed by explicit 32-bit byte count? */
#define PDM_Qualifiers	0x0f00	/* Count of type qualifiers << 8 */

/* Parameter descriptor mask flags */
#define PDMF_REFERENCE  0x40
#define PDMF_SIZE       0x20
#define PDMF_Qualifiers 0x0f

#ifndef R_IA_64_NONE
#define	R_IA_64_NONE		0
#endif
#ifndef R_IA_64_DIR32MSB
#define R_IA_64_DIR32MSB	0x24
#endif
#ifndef R_IA_64_DIR32LSB
#define R_IA_64_DIR32LSB	0x25
#endif
#ifndef R_IA_64_DIR64MSB
#define R_IA_64_DIR64MSB	0x26
#endif
#ifndef R_IA_64_DIR64LSB
#define R_IA_64_DIR64LSB	0x27
#endif
#ifndef R_IA_64_GPREL22
#define R_IA_64_GPREL22		0x2a
#endif
#ifndef R_IA_64_LTOFF22
#define R_IA_64_LTOFF22		0x32
#endif
#ifndef R_IA_64_PCREL21B
#define	R_IA_64_PCREL21B	0x49
#endif
#ifndef R_IA_64_LTOFF_FPTR22
#define R_IA_64_LTOFF_FPTR22	0x52
#endif
#ifndef R_IA_64_SEGREL32LSB
#define R_IA_64_SEGREL32LSB	0x5d
#endif
#ifndef R_IA_64_SEGREL64MSB
#define R_IA_64_SEGREL64MSB	0x5e
#endif
#ifndef R_IA_64_SEGREL64LSB
#define R_IA_64_SEGREL64LSB	0x5f
#endif
#ifndef R_IA_64_SECREL64MSB
#define R_IA_64_SECREL64MSB	0x66
#endif
#ifndef R_IA_64_SECREL64LSB
#define R_IA_64_SECREL64LSB	0x67
#endif

#endif	/* elf_stuff.h */
