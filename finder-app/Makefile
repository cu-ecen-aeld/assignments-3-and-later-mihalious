CC := gcc
CFLAGS := -g -Wall
SRC := writer.c
TARGET := writer

all:
	$(CROSS_COMPILE)$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f *.o $(TARGET)