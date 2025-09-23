%macro sub_nums 2
  mov r14, %1
  mov r15, %2
  sub r14, r15  ; now r14 is answer
  syscall

%endmacro
