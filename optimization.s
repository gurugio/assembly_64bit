	.file	"optimization.c"
	.text
	.globl	delay
	.type	delay, @function
delay:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L2
.L3:
	subq	$1, -8(%rbp)
.L2:
	cmpq	$0, -8(%rbp)
	jne	.L3
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	delay, .-delay
	.globl	copy_struct
	.type	copy_struct, @function
copy_struct:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$1, -144(%rbp)
	movq	$2, -136(%rbp)
	movq	$3, -128(%rbp)
	movq	$4, -120(%rbp)
	movq	$5, -112(%rbp)
	movq	$6, -104(%rbp)
	movq	$7, -96(%rbp)
	movq	$8, -88(%rbp)
	movq	$1, -80(%rbp)
	movq	$2, -72(%rbp)
	movq	$3, -64(%rbp)
	movq	$4, -56(%rbp)
	movq	$5, -48(%rbp)
	movq	$6, -40(%rbp)
	movq	$7, -32(%rbp)
	movq	$8, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-128(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-112(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-104(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-160(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	copy_struct, .-copy_struct
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1311768465173141112, %rdi
	call	delay
	leaq	-80(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_struct
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
