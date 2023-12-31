# Rules
# -----
.PHONY: $(archs) install clean print

install clean print:
	@echo "Make target <$@>"
	$(quiet)$(MAKE) PREMAKE_DONE=y $@

define arch_template
$(1):
	@echo "Make arch template <$(1)>"
	$$(quiet)$$(MAKE) PREMAKE_DONE=y tgt_arch=$(1) all
endef

$(foreach arc,$(archs),$(eval $(call arch_template,$(arc))))

premake.mk:;