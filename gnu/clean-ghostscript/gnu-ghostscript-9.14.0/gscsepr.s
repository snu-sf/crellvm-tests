	.text
	.file	"gscsepr.bc"
	.align	16, 0x90
	.type	gx_init_Separation,@function
gx_init_Separation:                     # @gx_init_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1065353216, 8(%rdi)    # imm = 0x3F800000
	retq
.Lfunc_end0:
	.size	gx_init_Separation, .Lfunc_end0-gx_init_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_concrete_space_Separation,@function
gx_concrete_space_Separation:           # @gx_concrete_space_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$0, 4(%rsp)
	cmpl	$0, 1024(%r14)
	je	.LBB1_1
# BB#2:                                 # %if.then
	movq	40(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	40(%rbx), %rdi
	je	.LBB1_5
# BB#3:                                 # %if.then.2
	movq	48(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB1_6
# BB#4:                                 # %if.then.4
	movq	8(%r14), %rdx
	leaq	4(%rsp), %rsi
	callq	gs_colorspace_set_icc_equivalent
	movq	40(%rbx), %rax
	movq	48(%rax), %rax
	jmp	.LBB1_6
.LBB1_1:
	movq	%rbx, %rax
	jmp	.LBB1_6
.LBB1_5:                                # %if.end.9
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*48(%rax)
.LBB1_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	gx_concrete_space_Separation, .Lfunc_end1-gx_concrete_space_Separation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4679239875398991872     # double 65535
.LCPI2_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI2_2:
	.quad	4674734214187319296     # double 32760
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_3:
	.long	1120403456              # float 100
.LCPI2_4:
	.long	1124073472              # float 128
.LCPI2_5:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	gx_concretize_Separation,@function
gx_concretize_Separation:               # @gx_concretize_Separation
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
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp11:
	.cfi_def_cfa_offset 560
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
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbp
	cmpl	$2, 88(%r12)
	jne	.LBB2_40
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 92(%r12)
	je	.LBB2_40
# BB#2:                                 # %if.then
	movq	40(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	80(%r12), %rcx
	movq	336(%r13), %rax
	cmpq	$0, (%rax)
	je	.LBB2_11
# BB#3:                                 # %if.then.7
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	100(%r15), %r14d
	movq	72(%r12), %rsi
	movl	328(%r13), %eax
	movl	%eax, 44(%rsp)
	movl	1112(%r15), %eax
	movl	%eax, 52(%rsp)
	movl	$0, 60(%rsp)
	movl	$8, 48(%rsp)
	movl	324(%r13), %eax
	movl	%eax, 40(%rsp)
	movl	$0, 56(%rsp)
	movq	8(%r13), %rdi
	leaq	72(%rsp), %rdx
	leaq	68(%rsp), %rcx
	callq	*96(%r12)
	movq	72(%rsp), %rax
	movq	%rax, 208(%rsp)
	movl	68(%rsp), %eax
	movl	%eax, 216(%rsp)
	leaq	8(%rbp), %rdi
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	leaq	208(%rsp), %rsi
	leaq	80(%rsp), %rbx
	movl	$1, %edx
	movq	%rbx, %rcx
	movq	%r13, %r8
	movq	%r15, %r9
	callq	gsicc_transform_named_color
	testl	%eax, %eax
	je	.LBB2_4
# BB#10:                                # %cleanup
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB2_11:                               # %if.end.27
	cmpl	$0, 40(%rcx)
	je	.LBB2_12
# BB#16:                                # %land.lhs.true.29
	movss	44(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	8(%rbp), %xmm0
	leaq	8(%rbp), %rbp
	jne	.LBB2_13
	jp	.LBB2_13
# BB#17:                                # %if.then.36
	movq	%rcx, %rbx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB2_42
# BB#18:                                # %for.body.41.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%rcx), %esi
	leaq	1(%rsi), %r9
	xorl	%eax, %eax
	movq	%r9, %rdx
	andq	%r8, %rdx
	movl	$0, %edi
	movq	%rbx, %r10
	je	.LBB2_27
# BB#19:                                # %vector.memcheck
	leaq	300(%r10,%rsi,2), %rbx
	xorl	%edi, %edi
	cmpq	%rbx, %r14
	ja	.LBB2_21
# BB#20:                                # %vector.memcheck
	leaq	(%r14,%rsi,2), %rbx
	leaq	300(%r10), %rbp
	cmpq	%rbx, %rbp
	jbe	.LBB2_27
.LBB2_21:                               # %vector.body.preheader
	leaq	1(%rsi), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rbp
	shrq	$4, %rbp
	xorl	%ebx, %ebx
	btq	$4, %rdi
	jb	.LBB2_23
# BB#22:                                # %vector.body.prol
	movups	300(%r10), %xmm0
	movups	316(%r10), %xmm1
	movups	%xmm0, (%r14)
	movups	%xmm1, 16(%r14)
	movl	$16, %ebx
.LBB2_23:                               # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB2_26
# BB#24:                                # %vector.body.preheader.split.split
	incq	%rsi
	andq	%r8, %rsi
	subq	%rbx, %rsi
	leaq	348(%r10,%rbx,2), %rdi
	leaq	48(%r14,%rbx,2), %rbx
	.align	16, 0x90
.LBB2_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rbx)
	movups	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$64, %rbx
	addq	$-32, %rsi
	jne	.LBB2_25
.LBB2_26:
	movq	%rdx, %rdi
.LBB2_27:                               # %middle.block
	cmpq	%rdi, %r9
	je	.LBB2_42
# BB#28:                                # %for.body.41.preheader70
	leal	1(%rcx), %edx
	movl	%edi, %ebp
	orl	$1, %ebp
	movl	%edx, %ebx
	subl	%ebp, %ebx
	movl	%ecx, %esi
	subl	%ebp, %esi
	testb	$3, %bl
	je	.LBB2_31
# BB#29:                                # %for.body.41.prol.preheader
	leal	1(%rdi), %ebp
	subl	%ebp, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB2_30:                               # %for.body.41.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	300(%r10,%rdi,2), %bp
	movw	%bp, (%r14,%rdi,2)
	incq	%rdi
	incl	%edx
	jne	.LBB2_30
.LBB2_31:                               # %for.body.41.preheader70.split
	cmpl	$3, %esi
	jb	.LBB2_42
# BB#32:                                # %for.body.41.preheader70.split.split
	subl	%edi, %ecx
	leaq	6(%r14,%rdi,2), %rdx
	leaq	306(%r10,%rdi,2), %rsi
	.align	16, 0x90
.LBB2_33:                               # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rsi), %di
	movw	%di, -6(%rdx)
	movw	-4(%rsi), %di
	movw	%di, -4(%rdx)
	movw	-2(%rsi), %di
	movw	%di, -2(%rdx)
	movw	(%rsi), %di
	movw	%di, (%rdx)
	addq	$8, %rdx
	addq	$8, %rsi
	addl	$-4, %ecx
	jne	.LBB2_33
	jmp	.LBB2_42
.LBB2_40:                               # %if.else
	movss	8(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	callq	gx_unit_frac
	movw	%ax, (%r14)
.LBB2_41:                               # %cleanup.122
	xorl	%eax, %eax
.LBB2_42:                               # %cleanup.122
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_12:                               # %if.end.27.if.end.51_crit_edge
	addq	$8, %rbp
.LBB2_13:                               # %if.end.51
	movq	80(%r12), %rax
	leaq	248(%rsp), %rsi
	movq	32(%rax), %rcx
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB2_42
# BB#14:                                # %if.end.68
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rax
	leaq	240(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	movq	%rbx, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB2_15
# BB#34:                                # %if.then.71
	leaq	240(%rsp), %rsi
	movq	%rbx, %rdi
	callq	rescale_cie_colors
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_36
# BB#35:                                # %if.then.75
	movq	8(%r13), %rdx
	leaq	236(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_colorspace_set_icc_equivalent
	movq	48(%rbx), %rsi
	jmp	.LBB2_36
.LBB2_4:                                # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB2_41
# BB#5:                                 # %for.body.preheader
	xorl	%eax, %eax
	testb	$1, %r14b
	je	.LBB2_7
# BB#6:                                 # %for.body.prol
	movzwl	80(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI2_0(%rip), %xmm0
	addsd	.LCPI2_1(%rip), %xmm0
	mulsd	.LCPI2_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	movl	$1, %eax
.LBB2_7:                                # %for.body.preheader.split
	cmpl	$1, %r14d
	je	.LBB2_41
# BB#8:                                 # %for.body.preheader.split.split
	subl	%eax, %r14d
	leaq	2(%rax,%rax), %rcx
	orq	%rcx, %rbx
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	2(%rcx,%rax,2), %rax
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB2_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rbx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movw	%cx, -2(%rax)
	movzwl	(%rbx), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movw	%cx, (%rax)
	addq	$4, %rbx
	addq	$4, %rax
	addl	$-2, %r14d
	jne	.LBB2_9
	jmp	.LBB2_41
.LBB2_15:
	movq	%rbx, %rsi
.LBB2_36:                               # %if.end.80
	movq	64(%rsi), %rax
	cmpl	$6, 16(%rax)
	je	.LBB2_38
# BB#37:                                # %lor.lhs.false
	cmpl	$0, 4(%rax)
	je	.LBB2_39
.LBB2_38:                               # %if.then.85
	movss	248(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI2_3(%rip), %xmm0
	movss	%xmm0, 248(%rsp)
	movss	.LCPI2_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	252(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	.LCPI2_5(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	movss	%xmm1, 252(%rsp)
	addss	256(%rsp), %xmm0
	divss	%xmm2, %xmm0
	movss	%xmm0, 256(%rsp)
.LBB2_39:                               # %if.end.112
	movq	(%rsi), %rax
	leaq	240(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	*56(%rax)
	jmp	.LBB2_42
.Lfunc_end2:
	.size	gx_concretize_Separation, .Lfunc_end2-gx_concretize_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_concrete_Separation,@function
gx_remap_concrete_Separation:           # @gx_remap_concrete_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 16
	cmpl	$0, 1024(%rcx)
	je	.LBB3_1
# BB#2:                                 # %if.then
	movq	40(%rsi), %rsi
	movq	(%rsi), %rax
	movq	64(%rax), %rax
	popq	%r10
	jmpq	*%rax                   # TAILCALL
.LBB3_1:                                # %return
	movq	1016(%rcx), %rax
	movswl	(%rdi), %edi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	callq	*32(%rax)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	gx_remap_concrete_Separation, .Lfunc_end3-gx_remap_concrete_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_Separation,@function
gx_remap_Separation:                    # @gx_remap_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	cmpl	$0, 88(%rsi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gx_default_remap_color
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	$gx_dc_type_data_null, (%rbx)
	xorl	%eax, %eax
.LBB4_3:                                # %if.end
	movl	8(%r14), %ecx
	movl	%ecx, 376(%rbx)
	movl	$1, 360(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	gx_remap_Separation, .Lfunc_end4-gx_remap_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_Separation,@function
gx_install_Separation:                  # @gx_install_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	72(%r14), %rsi
	movq	1872(%rbx), %r15
	movl	$1, 1032(%rbx)
	movq	32(%r14), %rax
	movq	%rax, 1040(%rbx)
	movl	100(%r15), %eax
	movl	%eax, 1036(%rbx)
	movl	88(%r14), %eax
	movl	%eax, 1028(%rbx)
	cmpl	$2, %eax
	jne	.LBB5_1
# BB#2:                                 # %if.end.i
	cmpl	$1, 104(%r15)
	je	.LBB5_6
# BB#3:                                 # %if.end.12.i
	movq	24(%r15), %rdi
	leaq	8(%rsp), %rdx
	leaq	4(%rsp), %rcx
	callq	*96(%r14)
	movq	8(%rsp), %rsi
	movl	4(%rsp), %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	*1544(%r15)
	testl	%eax, %eax
	js	.LBB5_6
# BB#4:                                 # %land.lhs.true.i
	cmpl	96(%r15), %eax
	jge	.LBB5_6
# BB#5:                                 # %if.then.19.i
	cmpl	$64, %eax
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 1048(%rbx)
	movl	$0, 1024(%rbx)
	jmp	.LBB5_7
.LBB5_1:                                # %if.then.i
	movl	$0, 1024(%rbx)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.i
	movl	$1, 1024(%rbx)
.LBB5_7:                                # %check_Separation_component_name.exit
	movq	%rbx, %rdi
	callq	using_alt_color_space
	movq	1744(%rbx), %rcx
	movl	%eax, 92(%rcx)
	testl	%eax, %eax
	je	.LBB5_9
# BB#8:                                 # %if.then.8
	movq	40(%r14), %rdi
	movq	(%rdi), %rax
	movq	%rbx, %rsi
	callq	*80(%rax)
	jmp	.LBB5_10
.LBB5_9:                                # %if.then.12
	movq	1872(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*1616(%rdi)
.LBB5_10:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	gx_install_Separation, .Lfunc_end5-gx_install_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_Separation,@function
gx_set_overprint_Separation:            # @gx_set_overprint_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 80
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	1872(%r15), %rbx
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	cmpl	$0, 1024(%r15)
	je	.LBB6_10
# BB#1:                                 # %if.then
	movq	40(%rsp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB6_9
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 104(%rbx)
	jne	.LBB6_9
# BB#3:                                 # %land.lhs.true.2
	cmpl	$1, 100(%rbx)
	jg	.LBB6_5
# BB#4:                                 # %lor.lhs.false
	movzbl	110(%rbx), %eax
	cmpl	$255, %eax
	je	.LBB6_5
# BB#6:                                 # %cond.false
	addq	$112, %rbx
	jmp	.LBB6_7
.LBB6_10:                               # %if.else.16
	movl	$0, 36(%rsp)
	cmpl	$0, 272(%r15)
	je	.LBB6_11
# BB#12:                                # %land.end
	movl	88(%r14), %eax
	cmpl	$1, %eax
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 8(%rsp)
	je	.LBB6_16
# BB#13:                                # %if.then.23
	movl	$0, 12(%rsp)
	movq	$0, 24(%rsp)
	movw	$0, 32(%rsp)
	testl	%eax, %eax
	je	.LBB6_16
# BB#14:                                # %if.then.29
	movl	1048(%r15), %ecx
	testl	%ecx, %ecx
	js	.LBB6_16
# BB#15:                                # %if.then.32
	movl	$1, %eax
	shlq	%cl, %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB6_16
.LBB6_11:                               # %land.end.thread
	movl	$0, 8(%rsp)
.LBB6_16:                               # %if.end.35
	movl	$0, 280(%r15)
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_state_update_overprint
	jmp	.LBB6_17
.LBB6_5:                                # %cond.true
	addq	$116, %rbx
.LBB6_7:                                # %cond.end
	cmpl	$31, (%rbx)
	jae	.LBB6_8
.LBB6_9:                                # %if.else
	movq	40(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_spot_colors_set_overprint
.LBB6_17:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB6_8:                                # %if.then.12
	movq	40(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_simulated_set_overprint
	jmp	.LBB6_17
.Lfunc_end6:
	.size	gx_set_overprint_Separation, .Lfunc_end6-gx_set_overprint_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_Separation,@function
gx_final_Separation:                    # @gx_final_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	movq	80(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB7_2
# BB#1:                                 # %do.end
	decq	(%rsi)
	je	.LBB7_3
.LBB7_2:                                # %do.end.34
	retq
.LBB7_3:                                # %do.end.16
	movq	8(%rsi), %rdi
	movq	16(%rsi), %rax
	movl	$.L.str.2, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	gx_final_Separation, .Lfunc_end7-gx_final_Separation
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_Separation,@function
gx_serialize_Separation:                # @gx_serialize_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 32
.Ltmp41:
	.cfi_offset %rbx, -24
.Ltmp42:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB8_5
# BB#1:                                 # %if.end
	leaq	72(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$8, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB8_5
# BB#2:                                 # %if.end.4
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB8_5
# BB#3:                                 # %if.end.9
	movq	80(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gx_serialize_device_n_map
	testl	%eax, %eax
	js	.LBB8_5
# BB#4:                                 # %if.end.13
	addq	$88, %rbx
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sputs
.LBB8_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	gx_serialize_Separation, .Lfunc_end8-gx_serialize_Separation
	.cfi_endproc

	.globl	gs_cspace_new_Separation
	.align	16, 0x90
	.type	gs_cspace_new_Separation,@function
gs_cspace_new_Separation:               # @gs_cspace_new_Separation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$-15, %ebp
	testq	%rbx, %rbx
	je	.LBB9_6
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rax
	cmpl	$0, 8(%rax)
	je	.LBB9_6
# BB#2:                                 # %if.end
	movl	$gs_color_space_type_Separation, %esi
	movq	%r15, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB9_6
# BB#3:                                 # %if.end.3
	movq	%r12, %rdi
	addq	$80, %rdi
	movq	$0, 80(%r12)
	movl	$.L.str, %edx
	movq	%r15, %rsi
	callq	alloc_device_n_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_4
# BB#5:                                 # %if.end.10
	movq	%rbx, 40(%r12)
	movq	%rbx, %rdi
	callq	rc_increment_cs
	movq	%r12, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB9_6
.LBB9_4:                                # %if.then.9
	movl	$.L.str, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*24(%r15)
.LBB9_6:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gs_cspace_new_Separation, .Lfunc_end9-gs_cspace_new_Separation
	.cfi_endproc

	.globl	gs_cspace_set_sepr_function
	.align	16, 0x90
	.type	gs_cspace_set_sepr_function,@function
gs_cspace_set_sepr_function:            # @gs_cspace_set_sepr_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 48
.Ltmp58:
	.cfi_offset %rbx, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	$-15, %ebp
	cmpl	$9, %eax
	jne	.LBB10_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, 72(%r14)
	jne	.LBB10_4
# BB#2:                                 # %lor.lhs.false.2
	movl	88(%r14), %r15d
	movq	40(%rbx), %rdi
	callq	gs_color_space_num_components
	cmpl	%eax, %r15d
	jne	.LBB10_4
# BB#3:                                 # %if.end
	movq	80(%rbx), %rax
	movq	$map_devn_using_function, 24(%rax)
	movq	%r14, 32(%rax)
	movl	$0, 40(%rax)
	xorl	%ebp, %ebp
.LBB10_4:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_cspace_set_sepr_function, .Lfunc_end10-gs_cspace_set_sepr_function
	.cfi_endproc

	.globl	gs_cspace_get_sepr_function
	.align	16, 0x90
	.type	gs_cspace_get_sepr_function,@function
gs_cspace_get_sepr_function:            # @gs_cspace_get_sepr_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$9, %ecx
	jne	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	80(%rbx), %rcx
	movl	$map_devn_using_function, %edx
	xorl	%eax, %eax
	cmpq	%rdx, 24(%rcx)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movq	32(%rcx), %rax
.LBB11_3:                               # %return
	popq	%rbx
	retq
.Lfunc_end11:
	.size	gs_cspace_get_sepr_function, .Lfunc_end11-gs_cspace_get_sepr_function
	.cfi_endproc

	.align	16, 0x90
	.type	cs_Separation_enum_ptrs,@function
cs_Separation_enum_ptrs:                # @cs_Separation_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB12_1
# BB#3:                                 # %sw.bb.1
	movl	72(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_name_index_procs, %eax
	jmp	.LBB12_4
.LBB12_1:                               # %entry
	testl	%ecx, %ecx
	jne	.LBB12_4
# BB#2:                                 # %sw.bb
	movq	80(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB12_4:                               # %return
	retq
.Lfunc_end12:
	.size	cs_Separation_enum_ptrs, .Lfunc_end12-cs_Separation_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cs_Separation_reloc_ptrs,@function
cs_Separation_reloc_ptrs:               # @cs_Separation_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rcx), %rax
	movq	80(%rbx), %rdi
	movq	%rcx, %rsi
	callq	*(%rax)
	movq	%rax, 80(%rbx)
	popq	%rbx
	retq
.Lfunc_end13:
	.size	cs_Separation_reloc_ptrs, .Lfunc_end13-cs_Separation_reloc_ptrs
	.cfi_endproc

	.type	st_color_space_Separation,@object # @st_color_space_Separation
	.section	.rodata,"a",@progbits
	.align	8
st_color_space_Separation:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	cs_Separation_enum_ptrs
	.quad	cs_Separation_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_color_space_Separation, 64

	.type	gs_color_space_type_Separation,@object # @gs_color_space_type_Separation
	.globl	gs_color_space_type_Separation
	.align	8
gs_color_space_type_Separation:
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	st_color_space_Separation
	.quad	gx_num_components_1
	.quad	gx_init_Separation
	.quad	gx_restrict01_paint_1
	.quad	gx_concrete_space_Separation
	.quad	gx_concretize_Separation
	.quad	gx_remap_concrete_Separation
	.quad	gx_remap_Separation
	.quad	gx_install_Separation
	.quad	gx_set_overprint_Separation
	.quad	gx_final_Separation
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_Separation
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_subtractive
	.size	gs_color_space_type_Separation, 136

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cspace_build_Separation"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_color_space_Separation"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_adjust_Separation"
	.size	.L.str.2, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
