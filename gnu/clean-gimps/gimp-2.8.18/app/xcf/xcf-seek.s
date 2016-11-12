	.text
	.file	"xcf-seek.bc"
	.globl	xcf_seek_pos
	.align	16, 0x90
	.type	xcf_seek_pos,@function
xcf_seek_pos:                           # @xcf_seek_pos
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	cmpl	-20(%rbp), %esi
	je	.LBB0_4
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, %esi
	callq	fseek
	cmpl	$-1, %eax
	jne	.LBB0_3
# BB#2:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gettext
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %if.end.12
	movl	$1, -4(%rbp)
.LBB0_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_seek_pos, .Lfunc_end0-xcf_seek_pos
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not seek in XCF file: %s"
	.size	.L.str, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
