; === Function for linux "ls" === ;

section .data
   ls db "/bin/ls", 0

section .text
global _start
_start:
   mov rax, 59
   mov rdi, ls
   mov rsi, 0
   mov rdx, 0
   syscall

   mov rax, 60
   xor rdi, rdi
   syscall

