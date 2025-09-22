; === kill newline function === ;

%macro kill_newline 1
_Kill_newline:
   mov rdi, %1
_kill_loop:
   cmp byte [rdi], 0
   je _kill_done
   cmp byte [rdi], 10
   je _kill_replace
   inc rdi
   jmp _kill_loop

_kill_replace:
   mov byte [rdi], 0
_kill_done:
      

%endmacro
