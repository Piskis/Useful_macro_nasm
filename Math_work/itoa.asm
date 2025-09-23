; integer to ASCII function 

; num to RAX, string will be in RSI, RCX = 10(base)

%macro itoa 0
   add rsi, 256            ; mov rsi to end of buffer
   mov byte [rsi], 0       ; write null terminator ('\0')
   mov rcx, 10             ; decimal number system

%%itoa_loop:              
   dec rsi                 ; moving from end to the begining 
   xor rdx, rdx            ; rdx = 0, for division
   div rcx                 ; rax : rcx (rax)
                           ;   RDX = remainder (num 0-9)
   add dl, '0'             ; change number 0-9 to ASCII-simbol '0' - '9'
   mov [rsi], dl           ; write ASCII-simbol to buffer
   test rax, rax           ; check rax 
   jnz %%itoa_loop         ; if RAX != 0 jump do loop again

%endmacro
