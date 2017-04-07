CC = gcc
CFLAGS = -Wall
OBJS = conio.o minesweeper.o
HEADERS = conio.h
TARGET = minesweeper

all = $(TARGET)

$(TARGET): $(OBJS)
	gcc -o $@ $^
%.o: %.c
	gcc -o $(CFLAGS) -g -c $<
$(OBJS): $(HEADERS)

.PHONY: clean
clean:
	$(RM) $(OBJS) $(TARGET)
