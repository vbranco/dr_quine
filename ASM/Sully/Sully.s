%define STRING "%%define STRING %2$c%3$s%2$c%1$c%1$cextern fopen, fprintf, fclose, exit, system, sprintf%1$c%1$csection .data%1$cfilemode: db %2$cw%2$c,0%1$cs: db STRING,0%1$ctmp_compile: db %2$cnasm -f elf64 %%1$s.s && clang -Wall -Werror -Wextra -no-pie %%1$s.o -o %%1$s && rm -f %%1$s.o%2$c,0%1$ctmp_execute: db %2$c./%%1$s%2$c,0%1$ctmp_filename: db %2$cSully_%%1$d%2$c,0%1$ctmp_source: db %2$c%%1$s.s%2$c,0%1$ci: db %4$d%1$c%1$csection .bss%1$ccompile: resb 1000%1$cexecute: resb 1000%1$cfilename: resb 100%1$csource: resb 1000%1$c%1$csection .text%1$cglobal main%1$c%1$cft_compile_and_execute:%1$cmov rdi, compile%1$cmov rsi, tmp_compile%1$cmov rdx, filename%1$cmov rax, 0%1$ccall sprintf%1$cmov rdi, compile%1$cmov rax, 0%1$ccall system%1$cmov rdi, execute%1$cmov rsi, tmp_execute%1$cmov rdx, filename%1$cmov rax, 0%1$ccall sprintf%1$cmov rdi, execute%1$cmov rax, 0%1$ccall system%1$cret%1$c%1$cft_file:%1$cmov rdi, source%1$cmov rsi, filemode%1$ccall fopen%1$cmov rbx, rax%1$ccmp rbx, 0%1$cje ft_error_quit%1$cmov rdi, rbx%1$cmov rsi, s%1$cmov rdx, 10%1$cmov rcx, 34%1$cmov r8, s%1$cmov r9, [rsp + 8]%1$cmov rax, 0%1$ccall fprintf%1$cmov rdi, rbx%1$ccall fclose%1$cret%1$c%1$cft_source:%1$cmov rdi, source%1$cmov rsi, tmp_source%1$cmov rdx, filename%1$cmov rax, 0%1$ccall sprintf%1$cret%1$c%1$cft_filename:%1$cmov rdi, filename%1$cmov rsi, tmp_filename%1$cmov rdx, [rsp + 8]%1$cdec rdx%1$cmov [rsp + 8], rdx%1$cmov rax, 0%1$ccall sprintf%1$cret%1$c%1$cft_error_quit:%1$cmov rdi, 1%1$ccall exit%1$c%1$cquit:%1$cmov rdi, 0%1$ccall exit%1$c%1$cmain:%1$cmov rax, [i]%1$ccmp rax, 0%1$cjle quit%1$c%%ifdef FIRST%1$cinc rax%1$c%%endif%1$cpush rax%1$ccall ft_filename%1$ccall ft_source%1$ccall ft_file%1$cpop rax%1$ccall ft_compile_and_execute%1$cmov rbx, 0%1$cmov rax, 0%1$cret"

extern fopen, fprintf, fclose, exit, system, sprintf

section .data
filemode: db "w",0
s: db STRING,0
tmp_compile: db "nasm -f elf64 %1$s.s && clang -Wall -Werror -Wextra -no-pie %1$s.o -o %1$s && rm -f %1$s.o",0
tmp_execute: db "./%1$s",0
tmp_filename: db "Sully_%1$d",0
tmp_source: db "%1$s.s",0
i: db 5

section .bss
compile: resb 1000
execute: resb 1000
filename: resb 100
source: resb 1000

section .text
global main

ft_compile_and_execute:
mov rdi, compile
mov rsi, tmp_compile
mov rdx, filename
mov rax, 0
call sprintf
mov rdi, compile
mov rax, 0
call system
mov rdi, execute
mov rsi, tmp_execute
mov rdx, filename
mov rax, 0
call sprintf
mov rdi, execute
mov rax, 0
call system
ret

ft_file:
mov rdi, source
mov rsi, filemode
call fopen
mov rbx, rax
cmp rbx, 0
je ft_error_quit
mov rdi, rbx
mov rsi, s
mov rdx, 10
mov rcx, 34
mov r8, s
mov r9, [rsp + 8]
mov rax, 0
call fprintf
mov rdi, rbx
call fclose
ret

ft_source:
mov rdi, source
mov rsi, tmp_source
mov rdx, filename
mov rax, 0
call sprintf
ret

ft_filename:
mov rdi, filename
mov rsi, tmp_filename
mov rdx, [rsp + 8]
dec rdx
mov [rsp + 8], rdx
mov rax, 0
call sprintf
ret

ft_error_quit:
mov rdi, 1
call exit

quit:
mov rdi, 0
call exit

main:
mov rax, [i]
cmp rax, 0
jle quit
%ifdef FIRST
inc rax
%endif
push rax
call ft_filename
call ft_source
call ft_file
pop rax
call ft_compile_and_execute
mov rbx, 0
mov rax, 0
ret