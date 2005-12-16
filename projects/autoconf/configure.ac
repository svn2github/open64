AC_PREREQ(2.59)
AC_INIT([The Open64 compiler suite], [2.0], [The Open64 Project], [occ])
AC_CONFIG_HEADERS([config.h])

AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET

AM_INIT_AUTOMAKE

case $target_cpu in
    amd64|x86_64|i386)
	AC_DEFINE(TARG_X8664,1,[Define when building an amd64 compiler])
	TARG_SUBDIR=x8664
	;;
    ia64)
	AC_DEFINE(TARG_IA64,1,[Define when building an ia64 compiler])
	TARG_SUBDIR=ia64
	;;
    *)
	AC_MSG_ERROR([*** Unsupported target architecture: $target_cpu], 1)
	;;
esac
AC_SUBST([TARG_SUBDIR])

#
# Check for programs
#
AC_PROG_CC
AC_PROG_CXX
AC_PROG_F77
AC_PROG_INSTALL
AC_PROG_RANLIB

#
# Check for libraries (none yet)
#

#
# Check for header files
#
AC_HEADER_STDC

AH_TEMPLATE(HAVE_AR_H, [Define if you have the <ar.h> header file.])
AH_TEMPLATE(HAVE_ELF_H, [Define if you have the <elf.h> header file.])
AH_TEMPLATE(HAVE_FCNTL_H, [Define if you have the <fcntl.h> header file.])
AH_TEMPLATE(HAVE_GELF_H, [Define if you have the <gelf.h> header file.])
AH_TEMPLATE(HAVE_LIBELF_H, [Define if you have the <libelf.h> header file.])
AH_TEMPLATE(HAVE_SYS_ELF_H, [Define if you have the <sys/elf.h> header file.])

AC_CHECK_HEADERS([ar.h elf.h fcntl.h gelf.h libelf.h sys/elf.h])

AH_TEMPLATE(__LIBELF_HEADER_ELF_H,
    [Define to `<elf.h>' or `<sys/elf.h>' if one of them is present.])

if test "$ac_cv_header_elf_h" = yes; then
    AC_DEFINE(__LIBELF_HEADER_ELF_H, [<elf.h>])
else
    if test "$ac_cv_header_sys_elf_h" = yes; then
	AC_DEFINE(__LIBELF_HEADER_ELF_H, [<sys/elf.h>])
    fi
fi

#
# Check for types
#
AC_TYPE_OFF_T
AC_TYPE_SIZE_T

# The following applies to Solaris. We don't care about that now
AH_TEMPLATE(__LIBELF_NEED_LINK_H,
    [Define if Elf32_Dyn is declared in <link.h>.])

#
# Check for structures (none yet)
#

#
# Check for compiler characteristics
#
AC_C_CONST
AC_C_INLINE
AC_CHECK_SIZEOF(short,2)
AC_CHECK_SIZEOF(int,4)
AC_CHECK_SIZEOF(long,0)
AC_CHECK_SIZEOF(long long,0)

AH_TEMPLATE(__libelf_i16_t,
    [Define to a 16-bit signed integer type if one exists.])
AH_TEMPLATE(__libelf_i32_t,
    [Define to a 32-bit signed integer type if one exists.])
AH_TEMPLATE(__libelf_i64_t,
    [Define to a 64-bit signed integer type if one exists.])
AH_TEMPLATE(__libelf_u16_t,
    [Define to a 16-bit unsigned integer type if one exists.])
AH_TEMPLATE(__libelf_u32_t,
    [Define to a 32-bit unsigned integer type if one exists.])
AH_TEMPLATE(__libelf_u64_t,
    [Define to a 64-bit unsigned integer type if one exists.])

AC_DEFINE(__libelf_i16_t, short)
AC_DEFINE(__libelf_u16_t, unsigned short)
AC_DEFINE(__libelf_i32_t, int)
AC_DEFINE(__libelf_u32_t, unsigned int)

if test "$ac_cv_sizeof_long" = 8; then
    AC_DEFINE(__libelf_i64_t, long)
    AC_DEFINE(__libelf_u64_t, unsigned long)
else
    if test "$ac_cv_sizeof_long_long" = 8; then
	AC_DEFINE(__libelf_i64_t, long long)
	AC_DEFINE(__libelf_u64_t, unsigned long long)
    fi
fi

#
# Check for library functions
#
AC_FUNC_ALLOCA
AC_FUNC_MMAP

AH_TEMPLATE(HAVE_FTRUNCATE, [Define if you have the ftruncate(2) function.])
AH_TEMPLATE(HAVE_MEMCMP, [Define if you have the memcmp(3) function.])
AH_TEMPLATE(HAVE_MEMCPY, [Define if you have the memcpy(3) function.])
AH_TEMPLATE(HAVE_MEMMOVE, [Define if you have the memmove(3) function.])
AH_TEMPLATE(HAVE_MEMSET, [Define if you have the memset(3) function.])
AH_TEMPLATE(HAVE_STRSIGNAL, [Define if you have the strsignal(3) function.])

AC_CHECK_FUNCS([ftruncate memcmp memcpy memmove memset strsignal])

#
# Check for system services (none yet)
#

AC_CONFIG_FILES([Makefile
		 kpro64/Makefile
		 kpro64/arith/Makefile
		 kpro64/common/Makefile
		 kpro64/libcif/Makefile
		 kpro64/libcmplrs/Makefile
		 kpro64/libelf/Makefile
		 kpro64/targ_info/Makefile])
AC_OUTPUT
