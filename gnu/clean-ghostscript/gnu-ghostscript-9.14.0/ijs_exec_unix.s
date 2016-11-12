	.text
	.file	"ijs_exec_unix.bc"
	.globl	ijs_exec_server
	.align	16, 0x90
	.type	ijs_exec_server,@function
ijs_exec_server:                        # @ijs_exec_server
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	leaq	80(%rsp), %rdi
	callq	pipe
	movl	$-1, %ebp
	testl	%eax, %eax
	js	.LBB0_8
# BB#1:                                 # %if.end
	leaq	72(%rsp), %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB0_2
# BB#3:                                 # %if.end.8
	callq	fork
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_4
# BB#5:                                 # %if.end.20
	jne	.LBB0_7
# BB#6:                                 # %if.then.22
	movl	84(%rsp), %edi
	callq	close
	movl	72(%rsp), %edi
	callq	close
	movl	80(%rsp), %edi
	xorl	%esi, %esi
	callq	dup2
	movl	76(%rsp), %edi
	movl	$1, %esi
	callq	dup2
	movl	$.L.str.1, %eax
	movd	%rax, %xmm0
	movl	$.L.str, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, (%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	leaq	(%rsp), %rsi
	movl	$.L.str, %edi
	callq	execvp
	testl	%eax, %eax
	js	.LBB0_9
.LBB0_7:                                # %if.end.47
	movl	$13, %edi
	movl	$1, %esi
	callq	signal
	movl	80(%rsp), %edi
	callq	close
	movl	76(%rsp), %edi
	callq	close
	movl	84(%rsp), %eax
	movl	%eax, (%r12)
	movl	72(%rsp), %eax
	movl	%eax, (%r15)
	movl	%r13d, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB0_8
.LBB0_2:                                # %if.then.4
	movl	80(%rsp), %edi
	callq	close
	movl	84(%rsp), %edi
	callq	close
	jmp	.LBB0_8
.LBB0_4:                                # %if.then.11
	movl	80(%rsp), %edi
	callq	close
	movl	84(%rsp), %edi
	callq	close
	movl	72(%rsp), %edi
	callq	close
	movl	76(%rsp), %edi
	callq	close
.LBB0_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_9:                                # %if.then.45
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	ijs_exec_server, .Lfunc_end0-ijs_exec_server
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sh"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-c"
	.size	.L.str.1, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
