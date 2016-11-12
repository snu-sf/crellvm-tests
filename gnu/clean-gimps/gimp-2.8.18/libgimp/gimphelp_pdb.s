	.text
	.file	"gimphelp_pdb.bc"
	.globl	gimp_help
	.align	16, 0x90
	.type	gimp_help,@function
gimp_help:                              # @gimp_help
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r9
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help, .Lfunc_end0-gimp_help
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-help"
	.size	.L.str, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
