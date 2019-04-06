################################################################################
#
# kilo
#
################################################################################

KILO_VERSION = af3919d68cb2e70a3d9a2309596cf290cf6bc1ac
KILO_SITE = $(call github,sysprog21,kilo,$(KILO_VERSION))
KILO_LICENSE = BSD-2-Clause

define KILO_BUILD_CMDS  
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef  

define KILO_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/kilo $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
