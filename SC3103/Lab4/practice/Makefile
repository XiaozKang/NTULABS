CC = gcc
CFLAGS = -Wall -o 
LPFLAG = -lpthread
EXECS = pthread1 pthread2 mutex1

all: $(EXECS)

.PHONY: all clean

%: %.c
	$(CC) $(CFLAGS) $@ $< $(LPFLAG)

clean:
	rm -rf $(EXECS)
