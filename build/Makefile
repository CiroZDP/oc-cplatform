# TODO: In case the operating system we want to compile doesn't has the
# TODO: AMD64 architecture, always use x32.

#### Inputs:
  # !mandatory TARGET64: The output file when compiling to AMD64.
  # !mandatory TARGET32: The output file when compiling to x86.
  # *optional    CFILES: Every file with [`.c`] extension.
  # *optional      LIBS: Compiler arguments specifically for libraries.
  # *optional    CFLAGS: Compiler arguments.
  # !mandatory       CC: The compiler in order to compile the project.
  # !mandatory       OS: The operating system.
  # !mandatory     ARCH: The architecture. { x32 / x64 }

## Project settings
  PROJ_ROOT   = ..
  SOURCE_DIR  = $(PROJ_ROOT)/src
  BIN         = $(PROJ_ROOT)/bin

  # Files
    CFILES      += $(wildcard $(SOURCE_DIR)/*.c)

  # Libraries
    INCLUDE_DIR  = $(PROJ_ROOT)/include
    LIBS        += $(BIN)/terminal.a
    LIBS        += -I"$(INCLUDE_DIR)"

## Output / Build

  # Objects
    O      = $(BIN)/objects
    OBJS  += $(addprefix $(O)/, $(notdir $(CFILES:.c=.o)))


## Compiler settings
  CFLAGS  += -O2 -Wall -static

x32:	$(TARGET32)
x64:	$(TARGET64)

$(TARGET32):	always $(BIN)/terminal.a $(OBJS)
	@ $(CC)	$(CFLAGS) -m32 -o $(TARGET32) $(OBJS) $(LIBS)
	@ echo "   \e[96m▌ info:\e[0m The file was saved at $(TARGET32)"

$(TARGET64):	always $(BIN)/terminal.a $(OBJS)
	@ $(CC)	$(CFLAGS) -m64 -o $(TARGET64) $(OBJS) $(LIBS)
	@ echo "   \e[96m▌ info:\e[0m The file was saved at $(TARGET64)"

# --> Helpers for object building
$(O)/%.o:	$(CFILES)
	@ echo "   \e[96mBuilding\e[0m \`$<'"
	@ $(CC) -c -o $@ $< $(LIBS)

$(BIN)/terminal.a:
	@ cd $(PROJ_ROOT)/dependencies && $(MAKE) OS=$(OS) CC=$(CC) ARCH=$(ARCH) dependency.terminal

always:
	@ mkdir -p $(O)

.PHONY:	always
