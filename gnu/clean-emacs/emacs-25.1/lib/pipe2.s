	.text
	.file	"pipe2.bc"
	.globl	rpl_pipe2
	.align	16, 0x90
	.type	rpl_pipe2,@function
rpl_pipe2:                              # @rpl_pipe2
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
	movq	-16(%rbp), %rdi
	movl	(%rdi), %esi
	movl	%esi, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	4(%rdi), %esi
	movl	%esi, -24(%rbp)
	cmpl	$0, rpl_pipe2.have_pipe2_really
	jl	.LBB0_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	pipe2
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB0_3
# BB#2:                                 # %land.lhs.true
	callq	__errno_location
	cmpl	$38, (%rax)
	je	.LBB0_4
.LBB0_3:                                # %if.then.8
	movl	$1, rpl_pipe2.have_pipe2_really
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_25
.LBB0_4:                                # %if.end
	movl	$-1, rpl_pipe2.have_pipe2_really
.LBB0_5:                                # %if.end.9
	movl	-20(%rbp), %eax
	andl	$-526337, %eax          # imm = 0xFFFFFFFFFFF7F7FF
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then.11
	callq	__errno_location
	movl	$22, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB0_25
.LBB0_7:                                # %if.end.13
	movq	-16(%rbp), %rdi
	callq	pipe
	cmpl	$0, %eax
	jge	.LBB0_9
# BB#8:                                 # %if.then.16
	movl	$-1, -4(%rbp)
	jmp	.LBB0_25
.LBB0_9:                                # %if.end.17
	movl	-20(%rbp), %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB0_16
# BB#10:                                # %if.then.19
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jl	.LBB0_14
# BB#11:                                # %lor.lhs.false
	movl	$4, %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movl	-36(%rbp), %ecx
	orl	$2048, %ecx             # imm = 0x800
	movl	%ecx, %edx
	movb	$0, %al
	callq	rpl_fcntl
	cmpl	$-1, %eax
	je	.LBB0_14
# BB#12:                                # %lor.lhs.false.27
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jl	.LBB0_14
# BB#13:                                # %lor.lhs.false.31
	movl	$4, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	-36(%rbp), %ecx
	orl	$2048, %ecx             # imm = 0x800
	movl	%ecx, %edx
	movb	$0, %al
	callq	rpl_fcntl
	cmpl	$-1, %eax
	jne	.LBB0_15
.LBB0_14:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_15:                               # %if.end.37
	jmp	.LBB0_16
.LBB0_16:                               # %if.end.38
	movl	-20(%rbp), %eax
	andl	$524288, %eax           # imm = 0x80000
	cmpl	$0, %eax
	je	.LBB0_23
# BB#17:                                # %if.then.41
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -40(%rbp)
	cmpl	$0, %eax
	jl	.LBB0_21
# BB#18:                                # %lor.lhs.false.47
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movl	-40(%rbp), %ecx
	orl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	rpl_fcntl
	cmpl	$-1, %eax
	je	.LBB0_21
# BB#19:                                # %lor.lhs.false.52
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -40(%rbp)
	cmpl	$0, %eax
	jl	.LBB0_21
# BB#20:                                # %lor.lhs.false.56
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	-40(%rbp), %ecx
	orl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	rpl_fcntl
	cmpl	$-1, %eax
	jne	.LBB0_22
.LBB0_21:                               # %if.then.61
	jmp	.LBB0_24
.LBB0_22:                               # %if.end.62
	jmp	.LBB0_23
.LBB0_23:                               # %if.end.63
	movl	$0, -4(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %fail
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	close
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	close
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, (%rdx)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	movl	-44(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movl	$-1, -4(%rbp)
.LBB0_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rpl_pipe2, .Lfunc_end0-rpl_pipe2
	.cfi_endproc

	.type	rpl_pipe2.have_pipe2_really,@object # @rpl_pipe2.have_pipe2_really
	.local	rpl_pipe2.have_pipe2_really
	.comm	rpl_pipe2.have_pipe2_really,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
