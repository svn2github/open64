
/*

  Copyright (C) 2008 .  All Rights Reserved.

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

*/

/*! \file rta.h
 * \brief Header file for annotation data structures.
 *
 * It requires messg.h.
 * TODO complete it
 */

#ifndef _RTA_H_
#define _RTA_H_

#include <inttypes.h>
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RTA_API static inline

/*!
 * \brief Enum type of Rta_Hdr::_type
 * 
 * TODO details of members
 */
typedef enum {
  RTA_DYNAMIC = 0x5a,
  RTA_STATIC = 1,
} RTA_TYPE;
/*!
 * \brief Enum type of Rta_Hdr::_magic
 * 
 * TODO details of members
 */
typedef enum {
  V_0_9 = 0,
  V_1_0 = 0x0123456789abcdefLL
} RTA_MAGIC;
/*!
 * \brief Enum type of Rta_Hdr::_target
 * 
 * TODO details of members
 */
typedef enum { 
  RTA_X8664 = 0, RTA_X8632 = 1, 
  RTA_IA64 = 2, RTA_MIPS = 3,
} RTA_TARGET;

/*!
 * \brief Frequency of an edge (Rta_Edge) in predecessor/successor list
 */
typedef enum {
  RTA_FREQUENT = 0,
  RTA_INFREQUENT = 1,
  RTA_FREQ_UNKNOWN = 2
} RTA_FREQ;

#define RTA_SCN_NAME_PREFIX  ".rta."
#define RTA_SCN_NAME_PREFIX_LEN 5
#define RTA_DATA_SCN_NAME    ".rta.data"
#define RTA_INDEX_SCN_NAME   ".rta.index"

typedef enum {
  RTA_EXTRA_UNKNOWN = 0,
  RTA_EXTRA_RESULT = 1,
  RTA_EXTRA_OPERAND = 2,
} RTA_EXTRA_TYPE;

/*!
 * \brief An entry in the annotation index section.
 *
 * The .rta.index section consists of an array of Rta_Idx_Ent. Each Rta_Idx_Ent
 * structure describes a snippet of .rta.data section, specifying PC range and
 * its offset in .rta.data section.
 */
typedef struct {
  uint64_t start;         //!< the starting PC of the corresponding .rta.data snippet
  uint64_t data_off;      //!< the offset in .rta.data section of the corresponding .rta.data snippet
  uint32_t size;          //!< the PC range of the corresponding .rta.data snippet
  char     padding[4];    //!< padding for 64bit alignment
} Rta_Idx_Ent;

/* access functions */
RTA_API uint64_t Rta_idx_ent_start(const Rta_Idx_Ent *ent)  { return ent->start; }
RTA_API uint64_t Rta_idx_ent_data_off(const Rta_Idx_Ent *ent)  { return ent->data_off; }
RTA_API uint32_t Rta_idx_ent_size(const Rta_Idx_Ent *ent)  { return ent->size; }

RTA_API void Rta_idx_ent_set_start(Rta_Idx_Ent *ent, uint64_t start) {
  FmtAssert(ent, ("The pointer to Rta_Idx_Ent is NULL"));
  ent->start = start;
}
RTA_API void Rta_idx_ent_set_data_off(Rta_Idx_Ent *ent, uint64_t data_off) {
  FmtAssert(ent, ("The pointer to Rta_Idx_Ent is NULL"));
  ent->data_off = data_off;
}
RTA_API void Rta_idx_ent_set_size(Rta_Idx_Ent *ent, uint32_t size) {
  FmtAssert(ent, ("The pointer to Rta_Idx_Ent is NULL"));
  ent->size = size;
}

/*!
 * \brief Header of the annotation section.
 *
 * This is a fixed sized header, specifying magic number, endianness, target, size
 * and other flags such as language, alias type, linkage rule, etc.
 * It also has an offset Rta_Hdr::pu_off pointing to the PU header table, 
 * and gives the number of PU headers in it (Rta_Hdr::pu_num).
 *
 * To know the endianness, one can get help from the Rta_Hdr::magic field.
 * This field is exactly a word on the target architecture. Comparison between
 * what one reads and the standard magic word shows endianness of the whole
 * annotation section.
 */
typedef struct {
  uint64_t magic;         //!< the magic number of the annotation section
  int32_t  pu_off;        //!< offset to the PU header table
  uint16_t type;          //!< the type of the annotation, whether static or dynamic
  uint16_t target;        //!< achitecture of target machine
  uint16_t pu_num;        //!< number of entries in PU header table
  uint16_t flags;         //!< lang, alias type, linkage rule, etc
  char     padding[4];    //!< padding for 64bit alignment
} Rta_Hdr;

/* access functions */
RTA_API RTA_MAGIC   Rta_hdr_magic(const Rta_Hdr *h)  { return (RTA_MAGIC)h->magic; }
RTA_API RTA_TYPE    Rta_hdr_type(const Rta_Hdr *h)   { return (RTA_TYPE)h->type; }
RTA_API RTA_TARGET  Rta_hdr_target(const Rta_Hdr *h) { return (RTA_TARGET)h->target; }
RTA_API int32_t     Rta_hdr_pu_off(const Rta_Hdr *h) { return h->pu_off; }
RTA_API uint16_t    Rta_hdr_pu_num(const Rta_Hdr *h) { return h->pu_num; }
RTA_API uint16_t    Rta_hdr_flags(const Rta_Hdr *h)  { return h->flags; }

RTA_API void Rta_hdr_set_magic(Rta_Hdr *h, RTA_MAGIC magic) {
  FmtAssert(h, ("The pointer to Rta_Hdr is NULL"));
  h->magic = (uint64_t)magic;
}
RTA_API void Rta_hdr_set_type(Rta_Hdr *h, RTA_TYPE type) {
  FmtAssert(h, ("The pointer to Rta_Hdr is NULL"));
  h->type = (uint16_t)type;
}
RTA_API void Rta_hdr_set_target(Rta_Hdr *h, RTA_TARGET target) {
  FmtAssert(h, ("The pointer to Rta_Hdr is NULL"));
  h->target = (uint16_t)target;
}
RTA_API void Rta_hdr_set_pu_off(Rta_Hdr *h, int32_t pu_off) {
  FmtAssert(h, ("The pointer to Rta_Hdr is NULL"));
  h->pu_off = pu_off;
}
RTA_API void Rta_hdr_set_pu_num(Rta_Hdr *h, uint16_t pu_num) {
  FmtAssert(h, ("The pointer to Rta_Hdr is NULL"));
  h->pu_num = pu_num;
}
RTA_API void Rta_hdr_set_flags(Rta_Hdr *h, uint16_t flags) {
  FmtAssert(h, ("The pointer to Rta_Hdr is NULL"));
  h->flags = flags;
}

/*!
 * \brief Header of a PU or a PU portion.
 *
 * It is a fixed sized header for a PU or a PU portion, specifying beginning
 * address, size, name, offset of its BB header table, numbers of BBs and
 * other information.
 *
 * PU headers forms a continuous array in the annotation section, just
 * following the section header (Rta_Hdr). These headers are sorted by
 * their _start fields in ascending order.
 *
 * A PU may be splitted in several seperated portions by the code generator.
 * In this case, we use multi PU headers to represent one PU. These headers
 * are linked as a circular linked list. The _link field stores such
 * information. Its absolute value is difference between indices of this
 * PU header and the next header (or the first header if this is the last).
 * And Its sign shows whether this is the last portion of the PU: zero and
 * negative value means it is the last one while positive value means it isn't.
 *
 * For example:
 * 
 * Suppose a PU occupies 3 headers, with indices 1, 3 and 6 respectively. (They
 * are the 2nd, 4th and 7th entries in the PU header table.) Let pu_tbl[i]
 * denote the Rta_Pu with index i in the PU header table. Then we have
 *
 * \code
 * pu_tbl[1].link = 2;
 * pu_tbl[3].link = 3;
 * pu_tbl[6].link = -5;
 * \endcode
 *
 * Suppose another PU has only one header, indexed with 8. Then
 *
 * \code
 * pu_tbl[8].link = 0;
 * \endcode
 */
typedef struct {
  uint64_t   start;   //!< beginning address of this PU (portion) in the .text section
  uint32_t   size;    //!< size (in words) of PU (portion)
  uint32_t   name;    //!< the name of this PU (portion), an index to strtab
  int32_t    bb_off;  //!< offset (in bytes) from this PU header to its BB header table
  int32_t    cfg_off; //!< offset to its CFG "string table"
  uint32_t   maxregs; //!< max number of pseudo registers used in this PU (portion)
  uint16_t   bb_num;  //!< number of BBs in this PU
  uint16_t   bb_begin;//!< the smallest index of BB
  uint16_t   entry;   //!< index of entry BB in the CFG, we assume there's only one
  uint16_t   exit;    //!< index of exit BB in the CFG, we assume there's only one
  uint16_t   flags;   //!< source code language, alias type, linkage rule, etc
  int16_t    link;    //!< link to the next portion of the PU
//  char       padding[4];  //!< padding for 64bit alignment
} Rta_Pu;

/* access functions */
RTA_API uint64_t Rta_pu_start(const Rta_Pu *ph)    { return ph->start; }
RTA_API uint32_t Rta_pu_size(const Rta_Pu *ph)     { return ph->size; }
RTA_API uint32_t Rta_pu_name(const Rta_Pu *ph)     { return ph->name; }
RTA_API int32_t  Rta_pu_bb_off(const Rta_Pu *ph)   { return ph->bb_off; }
RTA_API int32_t  Rta_pu_cfg_off(const Rta_Pu *ph)  { return ph->cfg_off; }
RTA_API uint16_t Rta_pu_bb_num(const Rta_Pu *ph)   { return ph->bb_num; }
RTA_API uint16_t Rta_pu_bb_begin(const Rta_Pu *ph) { return ph->bb_begin; }
RTA_API uint16_t Rta_pu_entry(const Rta_Pu *ph)    { return ph->entry; }
RTA_API uint16_t Rta_pu_exit(const Rta_Pu *ph)     { return ph->exit; }
RTA_API uint16_t Rta_pu_flags(const Rta_Pu *ph)    { return ph->flags; }
RTA_API int16_t  Rta_pu_link(const Rta_Pu *ph)     { return ph->link; }
RTA_API uint32_t Rta_pu_maxregs(const Rta_Pu *ph)  { return ph->maxregs; }

RTA_API void Rta_pu_set_start(Rta_Pu *ph, uint64_t start) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->start = start;
}
RTA_API void Rta_pu_set_size(Rta_Pu *ph, uint32_t size) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->size = size;
}
RTA_API void Rta_pu_set_name(Rta_Pu *ph, uint32_t name) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->name = name;
}
RTA_API void Rta_pu_set_bb_off(Rta_Pu *ph, int32_t bb_off) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->bb_off = bb_off;
}
RTA_API void Rta_pu_set_cfg_off(Rta_Pu *ph, int32_t cfg_off) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->cfg_off = cfg_off;
}
RTA_API void Rta_pu_set_bb_num(Rta_Pu *ph, uint16_t bb_num) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->bb_num = bb_num;
}
RTA_API void Rta_pu_set_bb_begin(Rta_Pu *ph, uint16_t bb_begin) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->bb_begin = bb_begin;
}
RTA_API void Rta_pu_set_entry(Rta_Pu *ph, uint16_t entry) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->entry = entry;
}
RTA_API void Rta_pu_set_exit(Rta_Pu *ph, uint16_t exit) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->exit = exit;
}
RTA_API void Rta_pu_set_flags(Rta_Pu *ph, uint16_t flags) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->flags = flags;
}
RTA_API void Rta_pu_set_link(Rta_Pu *ph, uint16_t link) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->link = link;
}
RTA_API void Rta_pu_set_maxregs(Rta_Pu *ph, uint32_t maxregs) {
  FmtAssert(ph, ("The pointer to Rta_Pu is NULL"));
  ph->maxregs = maxregs;
}

/*!
 * \brief Header of a BB.
 *
 * It is a fixed sized header for a BB.
 * TODO complete it
 */
typedef struct {
  uint32_t start;      //!< beginning addr offset of this BB based on the PU beginning addr
  uint32_t size;       //!< we assume a BB will not exceed 32bit size
  int32_t  op_off;     //!< offset to the IR stmts of this BB
  uint16_t plink;      //!< index of the first element of predecessor list
  uint16_t slink;      //!< index of the first element of successor list
  uint16_t op_num;     //!< number of IR stmts in BB, we assume not exceed 16bits
  uint16_t flags;      //!< no-opt, IR-type, etc
  char     padding[4]; //!< padding for 64bit alignment
} Rta_Bb;

/* access functions */
RTA_API uint32_t Rta_bb_start(const Rta_Bb *bh)  { return bh->start; }
RTA_API uint32_t Rta_bb_size(const Rta_Bb *bh)   { return bh->size; }
RTA_API int32_t  Rta_bb_op_off(const Rta_Bb *bh) { return bh->op_off; }
RTA_API uint16_t Rta_bb_plink(const Rta_Bb *bh)  { return bh->plink; }
RTA_API uint16_t Rta_bb_slink(const Rta_Bb *bh)  { return bh->slink; }
RTA_API uint16_t Rta_bb_op_num(const Rta_Bb *bh) { return bh->op_num; }
RTA_API uint16_t Rta_bb_flags(const Rta_Bb *bh)  { return bh->flags; }

RTA_API void Rta_bb_set_start(Rta_Bb *bh, uint32_t start) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->start = start;
}
RTA_API void Rta_bb_set_size(Rta_Bb *bh, uint32_t size) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->size = size;
}
RTA_API void Rta_bb_set_op_off(Rta_Bb *bh, int32_t op_off) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->op_off = op_off;
}
RTA_API void Rta_bb_set_plink(Rta_Bb *bh, uint16_t plink) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->plink = plink;
}
RTA_API void Rta_bb_set_slink(Rta_Bb *bh, uint16_t slink) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->slink = slink;
}
RTA_API void Rta_bb_set_op_num (Rta_Bb *bh, uint16_t op_num) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->op_num = op_num;
}
RTA_API void Rta_bb_set_flags(Rta_Bb *bh, uint16_t flags) {
  FmtAssert(bh, ("The pointer to Rta_Bb is NULL"));
  bh->flags = flags;
}

/*!
 * \brief An edge in predecessor/successor list
 *
 * This is a 16 bit value. The most two significant bits indicate frequency
 * of this edge, and the other 14 bits is index of the destination BB.
 */
typedef uint16_t Rta_Edge;

const int RTA_EDGE_BB_BITS = 14;

/* access functions */
RTA_API RTA_FREQ Rta_edge_freq(const Rta_Edge * num)  { return (RTA_FREQ)(*num>>RTA_EDGE_BB_BITS); }
RTA_API uint16_t Rta_edge_bb(const Rta_Edge * num)    { return *num & ((1<<RTA_EDGE_BB_BITS)-1); }

RTA_API Rta_Edge Rta_edge(RTA_FREQ freq, uint16_t bb) { return (freq<<RTA_EDGE_BB_BITS) + bb; }

/*!
 * \brief Index of a TN
 */
typedef uint16_t Rta_Tn;

/*!
 * \brief An OP
 *
 * It has major information of an OP, including opcode, TN number of 1 result
 * and 2 operands, and also flags. It also provides an extra link, pointing to
 * any other information of this OP.
 *
 * In a BB (whose header is an Rta_Bb), all OPs form an array of Rta_Bb::op_num
 * elements, starting from Rta_Bb::op_off plus address of the Rta_Bb struct.
 */
typedef struct {
  int32_t  extra;         //!< offset to extra information
  uint16_t opcode;        //!< opcode
  uint16_t result1;       //!< first result TN number
  uint16_t opnd1;         //!< first operand TN number
  uint16_t opnd2;         //!< second operand TN number
  uint16_t flags;         //!< flags
  char     padding[2];    //!< padding for 64bit alignment
} Rta_Op;

/* access functions */
RTA_API int32_t  Rta_op_extra(const Rta_Op *op)   { return op->extra; }
RTA_API uint16_t Rta_op_opcode(const Rta_Op *op)  { return op->opcode; }
RTA_API Rta_Tn   Rta_op_result1(const Rta_Op *op) { return op->result1; }
RTA_API Rta_Tn   Rta_op_opnd1(const Rta_Op *op)   { return op->opnd1; }
RTA_API Rta_Tn   Rta_op_opnd2(const Rta_Op *op)   { return op->opnd2; }
RTA_API uint16_t Rta_op_flags(const Rta_Op *op)   { return op->flags; }

RTA_API void Rta_op_set_extra(Rta_Op *op, int32_t extra) {
  FmtAssert(op, ("The pointer to Rta_Op is NULL"));
  op->extra = extra;
}
RTA_API void Rta_op_set_opcode(Rta_Op *op, uint16_t opcode) {
  FmtAssert(op, ("The pointer to Rta_Op is NULL"));
  op->opcode = opcode;
}
RTA_API void Rta_op_set_result1(Rta_Op *op, Rta_Tn result1) {
  FmtAssert(op, ("The pointer to Rta_Op is NULL"));
  op->result1 = result1;
}
RTA_API void Rta_op_set_opnd1(Rta_Op *op, Rta_Tn opnd1) {
  FmtAssert(op, ("The pointer to Rta_Op is NULL"));
  op->opnd1 = opnd1;
}
RTA_API void Rta_op_set_opnd2(Rta_Op *op, Rta_Tn opnd2) {
  FmtAssert(op, ("The pointer to Rta_Op is NULL"));
  op->opnd2 = opnd2;
}
RTA_API void Rta_op_set_flags(Rta_Op *op, uint16_t flags) {
  FmtAssert(op, ("The pointer to Rta_Op is NULL"));
  op->flags = flags;
}

/*!
 * \brief Header of extra information
 * 
 * Some runtime annotation structures (Rta_Pu, Rta_Bb, Rta_Op, etc.) may have
 * additional information attached on them. Such information are indexed
 * by an extra info table, and Rta structures with additional information have
 * a link pointing to an extra info table.
 *
 * An extra info table is an array of Rta_Extra structures. Each Rta_Extra provides
 * type, flags and offset of a bunch of information. Note that the most significant
 * bit of Rta_Extra::flags is reserved for termination flag. An extra info table
 * ends with an Rta_Extra struct whose flags field has the most significant bit set.
 */
typedef struct {
  int32_t  offset;        //!< offset to extra information
  uint16_t type;          //!< type of the information
  uint16_t flags;         //!< flags (the most significant bit is reserved)
} Rta_Extra;

/* access functions */
RTA_API int32_t        Rta_extra_offset(const Rta_Extra *ex)  { return ex->offset; }
RTA_API RTA_EXTRA_TYPE Rta_extra_type(const Rta_Extra *ex)    { return (RTA_EXTRA_TYPE)ex->type; }
RTA_API uint16_t       Rta_extra_flags(const Rta_Extra *ex)   { return ex->flags & ((1<<15)-1); }
RTA_API bool           Rta_extra_last(const Rta_Extra *ex)    { return ex->flags & (1<<15); }

RTA_API void Rta_extra_set_offset(Rta_Extra *ex, int32_t offset) {
  FmtAssert(ex, ("The pointer to Rta_Extra is NULL"));
  ex->offset = offset;
}
RTA_API void Rta_extra_set_type(Rta_Extra *ex, RTA_EXTRA_TYPE type) {
  FmtAssert(ex, ("The pointer to Rta_Extra is NULL"));
  ex->type = (uint16_t)type;
}
RTA_API void Rta_extra_set_flags(Rta_Extra *ex, uint16_t flags) {
  FmtAssert(ex, ("The pointer to Rta_Extra is NULL"));
  ex->flags &= 1<<15;
  ex->flags |= flags & ((1<<15)-1);
}
RTA_API void Rta_extra_set_last(Rta_Extra *ex, bool last) {
  FmtAssert(ex, ("The pointer to Rta_Extra is NULL"));
  if (last)
    ex->flags |= 1<<15;
  else
    ex->flags &= (1<<15)-1;
}

/* Iterator functions */
RTA_API Rta_Pu* Rta_pu_iter(Rta_Hdr* p) { return (Rta_Pu *)((char *)p + Rta_hdr_pu_off(p)); }
RTA_API Rta_Bb* Rta_bb_iter(Rta_Pu* p)  { return (Rta_Bb *)((char *)p + Rta_pu_bb_off(p)); }

/* Dump functions for each structure above */

void Print_rta_hdr(FILE *f, const Rta_Hdr *hdr, const char *indent);
void Print_rta_pu_title(FILE *f, const char *indent);
void Print_rta_pu(FILE *f, const Rta_Pu *pu, const char *indent);
void Print_rta_bb_title(FILE *f, const char *indent);
void Print_rta_bb(FILE *f, uint64_t pc, const Rta_Bb *bb, int i, const char *indent);
void Print_rta_idx_ent(FILE *f, const Rta_Idx_Ent *ent, const char *indent);

#ifdef __cplusplus
} // end extern "C"
#endif

#endif // _RTA_H_
