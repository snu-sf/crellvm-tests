	.text
	.file	"gscdevn.bc"
	.align	16, 0x90
	.type	gx_num_components_DeviceN,@function
gx_num_components_DeviceN:              # @gx_num_components_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rdi), %eax
	retq
.Lfunc_end0:
	.size	gx_num_components_DeviceN, .Lfunc_end0-gx_num_components_DeviceN
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	gx_init_DeviceN,@function
gx_init_DeviceN:                        # @gx_init_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rsi), %eax
	testq	%rax, %rax
	je	.LBB1_6
# BB#1:                                 # %for.body.lr.ph
	movl	%eax, %edx
	andl	$7, %edx
	xorl	%ecx, %ecx
	cmpl	%edx, %eax
	je	.LBB1_4
# BB#2:                                 # %vector.body.preheader
	movq	%rax, %rcx
	subq	%rdx, %rcx
	leaq	24(%rdi), %rdx
	movl	%eax, %r8d
	andl	$7, %r8d
	movq	%rax, %rsi
	subq	%r8, %rsi
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	addq	$32, %rdx
	addq	$-8, %rsi
	jne	.LBB1_3
.LBB1_4:                                # %middle.block
	cmpq	%rcx, %rax
	je	.LBB1_6
	.align	16, 0x90
.LBB1_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1065353216, 8(%rdi,%rcx,4) # imm = 0x3F800000
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB1_5
.LBB1_6:                                # %for.end
	retq
.Lfunc_end1:
	.size	gx_init_DeviceN, .Lfunc_end1-gx_init_DeviceN
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gx_restrict_DeviceN,@function
gx_restrict_DeviceN:                    # @gx_restrict_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rsi), %eax
	testq	%rax, %rax
	je	.LBB2_7
# BB#1:                                 # %for.body.lr.ph
	movl	%eax, %edx
	andl	$3, %edx
	xorl	%ecx, %ecx
	cmpl	%edx, %eax
	je	.LBB2_4
# BB#2:                                 # %vector.body.preheader
	movq	%rax, %rcx
	subq	%rdx, %rcx
	leaq	8(%rdi), %rdx
	movl	%eax, %r8d
	andl	$3, %r8d
	movq	%rax, %rsi
	subq	%r8, %rsi
	xorps	%xmm0, %xmm0
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm2
	movaps	%xmm1, %xmm3
	cmpleps	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	andps	%xmm3, %xmm4
	andnps	%xmm2, %xmm3
	cmpnleps	%xmm0, %xmm2
	orps	%xmm4, %xmm3
	andps	%xmm2, %xmm3
	movups	%xmm3, (%rdx)
	addq	$16, %rdx
	addq	$-4, %rsi
	jne	.LBB2_3
.LBB2_4:                                # %middle.block
	cmpq	%rcx, %rax
	je	.LBB2_7
# BB#5:                                 # %for.body.preheader
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rdi,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	minss	%xmm2, %xmm3
	cmpnless	%xmm1, %xmm2
	andps	%xmm3, %xmm2
	movss	%xmm2, 8(%rdi,%rcx,4)
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB2_6
.LBB2_7:                                # %for.end
	retq
.Lfunc_end2:
	.size	gx_restrict_DeviceN, .Lfunc_end2-gx_restrict_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_concrete_space_DeviceN,@function
gx_concrete_space_DeviceN:              # @gx_concrete_space_DeviceN
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
	je	.LBB3_1
# BB#2:                                 # %if.then
	movq	40(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	40(%rbx), %rdi
	je	.LBB3_5
# BB#3:                                 # %if.then.2
	movq	48(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB3_6
# BB#4:                                 # %if.then.4
	movq	8(%r14), %rdx
	leaq	4(%rsp), %rsi
	callq	gs_colorspace_set_icc_equivalent
	movq	40(%rbx), %rax
	movq	48(%rax), %rax
	jmp	.LBB3_6
.LBB3_1:
	movq	%rbx, %rax
	jmp	.LBB3_6
.LBB3_5:                                # %if.end.9
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*48(%rax)
.LBB3_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gx_concrete_space_DeviceN, .Lfunc_end3-gx_concrete_space_DeviceN
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4679239875398991872     # double 65535
.LCPI4_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI4_2:
	.quad	4674734214187319296     # double 32760
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_3:
	.long	1120403456              # float 100
.LCPI4_4:
	.long	1124073472              # float 128
.LCPI4_5:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	gx_concretize_DeviceN,@function
gx_concretize_DeviceN:                  # @gx_concretize_DeviceN
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
	subq	$536, %rsp              # imm = 0x218
.Ltmp11:
	.cfi_def_cfa_offset 592
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
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	80(%rsi), %ecx
	cmpl	$0, 1024(%r15)
	je	.LBB4_1
# BB#4:                                 # %if.then
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movq	40(%rsi), %rbx
	movq	88(%rsi), %r13
	movq	336(%r15), %rax
	cmpq	$0, (%rax)
	je	.LBB4_17
# BB#5:                                 # %if.then.8
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	100(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	72(%rsi), %r14
	movl	328(%r15), %eax
	movl	%eax, 92(%rsp)
	movl	1112(%r12), %eax
	movl	%eax, 100(%rsp)
	movl	$0, 108(%rsp)
	movl	$8, 96(%rsp)
	movl	324(%r15), %eax
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movl	%eax, 88(%rsp)
	movl	$0, 104(%rsp)
	movq	24(%r12), %rdi
	leal	(,%rcx,8), %eax
	movq	%rsi, %r13
	leal	(%rax,%rax,2), %esi
	movq	%rcx, %rbx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	$.L.str.8, %edx
	callq	*64(%rdi)
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	movq	%r12, %rbx
	jle	.LBB4_8
# BB#6:                                 # %for.body.lr.ph
	movq	64(%rsp), %r12          # 8-byte Reload
	addq	$8, %r12
	leaq	116(%rsp), %rbp
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r15d
	.align	16, 0x90
.LBB4_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdi
	movq	(%r14), %rsi
	leaq	120(%rsp), %rdx
	movq	%rbp, %rcx
	callq	*112(%r13)
	movq	120(%rsp), %rax
	movq	%rax, -8(%r12)
	movl	116(%rsp), %eax
	movl	%eax, (%r12)
	addq	$8, %r14
	addq	$24, %r12
	decl	%r15d
	jne	.LBB4_7
.LBB4_8:                                # %for.end
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax), %rdi
	leaq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	leaq	128(%rsp), %r13
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %rcx
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	gsicc_transform_named_color
	movl	%eax, %r14d
	movq	24(%rbx), %rdi
	movl	$.L.str.8, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	testl	%r14d, %r14d
	movq	%rbx, %r12
	je	.LBB4_9
# BB#16:                                # %cleanup
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB4_17:                               # %if.end.49
	cmpl	$0, 40(%r13)
	je	.LBB4_39
# BB#18:                                # %if.then.51
	movslq	80(%rsi), %rax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rdx
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	8(%rcx,%rdx,4), %rcx
	leaq	44(%r13,%rdx,4), %rdx
	.align	16, 0x90
.LBB4_19:                               # %for.cond.55
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jle	.LBB4_21
# BB#20:                                # %for.body.58
                                        #   in Loop: Header=BB4_19 Depth=1
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	decq	%rax
	addq	$-4, %rdx
	ucomiss	(%rcx), %xmm0
	leaq	-4(%rcx), %rcx
	jne	.LBB4_39
	jnp	.LBB4_19
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.90
	movq	88(%rsi), %rax
	movq	80(%rsp), %rdi          # 8-byte Reload
	addq	$8, %rdi
	leaq	280(%rsp), %rsi
	movq	32(%rax), %rcx
	movq	%r15, %rdx
	callq	*24(%rax)
	movl	%eax, %ebp
	movq	(%rbx), %rax
	leaq	272(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	testl	%ebp, %ebp
	js	.LBB4_48
# BB#40:                                # %if.end.107
	movq	%rbx, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB4_41
# BB#42:                                # %if.then.110
	leaq	272(%rsp), %rsi
	movq	%rbx, %rdi
	callq	rescale_cie_colors
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB4_44
# BB#43:                                # %if.then.114
	movq	8(%r15), %rdx
	leaq	268(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_colorspace_set_icc_equivalent
	movq	48(%rbx), %rsi
	jmp	.LBB4_44
.LBB4_1:                                # %for.cond.155.preheader
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	jle	.LBB4_48
# BB#2:                                 # %for.body.159.lr.ph
	movslq	%ecx, %rbp
	incq	%rbp
	.align	16, 0x90
.LBB4_3:                                # %for.body.159
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	callq	gx_unit_frac
	movw	%ax, -4(%r14,%rbp,2)
	decq	%rbp
	cmpq	$1, %rbp
	jg	.LBB4_3
	jmp	.LBB4_15
.LBB4_21:                               # %if.then.72
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB4_48
# BB#22:                                # %for.body.77.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r9
	movq	%r9, %rsi
	andq	%r8, %rsi
	movl	$0, %edi
	je	.LBB4_31
# BB#23:                                # %vector.memcheck
	leaq	300(%r13,%rdx,2), %rbp
	xorl	%edi, %edi
	cmpq	%rbp, %r14
	ja	.LBB4_25
# BB#24:                                # %vector.memcheck
	leaq	(%r14,%rdx,2), %rbp
	leaq	300(%r13), %rcx
	cmpq	%rbp, %rcx
	jbe	.LBB4_31
.LBB4_25:                               # %vector.body.preheader
	leaq	1(%rdx), %rcx
	andq	%r8, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rdi
	shrq	$4, %rdi
	xorl	%ebp, %ebp
	btq	$4, %rcx
	jb	.LBB4_27
# BB#26:                                # %vector.body.prol
	movupd	300(%r13), %xmm0
	movupd	316(%r13), %xmm1
	movupd	%xmm0, (%r14)
	movupd	%xmm1, 16(%r14)
	movl	$16, %ebp
.LBB4_27:                               # %vector.body.preheader.split
	testq	%rdi, %rdi
	je	.LBB4_30
# BB#28:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%rbp, %rdx
	leaq	348(%r13,%rbp,2), %rdi
	leaq	48(%r14,%rbp,2), %rbp
	.align	16, 0x90
.LBB4_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbp)
	movups	%xmm1, -32(%rbp)
	movupd	-16(%rdi), %xmm0
	movupd	(%rdi), %xmm1
	movupd	%xmm0, -16(%rbp)
	movupd	%xmm1, (%rbp)
	addq	$64, %rdi
	addq	$64, %rbp
	addq	$-32, %rdx
	jne	.LBB4_29
.LBB4_30:
	movq	%rsi, %rdi
.LBB4_31:                               # %middle.block
	cmpq	%rdi, %r9
	je	.LBB4_15
# BB#32:                                # %for.body.77.preheader120
	leal	1(%rax), %ecx
	movl	%edi, %esi
	orl	$1, %esi
	movl	%ecx, %ebp
	subl	%esi, %ebp
	movl	%eax, %edx
	subl	%esi, %edx
	testb	$3, %bpl
	je	.LBB4_33
# BB#34:                                # %for.body.77.prol.preheader
	leal	1(%rdi), %esi
	subl	%esi, %ecx
	andl	$3, %ecx
	negl	%ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_35:                               # %for.body.77.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	300(%r13,%rdi,2), %si
	movw	%si, (%r14,%rdi,2)
	incq	%rdi
	incl	%ecx
	jne	.LBB4_35
	jmp	.LBB4_36
.LBB4_9:                                # %for.cond.31.preheader
	movl	20(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	jle	.LBB4_15
# BB#10:                                # %for.body.34.preheader
	xorl	%eax, %eax
	testb	$1, %dl
	je	.LBB4_12
# BB#11:                                # %for.body.34.prol
	movzwl	128(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI4_0(%rip), %xmm0
	addsd	.LCPI4_1(%rip), %xmm0
	mulsd	.LCPI4_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movw	%ax, (%rcx)
	movl	$1, %eax
.LBB4_12:                               # %for.body.34.preheader.split
	cmpl	$1, %edx
	je	.LBB4_15
# BB#13:                                # %for.body.34.preheader.split.split
	subl	%eax, %edx
	leaq	2(%rax,%rax), %rcx
	orq	%rcx, %r13
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	2(%rcx,%rax,2), %rax
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB4_14:                               # %for.body.34
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%r13), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movw	%cx, -2(%rax)
	movzwl	(%r13), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movw	%cx, (%rax)
	addq	$4, %r13
	addq	$4, %rax
	addl	$-2, %edx
	jne	.LBB4_14
.LBB4_15:                               # %cleanup.175.critedge
	xorl	%ebp, %ebp
	jmp	.LBB4_48
.LBB4_41:
	movq	%rbx, %rsi
.LBB4_44:                               # %if.end.119
	movq	64(%rsi), %rax
	cmpl	$6, 16(%rax)
	je	.LBB4_46
# BB#45:                                # %lor.lhs.false
	cmpl	$0, 4(%rax)
	je	.LBB4_47
.LBB4_46:                               # %if.then.124
	movss	280(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI4_3(%rip), %xmm0
	movss	%xmm0, 280(%rsp)
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	284(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	.LCPI4_5(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	movss	%xmm1, 284(%rsp)
	addss	288(%rsp), %xmm0
	divss	%xmm2, %xmm0
	movss	%xmm0, 288(%rsp)
.LBB4_47:                               # %if.end.151
	movq	(%rsi), %rax
	leaq	272(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	*56(%rax)
	testl	%eax, %eax
	movl	%ebp, %ecx
	cmovsl	%eax, %ecx
	testl	%ebp, %ebp
	cmovel	%eax, %ecx
	movl	%ecx, %ebp
.LBB4_48:                               # %cleanup.175
	movl	%ebp, %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_33:
	xorl	%ebp, %ebp
.LBB4_36:                               # %for.body.77.preheader120.split
	cmpl	$3, %edx
	jb	.LBB4_48
# BB#37:                                # %for.body.77.preheader120.split.split
	subl	%edi, %eax
	leaq	6(%r14,%rdi,2), %rcx
	leaq	306(%r13,%rdi,2), %rdx
	.align	16, 0x90
.LBB4_38:                               # %for.body.77
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rdx), %si
	movw	%si, -6(%rcx)
	movw	-4(%rdx), %si
	movw	%si, -4(%rcx)
	movw	-2(%rdx), %si
	movw	%si, -2(%rcx)
	movw	(%rdx), %si
	movw	%si, (%rcx)
	addq	$8, %rcx
	addq	$8, %rdx
	addl	$-4, %eax
	jne	.LBB4_38
	jmp	.LBB4_48
.Lfunc_end4:
	.size	gx_concretize_DeviceN, .Lfunc_end4-gx_concretize_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_concrete_DeviceN,@function
gx_remap_concrete_DeviceN:              # @gx_remap_concrete_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 64
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %rbx
	movq	%rcx, %rbp
	movq	%rdx, %r15
	movq	%rdi, %r12
	cmpl	$0, 1024(%rbp)
	je	.LBB5_1
# BB#5:                                 # %if.then
	movq	40(%rsi), %rsi
	movq	(%rsi), %rax
	movq	64(%rax), %rax
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	movl	%r14d, %r9d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB5_1:                                # %if.else
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	(%rsp), %rax
	movq	176(%rax), %rcx
	testq	%rcx, %rcx
	movq	1016(%rbp), %rax
	movq	40(%rax), %rax
	je	.LBB5_3
# BB#2:                                 # %if.then.2
	movl	32(%rcx), %r13d
	movl	$0, 32(%rcx)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	callq	*%rax
	movq	(%rsp), %rax
	movq	176(%rax), %rax
	movl	%r13d, 32(%rax)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else.8
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	callq	*%rax
.LBB5_4:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_remap_concrete_DeviceN, .Lfunc_end5-gx_remap_concrete_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_DeviceN,@function
gx_remap_DeviceN:                       # @gx_remap_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$408, %rsp              # imm = 0x198
.Ltmp37:
	.cfi_def_cfa_offset 464
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%r15), %rax
	movq	%r15, %rdi
	callq	*24(%rax)
	movl	%eax, %ebp
	movq	64(%r15), %rax
	testq	%rax, %rax
	je	.LBB6_12
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 1024(%r13)
	je	.LBB6_12
# BB#2:                                 # %if.then
	movq	40(%r15), %rsi
	cmpl	$0, 216(%rax)
	je	.LBB6_11
# BB#3:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB6_9
# BB#4:                                 # %for.body.preheader
	xorl	%edx, %edx
	testb	$1, %bpl
	je	.LBB6_6
# BB#5:                                 # %for.body.prol
	movslq	156(%rax), %rcx
	movl	8(%rbx,%rcx,4), %ecx
	movl	%ecx, 16(%rsp)
	movl	$1, %edx
.LBB6_6:                                # %for.body.preheader.split
	cmpl	$1, %ebp
	je	.LBB6_9
# BB#7:                                 # %for.body.preheader.split.split
	subl	%edx, %ebp
	leaq	160(%rax,%rdx,4), %rax
	shlq	$2, %rdx
	leaq	8(%rsp), %rcx
	orq	%rdx, %rcx
	addq	$12, %rcx
	.align	16, 0x90
.LBB6_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rax), %rdx
	movl	8(%rbx,%rdx,4), %edx
	movl	%edx, -4(%rcx)
	movslq	(%rax), %rdx
	movl	8(%rbx,%rdx,4), %edx
	movl	%edx, (%rcx)
	addq	$8, %rax
	addq	$8, %rcx
	addl	$-2, %ebp
	jne	.LBB6_8
.LBB6_9:                                # %for.end
	movq	(%rsi), %rax
	leaq	8(%rsp), %rdi
	jmp	.LBB6_10
.LBB6_12:                               # %if.else.18
	movq	(%r15), %rax
	leaq	272(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB6_17
# BB#13:                                # %if.end.23
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*48(%rax)
	movq	(%rax), %r10
	leaq	272(%rsp), %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	movl	4(%rsp), %r9d           # 4-byte Reload
	callq	*64(%r10)
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	testl	%ecx, %ecx
	jle	.LBB6_16
# BB#14:                                # %for.body.32.lr.ph
	movslq	%ecx, %rcx
	.align	16, 0x90
.LBB6_15:                               # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rcx,4), %edx
	movl	%edx, 372(%r14,%rcx,4)
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB6_15
.LBB6_16:                               # %for.end.43
	movl	$1, 360(%r14)
	jmp	.LBB6_17
.LBB6_11:                               # %if.else
	movq	(%rsi), %rax
	movq	%rbx, %rdi
.LBB6_10:                               # %cleanup
	movq	%r14, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	movl	4(%rsp), %r9d           # 4-byte Reload
	callq	*72(%rax)
.LBB6_17:                               # %cleanup
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_remap_DeviceN, .Lfunc_end6-gx_remap_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_DeviceN,@function
gx_install_DeviceN:                     # @gx_install_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	check_DeviceN_component_names
	movq	336(%r14), %rsi
	cmpq	$0, 48(%rsi)
	je	.LBB7_7
# BB#1:                                 # %if.then.2
	movq	%rbx, %rdi
	callq	gsicc_finddevicen
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB7_3
# BB#2:                                 # %do.body.8
	incq	288(%rbp)
.LBB7_3:                                # %if.end.15
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_6
# BB#4:                                 # %do.end.25
	decq	288(%rsi)
	jne	.LBB7_6
# BB#5:                                 # %do.end.39
	movq	296(%rsi), %rdi
	movl	$.L.str.9, %edx
	callq	*304(%rsi)
	movq	$0, 64(%rbx)
.LBB7_6:                                # %if.end.55
	movq	%rbp, 64(%rbx)
.LBB7_7:                                # %if.end.57
	movl	1024(%r14), %eax
	movl	%eax, 104(%rbx)
	testl	%eax, %eax
	je	.LBB7_14
# BB#8:                                 # %land.lhs.true
	cmpq	$0, 64(%rbx)
	je	.LBB7_9
# BB#10:                                # %if.then.74
	movq	8(%r14), %rdx
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	movl	%eax, %ebp
	movq	64(%rbx), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 64(%rcx)
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_12
# BB#11:                                # %do.body.83
	incq	288(%rax)
.LBB7_12:                               # %do.end.95
	movq	8(%rsp), %rdi
	callq	rc_increment_cs
	movq	40(%rbx), %rdi
	movl	$.L.str.9, %esi
	callq	rc_decrement_cs
	movq	8(%rsp), %rax
	movq	%rax, 40(%rbx)
	jmp	.LBB7_13
.LBB7_9:                                # %if.then.66
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*80(%rax)
	movl	%eax, %ebp
.LBB7_13:                               # %if.end.99
	testl	%ebp, %ebp
	js	.LBB7_15
.LBB7_14:                               # %if.then.101
	movq	1872(%r14), %rdi
	movq	%r14, %rsi
	callq	*1616(%rdi)
	movl	%eax, %ebp
.LBB7_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_install_DeviceN, .Lfunc_end7-gx_install_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_DeviceN,@function
gx_set_overprint_DeviceN:               # @gx_set_overprint_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 80
.Ltmp55:
	.cfi_offset %rbx, -32
.Ltmp56:
	.cfi_offset %r14, -24
.Ltmp57:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1872(%r14), %r15
	leaq	40(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	check_DeviceN_component_names
	cmpl	$0, 1024(%r14)
	je	.LBB8_12
# BB#1:                                 # %if.then.2
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	40(%rsp), %rcx
	cmpl	$0, 172(%rcx)
	je	.LBB8_9
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 104(%r15)
	jne	.LBB8_9
# BB#3:                                 # %land.lhs.true.5
	cmpl	$1, 100(%r15)
	jg	.LBB8_5
# BB#4:                                 # %lor.lhs.false
	movzbl	110(%r15), %ecx
	cmpl	$255, %ecx
	je	.LBB8_5
# BB#6:                                 # %cond.false
	addq	$112, %r15
	jmp	.LBB8_7
.LBB8_12:                               # %if.else.26
	movl	272(%r14), %eax
	movl	%eax, 8(%rsp)
	testl	%eax, %eax
	je	.LBB8_24
# BB#13:                                # %if.then.28
	movl	80(%rbx), %eax
	movl	$0, 12(%rsp)
	movq	$0, 24(%rsp)
	movw	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	testl	%eax, %eax
	jle	.LBB8_24
# BB#14:                                # %for.body.preheader
	xorl	%edx, %edx
	testb	$1, %al
	movl	$0, %esi
	je	.LBB8_17
# BB#15:                                # %for.body.prol
	movl	1048(%r14), %ecx
	movl	$1, %esi
	xorl	%edx, %edx
	testl	%ecx, %ecx
	js	.LBB8_17
# BB#16:                                # %if.then.35.prol
	movl	$1, %esi
	movl	$1, %edx
	shlq	%cl, %rdx
	movq	%rdx, 24(%rsp)
.LBB8_17:                               # %for.body.preheader.split
	cmpl	$1, %eax
	je	.LBB8_24
# BB#18:                                # %for.body.preheader.split.split
	subl	%esi, %eax
	leaq	1052(%r14,%rsi,4), %rsi
	.align	16, 0x90
.LBB8_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rsi), %ecx
	testl	%ecx, %ecx
	js	.LBB8_21
# BB#20:                                # %if.then.35
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$1, %edi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 24(%rsp)
.LBB8_21:                               # %if.end.37
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	(%rsi), %ecx
	testl	%ecx, %ecx
	js	.LBB8_23
# BB#22:                                # %if.then.35.1
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$1, %edi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 24(%rsp)
.LBB8_23:                               # %if.end.37.1
                                        #   in Loop: Header=BB8_19 Depth=1
	addq	$8, %rsi
	addl	$-2, %eax
	jne	.LBB8_19
.LBB8_24:                               # %if.end.38
	movl	$0, 280(%r14)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_state_update_overprint
	jmp	.LBB8_25
.LBB8_5:                                # %cond.true
	addq	$116, %r15
.LBB8_7:                                # %cond.end
	cmpl	$31, (%r15)
	jae	.LBB8_8
.LBB8_9:                                # %if.else
	cmpl	$2, (%rax)
	jne	.LBB8_11
# BB#10:                                # %if.then.20
	movq	%r14, %rsi
	callq	*88(%rax)
	jmp	.LBB8_25
.LBB8_11:                               # %if.else.23
	movq	%r14, %rsi
	callq	gx_spot_colors_set_overprint
	jmp	.LBB8_25
.LBB8_8:                                # %if.then.15
	movq	%r14, %rsi
	callq	gx_simulated_set_overprint
.LBB8_25:                               # %cleanup.41
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gx_set_overprint_DeviceN, .Lfunc_end8-gx_set_overprint_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_DeviceN,@function
gx_final_DeviceN:                       # @gx_final_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %rbx, -24
.Ltmp62:
	.cfi_offset %r14, -16
	movq	88(%rdi), %rsi
	movq	96(%rdi), %rbx
	testq	%rsi, %rsi
	je	.LBB9_3
# BB#1:                                 # %do.end
	decq	(%rsi)
	jne	.LBB9_3
# BB#2:                                 # %do.end.20
	movq	8(%rsi), %rdi
	movl	$.L.str.11, %edx
	callq	*16(%rsi)
.LBB9_3:                                # %while.cond.preheader
	testq	%rbx, %rbx
	je	.LBB9_6
	.align	16, 0x90
.LBB9_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rdi
	movq	40(%rbx), %r14
	movl	$.L.str.12, %esi
	callq	rc_decrement_cs
	decq	(%rbx)
	jne	.LBB9_5
# BB#7:                                 # %do.end.62
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	8(%rbx), %rdi
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	*16(%rbx)
.LBB9_5:                                # %while.cond.backedge
                                        #   in Loop: Header=BB9_4 Depth=1
	testq	%r14, %r14
	movq	%r14, %rbx
	jne	.LBB9_4
.LBB9_6:                                # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	gx_final_DeviceN, .Lfunc_end9-gx_final_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_DeviceN,@function
gx_serialize_DeviceN:                   # @gx_serialize_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 32
.Ltmp66:
	.cfi_offset %rbx, -24
.Ltmp67:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB10_6
# BB#1:                                 # %if.end
	leaq	80(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB10_6
# BB#2:                                 # %if.end.4
	movq	72(%rbx), %rsi
	movl	80(%rbx), %edx
	shll	$3, %edx
	leaq	4(%rsp), %rcx
	movq	%r14, %rdi
	callq	sputs
	testl	%eax, %eax
	js	.LBB10_6
# BB#3:                                 # %if.end.11
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*112(%rax)
	testl	%eax, %eax
	js	.LBB10_6
# BB#4:                                 # %if.end.17
	movq	88(%rbx), %rcx
	movl	$map_devn_using_function, %edx
	movl	$-28, %eax
	cmpq	%rdx, 24(%rcx)
	jne	.LBB10_6
# BB#5:                                 # %if.end.i
	movq	32(%rcx), %rdi
	movq	%r14, %rsi
	callq	*64(%rdi)
.LBB10_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	gx_serialize_DeviceN, .Lfunc_end10-gx_serialize_DeviceN
	.cfi_endproc

	.align	16, 0x90
	.type	gx_polarity_DeviceN,@function
gx_polarity_DeviceN:                    # @gx_polarity_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	gx_polarity_DeviceN, .Lfunc_end11-gx_polarity_DeviceN
	.cfi_endproc

	.globl	gs_cspace_new_DeviceN
	.align	16, 0x90
	.type	gs_cspace_new_DeviceN,@function
gs_cspace_new_DeviceN:                  # @gs_cspace_new_DeviceN
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 64
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movl	%esi, %r12d
	movq	%rdi, %r15
	movl	$-15, %r13d
	testq	%rbp, %rbp
	je	.LBB12_8
# BB#1:                                 # %lor.lhs.false
	movq	(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB12_8
# BB#2:                                 # %if.end
	movl	$gs_color_space_type_DeviceN, %esi
	movq	%rbx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, %r14
	movl	$-25, %r13d
	testq	%r14, %r14
	je	.LBB12_8
# BB#3:                                 # %if.end.3
	movq	$0, 72(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 88(%r14)
	movl	$st_device_n_map, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%rax, %rax
	je	.LBB12_4
# BB#5:                                 # %if.end.8
	movq	$1, (%rax)
	movq	%rbx, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movq	%rax, 88(%r14)
	movl	$8, %edx
	movl	$.L.str.2, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*88(%rbx)
	testq	%rax, %rax
	je	.LBB12_6
# BB#7:                                 # %if.end.18
	movq	%rbp, 40(%r14)
	movq	%rbp, %rdi
	movq	%rax, %rbx
	callq	rc_increment_cs
	movq	%rbx, 72(%r14)
	movl	%r12d, 80(%r14)
	movq	%r14, (%r15)
	xorl	%r13d, %r13d
	jmp	.LBB12_8
.LBB12_6:                               # %if.then.12
	movq	88(%r14), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB12_4:                               # %if.then.7
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
.LBB12_8:                               # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_cspace_new_DeviceN, .Lfunc_end12-gs_cspace_new_DeviceN
	.cfi_endproc

	.globl	alloc_device_n_map
	.align	16, 0x90
	.type	alloc_device_n_map,@function
alloc_device_n_map:                     # @alloc_device_n_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 32
.Ltmp84:
	.cfi_offset %rbx, -24
.Ltmp85:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$st_device_n_map, %esi
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB13_2
# BB#1:                                 # %do.body.1
	movq	$1, (%rax)
	movq	%rbx, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
.LBB13_2:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	alloc_device_n_map, .Lfunc_end13-alloc_device_n_map
	.cfi_endproc

	.globl	gs_attachattributecolorspace
	.align	16, 0x90
	.type	gs_attachattributecolorspace,@function
gs_attachattributecolorspace:           # @gs_attachattributecolorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -40
.Ltmp92:
	.cfi_offset %r12, -32
.Ltmp93:
	.cfi_offset %r14, -24
.Ltmp94:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1616(%rbx), %rcx
	movl	$-15, %eax
	testq	%rcx, %rcx
	je	.LBB14_4
# BB#1:                                 # %if.end
	movq	1744(%rcx), %r12
	movl	$gs_color_space_type_DeviceN, %ecx
	cmpq	%rcx, (%r12)
	jne	.LBB14_4
# BB#2:                                 # %do.body
	movq	8(%rbx), %rdi
	movl	$st_device_n_attributes, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB14_4
# BB#3:                                 # %do.body.7
	movq	$1, (%r15)
	movq	8(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	$rc_free_struct_only, 16(%r15)
	movq	%r14, 24(%r15)
	movq	1744(%rbx), %rdi
	movq	%rdi, 32(%r15)
	callq	rc_increment_cs
	movq	96(%r12), %rax
	movq	%rax, 40(%r15)
	movq	%r15, 96(%r12)
	xorl	%eax, %eax
.LBB14_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	gs_attachattributecolorspace, .Lfunc_end14-gs_attachattributecolorspace
	.cfi_endproc

	.globl	using_alt_color_space
	.align	16, 0x90
	.type	using_alt_color_space,@function
using_alt_color_space:                  # @using_alt_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	movl	1024(%rdi), %eax
	retq
.Lfunc_end15:
	.size	using_alt_color_space, .Lfunc_end15-using_alt_color_space
	.cfi_endproc

	.globl	map_devn_using_function
	.align	16, 0x90
	.type	map_devn_using_function,@function
map_devn_using_function:                # @map_devn_using_function
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %r8
	movq	%rdi, %rdx
	movq	8(%rcx), %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	map_devn_using_function, .Lfunc_end16-map_devn_using_function
	.cfi_endproc

	.globl	gs_cspace_set_devn_function
	.align	16, 0x90
	.type	gs_cspace_set_devn_function,@function
gs_cspace_set_devn_function:            # @gs_cspace_set_devn_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp99:
	.cfi_def_cfa_offset 48
.Ltmp100:
	.cfi_offset %rbx, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	$-15, %ebp
	cmpl	$4, %eax
	jne	.LBB17_4
# BB#1:                                 # %lor.lhs.false
	movl	72(%r14), %eax
	cmpl	80(%rbx), %eax
	jne	.LBB17_4
# BB#2:                                 # %lor.lhs.false.3
	movl	88(%r14), %r15d
	movq	40(%rbx), %rdi
	callq	gs_color_space_num_components
	cmpl	%eax, %r15d
	jne	.LBB17_4
# BB#3:                                 # %if.end
	movq	88(%rbx), %rax
	movq	$map_devn_using_function, 24(%rax)
	movq	%r14, 32(%rax)
	movl	$0, 40(%rax)
	xorl	%ebp, %ebp
.LBB17_4:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_cspace_set_devn_function, .Lfunc_end17-gs_cspace_set_devn_function
	.cfi_endproc

	.globl	gs_cspace_get_devn_function
	.align	16, 0x90
	.type	gs_cspace_get_devn_function,@function
gs_cspace_get_devn_function:            # @gs_cspace_get_devn_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$4, %ecx
	jne	.LBB18_3
# BB#1:                                 # %land.lhs.true
	movq	88(%rbx), %rcx
	movl	$map_devn_using_function, %edx
	xorl	%eax, %eax
	cmpq	%rdx, 24(%rcx)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movq	32(%rcx), %rax
.LBB18_3:                               # %return
	popq	%rbx
	retq
.Lfunc_end18:
	.size	gs_cspace_get_devn_function, .Lfunc_end18-gs_cspace_get_devn_function
	.cfi_endproc

	.globl	gx_serialize_device_n_map
	.align	16, 0x90
	.type	gx_serialize_device_n_map,@function
gx_serialize_device_n_map:              # @gx_serialize_device_n_map
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$map_devn_using_function, %eax
	cmpq	%rax, 24(%rsi)
	je	.LBB19_2
# BB#1:                                 # %cleanup
	movl	$-28, %eax
	retq
.LBB19_2:                               # %if.end
	movq	32(%rsi), %rdi
	movq	64(%rdi), %rax
	movq	%rdx, %rsi
	jmpq	*%rax                   # TAILCALL
.Lfunc_end19:
	.size	gx_serialize_device_n_map, .Lfunc_end19-gx_serialize_device_n_map
	.cfi_endproc

	.align	16, 0x90
	.type	cs_DeviceN_enum_ptrs,@function
cs_DeviceN_enum_ptrs:                   # @cs_DeviceN_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB20_5
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB20_2
# BB#6:                                 # %sw.bb.7
	movq	88(%rsi), %rax
	jmp	.LBB20_8
.LBB20_5:                               # %sw.bb
	movq	72(%rsi), %rax
	jmp	.LBB20_8
.LBB20_2:                               # %entry
	cmpl	$2, %ecx
	jne	.LBB20_3
# BB#7:                                 # %sw.bb.11
	movq	96(%rsi), %rax
.LBB20_8:                               # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB20_9:                               # %return
	retq
.LBB20_3:                               # %sw.default
	addl	$-3, %ecx
	xorl	%eax, %eax
	cmpl	80(%rsi), %ecx
	jae	.LBB20_9
# BB#4:                                 # %if.then
	movslq	%ecx, %rax
	movq	72(%rsi), %rcx
	movl	(%rcx,%rax,8), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_name_index_procs, %eax
	retq
.Lfunc_end20:
	.size	cs_DeviceN_enum_ptrs, .Lfunc_end20-cs_DeviceN_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cs_DeviceN_reloc_ptrs,@function
cs_DeviceN_reloc_ptrs:                  # @cs_DeviceN_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp108:
	.cfi_def_cfa_offset 32
.Ltmp109:
	.cfi_offset %rbx, -24
.Ltmp110:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	72(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 72(%r14)
	movq	(%rbx), %rax
	movq	88(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 88(%r14)
	movq	(%rbx), %rax
	movq	96(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 96(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end21:
	.size	cs_DeviceN_reloc_ptrs, .Lfunc_end21-cs_DeviceN_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	check_DeviceN_component_names,@function
check_DeviceN_component_names:          # @check_DeviceN_component_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 80
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	72(%r15), %rbp
	movl	80(%r15), %r12d
	movq	1872(%rsi), %rbx
	movl	%r12d, 1032(%rsi)
	movq	32(%r15), %rax
	movq	%rax, 1040(%rsi)
	movl	100(%rbx), %eax
	movl	%eax, 1036(%rsi)
	movl	$2, 1028(%rsi)
	cmpl	$1, 104(%rbx)
	jne	.LBB22_1
# BB#11:                                # %if.then
	movl	$1, 1024(%rsi)
	jmp	.LBB22_10
.LBB22_1:                               # %for.cond.preheader
	movq	%rsi, (%rsp)            # 8-byte Spill
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	jle	.LBB22_9
# BB#2:                                 # %for.body.lr.ph
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	1048(%rax), %r13
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB22_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdi
	movq	(%rbp), %rsi
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	*112(%r15)
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	testl	%eax, %eax
	js	.LBB22_5
# BB#4:                                 # %if.then.12
                                        #   in Loop: Header=BB22_3 Depth=1
	cmpl	$64, %eax
	movl	$-1, %ecx
	cmovel	%ecx, %eax
	movl	%eax, (%r13)
	jmp	.LBB22_7
	.align	16, 0x90
.LBB22_5:                               # %if.else
                                        #   in Loop: Header=BB22_3 Depth=1
	movq	16(%rsp), %rdi
	movl	12(%rsp), %edx
	movl	$.L.str.10, %esi
	callq	strncmp
	movl	$1, %ecx
	testl	%eax, %eax
	jne	.LBB22_8
# BB#6:                                 # %if.else.20
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	$-1, (%r13)
	.align	16, 0x90
.LBB22_7:                               # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	%r14d, %ecx
.LBB22_8:                               # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	addq	$8, %rbp
	addq	$4, %r13
	decl	%r12d
	movl	%ecx, %r14d
	jne	.LBB22_3
.LBB22_9:                               # %for.end
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%ecx, 1024(%rax)
.LBB22_10:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	check_DeviceN_component_names, .Lfunc_end22-check_DeviceN_component_names
	.cfi_endproc

	.type	st_color_space_DeviceN,@object # @st_color_space_DeviceN
	.section	.rodata,"a",@progbits
	.align	8
st_color_space_DeviceN:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	cs_DeviceN_enum_ptrs
	.quad	cs_DeviceN_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_color_space_DeviceN, 64

	.type	gs_color_space_type_DeviceN,@object # @gs_color_space_type_DeviceN
	.globl	gs_color_space_type_DeviceN
	.align	8
gs_color_space_type_DeviceN:
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	st_color_space_DeviceN
	.quad	gx_num_components_DeviceN
	.quad	gx_init_DeviceN
	.quad	gx_restrict_DeviceN
	.quad	gx_concrete_space_DeviceN
	.quad	gx_concretize_DeviceN
	.quad	gx_remap_concrete_DeviceN
	.quad	gx_remap_DeviceN
	.quad	gx_install_DeviceN
	.quad	gx_set_overprint_DeviceN
	.quad	gx_final_DeviceN
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_DeviceN
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_DeviceN
	.size	gs_color_space_type_DeviceN, 136

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cspace_build_DeviceN"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_cspace_new_DeviceN"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	".gs_cspace_build_DeviceN(names)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	".gs_cspace_build_DeviceN(map)"
	.size	.L.str.3, 30

	.type	st_device_n_map,@object # @st_device_n_map
	.section	.rodata,"a",@progbits
	.align	8
st_device_n_map:
	.long	432                     # 0x1b0
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	device_n_map_reloc_ptrs
	.size	st_device_n_map, 64

	.type	st_device_n_attributes,@object # @st_device_n_attributes
	.align	8
st_device_n_attributes:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	device_n_attributes_reloc_ptrs
	.size	st_device_n_attributes, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_attachattributrescolorspace"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_color_space_DeviceN"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_device_n_map"
	.size	.L.str.6, 16

	.type	device_n_map_reloc_ptrs,@object # @device_n_map_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_n_map_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	device_n_map_enum_ptrs
	.size	device_n_map_reloc_ptrs, 24

	.type	device_n_map_enum_ptrs,@object # @device_n_map_enum_ptrs
	.align	2
device_n_map_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	device_n_map_enum_ptrs, 4

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gs_device_n_attributes"
	.size	.L.str.7, 23

	.type	device_n_attributes_reloc_ptrs,@object # @device_n_attributes_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_n_attributes_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	device_n_attributes_enum_ptrs
	.size	device_n_attributes_reloc_ptrs, 24

	.type	device_n_attributes_enum_ptrs,@object # @device_n_attributes_enum_ptrs
	.align	2
device_n_attributes_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.short	40                      # 0x28
	.size	device_n_attributes_enum_ptrs, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gx_remap_concrete_DeviceN"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_install_DeviceN"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"None"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_adjust_DeviceN"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_final_DeviceN"
	.size	.L.str.12, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
