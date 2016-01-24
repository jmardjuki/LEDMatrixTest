# Makefile for building test_ledMatrix executable
# by Janet Mardjuki

TARGET= test_ledMatrix.exe

SOURCES= \
	test_ledMatrix.c \
	general.c

PUBDIR = $(HOME)/project
OUTDIR = $(PUBDIR)
CROSS_TOOL = arm-linux-gnueabi-
CC_C = $(CROSS_TOOL)gcc

CFLAGS = -Wall -g -std=c99 -D _POSIX_C_SOURCE=200809L

all:
	$(CC_C) $(CFLAGS) $(SOURCES) -o $(OUTDIR)/$(TARGET) -lpthread

clean:
	rm -f $(OUTDIR)/$(TARGET)
