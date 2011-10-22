AC_PREREQ(2.60)
m4_include([version.m4])

AC_INIT(native grid, PROJECT_VERSION, dhoyt@hoytsoft.org)
LT_INIT

AC_CONFIG_MACRO_DIR([m4])
AC_CANONICAL_SYSTEM                                   #create a cross platform build system

AM_INIT_AUTOMAKE([-Wno-portability 1.10])             #init automake
AM_CONFIG_HEADER(config.h)

#use pretty build output with automake >= 1.11
m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES([yes])], [AM_DEFAULT_VERBOSITY=1 AC_SUBST(AM_DEFAULT_VERBOSITY)])

AC_LIBTOOL_WIN32_DLL
AM_PROG_LIBTOOL

AC_SUBST(ACLOCAL_AMFLAGS, "-I m4")                    #parameters for aclocal (keep in sync with Makefile.am)

AC_PROG_CC                                            #check for C compiler

AC_ARG_ENABLE(docs, [AS_HELP_STRING([--disable-docs],[Disable documentation generation])])
AM_CONDITIONAL([BUILD_SPECIFICATIONS], [test "x$enable_docs" != "xno"])

#output make files
AC_CONFIG_FILES([
	Makefile
	pkgconfig/Makefile 
	docs/Makefile
	src/Makefile
	src/libs/Makefile
	src/libs/native-grid/Makefile
	src/libs/native-grid/core/Makefile
	src/bin/Makefile
])
AC_OUTPUT

echo "

Configuration
	Version                    : ${VERSION}
	Source code location       : ${srcdir}
	Prefix                     : ${prefix}
	Compiler                   : ${CC}
"