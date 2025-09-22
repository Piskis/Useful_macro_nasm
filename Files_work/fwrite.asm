; === fwrite funcion === ;

%macro fwrite 3
   mov rax, 1            ; sys_write
   mov rdi, %1           ; fd (file descriptor) 
   mov rsi, %2           ; buffer
   mov rdx, %3           ; count
   syscall

%endmacro

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                       ;
; This takes 3 option for write text to file for example                ;
; First is file desctiptor you can define it on .bss like fd resq 1     ;
; (look for example in te same directory)                               ;
; Second is a content you have to write to file                         ;
; On data its like  content db "Hello world", 0, 10                     ;
; Last is a len of content, can be defined on .data                     ; 
; Like  len equ $ - content                                             ;
;                                                                       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
