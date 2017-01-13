	.text
	.file	"gdevmr1.bc"
	.globl	mem_mono_strip_copy_rop
	.align	16, 0x90
	.type	mem_mono_strip_copy_rop,@function
mem_mono_strip_copy_rop:                # @mem_mono_strip_copy_rop
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
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	208(%rsp), %edi
	callq	gs_transparent_rop
	movl	%eax, %r14d
	movq	2584(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movw	$0, 86(%rsp)
	movl	$0, 82(%rsp)
	leaq	82(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	gdev_mem_mono_set_inverted
	movq	2584(%rbx), %rax
.LBB0_2:                                # %if.end
	movl	200(%rsp), %r10d
	movl	192(%rsp), %r9d
	movl	184(%rsp), %r8d
	movl	176(%rsp), %edi
	movl	168(%rsp), %esi
	movl	160(%rsp), %edx
	movq	152(%rsp), %rcx
	movq	144(%rsp), %r11
	cmpb	$0, (%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then.11
	movl	%r14d, %eax
	movzbl	byte_reverse_bits(%rax), %r14d
	xorl	$255, %r14d
.LBB0_4:                                # %if.end.14
	movl	%r14d, 64(%rsp)
	movl	%r10d, 56(%rsp)
	movl	%r9d, 48(%rsp)
	movl	%r8d, 40(%rsp)
	movl	%edi, 32(%rsp)
	movl	%esi, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r11, (%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	mem_mono_strip_copy_rop_dev
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mem_mono_strip_copy_rop, .Lfunc_end0-mem_mono_strip_copy_rop
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
