	.text
	.file	"closeout.bc"
	.globl	close_stdout_status
	.align	16, 0x90
	.type	close_stdout_status,@function
close_stdout_status:                    # @close_stdout_status
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
	movl	%edi, -4(%rbp)
	movq	stdout, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	-8(%rbp), %edi          # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	movq	stdout, %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	movl	-4(%rbp), %edi
	movl	%edi, -12(%rbp)         # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str, %rdi
	movl	(%rax), %esi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	callq	gettext
	movl	-12(%rbp), %edi         # 4-byte Reload
	movl	-16(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB0_4:                                # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	close_stdout_status, .Lfunc_end0-close_stdout_status
	.cfi_endproc

	.globl	close_stdout
	.align	16, 0x90
	.type	close_stdout,@function
close_stdout:                           # @close_stdout
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
	movl	$1, %edi
	callq	close_stdout_status
	popq	%rbp
	retq
.Lfunc_end1:
	.size	close_stdout, .Lfunc_end1-close_stdout
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"write error"
	.size	.L.str, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
