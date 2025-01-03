# Project settings
PROJ_ROOT  = ../..
SOURCE_DIR = $(PROJ_ROOT)/src
SOURCES    = $(SOURCE_DIR)/*.c
INCLUDES   =
TARGET_DIR = $(PROJ_ROOT)/build/

# Compiler settings
CC     = gcc
CFLAGS = $(INCLUDES) -O2 -Wall

x64: $(SOURCE_DIR)/main.c
	mkdir $(TARGET_DIR) && $(CC) $(CFLAGS) -m64 $(SOURCES) -o $(TARGET_DIR)/oc_linux64

x32: $(SOURCE_DIR)/main.c
	mkdir $(TARGET_DIR) && $(CC) $(CFLAGS) -m32 $(SOURCES) -o $(TARGET_DIR)/oc_linux32
