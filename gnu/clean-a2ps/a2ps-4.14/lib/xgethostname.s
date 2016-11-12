	.text
	.file	"xgethostname.bc"
	.globl	xgethostname
	.align	16, 0x90
	.type	xgethostname,@function
xgethostname:                           # @xgethostname
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
	movq	$34, -16(%rbp)
	movq	-16(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -8(%rbp)
.LBB0_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	gethostname
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_10
.LBB0_4:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB0_8
# BB#5:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	__errno_location
	cmpl	$36, (%rax)
	je	.LBB0_8
# BB#6:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB0_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	__errno_location
	movl	$1, %edi
	movabsq	$.L.str, %rdx
	movl	(%rax), %esi
	movb	$0, %al
	callq	error
.LBB0_8:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.21
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_10:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xgethostname, .Lfunc_end0-xgethostname
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gethostname"
	.size	.L.str, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
