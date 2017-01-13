	.text
	.file	"count-trailing-zeros.bc"
	.globl	count_trailing_zeros
	.align	16, 0x90
	.type	count_trailing_zeros,@function
count_trailing_zeros:                   # @count_trailing_zeros
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
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movl	-4(%rbp), %eax
	bsfl	%eax, %eax
	movslq	%eax, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	count_trailing_zeros, .Lfunc_end0-count_trailing_zeros
	.cfi_endproc

	.globl	count_trailing_zeros_l
	.align	16, 0x90
	.type	count_trailing_zeros_l,@function
count_trailing_zeros_l:                 # @count_trailing_zeros_l
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	bsfq	%rax, %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movl	$64, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	count_trailing_zeros_l, .Lfunc_end1-count_trailing_zeros_l
	.cfi_endproc

	.globl	count_trailing_zeros_ll
	.align	16, 0x90
	.type	count_trailing_zeros_ll,@function
count_trailing_zeros_ll:                # @count_trailing_zeros_ll
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	bsfq	%rax, %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	$64, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	count_trailing_zeros_ll, .Lfunc_end2-count_trailing_zeros_ll
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
