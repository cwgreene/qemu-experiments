.global _start
.code16
_start:
	cli
	mov $3, %eax
	hlt
	mov $msg, %si
	mov $0x0E, %ah
	lodsb
	int $0x10
halt:	hlt
msg:
.asciz "Hello World"
