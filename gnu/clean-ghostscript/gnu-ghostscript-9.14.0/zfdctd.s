	.text
	.file	"zfdctd.bc"
	.align	16, 0x90
	.type	zDCTD,@function
zDCTD:                                  # @zDCTD
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
	movq	%rdi, %r14
	movq	624(%r14), %rax
	movzbl	1(%rax), %ecx
	xorl	%r12d, %r12d
	cmpl	$2, %ecx
	movl	$0, %r15d
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movzwl	(%rax), %r15d
	andl	$12, %r15d
	movq	%rax, %r12
.LBB0_2:                                # %if.end
	movzbl	%cl, %ecx
	cmpl	$8, %r15d
	movl	$8, %edx
	cmoval	%r15d, %edx
	leaq	-16(%rax), %rsi
	cmpl	$2, %ecx
	cmovneq	%rax, %rsi
	movzwl	(%rsi), %eax
	andl	$12, %eax
	cmpl	%eax, %edx
	cmoval	%edx, %eax
	shrl	$2, %eax
	movq	24(%r14,%rax,8), %rbx
	movq	%rbx, 112(%rsp)
	movl	$st_jpeg_decompress_data, %esi
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB0_11
# BB#3:                                 # %if.end.9
	movq	s_DCTD_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_5
# BB#4:                                 # %if.then.10
	leaq	104(%rsp), %rdi
	callq	*%rax
.LBB0_5:                                # %if.end.11
	movq	%r13, 256(%rsp)
	movq	%rbx, 248(%rsp)
	movq	%rbx, 432(%r13)
	movq	$0, 1416(%r13)
	movq	$filter_report_error, 120(%rsp)
	leaq	104(%rsp), %rdi
	callq	gs_jpeg_create_decompress
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_10
# BB#6:                                 # %if.end.17
	movq	8(%r14), %r8
	leaq	(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_10
# BB#7:                                 # %if.end.23
	leaq	(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	s_DCTD_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_9
# BB#8:                                 # %if.end.28
	movq	s_DCTD_template+48(%rip), %rax
	movq	%rax, 48(%r13)
	movups	s_DCTD_template+32(%rip), %xmm0
	movups	%xmm0, 32(%r13)
	movups	s_DCTD_template+16(%rip), %xmm0
	movups	%xmm0, 16(%r13)
	movups	s_DCTD_template(%rip), %xmm0
	movups	%xmm0, (%r13)
	leaq	104(%rsp), %rcx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	movl	%r15d, %r8d
	callq	filter_read
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
	movq	%r13, %rsi
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
	.size	zDCTD, .Lfunc_end0-zDCTD
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2DCTDecode"
	.size	.L.str.1, 11

	.type	zfdctd_op_defs,@object  # @zfdctd_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfdctd_op_defs
	.align	16
zfdctd_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zDCTD
	.zero	16
	.size	zfdctd_op_defs, 48

	.type	st_jpeg_decompress_data,@object # @st_jpeg_decompress_data
	.align	8
st_jpeg_decompress_data:
	.long	1432                    # 0x598
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	jpeg_decompress_data_reloc_ptrs
	.size	st_jpeg_decompress_data, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"zDCTD"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"iparam_list_release"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"zDCTD fail"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"JPEG decompress data"
	.size	.L.str.5, 21

	.type	jpeg_decompress_data_reloc_ptrs,@object # @jpeg_decompress_data_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
jpeg_decompress_data_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	jpeg_decompress_data_enum_ptrs
	.size	jpeg_decompress_data_reloc_ptrs, 24

	.type	jpeg_decompress_data_enum_ptrs,@object # @jpeg_decompress_data_enum_ptrs
	.align	2
jpeg_decompress_data_enum_ptrs:
	.short	0                       # 0x0
	.short	448                     # 0x1c0
	.short	0                       # 0x0
	.short	1416                    # 0x588
	.size	jpeg_decompress_data_enum_ptrs, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
