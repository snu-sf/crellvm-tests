	.text
	.file	"gdevdcrd.bc"
	.globl	sample_device_crd_get_params
	.align	16, 0x90
	.type	sample_device_crd_get_params,@function
sample_device_crd_get_params:           # @sample_device_crd_get_params
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$128, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 176
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	*40(%rax)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.LBB0_2
# BB#1:                                 # %if.then
	movq	%r15, 80(%rsp)
	movq	%r15, %rdi
	callq	strlen
	movl	%eax, 88(%rsp)
	movl	$1, 92(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	movl	%eax, %r12d
	sarl	$31, %r12d
	andl	%eax, %r12d
.LBB0_2:                                # %if.end.6
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*40(%rax)
	testl	%eax, %eax
	jle	.LBB0_10
# BB#3:                                 # %if.then.12
	movq	24(%r14), %rsi
	leaq	120(%rsp), %rdi
	movl	$.L.str.1, %edx
	callq	gs_cie_render1_build
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_9
# BB#4:                                 # %if.then.17
	movups	bit_TransformPQR+16(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	bit_TransformPQR(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	16(%r14), %rax
	movq	%rax, 112(%rsp)
	movq	24(%r14), %rdi
	movq	120(%rsp), %rsi
	leaq	80(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$bit_RenderTable, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$bit_EncodeABC, 48(%rsp)
	movq	$bit_MatrixABC, 40(%rsp)
	movq	$bit_RangeLMN, 32(%rsp)
	movq	$bit_EncodeLMN, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$bit_RangePQR, (%rsp)
	xorl	%edx, %edx
	movl	$bit_WhitePoint, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	gs_cie_render1_initialize
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_6
# BB#5:                                 # %if.then.22
	movq	120(%rsp), %rdx
	movq	24(%r14), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	param_write_cie_render1
	movl	%eax, %ebp
.LBB0_6:                                # %do.body
	movq	120(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_9
# BB#7:                                 # %do.end
	decq	8(%rsi)
	jne	.LBB0_9
# BB#8:                                 # %do.end.38
	movq	16(%rsi), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rsi)
	movq	$0, 120(%rsp)
.LBB0_9:                                # %if.end.51
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
.LBB0_10:                               # %if.end.56
	movq	(%rbx), %rax
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	*40(%rax)
	testl	%eax, %eax
	jle	.LBB0_14
# BB#11:                                # %if.then.62
	movq	$bit_TransformPQR_proc, 120(%rsp)
	movq	24(%r14), %rdi
	movl	$8, %esi
	movl	$.L.str.2, %edx
	callq	*136(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB0_13
# BB#12:                                # %if.else.71
	leaq	120(%rsp), %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, 80(%rsp)
	movabsq	$4294967304, %rax       # imm = 0x100000008
	movq	%rax, 88(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_write_string
.LBB0_13:                               # %if.end.77
	testl	%eax, %eax
	cmovsl	%eax, %r12d
.LBB0_14:                               # %if.end.82
	movl	%r12d, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sample_device_crd_get_params, .Lfunc_end0-sample_device_crd_get_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	-4620693217682128896    # double -0.5
	.text
	.align	16, 0x90
	.type	bit_TransformPQR_proc,@function
bit_TransformPQR_proc:                  # @bit_TransformPQR_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB1_2
# BB#1:                                 # %cond.false
	addsd	.LCPI1_1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
.LBB1_2:                                # %cond.end
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	bit_TransformPQR_proc, .Lfunc_end1-bit_TransformPQR_proc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
.LCPI2_1:
	.quad	-4620693217682128896    # double -0.5
	.text
	.align	16, 0x90
	.type	bit_EncodeLMN_proc,@function
bit_EncodeLMN_proc:                     # @bit_EncodeLMN_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB2_2
# BB#1:                                 # %cond.false
	addsd	.LCPI2_1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
.LBB2_2:                                # %cond.end
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end2:
	.size	bit_EncodeLMN_proc, .Lfunc_end2-bit_EncodeLMN_proc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4601778099247172813     # double 0.45000000000000001
	.text
	.align	16, 0x90
	.type	bit_EncodeABC_proc,@function
bit_EncodeABC_proc:                     # @bit_EncodeABC_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 16
	xorpd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end3:
	.size	bit_EncodeABC_proc, .Lfunc_end3-bit_EncodeABC_proc
	.cfi_endproc

	.align	16, 0x90
	.type	bit_rt_proc,@function
bit_rt_proc:                            # @bit_rt_proc
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$32760, %edi, %eax      # imm = 0x7FF8
	movl	$2155905153, %ecx       # imm = 0x80808081
	imulq	%rax, %rcx
	shrq	$39, %rcx
	movswl	%cx, %eax
	retq
.Lfunc_end4:
	.size	bit_rt_proc, .Lfunc_end4-bit_rt_proc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CRDName"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sample_device_crd_get_params"
	.size	.L.str.1, 29

	.type	bit_TransformPQR,@object # @bit_TransformPQR
	.section	.rodata,"a",@progbits
	.align	8
bit_TransformPQR:
	.quad	bit_TransformPQR_proc
	.quad	.L.str.3
	.zero	16
	.quad	0
	.size	bit_TransformPQR, 40

	.type	bit_WhitePoint,@object  # @bit_WhitePoint
	.align	4
bit_WhitePoint:
	.long	1064522744              # float 0.950500011
	.long	1065353216              # float 1
	.long	1066099802              # float 1.08899999
	.size	bit_WhitePoint, 12

	.type	bit_RangePQR,@object    # @bit_RangePQR
	.align	4
bit_RangePQR:
	.long	0                       # float 0
	.long	1064522744              # float 0.950500011
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1066099802              # float 1.08899999
	.size	bit_RangePQR, 24

	.type	bit_EncodeLMN,@object   # @bit_EncodeLMN
	.align	8
bit_EncodeLMN:
	.quad	bit_EncodeLMN_proc
	.quad	bit_EncodeLMN_proc
	.quad	bit_EncodeLMN_proc
	.size	bit_EncodeLMN, 24

	.type	bit_RangeLMN,@object    # @bit_RangeLMN
	.align	4
bit_RangeLMN:
	.long	0                       # float 0
	.long	1064522744              # float 0.950500011
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1066099802              # float 1.08899999
	.size	bit_RangeLMN, 24

	.type	bit_MatrixABC,@object   # @bit_MatrixABC
	.align	4
bit_MatrixABC:
	.long	1078945403              # float 3.24062991
	.long	3212315596              # float -0.968930006
	.long	1029976107              # float 0.0557099991
	.long	3217343308              # float -1.53720999
	.long	1072699623              # float 1.87575996
	.long	3192973982              # float -0.204019994
	.long	3204402286              # float -0.498629987
	.long	1026167008              # float 0.0415199995
	.long	1065831367              # float 1.05700004
	.long	0                       # 0x0
	.size	bit_MatrixABC, 40

	.type	bit_EncodeABC,@object   # @bit_EncodeABC
	.align	8
bit_EncodeABC:
	.quad	bit_EncodeABC_proc
	.quad	bit_EncodeABC_proc
	.quad	bit_EncodeABC_proc
	.size	bit_EncodeABC, 24

	.type	bit_RenderTable,@object # @bit_RenderTable
	.align	8
bit_RenderTable:
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	bit_rt_data
	.quad	bit_rt_proc
	.quad	bit_rt_proc
	.quad	bit_rt_proc
	.quad	0
	.size	bit_RenderTable, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sd_crd_get_params(proc)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bitTPQRDefault"
	.size	.L.str.3, 15

	.type	bit_rt_data,@object     # @bit_rt_data
	.section	.rodata,"a",@progbits
	.align	16
bit_rt_data:
	.quad	bit_rtt0
	.long	12                      # 0xc
	.zero	4
	.quad	bit_rtt1
	.long	12                      # 0xc
	.zero	4
	.size	bit_rt_data, 32

	.type	bit_rtt0,@object        # @bit_rtt0
bit_rtt0:
	.ascii	"\000\000\000\000\000\377\000\377\000\000\377\377"
	.size	bit_rtt0, 12

	.type	bit_rtt1,@object        # @bit_rtt1
bit_rtt1:
	.ascii	"\377\000\000\377\000\377\377\377\000\377\377\377"
	.size	bit_rtt1, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
