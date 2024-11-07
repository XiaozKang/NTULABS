CC = gcc
CFLAGS = -Wall -g -pg -I./include
INCLUDE_DIR = include
SOURCES = hello-main.c hello-funct1.c hello-funct2.c
OBJ = $(SOURCES:%.c=%.o)
EXECUTABLE = helloworld

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
	
.PHONY: all clean
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f $(EXECUTABLE) $(OBJ) gmon.out
