all:
	as -o boot.o boot.S 
	ld --oformat binary -o boot boot.o -e 0x7C00 -Ttext 0x7C00
	python make_bootable.py boot > boot.bin

nasm:
	nasm boot.asm -f bin -o boot.bin

run:
	# run 'info registers' to see registers
	qemu-system-x86_64 boot.bin -bios ~/src/seabios/out/bios.bin --monitor stdio

disassemble:
	objdump -D -b binary -mi386 -Maddr16,data16 boot.bin
