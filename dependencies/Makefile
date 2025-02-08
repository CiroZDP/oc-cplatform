### Inputs: [ CC, OS ] ###
PROJ_ROOT = ../..
O         = $(PROJ_ROOT)/bin/objects

all:	dependency.terminal dependency.color

dependency.terminal:
	@ echo "   \e[38;1;92mCompiling\e[0m \e[1mterminal\e[0m"
	@ cd terminal && $(MAKE) O=$(O) CC=$(CC) OS=$(OS)

.PHONY:	dependency.terminal all
