all: build run

build: boot.bin

boot.bin: boot.asm
	    nasm -f bin boot.asm -o boot.bin

run: boot.bin
	    qemu-system-x86_64 -fda boot.bin

clean:
	    -rm boot.bin
