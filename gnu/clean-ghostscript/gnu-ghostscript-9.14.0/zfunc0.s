	.text
	.file	"zfunc0.bc"
	.globl	gs_build_function_0
	.align	16, 0x90
	.type	gs_build_function_0,@function
gs_build_function_0:                    # @gs_build_function_0
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$152, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 192
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r14
	movq	%rsi, %rbx
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	$0, 120(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	$0, 112(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%rsp), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$3, %ecx
	jne	.LBB0_3
# BB#5:                                 # %sw.bb.9
	movq	8(%rdi), %rbp
	movzwl	264(%rbp), %edx
	movl	4(%rdi), %ecx
	cmpl	%ecx, %edx
	je	.LBB0_9
# BB#6:                                 # %if.then.16
	movl	$-9, %eax
	testw	%dx, %dx
	jne	.LBB0_23
# BB#7:                                 # %land.lhs.true
	movzwl	266(%rbp), %edx
	cmpl	%ecx, %edx
	jne	.LBB0_23
# BB#8:                                 # %if.then.26
	callq	file_switch_to_read
	testl	%eax, %eax
	js	.LBB0_23
.LBB0_9:                                # %do.end
	movl	$-12, %eax
	testb	$4, 155(%rbp)
	je	.LBB0_23
# BB#10:                                # %cleanup.43
	movl	$3, 64(%rsp)
	movq	%rbp, 72(%rsp)
	movq	$data_source_access_stream, 56(%rsp)
	jmp	.LBB0_11
.LBB0_1:                                # %if.then
	movl	$-15, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB0_23
.LBB0_3:                                # %if.end
	movl	$-15, %eax
	cmpl	$18, %ecx
	jne	.LBB0_23
# BB#4:                                 # %sw.bb
	movl	$0, 64(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 72(%rsp)
	movl	4(%rdi), %eax
	movl	%eax, 80(%rsp)
	movq	$data_source_access_string, 56(%rsp)
.LBB0_11:                               # %sw.epilog
	leaq	48(%rsp), %r9
	movl	$.L.str.1, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_22
# BB#12:                                # %lor.lhs.false
	leaq	88(%rsp), %r9
	movl	$.L.str.2, %esi
	movl	$1, %edx
	movl	$32, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_22
# BB#13:                                # %lor.lhs.false.51
	leaq	96(%rsp), %r8
	movl	$.L.str.3, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r15, %r9
	callq	fn_build_float_array
	movl	%eax, %ebp
	movl	16(%rsp), %eax
	addl	%eax, %eax
	cmpl	%eax, %ebp
	je	.LBB0_16
# BB#14:                                # %land.lhs.true.56
	testl	%ebp, %ebp
	jne	.LBB0_22
# BB#15:                                # %land.lhs.true.56
	movq	96(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB0_22
.LBB0_16:                               # %lor.lhs.false.63
	leaq	104(%rsp), %r8
	movl	$.L.str.4, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r15, %r9
	callq	fn_build_float_array
	movl	%eax, %ebp
	movl	32(%rsp), %eax
	addl	%eax, %eax
	cmpl	%eax, %ebp
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.69
	testl	%ebp, %ebp
	jne	.LBB0_22
# BB#18:                                # %land.lhs.true.69
	movq	104(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB0_22
.LBB0_19:                               # %if.end.77
	movl	16(%rsp), %esi
	movl	$4, %edx
	movl	$.L.str.5, %ecx
	movq	%r15, %rdi
	callq	*88(%r15)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_22
# BB#20:                                # %cleanup.92
	movq	%rax, 112(%rsp)
	movl	16(%rsp), %ecx
	movl	$.L.str.5, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %r8
	callq	dict_ints_param
	movl	%eax, %ebp
	cmpl	16(%rsp), %ebp
	jne	.LBB0_22
# BB#21:                                # %cleanup.cont.94
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_function_Sd_init
	movl	%eax, %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jns	.LBB0_23
.LBB0_22:                               # %fail
	leaq	16(%rsp), %rdi
	movq	%r15, %rsi
	callq	gs_function_Sd_free_params
	testl	%ebp, %ebp
	movl	$-15, %eax
	cmovsl	%ebp, %eax
.LBB0_23:                               # %cleanup.106
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_build_function_0, .Lfunc_end0-gs_build_function_0
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DataSource"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Order"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"BitsPerSample"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Encode"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Decode"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Size"
	.size	.L.str.5, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
