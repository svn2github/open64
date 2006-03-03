noinst_LIBRARIES = libelfutil.a
libelfutil_a_SOURCES = lebdecodes32.c lebdecodes64.c lebdecodeu32.c \
	lebdecodeu64.c lebencodes32.c lebencodes64.c lebencodeu32.c \
	lebencodeu64.c xlate_address.c xlate_block_index.c \
	xlate_block_search.c xlate_expand_reg.c xlate_expand_reg2.c \
	xlate_get_all_reg.c xlate_get_info.c xlate_get_range.c \
	xlate_get_reg.c xlate_get_reg_internal.c xlate_init_elf.c \
	xlate_init_fd.c xlate_named_init_elf.c xlate_named_init_fd.c \
	xlate_pro_add_info.c xlate_pro_add_range.c \
	xlate_pro_add_range_internal.c xlate_pro_add_reg_info.c \
	xlate_pro_disk_header.c xlate_pro_disk_next_block.c \
	xlate_pro_init.c xlate_update_for_movement.c

AM_CPPFLAGS = ${PIC_FLAGS} -I${srcdir}/../include \
	-I${srcdir}/../libdwarf -I${top_srcdir}/contrib/dwarf/libdwarf \
	-I${srcdir}/.. -I${top_srcdir}/contrib/libelf/lib
