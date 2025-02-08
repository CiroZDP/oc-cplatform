### Inputs: [ CC, OS ] ###
PROJ_ROOT = ../..
O         = $(PROJ_ROOT)/bin/objects

all:	dependency.terminal dependency.color

dependency.terminal:
	@ cd terminal && $(MAKE) O=$(O) CC=$(CC) OS=$(OS)

.PHONY:	dependency.terminal all
