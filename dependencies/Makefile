### Inputs: [ CC, OS ] ###
PROJ_ROOT = ..
O         = $(PROJ_ROOT)/bin/objects

all:	dependency.terminal

dependency.terminal:
	@ echo "   \e[92mCompiling\e[0m \e[1mterminal\e[0m"
	@ cd terminal && $(MAKE) CFLAGS=-m$(ARCH) O=$(O) CC=$(CC) OS=$(OS)

.PHONY:	dependency.terminal all
