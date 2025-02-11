# Inputs needed by the global Makefile:
  BIN      = ../../bin
  TARGET   = $(BIN)/oc_msdos.exe

all:	$(TARGET)

$(TARGET):
	@ cd .. && $(MAKE) CC=gcc \
			TARGET32=$(TARGET)    \
			TARGET64=$(TARGET)    \
			OS=msdos              \
			ARCH=32 x32
