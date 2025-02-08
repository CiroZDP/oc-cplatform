## Project settings
  PROJ_ROOT   = ../..
  SOURCE_DIR  = $(PROJ_ROOT)/src
  BIN   = $(PROJ_ROOT)/bin

  # Files
    CFILES       = $(wildcard $(SOURCE_DIR)/*.c)

  # Libraries
    INCLUDE_DIR  = $(PROJ_ROOT)/include
    LIBS        += $(BIN)/terminal.a
    LIBS        += -I"$(INCLUDE_DIR)"

## Output / Build

  # Objects
    O      = $(BIN)/objects
    OBJS  += $(addprefix $(O)/, $(notdir $(CFILES:.c=.o)))

  # Targets
    TARGET64  = $(BIN)/oc_win64.exe
    TARGET32  = $(BIN)/oc_win32.exe

## Compiler settings
  CFLAGS  += -O2 -Wall -static

# x86_64-w64-mingw32-gcc | i686-w64-mingw32-gcc

all:	$(TARGET32) $(TARGET64)
x32:	$(TARGET32)
x64:	$(TARGET64)

$(TARGET32):	always $(BIN)/terminal.a $(OBJS)
	@ $(CC)	$(CFLAGS) -m32 -o $(TARGET32) $(OBJS) $(LIBS)
	@ echo -e "   \e[96m▌ info:\e[0m The file was saved at $(TARGET32)"

$(TARGET64):	always $(BIN)/terminal.a $(OBJS)
	@ $(CC)	$(CFLAGS) -m64 -o $(TARGET64) $(OBJS) $(LIBS)
	@ echo -e "   \e[96m▌ info:\e[0m The file was saved at $(TARGET64)"

# Helpers for object building
$(O)/%.o:	$(CFILES)
	@ echo -e "   \e[96mBuilding\e[0m \`$<'"
	@ $(CC) -c -o $@ $< $(LIBS)

$(BIN)/terminal.a:
	@ cd $(PROJ_ROOT)/dependencies && $(MAKE) OS=$(OS) CC=$(CC) dependency.terminal

always:
	@ mkdir -p $(O)

.PHONY:	always
