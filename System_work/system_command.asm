; === Function for linux "ls" === ;
%macro system 1

section .text
global _start
_start:
   mov rax, 59
   mov rdi, %1
   mov rsi, 0
   mov rdx, 0
   syscall

   mov rax, 60
   xor rdi, rdi
   syscall
%endmacro

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; In the .data section, define the              ;
; path to the command you want to call,         ;
; for example, command db "/path/to/comand",    ;
; and then do in section .text <system command> ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
