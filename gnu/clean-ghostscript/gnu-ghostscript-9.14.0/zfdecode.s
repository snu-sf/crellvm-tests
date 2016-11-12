	.text
	.file	"zfdecode.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1728                    # 0x6c0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.globl	zcf_setup
	.align	16, 0x90
	.type	zcf_setup,@function
zcf_setup:                              # @zcf_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 128
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %r8
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_2
# BB#1:                                 # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rbx)
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [1728,0,1,0]
	movups	%xmm1, 136(%rbx)
	movl	$0, 152(%rbx)
	movl	$0, 108(%rbx)
	movl	$1, 156(%rbx)
	movups	%xmm0, 168(%rbx)
	movb	$0, 28(%rbx)
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	s_CF_put_params
	movl	%eax, %ebp
	movq	8(%rsp), %rdi
	movq	72(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB0_2:                                # %cleanup
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zcf_setup, .Lfunc_end0-zcf_setup
	.cfi_endproc

	.globl	filter_read_predictor
	.align	16, 0x90
	.type	filter_read_predictor,@function
filter_read_predictor:                  # @filter_read_predictor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$1096, %rsp             # imm = 0x448
.Ltmp11:
	.cfi_def_cfa_offset 1152
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	624(%r13), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_18
# BB#1:                                 # %if.then
	leaq	1092(%rsp), %r9
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	movl	$15, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_17
# BB#2:                                 # %if.end
	movl	$-15, %ebp
	movl	1092(%rsp), %eax
	cmpq	$15, %rax
	ja	.LBB1_17
# BB#3:                                 # %if.end
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_6:                                # %sw.bb.7
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	zpp_setup
.LBB1_7:                                # %sw.epilog
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_17
# BB#8:                                 # %if.end.13
	cmpl	$1, 1092(%rsp)
	je	.LBB1_9
# BB#10:                                # %if.end.18
	movups	-16(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$1, %esi
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	filter_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_17
# BB#11:                                # %if.end.24
	movq	624(%r13), %rbx
	cmpl	$2, 1092(%rsp)
	jne	.LBB1_13
# BB#12:                                # %cond.true
	leaq	712(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PDiffD_template, %edx
	jmp	.LBB1_14
.LBB1_18:                               # %if.end.13.thread
	movl	$1, 1092(%rsp)
.LBB1_9:                                # %if.then.16
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	filter_read
	movl	%eax, %ebp
.LBB1_17:                               # %cleanup.42
	movl	%ebp, %eax
	addq	$1096, %rsp             # imm = 0x448
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_4:                                # %sw.bb
	movl	$1, 1092(%rsp)
	jmp	.LBB1_9
.LBB1_5:                                # %sw.bb.5
	leaq	712(%rsp), %rsi
	movq	%rbx, %rdi
	callq	zpd_setup
	jmp	.LBB1_7
.LBB1_13:                               # %cond.false
	leaq	40(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PNGPD_template, %edx
.LBB1_14:                               # %cond.end
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	filter_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_15
# BB#16:                                # %if.end.39
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	filter_mark_strm_temp
	jmp	.LBB1_17
.LBB1_15:                               # %if.then.34
	leaq	16(%rbx), %rax
	movq	%rax, 624(%r13)
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movaps	(%rsp), %xmm0
	movups	%xmm0, 16(%rbx)
	jmp	.LBB1_17
.Lfunc_end1:
	.size	filter_read_predictor, .Lfunc_end1-filter_read_predictor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_4
	.quad	.LBB1_9
	.quad	.LBB1_5
	.quad	.LBB1_17
	.quad	.LBB1_17
	.quad	.LBB1_17
	.quad	.LBB1_17
	.quad	.LBB1_17
	.quad	.LBB1_17
	.quad	.LBB1_17
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_6

	.text
	.globl	zpd_setup
	.align	16, 0x90
	.type	zpd_setup,@function
zpd_setup:                              # @zpd_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB2_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ecx
	testb	$32, (%rax)
	je	.LBB2_9
# BB#3:                                 # %do.end
	leaq	108(%r14), %r9
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movl	$60, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB2_7
# BB#4:                                 # %lor.lhs.false
	leaq	4(%rsp), %r9
	movl	$.L.str.7, %esi
	movl	$1, %edx
	movl	$16, %ecx
	movl	$8, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB2_7
# BB#5:                                 # %lor.lhs.false.13
	movl	4(%rsp), %ecx
	leal	-1(%rcx), %edx
	testl	%ecx, %edx
	jne	.LBB2_7
# BB#6:                                 # %lor.lhs.false.17
	leaq	116(%r14), %r9
	movl	$.L.str.8, %esi
	movl	$1, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB2_7
# BB#8:                                 # %if.end.24
	movl	4(%rsp), %eax
	movl	%eax, 112(%r14)
	xorl	%ecx, %ecx
	jmp	.LBB2_9
.LBB2_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ecx
	jmp	.LBB2_9
.LBB2_7:                                # %if.then.21
	testl	%eax, %eax
	movl	$-15, %ecx
	cmovsl	%eax, %ecx
.LBB2_9:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	zpd_setup, .Lfunc_end2-zpd_setup
	.cfi_endproc

	.globl	zpp_setup
	.align	16, 0x90
	.type	zpp_setup,@function
zpp_setup:                              # @zpp_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB3_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ecx
	testb	$32, (%rax)
	je	.LBB3_10
# BB#3:                                 # %do.end
	leaq	108(%r14), %r9
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movl	$256, %ecx              # imm = 0x100
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB3_8
# BB#4:                                 # %lor.lhs.false
	leaq	4(%rsp), %r9
	movl	$.L.str.7, %esi
	movl	$1, %edx
	movl	$16, %ecx
	movl	$8, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB3_8
# BB#5:                                 # %lor.lhs.false.13
	movl	4(%rsp), %ecx
	leal	-1(%rcx), %edx
	testl	%ecx, %edx
	jne	.LBB3_8
# BB#6:                                 # %lor.lhs.false.17
	leaq	116(%r14), %r9
	movl	$.L.str.8, %esi
	movl	$1, %edx
	movl	$-1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_uint_param
	testl	%eax, %eax
	js	.LBB3_8
# BB#7:                                 # %lor.lhs.false.21
	leaq	120(%r14), %r9
	movl	$.L.str.1, %esi
	movl	$10, %edx
	movl	$15, %ecx
	movl	$15, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB3_8
# BB#9:                                 # %if.end.28
	movl	4(%rsp), %eax
	movl	%eax, 112(%r14)
	xorl	%ecx, %ecx
	jmp	.LBB3_10
.LBB3_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ecx
	jmp	.LBB3_10
.LBB3_8:                                # %if.then.25
	testl	%eax, %eax
	movl	$-15, %ecx
	cmovsl	%eax, %ecx
.LBB3_10:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zpp_setup, .Lfunc_end3-zpp_setup
	.cfi_endproc

	.globl	zlz_setup
	.align	16, 0x90
	.type	zlz_setup,@function
zlz_setup:                              # @zlz_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -24
.Ltmp32:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	xorl	%ebx, %ebx
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB4_2
# BB#1:                                 # %do.body
	movq	8(%rdi), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	movq	%rdi, %rbx
	je	.LBB4_6
.LBB4_2:                                # %if.end.6
	leaq	120(%r14), %r9
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB4_6
# BB#3:                                 # %lor.lhs.false
	leaq	108(%r14), %r9
	movl	$.L.str.3, %esi
	movl	$2, %edx
	movl	$11, %ecx
	movl	$8, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB4_6
# BB#4:                                 # %lor.lhs.false.12
	leaq	112(%r14), %rcx
	movl	$.L.str.4, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB4_6
# BB#5:                                 # %lor.lhs.false.16
	addq	$116, %r14
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	dict_bool_param
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
.LBB4_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zlz_setup, .Lfunc_end4-zlz_setup
	.cfi_endproc

	.align	16, 0x90
	.type	zA85E,@function
zA85E:                                  # @zA85E
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_A85E_template, %esi
	jmp	filter_write_simple     # TAILCALL
.Lfunc_end5:
	.size	zA85E, .Lfunc_end5-zA85E
	.cfi_endproc

	.align	16, 0x90
	.type	zA85D,@function
zA85D:                                  # @zA85D
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 144
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB6_3
# BB#1:                                 # %do.body
	movq	8(%rdi), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB6_5
# BB#2:                                 # %do.end
	leaq	120(%rsp), %rcx
	movl	$.L.str.18, %esi
	xorl	%edx, %edx
	callq	dict_bool_param
	testl	%eax, %eax
	jns	.LBB6_4
	jmp	.LBB6_5
.LBB6_3:                                # %if.else
	movl	$0, 120(%rsp)
.LBB6_4:                                # %if.end.11
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_A85D_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_read
.LBB6_5:                                # %cleanup
	addq	$128, %rsp
	popq	%rbx
	retq
.Lfunc_end6:
	.size	zA85D, .Lfunc_end6-zA85D
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.long	1728                    # 0x6c0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	zCFD,@function
zCFD:                                   # @zCFD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 24
	subq	$344, %rsp              # imm = 0x158
.Ltmp38:
	.cfi_def_cfa_offset 368
.Ltmp39:
	.cfi_offset %rbx, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	xorl	%esi, %esi
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB7_2
# BB#1:                                 # %do.body
	movq	8(%rax), %rcx
	movl	$-7, %ebp
	testb	$32, (%rcx)
	movq	%rax, %rsi
	je	.LBB7_5
.LBB7_2:                                # %if.end.6
	movq	8(%rbx), %r8
	leaq	240(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_5
# BB#3:                                 # %zcf_setup.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rsp)
	movaps	.LCPI7_0(%rip), %xmm1   # xmm1 = [1728,0,1,0]
	movups	%xmm1, 136(%rsp)
	movl	$0, 152(%rsp)
	movl	$0, 108(%rsp)
	movl	$1, 156(%rsp)
	movups	%xmm0, 168(%rsp)
	movb	$0, 28(%rsp)
	leaq	240(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	s_CF_put_params
	movl	%eax, %ebp
	movq	248(%rsp), %rdi
	movq	312(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB7_5
# BB#4:                                 # %if.end.10
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_CFD_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_read
	movl	%eax, %ebp
.LBB7_5:                                # %cleanup
	movl	%ebp, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zCFD, .Lfunc_end7-zCFD
	.cfi_endproc

	.align	16, 0x90
	.type	zLZWD,@function
zLZWD:                                  # @zLZWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 208
.Ltmp44:
	.cfi_offset %rbx, -24
.Ltmp45:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	zlz_setup
	testl	%eax, %eax
	js	.LBB8_8
# BB#1:                                 # %if.end
	cmpl	$3, 80(%r14)
	jl	.LBB8_7
# BB#2:                                 # %land.lhs.true
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB8_7
# BB#3:                                 # %if.then.4
	leaq	120(%rsp), %rcx
	movl	120(%rsp), %edx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB8_8
# BB#4:                                 # %lor.lhs.false
	leaq	4(%rsp), %r9
	movl	$.L.str.20, %esi
	movl	$3, %edx
	movl	$8, %ecx
	movl	$8, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB8_8
# BB#5:                                 # %if.end.13
	jne	.LBB8_7
# BB#6:                                 # %if.then.16
	movl	4(%rsp), %eax
	incl	%eax
	movl	%eax, 116(%rsp)
.LBB8_7:                                # %if.end.18
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_LZWD_template, %edx
	movq	%r14, %rdi
	callq	filter_read_predictor
.LBB8_8:                                # %cleanup.20
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	zLZWD, .Lfunc_end8-zLZWD
	.cfi_endproc

	.align	16, 0x90
	.type	zPDiffD,@function
zPDiffD:                                # @zPDiffD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 16
	subq	$384, %rsp              # imm = 0x180
.Ltmp47:
	.cfi_def_cfa_offset 400
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	zpd_setup
	testl	%eax, %eax
	js	.LBB9_2
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PDiffD_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_read
.LBB9_2:                                # %cleanup
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	retq
.Lfunc_end9:
	.size	zPDiffD, .Lfunc_end9-zPDiffD
	.cfi_endproc

	.align	16, 0x90
	.type	zPDiffE,@function
zPDiffE:                                # @zPDiffE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 16
	subq	$384, %rsp              # imm = 0x180
.Ltmp50:
	.cfi_def_cfa_offset 400
.Ltmp51:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	zpd_setup
	testl	%eax, %eax
	js	.LBB10_2
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PDiffE_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_write
.LBB10_2:                               # %cleanup
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	retq
.Lfunc_end10:
	.size	zPDiffE, .Lfunc_end10-zPDiffE
	.cfi_endproc

	.align	16, 0x90
	.type	zPNGPD,@function
zPNGPD:                                 # @zPNGPD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 16
	subq	$672, %rsp              # imm = 0x2A0
.Ltmp53:
	.cfi_def_cfa_offset 688
.Ltmp54:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	zpp_setup
	testl	%eax, %eax
	js	.LBB11_2
# BB#1:                                 # %if.end
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PNGPD_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_read
.LBB11_2:                               # %cleanup
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	retq
.Lfunc_end11:
	.size	zPNGPD, .Lfunc_end11-zPNGPD
	.cfi_endproc

	.align	16, 0x90
	.type	zPNGPE,@function
zPNGPE:                                 # @zPNGPE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 16
	subq	$672, %rsp              # imm = 0x2A0
.Ltmp56:
	.cfi_def_cfa_offset 688
.Ltmp57:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	zpp_setup
	testl	%eax, %eax
	js	.LBB12_2
# BB#1:                                 # %if.end
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_PNGPE_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_write
.LBB12_2:                               # %cleanup
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	retq
.Lfunc_end12:
	.size	zPNGPE, .Lfunc_end12-zPNGPE
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iparam_list_release"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Predictor"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"EarlyChange"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"InitialCodeLength"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FirstBitLowOrder"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BlockData"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Colors"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"BitsPerComponent"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Columns"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"filterdict"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1ASCII85Encode"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1ASCII85Decode"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2CCITTFaxDecode"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1LZWDecode"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"2PixelDifferenceDecode"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2PixelDifferenceEncode"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2PNGPredictorDecode"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"2PNGPredictorEncode"
	.size	.L.str.17, 20

	.type	zfdecode_op_defs,@object # @zfdecode_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfdecode_op_defs
	.align	16
zfdecode_op_defs:
	.quad	.L.str.9
	.quad	0
	.quad	.L.str.10
	.quad	zA85E
	.quad	.L.str.11
	.quad	zA85D
	.quad	.L.str.12
	.quad	zCFD
	.quad	.L.str.13
	.quad	zLZWD
	.quad	.L.str.14
	.quad	zPDiffD
	.quad	.L.str.15
	.quad	zPDiffE
	.quad	.L.str.16
	.quad	zPNGPD
	.quad	.L.str.17
	.quad	zPNGPE
	.zero	16
	.size	zfdecode_op_defs, 160

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"PDFRules"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LowBitFirst"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UnitSize"
	.size	.L.str.20, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
