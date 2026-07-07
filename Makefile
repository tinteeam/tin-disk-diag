CC = gcc

CFLAGS= -I Inc





.phony: all clean static-bin build help

all: build

build:
	@mkdir -p bin
	$(CC) -o bin/health-check health-checker/main.c $(CFLAGS)
	$(CC) -o bin/list-disks disk-lister/main.c $(CFLAGS)

clean:
	@rm -rf bin

static-bin:
	@mkdir -p bin
	$(CC) -o bin/health-check-static health-checker/main.c  $(CFLAGS) -static
	$(CC) -o bin/list-disks-static disk-lister/main.c $(CFLAGS) -static

help:
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  all          Build the project (default)"
	@echo "  build        Build the project"
	@echo "  clean        Clean the build artifacts"
	@echo "  static-bin   Build a static binary"
	@echo "  help         Show this help message"