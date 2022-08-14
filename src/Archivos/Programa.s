	.file	"Programa.cpp"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Ingrese un numero por favor : \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC2:
	.ascii "Ingrese otro numero por favor: \0"
.LC3:
	.ascii "\12SENTENCIA IF-ELSE : \0"
	.align 8
.LC4:
	.ascii "Numero 1 (%d) es mayor que Numero 2 (%d) \12\12\0"
	.align 8
.LC5:
	.ascii "Numero 2 (%d) es mayor que Numero 1 (%d) \12\12\0"
.LC6:
	.ascii "pause\0"
.LC7:
	.ascii "cls\0"
	.align 8
.LC8:
	.ascii "\12Ingrese otro numero para probar el \"FOR\" por favor: \0"
.LC9:
	.ascii "\12SENTENCIA FOR : \0"
.LC10:
	.ascii "\12  Iteracion %d, numero: %d \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB18:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$10, -12(%rbp)
	movl	$5, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	leaq	.LC3(%rip), %rcx
	call	puts
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L3
.L2:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	printf
.L3:
	leaq	.LC6(%rip), %rcx
	call	system
	leaq	.LC7(%rip), %rcx
	call	system
	leaq	.LC8(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	$1, -4(%rbp)
	leaq	.LC9(%rip), %rcx
	call	puts
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L4
.L5:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC10(%rip), %rcx
	call	printf
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L4:
	movl	-12(%rbp), %eax
	addl	$10, %eax
	cmpl	-8(%rbp), %eax
	jg	.L5
	movl	$10, %ecx
	call	putchar
	leaq	.LC6(%rip), %rcx
	call	system
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 4.9.2"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
