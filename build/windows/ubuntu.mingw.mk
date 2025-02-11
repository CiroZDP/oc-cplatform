# Inputs needed by the global Makefile:
  BIN      = ../../bin
  TARGET32 = $(BIN)/oc_win32.exe
  TARGET64 = $(BIN)/oc_win64.exe

all:	x32 x64

x32:	$(TARGET32)
x64:	$(TARGET64)

$(TARGET32):
	@ cd .. && $(MAKE) CC=i686-w64-mingw32-gcc \
			TARGET32=$(TARGET32)    \
			TARGET64=$(TARGET64)    \
			OS=win32                \
			ARCH=32 x32

$(TARGET64):
	@ cd .. && $(MAKE) CC=x86_64-w64-mingw32-gcc \
			TARGET32=$(TARGET32)    \
			TARGET64=$(TARGET64)    \
			OS=win32                \
			ARCH=64 x64
