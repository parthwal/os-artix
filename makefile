test:assignmentOne.o
	gcc -m64 -no-pie assignmentOne.o -o result
assignmentOne.o:parth.asm
	nasm -f elf64 parth.asm -o assignmentOne.o
clean:
	rm -rf *o result