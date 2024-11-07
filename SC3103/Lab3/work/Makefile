SOURCES = hello-main.c hello-funct1.c hello-funct2.c
OBJECTS = $(SOURCES:.c=.o)
OBJECTS_DEBUG = $(SOURCES:.c=-d.o)
OBJECTS_PROF = $(SOURCES:.c=-p.o)

EXE = helloworld
EXE_DEBUG = helloworld-d
EXE_PROF = helloworld-prof

CC = gcc

CFLAGS_RELEASE = -Wall 
CFLAGS_DEBUG = -Wall -g
CFLAGS_PROF = -Wall -pg

all: $(EXE) $(EXE_DEBUG) $(EXE_PROF)

release: $(EXE)
debug: $(EXE_DEBUG)
prof: $(EXE_PROF)

.PHONY: all clean release debug prof

# Explicit rule for building the standard release executable
$(EXE): $(OBJECTS)
	$(CC) $(CFLAGS_RELEASE) -o $@ $(OBJECTS)

# Explicit rule for building the debug executable
$(EXE_DEBUG): $(OBJECTS_DEBUG)
	$(CC) $(CFLAGS_DEBUG) -o $@ $(OBJECTS_DEBUG)

# Explicit rule for building the profiling executable
$(EXE_PROF): $(OBJECTS_PROF)
	$(CC) $(CFLAGS_PROF) -o $@ $(OBJECTS_PROF)

# Implicit rule to compile C source files into object files for release
%.o: %.c
	$(CC) $(CFLAGS_RELEASE) -c -o $@ $<

# Implicit rule to compile C source files into object files for debug mode
%-d.o: %.c
	$(CC) $(CFLAGS_DEBUG) -c -o $@ $<

# Implicit rule to compile C source files into object files for profiling mode
%-p.o: %.c
	$(CC) $(CFLAGS_PROF) -c -o $@ $<

# Clean rule to remove all generated files
clean:
	rm -f $(OBJECTS) $(OBJECTS_DEBUG) $(OBJECTS_PROF) $(EXE) $(EXE_DEBUG) $(EXE_PROF) gmon.out
