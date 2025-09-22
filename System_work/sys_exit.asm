; just exit of programm ;

%macro sys_exit 0
   mov rax, 60
   xor rdi, rdi
   syscall
%endmacro
