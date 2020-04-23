#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------
define n


endef

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment.$nexport DEVKITPRO=<path to>/devkitpro")
endif

ifeq ($(strip $(LOVEPOTION_SWITCH)),)

export ERR_MSG := \
$nPlease set LOVEPOTION_SWITCH in your environment.\
$nThis should be the path to your Love Potion projects.\
$nDo *NOT* save the *.elf file anywhere else.\
$nexport LOVEPOTION_SWITCH=<path to>/LovePotion.elf
$(error $(ERR_MSG))
endif

TOPDIR = $(CURDIR)
include $(DEVKITPRO)/libnx/switch_rules

#---------------------------------------------------------------------------------
# TARGET is the name of the output files
# BUILD is the directory where object files & intermediate files will be placed
# ROMFS is the directory containing your LOVE game (can be external from this directory)
# An external project could be such as ../../MyProject
#
# APP_TITLE is the name of the app stored in the .nacp file (Optional)
# APP_AUTHOR is the author of the app stored in the .nacp file (Optional)
# APP_VERSION is the version of the app stored in the .nacp file (Optional)
# APP_TITLEID is the titleID of the app stored in the .nacp file (Optional)
#
# ICON is the filename of the icon (.jpg), relative to the project folder.
#   If not set, it attempts to use one of the following (in this order):
#     - <Project name>.jpg
#     - icon.jpg
#     - <libnx folder>/default_icon.jpg
#---------------------------------------------------------------------------------
TARGET          := $(notdir $(CURDIR))
BUILD           := $(TOPDIR)

ROMFS           := game

APP_TITLE       := DDLC-LOVE
APP_AUTHOR      := LukeeGD
APP_TITLEID     := DDFC
APP_VERSION     := 1.1
APP_DESCRIPTION := An unofficial DDLC port for the Switch!

ICON            := data/icon.jpg

export OUTPUT   := $(TARGET)
export TOPDIR   := $(CURDIR)

ifeq ($(strip $(ICON)),)
	icons := $(wildcard *.jpg)
	ifneq (,$(findstring $(TARGET).jpg,$(icons)))
		export APP_ICON := $(TOPDIR)/$(TARGET).jpg
	else
		ifneq (,$(findstring icon.jpg,$(icons)))
			export APP_ICON := $(TOPDIR)/icon.jpg
		endif
	endif
else
	export APP_ICON := $(TOPDIR)/$(ICON)
endif

all: $(OUTPUT).nacp $(OUTPUT).nro

#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(OUTPUT).nacp:
	@nacptool --create "$(APP_TITLE)" "$(APP_AUTHOR)" "$(APP_VERSION)" $@

$(OUTPUT).nro : $(OUTPUT).nacp
	@elf2nro $(LOVEPOTION_SWITCH) $(OUTPUT).nro \
	--icon=$(APP_ICON) \
	--nacp=$(OUTPUT).nacp \
	--romfsdir=$(ROMFS)
