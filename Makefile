CC=cc
CFLAGS=-c -Wall -Werror -std=c11 -pedantic -O3
LDFLAGS=
SOURCES=rle.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=rle

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
