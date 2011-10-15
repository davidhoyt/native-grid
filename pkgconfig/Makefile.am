### all of the standard pc files we need to generate
pcfiles = \
	native-grid-core.pc

pcfiles_uninstalled = \
	native-grid-core-uninstalled.pc

all-local: $(pcfiles) $(pcfiles_uninstalled)

cp_verbose = $(cp_verbose_$(V))
cp_verbose_ = $(cp_verbose_$(AM_DEFAULT_VERBOSITY))
cp_verbose_0 = @echo "  CP     $@";

### how to generate pc files
%.pc:
	$(cp_verbose_0)cp $< $@
%-uninstalled.pc: 
	$(cp_verbose_0)cp $< $@

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = $(pcfiles)

EXTRA_DIST = \
	native-grid-core.pc.in \
	native-grid-core-uninstalled.pc.in

CLEANFILES = $(pcfiles) $(pcfiles_uninstalled)
