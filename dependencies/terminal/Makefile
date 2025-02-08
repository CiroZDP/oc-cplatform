### Inputs: [ O, CC, OS ] ###

## Project settings
  PROJ_ROOT  = ../..
  SOURCE_DIR = src
  BIN        = $(PROJ_ROOT)/bin

  # Files
    CFILES       = $(wildcard $(SOURCE_DIR)/*.c) $(wildcard $(SOURCE_DIR)/$(OS)/*.c)

  # Libraries
    INCLUDE_DIR  = $(PROJ_ROOT)/include
    LIBS        += -I"$(INCLUDE_DIR)"

## Output / Build
  # Objects
    OBJS  += $(addprefix $(O)/, $(notdir $(CFILES:.c=.o)))

  # Targets
    TARGET = $(BIN)/terminal.a

## Compiler settings
  CFLAGS += -O2 -Wall -c -fPIC

all:	always $(OBJS) buildlib cleanobjs

$(O)/%.o:
	@ if [ -f $(SOURCE_DIR)/$*.c ]; then \
	    SRC="$(SOURCE_DIR)/$*.c"; \
	else \
	    SRC="$(SOURCE_DIR)/$(OS)/$*.c"; \
	fi; \
	echo -e "   \e[96mBuilding\e[0m \`$$SRC'"; \
	$(CC) $(CFLAGS) -o $@ $$SRC $(LIBS)

always:
	@ mkdir -p $(O)

buildlib:
	@ ar rsc $(TARGET) $(OBJS)

cleanobjs:
	@ rm -f $(OBJS)

clean:
	@ rm -f $(TARGET)

.PHONY: all always cleanobjs clean
