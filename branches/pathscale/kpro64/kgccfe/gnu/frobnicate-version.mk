# Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it would be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
#
# Further, this software is distributed without any warranty that it is
# free of the rightful claim of any third person regarding infringement 
# or the like.  Any license provided herein, whether implied or 
# otherwise, applies only to this software file.  Patent licenses, if 
# any, provided herein do not apply to combinations of this program with 
# other software, or any other product whatsoever.  
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write the Free Software Foundation, Inc., 59
# Temple Place - Suite 330, Boston MA 02111-1307, USA.

bk_root := $(shell bk root 2>/dev/null || echo unknown)

version-bk.c: version.c
	@echo 'GEN    $@'
	@echo '#define BK_CSET_REV "$(shell bk -R prs -hr+ -d:I: ChangeSet)"' > $@
	@sed	-e 's/^\(.*version_string.*= "[0-9. ]*\).*/\1 (PathScale " BK_CSET_REV ")";/' \
		-e 's!http://bugzilla.redhat.com/bugzilla!http://www.pathscale.com/support!' $< >> $@
	@echo >> $@
	@echo 'const char *const cset_rev = "$(shell bk -R prs -hr+ -d:I: ChangeSet || echo unknown)";' >> $@
	@echo 'const char *const cset_key = BK_CSET_REV;' >> $@
	@echo 'const char *const build_root = "$(bk_root)";' >> $@
	@echo 'const char *const build_host = "$(shell hostname -f)";' >> $@
	@echo 'const char *const build_user = "$(shell id -un)";' >> $@
	@echo 'const char *const build_date = "$(shell date +'%Y-%m-%d %H:%M:%S %z')";' >> $@

.PHONY: version-bk.c

