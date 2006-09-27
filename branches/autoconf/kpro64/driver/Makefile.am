bin_PROGRAMS = driver
driver_SOURCES = errors.c file_names.c file_utils.c get_options.c lang_defs.c \
	license.c main.c objects.c opt_actions.c option_seen.c options.c \
	phases.c run.c special_options.c string_utils.c

GENSRCS = check_combos.c implicits.c version.c
GENHDRS = get_option.i init_options.i opt_action.i option_names.h

nodist_driver_SOURCES = ${GENSRCS}

BUILT_SOURCES = ${GENSRCS} ${GENHDRS}
CLEANFILES = ${GENSRCS} ${GENHDRS} .OPTIONS

noinst_PROGRAMS = table
table_SOURCES = errors.c file_utils.c lang_defs.c string_utils.c table.c

check_combos.c implicits.c ${GENHDRS}: .OPTIONS

.OPTIONS: OPTIONS sort_options.awk sort_options.csh table
	CPP="${CPP}" csh -f ${srcdir}/sort_options.csh ${srcdir} OPTIONS -DKEY | ./table
	touch $@

version.c: gen_version.csh
	csh -f $< > $@

name_prefix:=$(shell echo "" | sed -e "${transform}")

AM_CPPFLAGS = -DKEY -DNAME_PREFIX=\"${name_prefix}\" -DPSC_NAME_PREFIX=\"o\" \
	-I${srcdir}/../common/com -I${srcdir}/../include
