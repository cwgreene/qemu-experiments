# BIOS + Bootloader

By default, it looks like qemu uses the SEABios as it's BIOS

https://seabios.org/SeaBIOS

According to this doc

https://www.seabios.org/Execution_and_code_flow

it appears that when the bootloader code is called, SEABios has
transitioned over to 32 bit mode.

The bootloader image needs to exactly 512 bytes with 0x55aa as the
last two bytes.

# x86\_64 Modes
OsDev has some good articles about how to move into the various modes.

We start in 32 bit protected mode (courtesy of SEABios)

https://wiki.osdev.org/Protected_mode

We want to transition over to long 64 bit mode.

https://wiki.osdev.org/Long_Mode

Doing this requires a bit of black magic.

https://wiki.osdev.org/Setting_Up_Long_Mode

