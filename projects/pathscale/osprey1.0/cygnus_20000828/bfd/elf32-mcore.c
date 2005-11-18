/* Motorola MCore specific support for 32-bit ELF
   Copyright 1994, 1995, 1999 Free Software Foundation, Inc.

This file is part of BFD, the Binary File Descriptor library.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

/* This file is based on a preliminary RCE ELF ABI.  The
   information may not match the final RCE ELF ABI.   */

#include "bfd.h"
#include "sysdep.h"
#include "bfdlink.h"
#include "libbfd.h"
#include "elf-bfd.h"
#include "elf/mcore.h"
#include <assert.h>

#define	USE_RELA	/* Only USE_REL is actually significant, but this is
			   here are a reminder... */

static void mcore_elf_howto_init
  PARAMS ((void));
static reloc_howto_type * mcore_elf_reloc_type_lookup
  PARAMS ((bfd *, bfd_reloc_code_real_type));
static void mcore_elf_info_to_howto
  PARAMS ((bfd *, arelent *, Elf32_Internal_Rela *));
static boolean mcore_elf_set_private_flags
  PARAMS ((bfd *, flagword));
static boolean mcore_elf_copy_private_bfd_data
  PARAMS ((bfd *, bfd *));
static boolean mcore_elf_merge_private_bfd_data
  PARAMS ((bfd *, bfd *));
static bfd_reloc_status_type mcore_elf_unsupported_reloc
  PARAMS ((bfd *, arelent *, asymbol *, PTR, asection *, bfd *, char **));
static boolean mcore_elf_relocate_section
  PARAMS ((bfd *, struct bfd_link_info *, bfd *, asection *, bfd_byte *,
	   Elf_Internal_Rela *, Elf_Internal_Sym *, asection **));
static boolean elf32_mcore_adjust_dynamic_symbol
  PARAMS ((struct bfd_link_info *, struct elf_link_hash_entry *));
static boolean elf32_mcore_size_dynamic_sections
  PARAMS ((bfd *, struct bfd_link_info *));
static boolean elf32_mcore_finish_dynamic_symbol
  PARAMS ((bfd *, struct bfd_link_info *, struct elf_link_hash_entry *, Elf_Internal_Sym *));
static boolean elf32_mcore_finish_dynamic_sections
  PARAMS ((bfd *, struct bfd_link_info *));

static reloc_howto_type * mcore_elf_howto_table [(int) R_MCORE_max];

static reloc_howto_type mcore_elf_howto_raw[] =
{
  /* This reloc does nothing.  */
  HOWTO (R_MCORE_NONE,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield,  /* complain_on_overflow */
	 NULL,                  /* special_function */
	 "R_MCORE_NONE",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* A standard 32 bit relocation.  */
  HOWTO (R_MCORE_ADDR32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special_function */
	 "ADDR32",		/* name *//* For compatability with coff/pe port.  */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* 8 bits + 2 zero bits; jmpi/jsri/lrw instructions.
     Should not appear in object files. */
  HOWTO (R_MCORE_PCRELIMM8BY4,	/* type */
	 2,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 8,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 mcore_elf_unsupported_reloc,	/* special_function */
	 "R_MCORE_PCRELIMM8BY4",/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 true),			/* pcrel_offset */

  /* bsr/bt/bf/br instructions; 11 bits + 1 zero bit 
     Span 2k instructions == 4k bytes.
     Only useful pieces at the relocated address are the opcode (5 bits) */
  HOWTO (R_MCORE_PCRELIMM11BY2,/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 11,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special_function */
	 "R_MCORE_PCRELIMM11BY2",/* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x7ff,			/* dst_mask */
	 true),			/* pcrel_offset */

  /* 4 bits + 1 zero bit; 'loopt' instruction only; unsupported. */
  HOWTO (R_MCORE_PCRELIMM4BY2,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 4,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 mcore_elf_unsupported_reloc,/* special_function */
	 "R_MCORE_PCRELIMM4BY2",/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 true),			/* pcrel_offset */

  /* 32-bit pc-relative. Eventually this will help support PIC code. */
  HOWTO (R_MCORE_PCREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special_function */
	 "R_MCORE_PCREL32",	/* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 true),			/* pcrel_offset */

  /* Like PCRELIMM11BY2, this relocation indicates that there is a
     'jsri' at the specified address. There is a separate relocation
     entry for the literal pool entry that it references, but we 
     might be able to change the jsri to a bsr if the target turns out
     to be close enough [even though we won't reclaim the literal pool
     entry, we'll get some runtime efficiency back]. Note that this
     is a relocation that we are allowed to safely ignore.  */ 
  HOWTO (R_MCORE_PCRELJSR_IMM11BY2,/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 11,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special_function */
	 "R_MCORE_PCRELJSR_IMM11BY2", /* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x7ff,			/* dst_mask */
	 true),			/* pcrel_offset */
  
  /* GNU extension to record C++ vtable hierarchy */
  HOWTO (R_MCORE_GNU_VTINHERIT, /* type */
         0,                     /* rightshift */
         2,                     /* size (0 = byte, 1 = short, 2 = long) */
         0,                     /* bitsize */
         false,                 /* pc_relative */
         0,                     /* bitpos */
         complain_overflow_dont, /* complain_on_overflow */
         NULL,                  /* special_function */
         "R_MCORE_GNU_VTINHERIT", /* name */
         false,                 /* partial_inplace */
         0,                     /* src_mask */
         0,                     /* dst_mask */
         false),                /* pcrel_offset */

  /* GNU extension to record C++ vtable member usage */
  HOWTO (R_MCORE_GNU_VTENTRY,   /* type */
         0,                     /* rightshift */
         2,                     /* size (0 = byte, 1 = short, 2 = long) */
         0,                     /* bitsize */
         false,                 /* pc_relative */
         0,                     /* bitpos */
         complain_overflow_dont,/* complain_on_overflow */
         _bfd_elf_rel_vtable_reloc_fn,  /* special_function */
         "R_MCORE_GNU_VTENTRY", /* name */
         false,                 /* partial_inplace */
         0,                     /* src_mask */
         0,                     /* dst_mask */
         false),                /* pcrel_offset */
  
  HOWTO (R_MCORE_RELATIVE,      /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 NULL,                  /* special_function */
	 "R_MCORE_RELATIVE",    /* name */
	 true,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false)			/* pcrel_offset */
, HOWTO (R_MCORE_COPY,          /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 NULL,                  /* special_function */
	 "R_MCORE_COPY",        /* name */
	 true,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */
  
  HOWTO (R_MCORE_GLOB_DAT,      /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 NULL,                  /* special_function */
	 "R_MCORE_GLOB_DAT",    /* name */
	 true,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */
  
  HOWTO (R_MCORE_JUMP_SLOT,     /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 NULL,                  /* special_function */
	 "R_MCORE_JUMP_SLOT",   /* name */
	 true,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false) 		/* pcrel_offset */
};

#ifndef NUM_ELEM
#define NUM_ELEM(a) (sizeof (a) / sizeof (a)[0])
#endif

/* Initialize the mcore_elf_howto_table, so that linear accesses can be done.  */
static void
mcore_elf_howto_init ()
{
  unsigned int i;

  for (i = NUM_ELEM (mcore_elf_howto_raw); i--;)
    {
      unsigned int type;
      
      type = mcore_elf_howto_raw[i].type;
      
      BFD_ASSERT (type < NUM_ELEM (mcore_elf_howto_table));
      
      mcore_elf_howto_table [type] = & mcore_elf_howto_raw [i];
    }
}


static reloc_howto_type *
mcore_elf_reloc_type_lookup (abfd, code)
     bfd * abfd ATTRIBUTE_UNUSED;
     bfd_reloc_code_real_type code;
{
  enum elf_mcore_reloc_type mcore_reloc = R_MCORE_NONE;

  switch (code)
    {
    case BFD_RELOC_NONE:		     mcore_reloc = R_MCORE_NONE; break;
    case BFD_RELOC_32:			     mcore_reloc = R_MCORE_ADDR32; break;
    case BFD_RELOC_MCORE_PCREL_IMM8BY4:	     mcore_reloc = R_MCORE_PCRELIMM8BY4; break;
    case BFD_RELOC_MCORE_PCREL_IMM11BY2:     mcore_reloc = R_MCORE_PCRELIMM11BY2; break;
    case BFD_RELOC_MCORE_PCREL_IMM4BY2:	     mcore_reloc = R_MCORE_PCRELIMM4BY2; break;
    case BFD_RELOC_32_PCREL:		     mcore_reloc = R_MCORE_PCREL32; break;
    case BFD_RELOC_MCORE_PCREL_JSR_IMM11BY2: mcore_reloc = R_MCORE_PCRELJSR_IMM11BY2; break;
    case BFD_RELOC_VTABLE_INHERIT:           mcore_reloc = R_MCORE_GNU_VTINHERIT; break;
    case BFD_RELOC_VTABLE_ENTRY:             mcore_reloc = R_MCORE_GNU_VTENTRY; break;
    case BFD_RELOC_RVA:                      mcore_reloc = R_MCORE_RELATIVE; break;
    default:
      return (reloc_howto_type *)NULL;
    }

  if (! mcore_elf_howto_table [R_MCORE_PCRELIMM8BY4])	/* Initialize howto table if needed */
    mcore_elf_howto_init ();

  return mcore_elf_howto_table [(int) mcore_reloc];
};

/* Set the howto pointer for a RCE ELF reloc.  */
static void
mcore_elf_info_to_howto (abfd, cache_ptr, dst)
     bfd * abfd ATTRIBUTE_UNUSED;
     arelent * cache_ptr;
     Elf32_Internal_Rela * dst;
{
  if (! mcore_elf_howto_table [R_MCORE_PCRELIMM8BY4])	/* Initialize howto table if needed */
    mcore_elf_howto_init ();

  BFD_ASSERT (ELF32_R_TYPE (dst->r_info) < (unsigned int) R_MCORE_max);
  
  cache_ptr->howto = mcore_elf_howto_table [ELF32_R_TYPE (dst->r_info)];
}

/* The MCore linker needs to keep track of the number of relocs that
   it decides to copy in check_relocs for each symbol.  This is so
   that it can discard PC relative relocs if it doesn't need them
   when linking with -Bsymbolic.  We store the information in a
   field extending the regular ELF linker hash table.  */

/* This structure keeps track of the number of PC
   relative relocs we have copied for a given symbol.  */
typedef struct elf32_mcore_pcrel_relocs_copied
{
  /* Next section.  */
  struct elf32_mcore_pcrel_relocs_copied * next;
  
  /* A section in dynobj.  */
  asection * section;
  
  /* Number of relocs copied in this section.  */
  bfd_size_type count;
}
elf32_mcore_pcrel_relocs_copied;

/* MCore ELF linker hash entry.  */
typedef struct elf32_mcore_link_hash_entry
{
  struct elf_link_hash_entry root;

  /* Number of PC relative relocs copied for this symbol.  */
  elf32_mcore_pcrel_relocs_copied * pcrel_relocs_copied;
}
elf32_mcore_link_hash_entry;

/* MCore ELF linker hash table.  */
typedef struct elf32_mcore_link_hash_table
{
  struct elf_link_hash_table root;
}
elf32_mcore_link_hash_table;

/* Declare these now that the above structures are defined.  */
static boolean elf32_mcore_discard_copies
  PARAMS ((elf32_mcore_link_hash_entry *, PTR));
static struct bfd_hash_entry * elf32_mcore_link_hash_newfunc
  PARAMS ((struct bfd_hash_entry *, struct bfd_hash_table *, const char *));
static struct bfd_link_hash_table * elf32_mcore_link_hash_table_create
  PARAMS ((bfd *));

/* Traverse an mcore ELF linker hash table.  */
#define elf32_mcore_link_hash_traverse(table, func, info)		\
  (elf_link_hash_traverse						\
   (&(table)->root,							\
    (boolean (*) PARAMS ((struct elf_link_hash_entry *, PTR))) (func),	\
    (info)))

/* Get the mcore ELF linker hash table from a link_info structure.  */
#define elf32_mcore_hash_table(p) ((elf32_mcore_link_hash_table *) ((p)->hash))

/* Create an entry in an i386 ELF linker hash table.  */
static struct bfd_hash_entry *
elf32_mcore_link_hash_newfunc (entry, table, string)
     struct bfd_hash_entry * entry;
     struct bfd_hash_table * table;
     const char * string;
{
  elf32_mcore_link_hash_entry * ret =
    (elf32_mcore_link_hash_entry *) entry;

  /* Allocate the structure if it has not
     already been allocated by a subclass.  */
  if (ret == NULL)
    ret = ((struct elf32_mcore_link_hash_entry *)
	   bfd_hash_allocate (table, sizeof (* ret)));

  if (ret == NULL)
    return NULL;

  /* Call the allocation method of the superclass.  */
  ret = ((struct elf32_mcore_link_hash_entry *)
	 _bfd_elf_link_hash_newfunc ((struct bfd_hash_entry *) ret,
				     table, string));
  
  if (ret != NULL)
    ret->pcrel_relocs_copied = NULL;

  return (struct bfd_hash_entry *) ret;
}

/* Create an mcore ELF linker hash table.  */
static struct bfd_link_hash_table *
elf32_mcore_link_hash_table_create (abfd)
     bfd * abfd;
{
  elf32_mcore_link_hash_table * ret;
  
  ret = (elf32_mcore_link_hash_table *) bfd_alloc (abfd, sizeof (* ret));
  
  if (ret == NULL)
    return NULL;

  if (! _bfd_elf_link_hash_table_init (& ret->root, abfd,
				       elf32_mcore_link_hash_newfunc))
    {
      bfd_release (abfd, ret);
      return NULL;
    }

  return & ret->root.root;
}

/* Add an entry to the base file.  */
static void
mcore_emit_base_file_entry (info, output_bfd, input_section, reloc_offset)
      struct bfd_link_info * info;
      bfd *                  output_bfd;
      asection *             input_section;
      bfd_vma                reloc_offset;
{
  bfd_vma addr = reloc_offset
                 - input_section->vma
                 + input_section->output_offset
                 + input_section->output_section->vma;
#if 0 /* XXX how do we do this for ELF ? */
  if (coff_data (output_bfd)->pe)
     addr -= pe_data (output_bfd)->pe_opthdr.ImageBase;
#endif
  fwrite (&addr, 1, sizeof (addr), (FILE *) info->base_file);
}

/* Function to set whether a module needs the -mrelocatable bit set. */
static boolean
mcore_elf_set_private_flags (abfd, flags)
     bfd * abfd;
     flagword flags;
{
  BFD_ASSERT (! elf_flags_init (abfd)
	      || elf_elfheader (abfd)->e_flags == flags);

  elf_elfheader (abfd)->e_flags = flags;
  elf_flags_init (abfd) = true;
  return true;
}

/* Copy backend specific data from one object module to another.  */
static boolean
mcore_elf_copy_private_bfd_data (ibfd, obfd)
     bfd * ibfd;
     bfd * obfd;
{
  if (   bfd_get_flavour (ibfd) != bfd_target_elf_flavour
      || bfd_get_flavour (obfd) != bfd_target_elf_flavour)
    return true;

  BFD_ASSERT (! elf_flags_init (obfd)
	      || elf_elfheader (obfd)->e_flags == elf_elfheader (ibfd)->e_flags);

  elf_elfheader (obfd)->e_flags = elf_elfheader (ibfd)->e_flags;
  elf_flags_init (obfd) = true;
  return true;
}

/* Merge backend specific data from an object file to the output
   object file when linking.  */
static boolean
mcore_elf_merge_private_bfd_data (ibfd, obfd)
     bfd * ibfd;
     bfd * obfd;
{
  flagword old_flags;
  flagword new_flags;

  /* Check if we have the same endianess */
  if (_bfd_generic_verify_endian_match (ibfd, obfd) == false)
    return false;

  if (   bfd_get_flavour (ibfd) != bfd_target_elf_flavour
      || bfd_get_flavour (obfd) != bfd_target_elf_flavour)
    return true;

  new_flags = elf_elfheader (ibfd)->e_flags;
  old_flags = elf_elfheader (obfd)->e_flags;
  
  if (! elf_flags_init (obfd))	/* First call, no flags set */
    {
      elf_flags_init (obfd) = true;
      elf_elfheader (obfd)->e_flags = new_flags;
    }
  else if (new_flags == old_flags)	/* Compatible flags are ok */
    ;
  else
    {
      /* FIXME */
    }

  return true;
}


/* Don't pretend we can deal with unsupported relocs.  */

/*ARGSUSED*/
static bfd_reloc_status_type
mcore_elf_unsupported_reloc (abfd, reloc_entry, symbol, data, input_section,
			   output_bfd, error_message)
     bfd * abfd;
     arelent * reloc_entry;
     asymbol * symbol ATTRIBUTE_UNUSED;
     PTR data ATTRIBUTE_UNUSED;
     asection * input_section ATTRIBUTE_UNUSED;
     bfd * output_bfd ATTRIBUTE_UNUSED;
     char ** error_message ATTRIBUTE_UNUSED;
{
  BFD_ASSERT (reloc_entry->howto != (reloc_howto_type *)0);
  
  _bfd_error_handler (_("%s: Relocation %s (%d) is not currently supported.\n"),
		      bfd_get_filename (abfd),
		      reloc_entry->howto->name,
		      reloc_entry->howto->type);

  return bfd_reloc_notsupported;
}


/* The RELOCATE_SECTION function is called by the ELF backend linker
   to handle the relocations for a section.

   The relocs are always passed as Rela structures; if the section
   actually uses Rel structures, the r_addend field will always be
   zero.

   This function is responsible for adjust the section contents as
   necessary, and (if using Rela relocs and generating a
   relocateable output file) adjusting the reloc addend as
   necessary.

   This function does not have to worry about setting the reloc
   address or the reloc symbol index.

   LOCAL_SYMS is a pointer to the swapped in local symbols.

   LOCAL_SECTIONS is an array giving the section in the input file
   corresponding to the st_shndx field of each local symbol.

   The global hash table entry for the global symbols can be found
   via elf_sym_hashes (input_bfd).

   When generating relocateable output, this function must handle
   STB_LOCAL/STT_SECTION symbols specially.  The output symbol is
   going to be the section symbol corresponding to the output
   section, which means that the addend must be adjusted
   accordingly.  */

static boolean
mcore_elf_relocate_section (output_bfd, info, input_bfd, input_section,
			  contents, relocs, local_syms, local_sections)
     bfd * output_bfd ATTRIBUTE_UNUSED;
     struct bfd_link_info * info;
     bfd * input_bfd;
     asection * input_section;
     bfd_byte * contents;
     Elf_Internal_Rela * relocs;
     Elf_Internal_Sym * local_syms;
     asection ** local_sections;
{
  Elf_Internal_Shdr *           symtab_hdr = & elf_tdata (input_bfd)->symtab_hdr;
  struct elf_link_hash_entry ** sym_hashes = elf_sym_hashes (input_bfd);
  Elf_Internal_Rela *           rel = relocs;
  Elf_Internal_Rela *           relend = relocs + input_section->reloc_count;
  boolean ret = true;

#ifdef DEBUG
  fprintf (stderr,
	   "mcore_elf_relocate_section called for %s section %s, %ld relocations%s\n",
	   bfd_get_filename (input_bfd),
	   bfd_section_name(input_bfd, input_section),
	   (long) input_section->reloc_count,
	   (info->relocateable) ? " (relocatable)" : "");
#endif

  if (! mcore_elf_howto_table [R_MCORE_PCRELIMM8BY4])	/* Initialize howto table if needed */
    mcore_elf_howto_init ();

  for (; rel < relend; rel++)
    {
      enum elf_mcore_reloc_type    r_type = (enum elf_mcore_reloc_type) ELF32_R_TYPE (rel->r_info);
      bfd_vma                      offset = rel->r_offset;
      bfd_vma                      addend = rel->r_addend;
      bfd_reloc_status_type        r = bfd_reloc_other;
      asection *                   sec = (asection *) 0;
      reloc_howto_type *           howto;
      bfd_vma                      relocation;
      Elf_Internal_Sym *           sym = (Elf_Internal_Sym *) 0;
      unsigned long                r_symndx;
      struct elf_link_hash_entry * h = (struct elf_link_hash_entry *) 0;
      unsigned short               oldinst = 0;
      
      /* Unknown relocation handling */
      if ((unsigned) r_type >= (unsigned) R_MCORE_max
	  || ! mcore_elf_howto_table [(int)r_type])
	{
	  _bfd_error_handler (_("%s: Unknown relocation type %d\n"),
			      bfd_get_filename (input_bfd),
			      (int) r_type);

	  bfd_set_error (bfd_error_bad_value);
	  ret = false;
	  continue;
	}
      
      howto = mcore_elf_howto_table [(int) r_type];
      r_symndx = ELF32_R_SYM (rel->r_info);
      
      if (info->relocateable)
	{
	  /* This is a relocateable link.  We don't have to change
	     anything, unless the reloc is against a section symbol,
	     in which case we have to adjust according to where the
	     section symbol winds up in the output section.  */
	  if (r_symndx < symtab_hdr->sh_info)
	    {
	      sym = local_syms + r_symndx;
	      
	      if ((unsigned)ELF_ST_TYPE (sym->st_info) == STT_SECTION)
		{
		  sec = local_sections[r_symndx];
		  addend = rel->r_addend += sec->output_offset + sym->st_value;
		}
	    }

#ifdef DEBUG
	  fprintf (stderr, "\ttype = %s (%d), symbol index = %ld, offset = %ld, addend = %ld\n",
		   howto->name, (int) r_type, r_symndx, (long) offset, (long) addend);
#endif
	  continue;
	}

      /* This is a final link.  */

      /* Complain about known relocation that are not yet supported.  */
      if (howto->special_function == mcore_elf_unsupported_reloc)
	{
	  _bfd_error_handler (_("%s: Relocation %s (%d) is not currently supported.\n"),
			      bfd_get_filename (input_bfd),
			      howto->name,
			      (int)r_type);

	  bfd_set_error (bfd_error_bad_value);
	  ret = false;
	  continue;
	}

      if (r_symndx < symtab_hdr->sh_info)
	{
	  sym = local_syms + r_symndx;
	  sec = local_sections [r_symndx];
	  relocation = (sec->output_section->vma
			+ sec->output_offset
			+ sym->st_value);
	}
      else
	{
	  h = sym_hashes [r_symndx - symtab_hdr->sh_info];
	  if (   h->root.type == bfd_link_hash_defined
	      || h->root.type == bfd_link_hash_defweak)
	    {
	      sec = h->root.u.def.section;
	      relocation = (h->root.u.def.value
			    + sec->output_section->vma
			    + sec->output_offset);
	    }
	  else if (h->root.type == bfd_link_hash_undefweak)
	    relocation = 0;
	  else if (info->shared
		   && ELF_ST_VISIBILITY (h->other) == STV_DEFAULT)
	    relocation = 0;
	  else
	    {
	      if (! ((*info->callbacks->undefined_symbol)
			(info, h->root.root.string, input_bfd,
		 	 input_section, rel->r_offset, true)))
		return false;

	      ret = false;
	      continue;
	    }
	}

      switch (r_type)
	{
	default:
	  break;

	case R_MCORE_PCRELJSR_IMM11BY2:
	  oldinst = bfd_get_16 (input_bfd, contents + offset);
#define	MCORE_INST_BSR	0xF800
	  bfd_put_16 (input_bfd, MCORE_INST_BSR, contents + offset);
	  break;
	}


#ifdef DEBUG
      fprintf (stderr, "\ttype = %s (%d), symbol index = %ld, offset = %ld, addend = %ld\n",
	       howto->name, r_type, r_symndx, (long) offset, (long) addend);
#endif

      r = _bfd_final_link_relocate
	(howto, input_bfd, input_section, contents, offset, relocation, addend);

      if (r != bfd_reloc_ok && r_type == R_MCORE_PCRELJSR_IMM11BY2)
	{
	  /* Wasn't ok, back it out and give up.  */
	  bfd_put_16 (input_bfd, oldinst, contents + offset);
	  r = bfd_reloc_ok;
	}
      
      if (info->base_file)
	{
	  /* Emit a reloc if the backend thinks it needs it.  */
	  if (sym
	      && ! howto->pc_relative
	      && howto->type != R_MCORE_RELATIVE)
            mcore_emit_base_file_entry (info, output_bfd, input_section, offset);
	}
      
      if (r != bfd_reloc_ok)
	{
	  ret = false;
	  
	  switch (r)
	    {
	    default:
	      break;

	    case bfd_reloc_overflow:
	      {
		const char * name;

		if (h != NULL)
		  name = h->root.root.string;
		else
		  {
		    name = bfd_elf_string_from_elf_section
		      (input_bfd, symtab_hdr->sh_link, sym->st_name);
		    
		    if (name == NULL)
		      break;

		    if (* name == '\0')
		      name = bfd_section_name (input_bfd, sec);
		  }

		(*info->callbacks->reloc_overflow)
		  (info, name, howto->name, (bfd_vma) 0, input_bfd, input_section,
		   offset);
	      }
	      break;
	    }
	}
    }

#ifdef DEBUG
  fprintf (stderr, "\n");
#endif

  return ret;
}

/* Return the section that should be marked against GC for a given
   relocation.  */

static asection *
mcore_elf_gc_mark_hook (abfd, info, rel, h, sym)
     bfd *                        abfd;
     struct bfd_link_info *       info ATTRIBUTE_UNUSED;
     Elf_Internal_Rela *          rel;
     struct elf_link_hash_entry * h;
     Elf_Internal_Sym *           sym;
{
  if (h != NULL)
    {
      switch (ELF32_R_TYPE (rel->r_info))
	{
	case R_MCORE_GNU_VTINHERIT:
	case R_MCORE_GNU_VTENTRY:
	  break;

	default:
	  switch (h->root.type)
	    {
	    case bfd_link_hash_defined:
	    case bfd_link_hash_defweak:
	      return h->root.u.def.section;
	      
	    case bfd_link_hash_common:
	      return h->root.u.c.p->section;

	    default:
	      break;
	    }
	}
    }
  else
    {
      if (!(elf_bad_symtab (abfd)
	    && ELF_ST_BIND (sym->st_info) != STB_LOCAL)
	  && ! ((sym->st_shndx <= 0 || sym->st_shndx >= SHN_LORESERVE)
		&& sym->st_shndx != SHN_COMMON))
	{
	  return bfd_section_from_elf_index (abfd, sym->st_shndx);
	}
    }

  return NULL;
}

/* Update the got entry reference counts for the section being removed.  */

static boolean
mcore_elf_gc_sweep_hook (abfd, info, sec, relocs)
     bfd *                     abfd ATTRIBUTE_UNUSED;
     struct bfd_link_info *    info ATTRIBUTE_UNUSED;
     asection *                sec ATTRIBUTE_UNUSED;
     const Elf_Internal_Rela * relocs ATTRIBUTE_UNUSED;
{
  return true;
}

/* Look through the relocs for a section during the first phase.
   Since we don't do .gots or .plts, we just need to consider the
   virtual table relocs for gc.  */
 
static boolean
mcore_elf_check_relocs (abfd, info, sec, relocs)
     bfd * abfd;
     struct bfd_link_info * info;
     asection * sec;
     const Elf_Internal_Rela * relocs;
{
  Elf_Internal_Shdr *           symtab_hdr;
  struct elf_link_hash_entry ** sym_hashes;
  struct elf_link_hash_entry ** sym_hashes_end;
  const Elf_Internal_Rela *     rel;
  const Elf_Internal_Rela *     rel_end;
 
  if (info->relocateable)
    return true;
 
  symtab_hdr = & elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  sym_hashes_end = sym_hashes + symtab_hdr->sh_size / sizeof (Elf32_External_Sym);
  if (!elf_bad_symtab (abfd))
    sym_hashes_end -= symtab_hdr->sh_info;
 
  rel_end = relocs + sec->reloc_count;
  
  for (rel = relocs; rel < rel_end; rel++)
    {
      struct elf_link_hash_entry * h;
      unsigned long r_symndx;
 
      r_symndx = ELF32_R_SYM (rel->r_info);
      
      if (r_symndx < symtab_hdr->sh_info)
        h = NULL;
      else
        h = sym_hashes [r_symndx - symtab_hdr->sh_info];
 
      switch (ELF32_R_TYPE (rel->r_info))
        {
        /* This relocation describes the C++ object vtable hierarchy.
           Reconstruct it for later use during GC.  */
        case R_MCORE_GNU_VTINHERIT:
          if (!_bfd_elf32_gc_record_vtinherit (abfd, sec, h, rel->r_offset))
            return false;
          break;
	  
        /* This relocation describes which C++ vtable entries are actually
           used.  Record for later use during GC.  */
        case R_MCORE_GNU_VTENTRY:
          if (!_bfd_elf32_gc_record_vtentry (abfd, sec, h, rel->r_addend))
            return false;
          break;
        }
    }
 
  return true;
}

/* The name of the dynamic interpreter.
   This is put in the .interp section.  */
#define ELF_DYNAMIC_INTERPRETER "/usr/lib/libc.so.1"

/* The size in bytes of an entry in the procedure linkage table.  */
#define PLT_ENTRY_SIZE 24

/* The first entry in an absolute procedure linkage table looks like
   this.  See the SVR4 ABI i386 supplement to see how this works.  */
static const bfd_byte elf_mcore_plt0_entry[PLT_ENTRY_SIZE] =
{
  0x71, 0x02,             /* lrw  r1, #2    (Get address of .got + 4) */
  0x24, 0x80,             /* subi r0, #8    (Get space on the stack)  */
  0x91, 0x00,             /* stw  r1, (r0)  (Store the address on the stack) */
  0x70, 0x01,             /* jmpi #1        (Branch to .got + 8) */
  0x00, 0x00, 0x00, 0x00, /* .word          (replaced with address of .got + 4 */
  0x00, 0x00, 0x00, 0x00, /* .word          (replaced with address of .got + 8 */
  0x00, 0x00, 0x00, 0x00, /* .word          (pad out to 20 bytes) */
  0x00, 0x00, 0x00, 0x00  /* .word          (pad out to 24 bytes) */
};

/* Subsequent entries in an absolute
   procedure linkage table look like this.  */
static const bfd_byte elf_mcore_plt_entry[PLT_ENTRY_SIZE] =
{
  0x70, 0x01,             /* jmpi, #1       (Branch to symbol's .got entry) */
  0x12, 0x11,             /* nop            (word align the next line) */
  0x00, 0x00, 0x00, 0x00, /* .word          (replaced with address of symbol's .got entry) */
  0x71, 0x02,             /* lrw  r1, #2    (Get the offset into r1) */
  0x24, 0x80,             /* subi r0, #8    (ABI says stack must be 8 byte aligned) */
  0x91, 0x00,             /* stw  r1, (r0)  (Store the offset on the stack) */
  0x70, 0x01,             /* jmpi #1        (Branch to the start of the .plt section */
  0x00, 0x00, 0x00, 0x00, /* .word          (replaced with offset into relocation table */
  0x00, 0x00, 0x00, 0x00  /* .word          (replaced with address of .plt) */   
};

/* The first entry in a PIC procedure linkage table look like this.  */
static const bfd_byte elf_mcore_pic_plt0_entry[PLT_ENTRY_SIZE] =
{
  0xff, 0xb3, 4, 0, 0, 0,	/* pushl 4(%ebx) */
  0xff, 0xa3, 8, 0, 0, 0,	/* jmp *8(%ebx) */
  0, 0, 0, 0			/* pad out to 16 bytes.  */
};

/* Subsequent entries in a PIC procedure linkage table look like this.  */
static const bfd_byte elf_mcore_pic_plt_entry[PLT_ENTRY_SIZE] =
{
  0xff, 0xa3,	/* jmp *offset(%ebx) */
  0, 0, 0, 0,	/* replaced with offset of this symbol in .got.  */
  0x68,		/* pushl immediate */
  0, 0, 0, 0,	/* replaced with offset into relocation table.  */
  0xe9,		/* jmp relative */
  0, 0, 0, 0	/* replaced with offset to start of .plt.  */
};


/* Adjust a symbol defined by a dynamic object and referenced by a
   regular object.  The current definition is in some section of the
   dynamic object, but we're not including those sections.  We have to
   change the definition to something the rest of the link can
   understand.  */

static boolean
elf32_mcore_adjust_dynamic_symbol (info, h)
     struct bfd_link_info * info;
     struct elf_link_hash_entry * h;
{
#if 0
  bfd * dynobj;
  asection * s;
  unsigned int power_of_two;

  dynobj = elf_hash_table (info)->dynobj;
  
  /* Make sure we know what is going on here.  */
  BFD_ASSERT (dynobj != NULL
	      && ((h->elf_link_hash_flags & ELF_LINK_HASH_NEEDS_PLT)
		  || h->weakdef != NULL
		  || ((h->elf_link_hash_flags
		       & ELF_LINK_HASH_DEF_DYNAMIC) != 0
		      && (h->elf_link_hash_flags
			  & ELF_LINK_HASH_REF_REGULAR) != 0
		      && (h->elf_link_hash_flags
			  & ELF_LINK_HASH_DEF_REGULAR) == 0)));

  /* If this is a function, put it in the procedure linkage table.  We
     will fill in the contents of the procedure linkage table later,
     when we know the address of the .got section.  */
  if (h->type == STT_FUNC
      || (h->elf_link_hash_flags & ELF_LINK_HASH_NEEDS_PLT) != 0)
    {
      if (! info->shared
	  && (h->elf_link_hash_flags & ELF_LINK_HASH_DEF_DYNAMIC) == 0
	  && (h->elf_link_hash_flags & ELF_LINK_HASH_REF_DYNAMIC) == 0)
	{
	  /* This case can occur if we saw a PLT32 reloc in an input
             file, but the symbol was never referred to by a dynamic
             object.  In such a case, we don't actually need to build
             a procedure linkage table, and we can just do a PC32
             reloc instead.  */
	  BFD_ASSERT ((h->elf_link_hash_flags & ELF_LINK_HASH_NEEDS_PLT) != 0);
	  return true;
	}

      /* Make sure this symbol is output as a dynamic symbol.  */
      if (h->dynindx == -1)
	if (! bfd_elf32_link_record_dynamic_symbol (info, h))
	  return false;

      s = bfd_get_section_by_name (dynobj, ".plt");
      BFD_ASSERT (s != NULL);

      /* If this is the first .plt entry, make
	 room for the special first entry.  */
      if (s->_raw_size == 0)
	s->_raw_size += PLT_ENTRY_SIZE;

      /* If this symbol is not defined in a regular file, and we are
	 not generating a shared library, then set the symbol to this
	 location in the .plt.  This is required to make function
	 pointers compare as equal between the normal executable and
	 the shared library.  */
      if (! info->shared
	  && (h->elf_link_hash_flags & ELF_LINK_HASH_DEF_REGULAR) == 0)
	{
	  h->root.u.def.section = s;
	  h->root.u.def.value = s->_raw_size;
	}

      h->plt.offset = s->_raw_size;

      /* Make room for this entry.  */
      s->_raw_size += PLT_ENTRY_SIZE;

      /* We also need to make an entry in the .got.plt section, which
	 will be placed in the .got section by the linker script.  */
      s = bfd_get_section_by_name (dynobj, ".got.plt");
      BFD_ASSERT (s != NULL);
      s->_raw_size += 4;

      /* We also need to make an entry in the .rel.plt section.  */
      s = bfd_get_section_by_name (dynobj, ".rel.plt");
      BFD_ASSERT (s != NULL);
      s->_raw_size += sizeof (Elf32_External_Rel);

      return true;
    }

  /* If this is a weak symbol, and there is a real definition, the
     processor independent code will have arranged for us to see the
     real definition first, and we can just use the same value.  */
  if (h->weakdef != NULL)
    {
      BFD_ASSERT (h->weakdef->root.type == bfd_link_hash_defined
		  || h->weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->weakdef->root.u.def.section;
      h->root.u.def.value = h->weakdef->root.u.def.value;
      return true;
    }

  /* This is a reference to a symbol defined by
     a dynamic object which is not a function.  */

  /* If we are creating a shared library, we must presume that the
     only references to the symbol are via the global offset table.
     For such cases we need not do anything here; the relocations will
     be handled correctly by relocate_section.  */
  if (info->shared)
    return true;

  /* We must allocate the symbol in our .dynbss section, which will
     become part of the .bss section of the executable.  There will be
     an entry for this symbol in the .dynsym section.  The dynamic
     object will contain position independent code, so all references
     from the dynamic object to this symbol will go through the global
     offset table.  The dynamic linker will use the .dynsym entry to
     determine the address it must put in the global offset table, so
     both the dynamic object and the regular object will refer to the
     same memory location for the variable.  */
  s = bfd_get_section_by_name (dynobj, ".dynbss");
  BFD_ASSERT (s != NULL);

  /* We must generate a R_386_COPY reloc to tell the dynamic linker to
     copy the initial value out of the dynamic object and into the
     runtime process image.  We need to remember the offset into the
     .rel.bss section we are going to use.  */
  if ((h->root.u.def.section->flags & SEC_ALLOC) != 0)
    {
      asection * srel;

      srel = bfd_get_section_by_name (dynobj, ".rel.bss");
      BFD_ASSERT (srel != NULL);
      srel->_raw_size += sizeof (Elf32_External_Rel);
      h->elf_link_hash_flags |= ELF_LINK_HASH_NEEDS_COPY;
    }

  /* We need to figure out the alignment required for this symbol.  I
     have no idea how ELF linkers handle this.  */
  power_of_two = bfd_log2 (h->size);
  if (power_of_two > 3)
    power_of_two = 3;

  /* Apply the required alignment.  */
  s->_raw_size = BFD_ALIGN (s->_raw_size,
			    (bfd_size_type) (1 << power_of_two));
  if (power_of_two > bfd_get_section_alignment (dynobj, s))
    {
      if (! bfd_set_section_alignment (dynobj, s, power_of_two))
	return false;
    }

  /* Define the symbol as being at this point in the section.  */
  h->root.u.def.section = s;
  h->root.u.def.value = s->_raw_size;

  /* Increment the section size to make room for the symbol.  */
  s->_raw_size += h->size;

  return true;
#else
  //  fprintf (stderr, "elf32_mcore_adjust_dynamic_symbol called, h = %x (%s)\n",
  //	   h, h->root.root.string);
  return true;
#endif
}

/* This function is called via elf32_mcore_link_hash_traverse if we are
   creating a shared object with -Bsymbolic.  It discards the space
   allocated to copy PC relative relocs against symbols which are
   defined in regular objects.  We allocated space for them in the
   check_relocs routine, but we won't fill them in in the
   relocate_section routine.  */
/*ARGSUSED*/
static boolean
elf32_mcore_discard_copies (h, ignore)
     elf32_mcore_link_hash_entry * h;
     PTR ignore;
{
  struct elf32_mcore_pcrel_relocs_copied * s;

  /* We only discard relocs for symbols defined in a regular object.  */
  if ((h->root.elf_link_hash_flags & ELF_LINK_HASH_DEF_REGULAR) == 0)
    return true;

  for (s = h->pcrel_relocs_copied; s != NULL; s = s->next)
    s->section->_raw_size -= s->count * sizeof (Elf32_External_Rel);

  return true;
}

/* Set the sizes of the dynamic sections.  */
static boolean
elf32_mcore_size_dynamic_sections (output_bfd, info)
     bfd * output_bfd;
     struct bfd_link_info * info;
{
#if 0
  bfd * dynobj;
  asection * s;
  boolean plt;
  boolean relocs;
  boolean reltext;

  dynobj = elf_hash_table (info)->dynobj;
  BFD_ASSERT (dynobj != NULL);

  if (elf_hash_table (info)->dynamic_sections_created)
    {
      /* Set the contents of the .interp section to the interpreter.  */
      if (! info->shared)
	{
	  s = bfd_get_section_by_name (dynobj, ".interp");
	  BFD_ASSERT (s != NULL);
	  s->_raw_size = sizeof ELF_DYNAMIC_INTERPRETER;
	  s->contents = (unsigned char *) ELF_DYNAMIC_INTERPRETER;
	}
    }
  else
    {
      /* We may have created entries in the .rel.got section.
         However, if we are not creating the dynamic sections, we will
         not actually use these entries.  Reset the size of .rel.got,
         which will cause it to get stripped from the output file
         below.  */
      s = bfd_get_section_by_name (dynobj, ".rel.got");
      if (s != NULL)
	s->_raw_size = 0;
    }

  /* If this is a -Bsymbolic shared link, then we need to discard all
     PC relative relocs against symbols defined in a regular object.
     We allocated space for them in the check_relocs routine, but we
     will not fill them in in the relocate_section routine.  */
  if (info->shared && info->symbolic)
    elf32_mcore_link_hash_traverse (elf32_mcore_hash_table (info),
				    elf32_mcore_discard_copies,
				    (PTR) NULL);
  
  /* The check_relocs and adjust_dynamic_symbol entry points have
     determined the sizes of the various dynamic sections.  Allocate
     memory for them.  */
  plt = false;
  relocs = false;
  reltext = false;
  for (s = dynobj->sections; s != NULL; s = s->next)
    {
      const char * name;
      boolean strip;

      if ((s->flags & SEC_LINKER_CREATED) == 0)
	continue;

      /* It's OK to base decisions on the section name, because none
	 of the dynobj section names depend upon the input files.  */
      name = bfd_get_section_name (dynobj, s);

      strip = false;

      if (strcmp (name, ".plt") == 0)
	{
	  if (s->_raw_size == 0)
	    /* Strip this section if we don't need it; see the
	       comment below.  */
	    strip = true;
	  else
	    /* Remember whether there is a PLT.  */
	    plt = true;
	}
      else if (strncmp (name, ".rel", 4) == 0)
	{
	  if (s->_raw_size == 0)
	    {
	      /* If we don't need this section, strip it from the
		 output file.  This is mostly to handle .rel.bss and
		 .rel.plt.  We must create both sections in
		 create_dynamic_sections, because they must be created
		 before the linker maps input sections to output
		 sections.  The linker does that before
		 adjust_dynamic_symbol is called, and it is that
		 function which decides whether anything needs to go
		 into these sections.  */
	      strip = true;
	    }
	  else
	    {
	      asection * target;

	      /* Remember whether there are any reloc sections other
                 than .rel.plt.  */
	      if (strcmp (name, ".rel.plt") != 0)
		{
		  const char * outname;

		  relocs = true;

		  /* If this relocation section applies to a read only
		     section, then we probably need a DT_TEXTREL
		     entry.  The entries in the .rel.plt section
		     really apply to the .got section, which we
		     created ourselves and so know is not readonly.  */
		  outname = bfd_get_section_name (output_bfd,
						  s->output_section);
		  target = bfd_get_section_by_name (output_bfd, outname + 4);
		  if (target != NULL
		      && (target->flags & SEC_READONLY) != 0
		      && (target->flags & SEC_ALLOC) != 0)
		    reltext = true;
		}

	      /* We use the reloc_count field as a counter if we need
		 to copy relocs into the output file.  */
	      s->reloc_count = 0;
	    }
	}
      else if (strncmp (name, ".got", 4) != 0)
	/* It's not one of our sections, so don't allocate space.  */
	continue;

      if (strip)
	{
	  _bfd_strip_section_from_output (info, s);
	  continue;
	}

      /* Allocate memory for the section contents.  */
      s->contents = (bfd_byte *) bfd_alloc (dynobj, s->_raw_size);
      if (s->contents == NULL && s->_raw_size != 0)
	return false;
    }

  if (elf_hash_table (info)->dynamic_sections_created)
    {
      /* Add some entries to the .dynamic section.  We fill in the
	 values later, in elf_i386_finish_dynamic_sections, but we
	 must add the entries now so that we get the correct size for
	 the .dynamic section.  The DT_DEBUG entry is filled in by the
	 dynamic linker and used by the debugger.  */
      if (! info->shared)
	if (! bfd_elf32_add_dynamic_entry (info, DT_DEBUG, 0))
	  return false;

      if (plt)
	if (   ! bfd_elf32_add_dynamic_entry (info, DT_PLTGOT, 0)
	    || ! bfd_elf32_add_dynamic_entry (info, DT_PLTRELSZ, 0)
	    || ! bfd_elf32_add_dynamic_entry (info, DT_PLTREL, DT_REL)
	    || ! bfd_elf32_add_dynamic_entry (info, DT_JMPREL, 0))
	  return false;

      if (relocs)
	if (   ! bfd_elf32_add_dynamic_entry (info, DT_REL, 0)
	    || ! bfd_elf32_add_dynamic_entry (info, DT_RELSZ, 0)
	    || ! bfd_elf32_add_dynamic_entry (info, DT_RELENT,
					      sizeof (Elf32_External_Rel)))
	  return false;

      if (reltext)
	if (! bfd_elf32_add_dynamic_entry (info, DT_TEXTREL, 0))
	  return false;
    }

  return true;
#else
  // fprintf (stderr, "elf32_mcore_size_dynamic_sections called\n");
  return true;
#endif
}

/* Finish up dynamic symbol handling.  We set the contents of various
   dynamic sections here.  */
static boolean
elf32_mcore_finish_dynamic_symbol (output_bfd, info, h, sym)
     bfd * output_bfd;
     struct bfd_link_info * info;
     struct elf_link_hash_entry * h;
     Elf_Internal_Sym * sym;
{
#if 0
  bfd * dynobj;

  dynobj = elf_hash_table (info)->dynobj;
  BFD_ASSERT (dynobj != NULL);
  
  if (h->plt.offset != (bfd_vma) -1)
    {
      asection * splt;
      asection * sgot;
      asection * srel;
      bfd_vma    plt_index;
      bfd_vma    got_offset;
      Elf_Internal_Rel rel;

      /* This symbol has an entry in the
	 procedure linkage table.  Set it up.  */

      BFD_ASSERT (h->dynindx != -1);

      splt = bfd_get_section_by_name (dynobj, ".plt");
      sgot = bfd_get_section_by_name (dynobj, ".got.plt");
      srel = bfd_get_section_by_name (dynobj, ".rel.plt");
      
      BFD_ASSERT (splt != NULL && sgot != NULL && srel != NULL);

      /* Get the index in the procedure linkage table which
	 corresponds to this symbol.  This is the index of this symbol
	 in all the symbols for which we are making plt entries.  The
	 first entry in the procedure linkage table is reserved.  */
      plt_index = h->plt.offset / PLT_ENTRY_SIZE - 1;

      /* Get the offset into the .got table of the entry that
	 corresponds to this function.  Each .got entry is 4 bytes.
	 The first three are reserved.  */
      got_offset = (plt_index + 3) * 4;

      /* Fill in the entry in the procedure linkage table.  */
      if (! info->shared)
	{
	  memcpy (splt->contents + h->plt.offset, elf_mcore_plt_entry,
		  PLT_ENTRY_SIZE);
	  bfd_put_32 (output_bfd,
		      (sgot->output_section->vma
		       + sgot->output_offset
		       + got_offset),
		      splt->contents + h->plt.offset + 2);
	}
      else
	{
	  memcpy (splt->contents + h->plt.offset, elf_mcore_pic_plt_entry,
		  PLT_ENTRY_SIZE);
	  bfd_put_32 (output_bfd, got_offset,
		      splt->contents + h->plt.offset + 2);
	}

      bfd_put_32 (output_bfd, plt_index * sizeof (Elf32_External_Rel),
		  splt->contents + h->plt.offset + 7);
      bfd_put_32 (output_bfd, - (h->plt.offset + PLT_ENTRY_SIZE),
		  splt->contents + h->plt.offset + 12);

      /* Fill in the entry in the global offset table.  */
      bfd_put_32 (output_bfd,
		  (splt->output_section->vma
		   + splt->output_offset
		   + h->plt.offset
		   + 6),
		  sgot->contents + got_offset);

      /* Fill in the entry in the .rel.plt section.  */
      rel.r_offset = (sgot->output_section->vma
		      + sgot->output_offset
		      + got_offset);
      rel.r_info = ELF32_R_INFO (h->dynindx, R_MCORE_JUMP_SLOT);
      bfd_elf32_swap_reloc_out (output_bfd, &rel,
				((Elf32_External_Rel *) srel->contents
				 + plt_index));

      if ((h->elf_link_hash_flags & ELF_LINK_HASH_DEF_REGULAR) == 0)
	{
	  /* Mark the symbol as undefined, rather than as defined in
	     the .plt section.  Leave the value alone.  */
	  sym->st_shndx = SHN_UNDEF;
	}
    }

  if (h->got.offset != (bfd_vma) -1)
    {
      asection * sgot;
      asection * srel;
      Elf_Internal_Rel rel;

      /* This symbol has an entry in the global offset table.  Set it
	 up.  */
      
      sgot = bfd_get_section_by_name (dynobj, ".got");
      srel = bfd_get_section_by_name (dynobj, ".rel.got");
      BFD_ASSERT (sgot != NULL && srel != NULL);

      rel.r_offset = (sgot->output_section->vma
		      + sgot->output_offset
		      + (h->got.offset &~ 1));

      /* If this is a -Bsymbolic link, and the symbol is defined
	 locally, we just want to emit a RELATIVE reloc.  Likewise if
	 the symbol was forced to be local because of a version file.
	 The entry in the global offset table will already have been
	 initialized in the relocate_section function.  */
      if (info->shared
	  && (info->symbolic || h->dynindx == -1)
	  && (h->elf_link_hash_flags & ELF_LINK_HASH_DEF_REGULAR))
	rel.r_info = ELF32_R_INFO (0, R_MCORE_RELATIVE);
      else
	{
	  bfd_put_32 (output_bfd, (bfd_vma) 0, sgot->contents + h->got.offset);
	  rel.r_info = ELF32_R_INFO (h->dynindx, R_MCORE_GLOB_DAT);
	}

      bfd_elf32_swap_reloc_out (output_bfd, & rel,
				((Elf32_External_Rel *) srel->contents
				 + srel->reloc_count));
      ++ srel->reloc_count;
    }

  if ((h->elf_link_hash_flags & ELF_LINK_HASH_NEEDS_COPY) != 0)
    {
      asection * s;
      Elf_Internal_Rel rel;

      /* This symbol needs a copy reloc.  Set it up.  */

      BFD_ASSERT (h->dynindx != -1
		  && (h->root.type == bfd_link_hash_defined
		      || h->root.type == bfd_link_hash_defweak));

      s = bfd_get_section_by_name (h->root.u.def.section->owner,
				   ".rel.bss");
      BFD_ASSERT (s != NULL);

      rel.r_offset = (h->root.u.def.value
		      + h->root.u.def.section->output_section->vma
		      + h->root.u.def.section->output_offset);
      rel.r_info = ELF32_R_INFO (h->dynindx, R_MCORE_COPY);
      bfd_elf32_swap_reloc_out (output_bfd, &rel,
				((Elf32_External_Rel *) s->contents
				 + s->reloc_count));
      ++ s->reloc_count;
    }

  /* Mark _DYNAMIC and _GLOBAL_OFFSET_TABLE_ as absolute.  */
  if (   strcmp (h->root.root.string, "_DYNAMIC") == 0
      || strcmp (h->root.root.string, "_GLOBAL_OFFSET_TABLE_") == 0)
    sym->st_shndx = SHN_ABS;

  return true;
#else
  // fprintf (stderr, "elf32_mcore_finish_dynamic_symbol called, sym = %x h = %x (%s)\n",
  //	   sym, h, h->root.root.string);
  return true;
#endif
}

/* Finish up the dynamic sections.  */
static boolean
elf32_mcore_finish_dynamic_sections (output_bfd, info)
     bfd * output_bfd;
     struct bfd_link_info * info;
{
#if 0
  bfd *      dynobj;
  asection * sgot;
  asection * sdyn;

  dynobj = elf_hash_table (info)->dynobj;

  sgot = bfd_get_section_by_name (dynobj, ".got.plt");
  BFD_ASSERT (sgot != NULL);
  sdyn = bfd_get_section_by_name (dynobj, ".dynamic");
  BFD_ASSERT (sdyn != NULL);

  if (elf_hash_table (info)->dynamic_sections_created)
    {
      asection * splt;
      Elf32_External_Dyn * dyncon;
      Elf32_External_Dyn * dynconend;

      BFD_ASSERT (sdyn != NULL);

      dyncon = (Elf32_External_Dyn *) sdyn->contents;
      dynconend = (Elf32_External_Dyn *) (sdyn->contents + sdyn->_raw_size);
      
      for (; dyncon < dynconend; dyncon++)
	{
	  Elf_Internal_Dyn dyn;
	  const char * name;
	  asection * s;

	  bfd_elf32_swap_dyn_in (dynobj, dyncon, &dyn);

	  switch (dyn.d_tag)
	    {
	    default:
	      break;

	    case DT_PLTGOT:
	      name = ".got";
	      goto get_vma;
	    case DT_JMPREL:
	      name = ".rel.plt";
	    get_vma:
	      s = bfd_get_section_by_name (output_bfd, name);
	      BFD_ASSERT (s != NULL);
	      dyn.d_un.d_ptr = s->vma;
	      bfd_elf32_swap_dyn_out (output_bfd, &dyn, dyncon);
	      break;

	    case DT_PLTRELSZ:
	      s = bfd_get_section_by_name (output_bfd, ".rel.plt");
	      BFD_ASSERT (s != NULL);
	      if (s->_cooked_size != 0)
		dyn.d_un.d_val = s->_cooked_size;
	      else
		dyn.d_un.d_val = s->_raw_size;
	      bfd_elf32_swap_dyn_out (output_bfd, &dyn, dyncon);
	      break;

	    case DT_RELSZ:
	      /* My reading of the SVR4 ABI indicates that the
		 procedure linkage table relocs (DT_JMPREL) should be
		 included in the overall relocs (DT_REL).  This is
		 what Solaris does.  However, UnixWare can not handle
		 that case.  Therefore, we override the DT_RELSZ entry
		 here to make it not include the JMPREL relocs.  Since
		 the linker script arranges for .rel.plt to follow all
		 other relocation sections, we don't have to worry
		 about changing the DT_REL entry.  */
	      s = bfd_get_section_by_name (output_bfd, ".rel.plt");
	      if (s != NULL)
		{
		  if (s->_cooked_size != 0)
		    dyn.d_un.d_val -= s->_cooked_size;
		  else
		    dyn.d_un.d_val -= s->_raw_size;
		}
	      bfd_elf32_swap_dyn_out (output_bfd, &dyn, dyncon);
	      break;
	    }
	}

      /* Fill in the first entry in the procedure linkage table.  */
      splt = bfd_get_section_by_name (dynobj, ".plt");
      if (splt && splt->_raw_size > 0)
	{
	  if (info->shared)
	    memcpy (splt->contents, elf_mcore_pic_plt0_entry, PLT_ENTRY_SIZE);
	  else
	    {
	      memcpy (splt->contents, elf_mcore_plt0_entry, PLT_ENTRY_SIZE);
	      bfd_put_32 (output_bfd,
			  sgot->output_section->vma + sgot->output_offset + 4,
			  splt->contents + 2);
	      bfd_put_32 (output_bfd,
			  sgot->output_section->vma + sgot->output_offset + 8,
			  splt->contents + 8);
	    }

	  /* UnixWare sets the entsize of .plt to 4, although that doesn't
	     really seem like the right value.  */
	  elf_section_data (splt->output_section)->this_hdr.sh_entsize = 4;
	}
    }

  /* Fill in the first three entries in the global offset table.  */
  if (sgot->_raw_size > 0)
    {
      if (sdyn == NULL)
	bfd_put_32 (output_bfd, (bfd_vma) 0, sgot->contents);
      else
	bfd_put_32 (output_bfd,
		    sdyn->output_section->vma + sdyn->output_offset,
		    sgot->contents);
      bfd_put_32 (output_bfd, (bfd_vma) 0, sgot->contents + 4);
      bfd_put_32 (output_bfd, (bfd_vma) 0, sgot->contents + 8);
    }

  elf_section_data (sgot->output_section)->this_hdr.sh_entsize = 4;

  return true;
#else
  // fprintf (stderr, "elf32_mcore_finish_dynamic_sections called\n");
  return true;
#endif
}


#define TARGET_BIG_SYM		bfd_elf32_mcore_big_vec
#define TARGET_BIG_NAME		"elf32-mcore-big"
#define TARGET_LITTLE_SYM       bfd_elf32_mcore_little_vec
#define TARGET_LITTLE_NAME      "elf32-mcore-little"

#define ELF_ARCH		bfd_arch_mcore
#define ELF_MACHINE_CODE	EM_MCORE
#define ELF_MAXPAGESIZE		0x1000		/* 4k, if we ever have 'em */
#define elf_info_to_howto	mcore_elf_info_to_howto
#define elf_info_to_howto_rel	NULL


#define bfd_elf32_bfd_copy_private_bfd_data	mcore_elf_copy_private_bfd_data
#define bfd_elf32_bfd_merge_private_bfd_data	mcore_elf_merge_private_bfd_data
#define bfd_elf32_bfd_set_private_flags		mcore_elf_set_private_flags
#define bfd_elf32_bfd_reloc_type_lookup		mcore_elf_reloc_type_lookup
#define elf_backend_relocate_section		mcore_elf_relocate_section
#define elf_backend_gc_mark_hook		mcore_elf_gc_mark_hook
#define elf_backend_gc_sweep_hook		mcore_elf_gc_sweep_hook
#define elf_backend_check_relocs                mcore_elf_check_relocs

#define bfd_elf32_bfd_link_hash_table_create    elf32_mcore_link_hash_table_create
#define elf_backend_create_dynamic_sections	_bfd_elf_create_dynamic_sections
#define elf_backend_adjust_dynamic_symbol	elf32_mcore_adjust_dynamic_symbol
#define elf_backend_finish_dynamic_symbol	elf32_mcore_finish_dynamic_symbol
#define elf_backend_finish_dynamic_sections	elf32_mcore_finish_dynamic_sections
#define elf_backend_size_dynamic_sections	elf32_mcore_size_dynamic_sections

#define elf_backend_can_gc_sections		1

#include "elf32-target.h"
