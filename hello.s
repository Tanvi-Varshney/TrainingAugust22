	.file	"helloworld.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Hello World!\nTanvi Varshney\n124/2,Govind dev, khurja"
.LC2:
	.string	"%f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	1374389535
	.long	1074339512
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
