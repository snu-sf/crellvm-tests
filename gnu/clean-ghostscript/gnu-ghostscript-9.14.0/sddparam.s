	.text
	.file	"sddparam.bc"
	.globl	s_DCTD_get_params
	.align	16, 0x90
	.type	s_DCTD_get_params,@function
s_DCTD_get_params:                      # @s_DCTD_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$192, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 224
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	testl	%edx, %edx
	jne	.LBB0_2
# BB#1:                                 # %if.else
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*s_DCTE_template+40(%rip)
.LBB0_2:                                # %if.end
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	s_DCT_get_params
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	s_DCTD_get_params, .Lfunc_end0-s_DCTD_get_params
	.cfi_endproc

	.globl	s_DCTD_put_params
	.align	16, 0x90
	.type	s_DCTD_put_params,@function
s_DCTD_put_params:                      # @s_DCTD_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	s_DCT_put_params
	testl	%eax, %eax
	js	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	s_DCT_put_huffman_tables
	testl	%eax, %eax
	js	.LBB1_2
# BB#3:                                 # %lor.lhs.false.3
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	s_DCT_put_quantization_tables # TAILCALL
.LBB1_2:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	s_DCTD_put_params, .Lfunc_end1-s_DCTD_put_params
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
