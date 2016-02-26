	.file	"access_once.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	try_access
	.type	try_access, @function
try_access:
.LFB38:
	.cfi_startproc
	movl	4(%rdi), %edx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	(%rdi), %eax
	cmpl	$1, %eax
	jne	.L2
	cmpl	$1, %edx
	jne	.L2
	rep ret
	.cfi_endproc
.LFE38:
	.size	try_access, .-try_access
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	try_read
	.type	try_read, @function
try_read:
.LFB39:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	4(%rdi), %edx
	.p2align 4,,10
	.p2align 3
.L8:
	cmpl	$1, %eax
	jne	.L8
.L12:
	cmpl	$1, %edx
	jne	.L12
	rep ret
	.cfi_endproc
.LFE39:
	.size	try_read, .-try_read
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	try_reg
	.type	try_reg, @function
try_reg:
.LFB40:
	.cfi_startproc
	.p2align 4,,10
	.p2align 3
.L16:
	cmpl	$1, (%rdi)
	jne	.L16
	cmpl	$1, 4(%rdi)
	jne	.L16
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE40:
	.size	try_reg, .-try_reg
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	call	random
	movq	%rax, %rbx
	call	random
	movabsq	$3074457345618258603, %rcx
	movq	%rax, %rsi
	imulq	%rcx
	movq	%rsi, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	addq	%rax, %rax
	subq	%rax, %rsi
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rbx, %rax
	leal	(%rsi,%rsi,2), %esi
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	addq	%rax, %rax
	subq	%rax, %rbx
	leal	(%rbx,%rsi,2), %eax
	movl	%eax, (%rsp)
	.p2align 4,,10
	.p2align 3
.L19:
	movl	(%rsp), %eax
	jmp	.L19
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.comm	count,400,32
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
