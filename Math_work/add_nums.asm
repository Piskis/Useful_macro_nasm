

%macro add_nums 2  ; 12, 12 for example

   mov r14, %1
   mov r15, %2

   add r14, r15 

   ; now r14=answer

%endmacro

