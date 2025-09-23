%macro imul_nums 2

  mov r14, %1
  mov r15, %2
  imul r14, r15     ; now r14 is answer
  syscall

%endmacro

