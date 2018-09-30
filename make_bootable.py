import argparse
import os
import sys

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("input")
    options = parser.parse_args()
    with open(options.input) as inputfile:
        byte_array = [0]*512
        for i, char in enumerate(inputfile.read()):
            byte_array[i] = char
        byte_array[510] = 0x55
        byte_array[511] = 0xaa
        sys.stdout.write(str(bytearray(byte_array)))

main()
