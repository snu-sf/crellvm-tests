	.text
	.file	"jcomapi.bc"
	.globl	jpeg_abort
	.align	16, 0x90
	.type	jpeg_abort,@function
jpeg_abort:                             # @jpeg_abort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_4
# BB#1:                                 # %for.cond.preheader
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*72(%rax)
	cmpl	$0, 32(%rbx)
	je	.LBB0_3
# BB#2:                                 # %if.then.3
	movl	$200, 36(%rbx)
	movq	$0, 408(%rbx)
	popq	%rbx
	retq
.LBB0_3:                                # %if.else
	movl	$100, 36(%rbx)
.LBB0_4:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jpeg_abort, .Lfunc_end0-jpeg_abort
	.cfi_endproc

	.globl	jpeg_destroy
	.align	16, 0x90
	.type	jpeg_destroy,@function
jpeg_destroy:                           # @jpeg_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*80(%rax)
.LBB1_2:                                # %if.end
	movq	$0, 8(%rbx)
	movl	$0, 36(%rbx)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	jpeg_destroy, .Lfunc_end1-jpeg_destroy
	.cfi_endproc

	.globl	jpeg_alloc_quant_table
	.align	16, 0x90
	.type	jpeg_alloc_quant_table,@function
jpeg_alloc_quant_table:                 # @jpeg_alloc_quant_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	xorl	%esi, %esi
	movl	$132, %edx
	callq	*(%rax)
	movl	$0, 128(%rax)
	popq	%rdx
	retq
.Lfunc_end2:
	.size	jpeg_alloc_quant_table, .Lfunc_end2-jpeg_alloc_quant_table
	.cfi_endproc

	.globl	jpeg_alloc_huff_table
	.align	16, 0x90
	.type	jpeg_alloc_huff_table,@function
jpeg_alloc_huff_table:                  # @jpeg_alloc_huff_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	xorl	%esi, %esi
	movl	$280, %edx              # imm = 0x118
	callq	*(%rax)
	movl	$0, 276(%rax)
	popq	%rdx
	retq
.Lfunc_end3:
	.size	jpeg_alloc_huff_table, .Lfunc_end3-jpeg_alloc_huff_table
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
