BUILD_BASE = ../../gnu4_fe/objdir
TARGETS = $(BUILD_BASE)/gcc/cc1 $(BUILD_BASE)/gcc/cc1plus

default:
	(cd $(BUILD_BASE); ./CONFIGURE.x8664)
	$(MAKE) -C $(BUILD_BASE)
	mv -f $(TARGETS) .

clobber:
	rm -f cc1 cc1plus
	$(MAKE) -C $(BUILD_BASE) clean
