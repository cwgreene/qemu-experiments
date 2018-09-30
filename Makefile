all:
	as -o boot.o boot.S
	ld --oformat binary -o boot boot.o
	python make_bootable.py boot > boot.bin

run: all
	# run 'info registers' to see registers
	qemu-system-x86_64 boot.bin --monitor stdio
