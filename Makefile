#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

# do not build curl on linux - use installed version
ifeq ($(findstring linux,$(EPICS_HOST_ARCH)),) 
DIRS := $(DIRS) $(filter-out $(DIRS), configure)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *App))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocBoot))
endif

define DIR_template
 $(1)_DEPEND_DIRS = configure
endef
$(foreach dir, $(filter-out configure,$(DIRS)),$(eval $(call DIR_template,$(dir))))

iocBoot_DEPEND_DIRS += $(filter %App,$(DIRS))

UNINSTALL_DIRS += $(TOP)/install

include $(TOP)/configure/RULES_TOP


