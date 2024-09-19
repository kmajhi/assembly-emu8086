# Advantages of Assembly Language

Having an understanding of assembly language makes one aware of:

- How programs interface with the OS, processor, and BIOS.
- How data is represented in memory and other external devices.
- How the processor accesses and executes instructions.
- How instructions access and process data.
- How a program accesses external devices.

## Other Advantages of Using Assembly Language

- Requires less memory and execution time.
- Allows hardware-specific complex jobs more easily.
- Suitable for time-critical jobs.
- Most suitable for writing interrupt service routines and other memory resident programs.

---

# Basic Features of PC Hardware

The main internal hardware of a PC consists of the processor, memory, and registers. Registers are processor components that hold data and addresses. To execute a program, the system copies it from the external device into the internal memory, and the processor executes the program instructions.

The fundamental unit of computer storage is a **bit**; it could be **ON (1)** or **OFF (0)**, and a group of 8 related bits makes a **byte** on most modern computers.

The **parity bit** is used to make the number of bits in a byte odd. If the parity is even, the system assumes that there has been a parity error (though rare), which might have been caused by a hardware fault or electrical disturbance.

## Data Sizes Supported by the Processor

- **Word**: a 2-byte data item
- **Doubleword**: a 4-byte (32-bit) data item
- **Quadword**: an 8-byte (64-bit) data item
- **Paragraph**: a 16-byte (128-bit) area
- **Kilobyte**: 1024 bytes
- **Megabyte**: 1,048,576 bytes

---

# Binary Number System

Every number system uses positional notation, meaning each position in which a digit is written has a different positional value. Each position is a power of the base, which is 2 for the binary number system, and these powers begin at 0 and increase by 1.

## Positional Values for an 8-bit Binary Number

| Bit value                                     | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
|-----------------------------------------------|---|---|---|---|---|---|---|---|
| Position value as a power of base 2          | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
| Bit number                                    | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
