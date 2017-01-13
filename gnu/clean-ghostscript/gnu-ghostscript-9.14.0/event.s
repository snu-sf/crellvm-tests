	.text
	.file	"event.bc"
	.globl	opj_event_msg
	.align	16, 0x90
	.type	opj_event_msg,@function
opj_event_msg:                          # @opj_event_msg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$720, %rsp              # imm = 0x2D0
.Ltmp5:
	.cfi_def_cfa_offset 768
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r13, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	testb	%al, %al
	je	.LBB0_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB0_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	.LBB0_12
# BB#3:                                 # %if.then
	cmpl	$4, %esi
	je	.LBB0_8
# BB#4:                                 # %if.then
	cmpl	$2, %esi
	jne	.LBB0_5
# BB#7:                                 # %sw.bb.1
	leaq	32(%rdi), %rax
	addq	$8, %rdi
	jmp	.LBB0_9
.LBB0_8:                                # %sw.bb.2
	leaq	40(%rdi), %rax
	addq	$16, %rdi
	jmp	.LBB0_9
.LBB0_5:                                # %if.then
	cmpl	$1, %esi
	jne	.LBB0_12
# BB#6:                                 # %sw.bb
	leaq	24(%rdi), %rax
.LBB0_9:                                # %sw.epilog
	movq	(%rax), %r13
	testq	%r13, %r13
	je	.LBB0_12
# BB#10:                                # %if.end.5
	movl	$1, %ebx
	testq	%r14, %r14
	je	.LBB0_12
# BB#11:                                # %if.then.8
	movq	(%rdi), %r15
	leaq	176(%rsp), %r12
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	movq	%r12, %rdi
	callq	memset
	leaq	(%rsp), %rax
	movq	%rax, 704(%rsp)
	leaq	768(%rsp), %rax
	movq	%rax, 696(%rsp)
	movl	$48, 692(%rsp)
	movl	$24, 688(%rsp)
	leaq	688(%rsp), %rcx
	movl	$512, %esi              # imm = 0x200
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	vsnprintf
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*%r13
.LBB0_12:                               # %cleanup
	movl	%ebx, %eax
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	opj_event_msg, .Lfunc_end0-opj_event_msg
	.cfi_endproc

	.globl	opj_set_default_event_handler
	.align	16, 0x90
	.type	opj_set_default_event_handler,@function
opj_set_default_event_handler:          # @opj_set_default_event_handler
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	movq	$opj_default_callback, 40(%rdi)
	movl	$opj_default_callback, %eax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, 24(%rdi)
	retq
.Lfunc_end1:
	.size	opj_set_default_event_handler, .Lfunc_end1-opj_set_default_event_handler
	.cfi_endproc

	.align	16, 0x90
	.type	opj_default_callback,@function
opj_default_callback:                   # @opj_default_callback
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end2:
	.size	opj_default_callback, .Lfunc_end2-opj_default_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
