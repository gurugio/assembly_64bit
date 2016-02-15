; To create executable:
; nasm -f elf64 first.asm
; gcc -o first first.o main.c
;

segment .data

outmsg db    "Hello, world!", 0

segment .bss

segment .text
        global  asm_main		; other modules can call asm_main
	extern printf

asm_main:
        push rdi

	mov rdi, outmsg
	call printf
		
	pop rdi
	leave
	ret

		
