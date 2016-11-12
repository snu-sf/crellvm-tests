	.text
	.file	"get-permissions.bc"
	.globl	get_permissions
	.align	16, 0x90
	.type	get_permissions,@function
get_permissions:                        # @get_permissions
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$4, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	memset
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax         # 4-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_permissions, .Lfunc_end0-get_permissions
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
