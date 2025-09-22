%macro sys_sleep 2
section .data

timespec:
  dq %1                ; seconds
  dq %2                ; nanoseconds


section .text
  mov rax, 35
  lea rdi, [rel timespec]
  xor rsi, rsi
  syscall

%endmacro

