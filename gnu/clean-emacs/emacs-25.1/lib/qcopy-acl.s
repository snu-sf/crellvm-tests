	.text
	.file	"qcopy-acl.bc"
	.globl	qcopy_acl
	.align	16, 0x90
	.type	qcopy_acl,@function
qcopy_acl:                              # @qcopy_acl
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
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rcx
	callq	get_permissions
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$-2, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	leaq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	set_permissions
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	qcopy_acl, .Lfunc_end0-qcopy_acl
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
