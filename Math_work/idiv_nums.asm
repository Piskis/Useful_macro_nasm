%macro idiv_nums 2
  mov r14, %1
  mov r15, %2
  idiv r14, r15
  ; Now r14 = answer
%endmacro
