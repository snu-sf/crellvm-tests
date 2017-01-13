	.text
	.file	"gxhtbit.bc"
	.align	16, 0x90
	.type	construct_ht_order_default,@function
construct_ht_order_default:             # @construct_ht_order_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	60(%rdi), %r8d
	testl	%r8d, %r8d
	je	.LBB0_6
# BB#1:                                 # %for.body.preheader
	movq	88(%rdi), %r10
	xorl	%edx, %edx
	testb	$1, %r8b
	je	.LBB0_3
# BB#2:                                 # %for.body.prol
	movzbl	(%rsi), %eax
	testl	%eax, %eax
	movl	$1, %edx
	cmovel	%edx, %eax
	movl	%eax, 4(%r10)
.LBB0_3:                                # %for.body.preheader.split
	cmpl	$1, %r8d
	je	.LBB0_6
# BB#4:
	movl	$1, %r9d
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	movzbl	(%rsi,%rax), %ecx
	testl	%ecx, %ecx
	cmovel	%r9d, %ecx
	movl	%ecx, 4(%r10,%rax,8)
	leal	1(%rdx), %eax
	movzbl	(%rsi,%rax), %ecx
	testl	%ecx, %ecx
	cmovel	%r9d, %ecx
	movl	%ecx, 4(%r10,%rax,8)
	addl	$2, %edx
	cmpl	%r8d, %edx
	jb	.LBB0_5
.LBB0_6:                                # %for.end
	callq	gx_ht_complete_threshold_order
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	construct_ht_order_default, .Lfunc_end0-construct_ht_order_default
	.cfi_endproc

	.align	16, 0x90
	.type	ht_bit_index_default,@function
ht_bit_index_default:                   # @ht_bit_index_default
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movl	%esi, %ecx
	movq	88(%rdi), %rdx
	movl	(%rdx,%rcx,8), %eax
	leaq	4(%rdx,%rcx,8), %r9
	movl	$-1, %esi
	.align	16, 0x90
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	incl	%esi
	movl	%esi, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r9,%rcx), %r10d
	movb	%sil, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %r10d
	je	.LBB1_1
# BB#2:                                 # %while.end
	movzwl	44(%rdi), %ecx
	xorl	%edx, %edx
	divl	%ecx
	leal	(%rsi,%rdx,8), %ecx
	movl	%ecx, (%r8)
	movl	%eax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	ht_bit_index_default, .Lfunc_end1-ht_bit_index_default
	.cfi_endproc

	.align	16, 0x90
	.type	render_ht_default,@function
render_ht_default:                      # @render_ht_default
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	48(%rdi), %rax
	movq	%rax, %rcx
	shlq	$3, %rcx
	addq	88(%rdx), %rcx
	movq	(%rdi), %r8
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_5:                                # %do.body.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-8(%rcx), %edx
	movl	-4(%rcx), %edi
	xorl	%edi, (%r8,%rdx)
	movl	-16(%rcx), %edx
	movl	-12(%rcx), %edi
	xorl	%edi, (%r8,%rdx)
	movl	-24(%rcx), %edx
	movl	-20(%rcx), %edi
	xorl	%edi, (%r8,%rdx)
	movl	-32(%rcx), %edx
	movl	-28(%rcx), %edi
	leaq	-32(%rcx), %rcx
	xorl	%edi, (%r8,%rdx)
	addl	$-4, %eax
.LBB2_1:                                # %sw
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edi
	subl	%eax, %edi
	addl	$7, %edi
	cmpl	$14, %edi
	jbe	.LBB2_2
# BB#3:                                 # %sw.default
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	%esi, %eax
	jge	.LBB2_5
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	(%rcx), %edi
	movl	4(%rcx), %edx
	xorl	%edx, (%r8,%rdi)
	movl	8(%rcx), %edx
	movl	12(%rcx), %edi
	xorl	%edi, (%r8,%rdx)
	movl	16(%rcx), %edx
	movl	20(%rcx), %edi
	xorl	%edi, (%r8,%rdx)
	movl	24(%rcx), %edx
	movl	28(%rcx), %edi
	xorl	%edi, (%r8,%rdx)
	addq	$32, %rcx
	addl	$4, %eax
	jmp	.LBB2_1
.LBB2_2:                                # %sw
	jmpq	*.LJTI2_0(,%rdi,8)
.LBB2_13:                               # %do.body.169
	movl	-56(%rcx), %eax
	movl	-52(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_14:                               # %do.body.181
	movl	-48(%rcx), %eax
	movl	-44(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_15:                               # %do.body.193
	movl	-40(%rcx), %eax
	movl	-36(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_16:                               # %do.body.205
	movl	-32(%rcx), %eax
	movl	-28(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_17:                               # %do.body.217
	movl	-24(%rcx), %eax
	movl	-20(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_18:                               # %do.body.229
	movl	-16(%rcx), %eax
	movl	-12(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_19:                               # %do.body.241
	movl	-8(%rcx), %eax
	movl	-4(%rcx), %ecx
	jmp	.LBB2_20
.LBB2_6:                                # %do.body.85
	movl	48(%rcx), %eax
	movl	52(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_7:                                # %do.body.97
	movl	40(%rcx), %eax
	movl	44(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_8:                                # %do.body.109
	movl	32(%rcx), %eax
	movl	36(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_9:                                # %do.body.121
	movl	24(%rcx), %eax
	movl	28(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_10:                               # %do.body.133
	movl	16(%rcx), %eax
	movl	20(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_11:                               # %do.body.145
	movl	8(%rcx), %eax
	movl	12(%rcx), %edx
	xorl	%edx, (%r8,%rax)
.LBB2_12:                               # %do.body.157
	movl	(%rcx), %eax
	movl	4(%rcx), %ecx
.LBB2_20:                               # %sw.epilog
	xorl	%ecx, (%r8,%rax)
.LBB2_21:                               # %sw.epilog
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	render_ht_default, .Lfunc_end2-render_ht_default
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_13
	.quad	.LBB2_14
	.quad	.LBB2_15
	.quad	.LBB2_16
	.quad	.LBB2_17
	.quad	.LBB2_18
	.quad	.LBB2_19
	.quad	.LBB2_21
	.quad	.LBB2_12
	.quad	.LBB2_11
	.quad	.LBB2_10
	.quad	.LBB2_9
	.quad	.LBB2_8
	.quad	.LBB2_7
	.quad	.LBB2_6

	.text
	.align	16, 0x90
	.type	construct_ht_order_short,@function
construct_ht_order_short:               # @construct_ht_order_short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 96
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	56(%rdi), %ebp
	movl	60(%rdi), %r14d
	movq	88(%rdi), %r15
	movq	80(%rdi), %rax
	movq	%rdi, %r13
	leaq	(,%rbp,4), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, %rbx
	callq	memset
	testq	%r14, %r14
	je	.LBB3_5
# BB#1:
	movl	$2, %eax
	movl	%r14d, %ecx
	movq	%r12, %rdx
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %edi
	leal	1(%rdi), %esi
	testl	%edi, %edi
	cmovel	%eax, %esi
	cmpl	%ebp, %esi
	jae	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%esi, %esi
	incl	(%rbx,%rsi,4)
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%rdx
	decl	%ecx
	jne	.LBB3_2
.LBB3_5:                                # %for.cond.16.preheader
	cmpl	$3, %ebp
	movq	%rbx, %rsi
	jb	.LBB3_11
# BB#6:                                 # %for.body.19.preheader
	movl	$2, %eax
	movl	$2, %ecx
	testb	$1, %bpl
	je	.LBB3_8
# BB#7:                                 # %for.body.19.prol
	movl	4(%rsi), %eax
	addl	%eax, 8(%rsi)
	movl	$3, %eax
	movl	$3, %ecx
.LBB3_8:                                # %for.body.19.preheader.split
	cmpl	$3, %ebp
	je	.LBB3_11
# BB#9:                                 # %for.body.19.preheader.split.split
	subl	%ecx, %ebp
	leaq	4(%rsi,%rcx,4), %rcx
	.align	16, 0x90
.LBB3_10:                               # %for.body.19
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %edx
	movl	(%rsi,%rdx,4), %edx
	addl	%edx, -4(%rcx)
	movl	%eax, %edx
	movl	(%rsi,%rdx,4), %edx
	addl	%edx, (%rcx)
	addl	$2, %eax
	addq	$8, %rcx
	addl	$-2, %ebp
	jne	.LBB3_10
.LBB3_11:                               # %for.end.27
	testl	%r14d, %r14d
	je	.LBB3_14
# BB#12:                                # %for.body.36.preheader
	movzwl	40(%r13), %r9d
	leal	63(%r9), %edi
	andl	$131008, %edi           # imm = 0x1FFC0
	subl	%r9d, %edi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	.align	16, 0x90
.LBB3_13:                               # %for.body.36
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rcx), %ebx
	testq	%rbx, %rbx
	cmoveq	%r8, %rbx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	imull	%edi, %eax
	addl	%ecx, %eax
	movl	(%rsi,%rbx,4), %edx
	leal	1(%rdx), %ebp
	movl	%ebp, (%rsi,%rbx,4)
	movw	%ax, (%r15,%rdx,2)
	incq	%rcx
	cmpl	%ecx, %r14d
	jne	.LBB3_13
.LBB3_14:                               # %for.cond.61.preheader
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	gx_device_halftone_list(%rip), %rax
	testq	%rax, %rax
	je	.LBB3_29
# BB#15:                                # %for.body.62.lr.ph
	leal	(%r14,%r14), %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$gx_device_halftone_list, %ecx
	.align	16, 0x90
.LBB3_16:                               # %for.body.62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	callq	*%rax
	movq	%rax, %rbx
	movq	(%rbx), %r14
	testq	%r14, %r14
	movq	%r13, %rcx
	je	.LBB3_22
# BB#17:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB3_16 Depth=1
	movzwl	40(%rcx), %r13d
	addq	$8, %rbx
	.align	16, 0x90
.LBB3_18:                               # %while.body
                                        #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r13d, 12(%r14)
	jne	.LBB3_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_18 Depth=2
	movzwl	42(%rcx), %eax
	cmpl	%eax, 16(%r14)
	jne	.LBB3_21
# BB#20:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB3_18 Depth=2
	cmpl	$2, 40(%r14)
	jne	.LBB3_21
# BB#23:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	24(%r14), %r12
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, %rbp
	callq	memcmp
	movq	%rbp, %rcx
	testl	%eax, %eax
	jne	.LBB3_21
# BB#24:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	32(%r14), %r15
	movq	88(%rcx), %rbp
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memcmp
	movq	8(%rsp), %rcx           # 8-byte Reload
	testl	%eax, %eax
	je	.LBB3_25
	.align	16, 0x90
.LBB3_21:                               # %while.cond.backedge
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	(%rbx), %r14
	addq	$8, %rbx
	testq	%r14, %r14
	jne	.LBB3_18
.LBB3_22:                               # %for.inc.110
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	%rcx, %r13
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %rax
	addq	$8, %rcx
	testq	%rax, %rax
	jne	.LBB3_16
	jmp	.LBB3_29
.LBB3_25:                               # %if.then.91
	movq	72(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_26
# BB#27:                                # %if.then.93
	movl	$.L.str, %edx
	movq	%rbp, %rsi
	movq	%rcx, %rbx
	callq	*24(%rdi)
	movq	72(%rbx), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movq	%rbx, %rcx
	movdqu	24(%r14), %xmm0
	jmp	.LBB3_28
.LBB3_26:
	movd	%r15, %xmm1
	movd	%r12, %xmm0
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
.LBB3_28:                               # %cleanup
	movq	$0, 72(%rcx)
	movdqu	%xmm0, 80(%rcx)
.LBB3_29:                               # %cleanup.113
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	construct_ht_order_short, .Lfunc_end3-construct_ht_order_short
	.cfi_endproc

	.align	16, 0x90
	.type	ht_bit_index_short,@function
ht_bit_index_short:                     # @ht_bit_index_short
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	movl	%esi, %eax
	movq	88(%rdi), %rdx
	movzwl	(%rdx,%rax,2), %eax
	movzwl	44(%rdi), %esi
	shll	$3, %esi
	xorl	%edx, %edx
	divl	%esi
	movl	%edx, (%rcx)
	movl	%eax, 4(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	ht_bit_index_short, .Lfunc_end4-ht_bit_index_short
	.cfi_endproc

	.align	16, 0x90
	.type	render_ht_short,@function
render_ht_short:                        # @render_ht_short
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	48(%rdi), %rax
	movq	%rax, %r8
	addq	%r8, %r8
	addq	88(%rdx), %r8
	movq	(%rdi), %r9
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_5:                                # %do.body.53
                                        #   in Loop: Header=BB5_1 Depth=1
	movzwl	-2(%r8), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	movzwl	-4(%r8), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	movzwl	-6(%r8), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	movzwl	-8(%r8), %ecx
	addq	$-8, %r8
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	addl	$-4, %eax
.LBB5_1:                                # %sw
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	subl	%eax, %ecx
	addl	$7, %ecx
	cmpl	$14, %ecx
	jbe	.LBB5_2
# BB#3:                                 # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	%esi, %eax
	jge	.LBB5_5
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movzwl	(%r8), %ecx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rdi), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rdi)
	movzwl	2(%r8), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	movzwl	4(%r8), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	movzwl	6(%r8), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movzbl	(%r9,%rdx), %ecx
	xorl	%edi, %ecx
	movb	%cl, (%r9,%rdx)
	addq	$8, %r8
	addl	$4, %eax
	jmp	.LBB5_1
.LBB5_2:                                # %sw
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_13:                               # %do.body.227
	movzwl	-14(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_14:                               # %do.body.243
	movzwl	-12(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_15:                               # %do.body.259
	movzwl	-10(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_16:                               # %do.body.275
	movzwl	-8(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_17:                               # %do.body.291
	movzwl	-6(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_18:                               # %do.body.307
	movzwl	-4(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_19:                               # %do.body.323
	movzwl	-2(%r8), %ecx
	jmp	.LBB5_20
.LBB5_6:                                # %do.body.115
	movzwl	12(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_7:                                # %do.body.131
	movzwl	10(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_8:                                # %do.body.147
	movzwl	8(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_9:                                # %do.body.163
	movzwl	6(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_10:                               # %do.body.179
	movzwl	4(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_11:                               # %do.body.195
	movzwl	2(%r8), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_12:                               # %do.body.211
	movzwl	(%r8), %ecx
.LBB5_20:                               # %sw.epilog
	movq	%rcx, %rax
	shrq	$3, %rax
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movzbl	(%r9,%rax), %ecx
	xorl	%edx, %ecx
	movb	%cl, (%r9,%rax)
.LBB5_21:                               # %sw.epilog
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	render_ht_short, .Lfunc_end5-render_ht_short
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_15
	.quad	.LBB5_16
	.quad	.LBB5_17
	.quad	.LBB5_18
	.quad	.LBB5_19
	.quad	.LBB5_21
	.quad	.LBB5_12
	.quad	.LBB5_11
	.quad	.LBB5_10
	.quad	.LBB5_9
	.quad	.LBB5_8
	.quad	.LBB5_7
	.quad	.LBB5_6

	.type	ht_order_procs_table,@object # @ht_order_procs_table
	.globl	ht_order_procs_table
	.align	16
ht_order_procs_table:
	.long	8                       # 0x8
	.zero	4
	.quad	construct_ht_order_default
	.quad	ht_bit_index_default
	.quad	render_ht_default
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	construct_ht_order_short
	.quad	ht_bit_index_short
	.quad	render_ht_short
	.quad	0
	.size	ht_order_procs_table, 80

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"construct_ht_order_short(bit_data)"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"construct_ht_order_short(levels)"
	.size	.L.str.1, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
