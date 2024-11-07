CC = gcc
CFLAGS = -Wall -I./include
INCLUDE_DIR = include
SOURCES = hello-main.c hello-funct1.c hello-funct2.c
OBJ = $(SOURCES:%.c=%.o)
OBJD = $(SOURCES:%.c=%-d.o)
EXECUTABLE = helloworld


all: $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
	
.PHONY: all clean

debug: CFLAGS += -g
debug: $(EXECUTABLE)-d

$(EXECUTABLE)-d: $(OBJD)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	
%-d.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJ) $(OBJD) $(EXECUTABLE)-d
