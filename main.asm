;Creator Grathrram
;License GNU GPL 3
;stdev - 25.01.2024

;Compilation
;nasm -f elf64 -o main.o main.asm
;ld -o main main.o

global _start
section .rodata
  wellcome_msg db "Guess The Number -- By GRATHRRAM", 10
  enter_msg  db "Enter max number that can be generated: ", 10
  numlow_msg db "Number is too low!", 10
  numbig_msg db "Number is too Big!", 10
  numbis_msg db "You did it number is ", 10

  wellcome_len equ $- wellcome_msg  
  enter_len  equ $- enter_msg
  numlow_len equ $- numlow_msg 
  numbig_len equ $- numbig_msg
  numbis_len equ $- numbis_msg

section .text
_start:
  mov rax, 1        ; write syscall
  mov rdi, 1        ; STDOUT_FILENO,
  mov rsi, wellcome_msg
  mov rdx, wellcome_len
  syscall
  
  mov rax, 60;exit syscall
  mov rdi, 0
  syscall
  
