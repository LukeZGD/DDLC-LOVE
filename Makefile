#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------
define n


endef

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

ifeq ($(strip $(LOVEPOTION_3DS)),)

export ERR_MSG := \
$nPlease set LOVEPOTION_3DS in your environment.\
$nThis should be the path to your Love Potion projects.\
$nDo *NOT* save the *.elf file anywhere else.\
$nexport LOVEPOTION_3DS=<path to>/LovePotion.elf
$(error $(ERR_MSG))
endif

TOPDIR ?= $(CURDIR)
include $(DEVKITARM)/3ds_rules

#---------------------------------------------------------------------------------
# TARGET is the name of the output files
# BUILD is the directory where object files & intermediate files will be placed
# ROMFS is the directory containing your LOVE game
#
# APP_TITLE is the name of the app stored in the .3dsx file (Optional)
# APP_AUTHOR is the author of the app stored in the .3dsx file (Optional)
# APP_VERSION is the version of the app stored in the .3dsx file (Optional)
# APP_DESCRIPTION is the description of the application
#
# ICON is the filename of the icon (.png), relative to the project folder.
#---------------------------------------------------------------------------------
TARGET			:= $(notdir $(CURDIR))

BUILD			:= build
GAME			:= game

APP_TITLE		:= DDLC-LOVE
APP_AUTHOR		:= LukeZGD
APP_VERSION		:= 1.1
APP_DESCRIPTION := An unofficial port of DDLC for the 3DS

ICON			:= icon.png

ROMFS			:= $(BUILD)/game

#---------------------------------------------------------------------------------
# build options
#---------------------------------------------------------------------------------

export OUTPUT    :=    $(TARGET)
export TOPDIR    :=    $(CURDIR)

GFXFILES := $(shell find $(GAME) -name '*.png' -o -name '*.jpg')

export ROMFS_T3XFILES	:=	$(patsubst %.png, $(BUILD)/%.t3x, $(GFXFILES))

ifeq ($(strip $(ICON)),)
	icons := $(wildcard *.png)
	ifneq (,$(findstring $(TARGET).png,$(icons)))
		export APP_ICON := $(TOPDIR)/$(TARGET).png
	else
		ifneq (,$(findstring icon.png,$(icons)))
			export APP_ICON := $(TOPDIR)/icon.png
		endif
	endif
else
	export APP_ICON := $(TOPDIR)/$(ICON)
endif

#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------


all: raw $(OUTPUT).smdh $(OUTPUT).3dsx

raw: $(BUILD) $(ROMFS_T3XFILES)

clean:
	@echo clean ...
	@rm -fr $(BUILD) $(TARGET).3dsx $(OUTPUT).smdh


$(BUILD):
	@mkdir -p $@
	@cp -r $(GAME) $@

$(OUTPUT).smdh:
	@echo "Building smdh.."
	@smdhtool --create "$(APP_TITLE)" "$(APP_DESCRIPTION)" "$(APP_AUTHOR)" "$(APP_ICON)" $@

$(OUTPUT).3dsx:
	@echo "Building 3dsx.."
	@3dsxtool $(LOVEPOTION_3DS) $@ --smdh=$(OUTPUT).smdh --romfs=$(ROMFS)

#---------------------------------------------------------------------------------
# Create our t3x files
#---------------------------------------------------------------------------------
$(BUILD)/%.t3x:
#---------------------------------------------------------------------------------
	@tex3ds $*.png --atlas -f rgba8888 -z auto -o $(BUILD)/$*.t3x
	@rm "$(BUILD)/$*.png"