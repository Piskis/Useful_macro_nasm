; === fclose function === ;

%macro fclose 1
   mov rax, 3             ; sys_close
   mov rdi, %1            ; fd (file descriptor)
   syscall

%endmacro


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                   ;
; This takes one parameter          ;
; it will be fd (file descriptor)   ;
; you can define it on .bss         ;
; like  fd resq 1 (look fot example ;
; in same directory)                ;
;                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

