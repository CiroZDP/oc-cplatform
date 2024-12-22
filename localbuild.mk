#! Before running this file, adjust the settings, please.

# These shouldn't be modified
SOURCE_DIR=src
INCLUDE_DIR=$(SOURCE_DIR)/include

# Variables
CC = gcc
# Customize this
CFLAGS =
# If you are in windows, ensure to put .exe at the end
TARGET = main

all:
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE_DIR)/*.c -I"$(INCLUDE_DIR)/"
