;Colleen ASM

extern printf
section .data
	s: db ";Colleen ASM%1$c%1$cextern printf%1$csection .data%1$c%2$cs: db %3$c%4$s%3$c,0%1$c%1$csection .text%1$cglobal main%1$c%1$cprint:%1$c%2$cmov rdi, s%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$cmov r8, s%1$c%2$cmov rax, 0%1$c%2$ccall printf%1$c%2$cret%1$c%1$cmain:%1$c;my Main function%1$c%2$ccall print%1$c%2$cmov rbx, 0%1$c%2$cmov rax, 1%1$c%2$cret",0

section .text
global main

print:
	mov rdi, s
	mov rsi, 10
	mov rdx, 9
	mov rcx, 34
	mov r8, s
	mov rax, 0
	call printf
	ret

main:
;my Main function
	call print
	mov rbx, 0
	mov rax, 1
	ret