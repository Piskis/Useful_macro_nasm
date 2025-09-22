; === ASCII to integer funcion === ;

; string to RDI, num ib RAX   ;

%macro atoi 0
   push rbx                   ; save rbx (will be used for keep sing)
   xor rax, rax               ; rax will be result
   xor rcx, rcx               ; for current simbol
   xor rbx, rbx               ; flag of simbol (0 = '+' / 1 = '-')

; --- skip spaces funcion --- ; 
%%skip_spaces:
   mov cl, byte [rdi]         ; load current simbol
   cmp cl, ' '                ; is it space?
   jne %%check_sing           ; if isn't - jump to next function
   inc rdi                    ; skip space
   jmp %%skip_spaces          ; repeat function

; ---  check sing (+ / -) --- ;
%%check_sing:
   mov cl, byte [rdi]         ; load current simbol
   cmp cl, '-'                ; is it minus?
   jne %%check_plus           ; if isn't - jump check plus 
   mov bl, 1                  ; if it minus save bl=1 flag
   inc rdi                    ; skip '-'
   jmp %%parse_digits        ; jmp next funcion

; ------- check plus -------  ;
%%check_plus:
   cmp cl, '+'                ; is it '+'?
   jne %%parse_digits         ; if isn't jmp parse digits function
   inc rdi                    ; skip '+'

; --- parse digits loop ---   ;
%%parse_digits:               
   mov cl, byte [rdi]         ; load current simbol  
   cmp cl, 0                  ; is it end of line('\0')? 
   je %%done                  ; if yes jump done

; - check if simbol is num -  ;
   cmp cl, '0'                ; 
   jb %%done                  ; if simbol is < '0' - is not a num
   cmp cl, '9'                ; 
   ja %%done                  ; if simbol is > '9' - is not a num

   imul rax, rax, 10          ; multiply the result by 10 (shift the digits)
   sub cl, '0'                ; transform simbol to number ('7' - 7)
   movzx rcx, cl              ; extend to 64bits
   add rax, rcx               ; add num to result

   inc rdi                    ; go to next simbol
   jmp %%parse_digits         ; repeat loop

; ----- end of program -----  ;
%%done:        
   cmp bl, 1                  ; check negative flag (look string 24)  
   jne %%positive             ; if if it positive jump to positive end
   neg rax                    ; if it negative change num to negative

; ------ positive sing ------ ;
%%positive:                   
   pop rbx                    ; RBX recovery 

; --------------------------- ;
%endmacro

