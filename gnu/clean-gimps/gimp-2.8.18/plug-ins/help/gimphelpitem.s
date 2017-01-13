	.text
	.file	"gimphelpitem.bc"
	.globl	gimp_help_item_new
	.align	16, 0x90
	.type	gimp_help_item_new,@function
gimp_help_item_new:                     # @gimp_help_item_new
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
	subq	$48, %rsp
	movl	$48, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_item_new, .Lfunc_end0-gimp_help_item_new
	.cfi_endproc

	.globl	gimp_help_item_free
	.align	16, 0x90
	.type	gimp_help_item_free,@function
gimp_help_item_free:                    # @gimp_help_item_free
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	g_list_free
# BB#1:                                 # %do.body
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_item_free, .Lfunc_end1-gimp_help_item_free
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
