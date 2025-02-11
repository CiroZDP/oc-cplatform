# Inputs needed by the global Makefile:
  BIN      = ../bin
  TARGET32 = $(BIN)/oc_linux32.exe
  TARGET64 = $(BIN)/oc_linux64.exe

all:	x32 x64

x32:	$(TARGET32)
x64:	$(TARGET64)

$(TARGET32):
	@ cd .. && $(MAKE) CC=gcc \
			TARGET32=$(TARGET32)    \
			TARGET64=$(TARGET64)    \
			OS=linux                \
			ARCH=32 x32

$(TARGET64):
	@ cd .. && $(MAKE) CC=gcc \
			TARGET32=$(TARGET32)    \
			TARGET64=$(TARGET64)    \
			OS=linux                \
			ARCH=64 x64
