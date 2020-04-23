3DS    := make -f Makefile_3ds.mk
SWITCH := make -f Makefile_switch.mk
TARGET := $(notdir $(CURDIR))

all:
	@:

nro:
	$(SWITCH)

3dsx:
	$(3DS)

cia:
	$(3DS) cia

clean:
	@echo clean ...
	@rm -fr $(TARGET).3dsx $(TARGET).smdh $(TARGET).cia banner.bnr icon.icn $(TARGET).pfs0 $(TARGET).nso $(TARGET).nro $(TARGET).nacp
