%define STRING "%%define STRING %2$c%3$s%2$c%1$c%%define FILE %2$cGrace_kid.s%2$c%1$c%1$c%%macro FD 0%1$cextern fopen, fprintf, fclose, exit%1$c%1$csection .data%1$cfile_name: db FILE,0%1$cfile_mode: db %2$cw%2$c,0%1$cs: db STRING,0%1$c%1$csection .text%1$cglobal _start%1$c%1$c_start:%1$cmov rdi, file_name%1$cmov rsi, file_mode%1$ccall fopen%1$cmov rbx, rax%1$ccmp rbx, 0%1$cje quit_error%1$cmov rdi, rbx%1$cmov rsi, s%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, s%1$ccall fprintf%1$cmov rdi, rbx%1$ccall fclose%1$cjmp quit%1$c%1$cquit:%1$ccall exit%1$c%1$cquit_error:%1$cmov rdi, 1%1$ccall exit%1$c%%endmacro%1$c;Show time%1$cFD"
%define FILE "Grace_kid.s"

%macro FD 0
extern fopen, fprintf, fclose, exit

section .data
file_name: db FILE,0
file_mode: db "w",0
s: db STRING,0

section .text
global _start

_start:
mov rdi, file_name
mov rsi, file_mode
call fopen
mov rbx, rax
cmp rbx, 0
je quit_error
mov rdi, rbx
mov rsi, s
mov rdx, 10
mov rcx, 34
mov r8, s
call fprintf
mov rdi, rbx
call fclose
jmp quit

quit:
call exit

quit_error:
mov rdi, 1
call exit
%endmacro
;Show time
FD