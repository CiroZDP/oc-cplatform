### Inputs: [ CC, OS ] ###
PROJ_ROOT = ../..
O         = $(PROJ_ROOT)/bin/objects

all:	dependency.terminal dependency.color

dependency.terminal:
	@ cd terminal
	@ echo "   \e[92mCompiling\e[0m \e[1mterminal\e[0m"
	@ $(MAKE) O=$(O) CC=$(CC) OS=$(OS)

.PHONY:	dependency.terminal all
