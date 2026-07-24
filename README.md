# learn-x86-assembly-series-examples

## Lesson-by-lesson examples from the YouTube series by [Edward Kaboi](https://www.youtube.com/@kabwoy254/videos)

## Series Episodes:

[01 - Hello World](https://www.youtube.com/watch?v=kdR5DhJJiR0)

[02 - Registers](https://www.youtube.com/watch?v=so1QFQmQpzI)

[03 - More On Registers](https://www.youtube.com/watch?v=1XBCiguX1z4)

[04 - Printing to StdOut](https://www.youtube.com/watch?v=S0jtMKmbE0E)

[05 - Addition](https://www.youtube.com/watch?v=pJFqLhSjIwA)

[06 - Subtraction](https://www.youtube.com/watch?v=36P3LhZHWBY)

[07 - Multiplication](https://www.youtube.com/watch?v=_srNQCP8LpI)

[08 - Division](https://www.youtube.com/watch?v=LN616MPuU-E)

[09 - Working With Binary Numbers](https://www.youtube.com/watch?v=V_EraAxJnwk)

[10 - Getting User Input (STDIN)](https://www.youtube.com/watch?v=2sFn3Awys2E)

[11 - Mini Project](https://www.youtube.com/watch?v=j8ubw4W_g2g)

[12 - Jumps & Labels](https://www.youtube.com/watch?v=WU3KjDKs9e0)

[13 - Intro to Comparisons](https://www.youtube.com/watch?v=ddXMcVywOag)

[14 - Comparison Jump - JNE](https://www.youtube.com/watch?v=NRG99cDXze4)

[15 - Comparison Jump - JG](https://www.youtube.com/watch?v=pxzLKcS-C10)

[16 - Loops](https://www.youtube.com/watch?v=7TurkrTS81o)

[17 - Calling C Functions](https://www.youtube.com/watch?v=3rdIROizbBk)

---

## Compiling, linking and running an assembly program

### Use `nasm` to compile:

```bash
nasm -f elf32 -o main.o main.s

```

### Use `ld` to link:

```bash
ld -m elf_i386 -o main main.o

```

### Use `./main` to run the program.

### Use `gdb` to step through and debug:

```bash
gdb main
...
(gdb) layout asm
(gdb) break _start
(gdb) run
(gdb) stepi
(gdb) info registers
(gdb) info register al

```
