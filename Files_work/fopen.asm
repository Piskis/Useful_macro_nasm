; === fopen function === ;

%macro fopen 3
   mov rax, 2            ; sys_open
   mov rdi, %1           ; filename
   mov rsi, %2           ; flags
   mov rdx, %3           ; mode 
   syscall

%endmacro

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                             ;
; Takes 3 parameters                          ;
; first is filename from section ,data        ;
; second is flag (example O_WRONLY = 0x41)    ;
; last is a mode (rights) for example 0o644   ;
;                                             ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

