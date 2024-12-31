###########################################################################
# If no system/compiler is specified, display a list of available options
###########################################################################

default:
	@echo "This is the root makefile for OpenCraft."
	@echo ""
	@echo "Please, use one of the following commands:"
	@echo "-------------------------------------------------------------------------------------"
	@echo "  $(MAKE) mingw-all          to compile for any Windows architecture using MinGW"
	@echo "  $(MAKE) mingw-x32          to compile exclusively for 32-bit architecture"
	@echo "  $(MAKE) mingw-x64          to compile exclusively for 64-bit architecture"
	@echo "-------------------------------------------------------------------------------------"
	@echo "  $(MAKE) djgpp-all          to compile for MS-DOS using DJGPP"
	@echo "-------------------------------------------------------------------------------------"
	@echo "  $(MAKE) gcc-all            to compile for any Linux architecture using GCC"
	@echo "  $(MAKE) gcc-x32            to compile exclusively for 32-bit architecture"
	@echo "  $(MAKE) gcc-x64            to compile exclusively for 64-bit architecture"
	@echo "-------------------------------------------------------------------------------------"

###########################################################################
# MinGW on Ubuntu
###########################################################################

mingw-all: mingw-x32 mingw-x64

mingw-x32:
	@ cd misc/windows && $(MAKE) -f ubuntu.mingw.mk x32

mingw-x64:
	@ cd misc/windows && $(MAKE) -f ubuntu.mingw.mk x64

###########################################################################
# DJGPP on Debian
###########################################################################

djgpp-all:
	@ cd misc/msdos && $(MAKE) -f debian.djgpp.mk all

###########################################################################
# GCC on Ubuntu
###########################################################################

gcc-all: gcc-x32 gcc-x64

gcc-x32:
	@ cd misc/linux && $(MAKE) -f ubuntu.gcc.mk x32

gcc-x64:
	@ cd misc/linux && $(MAKE) -f ubuntu.gcc.mk x64
