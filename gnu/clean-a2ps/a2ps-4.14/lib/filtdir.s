	.text
	.file	"filtdir.bc"
	.globl	filterdir
	.align	16, 0x90
	.type	filterdir,@function
filterdir:                              # @filterdir
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	opendir
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_14
.LBB0_2:                                # %if.end
	jmp	.LBB0_3
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	readdir
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB0_12
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	19(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB0_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	20(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_11
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	20(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB0_8
# BB#7:                                 # %lor.lhs.false.15
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movsbl	21(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_11
.LBB0_8:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_10
# BB#9:                                 # %lor.lhs.false.22
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rcx
	addq	$19, %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	callq	*%rax
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_10:                               # %if.then.26
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rcx
	addq	$19, %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	callq	*%rax
.LBB0_11:                               # %if.end.29
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_12:                               # %while.end
	movq	-48(%rbp), %rdi
	callq	closedir
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.32
	callq	__errno_location
	movabsq	$.L.str, %rdi
	movl	(%rax), %esi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$1, %edi
	movq	-8(%rbp), %rcx
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB0_14:                               # %if.end.35
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	filterdir, .Lfunc_end0-filterdir
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot close directory `%s'"
	.size	.L.str, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
