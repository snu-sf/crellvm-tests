	.text
	.file	"path-concat.bc"
	.globl	path_concat
	.align	16, 0x90
	.type	path_concat,@function
path_concat:                            # @path_concat
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	strdup
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then.2
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_3:                                # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_4:                                # %if.end.3
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_6:                                # %if.end.10
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB0_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB0_9
# BB#8:                                 # %if.then.16
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_13
.LBB0_9:                                # %if.else
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB0_12
# BB#10:                                # %land.lhs.true.21
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB0_12
# BB#11:                                # %if.then.25
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$47, (%rax)
.LBB0_12:                               # %if.end.27
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.28
	cmpq	$0, -32(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.30
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_15:                               # %if.end.31
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	path_concat, .Lfunc_end0-path_concat
	.cfi_endproc

	.globl	xpath_concat
	.align	16, 0x90
	.type	xpath_concat,@function
xpath_concat:                           # @xpath_concat
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	path_concat
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB1_2:                                # %if.end
	callq	xalloc_die
.Lfunc_end1:
	.size	xpath_concat, .Lfunc_end1-xpath_concat
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
