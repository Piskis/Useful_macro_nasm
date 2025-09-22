; === Function for found len of text === ;

%macro find_len 1
   mov rdi, %1
   xor rcx, rcx

%%Floop:
   cmp byte [rdi + rcx], 0
   je %%Fdone
   cmp byte [rdi + rcx], 10
   je %%Fdone
   inc rcx
   jmp %%Floop
%%Fdone:


%endmacro

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                   ;
; Macro takes one parameter, Text   ;
;                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
