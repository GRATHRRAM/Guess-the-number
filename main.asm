;Creator Grathrram
;License GNU GPL 3
;stdev - 25.01.2024

;Compilation
;nasm -f elf64 -o main.o main.asm
;ld -o main main.o

STDOUT equ 1
WRITE  equ 1

global _start
section .rodata
  wellcome_msg db "Guess The Number -- By GRATHRRAM", 10
  wellcome_len equ $- wellcome_msg  
  enter_msg  db "Enter max number that can be generated: ", 10
  enter_len  equ $- enter_msg
  numlow_msg db "Number is too low!", 10
  numlow_len equ $- numlow_msg
  numbig_msg db "Number is too Big!", 10
  numbig_len equ $- numbig_msg
  numbis_msg db "You did it number is ", 10
  numbis_len equ $- numbis_msg

section .bss
  buff resb 16

section .text
_start:
  mov rax, WRITE
  mov rdi, STDOUT
  mov rsi, wellcome_msg
  mov rdx, wellcome_len
  syscall
  
  mov rax, 60;exit syscall
  mov rdi, 0
  syscall
  
