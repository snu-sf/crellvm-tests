	.text
	.file	"zfilter2.bc"
	.globl	filter_write_predictor
	.align	16, 0x90
	.type	filter_write_predictor,@function
filter_write_predictor:                 # @filter_write_predictor
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
	subq	$1096, %rsp             # imm = 0x448
.Ltmp6:
	.cfi_def_cfa_offset 1152
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
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	624(%r13), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_18
# BB#1:                                 # %if.then
	leaq	1092(%rsp), %r9
	movl	$.L.str, %esi
	xorl	%edx, %edx
	movl	$15, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_17
# BB#2:                                 # %if.end
	movl	$-15, %ebp
	movl	1092(%rsp), %eax
	cmpq	$15, %rax
	ja	.LBB0_17
# BB#3:                                 # %if.end
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_6:                                # %sw.bb.7
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	zpp_setup
.LBB0_7:                                # %sw.epilog
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_17
# BB#8:                                 # %if.end.13
	cmpl	$1, 1092(%rsp)
	je	.LBB0_9
# BB#10:                                # %if.end.18
	movups	-16(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	filter_write
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_17
# BB#11:                                # %if.end.24
	movq	624(%r13), %rbx
	cmpl	$2, 1092(%rsp)
	jne	.LBB0_13
# BB#12:                                # %cond.true
	leaq	712(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PDiffE_template, %edx
	jmp	.LBB0_14
.LBB0_18:                               # %if.end.13.thread
	movl	$1, 1092(%rsp)
.LBB0_9:                                # %if.then.16
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	filter_write
	movl	%eax, %ebp
.LBB0_17:                               # %cleanup.42
	movl	%ebp, %eax
	addq	$1096, %rsp             # imm = 0x448
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:                                # %sw.bb
	movl	$1, 1092(%rsp)
	jmp	.LBB0_9
.LBB0_5:                                # %sw.bb.5
	leaq	712(%rsp), %rsi
	movq	%rbx, %rdi
	callq	zpd_setup
	jmp	.LBB0_7
.LBB0_13:                               # %cond.false
	leaq	40(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PNGPE_template, %edx
.LBB0_14:                               # %cond.end
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	filter_write
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_15
# BB#16:                                # %if.end.39
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	filter_mark_strm_temp
	jmp	.LBB0_17
.LBB0_15:                               # %if.then.34
	leaq	16(%rbx), %rax
	movq	%rax, 624(%r13)
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movaps	(%rsp), %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.LBB0_17
.Lfunc_end0:
	.size	filter_write_predictor, .Lfunc_end0-filter_write_predictor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_9
	.quad	.LBB0_5
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_6
	.quad	.LBB0_6
	.quad	.LBB0_6
	.quad	.LBB0_6
	.quad	.LBB0_6
	.quad	.LBB0_6

	.text
	.align	16, 0x90
	.type	zCFE,@function
zCFE:                                   # @zCFE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
	subq	$224, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 240
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB1_1
# BB#2:                                 # %do.body
	movq	8(%rdi), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB1_5
# BB#3:                                 # %do.end
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rsi
	callq	zcf_setup
	testl	%eax, %eax
	js	.LBB1_5
# BB#4:                                 # %if.end.11
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_CFE_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_write
	jmp	.LBB1_5
.LBB1_1:                                # %if.then
	callq	check_type_failed
.LBB1_5:                                # %cleanup
	addq	$224, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zCFE, .Lfunc_end1-zCFE
	.cfi_endproc

	.align	16, 0x90
	.type	zLZWE,@function
zLZWE:                                  # @zLZWE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 192
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	zlz_setup
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %if.end
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_LZWE_template, %edx
	movq	%rbx, %rdi
	callq	filter_write_predictor
.LBB2_2:                                # %cleanup
	addq	$176, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zLZWE, .Lfunc_end2-zLZWE
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Predictor"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filterdict"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2CCITTFaxEncode"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1LZWEncode"
	.size	.L.str.3, 11

	.type	zfilter2_op_defs,@object # @zfilter2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfilter2_op_defs
	.align	16
zfilter2_op_defs:
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.2
	.quad	zCFE
	.quad	.L.str.3
	.quad	zLZWE
	.zero	16
	.size	zfilter2_op_defs, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
