	.text
	.file	"zfdcte.bc"
	.align	16, 0x90
	.type	zDCTE,@function
zDCTE:                                  # @zDCTE
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp6:
	.cfi_def_cfa_offset 352
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
	movq	%rdi, %r15
	movq	624(%r15), %r13
	movq	8(%r15), %rdi
	callq	*32(%rdi)
	movq	%rax, %rbx
	movl	$st_jpeg_compress_data, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB0_11
# BB#1:                                 # %if.end
	movq	%rbx, 112(%rsp)
	movq	s_DCTE_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:                                 # %if.then.6
	leaq	104(%rsp), %rdi
	callq	*%rax
.LBB0_3:                                # %if.end.7
	movq	%r14, 256(%rsp)
	movq	%rbx, 248(%rsp)
	movq	%rbx, 432(%r14)
	movq	$filter_report_error, 120(%rsp)
	leaq	104(%rsp), %rdi
	callq	gs_jpeg_create_compress
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_10
# BB#4:                                 # %if.end.12
	xorl	%esi, %esi
	movzbl	1(%r13), %eax
	cmpl	$2, %eax
	movl	$0, %r12d
	jne	.LBB0_6
# BB#5:                                 # %if.then.15
	movzwl	(%r13), %r12d
	andl	$12, %r12d
	movq	%r13, %rsi
.LBB0_6:                                # %if.end.19
	movq	8(%r15), %r8
	leaq	(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_10
# BB#7:                                 # %if.end.26
	leaq	(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	s_DCTE_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_9
# BB#8:                                 # %if.end.31
	movq	s_DCTE_template+48(%rip), %rax
	movq	%rax, 48(%r14)
	movups	s_DCTE_template+32(%rip), %xmm0
	movups	%xmm0, 32(%r14)
	movups	s_DCTE_template+16(%rip), %xmm0
	movups	%xmm0, 16(%r14)
	movups	s_DCTE_template(%rip), %xmm0
	movups	%xmm0, (%r14)
	movl	512(%r14), %eax
	imull	520(%r14), %eax
	movl	%eax, 288(%rsp)
	movq	$0, 264(%rsp)
	movq	s_DCTE_template+24(%rip), %rcx
	cmpl	%eax, %ecx
	cmoval	%ecx, %eax
	movl	%eax, 24(%r14)
	shrq	$32, %rcx
	movl	224(%rsp), %eax
	cmpl	%eax, %ecx
	cmoval	%ecx, %eax
	movl	%eax, 28(%r14)
	leaq	104(%rsp), %rcx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	%r12d, %r8d
	callq	filter_write
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB0_11
.LBB0_9:                                # %rel
	movq	8(%rsp), %rdi
	movq	72(%rsp), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB0_10:                               # %fail
	leaq	104(%rsp), %rdi
	callq	gs_jpeg_destroy
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
.LBB0_11:                               # %cleanup
	movl	%ebp, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zDCTE, .Lfunc_end0-zDCTE
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2DCTEncode"
	.size	.L.str.1, 11

	.type	zfdcte_op_defs,@object  # @zfdcte_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfdcte_op_defs
	.align	16
zfdcte_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zDCTE
	.zero	16
	.size	zfdcte_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"zDCTE"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"iparam_list_release"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"zDCTE fail"
	.size	.L.str.4, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
