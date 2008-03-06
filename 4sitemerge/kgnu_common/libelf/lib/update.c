/*
update.c - implementation of the elf_update(3) function.
Copyright (C) 1995 - 1998 Michael Riepe <michael@stud.uni-hannover.de>

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Library General Public
License as published by the Free Software Foundation; either
version 2 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Library General Public License for more details.

You should have received a copy of the GNU Library General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/

#include <private.h>

#ifndef lint
static const char rcsid[] = "@(#) $Id: update.c,v 1.1 2005/07/27 02:27:47 kevinlo Exp $";
#endif /* lint */

#if HAVE_MMAP
#include <sys/mman.h>
#endif /* HAVE_MMAP */

static const unsigned short __encoding = ELFDATA2LSB + (ELFDATA2MSB << 8);
#define native_encoding (*(unsigned char*)&__encoding)

#define rewrite(var,val,f)	\
    do{if((var)!=(val)){(var)=(val);(f)|=ELF_F_DIRTY;}}while(0)

#define align(var,val)		\
    do{if((val)>1){(var)+=(val)-1;(var)-=(var)%(val);}}while(0)

#define max(a,b)		((a)>(b)?(a):(b))

static off_t
scn_data_layout(Elf_Scn *scn, unsigned v, unsigned type, size_t *algn, unsigned *flag) {
    Elf *elf = scn->s_elf;
    int layout = (elf->e_elf_flags & ELF_F_LAYOUT) == 0;
    size_t scn_align = 1;
    size_t len = 0;
    Scn_Data *sd;
    size_t fsize;
    size_t msize;

    for (sd = scn->s_data_1; sd; sd = sd->sd_link) {
	if (!valid_version(sd->sd_data.d_version)) {
	    return (off_t)-1;
	}

	if (type != SHT_NOBITS && valid_type(sd->sd_data.d_type)) {
	    msize = _msize(elf->e_class, sd->sd_data.d_version, sd->sd_data.d_type);
	    fsize = _fsize(elf->e_class, v, sd->sd_data.d_type);
	    elf_assert(fsize && msize);
	    fsize *= sd->sd_data.d_size / msize;
	}
	else {
	    fsize = sd->sd_data.d_size;
	}

	if (layout) {
	    align(len, sd->sd_data.d_align);
	    scn_align = max(scn_align, sd->sd_data.d_align);
	    rewrite(sd->sd_data.d_off, (off_t)len, sd->sd_data_flags);
	    len += fsize;
	}
	else {
	    len = max(len, sd->sd_data.d_off + fsize);
	}

	*flag |= sd->sd_data_flags;
    }
    *algn = scn_align;
    return (off_t)len;
}

static size_t
scn_entsize(const Elf *elf, unsigned version, unsigned stype) {
    if (valid_scntype(stype)) {
	Elf_Type type = _elf_scn_types[stype];

	if (valid_type(type)) {
	    return _fsize(elf->e_class, version, type);
	}
    }
    return 0;
}

static off_t
_elf32_layout(Elf *elf, unsigned *flag) {
    int layout = (elf->e_elf_flags & ELF_F_LAYOUT) == 0;
    Elf32_Ehdr *ehdr = (Elf32_Ehdr*)elf->e_ehdr;
    size_t off = 0;
    unsigned version;
    unsigned encoding;
    size_t entsize;
    unsigned shnum;
    Elf_Scn *scn;

    *flag = elf->e_elf_flags | elf->e_phdr_flags;

    if ((version = ehdr->e_version) == EV_NONE) {
	version = EV_CURRENT;
    }
    if (!valid_version(version)) {
	seterr(ERROR_UNKNOWN_VERSION);
	return -1;
    }
    if ((encoding = ehdr->e_ident[EI_DATA]) == ELFDATANONE) {
	encoding = native_encoding;
    }
    if (!valid_encoding(encoding)) {
	seterr(ERROR_UNKNOWN_ENCODING);
	return -1;
    }
    entsize = _fsize(ELFCLASS32, version, ELF_T_EHDR);
    elf_assert(entsize);
    rewrite(ehdr->e_ehsize, entsize, elf->e_ehdr_flags);
    off = entsize;

    if (elf->e_phnum) {
	entsize = _fsize(ELFCLASS32, version, ELF_T_PHDR);
	elf_assert(entsize);
	if (layout) {
	    align(off, _ELF32_ALIGN_PHDR);
	    rewrite(ehdr->e_phoff, off, elf->e_ehdr_flags);
	    off += elf->e_phnum * entsize;
	}
	else {
	    off = max(off, ehdr->e_phoff + elf->e_phnum * entsize);
	}
    }
    else {
	entsize = 0;
	if (layout) {
	    rewrite(ehdr->e_phoff, 0, elf->e_ehdr_flags);
	}
    }
    rewrite(ehdr->e_phnum, elf->e_phnum, elf->e_ehdr_flags);
    rewrite(ehdr->e_phentsize, entsize, elf->e_ehdr_flags);

    for (scn = elf->e_scn_1, shnum = 0; scn; scn = scn->s_link, ++shnum) {
	Elf32_Shdr *shdr = &scn->s_shdr32;
	size_t scn_align = 1;
	off_t len;

	elf_assert(scn->s_index == shnum);

	*flag |= scn->s_scn_flags | scn->s_shdr_flags;

	if (scn->s_index == SHN_UNDEF) {
	    rewrite(shdr->sh_entsize, 0, scn->s_shdr_flags);
	    if (layout) {
		rewrite(shdr->sh_offset, 0, scn->s_shdr_flags);
		rewrite(shdr->sh_size, 0, scn->s_shdr_flags);
		rewrite(shdr->sh_addralign, 0, scn->s_shdr_flags);
	    }
	    continue;
	}
	if (shdr->sh_type == SHT_NULL) {
	    continue;
	}

	len = scn_data_layout(scn, version, shdr->sh_type, &scn_align, flag);
	if (len == -1) {
	    return -1;
	}

	entsize = scn_entsize(elf, version, shdr->sh_type);
	if (entsize > 1) {
	    rewrite(shdr->sh_entsize, entsize, scn->s_shdr_flags);
	}

	if (layout) {
	    align(off, scn_align);
	    rewrite(shdr->sh_offset, off, scn->s_shdr_flags);
	    rewrite(shdr->sh_size, (size_t)len, scn->s_shdr_flags);
	    rewrite(shdr->sh_addralign, scn_align, scn->s_shdr_flags);

	    if (shdr->sh_type != SHT_NOBITS) {
		off += (size_t)len;
	    }
	}
	else if ((size_t)len > shdr->sh_size) {
	    seterr(ERROR_SCN2SMALL);
	    return -1;
	}
	else if (shdr->sh_type != SHT_NOBITS) {
	    off = max(off, shdr->sh_offset + shdr->sh_size);
	}
	else {
	    off = max(off, shdr->sh_offset);
	}
    }

    if (shnum) {
	entsize = _fsize(ELFCLASS32, version, ELF_T_SHDR);
	elf_assert(entsize);
	if (layout) {
	    align(off, _ELF32_ALIGN_SHDR);
	    rewrite(ehdr->e_shoff, off, elf->e_ehdr_flags);
	    off += shnum * entsize;
	}
	else {
	    off = max(off, ehdr->e_shoff + shnum * entsize);
	}
    }
    else {
	entsize = 0;
	if (layout) {
	    rewrite(ehdr->e_shoff, 0, elf->e_ehdr_flags);
	}
    }
    rewrite(ehdr->e_shnum, shnum, elf->e_ehdr_flags);
    rewrite(ehdr->e_shentsize, entsize, elf->e_ehdr_flags);

    rewrite(ehdr->e_ident[EI_MAG0], ELFMAG0, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_MAG1], ELFMAG1, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_MAG2], ELFMAG2, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_MAG3], ELFMAG3, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_CLASS], ELFCLASS32, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_DATA], encoding, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_VERSION], version, elf->e_ehdr_flags);
    rewrite(ehdr->e_version, version, elf->e_ehdr_flags);

    *flag |= elf->e_ehdr_flags;

    return off;
}

#if __LIBELF64

static off_t
_elf64_layout(Elf *elf, unsigned *flag) {
    int layout = (elf->e_elf_flags & ELF_F_LAYOUT) == 0;
    Elf64_Ehdr *ehdr = (Elf64_Ehdr*)elf->e_ehdr;
    size_t off = 0;
    unsigned version;
    unsigned encoding;
    size_t entsize;
    unsigned shnum;
    Elf_Scn *scn;

    *flag = elf->e_elf_flags | elf->e_phdr_flags;

    if ((version = ehdr->e_version) == EV_NONE) {
	version = EV_CURRENT;
    }
    if (!valid_version(version)) {
	seterr(ERROR_UNKNOWN_VERSION);
	return -1;
    }
    if ((encoding = ehdr->e_ident[EI_DATA]) == ELFDATANONE) {
	encoding = native_encoding;
    }
    if (!valid_encoding(encoding)) {
	seterr(ERROR_UNKNOWN_ENCODING);
	return -1;
    }
    entsize = _fsize(ELFCLASS64, version, ELF_T_EHDR);
    elf_assert(entsize);
    rewrite(ehdr->e_ehsize, entsize, elf->e_ehdr_flags);
    off = entsize;

    if (elf->e_phnum) {
	entsize = _fsize(ELFCLASS64, version, ELF_T_PHDR);
	elf_assert(entsize);
	if (layout) {
	    align(off, _ELF64_ALIGN_PHDR);
	    rewrite(ehdr->e_phoff, off, elf->e_ehdr_flags);
	    off += elf->e_phnum * entsize;
	}
	else {
	    off = max(off, ehdr->e_phoff + elf->e_phnum * entsize);
	}
    }
    else {
	entsize = 0;
	if (layout) {
	    rewrite(ehdr->e_phoff, 0, elf->e_ehdr_flags);
	}
    }
    rewrite(ehdr->e_phnum, elf->e_phnum, elf->e_ehdr_flags);
    rewrite(ehdr->e_phentsize, entsize, elf->e_ehdr_flags);

    for (scn = elf->e_scn_1, shnum = 0; scn; scn = scn->s_link, ++shnum) {
	Elf64_Shdr *shdr = &scn->s_shdr64;
	size_t scn_align = 1;
	off_t len;

	elf_assert(scn->s_index == shnum);

	*flag |= scn->s_scn_flags | scn->s_shdr_flags;

	if (scn->s_index == SHN_UNDEF) {
	    rewrite(shdr->sh_entsize, 0, scn->s_shdr_flags);
	    if (layout) {
		rewrite(shdr->sh_offset, 0, scn->s_shdr_flags);
		rewrite(shdr->sh_size, 0, scn->s_shdr_flags);
		rewrite(shdr->sh_addralign, 0, scn->s_shdr_flags);
	    }
	    continue;
	}
	if (shdr->sh_type == SHT_NULL) {
	    continue;
	}

	len = scn_data_layout(scn, version, shdr->sh_type, &scn_align, flag);
	if (len == -1) {
	    return -1;
	}

	entsize = scn_entsize(elf, version, shdr->sh_type);
	if (entsize > 1) {
	    rewrite(shdr->sh_entsize, entsize, scn->s_shdr_flags);
	}

	if (layout) {
	    align(off, scn_align);
	    rewrite(shdr->sh_offset, off, scn->s_shdr_flags);
	    rewrite(shdr->sh_size, (size_t)len, scn->s_shdr_flags);
	    rewrite(shdr->sh_addralign, scn_align, scn->s_shdr_flags);

	    if (shdr->sh_type != SHT_NOBITS) {
		off += (size_t)len;
	    }
	}
	else if ((size_t)len > shdr->sh_size) {
	    seterr(ERROR_SCN2SMALL);
	    return -1;
	}
	else if (shdr->sh_type != SHT_NOBITS) {
	    off = max(off, shdr->sh_offset + shdr->sh_size);
	}
	else {
	    off = max(off, shdr->sh_offset);
	}
    }

    if (shnum) {
	entsize = _fsize(ELFCLASS64, version, ELF_T_SHDR);
	elf_assert(entsize);
	if (layout) {
	    align(off, _ELF64_ALIGN_SHDR);
	    rewrite(ehdr->e_shoff, off, elf->e_ehdr_flags);
	    off += shnum * entsize;
	}
	else {
	    off = max(off, ehdr->e_shoff + shnum * entsize);
	}
    }
    else {
	entsize = 0;
	if (layout) {
	    rewrite(ehdr->e_shoff, 0, elf->e_ehdr_flags);
	}
    }
    rewrite(ehdr->e_shnum, shnum, elf->e_ehdr_flags);
    rewrite(ehdr->e_shentsize, entsize, elf->e_ehdr_flags);

    rewrite(ehdr->e_ident[EI_MAG0], ELFMAG0, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_MAG1], ELFMAG1, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_MAG2], ELFMAG2, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_MAG3], ELFMAG3, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_CLASS], ELFCLASS64, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_DATA], encoding, elf->e_ehdr_flags);
    rewrite(ehdr->e_ident[EI_VERSION], version, elf->e_ehdr_flags);
    rewrite(ehdr->e_version, version, elf->e_ehdr_flags);

    *flag |= elf->e_ehdr_flags;

    return off;
}

#endif /* __LIBELF64 */

#define ptrinside(p,a,l)	((p)>=(a)&&(p)<(a)+(l))
#define newptr(p,o,n)		((p)=((p)-(o))+(n))

static int
_elf_update_pointers(Elf *elf, char *outbuf, size_t len) {
    Elf_Scn *scn;
    Scn_Data *sd;
    char *data, *rawdata;

    elf_assert(elf);
    elf_assert(elf->e_data);
    elf_assert(!elf->e_parent);
    elf_assert(!elf->e_unmap_data);
    elf_assert(elf->e_kind == ELF_K_ELF);
    elf_assert(len >= EI_NIDENT);

    /* resize memory images */
    if (len <= elf->e_dsize) {
	/* don't shorten the memory image */
	data = elf->e_data;
    }
    else if ((data = (char*)realloc(elf->e_data, len))) {
	elf->e_dsize = len;
    }
    else {
	seterr(ERROR_IO_2BIG);
	return -1;
    }
    if (elf->e_rawdata == elf->e_data) {
	/* update frozen raw image */
	memcpy(data, outbuf, len);
	elf->e_data = elf->e_rawdata = data;
	/* cooked data is stored outside the raw image */
	return 0;
    }
    if (elf->e_rawdata) {
	/* update raw image */
	if (!(rawdata = (char*)realloc(elf->e_rawdata, len))) {
	    seterr(ERROR_IO_2BIG);
	    return -1;
	}
	memcpy(rawdata, outbuf, len);
	elf->e_rawdata = rawdata;
    }
    if (data == elf->e_data) {
	/* nothing more to do */
	return 0;
    }
    /* adjust internal pointers */
    if (elf->e_ehdr && !elf->e_free_ehdr) {
	elf_assert(ptrinside(elf->e_ehdr, elf->e_data, elf->e_dsize));
	newptr(elf->e_ehdr, elf->e_data, data);
    }
    if (elf->e_phdr && !elf->e_free_phdr) {
	elf_assert(ptrinside(elf->e_phdr, elf->e_data, elf->e_dsize));
	newptr(elf->e_phdr, elf->e_data, data);
    }
    for (scn = elf->e_scn_1; scn; scn = scn->s_link) {
	if ((sd = scn->s_data_1) && sd->sd_memdata && !sd->sd_free_data) {
	    elf_assert(ptrinside(sd->sd_memdata, elf->e_data, elf->e_dsize));
	    if (sd->sd_data.d_buf == sd->sd_memdata) {
		newptr(sd->sd_memdata, elf->e_data, data);
		sd->sd_data.d_buf = sd->sd_memdata;
	    }
	    else {
		newptr(sd->sd_memdata, elf->e_data, data);
	    }
	}
	if ((sd = scn->s_rawdata) && sd->sd_memdata && sd->sd_free_data) {
	    size_t off, len;

	    if (elf->e_class == ELFCLASS32) {
		off = scn->s_shdr32.sh_offset;
		len = scn->s_shdr32.sh_size;
	    }
#if __LIBELF64
	    else if (elf->e_class == ELFCLASS64) {
		off = scn->s_shdr64.sh_offset;
		len = scn->s_shdr64.sh_size;
	    }
#endif /* __LIBELF64 */
	    else {
		seterr(ERROR_UNIMPLEMENTED);
		return -1;
	    }
	    if (!(rawdata = (char*)realloc(sd->sd_memdata, len))) {
		seterr(ERROR_IO_2BIG);
		return -1;
	    }
	    memcpy(rawdata, outbuf + off, len);
	    if (sd->sd_data.d_buf == sd->sd_memdata) {
		sd->sd_data.d_buf = rawdata;
	    }
	    sd->sd_memdata = rawdata;
	}
    }
    elf->e_data = data;
    return 0;
}

#undef ptrinside
#undef newptr

static off_t
_elf32_write(Elf *elf, char *outbuf, size_t len) {
    Elf32_Ehdr *ehdr;
    Elf32_Shdr *shdr;
    Elf_Scn *scn;
    Scn_Data *sd;
    Elf_Data src;
    Elf_Data dst;
    unsigned encode;
    size_t fsize;
    size_t msize;

    elf_assert(len);
    elf_assert(elf->e_ehdr);
    ehdr = (Elf32_Ehdr*)elf->e_ehdr;
    encode = ehdr->e_ident[EI_DATA];

    src.d_buf = ehdr;
    src.d_type = ELF_T_EHDR;
    src.d_size = _msize(ELFCLASS32, _elf_version, ELF_T_EHDR);
    src.d_version = _elf_version;
    dst.d_buf = outbuf;
    dst.d_size = ehdr->e_ehsize;
    dst.d_version = ehdr->e_version;
    if (!elf32_xlatetof(&dst, &src, encode)) {
	return -1;
    }

    if (ehdr->e_phnum) {
	src.d_buf = elf->e_phdr;
	src.d_type = ELF_T_PHDR;
	src.d_size = ehdr->e_phnum * _msize(ELFCLASS32, _elf_version, ELF_T_PHDR);
	src.d_version = _elf_version;
	dst.d_buf = outbuf + ehdr->e_phoff;
	dst.d_size = ehdr->e_phnum * ehdr->e_phentsize;
	dst.d_version = ehdr->e_version;
	if (!elf32_xlatetof(&dst, &src, encode)) {
	    return -1;
	}
    }

    for (scn = elf->e_scn_1; scn; scn = scn->s_link) {
	src.d_buf = &scn->s_uhdr;
	src.d_type = ELF_T_SHDR;
	src.d_size = _msize(ELFCLASS32, EV_CURRENT, ELF_T_SHDR);
	src.d_version = EV_CURRENT;
	dst.d_buf = outbuf + ehdr->e_shoff + scn->s_index * ehdr->e_shentsize;
	dst.d_size = ehdr->e_shentsize;
	dst.d_version = ehdr->e_version;
	if (!elf32_xlatetof(&dst, &src, encode)) {
	    return -1;
	}

	if (scn->s_index == SHN_UNDEF) {
	    continue;
	}
	shdr = &scn->s_shdr32;
	if (shdr->sh_type == SHT_NULL || shdr->sh_type == SHT_NOBITS) {
	    continue;
	}
	if (scn->s_data_1 && !elf_getdata(scn, NULL)) {
	    return -1;
	}
	for (sd = scn->s_data_1; sd; sd = sd->sd_link) {
	    src = sd->sd_data;
	    if (!src.d_size) {
		continue;
	    }
	    if (!src.d_buf) {
		seterr(ERROR_NULLBUF);
		return -1;
	    }
	    dst.d_buf = outbuf + shdr->sh_offset + src.d_off;
	    dst.d_size = src.d_size;
	    dst.d_version = ehdr->e_version;
	    if (valid_type(src.d_type)) {
		msize = _msize(ELFCLASS32, src.d_version, src.d_type);
		elf_assert(msize);
		fsize = _fsize(ELFCLASS32, dst.d_version, src.d_type);
		elf_assert(fsize);
		if (msize != fsize) {
		    dst.d_size = (src.d_size / msize) * fsize;
		}
	    }
	    else {
		src.d_type = ELF_T_BYTE;
	    }
	    if (!elf32_xlatetof(&dst, &src, encode)) {
		return -1;
	    }
	}
    }

    /* cleanup */
    if (elf->e_readable && _elf_update_pointers(elf, outbuf, len)) {
	return -1;
    }
    /* NOTE: ehdr is no longer valid! */
    ehdr = (Elf32_Ehdr*)elf->e_ehdr; elf_assert(ehdr);
    elf->e_encoding = ehdr->e_ident[EI_DATA];
    elf->e_version = ehdr->e_ident[EI_VERSION];
    elf->e_elf_flags &= ~ELF_F_DIRTY;
    elf->e_ehdr_flags &= ~ELF_F_DIRTY;
    elf->e_phdr_flags &= ~ELF_F_DIRTY;
    for (scn = elf->e_scn_1; scn; scn = scn->s_link) {
	scn->s_scn_flags &= ~ELF_F_DIRTY;
	scn->s_shdr_flags &= ~ELF_F_DIRTY;
	for (sd = scn->s_data_1; sd; sd = sd->sd_link) {
	    sd->sd_data_flags &= ~ELF_F_DIRTY;
	}
	if (elf->e_readable) {
	    shdr = &scn->s_shdr32;
	    scn->s_type = shdr->sh_type;
	    scn->s_size = shdr->sh_size;
	    scn->s_offset = shdr->sh_offset;
	}
    }
    elf->e_size = len;
    return len;
}

#if __LIBELF64

static off_t
_elf64_write(Elf *elf, char *outbuf, size_t len) {
    Elf64_Ehdr *ehdr;
    Elf64_Shdr *shdr;
    Elf_Scn *scn;
    Scn_Data *sd;
    Elf_Data src;
    Elf_Data dst;
    unsigned encode;
    size_t fsize;
    size_t msize;

    elf_assert(len);
    elf_assert(elf->e_ehdr);
    ehdr = (Elf64_Ehdr*)elf->e_ehdr;
    encode = ehdr->e_ident[EI_DATA];

    src.d_buf = ehdr;
    src.d_type = ELF_T_EHDR;
    src.d_size = _msize(ELFCLASS64, _elf_version, ELF_T_EHDR);
    src.d_version = _elf_version;
    dst.d_buf = outbuf;
    dst.d_size = ehdr->e_ehsize;
    dst.d_version = ehdr->e_version;
    if (!elf64_xlatetof(&dst, &src, encode)) {
	return -1;
    }

    if (ehdr->e_phnum) {
	src.d_buf = elf->e_phdr;
	src.d_type = ELF_T_PHDR;
	src.d_size = ehdr->e_phnum * _msize(ELFCLASS64, _elf_version, ELF_T_PHDR);
	src.d_version = _elf_version;
	dst.d_buf = outbuf + ehdr->e_phoff;
	dst.d_size = ehdr->e_phnum * ehdr->e_phentsize;
	dst.d_version = ehdr->e_version;
	if (!elf64_xlatetof(&dst, &src, encode)) {
	    return -1;
	}
    }

    for (scn = elf->e_scn_1; scn; scn = scn->s_link) {
	src.d_buf = &scn->s_uhdr;
	src.d_type = ELF_T_SHDR;
	src.d_size = _msize(ELFCLASS64, EV_CURRENT, ELF_T_SHDR);
	src.d_version = EV_CURRENT;
	dst.d_buf = outbuf + ehdr->e_shoff + scn->s_index * ehdr->e_shentsize;
	dst.d_size = ehdr->e_shentsize;
	dst.d_version = ehdr->e_version;
	if (!elf64_xlatetof(&dst, &src, encode)) {
	    return -1;
	}

	if (scn->s_index == SHN_UNDEF) {
	    continue;
	}
	shdr = &scn->s_shdr64;
	if (shdr->sh_type == SHT_NULL || shdr->sh_type == SHT_NOBITS) {
	    continue;
	}
	if (scn->s_data_1 && !elf_getdata(scn, NULL)) {
	    return -1;
	}
	for (sd = scn->s_data_1; sd; sd = sd->sd_link) {
	    src = sd->sd_data;
	    if (!src.d_size) {
		continue;
	    }
	    if (!src.d_buf) {
		seterr(ERROR_NULLBUF);
		return -1;
	    }
	    dst.d_buf = outbuf + shdr->sh_offset + src.d_off;
	    dst.d_size = src.d_size;
	    dst.d_version = ehdr->e_version;
	    if (valid_type(src.d_type)) {
		msize = _msize(ELFCLASS64, src.d_version, src.d_type);
		elf_assert(msize);
		fsize = _fsize(ELFCLASS64, dst.d_version, src.d_type);
		elf_assert(fsize);
		if (msize != fsize) {
		    dst.d_size = (src.d_size / msize) * fsize;
		}
	    }
	    else {
		src.d_type = ELF_T_BYTE;
	    }
	    if (!elf64_xlatetof(&dst, &src, encode)) {
		return -1;
	    }
	}
    }

    /* cleanup */
    if (elf->e_readable && _elf_update_pointers(elf, outbuf, len)) {
	return -1;
    }
    /* NOTE: ehdr is no longer valid! */
    ehdr = (Elf64_Ehdr*)elf->e_ehdr; elf_assert(ehdr);
    elf->e_encoding = ehdr->e_ident[EI_DATA];
    elf->e_version = ehdr->e_ident[EI_VERSION];
    elf->e_elf_flags &= ~ELF_F_DIRTY;
    elf->e_ehdr_flags &= ~ELF_F_DIRTY;
    elf->e_phdr_flags &= ~ELF_F_DIRTY;
    for (scn = elf->e_scn_1; scn; scn = scn->s_link) {
	scn->s_scn_flags &= ~ELF_F_DIRTY;
	scn->s_shdr_flags &= ~ELF_F_DIRTY;
	for (sd = scn->s_data_1; sd; sd = sd->sd_link) {
	    sd->sd_data_flags &= ~ELF_F_DIRTY;
	}
	if (elf->e_readable) {
	    shdr = &scn->s_shdr64;
	    scn->s_type = shdr->sh_type;
	    scn->s_size = shdr->sh_size;
	    scn->s_offset = shdr->sh_offset;
	}
    }
    elf->e_size = len;
    return len;
}

#endif /* __LIBELF64 */

static off_t
_elf_output(Elf *elf, size_t len, off_t (*_elf_write)(Elf*, char*, size_t)) {
    char *buf;
    off_t err;

    elf_assert(len);
#if HAVE_FTRUNCATE
    ftruncate(elf->e_fd, 0);
#endif /* HAVE_FTRUNCATE */
#if HAVE_MMAP
    /*
     * Make sure the file is (at least) len bytes long
     */
#if HAVE_FTRUNCATE
    if (ftruncate(elf->e_fd, len)) {
#else /* HAVE_FTRUNCATE */
    {
#endif /* HAVE_FTRUNCATE */
	if (lseek(elf->e_fd, (off_t)len - 1, 0) != (off_t)len - 1) {
	    seterr(ERROR_IO_SEEK);
	    return -1;
	}
	if (write(elf->e_fd, "", 1) != 1) {
	    seterr(ERROR_IO_WRITE);
	    return -1;
	}
    }
    buf = (void*)mmap(NULL, len, PROT_READ | PROT_WRITE, MAP_SHARED,
		      elf->e_fd, 0);
    if (buf != (char*)-1) {
	if ((char)_elf_fill) {
	    memset(buf, _elf_fill, len);
	}
	err = _elf_write(elf, buf, len);
	munmap(buf, len);
	return err;
    }
#endif /* HAVE_MMAP */
    if (!(buf = (char*)malloc(len))) {
	seterr(ERROR_MEM_OUTBUF);
	return -1;
    }
    memset(buf, _elf_fill, len);
    err = _elf_write(elf, buf, len);
    if (err != -1 && (size_t)err == len) {
	if (lseek(elf->e_fd, (off_t)0, 0)) {
	    seterr(ERROR_IO_SEEK);
	    err = -1;
	}
	else if (write(elf->e_fd, buf, len) != len) {
	    seterr(ERROR_IO_WRITE);
	    err = -1;
	}
    }
    free(buf);
    return err;
}

off_t
elf_update(Elf *elf, Elf_Cmd cmd) {
    unsigned flag;
    off_t len;

    if (!elf) {
	return -1;
    }
    elf_assert(elf->e_magic == ELF_MAGIC);
    if (cmd == ELF_C_WRITE) {
	if (!elf->e_writable) {
	    seterr(ERROR_RDONLY);
	    return -1;
	}
	if (elf->e_disabled) {
	    seterr(ERROR_FDDISABLED);
	    return -1;
	}
    }
    else if (cmd != ELF_C_NULL) {
	seterr(ERROR_INVALID_CMD);
	return -1;
    }

    if (!elf->e_ehdr) {
	seterr(ERROR_NOEHDR);
    }
    else if (elf->e_kind != ELF_K_ELF) {
	seterr(ERROR_NOTELF);
    }
    else if (elf->e_class == ELFCLASS32) {
	len = _elf32_layout(elf, &flag);
	if (len != -1 && cmd == ELF_C_WRITE && (flag & ELF_F_DIRTY)) {
	    len = _elf_output(elf, (size_t)len, _elf32_write);
	}
	return len;
    }
#if __LIBELF64
    else if (elf->e_class == ELFCLASS64) {
	len = _elf64_layout(elf, &flag);
	if (len != -1 && cmd == ELF_C_WRITE && (flag & ELF_F_DIRTY)) {
	    len = _elf_output(elf, len, _elf64_write);
	}
	return len;
    }
#endif /* __LIBELF64 */
    else if (valid_class(elf->e_class)) {
	seterr(ERROR_UNIMPLEMENTED);
    }
    else {
	seterr(ERROR_UNKNOWN_CLASS);
    }
    return -1;
}
