	.text
	.file	"save-cwd.bc"
	.globl	save_cwd
	.align	16, 0x90
	.type	save_cwd,@function
save_cwd:                               # @save_cwd
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
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	movl	$524288, %esi           # imm = 0x80000
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	open
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 8(%rdi)
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	save_cwd, .Lfunc_end0-save_cwd
	.cfi_endproc

	.globl	restore_cwd
	.align	16, 0x90
	.type	restore_cwd,@function
restore_cwd:                            # @restore_cwd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	fchdir
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB1_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	restore_cwd, .Lfunc_end1-restore_cwd
	.cfi_endproc

	.globl	free_cwd
	.align	16, 0x90
	.type	free_cwd,@function
free_cwd:                               # @free_cwd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	close
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	free_cwd, .Lfunc_end2-free_cwd
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
