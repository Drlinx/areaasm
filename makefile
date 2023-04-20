CC=gcc
AS=nasm
ASF=-f elf64 -g -F dwarf
CFlags= -no-pie -g -Wall -o

all: area.o area

area.o: area.asm
	gcc -o area area.o -no-pie

area: area.o
	nasm -f elf64 -g -F dwarf area.asm -l area.lst
