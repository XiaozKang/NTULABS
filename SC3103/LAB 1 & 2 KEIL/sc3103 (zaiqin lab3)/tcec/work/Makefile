OBJ = hello-main.o hello-funct1.o

CC = gcc
CFLAGS = -Wall -g

all: hello

hello: $(OBJ)
	$(CC) -o $@ $(OBJ)

hello-main.o: hello-main.c hello.h
	$(CC) $(CFLAGS) -c hello-main.c

hello-funct1.o: hello-funct1.c hello.h
	$(CC) $(CFLAGS) -c hello-funct1.c

clean:
	rm -f $(OBJ) hello
