

%macro add_nums 2  ; 12, 12 for example

   mov r10, %1
   mov r11, %2

   add r10, r11 

   ; now r10=answer

%endmacro

