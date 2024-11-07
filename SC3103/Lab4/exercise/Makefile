CC = gcc
CFLAGS = -Wall -o 
LPFLAG = -lpthread
EXECS = server client

all: $(EXECS)

%: %.c
	$(CC) $(CFLAGS) $@ $< $(LPFLAG)

clean:
	rm -f client server

.PHONY: all clean
