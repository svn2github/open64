noinst_LIBRARIES = libdwarf.a
libdwarf_a_SOURCES = dwarf_abbrev.c dwarf_addr_finder.c dwarf_alloc.c \
	dwarf_arange.c dwarf_die_deliv.c dwarf_error.c dwarf_form.c \
	dwarf_frame.c dwarf_funcs.c dwarf_global.c dwarf_init_finish.c \
	dwarf_leb.c dwarf_line.c dwarf_loc.c dwarf_macro.c \
	dwarf_print_lines.c dwarf_query.c dwarf_sort_line.c dwarf_string.c \
	dwarf_stubs.c dwarf_types.c dwarf_util.c dwarf_vars.c dwarf_weaks.c \
	dwf_forms.c dwf_frame.c dwf_section.c \
	pro_alloc.c pro_arange.c pro_die.c pro_encode_nm.c pro_error.c \
	pro_expr.c pro_finish.c pro_forms.c pro_frame.c pro_funcs.c \
	pro_init.c pro_line.c pro_macinfo.c pro_pubnames.c pro_reloc.c \
	pro_reloc_stream.c pro_reloc_symbolic.c pro_section.c pro_types.c \
	pro_vars.c pro_weaks.c

VPATH = ${srcdir} ${top_srcdir}/contrib/dwarf/libdwarf
AM_CPPFLAGS = -DHAVE_LIBELF_H -DKEY -I- -I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${top_builddir} -I${top_srcdir}/kpro64 \
	-I${top_srcdir}/contrib/libelf/lib
