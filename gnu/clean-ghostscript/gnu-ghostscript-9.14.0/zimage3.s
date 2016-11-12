	.text
	.file	"zimage3.bc"
	.align	16, 0x90
	.type	zimage3,@function
zimage3:                                # @zimage3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$3336, %rsp             # imm = 0xD08
.Ltmp2:
	.cfi_def_cfa_offset 3360
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB0_21
# BB#3:                                 # %do.end
	leaq	2172(%rsp), %r9
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_21
# BB#4:                                 # %if.end.11
	movl	2172(%rsp), %edx
	leaq	2176(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_image3_t_init
	leaq	2160(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_5
# BB#6:                                 # %lor.lhs.false
	leaq	2152(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_7
# BB#8:                                 # %if.end.19
	movq	2160(%rsp), %rbx
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, (%rsp)
	leaq	2176(%rsp), %rdx
	leaq	1096(%rsp), %rcx
	movl	$12, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	movq	%r14, %rdi
	callq	pixel_image_params
	testl	%eax, %eax
	js	.LBB0_21
# BB#9:                                 # %lor.lhs.false.24
	movq	8(%r14), %rdi
	movq	2152(%rsp), %rsi
	leaq	2768(%rsp), %rdx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$12, (%rsp)
	leaq	40(%rsp), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	data_image_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_21
# BB#10:                                # %lor.lhs.false.28
	movq	2160(%rsp), %rdi
	leaq	36(%rsp), %r9
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_21
# BB#11:                                # %lor.lhs.false.32
	movq	2152(%rsp), %rdi
	leaq	36(%rsp), %r9
	movl	$.L.str.6, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_21
# BB#12:                                # %if.end.37
	cmpl	$0, 1096(%rsp)
	je	.LBB0_15
# BB#13:                                # %if.end.37
	cmpl	$3, 2172(%rsp)
	je	.LBB0_15
# BB#14:
	movl	$-15, %eax
	jmp	.LBB0_21
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_21:                               # %cleanup
	addq	$3336, %rsp             # imm = 0xD08
	popq	%rbx
	popq	%r14
	retq
.LBB0_5:
	movl	$-15, %eax
	jmp	.LBB0_21
.LBB0_7:
	movl	$-15, %eax
	jmp	.LBB0_21
.LBB0_15:                               # %lor.lhs.false.41
	cmpl	$0, 40(%rsp)
	je	.LBB0_17
# BB#16:
	movl	$-15, %eax
	jmp	.LBB0_21
.LBB0_17:                               # %lor.lhs.false.44
	movl	2760(%rsp), %ecx
	cmpl	$3, %ecx
	setne	%al
	movzbl	%al, %eax
	cmpl	%eax, %ebx
	movl	$-15, %eax
	jne	.LBB0_21
# BB#18:                                # %if.end.50
	leaq	1104(%rsp), %rbx
	cmpl	$3, %ecx
	jne	.LBB0_20
# BB#19:                                # %if.then.54
	leaq	1120(%rsp), %rdi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rsi
	callq	memmove
	movups	48(%rsp), %xmm0
	movups	%xmm0, 1104(%rsp)
.LBB0_20:                               # %if.end.63
	movl	$0, 2740(%rsp)
	movl	2748(%rsp), %ecx
	leaq	2176(%rsp), %rsi
	movl	$1, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	zimage_setup
	jmp	.LBB0_21
.Lfunc_end0:
	.size	zimage3, .Lfunc_end0-zimage3
	.cfi_endproc

	.align	16, 0x90
	.type	zimage4,@function
zimage4:                                # @zimage4
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
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	subq	$2712, %rsp             # imm = 0xA98
.Ltmp9:
	.cfi_def_cfa_offset 2752
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ebx
	leaq	1600(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gs_image4_t_init
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, (%rsp)
	leaq	544(%rsp), %rcx
	movl	$12, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	pixel_image_params
	testl	%eax, %eax
	js	.LBB1_20
# BB#1:                                 # %if.end
	movq	8(%r14), %rdi
	leal	(%rbx,%rbx), %ebp
	movl	$-15, (%rsp)
	leaq	16(%rsp), %r8
	movl	$.L.str.7, %edx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movl	%ebp, %ecx
	callq	dict_int_array_check_param
	movl	%eax, %ecx
	cmpl	%ebx, %ecx
	jne	.LBB1_13
# BB#2:                                 # %if.then.7
	movl	$0, 2184(%rsp)
	testl	%ebx, %ebx
	jle	.LBB1_19
# BB#3:                                 # %for.body.preheader
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%edi, %edi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB1_10
# BB#4:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	xorl	%ebp, %ebp
	btq	$3, %rdi
	jb	.LBB1_6
# BB#5:                                 # %vector.body.prol
	movdqa	16(%rsp), %xmm0
	movdqa	32(%rsp), %xmm1
	pcmpeqd	%xmm2, %xmm2
	movdqa	%xmm0, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pxor	%xmm2, %xmm3
	por	%xmm0, %xmm3
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm2, %xmm0
	pxor	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm3, 2188(%rsp)
	movdqu	%xmm0, 2204(%rsp)
	movl	$8, %ebp
.LBB1_6:                                # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB1_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbp, %rcx
	leaq	64(%rsp,%rbp,4), %rsi
	leaq	2236(%rsp,%rbp,4), %rdi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-48(%rsi), %xmm1
	movdqa	-32(%rsi), %xmm2
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pxor	%xmm0, %xmm3
	por	%xmm1, %xmm3
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pxor	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqu	%xmm3, -48(%rdi)
	movdqu	%xmm1, -32(%rdi)
	movdqa	-16(%rsi), %xmm1
	movdqa	(%rsi), %xmm2
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pxor	%xmm0, %xmm3
	por	%xmm1, %xmm3
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pxor	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqu	%xmm3, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-16, %rcx
	jne	.LBB1_8
.LBB1_9:
	movq	%rdx, %rdi
.LBB1_10:                               # %middle.block
	cmpq	%rdi, %rax
	je	.LBB1_19
# BB#11:                                # %for.body.preheader48
	leaq	16(%rsp,%rdi,4), %rax
	leaq	2188(%rsp,%rdi,4), %rcx
	subl	%edi, %ebx
	movl	$-1, %edx
	.align	16, 0x90
.LBB1_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %esi
	cmpl	$-2, %esi
	cmovlel	%edx, %esi
	movl	%esi, (%rcx)
	addq	$4, %rax
	addq	$4, %rcx
	decl	%ebx
	jne	.LBB1_12
	jmp	.LBB1_19
.LBB1_13:                               # %if.else
	cmpl	%ebp, %ecx
	jne	.LBB1_21
# BB#14:                                # %if.then.16
	movl	$1, 2184(%rsp)
	testl	%ebx, %ebx
	jle	.LBB1_19
# BB#15:                                # %for.body.20.lr.ph
	movslq	%ebp, %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_16:                               # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movl	20(%rsp,%rdx,4), %ebp
	movl	$1, %esi
	testl	%ebp, %ebp
	movl	$0, %edi
	js	.LBB1_18
# BB#17:                                # %if.else.32
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	16(%rsp,%rdx,4), %esi
	testl	%esi, %esi
	cmovsl	%ecx, %esi
	movl	%ebp, %edi
.LBB1_18:                               # %for.inc.53
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	%esi, 2188(%rsp,%rdx,4)
	movl	%edi, 2192(%rsp,%rdx,4)
	addq	$2, %rdx
	cmpq	%rax, %rdx
	jl	.LBB1_16
.LBB1_19:                               # %if.end.63
	leaq	552(%rsp), %rdx
	movl	2172(%rsp), %ecx
	leaq	1600(%rsp), %rsi
	movl	$1, %r8d
	movq	%r14, %rdi
	callq	zimage_setup
	jmp	.LBB1_20
.LBB1_21:                               # %if.else.56
	testl	%ecx, %ecx
	movl	$-15, %eax
	cmovsl	%ecx, %eax
.LBB1_20:                               # %cleanup
	addq	$2712, %rsp             # imm = 0xA98
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zimage4, .Lfunc_end1-zimage4
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ll3dict"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1.image3"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.image4"
	.size	.L.str.2, 9

	.type	zimage3_op_defs,@object # @zimage3_op_defs
	.section	.rodata,"a",@progbits
	.globl	zimage3_op_defs
	.align	16
zimage3_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zimage3
	.quad	.L.str.2
	.quad	zimage4
	.zero	16
	.size	zimage3_op_defs, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"InterleaveType"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DataDict"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"MaskDict"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ImageType"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"MaskColor"
	.size	.L.str.7, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
