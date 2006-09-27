/*
getdata.c - implementation of the elf_getdata(3) function.
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
static const char rcsid[] = "@(#) $Id: getdata.c,v 1.1.1.1 2005/10/21 19:00:00 marcel Exp $";
#endif /* lint */

static Elf_Data*
_elf_cook_scn(Elf *elf, Elf_Scn *scn, Scn_Data *sd) {
    Elf_Data src, dst;
    size_t fsize, msize;
    int flag = 0;

    src = dst = sd->sd_data;
    src.d_version = elf->e_version;
    fsize = _fsize(elf->e_class, src.d_version, src.d_type);
    msize = _msize(elf->e_class, dst.d_version, src.d_type);
    elf_assert(fsize);
    elf_assert(msize);
    if (fsize != msize) {
	dst.d_size = (dst.d_size / fsize) * msize;
    }

    elf_assert(elf->e_data);
    if (elf->e_rawdata != elf->e_data && dst.d_size <= src.d_size) {
	dst.d_buf = elf->e_data + scn->s_offset;
    }
    else if (!(dst.d_buf = malloc(dst.d_size))) {
	seterr(ERROR_MEM_SCNDATA);
	return NULL;
    }
    else {
	flag = 1;
    }

    if (elf->e_rawdata) {
	src.d_buf = elf->e_rawdata + scn->s_offset;
    }
    else {
	src.d_buf = elf->e_data + scn->s_offset;
    }

    if (_elf_xlatetom(elf, &dst, &src)) {
	sd->sd_memdata = (char*)dst.d_buf;
	sd->sd_data = dst;
	if (!(sd->sd_free_data = flag)) {
	    elf->e_cooked = 1;
	}
	return &sd->sd_data;
    }

    if (flag) {
	free(dst.d_buf);
    }
    return NULL;
}

Elf_Data*
elf_getdata(Elf_Scn *scn, Elf_Data *data) {
    Scn_Data *sd;
    Elf *elf;

    if (!scn) {
	return NULL;
    }
    elf_assert(scn->s_magic == SCN_MAGIC);
    if (scn->s_index == SHN_UNDEF) {
	seterr(ERROR_NULLSCN);
    }
    else if (data) {
	for (sd = scn->s_data_1; sd; sd = sd->sd_link) {
	    if (data == &sd->sd_data) {
		/*
		 * sd_link allocated by elf_newdata().
		 */
		return &sd->sd_link->sd_data;
	    }
	}
	seterr(ERROR_SCNDATAMISMATCH);
    }
    else if ((sd = scn->s_data_1)) {
	elf = scn->s_elf;
	elf_assert(elf);
	elf_assert(elf->e_magic == ELF_MAGIC);
	if (sd->sd_freeme) {
	    /* allocated by elf_newdata() */
	    return &sd->sd_data;
	}
	else if (scn->s_type == SHT_NULL) {
	    seterr(ERROR_NULLSCN);
	}
	else if (sd->sd_memdata) {
	    /* already cooked */
	    return &sd->sd_data;
	}
	else if (scn->s_offset < 0 || scn->s_offset > elf->e_size) {
	    seterr(ERROR_OUTSIDE);
	}
	else if (scn->s_type == SHT_NOBITS || !scn->s_size) {
	    /* no data to read */
	    return &sd->sd_data;
	}
	else if (scn->s_offset + scn->s_size > elf->e_size) {
	    seterr(ERROR_TRUNC_SCN);
	}
	else if (valid_class(elf->e_class)) {
	    return _elf_cook_scn(elf, scn, sd);
	}
	else {
	    seterr(ERROR_UNKNOWN_CLASS);
	}
    }
    return NULL;
}
