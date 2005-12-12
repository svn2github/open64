AC_PREREQ(2.59)
AC_INIT([The Open64 compiler suite], [2.0], [The Open64 Project], [occ])
AC_CONFIG_HEADERS([config.h])
AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE
AC_PROG_CC
AC_PROG_CXX
AC_PROG_F77
AC_PROG_INSTALL
AC_PROG_RANLIB
AC_FUNC_ALLOCA

case $target_cpu in 
    amd64|x86_64)
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

AC_CONFIG_FILES([Makefile
		 kpro64/Makefile
		 kpro64/arith/Makefile
		 kpro64/libcif/Makefile
		 kpro64/libcmplrs/Makefile
		 kpro64/targ_info/Makefile])
AC_OUTPUT
