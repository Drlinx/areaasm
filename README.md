Author: Kassidy Maberry
File: README.md
Assignment: Assembly
Date: 2023/04/24

To run this program you will need to run the following commands:
nasm -f elf64 -g -F dwarf area.asm -l area.lst
gcc -o area area.o -no-pie

area.asm is a program that will tell you the area of a 15x15 square.
I believe the hardest part of making this program was getting it to multiply
and display that output. This was my first time coding in assembly so I was
having trouble getting it to properly multiply. However once I got it to
multiply I had a new set of issues being that you can't put it into an 
xmm register. To fix this I would use mulsd and convert dist into a floating
point number. However now I would now multiply directly the xmm1 register.