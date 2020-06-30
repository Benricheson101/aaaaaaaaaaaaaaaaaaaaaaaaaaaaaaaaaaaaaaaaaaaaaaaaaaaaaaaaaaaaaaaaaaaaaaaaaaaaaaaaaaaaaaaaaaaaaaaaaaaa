; nasm -f elf64 -o aaa.o aaa.asm && ld -o aaa aaa.o && ./aaa

SECTION .DATA:
  A: DB 'a'
  A_LEN: EQU $ - A

SECTION .TEXT:
  GLOBAL _start

  PRINT_A:
    MOV RAX, 1
    MOV RDI, 1
    MOV RSI, A
    MOV RDX, A_LEN
    SYSCALL
    JMP PRINT_A

  _start:
    JMP PRINT_A
