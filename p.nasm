BITS 64
section .data

message:
db      'hello, world!', 0

section .text

global _start
_start:
    mov     rax, 0x1234567812345678
	mov     rax, qword 4
	mov     rdi, 1
	mov     rsi, message
	mov     rdx, 13
	syscall

	mov     rax, 1
	xor     rdi, rdi
	syscall
	ret
