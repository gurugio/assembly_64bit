; To create executable:
; nasm -f elf64 call.asm
; gcc -o call call.o main_call.c

segment .data

	outmsg db "Hello, %s:%d!", 0xa, 0
	nation db "Germany", 0
	year   dd 2016

segment .bss

segment .text
	global  asm_main ; other modules can call asm_main
	extern printf

asm_main:
	push rdi
	push rsi
	push rdx

	mov rdi, outmsg
	mov rsi, nation
	mov edx, dword [year]
	call printf

	pop rdx
	pop rsi
	pop rdi
	ret	
