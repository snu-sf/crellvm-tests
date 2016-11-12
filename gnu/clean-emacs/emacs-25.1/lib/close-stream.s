	.text
	.file	"close-stream.bc"
	.globl	close_stream
	.align	16, 0x90
	.type	close_stream,@function
close_stream:                           # @close_stream
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__fpending
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -18(%rbp)
	movq	-16(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -19(%rbp)
	testb	$1, -18(%rbp)
	jne	.LBB0_4
# BB#1:                                 # %lor.lhs.false
	testb	$1, -19(%rbp)
	je	.LBB0_7
# BB#2:                                 # %land.lhs.true
	testb	$1, -17(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %lor.lhs.false.9
	callq	__errno_location
	cmpl	$9, (%rax)
	je	.LBB0_7
.LBB0_4:                                # %if.then
	testb	$1, -19(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.13
	callq	__errno_location
	movl	$0, (%rax)
.LBB0_6:                                # %if.end
	movl	$-1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.end.15
	movl	$0, -4(%rbp)
.LBB0_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	close_stream, .Lfunc_end0-close_stream
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
