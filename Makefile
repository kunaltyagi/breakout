
all: hello.out

hello.out: hello.asm
	nasm -f elf hello.asm
	ld -m elf_i386 -s -o build/hello hello.o
	build/hello > output/hello.out

recompile:
	rm -f *.out
	make all

clean:
	rm -f *.o
	rm -f *~
	rm -f build/*
	rm -f output/*
	rm -f hello

initial:
	rm -f *.out
	make clean

