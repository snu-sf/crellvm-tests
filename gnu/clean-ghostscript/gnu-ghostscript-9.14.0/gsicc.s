	.text
	.file	"gsicc.bc"
	.align	16, 0x90
	.type	gx_num_components_ICC,@function
gx_num_components_ICC:                  # @gx_num_components_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	movzbl	(%rax), %eax
	retq
.Lfunc_end0:
	.size	gx_num_components_ICC, .Lfunc_end0-gx_num_components_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_init_ICC,@function
gx_init_ICC:                            # @gx_init_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rsi), %rax
	movzbl	(%rax), %r11d
	testq	%r11, %r11
	je	.LBB1_14
# BB#1:                                 # %for.body.lr.ph
	leal	-1(%r11), %r9d
	incq	%r9
	movl	%r11d, %edx
	andl	$7, %edx
	xorl	%r10d, %r10d
	movq	%r9, %r8
	subq	%rdx, %r8
	je	.LBB1_5
# BB#2:                                 # %vector.body.preheader
	leaq	24(%rdi), %rsi
	leal	-1(%r11), %edx
	incq	%rdx
	movl	%r11d, %ecx
	andl	$7, %ecx
	subq	%rcx, %rdx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	addq	$-8, %rdx
	jne	.LBB1_3
# BB#4:
	movq	%r8, %r10
.LBB1_5:                                # %middle.block
	cmpq	%r10, %r9
	je	.LBB1_8
# BB#6:                                 # %for.body.preheader
	leaq	8(%rdi,%r10,4), %rdx
	movl	%r11d, %esi
	subl	%r10d, %esi
	.align	16, 0x90
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdx)
	addq	$4, %rdx
	decl	%esi
	jne	.LBB1_7
.LBB1_8:                                # %for.end
	testb	%r11b, %r11b
	je	.LBB1_14
# BB#9:                                 # %for.body.lr.ph.i
	addq	$24, %rax
	addq	$8, %rdi
	.align	16, 0x90
.LBB1_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB1_12
# BB#11:                                # %if.else.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB1_13
.LBB1_12:                               # %if.then.22.i
                                        #   in Loop: Header=BB1_10 Depth=1
	movss	%xmm1, (%rdi)
.LBB1_13:                               # %if.end.28.i
                                        #   in Loop: Header=BB1_10 Depth=1
	addq	$8, %rax
	addq	$4, %rdi
	decl	%r11d
	jne	.LBB1_10
.LBB1_14:                               # %gx_restrict_ICC.exit
	retq
.Lfunc_end1:
	.size	gx_init_ICC, .Lfunc_end1-gx_init_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_restrict_ICC,@function
gx_restrict_ICC:                        # @gx_restrict_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rsi), %rax
	movzbl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB2_6
# BB#1:                                 # %for.body.lr.ph
	addq	$8, %rdi
	addq	$24, %rax
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB2_4
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB2_5
.LBB2_4:                                # %if.then.22
                                        #   in Loop: Header=BB2_2 Depth=1
	movss	%xmm1, (%rdi)
.LBB2_5:                                # %if.end.28
                                        #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdi
	addq	$8, %rax
	decl	%ecx
	jne	.LBB2_2
.LBB2_6:                                # %for.end
	retq
.Lfunc_end2:
	.size	gx_restrict_ICC, .Lfunc_end2-gx_restrict_ICC
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI3_2:
	.quad	4679239875398991872     # double 65535
.LCPI3_3:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI3_4:
	.quad	4674734214187319296     # double 32760
	.text
	.align	16, 0x90
	.type	gx_concretize_ICC,@function
gx_concretize_ICC:                      # @gx_concretize_ICC
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
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	movq	8(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r13d
	movl	328(%r12), %eax
	movl	%eax, 276(%rsp)
	movl	1112(%r15), %eax
	movl	%eax, 284(%rsp)
	movl	$0, 292(%rsp)
	movl	$8, 280(%rsp)
	movl	324(%r12), %eax
	movl	%eax, 272(%rsp)
	movl	$0, 288(%rsp)
	movq	64(%rbp), %rax
	movzbl	(%rax), %r8d
	testq	%r8, %r8
	je	.LBB3_8
# BB#1:                                 # %for.body.lr.ph
	movl	%r8d, %edx
	andl	$3, %edx
	xorl	%ecx, %ecx
	cmpl	%edx, %r8d
	je	.LBB3_5
# BB#2:                                 # %vector.body.preheader
	movq	%rbp, %r10
	movq	%rbx, %r9
	movq	%r8, %rcx
	subq	%rdx, %rcx
	leaq	16(%r14), %rdx
	leaq	148(%rsp), %rsi
	movl	%r8d, %ebp
	andl	$3, %ebp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	movapd	.LCPI3_0(%rip), %xmm0   # xmm0 = [6.553500e+04,6.553500e+04]
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movabsq	$-9223372036854775808, %rbp # imm = 0x8000000000000000
	.align	16, 0x90
.LBB3_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rdx), %xmm4
	cvtps2pd	(%rdx), %xmm2
	mulpd	%xmm0, %xmm4
	mulpd	%xmm0, %xmm2
	movapd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm4, %rbx
	ucomisd	%xmm1, %xmm4
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm3
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	movapd	%xmm4, %xmm5
	subsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm4, %rbx
	ucomisd	%xmm1, %xmm4
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm4
	punpcklqdq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0]
	movapd	%xmm2, %xmm4
	subsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm2, %rbx
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm4
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movapd	%xmm2, %xmm5
	subsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm2, %rbx
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm2
	punpcklqdq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0]
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, -4(%rsi)
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, (%rsi)
	addq	$16, %rdx
	addq	$8, %rsi
	addq	$-4, %rdi
	jne	.LBB3_3
# BB#4:
	movq	%r9, %rbx
	movq	%r10, %rbp
.LBB3_5:                                # %middle.block
	cmpq	%rcx, %r8
	je	.LBB3_8
# BB#6:                                 # %for.body.preheader
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r14,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, 144(%rsp,%rcx,2)
	incq	%rcx
	cmpq	%r8, %rcx
	jl	.LBB3_7
.LBB3_8:                                # %for.end
	movq	8(%r12), %r9
	leaq	272(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	gsicc_get_link
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_9
# BB#10:                                # %if.end
	cmpl	$0, 116(%rbp)
	je	.LBB3_12
# BB#11:
	leaq	144(%rsp), %r12
	jmp	.LBB3_13
.LBB3_9:                                # %if.then
	movl	$.L__func__.gx_concretize_ICC, %edi
	movl	$.L.str, %esi
	movl	$551, %edx              # imm = 0x227
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB3_20
.LBB3_12:                               # %if.else
	leaq	144(%rsp), %rdx
	leaq	16(%rsp), %r12
	movl	$2, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rcx
	callq	*16(%rbp)
.LBB3_13:                               # %if.end.16
	testl	%r13d, %r13d
	jle	.LBB3_19
# BB#14:                                # %for.body.20.preheader
	xorl	%ecx, %ecx
	testb	$1, %r13b
	je	.LBB3_16
# BB#15:                                # %for.body.20.prol
	movzwl	(%r12), %eax
	cvtsi2ssl	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI3_2(%rip), %xmm0
	addsd	.LCPI3_3(%rip), %xmm0
	mulsd	.LCPI3_4(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, (%rbx)
	movl	$1, %ecx
.LBB3_16:                               # %for.body.20.preheader.split
	cmpl	$1, %r13d
	je	.LBB3_19
# BB#17:                                # %for.body.20.preheader.split.split
	subl	%ecx, %r13d
	leaq	2(%rbx,%rcx,2), %rax
	leaq	2(%r12,%rcx,2), %rcx
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI3_4(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB3_18:                               # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rcx), %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %edx
	movw	%dx, -2(%rax)
	movzwl	(%rcx), %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edx, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %edx
	movw	%dx, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addl	$-2, %r13d
	jne	.LBB3_18
.LBB3_19:                               # %for.end.31
	movq	%rbp, %rdi
	callq	gsicc_release_link
	xorl	%eax, %eax
.LBB3_20:                               # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_concretize_ICC, .Lfunc_end3-gx_concretize_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_concrete_ICC,@function
gx_remap_concrete_ICC:                  # @gx_remap_concrete_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %rbx
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %r13
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	8(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	cmpl	$4, %eax
	je	.LBB4_5
# BB#1:                                 # %entry
	cmpl	$3, %eax
	jne	.LBB4_2
# BB#4:                                 # %sw.bb.3
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movl	%r14d, %r9d
	callq	gx_remap_concrete_DRGB
	movl	%eax, %ebp
	jmp	.LBB4_10
.LBB4_5:                                # %sw.bb.5
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movl	%r14d, %r9d
	callq	gx_remap_concrete_DCMYK
	movl	%eax, %ebp
	jmp	.LBB4_10
.LBB4_2:                                # %entry
	cmpl	$1, %eax
	jne	.LBB4_6
# BB#3:                                 # %sw.bb
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movl	%r14d, %r9d
	callq	gx_remap_concrete_DGray
	movl	%eax, %ebp
	jmp	.LBB4_10
.LBB4_6:                                # %sw.default
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movl	%eax, %ebp
	movq	16(%rsp), %rax
	movq	176(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true.i
	cmpl	$0, 32(%rcx)
	jne	.LBB4_9
# BB#8:                                 # %if.then.i
	movq	(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gsicc_set_devicen_equiv_colors
	movl	%eax, %ebp
	movq	16(%rsp), %rax
	movq	176(%rax), %rax
	movl	$1, 32(%rax)
.LBB4_9:                                # %gx_remap_concrete_icc_devicen.exit
	movq	1016(%r12), %rax
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	callq	*40(%rax)
.LBB4_10:                               # %sw.epilog
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_remap_concrete_ICC, .Lfunc_end4-gx_remap_concrete_ICC
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI5_2:
	.quad	4679239875398991872     # double 65535
.LCPI5_3:
	.quad	4636737291354636288     # double 100
.LCPI5_5:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_4:
	.long	1124073472              # float 128
	.text
	.align	16, 0x90
	.type	gx_remap_ICC,@function
gx_remap_ICC:                           # @gx_remap_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp32:
	.cfi_def_cfa_offset 512
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leaq	40(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_1
# BB#3:                                 # %if.end
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r15d
	movl	328(%r13), %eax
	movl	%eax, 436(%rsp)
	movl	1112(%r12), %eax
	movl	%eax, 444(%rsp)
	movl	$0, 452(%rsp)
	movl	$8, 440(%rsp)
	movl	324(%r13), %eax
	movq	%r13, %rbp
	movl	%eax, 432(%rsp)
	movl	$0, 448(%rsp)
	leaq	176(%rsp), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movq	64(%r14), %rax
	cmpl	$6, 16(%rax)
	movq	%r12, %r13
	movq	%r14, %rdx
	je	.LBB5_33
# BB#4:                                 # %lor.lhs.false
	cmpl	$0, 4(%rax)
	je	.LBB5_5
.LBB5_33:                               # %if.then.7
	movq	32(%rsp), %r14          # 8-byte Reload
	movss	8(%r14), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI5_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	.LCPI5_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, 304(%rsp)
	movss	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	12(%r14), %xmm2         # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI5_5(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movw	%ax, 306(%rsp)
	addss	16(%r14), %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movw	%ax, 308(%rsp)
.LBB5_13:                               # %if.end.39
	movq	8(%rbp), %r9
	leaq	432(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	callq	gsicc_get_link
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB5_14
# BB#15:                                # %if.end.45
	cmpl	$0, 116(%r12)
	je	.LBB5_17
# BB#16:
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leaq	304(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB5_18
.LBB5_1:                                # %if.then
	movl	$.L__func__.gx_remap_ICC, %edi
	movl	$.L.str, %esi
	movl	$381, %edx              # imm = 0x17D
	xorl	%ecx, %ecx
	movl	$-100, %r8d
	movl	$.L.str.2, %r9d
	jmp	.LBB5_2
.LBB5_14:                               # %if.then.43
	movl	$.L__func__.gx_remap_ICC, %edi
	movl	$.L.str, %esi
	movl	$407, %edx              # imm = 0x197
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.1, %r9d
.LBB5_2:                                # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB5_32
.LBB5_17:                               # %if.else.49
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leaq	304(%rsp), %rdx
	movl	$2, %r8d
	movq	%r13, %rdi
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%r12, %rsi
	leaq	176(%rsp), %rcx
	callq	*16(%r12)
.LBB5_18:                               # %if.end.53
	movq	%r12, %rdi
	callq	gsicc_release_link
	testl	%r15d, %r15d
	jle	.LBB5_29
# BB#19:                                # %for.body.57.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%edi, %edi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB5_26
# BB#20:                                # %vector.body65.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsi
	shrq	$4, %rsi
	xorl	%ebp, %ebp
	btq	$4, %rdi
	jb	.LBB5_22
# BB#21:                                # %vector.body65.prol
	movq	24(%rsp), %rdi          # 8-byte Reload
	movdqa	(%rdi), %xmm0
	movdqa	16(%rdi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, 48(%rsp)
	movdqa	%xmm3, 64(%rsp)
	movl	$16, %ebp
.LBB5_22:                               # %vector.body65.preheader.split
	testq	%rsi, %rsi
	je	.LBB5_25
# BB#23:                                # %vector.body65.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbp, %rcx
	movq	24(%rsp), %rsi          # 8-byte Reload
	leaq	48(%rsi,%rbp,2), %rsi
	leaq	96(%rsp,%rbp,2), %rdi
	.align	16, 0x90
.LBB5_24:                               # %vector.body65
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-48(%rsi), %xmm0
	movdqa	-32(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, -48(%rdi)
	movdqa	%xmm3, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, -16(%rdi)
	movdqa	%xmm3, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB5_24
.LBB5_25:
	movq	%rdx, %rdi
.LBB5_26:                               # %middle.block66
	cmpq	%rdi, %rax
	je	.LBB5_29
# BB#27:                                # %for.body.57.preheader90
	leaq	48(%rsp,%rdi,2), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdi,2), %rcx
	subl	%edi, %r15d
	.align	16, 0x90
.LBB5_28:                               # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	movl	%edx, %esi
	shrl	%esi
	shrl	$13, %edx
	subl	%edx, %esi
	movw	%si, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r15d
	jne	.LBB5_28
.LBB5_29:                               # %for.end.70
	leaq	48(%rsp), %rdi
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	(%rsp), %r8             # 8-byte Reload
	movl	20(%rsp), %r9d          # 4-byte Reload
	callq	gx_remap_concrete_ICC
	movq	64(%rbp), %rax
	movzbl	(%rax), %eax
	testq	%rax, %rax
	je	.LBB5_31
	.align	16, 0x90
.LBB5_30:                               # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r14,%rax,4), %ecx
	movl	%ecx, 372(%rbx,%rax,4)
	cmpq	$1, %rax
	leaq	-1(%rax), %rax
	jg	.LBB5_30
.LBB5_31:                               # %for.end.90
	movl	$1, 360(%rbx)
	xorl	%eax, %eax
.LBB5_32:                               # %cleanup
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_5:                                # %for.cond.preheader
	movzbl	(%rax), %r8d
	testq	%r8, %r8
	movq	32(%rsp), %r14          # 8-byte Reload
	je	.LBB5_13
# BB#6:                                 # %for.body.lr.ph
	movq	%r14, %r12
	movl	%r8d, %eax
	andl	$3, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %r8d
	je	.LBB5_10
# BB#7:                                 # %vector.body.preheader
	movq	%rdx, %r14
	movq	%r13, %r10
	movq	%rbp, %r11
	movq	%r8, %rcx
	subq	%rax, %rcx
	leaq	16(%r12), %rdx
	leaq	308(%rsp), %rsi
	movl	%r8d, %ebp
	andl	$3, %ebp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	movapd	.LCPI5_0(%rip), %xmm0   # xmm0 = [6.553500e+04,6.553500e+04]
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movabsq	$-9223372036854775808, %r9 # imm = 0x8000000000000000
	.align	16, 0x90
.LBB5_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rdx), %xmm4
	cvtps2pd	(%rdx), %xmm2
	mulpd	%xmm0, %xmm4
	mulpd	%xmm0, %xmm2
	movapd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %rax
	xorq	%r9, %rax
	cvttsd2si	%xmm4, %rbp
	ucomisd	%xmm1, %xmm4
	cmovaeq	%rax, %rbp
	movd	%rbp, %xmm3
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	movapd	%xmm4, %xmm5
	subsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rax
	xorq	%r9, %rax
	cvttsd2si	%xmm4, %rbp
	ucomisd	%xmm1, %xmm4
	cmovaeq	%rax, %rbp
	movd	%rbp, %xmm4
	punpcklqdq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0]
	movapd	%xmm2, %xmm4
	subsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %rax
	xorq	%r9, %rax
	cvttsd2si	%xmm2, %rbp
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rbp
	movd	%rbp, %xmm4
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movapd	%xmm2, %xmm5
	subsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rax
	xorq	%r9, %rax
	cvttsd2si	%xmm2, %rbp
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rbp
	movd	%rbp, %xmm2
	punpcklqdq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0]
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, -4(%rsi)
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, (%rsi)
	addq	$16, %rdx
	addq	$8, %rsi
	addq	$-4, %rdi
	jne	.LBB5_8
# BB#9:
	movq	%r11, %rbp
	movq	%r10, %r13
	movq	%r14, %rdx
.LBB5_10:                               # %middle.block
	cmpq	%rcx, %r8
	movq	%r12, %r14
	je	.LBB5_13
# BB#11:
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB5_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r14,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, 304(%rsp,%rcx,2)
	incq	%rcx
	cmpq	%r8, %rcx
	jl	.LBB5_12
	jmp	.LBB5_13
.Lfunc_end5:
	.size	gx_remap_ICC, .Lfunc_end5-gx_remap_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_ICC,@function
gx_install_ICC:                         # @gx_install_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gx_install_ICC, .Lfunc_end6-gx_install_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_ICC,@function
gx_set_overprint_ICC:                   # @gx_set_overprint_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r12, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	1872(%r15), %rbx
	leaq	96(%rbx), %r12
	testq	%rbx, %rbx
	cmoveq	%rbx, %r12
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	cmpl	$0, 272(%r15)
	je	.LBB7_6
# BB#1:                                 # %lor.lhs.false
	testq	%rbx, %rbx
	je	.LBB7_6
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, 276(%r15)
	jne	.LBB7_6
# BB#3:                                 # %lor.lhs.false.4
	movq	64(%r14), %rax
	cmpl	$3, 16(%rax)
	jne	.LBB7_6
# BB#4:                                 # %lor.lhs.false.6
	movl	696(%r12), %eax
	leal	-2(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB7_5
# BB#7:                                 # %if.then.14
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_set_overprint_rgb
	jmp	.LBB7_9
.LBB7_5:                                # %lor.lhs.false.6
	testl	%eax, %eax
	jne	.LBB7_8
.LBB7_6:                                # %if.then
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_spot_colors_set_overprint
.LBB7_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB7_8:                                # %if.else
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_set_overprint_cmyk
	jmp	.LBB7_9
.Lfunc_end7:
	.size	gx_set_overprint_ICC, .Lfunc_end7-gx_set_overprint_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_ICC,@function
gx_final_ICC:                           # @gx_final_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB8_2
# BB#1:                                 # %do.end
	decq	288(%rsi)
	je	.LBB8_3
.LBB8_2:                                # %if.end.27
	retq
.LBB8_3:                                # %do.end.14
	movq	296(%rsi), %rdi
	movq	304(%rsi), %rax
	movl	$.L.str.3, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end8:
	.size	gx_final_ICC, .Lfunc_end8-gx_final_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_ICC,@function
gx_serialize_ICC:                       # @gx_serialize_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -24
.Ltmp52:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB9_2
# BB#1:                                 # %if.end
	movq	64(%rbx), %rsi
	leaq	4(%rsp), %rcx
	movl	$256, %edx              # imm = 0x100
	movq	%r14, %rdi
	callq	sputs
.LBB9_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	gx_serialize_ICC, .Lfunc_end9-gx_serialize_ICC
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1199570688              # float 65535
.LCPI10_1:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_2:
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
.LCPI10_3:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	gx_cspace_is_linear_ICC,@function
gx_cspace_is_linear_ICC:                # @gx_cspace_is_linear_ICC
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
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$792, %rsp              # imm = 0x318
.Ltmp59:
	.cfi_def_cfa_offset 848
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movq	%r9, %r13
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	movq	856(%rsp), %r14
	movq	848(%rsp), %r15
	cmpl	$1, 100(%rbx)
	jg	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movzbl	110(%rbx), %eax
	cmpl	$255, %eax
	je	.LBB10_2
# BB#3:                                 # %cond.false
	leaq	112(%rbx), %rcx
	jmp	.LBB10_4
.LBB10_2:                               # %cond.true
	leaq	116(%rbx), %rcx
.LBB10_4:                               # %cond.end
	xorl	%eax, %eax
	cmpl	$31, (%rcx)
	jb	.LBB10_23
# BB#5:                                 # %if.end
	movl	$1, %eax
	cmpl	$0, 116(%r14)
	jne	.LBB10_23
# BB#6:                                 # %if.end.9
	movl	$-15, %eax
	cmpl	$1, 136(%rbx)
	jne	.LBB10_23
# BB#7:                                 # %if.end.14
	testq	%r13, %r13
	je	.LBB10_8
# BB#21:                                # %if.end.18
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%r13, %r8
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%r14, %r9
	callq	gx_icc_is_linear_in_triangle
	testl	%eax, %eax
	jle	.LBB10_23
# BB#22:                                # %if.end.23
	testq	%r15, %r15
	movl	$1, %eax
	je	.LBB10_23
# BB#24:                                # %if.end.27
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r13, %rcx
	movq	%r15, %r8
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%r14, %r9
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_icc_is_linear_in_triangle # TAILCALL
.LBB10_8:                               # %if.then.17
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	movl	%eax, %r13d
	leaq	784(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	784(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r15d
	testl	%r13d, %r13d
	jle	.LBB10_16
# BB#9:                                 # %for.body.i.preheader
	leal	-1(%r13), %ecx
	leaq	1(%rcx), %r8
	xorl	%edi, %edi
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	movq	%r8, %r9
	andq	%rax, %r9
	je	.LBB10_13
# BB#10:                                # %vector.body.preheader
	leaq	8(%r12), %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	8(%rdx), %rdi
	incq	%rcx
	andq	%rax, %rcx
	leaq	656(%rsp), %rbp
	leaq	528(%rsp), %rax
	leaq	400(%rsp), %rdx
	movaps	.LCPI10_2(%rip), %xmm0  # xmm0 = [6.553500e+04,6.553500e+04,6.553500e+04,6.553500e+04]
	movdqa	.LCPI10_3(%rip), %xmm1  # xmm1 = [65535,65535,65535,65535]
	.align	16, 0x90
.LBB10_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rsi), %xmm2
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm2, %xmm2
	pshuflw	$232, %xmm2, %xmm3      # xmm3 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rbp)
	movups	(%rdi), %xmm3
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm3, %xmm3
	pshuflw	$232, %xmm3, %xmm4      # xmm4 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	movq	%xmm4, (%rax)
	pand	%xmm1, %xmm2
	pand	%xmm1, %xmm3
	paddd	%xmm2, %xmm3
	psrld	$1, %xmm3
	pshuflw	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, (%rdx)
	addq	$16, %rsi
	addq	$8, %rbp
	addq	$16, %rdi
	addq	$8, %rax
	addq	$8, %rdx
	addq	$-4, %rcx
	jne	.LBB10_11
# BB#12:
	movq	%r9, %rdi
.LBB10_13:                              # %middle.block
	cmpq	%rdi, %r8
	je	.LBB10_16
# BB#14:                                # %for.body.i.preheader23
	subl	%edi, %r13d
	leaq	400(%rsp,%rdi,2), %r8
	leaq	528(%rsp,%rdi,2), %r9
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	8(%rax,%rdi,4), %rdx
	leaq	656(%rsp,%rdi,2), %rsi
	leaq	8(%r12,%rdi,4), %rdi
	xorl	%ebp, %ebp
	movss	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB10_15:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi,%rbp,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movw	%ax, (%rsi,%rbp,2)
	movss	(%rdx,%rbp,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movw	%cx, (%r9,%rbp,2)
	movzwl	%ax, %eax
	movzwl	%cx, %ecx
	addl	%eax, %ecx
	shrl	%ecx
	movw	%cx, (%r8,%rbp,2)
	incq	%rbp
	cmpl	%ebp, %r13d
	jne	.LBB10_15
.LBB10_16:                              # %for.end.i
	leaq	656(%rsp), %rdx
	leaq	272(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%r14)
	leaq	528(%rsp), %rdx
	leaq	144(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%r14)
	leaq	400(%rsp), %rdx
	leaq	16(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%r14)
	movl	$1, %eax
	testl	%r15d, %r15d
	jle	.LBB10_23
# BB#17:                                # %for.body.37.lr.ph.i
	movss	4(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI10_0(%rip), %xmm1
	movss	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	maxss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movzwl	%cx, %ecx
	movslq	%r15d, %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB10_19:                              # %for.body.37.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	272(%rsp,%rsi,2), %edi
	movzwl	144(%rsp,%rsi,2), %ebp
	addl	%edi, %ebp
	shrl	%ebp
	movzwl	16(%rsp,%rsi,2), %edi
	subl	%edi, %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	cmpl	%ecx, %edi
	jg	.LBB10_20
# BB#18:                                # %for.cond.34.i
                                        #   in Loop: Header=BB10_19 Depth=1
	incq	%rsi
	cmpq	%rdx, %rsi
	jl	.LBB10_19
	jmp	.LBB10_23
.LBB10_20:
	xorl	%eax, %eax
.LBB10_23:                              # %cleanup
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gx_cspace_is_linear_ICC, .Lfunc_end10-gx_cspace_is_linear_ICC
	.cfi_endproc

	.align	16, 0x90
	.type	gx_polarity_ICC,@function
gx_polarity_ICC:                        # @gx_polarity_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	movslq	16(%rax), %rax
	cmpq	$7, %rax
	ja	.LBB11_2
# BB#1:                                 # %switch.lookup
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB11_2:                               # %return
	movl	$-1, %eax
	retq
.Lfunc_end11:
	.size	gx_polarity_ICC, .Lfunc_end11-gx_polarity_ICC
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI12_2:
	.quad	4679239875398991872     # double 65535
	.text
	.globl	gx_remap_ICC_imagelab
	.align	16, 0x90
	.type	gx_remap_ICC_imagelab,@function
gx_remap_ICC_imagelab:                  # @gx_remap_ICC_imagelab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp72:
	.cfi_def_cfa_offset 496
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r13
	leaq	24(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movq	24(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r15d
	movl	328(%rbx), %eax
	movl	%eax, 420(%rsp)
	movl	1112(%r12), %eax
	movl	%eax, 428(%rsp)
	movl	$0, 436(%rsp)
	movl	$8, 424(%rsp)
	movl	324(%rbx), %eax
	movl	%eax, 416(%rsp)
	movl	$0, 432(%rsp)
	leaq	160(%rsp), %rbx
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	64(%rbp), %rax
	movzbl	(%rax), %r8d
	testq	%r8, %r8
	je	.LBB12_8
# BB#1:                                 # %for.body.lr.ph
	movl	%r8d, %edx
	andl	$3, %edx
	xorl	%ecx, %ecx
	cmpl	%edx, %r8d
	je	.LBB12_5
# BB#2:                                 # %vector.body.preheader
	movq	%rbx, %r11
	movq	%rbp, %r10
	movq	%r8, %rcx
	subq	%rdx, %rcx
	leaq	16(%r13), %rdx
	leaq	292(%rsp), %rsi
	movl	%r8d, %ebp
	andl	$3, %ebp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	movapd	.LCPI12_0(%rip), %xmm0  # xmm0 = [6.553500e+04,6.553500e+04]
	movsd	.LCPI12_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movabsq	$-9223372036854775808, %rbp # imm = 0x8000000000000000
	.align	16, 0x90
.LBB12_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rdx), %xmm4
	cvtps2pd	(%rdx), %xmm2
	mulpd	%xmm0, %xmm4
	mulpd	%xmm0, %xmm2
	movapd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %rbx
	xorq	%rbp, %rbx
	cvttsd2si	%xmm4, %rax
	ucomisd	%xmm1, %xmm4
	cmovaeq	%rbx, %rax
	movd	%rax, %xmm3
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	movapd	%xmm4, %xmm5
	subsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm4, %rbx
	ucomisd	%xmm1, %xmm4
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm4
	punpcklqdq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0]
	movapd	%xmm2, %xmm4
	subsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm2, %rbx
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm4
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	movapd	%xmm2, %xmm5
	subsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %rax
	xorq	%rbp, %rax
	cvttsd2si	%xmm2, %rbx
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rax, %rbx
	movd	%rbx, %xmm2
	punpcklqdq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0]
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, -4(%rsi)
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	movd	%xmm2, (%rsi)
	addq	$16, %rdx
	addq	$8, %rsi
	addq	$-4, %rdi
	jne	.LBB12_3
# BB#4:
	movq	%r10, %rbp
	movq	%r11, %rbx
.LBB12_5:                               # %middle.block
	cmpq	%rcx, %r8
	je	.LBB12_8
# BB#6:                                 # %for.body.preheader
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB12_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r13,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, 288(%rsp,%rcx,2)
	incq	%rcx
	cmpq	%r8, %rcx
	jl	.LBB12_7
.LBB12_8:                               # %for.end
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	8(%rdi), %r9
	leaq	416(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	%rbp, %rdx
	callq	gsicc_get_link
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB12_9
# BB#10:                                # %if.end
	cmpl	$0, 116(%r12)
	je	.LBB12_12
# BB#11:
	leaq	288(%rsp), %rbx
	jmp	.LBB12_13
.LBB12_9:                               # %if.then
	movl	$.L__func__.gx_remap_ICC_imagelab, %edi
	movl	$.L.str, %esi
	movl	$488, %edx              # imm = 0x1E8
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB12_28
.LBB12_12:                              # %if.else
	leaq	288(%rsp), %rdx
	movl	$2, %r8d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rcx
	callq	*16(%r12)
.LBB12_13:                              # %if.end.18
	movq	%r12, %rdi
	callq	gsicc_release_link
	testl	%r15d, %r15d
	movl	4(%rsp), %r9d           # 4-byte Reload
	jle	.LBB12_25
# BB#14:                                # %for.body.22.preheader
	movabsq	$8589934576, %r10       # imm = 0x1FFFFFFF0
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%edi, %edi
	movq	%rax, %rdx
	andq	%r10, %rdx
	je	.LBB12_22
# BB#15:                                # %vector.body60.preheader
	movq	%rbx, %rsi
	movq	%rbp, %r11
	movl	%r9d, %r8d
	leaq	1(%rcx), %rdi
	andq	%r10, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rbx
	shrq	$4, %rbx
	xorl	%ebp, %ebp
	btq	$4, %rdi
	jb	.LBB12_17
# BB#16:                                # %vector.body60.prol
	movdqa	(%rsi), %xmm0
	movdqa	16(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, 32(%rsp)
	movdqa	%xmm3, 48(%rsp)
	movl	$16, %ebp
.LBB12_17:                              # %vector.body60.preheader.split
	testq	%rbx, %rbx
	je	.LBB12_18
# BB#19:                                # %vector.body60.preheader.split.split
	incq	%rcx
	andq	%r10, %rcx
	subq	%rbp, %rcx
	movq	%rsi, %rbx
	leaq	48(%rbx,%rbp,2), %rsi
	leaq	80(%rsp,%rbp,2), %rdi
	movl	%r8d, %r9d
	.align	16, 0x90
.LBB12_20:                              # %vector.body60
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-48(%rsi), %xmm0
	movdqa	-32(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, -48(%rdi)
	movdqa	%xmm3, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, -16(%rdi)
	movdqa	%xmm3, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB12_20
# BB#21:
	movq	%rdx, %rdi
	movq	%r11, %rbp
	jmp	.LBB12_22
.LBB12_18:
	movq	%rdx, %rdi
	movl	%r8d, %r9d
	movq	%r11, %rbp
	movq	%rsi, %rbx
.LBB12_22:                              # %middle.block61
	cmpq	%rdi, %rax
	je	.LBB12_25
# BB#23:                                # %for.body.22.preheader85
	leaq	32(%rsp,%rdi,2), %rax
	leaq	(%rbx,%rdi,2), %rcx
	subl	%edi, %r15d
	.align	16, 0x90
.LBB12_24:                              # %for.body.22
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	movl	%edx, %esi
	shrl	%esi
	shrl	$13, %edx
	subl	%edx, %esi
	movw	%si, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r15d
	jne	.LBB12_24
.LBB12_25:                              # %for.end.35
	leaq	32(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
	callq	gx_remap_concrete_ICC
	movq	64(%rbp), %rax
	movzbl	(%rax), %eax
	testq	%rax, %rax
	je	.LBB12_27
	.align	16, 0x90
.LBB12_26:                              # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r13,%rax,4), %ecx
	movl	%ecx, 372(%r14,%rax,4)
	cmpq	$1, %rax
	leaq	-1(%rax), %rax
	jg	.LBB12_26
.LBB12_27:                              # %for.end.55
	movl	$1, 360(%r14)
	xorl	%eax, %eax
.LBB12_28:                              # %cleanup
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_remap_ICC_imagelab, .Lfunc_end12-gx_remap_ICC_imagelab
	.cfi_endproc

	.globl	gs_cspace_build_ICC
	.align	16, 0x90
	.type	gs_cspace_build_ICC,@function
gs_cspace_build_ICC:                    # @gs_cspace_build_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$gs_color_space_type_ICC, %esi
	movq	%rdx, %rdi
	callq	gs_cspace_alloc
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	gs_cspace_build_ICC, .Lfunc_end13-gs_cspace_build_ICC
	.cfi_endproc

	.globl	gx_default_get_profile
	.align	16, 0x90
	.type	gx_default_get_profile,@function
gx_default_get_profile:                 # @gx_default_get_profile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1104(%rdi), %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	gx_default_get_profile, .Lfunc_end14-gx_default_get_profile
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI15_0:
	.long	1199570688              # float 65535
.LCPI15_1:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_2:
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
.LCPI15_3:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	gx_icc_is_linear_in_triangle,@function
gx_icc_is_linear_in_triangle:           # @gx_icc_is_linear_in_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	subq	$1848, %rsp             # imm = 0x738
.Ltmp87:
	.cfi_def_cfa_offset 1904
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movq	%r8, %rbp
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	(%rdi), %rax
	callq	*24(%rax)
	movl	%eax, %r14d
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	%r14, %rbx
	movq	40(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	jle	.LBB15_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	movq	%rax, %rdx
	andq	%rdi, %rdx
	je	.LBB15_5
# BB#2:                                 # %vector.body.preheader
	incq	%rcx
	andq	%rdi, %rcx
	xorl	%esi, %esi
	movaps	.LCPI15_2(%rip), %xmm0  # xmm0 = [6.553500e+04,6.553500e+04,6.553500e+04,6.553500e+04]
	movdqa	.LCPI15_3(%rip), %xmm1  # xmm1 = [65535,65535,65535,65535]
	.align	16, 0x90
.LBB15_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	8(%r15,%rsi,4), %xmm2
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm2, %xmm2
	pshuflw	$232, %xmm2, %xmm3      # xmm3 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, 1712(%rsp,%rsi,2)
	movups	8(%r12,%rsi,4), %xmm3
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm3, %xmm4
	pshuflw	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, 1584(%rsp,%rsi,2)
	movups	8(%rbp,%rsi,4), %xmm3
	mulps	%xmm0, %xmm3
	cvttps2dq	%xmm3, %xmm3
	pshuflw	$232, %xmm3, %xmm5      # xmm5 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	movq	%xmm5, 1456(%rsp,%rsi,2)
	pand	%xmm1, %xmm2
	pand	%xmm1, %xmm4
	pand	%xmm1, %xmm3
	movdqa	%xmm3, %xmm5
	paddd	%xmm4, %xmm3
	paddd	%xmm2, %xmm4
	psrld	$1, %xmm4
	pshuflw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	movq	%xmm4, 944(%rsp,%rsi,2)
	paddd	%xmm2, %xmm5
	psrld	$1, %xmm5
	pshuflw	$232, %xmm5, %xmm4      # xmm4 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	movq	%xmm4, 688(%rsp,%rsi,2)
	psrld	$1, %xmm3
	pshuflw	$232, %xmm3, %xmm4      # xmm4 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	movq	%xmm4, 816(%rsp,%rsi,2)
	paddd	%xmm2, %xmm3
	psrld	$1, %xmm3
	pshuflw	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	movq	%xmm2, 560(%rsp,%rsi,2)
	addq	$4, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB15_3
# BB#4:
	movq	%rdx, %rsi
.LBB15_5:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB15_8
# BB#6:                                 # %for.body.preheader28
	leaq	1712(%rsp,%rsi,2), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	1584(%rsp,%rsi,2), %r9
	leaq	1456(%rsp,%rsi,2), %r10
	leaq	944(%rsp,%rsi,2), %r11
	leaq	688(%rsp,%rsi,2), %r13
	leaq	816(%rsp,%rsi,2), %r14
	movq	%r12, %rax
	leaq	560(%rsp,%rsi,2), %r12
	leaq	8(%r15,%rsi,4), %r15
	leaq	8(%rax,%rsi,4), %rcx
	leaq	8(%rbp,%rsi,4), %rdx
	subl	%esi, %ebx
	xorl	%esi, %esi
	movss	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB15_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r15,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movq	32(%rsp), %rax          # 8-byte Reload
	movw	%di, (%rax,%rsi,2)
	movss	(%rcx,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movq	%rbx, %r8
	cvttss2si	%xmm1, %ebx
	movw	%bx, (%r9,%rsi,2)
	movss	(%rdx,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ebp
	movw	%bp, (%r10,%rsi,2)
	movzwl	%di, %edi
	movzwl	%bx, %ebx
	leal	(%rbx,%rdi), %eax
	shrl	%eax
	movw	%ax, (%r11,%rsi,2)
	movzwl	%bp, %eax
	leal	(%rax,%rdi), %ebp
	shrl	%ebp
	movw	%bp, (%r13,%rsi,2)
	addl	%ebx, %eax
	movq	%r8, %rbx
	shrl	%eax
	movw	%ax, (%r14,%rsi,2)
	addl	%edi, %eax
	shrl	%eax
	movw	%ax, (%r12,%rsi,2)
	incq	%rsi
	cmpl	%esi, %ebx
	jne	.LBB15_7
.LBB15_8:                               # %for.end
	leaq	1712(%rsp), %rdx
	leaq	1328(%rsp), %rcx
	movl	$2, %r8d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	*16(%rbx)
	leaq	1584(%rsp), %rdx
	leaq	1200(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	leaq	1456(%rsp), %rdx
	leaq	1072(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	leaq	944(%rsp), %rdx
	leaq	432(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	leaq	816(%rsp), %rdx
	leaq	304(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	leaq	688(%rsp), %rdx
	leaq	176(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	leaq	560(%rsp), %rdx
	leaq	48(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	movl	$1, %eax
	movl	12(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	jle	.LBB15_16
# BB#9:                                 # %for.body.86.lr.ph
	movss	8(%rsp), %xmm1          # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI15_0(%rip), %xmm1
	movss	.LCPI15_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	maxss	%xmm1, %xmm0
	cvttss2si	%xmm0, %ecx
	movzwl	%cx, %r9d
	movslq	%edx, %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB15_11:                              # %for.body.86
                                        # =>This Inner Loop Header: Depth=1
	movzwl	1328(%rsp,%rsi,2), %edi
	movzwl	1200(%rsp,%rsi,2), %ebx
	leal	(%rbx,%rdi), %ebp
	shrl	%ebp
	movzwl	432(%rsp,%rsi,2), %edx
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovll	%ebp, %edx
	cmpl	%r9d, %edx
	jg	.LBB15_15
# BB#12:                                # %if.end
                                        #   in Loop: Header=BB15_11 Depth=1
	movzwl	1072(%rsp,%rsi,2), %ebp
	leal	(%rbp,%rdi), %edx
	shrl	%edx
	movzwl	176(%rsp,%rsi,2), %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	%r9d, %ecx
	jg	.LBB15_15
# BB#13:                                # %if.end.147
                                        #   in Loop: Header=BB15_11 Depth=1
	addl	%ebx, %ebp
	shrl	%ebp
	movzwl	304(%rsp,%rsi,2), %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	cmpl	%r9d, %ecx
	jg	.LBB15_15
# BB#14:                                # %if.end.179
                                        #   in Loop: Header=BB15_11 Depth=1
	addl	%edi, %ebp
	shrl	%ebp
	movzwl	48(%rsp,%rsi,2), %ecx
	subl	%ecx, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	cmpl	%r9d, %ecx
	jg	.LBB15_15
# BB#10:                                # %for.cond.83
                                        #   in Loop: Header=BB15_11 Depth=1
	incq	%rsi
	cmpq	%r8, %rsi
	jl	.LBB15_11
	jmp	.LBB15_16
.LBB15_15:
	xorl	%eax, %eax
.LBB15_16:                              # %cleanup
	addq	$1848, %rsp             # imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gx_icc_is_linear_in_triangle, .Lfunc_end15-gx_icc_is_linear_in_triangle
	.cfi_endproc

	.type	gs_color_space_type_ICC,@object # @gs_color_space_type_ICC
	.section	.rodata,"a",@progbits
	.globl	gs_color_space_type_ICC
	.align	8
gs_color_space_type_ICC:
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_base_color_space
	.quad	gx_num_components_ICC
	.quad	gx_init_ICC
	.quad	gx_restrict_ICC
	.quad	gx_same_concrete_space
	.quad	gx_concretize_ICC
	.quad	gx_remap_concrete_ICC
	.quad	gx_remap_ICC
	.quad	gx_install_ICC
	.quad	gx_set_overprint_ICC
	.quad	gx_final_ICC
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_ICC
	.quad	gx_cspace_is_linear_ICC
	.quad	gx_polarity_ICC
	.size	gs_color_space_type_ICC, 136

	.type	.L__func__.gx_remap_ICC_imagelab,@object # @__func__.gx_remap_ICC_imagelab
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gx_remap_ICC_imagelab:
	.asciz	"gx_remap_ICC_imagelab"
	.size	.L__func__.gx_remap_ICC_imagelab, 22

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"./base/gsicc.c"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not create ICC link:  Check profiles"
	.size	.L.str.1, 43

	.type	.L__func__.gx_remap_ICC,@object # @__func__.gx_remap_ICC
.L__func__.gx_remap_ICC:
	.asciz	"gx_remap_ICC"
	.size	.L__func__.gx_remap_ICC, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Attempting to do ICC remap with no profile"
	.size	.L.str.2, 43

	.type	.L__func__.gx_concretize_ICC,@object # @__func__.gx_concretize_ICC
.L__func__.gx_concretize_ICC:
	.asciz	"gx_concretize_ICC"
	.size	.L__func__.gx_concretize_ICC, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_final_ICC"
	.size	.L.str.3, 13

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
