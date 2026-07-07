CC = gcc
CFLAGS = -static

all: build

build:
	@mkdir -p bin
	$(CC) -o bin/init init.c $(CFLAGS)

clean:
	@rm -rf bin