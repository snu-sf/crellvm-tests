	.text
	.file	"xgetcwd.bc"
	.globl	xgetcwd
	.align	16, 0x90
	.type	xgetcwd,@function
xgetcwd:                                # @xgetcwd
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
	callq	__errno_location
	movl	$0, (%rax)
	movl	$4096, -28(%rbp)        # imm = 0x1000
	movl	-28(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %edi
	movb	$0, %al
	callq	xmalloc
	movq	%rax, -16(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	callq	getcwd
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jne	.LBB0_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	sete	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB0_3:                                # %land.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movb	$0, %al
	callq	xrealloc
	movq	%rax, -16(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	jmp	.LBB0_1
.LBB0_5:                                # %while.end
	cmpq	$0, -24(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	free
	movl	-32(%rbp), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xgetcwd, .Lfunc_end0-xgetcwd
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
