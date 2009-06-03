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

/* \file rta_scn.cxx
   \brief Dump rta sections in an ELF file.

   Help functions for Runtime Annotation sections.
*/

   
#include <err.h>
#include <fcntl.h>
#include <gelf.h>
#include <libelf.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <sysexits.h>
#include <unistd.h>

#include "messg.h"
#include "rta.h"
#include "rta_scn.h"

INT Dump_Rta_Scns(const char *elfFile)
{
    INT fd;
    Elf *e;
    char *name, *p, pc[4*sizeof(char)];
    Elf_Scn *scn;
    Elf_Data *data;
    GElf_Shdr shdr;
    GElf_Ehdr ehdr;
    size_t n, shstrndx, sz;
    INT n_rtascn;

    if (elf_version(EV_CURRENT) == EV_NONE)
        errx(EX_SOFTWARE, "ELF library initialization failed: %s",
                elf_errmsg(-1));

    if ((fd = open(elfFile, O_RDONLY, 0)) < 0)
        err(EX_NOINPUT, "open \%s\" failed", elfFile);

    if ((e = elf_begin(fd, ELF_C_READ, NULL)) == NULL)
        errx(EX_SOFTWARE, "elf_begin() failed: %s.",
                elf_errmsg(-1));

    if (elf_kind(e) != ELF_K_ELF)
        errx(EX_DATAERR, "%s is not an ELF object.", elfFile);

    if (gelf_getehdr(e, &ehdr) == NULL)
        errx(EX_SOFTWARE, "getehdr() failed: %s.",
                elf_errmsg(-1));

    // Get string table section index
    shstrndx = ehdr.e_shstrndx;

    scn = NULL;
    n_rtascn = 0;
    // filter out rta sections
    while ((scn = elf_nextscn(e, scn)) != NULL) {
        if (gelf_getshdr(scn, &shdr) != &shdr)
            errx(EX_SOFTWARE, "getshdr() failed: %s.",
                    elf_errmsg(-1));

        if ((name = elf_strptr(e, shstrndx, shdr.sh_name)) == NULL)
            errx(EX_SOFTWARE, "elf_strptr() failed: %s.",
                    elf_errmsg(-1));
        
        if (strncmp(name, RTA_SCN_NAME_PREFIX, RTA_SCN_NAME_PREFIX_LEN) !=0 )
            continue;

        n_rtascn ++;
        printf("Section %-4.4jd %s\n", (uintmax_t) elf_ndxscn(scn),
                      name);
        // add further dump functions here
    }

    printf("RTA section number in file %s: %d\n", elfFile, n_rtascn);

    elf_end(e);
    close(fd);
    return 0;
}

