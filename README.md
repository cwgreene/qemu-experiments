# BIOS + Bootloader

By default, it looks like qemu uses the SEABios as it's BIOS

https://seabios.org/SeaBIOS

The bootloader image needs to exactly 512 bytes with 0x55aa as the
last two bytes.

# x86\_64 Modes
OsDev has some good articles about how to move into the various modes.

Contrary to previous versions of this documnet, the BIOS does *not* seem
to bring us into 32bit protected mode. This is meant to be performed
by the bootloader.

https://wiki.osdev.org/Real_Mode

Confusingly, 16 bit mode does not seem to mean you can't use 32 bit registers,
(see 'Common Misconception' in linked doc) but does impact the address space
available.

From what I can work out, BIOS functionality can only be accessed via Real Mode.

One thing the bootloader needs to do is enter protected mode.

https://wiki.osdev.org/Protected_mode

Then we want to transition over to long 64 bit mode.

https://wiki.osdev.org/Long_Mode

Doing this requires a bit of black magic.

https://wiki.osdev.org/Setting_Up_Long_Mode

