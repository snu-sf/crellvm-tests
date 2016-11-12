	.text
	.file	"gxstroke.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4609047870843492414     # double 1.414213562
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_1:
	.long	1073741824              # float 2
.LCPI0_2:
	.long	1065353216              # float 1
.LCPI0_3:
	.long	3405774848              # float -8388608
.LCPI0_4:
	.long	1258291200              # float 8388608
.LCPI0_5:
	.long	1132462080              # float 256
	.text
	.globl	gx_stroke_path_expansion
	.align	16, 0x90
	.type	gx_stroke_path_expansion,@function
gx_stroke_path_expansion:               # @gx_stroke_path_expansion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 96
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	56(%r15), %rax
	movq	24(%rax), %r12
	movss	132(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movss	140(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 28(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movss	136(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movss	144(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movss	24(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	28(%rbx), %ecx
	cmpl	$2, %ecx
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, 32(%rbx)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	mulsd	.LCPI0_0(%rip), %xmm1
.LBB0_3:                                # %if.end
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	32(%rsp), %xmm4         # 8-byte Folded Reload
	xorpd	%xmm2, %xmm2
	movss	44(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB0_5
	jp	.LBB0_5
# BB#4:                                 # %if.end
	movss	28(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB0_5
	jnp	.LBB0_7
.LBB0_5:                                # %lor.lhs.false.27
	movss	12(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB0_18
	jp	.LBB0_18
# BB#6:                                 # %lor.lhs.false.27
	xorpd	%xmm2, %xmm2
	movss	8(%rsp), %xmm3          # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB0_18
	jp	.LBB0_18
.LBB0_7:                                # %if.then.39
	decl	%ecx
	movb	$1, %r8b
	cmpl	$2, %ecx
	jb	.LBB0_10
# BB#8:                                 # %lor.lhs.false.49
	movl	32(%rbx), %ecx
	decl	%ecx
	cmpl	$2, %ecx
	jb	.LBB0_10
# BB#9:                                 # %lor.lhs.false.59
	movl	36(%rbx), %eax
	decl	%eax
	cmpl	$2, %eax
	setb	%r8b
.LBB0_10:                               # %lor.end
	xorl	%ecx, %ecx
	testq	%r12, %r12
	je	.LBB0_45
# BB#11:                                # %for.body.lr.ph
	xorl	%esi, %esi
	movq	%r12, %rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	16(%rdx), %ecx
	leal	-1(%rcx), %eax
	cmpl	$2, %eax
	jb	.LBB0_26
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$4, %ecx
	jne	.LBB0_14
.LBB0_26:                               # %sw.bb.75
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	%esi, 20(%rdx)
	je	.LBB0_28
# BB#27:                                # %lor.lhs.false.80
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	%edi, 24(%rdx)
	je	.LBB0_28
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_14:                               # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_18
# BB#15:                                # %sw.bb
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, 40(%rdx)
	jne	.LBB0_18
# BB#16:                                # %lor.lhs.false.69
                                        #   in Loop: Header=BB0_12 Depth=1
	testb	%r8b, %r8b
	jne	.LBB0_28
# BB#17:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpb	$0, 88(%rdx)
	je	.LBB0_18
	.align	16, 0x90
.LBB0_28:                               # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	20(%rdx), %esi
	movl	24(%rdx), %edi
	movq	8(%rdx), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	jne	.LBB0_12
	jmp	.LBB0_45
.LBB0_18:                               # %if.then.93
	cmpl	$0, 108(%r15)
	jne	.LBB0_24
# BB#19:                                # %land.lhs.true.97
	cmpl	$1, 104(%r15)
	jg	.LBB0_24
# BB#20:                                # %land.lhs.true.100
	movl	$1, %ecx
	testq	%r12, %r12
	je	.LBB0_45
# BB#21:                                # %lor.lhs.false.103
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_45
# BB#22:                                # %lor.lhs.false.107
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_45
# BB#23:                                # %lor.lhs.false.111
	movzwl	16(%rax), %eax
	cmpl	$2, %eax
	je	.LBB0_45
.LBB0_24:                               # %if.else
	movl	40(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB0_29
# BB#25:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_32
.LBB0_29:                               # %if.else
	testl	%eax, %eax
	jne	.LBB0_31
# BB#30:                                # %sw.bb.i
	movss	48(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_32
.LBB0_31:                               # %sw.default.i
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
.LBB0_32:                               # %join_expansion_factor.exit
	movl	44(%rbx), %eax
	testl	%eax, %eax
	js	.LBB0_44
# BB#33:                                # %if.then.122
	cmpl	$4, %eax
	jne	.LBB0_35
# BB#34:
	movss	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_38
.LBB0_35:                               # %if.then.122
	testl	%eax, %eax
	jne	.LBB0_37
# BB#36:                                # %sw.bb.i.76
	movss	48(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_38
.LBB0_37:                               # %sw.default.i.77
	movss	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
.LBB0_38:                               # %join_expansion_factor.exit79
	ucomiss	%xmm3, %xmm2
	ja	.LBB0_44
# BB#39:                                # %cond.false
	cmpl	$4, %eax
	jne	.LBB0_41
# BB#40:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_44
.LBB0_41:                               # %cond.false
	testl	%eax, %eax
	jne	.LBB0_43
# BB#42:                                # %sw.bb.i.71
	movss	48(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_44
.LBB0_43:                               # %sw.default.i.72
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
.LBB0_44:                               # %if.end.131
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	movl	$1, %ecx
.LBB0_45:                               # %if.end.135
	mulsd	%xmm1, %xmm4
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm4, %xmm3
	movl	$-13, %eax
	ucomiss	.LCPI0_3(%rip), %xmm3
	jb	.LBB0_51
# BB#46:                                # %if.end.135
	movss	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jbe	.LBB0_51
# BB#47:                                # %if.end.157
	movsd	16(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm4
	mulsd	%xmm1, %xmm4
	cvtsd2ss	%xmm4, %xmm0
	mulss	.LCPI0_5(%rip), %xmm3
	cvttss2si	%xmm3, %eax
	movl	%eax, (%r14)
	movl	$-13, %eax
	ucomiss	.LCPI0_3(%rip), %xmm0
	jb	.LBB0_50
# BB#48:                                # %if.end.157
	ucomiss	%xmm0, %xmm2
	jbe	.LBB0_50
# BB#49:                                # %cond.true.165
	mulss	.LCPI0_5(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 4(%r14)
	xorl	%eax, %eax
.LBB0_50:                               # %cond.end.170
	testl	%eax, %eax
	cmovsl	%eax, %ecx
	movl	%ecx, %eax
.LBB0_51:                               # %cleanup.176
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gx_stroke_path_expansion, .Lfunc_end0-gx_stroke_path_expansion
	.cfi_endproc

	.globl	gx_default_stroke_path
	.align	16, 0x90
	.type	gx_default_stroke_path,@function
gx_default_stroke_path:                 # @gx_default_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 16
	movq	%r8, %r10
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rax
	movq	%r9, (%rsp)
	xorl	%esi, %esi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%r10, %r9
	callq	gx_stroke_path_only
	popq	%rdx
	retq
.Lfunc_end1:
	.size	gx_default_stroke_path, .Lfunc_end1-gx_default_stroke_path
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI2_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
.LCPI2_9:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI2_10:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1132462080              # float 256
.LCPI2_4:
	.long	1056964608              # float 0.5
.LCPI2_7:
	.long	1065353216              # float 1
.LCPI2_8:
	.long	1199570944              # float 65536
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_3:
	.quad	4643211215818981376     # double 256
.LCPI2_5:
	.quad	4602678819172646912     # double 0.5
.LCPI2_6:
	.quad	4598175219545276416     # double 0.25
	.text
	.globl	gx_stroke_path_only
	.align	16, 0x90
	.type	gx_stroke_path_only,@function
gx_stroke_path_only:                    # @gx_stroke_path_only
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$3208, %rsp             # imm = 0xC88
.Ltmp16:
	.cfi_def_cfa_offset 3264
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%r9, 264(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	movq	%rbp, 240(%rsp)         # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	8(%rcx), %rdi
	movq	%rcx, %r12
	callq	gs_currentcpsimode
	movl	%eax, %ebx
	orl	4(%rbp), %ebx
	testq	%r15, %r15
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true.i
	movq	264(%rsp), %rdi         # 8-byte Reload
	callq	gx_dc_is_pattern1_color_clist_based
	testl	%eax, %eax
	je	.LBB2_2
.LBB2_3:                                # %cond.false.i
	testl	%ebx, %ebx
	movl	%ebx, 156(%rsp)         # 4-byte Spill
	movl	$stroke_add_compat, %eax
	movl	$stroke_add_fast, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movq	%r12, %rbx
.LBB2_4:                                # %cond.end.i
	movl	96(%rbx), %eax
	movss	132(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	144(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	136(%rbx), %xmm4        # xmm4 = mem[0],zero
	movdqa	%xmm4, 416(%rsp)        # 16-byte Spill
	movdqa	%xmm4, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm4
	jne	.LBB2_10
	jp	.LBB2_10
# BB#5:                                 # %cond.end.i
	ucomiss	%xmm0, %xmm3
	jne	.LBB2_10
	jp	.LBB2_10
# BB#6:                                 # %cond.true.25.i
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movaps	%xmm3, 400(%rsp)        # 16-byte Spill
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	xorl	%eax, %eax
	ucomiss	%xmm0, %xmm2
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	cmovpl	%eax, %ecx
	ucomiss	%xmm1, %xmm2
	movl	$1, %r12d
	cmovnel	%ecx, %r12d
	cmovpl	%ecx, %r12d
	testl	%r12d, %r12d
	je	.LBB2_8
# BB#7:                                 # %cond.true.36.i
	movaps	%xmm1, 352(%rsp)        # 16-byte Spill
	movq	%r15, 288(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	shrl	$31, %eax
	jmp	.LBB2_9
.LBB2_10:                               # %cond.false.48.i
	movaps	%xmm3, 400(%rsp)        # 16-byte Spill
	ucomiss	%xmm0, %xmm2
	jne	.LBB2_16
	jp	.LBB2_16
# BB#11:                                # %cond.false.48.i
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_16
	jp	.LBB2_16
# BB#12:                                # %cond.true.56.i
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movaps	%xmm1, 352(%rsp)        # 16-byte Spill
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	movaps	400(%rsp), %xmm3        # 16-byte Reload
	xorps	%xmm3, %xmm0
	movdqa	416(%rsp), %xmm4        # 16-byte Reload
	movdqa	%xmm4, %xmm1
	cmpeqss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movaps	%xmm3, %xmm1
	andl	$1, %eax
	ucomiss	%xmm1, %xmm4
	movl	$-1, %r12d
	cmovnel	%eax, %r12d
	cmovpl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB2_14
# BB#13:
	movq	%r15, 288(%rsp)         # 8-byte Spill
	movdqa	%xmm4, %xmm0
	cmpeqss	%xmm1, %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	jmp	.LBB2_15
.LBB2_16:                               # %cond.false.80.i
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%r15, 288(%rsp)         # 8-byte Spill
	movaps	416(%rsp), %xmm0        # 16-byte Reload
	mulss	400(%rsp), %xmm0        # 16-byte Folded Reload
	movaps	%xmm1, %xmm3
	movaps	%xmm3, 352(%rsp)        # 16-byte Spill
	movaps	%xmm2, %xmm1
	mulss	%xmm3, %xmm1
	ucomiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB2_17
.LBB2_8:                                # %cond.false.39.i
	movq	%r15, 288(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	ucomiss	%xmm2, %xmm0
	seta	%cl
	ucomiss	%xmm1, %xmm0
	movaps	%xmm1, 352(%rsp)        # 16-byte Spill
	seta	%al
	xorb	%cl, %al
.LBB2_9:                                # %cond.end.46.i
	movzbl	%al, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	$1, %r15d
	jmp	.LBB2_17
.LBB2_2:                                # %cond.true.i
	movl	%ebx, 156(%rsp)         # 4-byte Spill
	movq	%r12, %rbx
	movl	212(%rbx), %eax
	movl	%eax, %ecx
	notl	%ecx
	leal	(%rax,%rax), %edx
	andl	%ecx, %edx
	andl	$170, %edx
	andl	$1024, %eax             # imm = 0x400
	orl	%edx, %eax
	movl	$stroke_fill, %eax
	movl	$stroke_add, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_14:                               # %cond.false.71.i
	movq	%r15, 288(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	ucomiss	%xmm4, %xmm0
	seta	%cl
	ucomiss	%xmm1, %xmm0
	seta	%al
	xorb	%cl, %al
	xorb	$1, %al
.LBB2_15:                               # %cond.end.78.i
	movzbl	%al, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	$2, %r15d
.LBB2_17:                               # %cond.end.86.i
	movaps	%xmm2, 384(%rsp)        # 16-byte Spill
	movl	44(%rbx), %eax
	movl	%eax, 248(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	jns	.LBB2_20
# BB#18:                                # %cond.false.93.i
	movl	40(%rbx), %eax
	movl	$2, 248(%rsp)           # 4-byte Folded Spill
	movl	%eax, %ecx
	orl	$2, %ecx
	cmpl	$3, %ecx
	je	.LBB2_20
# BB#19:                                # %cond.false.100.i
	movl	%eax, 248(%rsp)         # 4-byte Spill
.LBB2_20:                               # %cond.end.104.i
	movq	3264(%rsp), %rbp
	movss	24(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 368(%rsp)        # 16-byte Spill
	movss	56(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 440(%rsp)        # 4-byte Spill
	leaq	728(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1152(%r14)
	movq	%r14, 200(%rsp)         # 8-byte Spill
	movss	728(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	732(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	736(%rsp), %xmm1
	movss	%xmm1, 192(%rsp)        # 4-byte Spill
	mulss	740(%rsp), %xmm0
	movss	%xmm0, 196(%rsp)        # 4-byte Spill
	ucomiss	%xmm0, %xmm1
	seta	344(%rsp)               # 1-byte Folded Spill
	leaq	3152(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_path_bbox
	leaq	640(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gx_stroke_path_expansion
	testl	%eax, %eax
	js	.LBB2_21
# BB#22:                                # %if.else.i
	movl	640(%rsp), %ecx
	addl	300(%rbx), %ecx
	movl	%ecx, 640(%rsp)
	movl	644(%rsp), %eax
	addl	304(%rbx), %eax
	movl	%eax, 644(%rsp)
	movl	3152(%rsp), %edx
	movl	%ecx, %esi
	xorl	$-2147483648, %esi      # imm = 0xFFFFFFFF80000000
	movl	%edx, %edi
	subl	%ecx, %edi
	cmpl	%esi, %edx
	movl	$-2147483648, %r8d      # imm = 0xFFFFFFFF80000000
	cmovll	%r8d, %edi
	movl	%edi, 3152(%rsp)
	movq	%rbp, %rdx
	movl	3156(%rsp), %ebp
	movl	%eax, %edi
	xorl	$-2147483648, %edi      # imm = 0xFFFFFFFF80000000
	movl	%ebp, %esi
	subl	%eax, %esi
	cmpl	%edi, %ebp
	movq	%rdx, %rbp
	cmovll	%r8d, %esi
	movl	%esi, 3156(%rsp)
	movl	3160(%rsp), %edx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$2147483647, %edi       # imm = 0x7FFFFFFF
	subl	%ecx, %edi
	leal	(%rcx,%rdx), %ecx
	cmpl	%edi, %edx
	cmovgl	%esi, %ecx
	movl	%ecx, 3160(%rsp)
	movl	3164(%rsp), %ecx
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	subl	%eax, %edx
	leal	(%rax,%rcx), %eax
	cmpl	%edx, %ecx
	cmovgl	%esi, %eax
	movl	%eax, 3164(%rsp)
	jmp	.LBB2_23
.LBB2_21:                               # %if.then.i
	movaps	.LCPI2_2(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483647,2147483647]
	movaps	%xmm0, 3152(%rsp)
.LBB2_23:                               # %if.end.i
	testq	%rbp, %rbp
	je	.LBB2_25
# BB#24:                                # %if.then.195.i
	leaq	3136(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_inner_box
	jmp	.LBB2_28
.LBB2_25:                               # %if.else.197.i
	cmpq	$0, 264(%rsp)           # 8-byte Folded Reload
	je	.LBB2_27
# BB#26:                                # %if.then.199.i
	leaq	3136(%rsp), %rsi
	movq	200(%rsp), %rdi         # 8-byte Reload
	callq	*1432(%rdi)
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.201.i
	movaps	3152(%rsp), %xmm0
	movaps	%xmm0, 3136(%rsp)
.LBB2_28:                               # %if.end.203.i
	movl	3164(%rsp), %esi
	movl	3148(%rsp), %ecx
	cmpl	%ecx, %esi
	jg	.LBB2_32
# BB#29:                                # %land.lhs.true.210.i
	movl	3160(%rsp), %eax
	cmpl	3144(%rsp), %eax
	jg	.LBB2_32
# BB#30:                                # %land.lhs.true.217.i
	movl	3156(%rsp), %eax
	cmpl	3140(%rsp), %eax
	jl	.LBB2_32
# BB#31:                                # %land.lhs.true.224.i
	movl	3152(%rsp), %eax
	cmpl	3136(%rsp), %eax
	movq	200(%rsp), %r14         # 8-byte Reload
	jge	.LBB2_55
.LBB2_32:                               # %if.then.231.i
	testq	%rbp, %rbp
	je	.LBB2_41
# BB#33:                                # %if.then.233.i
	leaq	640(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_outer_box
	movl	640(%rsp), %ecx
	movl	3152(%rsp), %eax
	cmpl	%eax, %ecx
	jle	.LBB2_35
# BB#34:                                # %if.then.242.i
	movl	%ecx, 3152(%rsp)
	movl	%ecx, %eax
.LBB2_35:                               # %if.end.247.i
	movl	648(%rsp), %ecx
	movl	3160(%rsp), %edx
	cmpl	%edx, %ecx
	jge	.LBB2_37
# BB#36:                                # %if.then.254.i
	movl	%ecx, 3160(%rsp)
	movl	%ecx, %edx
.LBB2_37:                               # %if.end.259.i
	movl	644(%rsp), %ecx
	movl	3156(%rsp), %edi
	cmpl	%edi, %ecx
	jle	.LBB2_39
# BB#38:                                # %if.then.266.i
	movl	%ecx, 3156(%rsp)
	movl	%ecx, %edi
.LBB2_39:                               # %if.end.271.i
	movl	652(%rsp), %ecx
	movl	3164(%rsp), %esi
	cmpl	%esi, %ecx
	jl	.LBB2_49
# BB#40:
	movl	%esi, %ecx
	jmp	.LBB2_50
.LBB2_41:                               # %do.body.287.i
	movl	3136(%rsp), %edx
	movl	3152(%rsp), %eax
	cmpl	%eax, %edx
	jle	.LBB2_43
# BB#42:                                # %if.then.294.i
	movl	%edx, 3152(%rsp)
	movl	%edx, %eax
.LBB2_43:                               # %if.end.299.i
	movq	%rbp, %r8
	movl	3144(%rsp), %edi
	movl	3160(%rsp), %edx
	cmpl	%edx, %edi
	jge	.LBB2_45
# BB#44:                                # %if.then.306.i
	movl	%edi, 3160(%rsp)
	movl	%edi, %edx
.LBB2_45:                               # %if.end.311.i
	movl	3140(%rsp), %ebp
	movl	3156(%rsp), %edi
	cmpl	%edi, %ebp
	jle	.LBB2_47
# BB#46:                                # %if.then.318.i
	movl	%ebp, 3156(%rsp)
	movl	%ebp, %edi
.LBB2_47:                               # %if.end.323.i
	cmpl	%ecx, %esi
	movq	%r8, %rbp
	jle	.LBB2_48
.LBB2_49:                               # %if.then.330.i
	movl	%ecx, 3164(%rsp)
	jmp	.LBB2_50
.LBB2_48:
	movl	%esi, %ecx
.LBB2_50:                               # %if.end.338.i
	cmpl	%ecx, %edi
	jge	.LBB2_332
# BB#51:                                # %if.end.338.i
	cmpl	%edx, %eax
	jge	.LBB2_332
# BB#52:                                # %if.end.353.i
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	movq	200(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %r14
	je	.LBB2_55
# BB#53:                                # %if.end.353.i
	movl	$stroke_fill, %eax
	cmpq	%rax, 256(%rsp)         # 8-byte Folded Reload
	movq	%rbp, %r14
	jne	.LBB2_55
# BB#54:                                # %if.then.358.i
	leaq	1280(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	gx_make_clip_device_on_stack
	movl	88(%rbp), %eax
	movl	%eax, 1368(%rsp)
.LBB2_55:                               # %if.end.361.i
	movss	440(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI2_1(%rip), %xmm0
	movss	%xmm0, 440(%rsp)        # 4-byte Spill
	movl	$-1, 1264(%rsp)
	movl	296(%rbx), %eax
	movl	%eax, 1276(%rsp)
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movaps	368(%rsp), %xmm3        # 16-byte Reload
	xorps	%xmm3, %xmm1
	pxor	%xmm4, %xmm4
	movaps	%xmm3, %xmm0
	cmpltss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	andnps	%xmm3, %xmm2
	andps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movl	$1, 308(%rsp)           # 4-byte Folded Spill
	xorpd	%xmm1, %xmm1
	movsd	%xmm1, 160(%rsp)        # 8-byte Spill
	ucomiss	%xmm4, %xmm0
	jne	.LBB2_57
	jp	.LBB2_57
# BB#56:
	movl	%r12d, %ebp
	movq	184(%rsp), %r12         # 8-byte Reload
	jmp	.LBB2_67
.LBB2_332:                              # %cleanup.i
	xorl	%eax, %eax
	jmp	.LBB2_331
.LBB2_57:                               # %if.else.374.i
	cmpl	$1, %r15d
	jne	.LBB2_59
# BB#58:
	movaps	384(%rsp), %xmm1        # 16-byte Reload
	unpcklps	352(%rsp), %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	movl	%r12d, %ebp
	movq	184(%rsp), %r12         # 8-byte Reload
	jmp	.LBB2_61
.LBB2_59:                               # %if.else.374.i
	movsd	%xmm2, 368(%rsp)        # 8-byte Spill
	cmpl	$2, %r15d
	movaps	416(%rsp), %xmm1        # 16-byte Reload
	jne	.LBB2_64
# BB#60:                                # %sw.bb.375.i
	movl	%r12d, %ebp
	movq	184(%rsp), %r12         # 8-byte Reload
	pxor	%xmm4, %xmm4
.LBB2_61:                               # %sat.i
	xorpd	%xmm2, %xmm2
	movaps	%xmm1, %xmm3
	cmpltps	%xmm2, %xmm3
	pshufd	$212, %xmm3, %xmm2      # xmm2 = xmm3[0,1,1,3]
	psllq	$32, %xmm2
	pshufd	$237, %xmm2, %xmm3      # xmm3 = xmm2[1,3,2,3]
	psrad	$31, %xmm2
	pshufd	$237, %xmm2, %xmm2      # xmm2 = xmm2[1,3,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pslld	$31, %xmm2
	psrad	$31, %xmm2
	movdqa	%xmm2, %xmm3
	pandn	%xmm1, %xmm3
	xorps	.LCPI2_0(%rip), %xmm1
	andps	%xmm2, %xmm1
	orps	%xmm3, %xmm1
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	movaps	%xmm1, %xmm3
	maxss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	movss	.LCPI2_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 308(%rsp)         # 4-byte Spill
	setbe	%al
	testl	%ebp, %ebp
	je	.LBB2_67
# BB#62:                                # %sat.i
	testb	%al, %al
	je	.LBB2_67
# BB#63:                                # %if.then.399.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	120(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	jmp	.LBB2_67
.LBB2_64:                               # %sw.default.i
	movaps	384(%rsp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm0
	mulss	%xmm0, %xmm0
	movaps	%xmm1, %xmm5
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movaps	400(%rsp), %xmm4        # 16-byte Reload
	movaps	%xmm4, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movaps	352(%rsp), %xmm3        # 16-byte Reload
	movaps	%xmm3, %xmm1
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 336(%rsp)        # 8-byte Spill
	movaps	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	mulss	%xmm0, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm3, %xmm1
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm3, %xmm2
	mulss	%xmm2, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 328(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	movl	%r12d, %ebp
	jnp	.LBB2_66
# BB#65:                                # %call.sqrt
	movsd	328(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_66:                               # %sw.default.i.split
	movsd	336(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	mulsd	.LCPI2_5(%rip), %xmm1
	movsd	368(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 308(%rsp)         # 4-byte Spill
	movq	184(%rsp), %r12         # 8-byte Reload
	xorps	%xmm4, %xmm4
.LBB2_67:                               # %do.end.438.i
	movss	440(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 296(%rsp)        # 8-byte Spill
	ucomiss	%xmm4, %xmm1
	jne	.LBB2_69
	jp	.LBB2_69
	jmp	.LBB2_68
.LBB2_69:                               # %if.then.441.i
	movl	%ebp, 280(%rsp)         # 4-byte Spill
	cmpl	$0, 60(%rbx)
	je	.LBB2_71
# BB#70:                                # %if.then.443.i
	movq	%r14, 272(%rsp)         # 8-byte Spill
	movl	%r15d, 180(%rsp)        # 4-byte Spill
	movq	200(%rsp), %rdi         # 8-byte Reload
	leaq	640(%rsp), %rbp
	movq	%rbp, %rsi
	callq	gs_deviceinitialmatrix
	jmp	.LBB2_72
.LBB2_68:
	movq	%r14, 272(%rsp)         # 8-byte Spill
	movl	%r15d, 180(%rsp)        # 4-byte Spill
	movl	%ebp, 280(%rsp)         # 4-byte Spill
	jmp	.LBB2_73
.LBB2_71:                               # %if.else.444.i
	movq	%r14, 272(%rsp)         # 8-byte Spill
	movl	%r15d, 180(%rsp)        # 4-byte Spill
	leaq	132(%rbx), %rbp
.LBB2_72:                               # %if.end.446.i
	movss	4(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 440(%rsp)        # 8-byte Spill
	movss	12(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	addsd	440(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	296(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 296(%rsp)        # 8-byte Spill
.LBB2_73:                               # %if.end.455.i
	movq	288(%rsp), %r15         # 8-byte Reload
	cmpl	$0, 108(%r13)
	jne	.LBB2_76
# BB#74:                                # %land.lhs.true.458.i
	movq	%r13, %rdi
	callq	gx_path_has_long_segments
	testl	%eax, %eax
	je	.LBB2_75
.LBB2_76:                               # %if.else.465.i
	movq	40(%r13), %rdx
	leaq	1136(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	240(%rsp), %rax         # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI2_1(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	movl	$6, %r8d
	movq	%rbx, %rcx
	cmpl	$0, 312(%rcx)
	jne	.LBB2_78
# BB#77:                                # %select.mid
	movl	$4, %r8d
.LBB2_78:                               # %select.end
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rcx, %rbx
	callq	gx_path_copy_reducing
	testl	%eax, %eax
	jns	.LBB2_79
	jmp	.LBB2_331
.LBB2_75:                               # %if.then.461.i
	movq	56(%r13), %rcx
	xorl	%eax, %eax
	cmpq	$0, 24(%rcx)
	movq	%r13, %rbp
	je	.LBB2_331
.LBB2_79:                               # %if.end.478.i
	testl	%r12d, %r12d
	je	.LBB2_80
# BB#81:                                # %if.then.480.i
	movl	%eax, 284(%rsp)         # 4-byte Spill
	cvtsi2ssl	300(%rbx), %xmm1
	cvtsi2ssl	304(%rbx), %xmm0
	minss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	testl	%r12d, %r12d
	xorps	%xmm2, %xmm2
	jle	.LBB2_89
# BB#82:                                # %for.body.lr.ph.i
	movq	88(%rbx), %rax
	leal	-1(%r12), %ecx
	xorl	%edx, %edx
	testb	$3, %r12b
	je	.LBB2_83
# BB#84:                                # %for.body.i.prol.preheader
	movl	%r12d, %esi
	andl	$3, %esi
	xorps	%xmm3, %xmm3
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_85:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rax,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	maxss	%xmm3, %xmm2
	incq	%rdx
	cmpl	%edx, %esi
	movaps	%xmm2, %xmm3
	jne	.LBB2_85
	jmp	.LBB2_86
.LBB2_80:
	movl	%eax, 284(%rsp)         # 4-byte Spill
	jmp	.LBB2_90
.LBB2_83:
	xorps	%xmm2, %xmm2
.LBB2_86:                               # %for.body.lr.ph.i.split
	cmpl	$3, %ecx
	jb	.LBB2_89
# BB#87:                                # %for.body.lr.ph.i.split.split
	movl	%r12d, %ecx
	subl	%edx, %ecx
	leaq	12(%rax,%rdx,4), %rax
	.align	16, 0x90
.LBB2_88:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	-12(%rax), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	-8(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	maxss	%xmm2, %xmm3
	maxss	%xmm3, %xmm4
	movss	-4(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	maxss	%xmm4, %xmm3
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	maxss	%xmm3, %xmm2
	addq	$16, %rax
	addl	$-4, %ecx
	jne	.LBB2_88
.LBB2_89:                               # %for.end.i
	movq	132(%rbx), %xmm3        # xmm3 = mem[0],zero
	movss	24(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	140(%rbx), %xmm5        # xmm5 = mem[0],zero,zero,zero
	movss	144(%rbx), %xmm6        # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	mulps	%xmm3, %xmm6
	movaps	%xmm6, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	subss	%xmm3, %xmm6
	movaps	.LCPI2_0(%rip), %xmm3   # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm6, %xmm3
	movaps	%xmm6, %xmm5
	cmpltss	%xmm1, %xmm5
	movaps	%xmm5, %xmm1
	andnps	%xmm6, %xmm1
	andps	%xmm3, %xmm5
	orps	%xmm1, %xmm5
	mulss	%xmm2, %xmm2
	mulss	%xmm5, %xmm2
	movaps	%xmm0, %xmm1
	divss	%xmm4, %xmm1
	movss	.LCPI2_7(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	cmpltss	%xmm4, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm0, %xmm3
	orps	%xmm1, %xmm3
	mulss	.LCPI2_8(%rip), %xmm2
	mulss	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jae	.LBB2_91
.LBB2_90:
	xorl	%r12d, %r12d
	movapd	384(%rsp), %xmm1        # 16-byte Reload
	jmp	.LBB2_92
.LBB2_91:                               # %if.then.536.i
	movq	40(%r13), %rdx
	leaq	1008(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_path_init_local_shared
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	gx_path_add_dash_expansion
	movl	%eax, 284(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movq	%r14, %rbp
	movapd	384(%rsp), %xmm1        # 16-byte Reload
	js	.LBB2_328
.LBB2_92:                               # %if.end.552.i
	testq	%r15, %r15
	jne	.LBB2_94
# BB#93:                                # %if.then.555.i
	movq	40(%r13), %rdx
	leaq	880(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_path_init_local_shared
	movapd	384(%rsp), %xmm1        # 16-byte Reload
.LBB2_94:                               # %if.end.558.i
	movl	$stroke_add_fast, %eax
	xorl	%ecx, %ecx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	cmpq	%rax, 256(%rsp)         # 8-byte Folded Reload
	jne	.LBB2_96
# BB#95:                                # %if.then.561.i
	movq	40(%r13), %rdx
	leaq	752(%rsp), %rdi
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_path_init_local_shared
	movapd	384(%rsp), %xmm1        # 16-byte Reload
.LBB2_96:                               # %if.end.564.i
	movq	%r12, 184(%rsp)         # 8-byte Spill
	movq	%r13, 128(%rsp)         # 8-byte Spill
	movq	56(%rbp), %rax
	movq	24(%rax), %r14
	testq	%r14, %r14
	je	.LBB2_97
# BB#98:                                # %for.body.571.lr.ph.i
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movaps	416(%rsp), %xmm0        # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movzbl	344(%rsp), %eax         # 1-byte Folded Reload
	movl	%eax, 228(%rsp)         # 4-byte Spill
	movq	%rbx, %r8
	movq	%r8, 312(%rsp)          # 8-byte Spill
	leaq	28(%r8), %rax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	leaq	36(%r8), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	leaq	880(%rsp), %rax
	cmpq	%rax, %r15
	movq	%r15, 288(%rsp)         # 8-byte Spill
	setne	215(%rsp)               # 1-byte Folded Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 144(%rsp)        # 8-byte Spill
	movaps	352(%rsp), %xmm0        # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	movaps	400(%rsp), %xmm0        # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
	xorl	$1, 176(%rsp)           # 4-byte Folded Spill
	xorps	%xmm4, %xmm4
	.align	16, 0x90
.LBB2_99:                               # %for.body.571.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_102 Depth 2
                                        #       Child Loop BB2_103 Depth 3
                                        #         Child Loop BB2_107 Depth 4
                                        #           Child Loop BB2_111 Depth 5
                                        #             Child Loop BB2_116 Depth 6
	movq	8(%r14), %r12
	testq	%r12, %r12
	je	.LBB2_100
# BB#101:                               # %land.rhs.581.lr.ph.lr.ph.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	20(%r14), %r10d
	movl	24(%r14), %esi
	movb	88(%r14), %al
	movb	%al, 255(%rsp)          # 1-byte Spill
	leaq	32(%r14), %rax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movq	%r14, 168(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movl	$1, %r11d
	movl	$1, %r9d
.LBB2_102:                              # %land.rhs.581.lr.ph.i
                                        #   Parent Loop BB2_99 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_103 Depth 3
                                        #         Child Loop BB2_107 Depth 4
                                        #           Child Loop BB2_111 Depth 5
                                        #             Child Loop BB2_116 Depth 6
	movl	%esi, 304(%rsp)         # 4-byte Spill
	movl	%r10d, 328(%rsp)        # 4-byte Spill
.LBB2_103:                              # %land.rhs.581.i
                                        #   Parent Loop BB2_99 Depth=1
                                        #     Parent Loop BB2_102 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_107 Depth 4
                                        #           Child Loop BB2_111 Depth 5
                                        #             Child Loop BB2_116 Depth 6
	movw	16(%r12), %dx
	testw	%dx, %dx
	je	.LBB2_104
	.align	16, 0x90
.LBB2_107:                              # %d1.i
                                        #   Parent Loop BB2_99 Depth=1
                                        #     Parent Loop BB2_102 Depth=2
                                        #       Parent Loop BB2_103 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_111 Depth 5
                                        #             Child Loop BB2_116 Depth 6
	movl	20(%r12), %eax
	movl	24(%r12), %ecx
	movzwl	%dx, %edx
	cmpl	$4, %edx
	jne	.LBB2_109
# BB#108:                               # %if.then.590.i
                                        #   in Loop: Header=BB2_107 Depth=4
	movl	28(%r12), %ebx
	movl	32(%r12), %r15d
	movl	$1, %r13d
	jmp	.LBB2_110
	.align	16, 0x90
.LBB2_109:                              # %if.else.598.i
                                        #   in Loop: Header=BB2_107 Depth=4
	cmpl	$5, %edx
	sete	%dl
	movl	%eax, %ebx
	subl	%r10d, %ebx
	movl	%ecx, %r15d
	subl	%esi, %r15d
	movzbl	%dl, %r13d
.LBB2_110:                              # %if.end.618.i
                                        #   in Loop: Header=BB2_107 Depth=4
	movl	%r15d, %edx
	orl	%ebx, %edx
	sete	%dl
	movzbl	%dl, %edx
	andl	%edx, %r11d
	movl	%r10d, 640(%rsp)
	movl	%esi, 644(%rsp)
	jmp	.LBB2_111
	.align	16, 0x90
.LBB2_127:                              #   in Loop: Header=BB2_111 Depth=5
	xorl	%r11d, %r11d
.LBB2_111:                              # %d.i
                                        #   Parent Loop BB2_99 Depth=1
                                        #     Parent Loop BB2_102 Depth=2
                                        #       Parent Loop BB2_103 Depth=3
                                        #         Parent Loop BB2_107 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_116 Depth 6
	movl	%esi, %ebp
	movl	%r9d, %esi
	movl	%esi, 400(%rsp)         # 4-byte Spill
	movzwl	18(%r12), %edx
	movl	%esi, %edi
	andl	$1, %edi
	orl	$2, %edi
	testb	$1, %dl
	movl	$0, %esi
	cmovel	%esi, %edi
	movl	%edi, 416(%rsp)         # 4-byte Spill
	movl	%edx, %esi
	andl	$4, %esi
	andl	$8, %edx
	andl	$-2, %r9d
	orl	%esi, %r9d
	orl	%edx, %r9d
	orl	%edi, %r9d
	movl	%eax, 672(%rsp)
	movl	%ecx, 676(%rsp)
	movl	%r15d, %edx
	orl	%ebx, %edx
	je	.LBB2_113
# BB#112:                               # %lor.lhs.false.658.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movzwl	16(%r12), %edx
	andl	$65534, %edx            # imm = 0xFFFE
	cmpl	$4, %edx
	jne	.LBB2_152
.LBB2_113:                              # %if.then.668.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movq	440(%rsp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	je	.LBB2_114
# BB#115:                               # %land.lhs.true.671.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movzwl	16(%r12), %edx
	andl	$65534, %edx            # imm = 0xFFFE
	cmpl	$4, %edx
	movl	%ebp, %esi
	je	.LBB2_116
	jmp	.LBB2_105
	.align	16, 0x90
.LBB2_114:                              #   in Loop: Header=BB2_111 Depth=5
	movl	%ebp, %esi
	.align	16, 0x90
.LBB2_116:                              # %while.cond.683.i
                                        #   Parent Loop BB2_99 Depth=1
                                        #     Parent Loop BB2_102 Depth=2
                                        #       Parent Loop BB2_103 Depth=3
                                        #         Parent Loop BB2_107 Depth=4
                                        #           Parent Loop BB2_111 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movq	8(%r12), %r12
	xorl	%ebp, %ebp
	testq	%r12, %r12
	movl	$0, %r14d
	je	.LBB2_119
# BB#117:                               # %land.rhs.687.i
                                        #   in Loop: Header=BB2_116 Depth=6
	testl	%r13d, %r13d
	movb	$1, %bpl
	jne	.LBB2_118
# BB#124:                               # %land.rhs.687.i
                                        #   in Loop: Header=BB2_116 Depth=6
	movzwl	16(%r12), %edx
	testw	%dx, %dx
	je	.LBB2_118
# BB#125:                               # %if.end.696.i
                                        #   in Loop: Header=BB2_116 Depth=6
	movl	%edx, %eax
	andl	$65534, %eax            # imm = 0xFFFE
	cmpl	$4, %eax
	je	.LBB2_107
# BB#126:                               # %if.end.707.i
                                        #   in Loop: Header=BB2_116 Depth=6
	movl	20(%r12), %eax
	movl	24(%r12), %ecx
	movl	%eax, %ebx
	subl	%r10d, %ebx
	movl	%ecx, %r15d
	subl	%esi, %r15d
	movl	%r15d, %edx
	orl	%ebx, %edx
	je	.LBB2_116
	jmp	.LBB2_127
	.align	16, 0x90
.LBB2_118:                              #   in Loop: Header=BB2_111 Depth=5
	movq	%r12, %r14
.LBB2_119:                              # %while.end.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movss	56(%r8), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm0
	jne	.LBB2_128
	jp	.LBB2_128
# BB#120:                               # %land.lhs.true.721.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movq	368(%rsp), %rdx         # 8-byte Reload
	cmpl	$1, (%rdx)
	je	.LBB2_128
# BB#121:                               # %land.lhs.true.724.i
                                        #   in Loop: Header=BB2_111 Depth=5
	testl	%r13d, %r13d
	jne	.LBB2_128
# BB#122:                               # %land.lhs.true.724.i
                                        #   in Loop: Header=BB2_111 Depth=5
	cmpl	$1, 32(%r8)
	jne	.LBB2_123
	.align	16, 0x90
.LBB2_128:                              # %if.end.730.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	%r10d, %r12d
	testl	%r13d, %r13d
	jne	.LBB2_133
# BB#129:                               # %if.end.730.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movq	384(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB2_133
# BB#130:                               # %land.lhs.true.736.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	20(%rdx), %r10d
	movl	24(%rdx), %edx
	movl	%r10d, %edi
	subl	%r12d, %edi
	jne	.LBB2_132
# BB#131:                               # %land.lhs.true.736.i
                                        #   in Loop: Header=BB2_111 Depth=5
	cmpl	%esi, %edx
	je	.LBB2_133
.LBB2_132:                              # %if.then.746.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	%edx, %r15d
	subl	%esi, %r15d
	movl	%r10d, %eax
	movl	%edi, %ebx
	movl	%edx, %ecx
.LBB2_133:                              # %if.end.754.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	%r15d, %edx
	orl	%ebx, %edx
	jne	.LBB2_135
# BB#134:                               # %if.then.758.i
                                        #   in Loop: Header=BB2_111 Depth=5
	ucomiss	68(%r8), %xmm4
	movl	$256, %edx              # imm = 0x100
	cmovnel	%ebx, %edx
	cmovnpl	%edx, %ebx
	movl	$256, %edx              # imm = 0x100
	cmovnel	%edx, %r15d
	cmovpl	%edx, %r15d
.LBB2_135:                              # %if.end.766.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	%r12d, %r10d
	cmpl	%r10d, %eax
	jne	.LBB2_150
# BB#136:                               # %if.end.766.i
                                        #   in Loop: Header=BB2_111 Depth=5
	cmpl	%esi, %ecx
	jne	.LBB2_150
# BB#137:                               # %land.lhs.true.772.i
                                        #   in Loop: Header=BB2_111 Depth=5
	testq	%r14, %r14
	je	.LBB2_139
# BB#138:                               # %lor.lhs.false.775.i
                                        #   in Loop: Header=BB2_111 Depth=5
	cmpw	$0, 16(%r14)
	movl	%r10d, %eax
	movl	%esi, %ecx
	jne	.LBB2_150
.LBB2_139:                              # %if.then.780.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	%r11d, 352(%rsp)        # 4-byte Spill
	movl	%r9d, %r12d
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 336(%rsp)        # 8-byte Spill
	movapd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	cvtsi2sdl	%r15d, %xmm1
	movsd	%xmm1, 344(%rsp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 320(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_141
# BB#140:                               # %call.sqrt558
                                        #   in Loop: Header=BB2_111 Depth=5
	movsd	320(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_141:                              # %if.then.780.i.split
                                        #   in Loop: Header=BB2_111 Depth=5
	movsd	296(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cmpl	$0, 308(%rsp)           # 4-byte Folded Reload
	xorps	%xmm4, %xmm4
	movl	%r12d, %r9d
	movl	352(%rsp), %r11d        # 4-byte Reload
	movl	328(%rsp), %r10d        # 4-byte Reload
	movl	304(%rsp), %esi         # 4-byte Reload
	je	.LBB2_143
# BB#142:                               #   in Loop: Header=BB2_111 Depth=5
	movq	312(%rsp), %r8          # 8-byte Reload
	movsd	336(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB2_149
.LBB2_143:                              # %land.lhs.true.791.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movq	368(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movq	312(%rsp), %r8          # 8-byte Reload
	je	.LBB2_147
# BB#144:                               # %lor.lhs.false.795.i
                                        #   in Loop: Header=BB2_111 Depth=5
	cmpl	$0, 32(%r8)
	je	.LBB2_147
# BB#145:                               # %lor.lhs.false.799.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB2_147
# BB#146:                               #   in Loop: Header=BB2_111 Depth=5
	movsd	336(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB2_149
.LBB2_147:                              # %if.then.802.i
                                        #   in Loop: Header=BB2_111 Depth=5
	movl	%ebx, %ecx
	negl	%ecx
	cmovll	%ebx, %ecx
	movl	%r15d, %eax
	negl	%eax
	cmovll	%r15d, %eax
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LCPI2_3(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	movsd	336(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jbe	.LBB2_149
# BB#148:                               # %if.then.841.i
                                        #   in Loop: Header=BB2_111 Depth=5
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
.LBB2_149:                              # %if.end.846.i
                                        #   in Loop: Header=BB2_111 Depth=5
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movsd	344(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%r10d, %eax
	addl	%esi, %ecx
.LBB2_150:                              # %if.end.855.i
                                        #   in Loop: Header=BB2_111 Depth=5
	testb	%bpl, %bpl
	cmoveq	384(%rsp), %r14         # 8-byte Folded Reload
	testl	%r13d, %r13d
	movq	(%r14), %r12
	je	.LBB2_111
	jmp	.LBB2_151
	.align	16, 0x90
.LBB2_105:                              # %while.cond.loopexit.i
                                        #   in Loop: Header=BB2_103 Depth=3
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.LBB2_103
	jmp	.LBB2_106
	.align	16, 0x90
.LBB2_151:                              # %if.end.865.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, 672(%rsp)
	movl	%ecx, 676(%rsp)
.LBB2_152:                              # %if.end.872.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, %r10d
	movl	%ecx, %esi
	movl	%ebx, 712(%rsp)
	movl	%r15d, 716(%rsp)
	cmpl	$0, 308(%rsp)           # 4-byte Folded Reload
	je	.LBB2_154
# BB#153:                               # %if.then.877.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%r11d, %ebp
	movl	%r9d, 352(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	movups	%xmm0, 696(%rsp)
	movl	$1, 720(%rsp)
	jmp	.LBB2_194
	.align	16, 0x90
.LBB2_154:                              # %if.else.886.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpl	$0, 280(%rsp)           # 4-byte Folded Reload
	je	.LBB2_161
# BB#155:                               # %if.then.889.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, %r14d
	movl	%r10d, %r13d
	movl	%r11d, %ebp
	movl	%r9d, 352(%rsp)         # 4-byte Spill
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 336(%rsp)        # 8-byte Spill
	cvtsi2sdl	%r15d, %xmm1
	movsd	%xmm1, 344(%rsp)        # 8-byte Spill
	movapd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 328(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_157
# BB#156:                               # %call.sqrt559
                                        #   in Loop: Header=BB2_102 Depth=2
	movsd	328(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_157:                              # %if.then.889.i.split
                                        #   in Loop: Header=BB2_102 Depth=2
	movsd	160(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	336(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 696(%rsp)
	movsd	344(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 700(%rsp)
	movss	192(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	196(%rsp), %xmm0        # 4-byte Folded Reload
	movl	%r13d, %r10d
	movl	%r14d, %esi
	jbe	.LBB2_159
# BB#158:                               # %if.then.908.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%ecx, 704(%rsp)
	negl	%eax
	jmp	.LBB2_160
.LBB2_161:                              # %if.else.934.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, %r13d
	movl	%r10d, 328(%rsp)        # 4-byte Spill
	movl	%r11d, %ebp
	movl	%r9d, 352(%rsp)         # 4-byte Spill
	cvtsi2ssl	%ebx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	312(%rsp), %rdi         # 8-byte Reload
	leaq	3168(%rsp), %rsi
	callq	gs_imager_idtransform
	testl	%eax, %eax
	js	.LBB2_162
# BB#163:                               # %if.else.946.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, %ebx
	movsd	3168(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	3176(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 344(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_165
# BB#164:                               # %call.sqrt560
                                        #   in Loop: Header=BB2_102 Depth=2
	movsd	344(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_165:                              # %if.else.946.i.split
                                        #   in Loop: Header=BB2_102 Depth=2
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	3168(%rsp), %xmm1
	movapd	%xmm1, %xmm0
	jmp	.LBB2_166
.LBB2_159:                              # %if.else.920.i
                                        #   in Loop: Header=BB2_102 Depth=2
	negl	%ecx
	movl	%ecx, 704(%rsp)
.LBB2_160:                              # %if.end.1042.thread.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, 708(%rsp)
	movl	$0, 720(%rsp)
	jmp	.LBB2_184
.LBB2_162:                              #   in Loop: Header=BB2_102 Depth=2
	xorpd	%xmm0, %xmm0
	xorl	%ebx, %ebx
	xorpd	%xmm1, %xmm1
.LBB2_166:                              # %if.end.963.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	180(%rsp), %esi         # 4-byte Reload
	movsd	%xmm1, 3168(%rsp)
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movhpd	%xmm0, 3176(%rsp)
	movsd	144(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, 696(%rsp)
	movsd	136(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 700(%rsp)
	cmpl	$1, %esi
	je	.LBB2_168
# BB#167:                               # %if.then.980.i
                                        #   in Loop: Header=BB2_102 Depth=2
	mulsd	104(%rsp), %xmm1        # 8-byte Folded Reload
	cvttsd2si	%xmm1, %edx
	addl	%edx, %ecx
	movl	%ecx, 696(%rsp)
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	addl	%eax, %ecx
	movl	%ecx, 700(%rsp)
.LBB2_168:                              # %if.end.997.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 176(%rsp)         # 4-byte Folded Reload
	je	.LBB2_170
# BB#169:                               # %if.then.1001.i
                                        #   in Loop: Header=BB2_102 Depth=2
	xorpd	.LCPI2_9(%rip), %xmm0
	movapd	%xmm0, 3168(%rsp)
.LBB2_170:                              # %if.end.1008.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movsd	144(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 704(%rsp)
	movsd	136(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, %ecx
	negl	%ecx
	movl	%ecx, 708(%rsp)
	cmpl	$1, %esi
	je	.LBB2_172
# BB#171:                               # %if.then.1024.i
                                        #   in Loop: Header=BB2_102 Depth=2
	mulsd	104(%rsp), %xmm0        # 8-byte Folded Reload
	cvttsd2si	%xmm0, %ecx
	subl	%ecx, %eax
	movl	%eax, 704(%rsp)
	mulsd	112(%rsp), %xmm1        # 8-byte Folded Reload
	cvttsd2si	%xmm1, %ecx
	subl	%edx, %ecx
	movl	%ecx, 708(%rsp)
.LBB2_172:                              # %if.end.1039.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	716(%rsp), %edx
	testl	%edx, %edx
	je	.LBB2_173
# BB#174:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, 180(%rsp)         # 4-byte Spill
	movl	712(%rsp), %esi
	movl	%eax, %edi
	negl	%edi
	cmovll	%eax, %edi
	testl	%esi, %esi
	je	.LBB2_175
# BB#177:                               # %cond.end.27.i.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%ebx, 284(%rsp)         # 4-byte Spill
	cmpl	$127, %edi
	jg	.LBB2_180
# BB#178:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%ecx, %edi
	negl	%edi
	cmovll	%ecx, %edi
	cmpl	$127, %edi
	jg	.LBB2_180
# BB#179:                               # %if.end.1042.thread883.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	$1, 720(%rsp)
	xorps	%xmm4, %xmm4
	movl	328(%rsp), %r10d        # 4-byte Reload
	movl	%r13d, %esi
	jmp	.LBB2_194
.LBB2_173:                              # %if.then.i.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%ebx, 284(%rsp)         # 4-byte Spill
	movl	%esi, 180(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	cmpl	$128, %eax
	setl	%al
	jmp	.LBB2_183
.LBB2_180:                              # %if.end.43.i.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cvtsi2sdl	%esi, %xmm3
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm3, %xmm2
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 344(%rsp)        # 8-byte Spill
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 336(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_182
# BB#181:                               # %call.sqrt561
                                        #   in Loop: Header=BB2_102 Depth=2
	movsd	336(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_182:                              # %if.end.43.i.i.split
                                        #   in Loop: Header=BB2_102 Depth=2
	movsd	%xmm0, 336(%rsp)        # 8-byte Spill
	movsd	344(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	movsd	336(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI2_5(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	jmp	.LBB2_183
.LBB2_175:                              # %cond.end.16.i.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%ebx, 284(%rsp)         # 4-byte Spill
	cmpl	$128, %edi
	setl	%al
.LBB2_183:                              # %if.end.1042.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movzbl	%al, %eax
	xorps	%xmm4, %xmm4
	movl	328(%rsp), %r10d        # 4-byte Reload
	movl	%r13d, %esi
	movl	%eax, 720(%rsp)
	testl	%eax, %eax
	jne	.LBB2_194
	.align	16, 0x90
.LBB2_184:                              # %if.then.1045.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, %r15d
	movl	%r10d, %ebx
	movq	440(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	272(%rsp), %rdi         # 8-byte Reload
	je	.LBB2_186
# BB#185:                               # %if.then.1047.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	$0, 984(%rdi)
.LBB2_186:                              # %if.end.1048.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	(%r12), %rax
	testq	%rax, %rax
	movq	312(%rsp), %rdx         # 8-byte Reload
	movl	352(%rsp), %esi         # 4-byte Reload
	je	.LBB2_189
# BB#187:                               # %lor.lhs.false.1052.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpw	$0, 16(%rax)
	je	.LBB2_189
# BB#188:                               #   in Loop: Header=BB2_102 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_193
.LBB2_189:                              # %land.lhs.true.1058.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_192
# BB#190:                               # %lor.lhs.false.1062.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpw	$0, 16(%rax)
	je	.LBB2_192
# BB#191:                               #   in Loop: Header=BB2_102 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_193
.LBB2_192:                              # %land.rhs.1068.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpb	$0, 255(%rsp)           # 1-byte Folded Reload
	sete	%cl
	testl	%ebp, %ebp
	setne	%al
	orb	%cl, %al
.LBB2_193:                              # %land.end.1073.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movzbl	%al, %r8d
	movl	400(%rsp), %eax         # 4-byte Reload
	shrl	$4, %eax
	movl	%esi, %ecx
	andl	$2, %ecx
	orl	%eax, %ecx
	movl	416(%rsp), %r9d         # 4-byte Reload
	orl	$-2, %r9d
	andl	%ecx, %r9d
	xorl	%ecx, %ecx
	leaq	640(%rsp), %rsi
	callq	adjust_stroke
	movl	640(%rsp), %edx
	movl	704(%rsp), %ecx
	movl	708(%rsp), %eax
	leal	(%rdx,%rcx), %esi
	movl	%esi, 648(%rsp)
	movl	644(%rsp), %esi
	leal	(%rsi,%rax), %edi
	movl	%edi, 652(%rsp)
	xorl	%edi, %edi
	subl	696(%rsp), %edi
	movl	%edi, 664(%rsp)
	xorl	%edi, %edi
	subl	700(%rsp), %edi
	movl	%edi, 668(%rsp)
	subl	%ecx, %edx
	movl	%edx, 656(%rsp)
	subl	%eax, %esi
	movl	%esi, 660(%rsp)
	movl	672(%rsp), %edx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 680(%rsp)
	movl	676(%rsp), %esi
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, 684(%rsp)
	addl	%ecx, %edx
	movl	%edx, 688(%rsp)
	addl	%eax, %esi
	movl	%esi, 692(%rsp)
	xorps	%xmm4, %xmm4
	movl	%ebx, %r10d
	movl	%r15d, %esi
.LBB2_194:                              # %if.end.1081.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	440(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %ebx
	testl	%eax, %eax
	movq	%rax, %rcx
	movl	%ebp, %r11d
	je	.LBB2_218
# BB#195:                               # %if.then.1084.i
                                        #   in Loop: Header=BB2_102 Depth=2
	testb	$1, 18(%r12)
	movl	248(%rsp), %eax         # 4-byte Reload
	movq	312(%rsp), %rbp         # 8-byte Reload
	jne	.LBB2_197
# BB#196:                               # %cond.false.1091.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	40(%rbp), %eax
.LBB2_197:                              # %cond.end.1093.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, %r13d
	movl	%r10d, %r15d
	movl	%r11d, %r14d
	movq	%rcx, %rsi
	decl	%esi
	cmpb	$0, 255(%rsp)           # 1-byte Folded Reload
	movl	$1, %ecx
	cmovnel	%ecx, %esi
	cmpl	$3, %eax
	sete	%dl
	cmovel	%ecx, %ebx
	movl	$0, %ecx
	movq	%rcx, %rdi
	cmovel	%edi, %esi
	movq	%rsi, %r8
	movzwl	16(%r12), %ecx
	cmpl	$5, %ecx
	sete	%cl
	cmovel	%edi, %ebx
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	orb	%dl, %cl
	leaq	640(%rsp), %r9
	cmovneq	%rdi, %r9
	leaq	880(%rsp), %rdx
	cmpq	%rdx, 288(%rsp)         # 8-byte Folded Reload
	movq	272(%rsp), %rbx         # 8-byte Reload
	jne	.LBB2_199
# BB#198:                               # %land.lhs.true.1114.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	212(%rbp), %esi
	movl	%esi, %edx
	notl	%edx
	leal	(%rsi,%rsi), %edi
	andl	%edx, %edi
	andl	$170, %edi
	andl	$1024, %esi             # imm = 0x400
	movb	$1, %dl
	orl	%edi, %esi
	je	.LBB2_202
.LBB2_199:                              # %lor.rhs.1126.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	$1, %edx
	testb	$1, %cl
	jne	.LBB2_201
# BB#200:                               # %cond.false.1130.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	80(%r9), %edx
.LBB2_201:                              # %cond.end.1132.i
                                        #   in Loop: Header=BB2_102 Depth=2
	testl	%edx, %edx
	setne	%dl
.LBB2_202:                              # %lor.end.1135.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movzbl	%dl, %edx
	movl	400(%rsp), %esi         # 4-byte Reload
	shrl	$4, %esi
	movl	352(%rsp), %ecx         # 4-byte Reload
	andl	$2, %ecx
	orl	%esi, %ecx
	movl	416(%rsp), %esi         # 4-byte Reload
	orl	$-2, %esi
	andl	%ecx, %esi
	movl	228(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 56(%rsp)
	movl	%eax, 48(%rsp)
	movl	280(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	leaq	3136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%esi, 64(%rsp)
	movq	288(%rsp), %rdi         # 8-byte Reload
	movq	232(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r8d, %ecx
	leaq	544(%rsp), %r8
	callq	*256(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	sets	%cl
	orb	215(%rsp), %cl          # 1-byte Folded Reload
	je	.LBB2_203
# BB#318:                               # %cleanup.1213.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, %ecx
	movl	%eax, 284(%rsp)         # 4-byte Spill
	sarl	$31, %ecx
	testb	$24, %cl
	movq	%rbp, %r8
	xorps	%xmm4, %xmm4
	movl	352(%rsp), %r9d         # 4-byte Reload
	movl	%r14d, %r11d
	movl	%r15d, %r10d
	movl	%r13d, %esi
	movq	440(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_222
	jmp	.LBB2_319
	.align	16, 0x90
.LBB2_218:                              # %if.else.1219.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movzwl	16(%r12), %eax
	cmpl	$5, %eax
	jne	.LBB2_220
# BB#219:                               #   in Loop: Header=BB2_102 Depth=2
	xorl	%ebx, %ebx
	jmp	.LBB2_221
	.align	16, 0x90
.LBB2_203:                              # %land.lhs.true.1150.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%eax, 284(%rsp)         # 4-byte Spill
	movq	936(%rsp), %rax
	testq	%rax, %rax
	xorps	%xmm4, %xmm4
	movl	%r14d, %r11d
	movl	%r15d, %r10d
	movl	%r13d, %esi
	je	.LBB2_206
# BB#204:                               # %land.lhs.true.1154.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpq	$0, 24(%rax)
	je	.LBB2_205
.LBB2_206:                              # %land.lhs.true.1160.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	%rbp, %r8
	movl	212(%r8), %eax
	movl	%eax, %ecx
	notl	%ecx
	leal	(%rax,%rax), %edx
	andl	%ecx, %edx
	andl	$170, %edx
	andl	$1024, %eax             # imm = 0x400
	orl	%edx, %eax
	jne	.LBB2_207
# BB#208:                               # %if.then.1172.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpl	$0, 308(%rsp)           # 4-byte Folded Reload
	je	.LBB2_209
# BB#210:                               # %cond.end.1190.critedge.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, %r13d
	movl	%r10d, 328(%rsp)        # 4-byte Spill
	movl	%r11d, %r15d
	movl	$0, 1268(%rsp)
	xorl	%eax, %eax
	jmp	.LBB2_211
.LBB2_220:                              # %if.else.1225.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	720(%rsp), %eax
	movl	%eax, 528(%rsp)
	movups	704(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movupd	640(%rsp), %xmm0
	movupd	656(%rsp), %xmm1
	movupd	672(%rsp), %xmm2
	movups	688(%rsp), %xmm3
	movaps	%xmm3, 496(%rsp)
	movapd	%xmm2, 480(%rsp)
	movapd	%xmm1, 464(%rsp)
	movapd	%xmm0, 448(%rsp)
.LBB2_221:                              # %if.end.1227.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	312(%rsp), %r8          # 8-byte Reload
	movl	352(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB2_222
.LBB2_205:                              #   in Loop: Header=BB2_102 Depth=2
	movq	%rbp, %r8
.LBB2_207:                              #   in Loop: Header=BB2_102 Depth=2
	movl	352(%rsp), %r9d         # 4-byte Reload
	movq	440(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_222
.LBB2_209:                              # %cond.false.1175.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%esi, %r13d
	movl	%r10d, 328(%rsp)        # 4-byte Spill
	movl	%r11d, %r15d
	movl	300(%r8), %eax
	movl	%eax, 1268(%rsp)
	movl	304(%r8), %eax
.LBB2_211:                              # %cond.end.1190.i
                                        #   in Loop: Header=BB2_102 Depth=2
	testq	%rbx, %rbx
	movl	%eax, 1272(%rsp)
	je	.LBB2_216
# BB#212:                               # %if.then.1197.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_214
# BB#213:                               # %land.lhs.true.i.526.i
                                        #   in Loop: Header=BB2_102 Depth=2
	cmpq	$0, 24(%rax)
	je	.LBB2_216
.LBB2_214:                              # %if.end.i.529.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	%rbx, %rdi
	movq	288(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rbp
	movq	%r8, %rbx
	callq	gx_path_append_reversed
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_317
# BB#215:                               # %gx_join_path_and_reverse.exit.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	gx_path_free
	movq	%rbx, %rbp
	movq	288(%rsp), %rbx         # 8-byte Reload
	movq	40(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	callq	gx_path_close_subpath_notes
	movq	%r14, %r8
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_317
.LBB2_216:                              # %if.end.1203.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, %rbx
	movq	288(%rsp), %rdx         # 8-byte Reload
	leaq	1264(%rsp), %rcx
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	3264(%rsp), %r9
	callq	*1336(%rdi)
	movl	%eax, %r14d
	movl	$.L.str, %esi
	leaq	880(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gx_path_free
	movl	%r14d, %ecx
	testl	%ecx, %ecx
	js	.LBB2_316
# BB#217:                               # %if.end.1209.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	%ecx, 284(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	%rbx, %r8
	xorps	%xmm4, %xmm4
	movl	352(%rsp), %r9d         # 4-byte Reload
	movl	%r15d, %r11d
	movl	328(%rsp), %r10d        # 4-byte Reload
	movl	%r13d, %esi
	movq	440(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_222:                              # %if.end.1227.i
                                        #   in Loop: Header=BB2_102 Depth=2
	movl	720(%rsp), %eax
	movl	%eax, 624(%rsp)
	movups	704(%rsp), %xmm0
	movaps	%xmm0, 608(%rsp)
	movupd	640(%rsp), %xmm0
	movupd	656(%rsp), %xmm1
	movups	672(%rsp), %xmm2
	movups	688(%rsp), %xmm3
	movaps	%xmm3, 592(%rsp)
	movaps	%xmm2, 576(%rsp)
	movapd	%xmm1, 560(%rsp)
	movapd	%xmm0, 544(%rsp)
	shll	$4, %r9d
	orl	$1, %r9d
	movq	8(%r12), %r12
	testq	%r12, %r12
	movl	%ebx, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movl	$0, %r14d
	jne	.LBB2_102
	jmp	.LBB2_223
	.align	16, 0x90
.LBB2_100:                              #   in Loop: Header=BB2_99 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB2_297
	.align	16, 0x90
.LBB2_123:                              #   in Loop: Header=BB2_99 Depth=1
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	jmp	.LBB2_223
.LBB2_104:                              #   in Loop: Header=BB2_99 Depth=1
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	movq	%r12, %r14
.LBB2_223:                              # %while.end.1237.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_297
# BB#224:                               # %if.then.1239.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testq	%r14, %r14
	movq	%r14, %rax
	jne	.LBB2_226
	jmp	.LBB2_225
.LBB2_106:                              #   in Loop: Header=BB2_99 Depth=1
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
.LBB2_225:                              # %cond.true.1243.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	56(%rax), %rax
	movq	24(%rax), %rax
	xorl	%r14d, %r14d
.LBB2_226:                              # %cond.end.1248.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movw	18(%rax), %cx
	andw	$1, %cx
	movl	248(%rsp), %eax         # 4-byte Reload
	movq	288(%rsp), %r12         # 8-byte Reload
	jne	.LBB2_228
# BB#227:                               # %cond.false.1256.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	40(%r8), %eax
.LBB2_228:                              # %cond.end.1258.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testl	%r11d, %r11d
	jne	.LBB2_229
# BB#230:                               # %cond.end.1258.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpb	$0, 255(%rsp)           # 1-byte Folded Reload
	je	.LBB2_231
# BB#232:                               # %cond.end.1258.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$3, %eax
	movl	$0, %r13d
	je	.LBB2_237
# BB#233:                               # %land.lhs.true.1272.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	168(%rsp), %rdx         # 8-byte Reload
	cmpw	$0, 16(%rdx)
	leaq	448(%rsp), %r13
	jne	.LBB2_237
# BB#234:                               # %land.lhs.true.1277.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	168(%rsp), %rdx         # 8-byte Reload
	movq	8(%rdx), %rdx
	testq	%rdx, %rdx
	leaq	448(%rsp), %r13
	je	.LBB2_237
# BB#235:                               # %land.lhs.true.1280.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movzwl	16(%rdx), %edx
	cmpl	$5, %edx
	movl	$0, %r13d
	je	.LBB2_237
# BB#236:                               # %select.mid836
                                        #   in Loop: Header=BB2_99 Depth=1
	leaq	448(%rsp), %r13
	jmp	.LBB2_237
.LBB2_229:                              #   in Loop: Header=BB2_99 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB2_237
.LBB2_231:                              #   in Loop: Header=BB2_99 Depth=1
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_237:                              # %if.end.1287.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%r9d, %edx
	andl	$1, %edx
	orl	$2, %edx
	testw	%cx, %cx
	movl	$0, %ecx
	cmovel	%ecx, %edx
	movl	%edx, %esi
	orl	%r9d, %esi
	leal	-1(%rbx), %ecx
	movq	%rbx, %r15
	movl	%r9d, %edi
	movl	%r9d, %ebp
	shrl	$4, %edi
	andl	$2, %esi
	orl	%edi, %esi
	orl	$-2, %edx
	andl	%esi, %edx
	movl	228(%rsp), %esi         # 4-byte Reload
	movl	%esi, 56(%rsp)
	movl	%eax, 48(%rsp)
	movl	280(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	leaq	3136(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r8, %rbx
	movq	272(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%edx, 64(%rsp)
	movl	$1, %edx
	movq	%r12, %rdi
	movq	232(%rsp), %rsi         # 8-byte Reload
	leaq	544(%rsp), %r8
	movq	%r13, %r9
	callq	*256(%rsp)              # 8-byte Folded Reload
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_316
# BB#238:                               # %if.end.1318.i
                                        #   in Loop: Header=BB2_99 Depth=1
	leaq	880(%rsp), %rax
	cmpq	%rax, %r12
	je	.LBB2_240
# BB#239:                               #   in Loop: Header=BB2_99 Depth=1
	movl	%ecx, 284(%rsp)         # 4-byte Spill
.LBB2_242:                              #   in Loop: Header=BB2_99 Depth=1
	movq	%rbx, %r8
	xorps	%xmm4, %xmm4
	jmp	.LBB2_254
.LBB2_240:                              # %land.lhs.true.1321.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ecx, 284(%rsp)         # 4-byte Spill
	movq	936(%rsp), %rax
	testq	%rax, %rax
	je	.LBB2_243
# BB#241:                               # %land.lhs.true.1325.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpq	$0, 24(%rax)
	je	.LBB2_242
.LBB2_243:                              # %land.lhs.true.1331.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%rbx, %r8
	movl	212(%r8), %eax
	movl	%eax, %ecx
	notl	%ecx
	leal	(%rax,%rax), %edx
	andl	%ecx, %edx
	andl	$170, %edx
	andl	$1024, %eax             # imm = 0x400
	orl	%edx, %eax
	xorps	%xmm4, %xmm4
	jne	.LBB2_254
# BB#244:                               # %if.then.1343.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$0, 308(%rsp)           # 4-byte Folded Reload
	je	.LBB2_245
# BB#246:                               # %cond.end.1361.critedge.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ebp, 352(%rsp)         # 4-byte Spill
	movl	$0, 1268(%rsp)
	xorl	%eax, %eax
	jmp	.LBB2_247
.LBB2_245:                              # %cond.false.1346.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ebp, 352(%rsp)         # 4-byte Spill
	movl	300(%r8), %eax
	movl	%eax, 1268(%rsp)
	movl	304(%r8), %eax
.LBB2_247:                              # %cond.end.1361.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	movl	%eax, 1272(%rsp)
	je	.LBB2_252
# BB#248:                               # %if.then.1368.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_250
# BB#249:                               # %land.lhs.true.i.535.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpq	$0, 24(%rax)
	je	.LBB2_252
.LBB2_250:                              # %if.end.i.538.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%rbx, %rdi
	leaq	880(%rsp), %rsi
	movq	%rbx, %r12
	movq	%r8, %rbx
	callq	gx_path_append_reversed
	movq	%rbx, %rdx
	movq	%r12, %rbx
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_317
# BB#251:                               # %gx_join_path_and_reverse.exit544.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r12
	callq	gx_path_free
	movq	288(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	xorl	%esi, %esi
	leaq	880(%rsp), %rdi
	callq	gx_path_close_subpath_notes
	movq	%r12, %r8
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_317
.LBB2_252:                              # %if.end.1374.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, %rbp
	leaq	880(%rsp), %rbx
	movq	%rbx, %rdx
	leaq	1264(%rsp), %rcx
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	3264(%rsp), %r9
	callq	*1336(%rdi)
	movl	%eax, %r12d
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	gx_path_free
	movl	%r12d, %ecx
	testl	%ecx, %ecx
	js	.LBB2_316
# BB#253:                               # %if.end.1381.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ecx, 284(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	movq	288(%rsp), %r12         # 8-byte Reload
	movq	%rbp, %r8
	xorps	%xmm4, %xmm4
	movl	352(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB2_254:                              # %if.end.1384.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testb	$64, %bpl
	movq	368(%rsp), %rax         # 8-byte Reload
	cmoveq	216(%rsp), %rax         # 8-byte Folded Reload
	cmpl	$0, 156(%rsp)           # 4-byte Folded Reload
	je	.LBB2_255
# BB#256:                               # %if.end.1384.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testq	%r13, %r13
	jne	.LBB2_257
# BB#258:                               # %if.end.1384.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB2_259
# BB#260:                               # %if.then.1400.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$1, %r15d
	sete	%cl
	movq	368(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB2_280
# BB#261:                               # %if.end.i.546.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$0, 528(%rsp)
	je	.LBB2_262
# BB#263:                               # %if.then.1.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r8, %rbp
	movzbl	%cl, %r8d
	movq	480(%rsp), %xmm0        # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	448(%rsp), %xmm1        # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psllq	$32, %xmm1
	pshufd	$237, %xmm1, %xmm2      # xmm2 = xmm1[1,3,2,3]
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$31, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movd	%xmm1, %eax
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_265
# BB#264:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movd	%xmm0, %ecx
	sarl	$31, %ecx
	andl	$-256, %ecx
	orl	$128, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.LBB2_266
.LBB2_259:                              #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	jmp	.LBB2_297
.LBB2_255:                              #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	jmp	.LBB2_297
.LBB2_257:                              #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	jmp	.LBB2_297
.LBB2_262:                              # %if.end.if.end.2_crit_edge.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	456(%rsp), %esi
	jmp	.LBB2_267
.LBB2_265:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	sarl	$31, %eax
	andl	$-256, %eax
	orl	$128, %eax
	movl	%eax, %edx
	negl	%edx
	xorl	%ecx, %ecx
.LBB2_266:                              # %set_thin_widths.exit.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ecx, 504(%rsp)
	movl	%ecx, 516(%rsp)
	movl	%eax, 508(%rsp)
	movl	%edx, 512(%rsp)
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	272(%rsp), %rdi         # 8-byte Reload
	leaq	448(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%rdx, %rbx
	callq	adjust_stroke
	movq	%rbx, %r8
	movl	448(%rsp), %edx
	movl	512(%rsp), %ecx
	movl	516(%rsp), %eax
	leal	(%rdx,%rcx), %esi
	movl	%esi, 456(%rsp)
	movl	452(%rsp), %edi
	leal	(%rdi,%rax), %ebp
	movl	%ebp, 460(%rsp)
	xorl	%ebp, %ebp
	subl	504(%rsp), %ebp
	movl	%ebp, 472(%rsp)
	xorl	%ebp, %ebp
	subl	508(%rsp), %ebp
	movl	%ebp, 476(%rsp)
	subl	%ecx, %edx
	movl	%edx, 464(%rsp)
	subl	%eax, %edi
	movl	%edi, 468(%rsp)
	movl	480(%rsp), %edx
	movl	%edx, %edi
	subl	%ecx, %edi
	movl	%edi, 488(%rsp)
	movl	484(%rsp), %ebp
	movl	%ebp, %edi
	subl	%eax, %edi
	movl	%edi, 492(%rsp)
	addl	%ecx, %edx
	movl	%edx, 496(%rsp)
	addl	%eax, %ebp
	movl	%ebp, 500(%rsp)
	movl	28(%r8), %eax
.LBB2_267:                              # %if.end.2.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_270
# BB#268:                               # %do.end.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r8, %rbx
	movl	460(%rsp), %edx
	movq	%r12, %rdi
	callq	gx_path_add_point
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_315
# BB#269:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, %rdi
	leaq	448(%rsp), %rsi
	callq	add_round_cap
	movl	%eax, %edx
	sarl	$31, %edx
	andl	%eax, %edx
	movq	%rbx, %r8
	jmp	.LBB2_279
.LBB2_270:                              # %if.else.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%esi, 3168(%rsp)
	movl	460(%rsp), %ecx
	movl	%ecx, 3172(%rsp)
	cmpl	$3, %eax
	je	.LBB2_275
# BB#271:                               # %if.else.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$2, %eax
	jne	.LBB2_272
# BB#274:                               # %sw.bb.12.i.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r8, %r15
	movl	472(%rsp), %edx
	leal	(%rsi,%rdx), %eax
	movl	%eax, 3176(%rsp)
	movl	476(%rsp), %esi
	leal	(%rcx,%rsi), %eax
	movl	%eax, 3180(%rsp)
	movl	464(%rsp), %eax
	leal	(%rdx,%rax), %ecx
	movl	%ecx, 3184(%rsp)
	movl	468(%rsp), %ecx
	leal	(%rsi,%rcx), %edx
	movl	%edx, 3188(%rsp)
	movl	$3, %ebp
	jmp	.LBB2_276
.LBB2_275:                              # %sw.bb.39.i.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r8, %r15
	movl	%esi, 3176(%rsp)
	movl	%ecx, 3180(%rsp)
	movl	472(%rsp), %eax
	addl	448(%rsp), %eax
	movl	%eax, 3184(%rsp)
	movl	476(%rsp), %eax
	addl	452(%rsp), %eax
	movl	%eax, 3188(%rsp)
	movl	464(%rsp), %eax
	movl	%eax, 3192(%rsp)
	movl	468(%rsp), %ecx
	movl	%ecx, 3196(%rsp)
	movl	$4, %ebp
	jmp	.LBB2_276
.LBB2_272:                              # %if.else.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$1, %edx
	testl	%eax, %eax
	xorps	%xmm4, %xmm4
	jne	.LBB2_280
# BB#273:                               # %sw.bb.i.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r8, %r15
	movl	%esi, 3176(%rsp)
	movl	%ecx, 3180(%rsp)
	movl	464(%rsp), %eax
	movl	%eax, 3184(%rsp)
	movl	468(%rsp), %ecx
	movl	%ecx, 3188(%rsp)
	movl	$3, %ebp
.LBB2_276:                              # %if.end.28.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ebp, %edx
	movl	%eax, 3168(%rsp,%rdx,8)
	movl	%ecx, 3172(%rsp,%rdx,8)
	movq	3168(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%r12, %rdi
	callq	gx_path_add_point
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_315
# BB#277:                               # %add_points.exit.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	leaq	3176(%rsp), %rsi
	movl	%ebp, %edx
	callq	gx_path_add_lines_notes
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_315
# BB#278:                               # %if.end.44.i.i
                                        #   in Loop: Header=BB2_99 Depth=1
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_path_close_subpath_notes
	movl	%eax, %edx
	movq	%r15, %r8
.LBB2_279:                              # %stroke_add_initial_cap_compat.exit.i
                                        #   in Loop: Header=BB2_99 Depth=1
	xorps	%xmm4, %xmm4
.LBB2_280:                              # %stroke_add_initial_cap_compat.exit.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testl	%edx, %edx
	sets	%al
	orb	215(%rsp), %al          # 1-byte Folded Reload
	je	.LBB2_281
# BB#296:                               # %cleanup.1475.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	movl	%edx, 284(%rsp)         # 4-byte Spill
	sarl	$31, %eax
	testb	$24, %al
	je	.LBB2_297
	jmp	.LBB2_319
.LBB2_281:                              # %land.lhs.true.1410.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%edx, 284(%rsp)         # 4-byte Spill
	movq	936(%rsp), %rax
	testq	%rax, %rax
	je	.LBB2_284
# BB#282:                               # %land.lhs.true.1414.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpq	$0, 24(%rax)
	je	.LBB2_283
.LBB2_284:                              # %land.lhs.true.1420.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	212(%r8), %eax
	movl	%eax, %ecx
	notl	%ecx
	leal	(%rax,%rax), %edx
	andl	%ecx, %edx
	andl	$170, %edx
	andl	$1024, %eax             # imm = 0x400
	orl	%edx, %eax
	je	.LBB2_286
# BB#285:                               #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	jmp	.LBB2_297
.LBB2_286:                              # %if.then.1432.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpl	$0, 308(%rsp)           # 4-byte Folded Reload
	je	.LBB2_287
# BB#288:                               # %cond.end.1450.critedge.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	movl	$0, 1268(%rsp)
	xorl	%eax, %eax
	jmp	.LBB2_289
.LBB2_283:                              #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	jmp	.LBB2_297
.LBB2_287:                              # %cond.false.1435.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%r12, 288(%rsp)         # 8-byte Spill
	movl	300(%r8), %eax
	movl	%eax, 1268(%rsp)
	movl	304(%r8), %eax
.LBB2_289:                              # %cond.end.1450.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	movl	%eax, 1272(%rsp)
	je	.LBB2_294
# BB#290:                               # %if.then.1457.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_292
# BB#291:                               # %land.lhs.true.i.558.i
                                        #   in Loop: Header=BB2_99 Depth=1
	cmpq	$0, 24(%rax)
	je	.LBB2_294
.LBB2_292:                              # %if.end.i.561.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%rbx, %rdi
	movq	288(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rbp
	movq	%r8, %rbx
	callq	gx_path_append_reversed
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_317
# BB#293:                               # %gx_join_path_and_reverse.exit567.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r15
	callq	gx_path_free
	movq	%rbx, %rbp
	movq	288(%rsp), %rbx         # 8-byte Reload
	movq	40(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	callq	gx_path_close_subpath_notes
	movq	%r15, %r8
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_317
.LBB2_294:                              # %if.end.1463.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, %rbx
	movq	288(%rsp), %rdx         # 8-byte Reload
	leaq	1264(%rsp), %rcx
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	3264(%rsp), %r9
	callq	*1336(%rdi)
	movl	%eax, %r15d
	movl	$.L.str, %esi
	leaq	880(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gx_path_free
	movl	%r15d, %ecx
	testl	%ecx, %ecx
	js	.LBB2_316
# BB#295:                               # %if.end.1470.i
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	%ecx, 284(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	%rbx, %r8
	xorps	%xmm4, %xmm4
	.align	16, 0x90
.LBB2_297:                              # %cleanup.1482.thread621.i
                                        #   in Loop: Header=BB2_99 Depth=1
	testq	%r14, %r14
	jne	.LBB2_99
	jmp	.LBB2_298
.LBB2_97:
	movq	%r15, 288(%rsp)         # 8-byte Spill
	movq	%rbx, %r8
.LBB2_298:                              # %for.end.1493.i
	movq	232(%rsp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	movq	288(%rsp), %r12         # 8-byte Reload
	movl	284(%rsp), %ecx         # 4-byte Reload
	je	.LBB2_303
# BB#299:                               # %if.then.1496.i
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_301
# BB#300:                               # %land.lhs.true.i.572.i
	xorl	%ecx, %ecx
	cmpq	$0, 24(%rax)
	je	.LBB2_303
.LBB2_301:                              # %if.end.i.575.i
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rbp
	movq	%r8, %rbx
	callq	gx_path_append_reversed
	movq	%rbx, %r8
	movq	%rbp, %rbx
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_303
# BB#302:                               # %if.end.5.i.579.i
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	%r8, %r14
	callq	gx_path_free
	movq	40(%r12), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_path_close_subpath_notes
	movq	%r14, %r8
	movl	%eax, %ecx
.LBB2_303:                              # %if.end.1498.i
	leaq	880(%rsp), %rax
	cmpq	%rax, %r12
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	184(%rsp), %r15         # 8-byte Reload
	jne	.LBB2_320
# BB#304:                               # %land.lhs.true.1501.i
	movq	936(%rsp), %rax
	testq	%rax, %rax
	je	.LBB2_306
# BB#305:                               # %land.lhs.true.1505.i
	cmpq	$0, 24(%rax)
	je	.LBB2_320
.LBB2_306:                              # %if.then.1511.i
	xorl	%eax, %eax
	cmpl	$0, 308(%rsp)           # 4-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB2_308
# BB#307:                               # %cond.false.1514.i
	movl	300(%r8), %eax
	movl	304(%r8), %ecx
.LBB2_308:                              # %cond.end.1529.i
	movl	%eax, 1268(%rsp)
	movl	%ecx, 1272(%rsp)
	testq	%rbx, %rbx
	je	.LBB2_313
# BB#309:                               # %if.then.1536.i
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_311
# BB#310:                               # %land.lhs.true.i.586.i
	cmpq	$0, 24(%rax)
	je	.LBB2_313
.LBB2_311:                              # %if.end.i.589.i
	leaq	880(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rbx, %rbp
	movq	%r8, %rbx
	callq	gx_path_append_reversed
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_320
# BB#312:                               # %gx_join_path_and_reverse.exit595.i
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	%rdx, %r14
	callq	gx_path_free
	movq	920(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	leaq	880(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	movq	%r14, %r8
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB2_320
.LBB2_313:                              # %if.end.1542.i
	leaq	880(%rsp), %r14
	leaq	1264(%rsp), %rcx
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r14, %rdx
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	3264(%rsp), %r9
	callq	*1336(%rdi)
	movl	%eax, %ebp
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	gx_path_free
	movl	%ebp, %ecx
	testl	%ecx, %ecx
	js	.LBB2_320
# BB#314:                               # %if.end.1549.i
	movq	40(%r13), %rdx
	leaq	880(%rsp), %rdi
	xorl	%esi, %esi
	movl	%ecx, %ebp
	callq	gx_path_init_local_shared
	movl	%ebp, %ecx
	jmp	.LBB2_320
.LBB2_319:                              # %cleanup.1482.i
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	288(%rsp), %r12         # 8-byte Reload
	movq	184(%rsp), %r15         # 8-byte Reload
	movq	232(%rsp), %rbx         # 8-byte Reload
	movl	284(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB2_320
.LBB2_315:                              # %select.unfold.i
	movq	%r12, 288(%rsp)         # 8-byte Spill
.LBB2_316:                              # %cleanup.1482.thread.i
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB2_317:                              # %cleanup.1482.thread.i
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	288(%rsp), %r12         # 8-byte Reload
	movq	184(%rsp), %r15         # 8-byte Reload
.LBB2_320:                              # %exit.i
	movl	%ecx, 284(%rsp)         # 4-byte Spill
	leaq	1280(%rsp), %rax
	cmpq	%rax, 272(%rsp)         # 8-byte Folded Reload
	jne	.LBB2_322
# BB#321:                               # %if.then.1555.i
	movq	3008(%rsp), %rax
	movl	2328(%rsp), %ecx
	movl	%ecx, 1048(%rax)
	movupd	2264(%rsp), %xmm0
	movupd	2280(%rsp), %xmm1
	movupd	2296(%rsp), %xmm2
	movups	2312(%rsp), %xmm3
	movups	%xmm3, 1032(%rax)
	movupd	%xmm2, 1016(%rax)
	movupd	%xmm1, 1000(%rax)
	movupd	%xmm0, 984(%rax)
.LBB2_322:                              # %if.end.1558.i
	leaq	880(%rsp), %rax
	cmpq	%rax, %r12
	jne	.LBB2_324
# BB#323:                               # %if.then.1561.i
	leaq	880(%rsp), %rdi
	movl	$.L.str.1, %esi
	callq	gx_path_free
.LBB2_324:                              # %if.end.1562.i
	leaq	752(%rsp), %rax
	cmpq	%rax, %rbx
	jne	.LBB2_326
# BB#325:                               # %if.then.1565.i
	leaq	752(%rsp), %rdi
	movl	$.L.str.1, %esi
	callq	gx_path_free
.LBB2_326:                              # %if.end.1566.i
	testl	%r15d, %r15d
	je	.LBB2_328
# BB#327:                               # %if.then.1568.i
	leaq	1008(%rsp), %rdi
	movl	$.L.str.2, %esi
	callq	gx_path_free
.LBB2_328:                              # %exf.i
	cmpl	$0, 108(%r13)
	je	.LBB2_330
# BB#329:                               # %if.then.1572.i
	leaq	1136(%rsp), %rdi
	movl	$.L.str.3, %esi
	callq	gx_path_free
.LBB2_330:                              # %gx_stroke_path_only_aux.exit
	movl	284(%rsp), %eax         # 4-byte Reload
.LBB2_331:                              # %gx_stroke_path_only_aux.exit
	addq	$3208, %rsp             # imm = 0xC88
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_stroke_path_only, .Lfunc_end2-gx_stroke_path_only
	.cfi_endproc

	.align	16, 0x90
	.type	stroke_fill,@function
stroke_fill:                            # @stroke_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 240
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %rbx
	movl	%ecx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r8
	movq	256(%rsp), %r12
	movq	248(%rsp), %rdi
	movq	240(%rsp), %r9
	cmpl	$0, 80(%rbx)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	36(%rbx), %r8d
	movl	32(%rbx), %ecx
	movl	(%rbx), %esi
	movl	4(%rbx), %edx
	movl	212(%r12), %eax
	movl	300(%r12), %ebx
	movl	304(%r12), %ebp
	movl	%ebp, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	callq	*1384(%rdi)
	jmp	.LBB3_47
.LBB3_2:                                # %land.lhs.true
	movl	304(%rsp), %esi
	movl	288(%rsp), %r10d
	movl	280(%rsp), %r11d
	leaq	36(%r12), %rax
	leaq	28(%r12), %rcx
	testb	$4, %sil
	cmovneq	%rax, %rcx
	leaq	32(%r12), %rbp
	testb	$8, %sil
	cmovneq	%rax, %rbp
	xorl	%esi, %esi
	testl	%r14d, %r14d
	movl	(%rcx), %ecx
	cmovnel	%esi, %ecx
	testq	%r13, %r13
	cmovel	(%rbp), %esi
	movl	%esi, %eax
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false
	orl	%ecx, %eax
	andl	$-3, %eax
	orl	80(%r13), %eax
	jne	.LBB3_46
	jmp	.LBB3_5
.LBB3_4:                                # %land.lhs.true.31
	orl	%ecx, %eax
	testl	$-3, %eax
	jne	.LBB3_46
.LBB3_5:                                # %land.lhs.true.39
	cmpl	$3, %r10d
	ja	.LBB3_46
# BB#6:                                 # %land.lhs.true.39
	cmpl	$1, %r10d
	je	.LBB3_46
# BB#7:                                 # %land.lhs.true.45
	movl	304(%r12), %eax
	orl	300(%r12), %eax
	jne	.LBB3_46
# BB#8:                                 # %if.then.51
	cmpl	$3, %ecx
	je	.LBB3_13
# BB#9:                                 # %if.then.51
	cmpl	$2, %ecx
	jne	.LBB3_10
# BB#12:                                # %sw.bb.12.i
	movdqu	8(%rbx), %xmm0
	movd	28(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	24(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, 128(%rsp)
	movl	$2, %eax
	jmp	.LBB3_14
.LBB3_13:                               # %sw.bb.39.i
	movl	8(%rbx), %ecx
	movl	%ecx, 128(%rsp)
	movl	12(%rbx), %ecx
	movl	%ecx, 132(%rsp)
	movl	24(%rbx), %ecx
	addl	(%rbx), %ecx
	movl	%ecx, 136(%rsp)
	movl	28(%rbx), %ecx
	addl	4(%rbx), %ecx
	movl	%ecx, 140(%rsp)
	movl	16(%rbx), %ecx
	movl	%ecx, 144(%rsp)
	movl	20(%rbx), %ecx
	movl	%ecx, 148(%rsp)
	movl	$3, %eax
	jmp	.LBB3_14
.LBB3_10:                               # %if.then.51
	movl	$-28, %eax
	testl	%ecx, %ecx
	jne	.LBB3_14
# BB#11:                                # %sw.bb.i
	movdqu	8(%rbx), %xmm0
	movdqa	%xmm0, 128(%rsp)
	movl	$2, %eax
.LBB3_14:                               # %cap_points.exit
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movslq	%eax, %rdx
	leaq	128(%rsp,%rdx,8), %rcx
	testq	%r13, %r13
	je	.LBB3_15
# BB#22:                                # %if.end.68
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	24(%r12), %rdi
	leaq	132(%r12), %rax
	xorl	%r8d, %r8d
	testl	%r11d, %r11d
	cmoveq	%rax, %r8
	movl	296(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movl	%r10d, %r9d
	callq	line_join_points
	movq	%rax, 96(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB3_23
	jmp	.LBB3_45
.LBB3_15:                               # %if.then.55
	cmpl	$3, %esi
	je	.LBB3_21
# BB#16:                                # %if.then.55
	cmpl	$2, %esi
	jne	.LBB3_17
# BB#20:                                # %sw.bb.12.i.131
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movdqu	40(%rbx), %xmm0
	movd	60(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	56(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, (%rcx)
	jmp	.LBB3_19
.LBB3_21:                               # %sw.bb.39.i.148
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	40(%rbx), %eax
	movl	%eax, 128(%rsp,%rdx,8)
	movl	44(%rbx), %eax
	movl	%eax, 132(%rsp,%rdx,8)
	movl	56(%rbx), %eax
	addl	32(%rbx), %eax
	movl	%eax, 136(%rsp,%rdx,8)
	movl	60(%rbx), %eax
	addl	36(%rbx), %eax
	movl	%eax, 140(%rsp,%rdx,8)
	movl	48(%rbx), %eax
	movl	%eax, 144(%rsp,%rdx,8)
	movl	52(%rbx), %eax
	movl	%eax, 148(%rsp,%rdx,8)
	movl	$3, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB3_23
.LBB3_17:                               # %if.then.55
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%esi, %esi
	jne	.LBB3_45
# BB#18:                                # %sw.bb.i.116
	movdqu	40(%rbx), %xmm0
	movdqu	%xmm0, (%rcx)
.LBB3_19:                               # %if.end.71
	movl	$2, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
.LBB3_23:                               # %if.end.71
	movq	128(%rsp), %rsi
	movq	136(%rsp), %rax
	movl	%esi, %r11d
	subl	%eax, %r11d
	movl	%r11d, %ecx
	xorl	%esi, %ecx
	movl	%eax, %edx
	xorl	%esi, %edx
	testl	%edx, %ecx
	js	.LBB3_45
# BB#24:                                # %lor.lhs.false.85
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rax, %r9
	shrq	$32, %r9
	movl	%edx, %r8d
	subl	%r9d, %r8d
	movl	%r8d, %edi
	xorl	%edx, %edi
	movl	%edx, %ecx
	xorl	%r9d, %ecx
	testl	%ecx, %edi
	js	.LBB3_45
# BB#25:                                # %lor.lhs.false.102
	movq	144(%rsp), %r10
	movl	%r10d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	xorl	%r10d, %ecx
	movl	%eax, %edi
	xorl	%r10d, %edi
	testl	%edi, %ecx
	js	.LBB3_45
# BB#26:                                # %lor.lhs.false.119
	movq	%r10, %rbp
	shrq	$32, %rbp
	movl	%ebp, %ecx
	subl	%r9d, %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	xorl	%ebp, %ecx
	movl	%ebp, %edi
	xorl	%r9d, %edi
	testl	%edi, %ecx
	js	.LBB3_45
# BB#27:                                # %if.end.137
	testq	%r13, %r13
	je	.LBB3_28
# BB#29:                                # %if.then.139
	cmpl	$0, 288(%rsp)
	jne	.LBB3_34
# BB#30:                                # %if.then.141
	cmpl	40(%rbx), %r10d
	jne	.LBB3_42
# BB#31:                                # %land.lhs.true.147
	cmpl	44(%rbx), %ebp
	jne	.LBB3_42
# BB#32:                                # %land.lhs.true.154
	movq	168(%rsp), %rax
	cmpl	48(%rbx), %eax
	jne	.LBB3_42
# BB#33:                                # %land.lhs.true.160
	shrq	$32, %rax
	cmpl	52(%rbx), %eax
	jne	.LBB3_42
.LBB3_34:                               # %if.end.169
	leaq	144(%rsp), %rax
	movq	152(%rsp), %rcx
	cmpl	(%r13), %ecx
	jne	.LBB3_35
# BB#36:                                # %land.lhs.true.178
	shrq	$32, %rcx
	cmpl	4(%r13), %ecx
	movq	248(%rsp), %rdi
	jne	.LBB3_38
# BB#37:
	leaq	152(%rsp), %rax
.LBB3_38:                               # %select.end
	movl	%r8d, %r14d
	movl	%r11d, %ebx
	jmp	.LBB3_39
.LBB3_45:                               # %cleanup.233.thread160
	movq	248(%rsp), %rdi
	movq	240(%rsp), %r9
	movq	120(%rsp), %r8          # 8-byte Reload
	movl	288(%rsp), %r10d
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	280(%rsp), %r11d
.LBB3_46:                               # %general
	movq	272(%rsp), %rax
	movq	264(%rsp), %rcx
	movl	304(%rsp), %esi
	movl	%esi, 64(%rsp)
	movl	296(%rsp), %esi
	movl	%esi, 56(%rsp)
	movl	%r10d, 48(%rsp)
	movl	%r11d, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r12, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r8, %rdi
	movq	%r15, %rsi
	movl	%r14d, %ecx
	movq	%rbx, %r8
	movq	%r13, %r9
	callq	stroke_add
.LBB3_47:                               # %cleanup.239
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_28:                               # %if.end.137.if.end.211_crit_edge
	addq	$212, %r12
	jmp	.LBB3_41
.LBB3_42:                               # %fill
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB3_47
# BB#43:                                # %add_points.exit
	leaq	136(%rsp), %rsi
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rax,%rcx), %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB3_47
# BB#44:                                # %if.end.223
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_close_subpath_notes
	jmp	.LBB3_47
.LBB3_35:
	movl	%r8d, %r14d
	movl	%r11d, %ebx
	movq	248(%rsp), %rdi
.LBB3_39:                               # %if.end.186
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	8(%rax), %ecx
	subl	%esi, %ecx
	movl	12(%rax), %r8d
	subl	%edx, %r8d
	movl	16(%rax), %r9d
	subl	%esi, %r9d
	movl	20(%rax), %eax
	subl	%edx, %eax
	movl	212(%r12), %ebp
	movl	%ebp, 16(%rsp)
	movq	240(%rsp), %rbp
	movq	%rbp, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rdi, %rax
	callq	*1376(%rax)
	testl	%eax, %eax
	js	.LBB3_47
# BB#40:                                # %if.end.186.if.end.211_crit_edge
	addq	$212, %r12
	movq	136(%rsp), %rax
	movq	%rax, %r9
	shrq	$32, %r9
	movl	%ebx, %r11d
	movl	%r14d, %r8d
.LBB3_41:                               # %if.end.211
	movl	(%r12), %ecx
	movl	%ecx, 16(%rsp)
	movq	240(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movl	88(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	248(%rsp), %rdi
	movl	%eax, %esi
	movl	%r9d, %edx
	movl	%r11d, %ecx
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rdi)
	jmp	.LBB3_47
.Lfunc_end3:
	.size	stroke_fill, .Lfunc_end3-stroke_fill
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4746794007244308480     # double 2147483647
	.text
	.align	16, 0x90
	.type	stroke_add,@function
stroke_add:                             # @stroke_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 160
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%r9, %r10
	movq	%r8, %rbx
	movl	%ecx, %r13d
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	224(%rsp), %edx
	movq	176(%rsp), %r12
	leaq	36(%r12), %rax
	leaq	28(%r12), %rcx
	testb	$4, %dl
	cmovneq	%rax, %rcx
	movl	(%rcx), %r15d
	leaq	32(%r12), %rcx
	testb	$8, %dl
	cmovneq	%rax, %rcx
	movl	(%rcx), %r14d
	cmpl	$0, 80(%rbx)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	168(%rsp), %rdi
	movq	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psllq	$32, %xmm1
	pshufd	$237, %xmm1, %xmm2      # xmm2 = xmm1[1,3,2,3]
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$31, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movd	%xmm1, %eax
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_3
# BB#2:                                 # %if.then.i
	movd	%xmm0, %ecx
	sarl	$31, %ecx
	andl	$-256, %ecx
	orl	$128, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.LBB4_4
.LBB4_3:                                # %if.else.i
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	sarl	$31, %eax
	andl	$-256, %eax
	orl	$128, %eax
	movl	%eax, %edx
	negl	%edx
	xorl	%ecx, %ecx
.LBB4_4:                                # %set_thin_widths.exit
	movl	%ecx, 56(%rbx)
	movl	%ecx, 68(%rbx)
	movl	%eax, 60(%rbx)
	movl	%edx, 64(%rbx)
	testl	%r13d, %r13d
	sete	%al
	testq	%r10, %r10
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %r8d
	movl	$1, %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	224(%rsp), %r9d
	movq	%r10, %rbp
	callq	adjust_stroke
	movq	%rbp, %r10
	movl	(%rbx), %edx
	movl	64(%rbx), %ecx
	movl	68(%rbx), %eax
	leal	(%rdx,%rcx), %esi
	movl	%esi, 8(%rbx)
	movl	4(%rbx), %esi
	leal	(%rsi,%rax), %edi
	movl	%edi, 12(%rbx)
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	subl	56(%rbx), %ebp
	movl	%ebp, 24(%rbx)
	subl	60(%rbx), %edi
	movl	%edi, 28(%rbx)
	subl	%ecx, %edx
	movl	%edx, 16(%rbx)
	subl	%eax, %esi
	movl	%esi, 20(%rbx)
	movl	32(%rbx), %edx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 40(%rbx)
	movl	36(%rbx), %esi
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, 44(%rbx)
	addl	%ecx, %edx
	movl	%edx, 48(%rbx)
	addl	%eax, %esi
	movl	%esi, 52(%rbx)
.LBB4_5:                                # %if.end
	movq	%r10, %rbp
	testl	%r13d, %r13d
	jne	.LBB4_9
# BB#6:                                 # %if.end
	cmpl	$1, %r15d
	jne	.LBB4_9
# BB#7:                                 # %do.end
	movl	8(%rbx), %esi
	movl	12(%rbx), %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_84
# BB#8:                                 # %lor.lhs.false
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	add_pie_cap
	xorl	%r15d, %r15d
	testl	%eax, %eax
	movl	$0, %r13d
	jns	.LBB4_17
	jmp	.LBB4_84
.LBB4_9:                                # %if.else
	xorl	%ecx, %ecx
	testl	%r13d, %r13d
	cmovel	%r15d, %ecx
	cmpl	$3, %ecx
	je	.LBB4_15
# BB#10:                                # %if.else
	cmpl	$2, %ecx
	jne	.LBB4_11
# BB#14:                                # %sw.bb.12.i
	movdqu	8(%rbx), %xmm0
	movd	28(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	24(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, 32(%rsp)
	movl	$2, %r13d
	jmp	.LBB4_16
.LBB4_15:                               # %sw.bb.39.i
	movl	8(%rbx), %eax
	movl	%eax, 32(%rsp)
	movl	12(%rbx), %eax
	movl	%eax, 36(%rsp)
	movl	24(%rbx), %eax
	addl	(%rbx), %eax
	movl	%eax, 40(%rsp)
	movl	28(%rbx), %eax
	addl	4(%rbx), %eax
	movl	%eax, 44(%rsp)
	movl	16(%rbx), %eax
	movl	%eax, 48(%rsp)
	movl	20(%rbx), %eax
	movl	%eax, 52(%rsp)
	movl	$3, %r13d
	jmp	.LBB4_16
.LBB4_11:                               # %if.else
	movl	$-28, %eax
	testl	%ecx, %ecx
	jne	.LBB4_84
# BB#12:                                # %sw.bb.i
	movdqu	8(%rbx), %xmm0
	movdqa	%xmm0, 32(%rsp)
	movl	$2, %r13d
.LBB4_16:                               # %if.end.33
	movl	$1, %r15d
.LBB4_17:                               # %if.end.33
	movq	%rbp, %rdx
	testq	%rdx, %rdx
	je	.LBB4_18
# BB#31:                                # %if.else.61
	cmpl	$0, 80(%rdx)
	je	.LBB4_33
# BB#32:                                # %if.then.64
	movq	%rdx, %r12
	movl	%r13d, %eax
	movdqu	40(%rbx), %xmm0
	movdqu	%xmm0, 32(%rsp,%rax,8)
	movl	$2, %ebp
.LBB4_49:                               # %if.end.137
	addl	%r13d, %ebp
	testl	%r15d, %r15d
	je	.LBB4_52
# BB#50:                                # %if.then.i.200
	movq	32(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_84
# BB#51:                                # %do.end.8.i.204
	leaq	40(%rsp), %rsi
	decl	%ebp
	jmp	.LBB4_53
.LBB4_18:                               # %if.then.35
	movq	%rdx, %r12
	cmpl	$1, %r14d
	jne	.LBB4_25
# BB#19:                                # %if.then.37
	movl	40(%rbx), %eax
	movl	%r13d, %ecx
	movl	%eax, 32(%rsp,%rcx,8)
	movl	44(%rbx), %eax
	movl	%eax, 36(%rsp,%rcx,8)
	testl	%r15d, %r15d
	je	.LBB4_22
# BB#20:                                # %if.then.i.114
	movq	32(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_84
# BB#21:                                # %do.end.8.i
	leaq	40(%rsp), %rsi
	jmp	.LBB4_23
.LBB4_33:                               # %if.else.70
	movl	208(%rsp), %r9d
	cmpl	$1, %r9d
	jne	.LBB4_41
# BB#34:                                # %if.then.72
	movq	%rdx, %r12
	movl	40(%rbx), %eax
	movl	%r13d, %ecx
	movl	%eax, 32(%rsp,%rcx,8)
	movl	44(%rbx), %eax
	movl	%eax, 36(%rsp,%rcx,8)
	testl	%r15d, %r15d
	je	.LBB4_37
# BB#35:                                # %if.then.i.174
	movq	32(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_84
# BB#36:                                # %do.end.8.i.177
	leaq	40(%rsp), %rsi
	jmp	.LBB4_38
.LBB4_52:                               # %do.end.12.i.206
	leaq	32(%rsp), %rsi
.LBB4_53:                               # %done
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %edx
	callq	gx_path_add_lines_notes
	jmp	.LBB4_54
.LBB4_25:                               # %if.end.57
	movl	%r13d, %ecx
	cmpl	$3, %r14d
	je	.LBB4_30
# BB#26:                                # %if.end.57
	cmpl	$2, %r14d
	jne	.LBB4_27
# BB#29:                                # %sw.bb.12.i.139
	movdqu	40(%rbx), %xmm0
	movd	60(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	56(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, 32(%rsp,%rcx,8)
	movl	$2, %ebp
	jmp	.LBB4_49
.LBB4_41:                               # %if.else.95
	movl	224(%rsp), %eax
	testb	$1, %al
	jne	.LBB4_42
# BB#48:                                # %if.end.134
	movl	200(%rsp), %eax
	movl	%r13d, %ecx
	leaq	32(%rsp,%rcx,8), %rcx
	leaq	24(%r12), %rdi
	addq	$132, %r12
	xorl	%r8d, %r8d
	testl	%eax, %eax
	cmoveq	%r12, %r8
	movl	216(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rsi
	movq	%rdx, %r12
	callq	line_join_points
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB4_49
	jmp	.LBB4_84
.LBB4_22:                               # %do.end.12.i
	incl	%r13d
	leaq	32(%rsp), %rsi
.LBB4_23:                               # %add_points.exit
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB4_84
# BB#24:                                # %if.end.54
	leaq	32(%rbx), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	add_pie_cap
	jmp	.LBB4_54
.LBB4_30:                               # %sw.bb.39.i.156
	movl	40(%rbx), %eax
	movl	%eax, 32(%rsp,%rcx,8)
	movl	44(%rbx), %eax
	movl	%eax, 36(%rsp,%rcx,8)
	movl	56(%rbx), %eax
	addl	32(%rbx), %eax
	movl	%eax, 40(%rsp,%rcx,8)
	movl	60(%rbx), %eax
	addl	36(%rbx), %eax
	movl	%eax, 44(%rsp,%rcx,8)
	movl	48(%rbx), %eax
	movl	%eax, 48(%rsp,%rcx,8)
	movl	52(%rbx), %eax
	movl	%eax, 52(%rsp,%rcx,8)
	movl	$3, %ebp
	jmp	.LBB4_49
.LBB4_27:                               # %if.end.57
	movl	$-28, %eax
	testl	%r14d, %r14d
	jne	.LBB4_84
# BB#28:                                # %sw.bb.i.124
	movdqu	40(%rbx), %xmm0
	movdqu	%xmm0, 32(%rsp,%rcx,8)
	movl	$2, %ebp
	jmp	.LBB4_49
.LBB4_42:                               # %if.then.98
	movq	%rdx, %r12
	movl	40(%rbx), %eax
	movl	%r13d, %ecx
	movl	%eax, 32(%rsp,%rcx,8)
	movl	44(%rbx), %eax
	movl	%eax, 36(%rsp,%rcx,8)
	testl	%r15d, %r15d
	je	.LBB4_45
# BB#43:                                # %if.then.i.187
	movq	32(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_84
# BB#44:                                # %do.end.8.i.190
	leaq	40(%rsp), %rsi
	jmp	.LBB4_46
.LBB4_37:                               # %do.end.12.i.179
	incl	%r13d
	leaq	32(%rsp), %rsi
.LBB4_38:                               # %add_points.exit181
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB4_84
# BB#39:                                # %if.end.93
	movl	$1, %r8d
	jmp	.LBB4_40
.LBB4_45:                               # %do.end.12.i.192
	incl	%r13d
	leaq	32(%rsp), %rsi
.LBB4_46:                               # %add_points.exit194
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB4_84
# BB#47:                                # %if.end.119
	xorl	%r8d, %r8d
.LBB4_40:                               # %done
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	216(%rsp), %ecx
	callq	add_pie_join
.LBB4_54:                               # %done
	testl	%eax, %eax
	js	.LBB4_84
# BB#55:                                # %do.end.145
	movl	224(%rsp), %eax
	testb	$2, %al
	movq	%r12, %rbp
	je	.LBB4_83
# BB#56:                                # %land.lhs.true.148
	testq	%rbp, %rbp
	je	.LBB4_83
# BB#57:                                # %land.lhs.true.148
	movl	80(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB4_83
# BB#58:                                # %land.lhs.true.153
	cmpl	$0, 80(%rbp)
	jne	.LBB4_83
# BB#59:                                # %if.then.156
	leaq	64(%rbx), %r14
	movl	64(%rbx), %r8d
	movl	68(%rbx), %edx
	cvtsi2sdl	%r8d, %xmm0
	leaq	64(%rbp), %rcx
	movl	64(%rbp), %esi
	movl	68(%rbp), %edi
	cvtsi2sdl	%edi, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB4_60
	jnp	.LBB4_83
.LBB4_60:                               # %if.end.i
	seta	%al
	movzbl	%al, %eax
	cmpl	216(%rsp), %eax
	jne	.LBB4_61
# BB#77:                                # %if.else.i.95
	leaq	16(%rbx), %r12
	leaq	40(%rbp), %r13
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	line_intersect
	movq	%rbp, %rcx
	testl	%eax, %eax
	jne	.LBB4_83
# BB#78:                                # %if.end.76.i
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rbp
	callq	gx_path_close_subpath_notes
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB4_83
# BB#79:                                # %lor.lhs.false.80.i
	movl	96(%rsp), %esi
	movl	100(%rsp), %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rbp
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_83
# BB#80:                                # %lor.lhs.false.86.i
	movl	40(%rbp), %esi
	movl	44(%rbp), %edx
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_line_notes
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB4_83
# BB#81:                                # %lor.lhs.false.96.i
	addq	$56, %rcx
	leaq	32(%rbx), %rsi
	addq	$24, %rbx
	cmpl	$0, 216(%rsp)
	sete	%al
	movzbl	%al, %eax
	movq	%r14, 8(%rsp)
	movl	%eax, (%rsp)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rdx
	movq	%r12, %r8
	movq	%rbx, %r9
.LBB4_82:                               # %join_under_pie.exit
	callq	do_pie_join
	jmp	.LBB4_83
.LBB4_61:                               # %if.then.13.i
	negl	%r8d
	negl	%edx
	negl	%esi
	negl	%edi
	cvtsi2sdl	%r8d, %xmm9
	cvtsi2sdl	%edx, %xmm10
	cvtsi2sdl	%esi, %xmm5
	cvtsi2sdl	%edi, %xmm3
	movapd	%xmm9, %xmm0
	mulsd	%xmm3, %xmm0
	movapd	%xmm5, %xmm4
	mulsd	%xmm10, %xmm4
	subsd	%xmm4, %xmm0
	movl	8(%rbx), %ecx
	movl	12(%rbx), %eax
	movl	48(%rbp), %esi
	movl	52(%rbp), %edx
	subl	%ecx, %esi
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%esi, %xmm4
	movapd	.LCPI4_0(%rip), %xmm6   # xmm6 = [9223372036854775808,9223372036854775808]
	movapd	%xmm0, %xmm2
	xorpd	%xmm6, %xmm2
	xorpd	%xmm1, %xmm1
	movapd	%xmm0, %xmm7
	cmpltsd	%xmm1, %xmm7
	movapd	%xmm7, %xmm1
	andnpd	%xmm0, %xmm1
	andpd	%xmm2, %xmm7
	orpd	%xmm1, %xmm7
	mulsd	.LCPI4_1(%rip), %xmm7
	js	.LBB4_62
# BB#63:                                # %if.then.13.i
	movapd	%xmm4, %xmm6
	jmp	.LBB4_64
.LBB4_62:
	xorpd	%xmm4, %xmm6
.LBB4_64:                               # %if.then.13.i
	ucomisd	%xmm7, %xmm6
	jae	.LBB4_83
# BB#65:                                # %lor.lhs.false.i.i
	subl	%eax, %edx
	cvtsi2sdl	%edx, %xmm8
	js	.LBB4_66
# BB#67:                                # %lor.lhs.false.i.i
	movapd	%xmm8, %xmm6
	jmp	.LBB4_68
.LBB4_66:
	movapd	.LCPI4_0(%rip), %xmm6   # xmm6 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm8, %xmm6
.LBB4_68:                               # %lor.lhs.false.i.i
	ucomisd	%xmm7, %xmm6
	jae	.LBB4_83
# BB#69:                                # %if.end.i.i
	mulsd	%xmm4, %xmm3
	mulsd	%xmm8, %xmm5
	subsd	%xmm5, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm9, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %r12d
	addl	%ecx, %r12d
	movl	%r12d, 96(%rsp)
	movapd	%xmm10, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %r13d
	addl	%eax, %r13d
	movl	%r13d, 100(%rsp)
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm3
	jb	.LBB4_83
# BB#70:                                # %land.rhs.i.i
	ucomisd	%xmm0, %xmm5
	seta	%al
	mulsd	%xmm4, %xmm10
	mulsd	%xmm8, %xmm9
	ucomisd	%xmm5, %xmm0
	setae	%cl
	ucomisd	%xmm9, %xmm10
	jae	.LBB4_72
# BB#71:                                # %land.rhs.i.i
	movb	%al, %cl
.LBB4_72:                               # %land.rhs.i.i
	movzbl	%cl, %eax
	cmpl	$1, %eax
	jne	.LBB4_83
# BB#73:                                # %if.end.32.i
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_close_subpath_notes
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB4_83
# BB#74:                                # %lor.lhs.false.i
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %esi
	movl	%r13d, %edx
	movq	%rcx, %rbp
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB4_83
# BB#75:                                # %lor.lhs.false.41.i
	movl	8(%rbx), %esi
	movl	12(%rbx), %edx
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_line_notes
	movq	%rbp, %r9
	testl	%eax, %eax
	js	.LBB4_83
# BB#76:                                # %lor.lhs.false.51.i
	leaq	32(%rbx), %rsi
	leaq	8(%rbx), %rdx
	addq	$24, %rbx
	leaq	48(%r9), %r8
	addq	$56, %r9
	cmpl	$0, 216(%rsp)
	sete	%al
	movzbl	%al, %eax
	movq	%r14, 8(%rsp)
	movl	%eax, (%rsp)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rcx
	jmp	.LBB4_82
.LBB4_83:                               # %if.end.158
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_close_subpath_notes
.LBB4_84:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	stroke_add, .Lfunc_end4-stroke_add
	.cfi_endproc

	.align	16, 0x90
	.type	stroke_add_compat,@function
stroke_add_compat:                      # @stroke_add_compat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 144
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rdi, %r12
	movq	160(%rsp), %rdx
	cmpl	$0, 80(%r15)
	je	.LBB5_1
# BB#2:                                 # %if.then
	movl	208(%rsp), %r9d
	movq	152(%rsp), %rdi
	movq	32(%r15), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	(%r15), %xmm1           # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psllq	$32, %xmm1
	pshufd	$237, %xmm1, %xmm2      # xmm2 = xmm1[1,3,2,3]
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$31, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movd	%xmm1, %eax
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %esi
	cmpl	%esi, %eax
	jle	.LBB5_4
# BB#3:                                 # %if.then.i
	movd	%xmm0, %ebp
	sarl	$31, %ebp
	andl	$-256, %ebp
	orl	$128, %ebp
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.LBB5_5
.LBB5_1:                                # %entry.if.end_crit_edge
	movl	16(%r15), %esi
	movl	20(%r15), %edx
	leaq	40(%r15), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	44(%r15), %r13
	leaq	48(%r15), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	52(%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movdqu	40(%r15), %xmm0
	movl	8(%r15), %r8d
	movl	12(%r15), %r9d
	jmp	.LBB5_6
.LBB5_4:                                # %if.else.i
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	sarl	$31, %eax
	andl	$-256, %eax
	orl	$128, %eax
	movl	%eax, %esi
	negl	%esi
	xorl	%ebp, %ebp
.LBB5_5:                                # %set_thin_widths.exit
	movl	%ebp, 56(%r15)
	movl	%ebp, 68(%r15)
	movl	%eax, 60(%r15)
	movl	%esi, 64(%r15)
	testl	%ecx, %ecx
	sete	%al
	testq	%r14, %r14
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %r8d
	movl	$1, %ecx
	movq	%r15, %rsi
	callq	adjust_stroke
	movl	(%r15), %esi
	movl	64(%r15), %r11d
	movl	68(%r15), %r10d
	leal	(%rsi,%r11), %r8d
	movl	%r8d, 8(%r15)
	movl	4(%r15), %edx
	leal	(%rdx,%r10), %r9d
	movl	%r9d, 12(%r15)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	subl	56(%r15), %ecx
	movl	%ecx, 24(%r15)
	subl	60(%r15), %eax
	movl	%eax, 28(%r15)
	subl	%r11d, %esi
	movl	%esi, 16(%r15)
	subl	%r10d, %edx
	movl	%edx, 20(%r15)
	movl	32(%r15), %eax
	movl	%eax, %ecx
	subl	%r11d, %ecx
	leaq	40(%r15), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	%ecx, 40(%r15)
	movl	36(%r15), %edi
	movl	%edi, %ebp
	subl	%r10d, %ebp
	leaq	44(%r15), %r13
	movl	%ebp, 44(%r15)
	addl	%r11d, %eax
	leaq	48(%r15), %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	%eax, 48(%r15)
	addl	%r10d, %edi
	leaq	52(%r15), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	%edi, 52(%r15)
	movd	%eax, %xmm1
	movd	%ecx, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movd	%edi, %xmm1
	movd	%ebp, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
.LBB5_6:                                # %if.end
	movl	%esi, 48(%rsp)
	movl	%edx, 52(%rsp)
	movdqu	%xmm0, 56(%rsp)
	movl	%r8d, 72(%rsp)
	movl	%r9d, 76(%rsp)
	movq	%r12, %rbx
	movq	%rbx, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB5_29
# BB#7:                                 # %add_points.exit114
	leaq	56(%rsp), %rbp
	movl	$3, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB5_29
# BB#8:                                 # %if.end.37
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_close_subpath_notes
	testl	%eax, %eax
	js	.LBB5_29
# BB#9:                                 # %do.end
	leaq	32(%r15), %r12
	testq	%r14, %r14
	je	.LBB5_10
# BB#19:                                # %if.else
	movl	192(%rsp), %r9d
	cmpl	$1, %r9d
	je	.LBB5_12
# BB#20:                                # %if.else.128
	xorl	%r13d, %r13d
	cmpl	$0, 80(%r14)
	jne	.LBB5_26
# BB#21:                                # %if.else.132
	movq	%rbx, %r12
	movl	200(%rsp), %eax
	movl	184(%rsp), %ecx
	movq	160(%rsp), %rsi
	leaq	24(%rsi), %rdi
	cvtsi2sdl	64(%r15), %xmm0
	cvtsi2sdl	68(%r14), %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	64(%r14), %xmm0
	cvtsi2sdl	68(%r15), %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	seta	%bl
	movzbl	%bl, %ebx
	cmpl	%eax, %ebx
	jne	.LBB5_22
# BB#23:                                # %if.else.172
	addq	$132, %rsi
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	cmoveq	%rsi, %r8
	movl	%eax, (%rsp)
	leaq	48(%rsp), %rcx
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	line_join_points
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movq	%r12, %rbx
	js	.LBB5_24
# BB#25:                                # %if.end.184
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 48(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB5_26
.LBB5_10:                               # %if.then.43
	movq	160(%rsp), %rax
	movl	28(%rax), %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB5_29
# BB#11:                                # %if.then.43
	cmpl	$1, %esi
	jne	.LBB5_15
.LBB5_12:                               # %if.then.49
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movl	%esi, 48(%rsp)
	movl	(%r13), %edx
	movl	%edx, 52(%rsp)
	movq	%rbx, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB5_29
# BB#13:                                # %add_points.exit124
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB5_29
# BB#14:                                # %if.end.68
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	add_round_cap
	jmp	.LBB5_29
.LBB5_15:                               # %if.end.71
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edx
	movl	%edx, 48(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r8d
	movl	%r8d, 52(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, 56(%rsp)
	movl	(%r13), %edi
	movl	%edi, 60(%rsp)
	cmpl	$3, %esi
	jne	.LBB5_16
# BB#18:                                # %sw.bb.39.i
	movl	%ecx, 64(%rsp)
	movl	%edi, 68(%rsp)
	movl	56(%r15), %eax
	addl	32(%r15), %eax
	movl	%eax, 72(%rsp)
	movl	60(%r15), %eax
	addl	36(%r15), %eax
	movl	%eax, 76(%rsp)
	movl	%edx, 80(%rsp)
	movl	%r8d, 84(%rsp)
	movl	$5, %r13d
	jmp	.LBB5_26
.LBB5_22:                               # %if.then.147
	movl	40(%r15), %ebx
	movl	%ebx, 48(%rsp)
	movl	44(%r15), %ebx
	movl	%ebx, 52(%rsp)
	addq	$132, %rsi
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	cmoveq	%rsi, %r8
	movl	%eax, (%rsp)
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	callq	line_join_points
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movq	%r12, %rbx
	jns	.LBB5_26
	jmp	.LBB5_29
.LBB5_16:                               # %if.end.71
	movl	$-28, %eax
	cmpl	$2, %esi
	jne	.LBB5_29
# BB#17:                                # %sw.bb.12.i
	movl	56(%r15), %eax
	leal	(%rcx,%rax), %esi
	movl	%esi, 64(%rsp)
	movl	60(%r15), %esi
	leal	(%rdi,%rsi), %edi
	movl	%edi, 68(%rsp)
	addl	%edx, %eax
	movl	%eax, 72(%rsp)
	addl	%r8d, %esi
	movl	%esi, 76(%rsp)
	movl	$4, %r13d
.LBB5_26:                               # %if.end.198
	movq	48(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rbx, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB5_29
# BB#27:                                # %add_points.exit
	decl	%r13d
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB5_29
# BB#28:                                # %if.end.204
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_close_subpath_notes
.LBB5_29:                               # %cleanup.209
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_24:
	movl	%r13d, %eax
	jmp	.LBB5_29
.Lfunc_end5:
	.size	stroke_add_compat, .Lfunc_end5-stroke_add_compat
	.cfi_endproc

	.align	16, 0x90
	.type	stroke_add_fast,@function
stroke_add_fast:                        # @stroke_add_fast
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 240
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movl	%ecx, %r14d
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	304(%rsp), %ebx
	movq	256(%rsp), %rbp
	cmpl	$0, 80(%r15)
	je	.LBB6_5
# BB#1:                                 # %if.then
	movq	248(%rsp), %rdi
	movq	32(%r15), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	(%r15), %xmm1           # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psllq	$32, %xmm1
	pshufd	$237, %xmm1, %xmm2      # xmm2 = xmm1[1,3,2,3]
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm2, %xmm1
	psrad	$31, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$31, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	paddq	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movd	%xmm1, %eax
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_3
# BB#2:                                 # %if.then.i
	movd	%xmm0, %ecx
	sarl	$31, %ecx
	andl	$-256, %ecx
	orl	$128, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.LBB6_4
.LBB6_3:                                # %if.else.i
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	sarl	$31, %eax
	andl	$-256, %eax
	orl	$128, %eax
	movl	%eax, %edx
	negl	%edx
	xorl	%ecx, %ecx
.LBB6_4:                                # %set_thin_widths.exit
	movl	%ecx, 56(%r15)
	movl	%ecx, 68(%r15)
	movl	%eax, 60(%r15)
	movl	%edx, 64(%r15)
	testl	%r14d, %r14d
	sete	%al
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %r8d
	movl	$1, %ecx
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%ebx, %r9d
	callq	adjust_stroke
	movl	(%r15), %edx
	movl	64(%r15), %ecx
	movl	68(%r15), %eax
	leal	(%rdx,%rcx), %esi
	movl	%esi, 8(%r15)
	movl	4(%r15), %esi
	leal	(%rsi,%rax), %edi
	movl	%edi, 12(%r15)
	xorl	%edi, %edi
	movq	%rbp, %r8
	movl	%ebx, %ebp
	xorl	%ebx, %ebx
	subl	56(%r15), %ebx
	movl	%ebx, 24(%r15)
	movl	%ebp, %ebx
	movq	%r8, %rbp
	subl	60(%r15), %edi
	movl	%edi, 28(%r15)
	subl	%ecx, %edx
	movl	%edx, 16(%r15)
	subl	%eax, %esi
	movl	%esi, 20(%r15)
	movl	32(%r15), %edx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, 40(%r15)
	movl	36(%r15), %esi
	movl	%esi, %edi
	subl	%eax, %edi
	movl	%edi, 44(%r15)
	addl	%ecx, %edx
	movl	%edx, 48(%r15)
	addl	%eax, %esi
	movl	%esi, 52(%r15)
.LBB6_5:                                # %if.end
	leaq	36(%rbp), %rax
	leaq	28(%rbp), %rcx
	testb	$4, %bl
	cmovneq	%rax, %rcx
	movl	(%rcx), %ecx
	leaq	32(%rbp), %rdx
	testb	$8, %bl
	cmovneq	%rax, %rdx
	movl	(%rdx), %edx
	movq	56(%r13), %rax
	movq	%r13, 32(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_8
# BB#6:                                 # %land.lhs.true
	testl	%r14d, %r14d
	je	.LBB6_8
# BB#7:                                 # %land.lhs.true
	movq	24(%rax), %rax
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB6_15
.LBB6_8:                                # %if.end.18
	movl	%edx, 28(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	testl	%r14d, %r14d
	je	.LBB6_10
# BB#9:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.LBB6_19
.LBB6_10:                               # %if.then.20
	movl	$-28, %eax
	movl	%ecx, %edx
	cmpl	$3, %ecx
	ja	.LBB6_89
# BB#11:                                # %if.then.20
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, %esi
	jmpq	*.LJTI6_0(,%rdx,8)
.LBB6_15:                               # %sw.bb.i
	movdqu	8(%r15), %xmm0
	movdqa	%xmm0, 112(%rsp)
	movd	%xmm0, %eax
	pshufd	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movd	%xmm0, %edx
	movl	$1, %ecx
	movl	$2, %r13d
	movl	%esi, 28(%rsp)          # 4-byte Spill
.LBB6_18:                               # %if.end.36
	movl	%eax, 48(%rsp)
	movl	%edx, 52(%rsp)
	movl	$1, %ebx
.LBB6_19:                               # %if.end.46
	movl	40(%r15), %eax
	movslq	%r13d, %rdx
	movl	%eax, 112(%rsp,%rdx,8)
	movl	44(%r15), %eax
	movl	%eax, 116(%rsp,%rdx,8)
	movl	48(%r15), %eax
	leaq	(,%rbx,8), %rdx
	leaq	48(%rsp), %rsi
	orq	%rdx, %rsi
	movl	%eax, (%rsi)
	movl	52(%r15), %eax
	movl	%eax, 4(%rsi)
	testl	%ecx, %ecx
	movq	%r12, %r14
	je	.LBB6_22
# BB#20:                                # %if.then.i.149
	movq	112(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%r14, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB6_89
# BB#21:                                # %do.end.8.i
	leaq	120(%rsp), %rsi
	jmp	.LBB6_23
.LBB6_22:                               # %do.end.12.i
	incl	%r13d
	leaq	112(%rsp), %rsi
.LBB6_23:                               # %add_points.exit
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB6_89
# BB#24:                                # %if.end.73
	testl	%ebx, %ebx
	je	.LBB6_27
# BB#25:                                # %if.then.i.156
	movq	48(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB6_89
# BB#26:                                # %do.end.8.i.159
	leaq	56(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %edx
	jmp	.LBB6_28
.LBB6_27:                               # %do.end.12.i.161
	leaq	48(%rsp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
.LBB6_28:                               # %add_points.exit163
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB6_89
# BB#29:                                # %if.end.78
	leaq	32(%r15), %rsi
	movq	40(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB6_30
# BB#37:                                # %if.else.90
	cmpl	$0, 80(%rbx)
	jne	.LBB6_33
# BB#38:                                # %if.else.97
	movl	288(%rsp), %eax
	cvtsi2sdl	64(%r15), %xmm1
	cvtsi2sdl	68(%rbx), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	64(%rbx), %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	68(%r15), %xmm1
	mulsd	%xmm2, %xmm1
	cmpl	$1, %eax
	jne	.LBB6_43
# BB#39:                                # %if.else.97
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_43
	jp	.LBB6_43
# BB#40:                                # %if.then.114
	movq	%r14, %rdi
	callq	add_pie_cap
	testl	%eax, %eax
	js	.LBB6_89
# BB#41:                                # %if.then.119
	xorps	%xmm0, %xmm0
	cvtsi2sdl	64(%r15), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	64(%rbx), %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	68(%r15), %xmm0
	cvtsi2sdl	68(%rbx), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	.LBB6_84
# BB#42:                                # %if.then.136
	movl	40(%r15), %esi
	movl	44(%r15), %edx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	xorl	%r12d, %r12d
	jmp	.LBB6_79
.LBB6_30:                               # %if.then.80
	movl	$-28, %eax
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	cmpl	$3, %edx
	ja	.LBB6_89
# BB#31:                                # %if.then.80
	jmpq	*.LJTI6_1(,%rcx,8)
.LBB6_33:                               # %sw.bb.i.172
	movdqu	40(%r15), %xmm0
	movdqa	%xmm0, 112(%rsp)
.LBB6_34:                               # %if.then.241
	xorl	%r12d, %r12d
	movl	$2, %ebp
.LBB6_81:                               # %if.then.241
	leaq	112(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	jns	.LBB6_82
	jmp	.LBB6_89
.LBB6_12:                               # %do.end
	movl	8(%r15), %esi
	movl	12(%r15), %edx
	movq	%r12, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB6_89
# BB#13:                                # %lor.lhs.false
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	add_pie_cap
	testl	%eax, %eax
	js	.LBB6_89
# BB#14:                                # %lor.lhs.false.if.end.36_crit_edge
	movl	8(%r15), %eax
	movl	12(%r15), %edx
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.LBB6_18
.LBB6_16:                               # %sw.bb.12.i
	movdqu	8(%r15), %xmm0
	movd	28(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	24(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, 112(%rsp)
	movd	%xmm0, %eax
	pshufd	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movd	%xmm0, %edx
	movl	$1, %ecx
	movl	$2, %r13d
	jmp	.LBB6_18
.LBB6_17:                               # %sw.bb.39.i
	movl	8(%r15), %eax
	movl	%eax, 112(%rsp)
	movl	12(%r15), %edx
	movl	%edx, 116(%rsp)
	movl	24(%r15), %ecx
	addl	(%r15), %ecx
	movl	%ecx, 120(%rsp)
	movl	28(%r15), %ecx
	addl	4(%r15), %ecx
	movl	%ecx, 124(%rsp)
	movl	16(%r15), %ecx
	movl	%ecx, 128(%rsp)
	movl	20(%r15), %ecx
	movl	%ecx, 132(%rsp)
	movl	$1, %ecx
	movl	$3, %r13d
	jmp	.LBB6_18
.LBB6_43:                               # %if.else.146
	movl	296(%rsp), %r10d
	movl	280(%rsp), %edx
	leaq	24(%rbp), %rdi
	ucomisd	%xmm1, %xmm0
	seta	%cl
	movzbl	%cl, %ecx
	cmpl	%r10d, %ecx
	jne	.LBB6_44
# BB#61:                                # %if.else.189
	cmpl	$1, %eax
	jne	.LBB6_65
# BB#62:                                # %if.then.192
	movl	48(%r15), %eax
	cmpl	8(%rbx), %eax
	jne	.LBB6_64
# BB#63:                                # %land.lhs.true.i.246
	movl	52(%r15), %eax
	xorl	%r12d, %r12d
	cmpl	12(%rbx), %eax
	je	.LBB6_75
.LBB6_64:                               # %if.end.i.252
	leaq	48(%r15), %rdx
	leaq	8(%rbx), %r8
	leaq	56(%r15), %rcx
	leaq	24(%rbx), %r9
	addq	$64, %r15
	movq	%r15, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	do_pie_join
	xorl	%r12d, %r12d
.LBB6_74:                               # %if.end.203
	testl	%eax, %eax
	jns	.LBB6_75
	jmp	.LBB6_89
.LBB6_44:                               # %if.then.150
	cmpl	$1, %eax
	jne	.LBB6_48
# BB#45:                                # %if.then.153
	movl	40(%r15), %eax
	cmpl	16(%rbx), %eax
	jne	.LBB6_47
# BB#46:                                # %land.lhs.true.i.221
	movl	44(%r15), %eax
	xorl	%ebp, %ebp
	cmpl	20(%rbx), %eax
	je	.LBB6_58
.LBB6_47:                               # %if.end.i.223
	leaq	40(%r15), %rdx
	leaq	16(%rbx), %r8
	leaq	56(%r15), %rcx
	leaq	24(%rbx), %r9
	testl	%r10d, %r10d
	sete	%al
	movzbl	%al, %eax
	addq	$64, %r15
	movq	%r15, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	callq	do_pie_join
	xorl	%ebp, %ebp
.LBB6_57:                               # %if.end.163
	testl	%eax, %eax
	jns	.LBB6_58
	jmp	.LBB6_89
.LBB6_32:                               # %if.then.82
	movq	%r14, %rdi
	callq	add_pie_cap
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB6_79
.LBB6_35:                               # %sw.bb.12.i.187
	movdqu	40(%r15), %xmm0
	movd	60(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	56(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, 112(%rsp)
	jmp	.LBB6_34
.LBB6_36:                               # %sw.bb.39.i.204
	movl	40(%r15), %eax
	movl	%eax, 112(%rsp)
	movl	44(%r15), %eax
	movl	%eax, 116(%rsp)
	movl	56(%r15), %eax
	addl	32(%r15), %eax
	movl	%eax, 120(%rsp)
	movl	60(%r15), %eax
	addl	36(%r15), %eax
	movl	%eax, 124(%rsp)
	movl	48(%r15), %eax
	movl	%eax, 128(%rsp)
	movl	52(%r15), %eax
	movl	%eax, 132(%rsp)
	xorl	%r12d, %r12d
	movl	$3, %ebp
	jmp	.LBB6_81
.LBB6_65:                               # %if.else.194
	addq	$132, %rbp
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmoveq	%rbp, %rcx
	cmpl	$4, %eax
	jne	.LBB6_67
# BB#66:                                # %if.then.i.270
	movl	48(%r15), %eax
	movl	52(%r15), %ecx
	subl	(%rbx), %eax
	movl	8(%rbx), %edx
	movl	12(%rbx), %esi
	addl	%edx, %eax
	subl	4(%rbx), %ecx
	addl	%esi, %ecx
	movl	%eax, 48(%rsp)
	movl	%ecx, 52(%rsp)
	movl	%edx, 56(%rsp)
	movl	%esi, 60(%rsp)
	movl	$2, %r12d
	jmp	.LBB6_75
.LBB6_48:                               # %if.else.155
	addq	$132, %rbp
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmoveq	%rbp, %rcx
	cmpl	$4, %eax
	jne	.LBB6_50
# BB#49:                                # %if.then.i.233
	movl	40(%r15), %eax
	movl	44(%r15), %ecx
	subl	(%rbx), %eax
	movl	16(%rbx), %edx
	movl	20(%rbx), %esi
	addl	%edx, %eax
	subl	4(%rbx), %ecx
	addl	%esi, %ecx
	movl	%eax, 112(%rsp)
	movl	%ecx, 116(%rsp)
	movl	%edx, 120(%rsp)
	movl	%esi, 124(%rsp)
	movl	$2, %ebp
	jmp	.LBB6_58
.LBB6_67:                               # %if.end.i.276
	movl	8(%rbx), %esi
	movl	%esi, 48(%rsp)
	movl	12(%rbx), %edx
	movl	%edx, 52(%rsp)
	movl	$1, %r12d
	testl	%eax, %eax
	jne	.LBB6_75
# BB#68:                                # %land.lhs.true.i.280
	xorl	48(%r15), %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmpl	$127, %esi
	ja	.LBB6_70
# BB#69:                                # %land.lhs.true.53.i.284
	xorl	52(%r15), %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$128, %edx
	jb	.LBB6_75
.LBB6_70:                               # %if.then.68.i.287
	leaq	8(%rbx), %r9
	leaq	48(%r15), %r8
	leaq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	check_miter
	testl	%eax, %eax
	js	.LBB6_73
# BB#71:                                # %if.end.76.i.289
	je	.LBB6_72
.LBB6_75:                               # %if.end.207
	movl	304(%rsp), %eax
	testb	$2, %al
	jne	.LBB6_77
# BB#76:                                # %if.then.210
	movl	(%rbx), %esi
	movl	4(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB6_89
.LBB6_77:                               # %if.end.222
	movl	16(%rbx), %esi
	movl	20(%rbx), %edx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	jmp	.LBB6_78
.LBB6_50:                               # %if.end.i.235
	movl	16(%rbx), %esi
	movl	%esi, 112(%rsp)
	movl	20(%rbx), %edx
	movl	%edx, 116(%rsp)
	movl	$1, %ebp
	testl	%eax, %eax
	jne	.LBB6_58
# BB#51:                                # %land.lhs.true.i.236
	xorl	40(%r15), %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmpl	$127, %esi
	ja	.LBB6_53
# BB#52:                                # %land.lhs.true.53.i
	xorl	44(%r15), %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$128, %edx
	jb	.LBB6_58
.LBB6_53:                               # %if.then.68.i
	leaq	16(%rbx), %r9
	leaq	40(%r15), %r8
	leaq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	check_miter
	testl	%eax, %eax
	js	.LBB6_56
# BB#54:                                # %if.end.76.i
	je	.LBB6_55
.LBB6_58:                               # %if.end.167
	movl	304(%rsp), %eax
	testb	$2, %al
	jne	.LBB6_60
# BB#59:                                # %if.then.170
	movl	(%rbx), %esi
	movl	4(%rbx), %edx
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB6_89
.LBB6_60:                               # %if.end.181
	movl	8(%rbx), %esi
	movl	12(%rbx), %edx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
.LBB6_78:                               # %if.end.234
	callq	gx_path_add_line_notes
.LBB6_79:                               # %if.end.234
	testl	%eax, %eax
	js	.LBB6_89
# BB#80:                                # %if.end.238
	testl	%ebp, %ebp
	jg	.LBB6_81
.LBB6_82:                               # %if.end.248
	testl	%r12d, %r12d
	jle	.LBB6_84
# BB#83:                                # %if.then.251
	leaq	48(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %edx
	callq	gx_path_add_lines_notes
	testl	%eax, %eax
	js	.LBB6_89
.LBB6_84:                               # %do.end.261
	xorl	%eax, %eax
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB6_89
# BB#85:                                # %if.then.263
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB6_87
# BB#86:                                # %land.lhs.true.i
	cmpq	$0, 24(%rcx)
	je	.LBB6_89
.LBB6_87:                               # %if.end.i
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	gx_path_append_reversed
	testl	%eax, %eax
	js	.LBB6_89
# BB#88:                                # %if.end.5.i
	movl	$.L.str.4, %esi
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	gx_path_free
	movq	40(%r14), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_path_close_subpath_notes
.LBB6_89:                               # %cleanup.266
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_72:                               # %if.then.79.i.294
	movl	176(%rsp), %eax
	movl	%eax, 48(%rsp)
	movl	180(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	8(%rbx), %eax
	movl	%eax, 56(%rsp)
	movl	12(%rbx), %eax
	movl	%eax, 60(%rsp)
	movl	$2, %eax
.LBB6_73:                               # %cleanup.thread.i.296
	movl	%eax, %r12d
	jmp	.LBB6_74
.LBB6_55:                               # %if.then.79.i
	movl	176(%rsp), %eax
	movl	%eax, 112(%rsp)
	movl	180(%rsp), %eax
	movl	%eax, 116(%rsp)
	movl	16(%rbx), %eax
	movl	%eax, 120(%rsp)
	movl	20(%rbx), %eax
	movl	%eax, 124(%rsp)
	movl	$2, %eax
.LBB6_56:                               # %cleanup.thread.i
	movl	%eax, %ebp
	jmp	.LBB6_57
.Lfunc_end6:
	.size	stroke_add_fast, .Lfunc_end6-stroke_add_fast
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_15
	.quad	.LBB6_12
	.quad	.LBB6_16
	.quad	.LBB6_17
.LJTI6_1:
	.quad	.LBB6_33
	.quad	.LBB6_32
	.quad	.LBB6_35
	.quad	.LBB6_36

	.text
	.align	16, 0x90
	.type	adjust_stroke,@function
adjust_stroke:                          # @adjust_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	leaq	36(%rdx), %rbx
	leaq	28(%rdx), %rax
	testb	$4, %r9b
	cmovneq	%rbx, %rax
	leaq	32(%rdx), %rbp
	testb	$8, %r9b
	cmovneq	%rbx, %rbp
	cmpl	$0, 308(%rdx)
	je	.LBB7_3
# BB#1:                                 # %lor.lhs.false
	movl	(%rax), %r15d
	movl	(%rbp), %r9d
	movl	64(%rsi), %ebx
	testl	%ebx, %ebx
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 68(%rsi)
	je	.LBB7_4
.LBB7_3:                                # %if.then
	movl	$0, 984(%rdi)
	jmp	.LBB7_78
.LBB7_4:                                # %if.end
	movl	$1, %r11d
	cmpl	$0, 984(%rdi)
	je	.LBB7_33
# BB#5:                                 # %land.lhs.true.19
	testl	%r15d, %r15d
	je	.LBB7_7
# BB#6:                                 # %land.lhs.true.19
	testl	%r9d, %r9d
	jne	.LBB7_33
.LBB7_7:                                # %land.lhs.true.23
	movslq	1012(%rdi), %rbp
	cmpl	72(%rsi), %ebp
	jne	.LBB7_33
# BB#8:                                 # %land.lhs.true.28
	movslq	1016(%rdi), %r10
	cmpl	76(%rsi), %r10d
	jne	.LBB7_33
# BB#9:                                 # %if.then.36
	movl	%ecx, -20(%rsp)         # 4-byte Spill
	movl	(%rsi), %r13d
	movl	%r13d, -16(%rsp)        # 4-byte Spill
	movl	4(%rsi), %r14d
	movl	988(%rdi), %ecx
	movl	%ecx, -28(%rsp)         # 4-byte Spill
	movl	992(%rdi), %eax
	movl	%eax, -24(%rsp)         # 4-byte Spill
	subl	%ecx, %r13d
	movl	%r14d, %ecx
	movslq	%r13d, %r14
	imulq	%rbp, %r14
	movl	%ecx, %r12d
	subl	%eax, %r12d
	movslq	%r12d, %rax
	imulq	%r10, %rax
	cmpq	%rax, %r14
	jne	.LBB7_32
# BB#10:                                # %land.lhs.true.60
	movl	%ecx, -32(%rsp)         # 4-byte Spill
	movl	%r8d, -4(%rsp)          # 4-byte Spill
	movl	32(%rsi), %ecx
	movl	%ecx, -36(%rsp)         # 4-byte Spill
	movl	36(%rsi), %r14d
	movl	%r14d, -40(%rsp)        # 4-byte Spill
	movl	996(%rdi), %eax
	movl	%eax, -48(%rsp)         # 4-byte Spill
	movl	1000(%rdi), %r8d
	movl	%r8d, -44(%rsp)         # 4-byte Spill
	subl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	%rbp, %rax
	subl	%r8d, %r14d
	movslq	%r14d, %rbp
	imulq	%r10, %rbp
	cmpq	%rbp, %rax
	jne	.LBB7_11
# BB#12:                                # %if.then.88
	movl	%r13d, %r10d
	negl	%r10d
	cmovll	%r13d, %r10d
	movl	1004(%rdi), %ebp
	leal	(%rbp,%rbx), %eax
	movl	%eax, %r13d
	negl	%r13d
	cmovll	%eax, %r13d
	cmpl	%r13d, %r10d
	jg	.LBB7_11
# BB#13:                                # %land.lhs.true.149
	movq	%rbp, -56(%rsp)         # 8-byte Spill
	movl	%r12d, %r8d
	negl	%r8d
	cmovll	%r12d, %r8d
	movl	68(%rsi), %r12d
	movl	1008(%rdi), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	leal	(%rax,%r12), %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	cmpl	%ebp, %r8d
	jg	.LBB7_11
# BB#14:                                # %land.lhs.true.211
	movq	%r12, -72(%rsp)         # 8-byte Spill
	movl	%ecx, %r12d
	negl	%r12d
	cmovll	%ecx, %r12d
	cmpl	%r13d, %r12d
	jg	.LBB7_11
# BB#15:                                # %land.lhs.true.273
	movl	%r14d, %eax
	negl	%eax
	cmovll	%r14d, %eax
	cmpl	%ebp, %eax
	jg	.LBB7_11
# BB#16:                                # %if.then.335
	movl	%r13d, %r14d
	shrl	$31, %r14d
	addl	%r13d, %r14d
	sarl	%r14d
	cmpl	%r14d, %r10d
	jl	.LBB7_11
# BB#17:                                # %land.lhs.true.397
	movl	%ebp, %r10d
	shrl	$31, %r10d
	addl	%ebp, %r10d
	sarl	%r10d
	cmpl	%r10d, %eax
	jl	.LBB7_11
# BB#18:                                # %land.lhs.true.397
	cmpl	%r14d, %r12d
	jl	.LBB7_11
# BB#19:                                # %land.lhs.true.397
	cmpl	%r10d, %r8d
	jl	.LBB7_11
# BB#20:                                # %if.then.586
	movl	1020(%rdi), %ecx
	movl	%ecx, -76(%rsp)         # 4-byte Spill
	movl	1036(%rdi), %r13d
	movl	-16(%rsp), %eax         # 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	leal	(%r13,%rbx), %r10d
	movl	%r10d, %eax
	negl	%eax
	cmovll	%r10d, %eax
	cmpl	%eax, %ebp
	jle	.LBB7_22
# BB#21:                                # %if.then.586.if.then.833_crit_edge
	movl	1024(%rdi), %r14d
	movl	1040(%rdi), %r12d
	movl	-4(%rsp), %r8d          # 4-byte Reload
	movl	-20(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB7_26
.LBB7_11:
	movl	-4(%rsp), %r8d          # 4-byte Reload
.LBB7_32:                               # %if.end.994
	movl	-20(%rsp), %ecx         # 4-byte Reload
.LBB7_33:                               # %if.end.994
	testl	%r15d, %r15d
	sete	%al
	testl	%r9d, %r9d
	sete	%r13b
	orb	%al, %r13b
	movzbl	%r13b, %eax
	cmpl	$1, %eax
	jne	.LBB7_35
# BB#34:                                # %if.then.1000
	movl	$1, 984(%rdi)
	movq	(%rsi), %rax
	movq	%rax, 988(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 996(%rdi)
	movq	64(%rsi), %rax
	movq	%rax, 1004(%rdi)
	movq	72(%rsi), %rax
	movq	%rax, 1012(%rdi)
	jmp	.LBB7_36
.LBB7_35:                               # %if.else.1021
	movl	$0, 984(%rdi)
.LBB7_36:                               # %if.end.1024
	testl	%r11d, %r11d
	je	.LBB7_76
# BB#37:                                # %if.then.1026
	movl	%r8d, -4(%rsp)          # 4-byte Spill
	leaq	68(%rsi), %rbx
	movslq	68(%rsi), %rax
	movd	%rax, %xmm0
	movslq	64(%rsi), %rax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, %xmm0
	psrad	$31, %xmm0
	pshufd	$237, %xmm0, %xmm0      # xmm0 = xmm0[1,3,2,3]
	movdqa	%xmm1, %xmm2
	psrlq	$31, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	paddq	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movd	%xmm1, %r8d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r15d
	cmpl	%r15d, %r8d
	jg	.LBB7_41
# BB#38:                                # %if.then.i
	leaq	4(%rsi), %r14
	leaq	36(%rsi), %r10
	xorl	%r9d, %r9d
	testl	%ecx, %ecx
	je	.LBB7_40
# BB#39:
	movq	%rbx, %r12
	jmp	.LBB7_45
.LBB7_41:                               # %if.else.i
	leaq	64(%rsi), %r12
	leaq	32(%rsi), %r10
	testl	%ecx, %ecx
	je	.LBB7_43
# BB#42:
	xorl	%r9d, %r9d
	jmp	.LBB7_44
.LBB7_40:                               # %cond.false.i
	movl	304(%rdx), %r9d
	addl	%r9d, %r9d
	movq	%rbx, %r12
	jmp	.LBB7_45
.LBB7_43:                               # %cond.false.16.i
	movl	300(%rdx), %r9d
	addl	%r9d, %r9d
.LBB7_44:                               # %if.end.i
	movq	%rsi, %r14
.LBB7_45:                               # %if.end.i
	movl	(%r12), %r11d
	testl	%r11d, %r11d
	jle	.LBB7_47
# BB#46:                                # %if.then.25.i
	movq	%rbx, -16(%rsp)         # 8-byte Spill
	leal	128(%r11,%r11), %eax
	andl	$-256, %eax
	jmp	.LBB7_48
.LBB7_47:                               # %if.else.29.i
	movq	%rbx, -16(%rsp)         # 8-byte Spill
	leal	(%r11,%r11), %ebx
	movl	$128, %eax
	subl	%ebx, %eax
	andl	$-256, %eax
	negl	%eax
.LBB7_48:                               # %if.end.36.i
	testl	%eax, %eax
	jne	.LBB7_51
# BB#49:                                # %land.lhs.true.i
	xorl	%eax, %eax
	testl	%r11d, %r11d
	je	.LBB7_51
# BB#50:                                # %if.then.41.i
	leal	-256(%r9), %ebx
	movl	$256, %eax              # imm = 0x100
	subl	%r9d, %eax
	testl	%r11d, %r11d
	cmovsl	%ebx, %eax
	movl	%eax, %ebx
	sarl	%ebx
	movl	%ebx, (%r12)
.LBB7_51:                               # %if.end.53.i
	movl	(%r14), %ebp
	cmpl	(%r10), %ebp
	jne	.LBB7_56
# BB#52:                                # %if.then.56.i
	movl	%eax, %ebx
	negl	%ebx
	testl	%r11d, %r11d
	cmovnsl	%eax, %ebx
	addl	%r9d, %ebx
	testb	$1, %bh
	jne	.LBB7_53
# BB#54:                                # %if.else.72.i
	subl	$-128, %ebp
	andl	$-256, %ebp
	jmp	.LBB7_55
.LBB7_53:                               # %if.then.67.i
	andl	$-256, %ebp
	orl	$128, %ebp
.LBB7_55:                               # %adjust_stroke_transversal.exit
	movl	%ebp, (%r10)
	movl	%ebp, (%r14)
.LBB7_56:                               # %adjust_stroke_transversal.exit
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	je	.LBB7_76
# BB#57:                                # %if.then.1056
	leaq	4(%rsi), %r10
	leaq	36(%rsi), %r11
	leaq	32(%rsi), %rbx
	cmpl	%r15d, %r8d
	movq	%rsi, %rbp
	cmovleq	%r10, %rbp
	movq	%rbx, %rax
	cmovleq	%r11, %rax
	movl	(%rbp), %ebp
	cmpl	(%rax), %ebp
	jne	.LBB7_76
# BB#58:                                # %if.then.i.218
	cmpl	%r15d, %r8d
	cmovleq	%rsi, %r10
	cmovleq	%rbx, %r11
	movl	(%r10), %r14d
	movl	(%r11), %r9d
	movl	%r14d, %eax
	subl	%r9d, %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	xorl	%r12d, %r12d
	cmpl	%r15d, %r8d
	jg	.LBB7_61
# BB#59:                                # %cond.true.44.i
	testl	%ecx, %ecx
	jne	.LBB7_63
# BB#60:                                # %cond.false.47.i
	movl	300(%rdx), %r12d
	jmp	.LBB7_63
.LBB7_61:                               # %cond.false.51.i
	testl	%ecx, %ecx
	jne	.LBB7_63
# BB#62:                                # %cond.false.54.i
	movl	304(%rdx), %r12d
.LBB7_63:                               # %cond.end.60.i
	cmpl	$256, %ebp              # imm = 0x100
	jg	.LBB7_76
# BB#64:                                # %if.end.i.219
	leal	(%r9,%r14), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	testb	%r13b, %r13b
	je	.LBB7_66
# BB#65:                                # %if.then.71.i
	subl	$-128, %ebp
	andl	$-256, %ebp
	cmpl	$256, %ebp              # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	cmovgel	%ebp, %edx
	movl	%edx, %eax
	sarl	%eax
	jmp	.LBB7_72
.LBB7_66:                               # %if.else.i.221
	leaq	64(%rsi), %rdx
	cmpl	%r15d, %r8d
	movq	%rdx, %rax
	movq	-16(%rsp), %rbx         # 8-byte Reload
	cmovleq	%rbx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.LBB7_67
# BB#68:                                # %cond.false.103.i
	cmpl	%r15d, %r8d
	jg	.LBB7_70
# BB#69:                                # %cond.true.105.i
	movl	(%rbx), %eax
	jmp	.LBB7_71
.LBB7_67:                               # %cond.true.92.i
	negl	%eax
	jmp	.LBB7_71
.LBB7_70:                               # %cond.false.108.i
	movl	(%rdx), %eax
.LBB7_71:                               # %cond.end.113.i
	addl	%r12d, %eax
	movl	%ebp, %ebx
	subl	$-128, %ebx
	leal	128(%rbp,%rax,2), %edx
	andl	$-256, %edx
	movslq	%ebx, %rbp
	movabsq	$8589934336, %rax       # imm = 0x1FFFFFF00
	andq	%rbp, %rax
	shrq	%rax
.LBB7_72:                               # %if.end.126.i
	andl	$-256, %ecx
	shrl	%edx
	andl	$128, %edx
	orl	%ecx, %edx
	cmpl	%r9d, %r14d
	jge	.LBB7_74
# BB#73:                                # %if.then.142.i
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, (%r10)
	addl	%eax, %edx
	jmp	.LBB7_75
.LBB7_74:                               # %if.else.145.i
	leal	(%rdx,%rax), %ecx
	movl	%ecx, (%r10)
	subl	%eax, %edx
.LBB7_75:                               # %if.end.148.i
	movl	%edx, (%r11)
.LBB7_76:                               # %if.end.1058
	testb	%r13b, %r13b
	je	.LBB7_78
# BB#77:                                # %if.then.1064
	movq	(%rsi), %rax
	movq	%rax, 1020(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 1028(%rdi)
	movq	64(%rsi), %rax
	movq	%rax, 1036(%rdi)
	movq	72(%rsi), %rax
	movq	%rax, 1044(%rdi)
.LBB7_78:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_22:                               # %land.lhs.true.647
	movl	1024(%rdi), %ecx
	movl	%ecx, -80(%rsp)         # 4-byte Spill
	movl	1040(%rdi), %r12d
	movl	-32(%rsp), %ebp         # 4-byte Reload
	subl	%ecx, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovll	%ebp, %r14d
	movq	-72(%rsp), %rcx         # 8-byte Reload
	leal	(%r12,%rcx), %ebp
	movl	%ebp, %r10d
	negl	%r10d
	cmovll	%ebp, %r10d
	cmpl	%r10d, %r14d
	jg	.LBB7_23
# BB#24:                                # %land.lhs.true.709
	movl	-36(%rsp), %r14d        # 4-byte Reload
	subl	1028(%rdi), %r14d
	movl	%r14d, %ebp
	negl	%ebp
	cmovll	%r14d, %ebp
	cmpl	%eax, %ebp
	jle	.LBB7_25
.LBB7_23:
	movl	-4(%rsp), %r8d          # 4-byte Reload
	movl	-20(%rsp), %ecx         # 4-byte Reload
	movl	-80(%rsp), %r14d        # 4-byte Reload
.LBB7_26:                               # %if.then.833
	movl	%ecx, -20(%rsp)         # 4-byte Spill
	movl	%r8d, %ecx
	movq	-56(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r13d
	movq	-64(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r12d
	movl	-28(%rsp), %eax         # 4-byte Reload
	movl	-76(%rsp), %ebp         # 4-byte Reload
	subl	%eax, %ebp
	movl	-24(%rsp), %r11d        # 4-byte Reload
	subl	%r11d, %r14d
	movl	1028(%rdi), %r10d
	movl	1032(%rdi), %r8d
	subl	-48(%rsp), %r10d        # 4-byte Folded Reload
	subl	-44(%rsp), %r8d         # 4-byte Folded Reload
	cmpl	%eax, -16(%rsp)         # 4-byte Folded Reload
	jl	.LBB7_29
# BB#27:                                # %lor.lhs.false.897
	jne	.LBB7_30
# BB#28:                                # %lor.lhs.false.897
	cmpl	%r11d, -32(%rsp)        # 4-byte Folded Reload
	jge	.LBB7_30
.LBB7_29:                               # %do.end
	subl	%r13d, %ebp
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	addl	%eax, %ebx
	movl	%ebx, 64(%rsi)
	subl	%r12d, %r14d
	movl	%r14d, %ebx
	shrl	$31, %ebx
	addl	%r14d, %ebx
	sarl	%ebx
	movq	-72(%rsp), %rbp         # 8-byte Reload
	addl	%ebx, %ebp
	movl	%ebp, 68(%rsi)
	movl	-16(%rsp), %ebp         # 4-byte Reload
	addl	%eax, %ebp
	movl	%ebp, (%rsi)
	movl	-32(%rsp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	movl	%eax, 4(%rsi)
	subl	%r13d, %r10d
	movl	%r10d, %eax
	shrl	$31, %eax
	addl	%r10d, %eax
	sarl	%eax
	movl	-36(%rsp), %ebp         # 4-byte Reload
	addl	%eax, %ebp
	movl	%ebp, 32(%rsi)
	subl	%r12d, %r8d
	jmp	.LBB7_31
.LBB7_30:                               # %do.end.954
	addl	%r13d, %ebp
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	subl	%eax, %ebx
	movl	%ebx, 64(%rsi)
	addl	%r12d, %r14d
	movl	%r14d, %ebx
	shrl	$31, %ebx
	addl	%r14d, %ebx
	sarl	%ebx
	movq	-72(%rsp), %rbp         # 8-byte Reload
	subl	%ebx, %ebp
	movl	%ebp, 68(%rsi)
	movl	-16(%rsp), %ebp         # 4-byte Reload
	addl	%eax, %ebp
	movl	%ebp, (%rsi)
	movl	-32(%rsp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	movl	%eax, 4(%rsi)
	addl	%r13d, %r10d
	movl	%r10d, %eax
	shrl	$31, %eax
	addl	%r10d, %eax
	sarl	%eax
	movl	-36(%rsp), %ebp         # 4-byte Reload
	addl	%eax, %ebp
	movl	%ebp, 32(%rsi)
	addl	%r12d, %r8d
.LBB7_31:                               # %if.end.989
	movl	%r8d, %eax
	shrl	$31, %eax
	addl	%r8d, %eax
	sarl	%eax
	movl	-40(%rsp), %ebp         # 4-byte Reload
	addl	%eax, %ebp
	movl	%ebp, 36(%rsi)
	xorl	%r11d, %r11d
	movl	%ecx, %r8d
	jmp	.LBB7_32
.LBB7_25:                               # %land.lhs.true.771
	movl	-40(%rsp), %eax         # 4-byte Reload
	subl	1032(%rdi), %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	cmpl	%r10d, %ebp
	movl	-4(%rsp), %r8d          # 4-byte Reload
	movl	-20(%rsp), %ecx         # 4-byte Reload
	movl	-80(%rsp), %r14d        # 4-byte Reload
	jle	.LBB7_33
	jmp	.LBB7_26
.Lfunc_end7:
	.size	adjust_stroke, .Lfunc_end7-adjust_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	line_join_points,@function
line_join_points:                       # @line_join_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 112
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	cvtsi2sdl	64(%rsi), %xmm0
	cvtsi2sdl	68(%rdx), %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	64(%rdx), %xmm0
	cvtsi2sdl	68(%rsi), %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	seta	%al
	movzbl	%al, %ebp
	movl	40(%rsi), %eax
	movl	%eax, (%rcx)
	movl	44(%rsi), %eax
	movl	%eax, 4(%rcx)
	movl	48(%rsi), %r15d
	movl	%r15d, 24(%rcx)
	movl	52(%rsi), %r12d
	movl	%r12d, 28(%rcx)
	cmpl	112(%rsp), %ebp
	je	.LBB8_1
# BB#2:                                 # %if.else
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movl	16(%rdx), %eax
	leaq	8(%rcx), %rdi
	movl	%eax, 8(%rcx)
	movl	20(%rdx), %r11d
	movl	%r11d, 12(%rcx)
	movl	(%rdx), %r8d
	movl	%r8d, 16(%rcx)
	movl	4(%rdx), %r14d
	movl	%r14d, 20(%rcx)
	movl	%r11d, %r10d
	movl	%eax, %ebx
	movq	%rcx, %r13
	jmp	.LBB8_3
.LBB8_1:                                # %if.then
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	leaq	24(%rcx), %r13
	movl	8(%rdx), %r8d
	leaq	16(%rcx), %rdi
	movl	%r8d, 16(%rcx)
	movl	12(%rdx), %r14d
	movl	%r14d, 20(%rcx)
	movl	(%rdx), %eax
	movl	%eax, 8(%rcx)
	movl	4(%rdx), %r11d
	movl	%r11d, 12(%rcx)
	movl	%r14d, %r10d
	movl	%r8d, %ebx
.LBB8_3:                                # %do.end
	movl	$4, %ebp
	testl	%r9d, %r9d
	jne	.LBB8_4
# BB#8:                                 # %land.lhs.true
	movq	%rdi, %r9
	xorl	(%r13), %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$127, %ebx
	ja	.LBB8_10
# BB#9:                                 # %land.lhs.true.131
	xorl	4(%r13), %r10d
	andl	$2147483647, %r10d      # imm = 0x7FFFFFFF
	cmpl	$128, %r10d
	jb	.LBB8_14
.LBB8_10:                               # %if.then.142
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, (%rsp)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%r13, %r8
	callq	check_miter
	testl	%eax, %eax
	js	.LBB8_13
# BB#11:                                # %if.end.146
	jne	.LBB8_14
# BB#12:                                # %if.then.149
	movl	48(%rsp), %eax
	movl	%eax, (%r13)
	movl	52(%rsp), %eax
	movl	%eax, 4(%r13)
	jmp	.LBB8_14
.LBB8_4:                                # %do.end
	cmpl	$4, %r9d
	jne	.LBB8_14
# BB#5:                                 # %if.then.71
	movl	(%r13), %ebp
	movl	4(%r13), %esi
	subl	(%rdx), %ebp
	addl	%ebx, %ebp
	subl	4(%rdx), %esi
	addl	%r10d, %esi
	movl	112(%rsp), %edx
	cmpl	%edx, 44(%rsp)          # 4-byte Folded Reload
	movl	%r15d, 32(%rcx)
	movl	%r12d, 36(%rcx)
	je	.LBB8_6
# BB#7:                                 # %if.else.98
	movl	%r8d, 24(%rcx)
	movl	%r14d, 28(%rcx)
	movl	%eax, 16(%rcx)
	movl	%r11d, 20(%rcx)
	movl	%ebp, 8(%rcx)
	movl	%esi, 12(%rcx)
	movl	$5, %ebp
	jmp	.LBB8_14
.LBB8_13:                               # %cleanup.156.critedge
	movl	%eax, %ebp
	jmp	.LBB8_14
.LBB8_6:                                # %if.then.93
	movl	%ebp, 24(%rcx)
	movl	%esi, 28(%rcx)
	movl	$5, %ebp
.LBB8_14:                               # %cleanup.156
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	line_join_points, .Lfunc_end8-line_join_points
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_1:
	.long	1199570944              # float 65536
	.text
	.align	16, 0x90
	.type	check_miter,@function
check_miter:                            # @check_miter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 144
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movss	28(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtsi2sdl	76(%r13), %xmm1
	cvtsi2sdl	72(%r13), %xmm0
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	subl	76(%r12), %ecx
	cvtsi2sdl	%ecx, %xmm3
	subl	72(%r12), %eax
	cvtsi2sdl	%eax, %xmm6
	testq	%rbx, %rbx
	je	.LBB9_1
# BB#2:                                 # %if.then
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm3, 56(%rsp)         # 8-byte Spill
	movss	%xmm4, 44(%rsp)         # 4-byte Spill
	leaq	72(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_distance_transform_inverse
	testl	%eax, %eax
	js	.LBB9_23
# BB#3:                                 # %if.end
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movapd	%xmm0, 16(%rsp)         # 16-byte Spill
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	leaq	72(%rsp), %rsi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_distance_transform_inverse
	testl	%eax, %eax
	js	.LBB9_23
# BB#4:                                 # %cleanup
	movsd	72(%rsp), %xmm6         # xmm6 = mem[0],zero
	movsd	80(%rsp), %xmm3         # xmm3 = mem[0],zero
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	movapd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	8(%rsp), %xmm5          # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm1
	mulsd	%xmm6, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %eax
	movss	44(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movapd	%xmm2, %xmm0
	movapd	%xmm5, %xmm1
	jmp	.LBB9_5
.LBB9_1:
	movl	152(%rsp), %eax
.LBB9_5:                                # %if.end.24
	movapd	%xmm1, %xmm5
	mulsd	%xmm6, %xmm5
	movapd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm5
	mulsd	%xmm3, %xmm1
	mulsd	%xmm6, %xmm0
	addsd	%xmm1, %xmm0
	testl	%eax, %eax
	jne	.LBB9_7
# BB#6:
	xorpd	.LCPI9_0(%rip), %xmm5
.LBB9_7:                                # %if.end.24
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_9
	jp	.LBB9_9
# BB#8:                                 # %if.end.24
	movl	$-28, %eax
	ucomisd	%xmm1, %xmm5
	jne	.LBB9_9
	jnp	.LBB9_23
.LBB9_9:                                # %if.end.39
	ucomisd	%xmm0, %xmm1
	movapd	.LCPI9_0(%rip), %xmm2   # xmm2 = [9223372036854775808,9223372036854775808]
	movapd	%xmm0, %xmm3
	xorpd	%xmm2, %xmm3
	jbe	.LBB9_11
# BB#10:
	xorpd	%xmm2, %xmm5
.LBB9_11:                               # %if.end.39
	movapd	%xmm0, %xmm2
	cmpltsd	%xmm1, %xmm2
	andpd	%xmm2, %xmm3
	andnpd	%xmm0, %xmm2
	orpd	%xmm3, %xmm2
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm4
	jbe	.LBB9_13
# BB#12:                                # %cond.true
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm5, %xmm1
	jbe	.LBB9_14
	jmp	.LBB9_15
.LBB9_13:                               # %cond.false
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm5, %xmm1
	jbe	.LBB9_22
.LBB9_14:                               # %land.lhs.true.56
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm5
	jb	.LBB9_22
.LBB9_15:                               # %if.then.61
	movl	56(%r13), %edi
	movl	%edi, 72(%rsp)
	movl	60(%r13), %ebx
	movl	%ebx, 76(%rsp)
	callq	abs
	movl	%eax, %ebp
	movl	%ebx, %edi
	callq	abs
	addl	%ebp, %eax
	cmpl	$15, %eax
	jg	.LBB9_18
# BB#16:                                # %land.lhs.true.75
	movl	72(%r13), %ebp
	movl	76(%r13), %ebx
	movl	%ebp, %eax
	orl	%ebx, %eax
	je	.LBB9_18
# BB#17:                                # %if.then.85
	movl	%ebp, %edi
	callq	abs
	movl	%eax, %r13d
	movl	%ebx, %edi
	callq	abs
	cmpl	%eax, %r13d
	cmovgel	%r13d, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 72(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 76(%rsp)
.LBB9_18:                               # %if.end.117
	movq	144(%rsp), %r13
	movl	24(%r12), %edi
	movl	%edi, 64(%rsp)
	movl	28(%r12), %ebx
	movl	%ebx, 68(%rsp)
	callq	abs
	movl	%eax, %ebp
	movl	%ebx, %edi
	callq	abs
	addl	%ebp, %eax
	cmpl	$15, %eax
	jg	.LBB9_21
# BB#19:                                # %land.lhs.true.132
	movl	72(%r12), %ebx
	movl	76(%r12), %ebp
	movl	%ebx, %eax
	orl	%ebp, %eax
	je	.LBB9_21
# BB#20:                                # %if.then.142
	movl	%ebx, %edi
	callq	abs
	movl	%eax, %r12d
	movl	%ebp, %edi
	callq	abs
	cmpl	%eax, %r12d
	cmovgel	%r12d, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	negl	%ebx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 64(%rsp)
	negl	%ebp
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 68(%rsp)
.LBB9_21:                               # %do.end
	leaq	72(%rsp), %rsi
	leaq	64(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r13, %r8
	callq	line_intersect
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_23
.LBB9_22:                               # %if.end.189
	movl	$1, %eax
.LBB9_23:                               # %cleanup.190
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	check_miter, .Lfunc_end9-check_miter
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_1:
	.quad	4746794007244308480     # double 2147483647
	.text
	.align	16, 0x90
	.type	line_intersect,@function
line_intersect:                         # @line_intersect
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2sdl	(%rsi), %xmm9
	cvtsi2sdl	4(%rsi), %xmm10
	cvtsi2sdl	(%rcx), %xmm5
	cvtsi2sdl	4(%rcx), %xmm3
	movapd	%xmm9, %xmm0
	mulsd	%xmm3, %xmm0
	movapd	%xmm10, %xmm4
	mulsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm0
	movl	(%rdi), %esi
	movl	4(%rdi), %ecx
	movl	(%rdx), %eax
	movl	4(%rdx), %edx
	subl	%esi, %eax
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%eax, %xmm4
	movapd	.LCPI10_0(%rip), %xmm6  # xmm6 = [9223372036854775808,9223372036854775808]
	movapd	%xmm0, %xmm2
	xorpd	%xmm6, %xmm2
	xorps	%xmm1, %xmm1
	movapd	%xmm0, %xmm7
	cmpltsd	%xmm1, %xmm7
	movapd	%xmm7, %xmm1
	andnpd	%xmm0, %xmm1
	andpd	%xmm2, %xmm7
	orpd	%xmm1, %xmm7
	mulsd	.LCPI10_1(%rip), %xmm7
	js	.LBB10_1
# BB#2:                                 # %entry
	movapd	%xmm4, %xmm6
	jmp	.LBB10_3
.LBB10_1:
	xorpd	%xmm4, %xmm6
.LBB10_3:                               # %entry
	movl	$-1, %eax
	ucomisd	%xmm7, %xmm6
	jae	.LBB10_13
# BB#4:                                 # %lor.lhs.false
	subl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm8
	js	.LBB10_5
# BB#6:                                 # %lor.lhs.false
	movapd	%xmm8, %xmm6
	jmp	.LBB10_7
.LBB10_5:
	movapd	.LCPI10_0(%rip), %xmm6  # xmm6 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm8, %xmm6
.LBB10_7:                               # %lor.lhs.false
	ucomisd	%xmm7, %xmm6
	jae	.LBB10_13
# BB#8:                                 # %if.end
	mulsd	%xmm4, %xmm3
	mulsd	%xmm8, %xmm5
	subsd	%xmm5, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm9, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	%esi, %eax
	movl	%eax, (%r8)
	movapd	%xmm10, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	%ecx, %eax
	movl	%eax, 4(%r8)
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm3
	jae	.LBB10_10
# BB#9:
	xorl	%eax, %eax
	jmp	.LBB10_12
.LBB10_10:                              # %land.rhs
	ucomisd	%xmm0, %xmm5
	seta	%cl
	mulsd	%xmm4, %xmm10
	mulsd	%xmm8, %xmm9
	ucomisd	%xmm5, %xmm0
	setae	%al
	ucomisd	%xmm9, %xmm10
	jae	.LBB10_12
# BB#11:                                # %land.rhs
	movb	%cl, %al
.LBB10_12:                              # %land.end
	movzbl	%al, %eax
	notl	%eax
	andl	$1, %eax
.LBB10_13:                              # %cleanup
	retq
.Lfunc_end10:
	.size	line_intersect, .Lfunc_end10-line_intersect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4603149758332357153     # double 0.55228474983079334
	.text
	.align	16, 0x90
	.type	add_pie_cap,@function
add_pie_cap:                            # @add_pie_cap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp115:
	.cfi_def_cfa_offset 32
.Ltmp116:
	.cfi_offset %rbx, -24
.Ltmp117:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	24(%rbx), %ecx
	movl	28(%rbx), %r8d
	movl	(%rbx), %esi
	addl	%ecx, %esi
	movl	4(%rbx), %edx
	addl	%r8d, %edx
	addl	8(%rbx), %ecx
	addl	12(%rbx), %r8d
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB11_3
# BB#1:                                 # %lor.lhs.false
	movl	16(%rbx), %esi
	movl	20(%rbx), %edx
	movl	24(%rbx), %ecx
	addl	%esi, %ecx
	movl	28(%rbx), %r8d
	addl	%edx, %r8d
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB11_3
# BB#2:                                 # %lor.lhs.false.30
	movl	16(%rbx), %esi
	movl	20(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
.LBB11_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	add_pie_cap, .Lfunc_end11-add_pie_cap
	.cfi_endproc

	.align	16, 0x90
	.type	add_pie_join,@function
add_pie_join:                           # @add_pie_join
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp122:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 80
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	64(%rbx), %r13
	cvtsi2sdl	64(%rbx), %xmm0
	cvtsi2sdl	68(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	64(%rbp), %xmm0
	cvtsi2sdl	68(%rbx), %xmm2
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB12_3
	jp	.LBB12_3
# BB#1:                                 # %if.then
	testl	%r8d, %r8d
	je	.LBB12_2
# BB#16:                                # %if.then.11
	addq	$32, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	add_pie_cap             # TAILCALL
.LBB12_3:                               # %if.end
	seta	%al
	movzbl	%al, %r12d
	cmpl	%r15d, %r12d
	je	.LBB12_6
# BB#4:                                 # %if.then.21
	leaq	40(%rbx), %rdx
	leaq	16(%rbp), %r8
	leaq	56(%rbx), %rcx
	leaq	24(%rbp), %r9
	movl	40(%rbx), %eax
	cmpl	16(%rbp), %eax
	jne	.LBB12_10
# BB#5:                                 # %land.lhs.true
	movl	44(%rbx), %eax
	cmpl	20(%rbp), %eax
	jne	.LBB12_10
.LBB12_2:                               # %if.else
	movl	48(%rbx), %esi
	movl	52(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_line_notes  # TAILCALL
.LBB12_6:                               # %if.else.44
	movl	32(%rbx), %esi
	movl	36(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB12_15
# BB#7:                                 # %if.end.62
	movl	8(%rbp), %esi
	movl	12(%rbp), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB12_15
# BB#8:                                 # %if.end.69
	leaq	8(%rbp), %rdx
	leaq	48(%rbx), %r8
	leaq	24(%rbp), %rcx
	leaq	56(%rbx), %r9
	movl	(%rdx), %eax
	cmpl	(%r8), %eax
	jne	.LBB12_10
# BB#9:                                 # %land.lhs.true.74
	movl	12(%rbp), %esi
	xorl	%eax, %eax
	cmpl	52(%rbx), %esi
	je	.LBB12_15
.LBB12_10:                              # %if.end.81
	leaq	32(%rbx), %rsi
	testl	%r15d, %r15d
	sete	%al
	movzbl	%al, %eax
	movq	%r13, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	callq	do_pie_join
	testl	%eax, %eax
	js	.LBB12_15
# BB#11:                                # %if.end.90
	cmpl	%r15d, %r12d
	je	.LBB12_14
# BB#12:                                # %land.lhs.true.92
	movl	32(%rbx), %esi
	movl	36(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB12_15
# BB#13:                                # %lor.lhs.false
	movl	48(%rbx), %esi
	movl	52(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	testl	%eax, %eax
	js	.LBB12_15
.LBB12_14:                              # %do.end
	xorl	%eax, %eax
.LBB12_15:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	add_pie_join, .Lfunc_end12-add_pie_join
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4603149758332357153     # double 0.55228474983079334
.LCPI13_2:
	.quad	4746794007244308480     # double 2147483647
.LCPI13_3:
	.quad	4607182418800017408     # double 1
.LCPI13_4:
	.quad	4608683618675807573     # double 1.3333333333333333
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	do_pie_join,@function
do_pie_join:                            # @do_pie_join
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp134:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp135:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp137:
	.cfi_def_cfa_offset 80
.Ltmp138:
	.cfi_offset %rbx, -56
.Ltmp139:
	.cfi_offset %r12, -48
.Ltmp140:
	.cfi_offset %r13, -40
.Ltmp141:
	.cfi_offset %r14, -32
.Ltmp142:
	.cfi_offset %r15, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r15
	movq	%rsi, %r13
	movq	88(%rsp), %r9
	movl	(%rcx), %r12d
	movl	4(%rcx), %ebp
	movl	(%rdx), %ecx
	movl	4(%rdx), %r8d
	cvtsi2sdl	%r12d, %xmm0
	cvtsi2sdl	(%rbx), %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	4(%rbx), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.LBB13_1
# BB#2:                                 # %if.then
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	80(%rsp), %r14d
	movl	(%r13), %esi
	addl	%r12d, %esi
	movl	4(%r13), %edx
	addl	%ebp, %edx
	addl	%r12d, %ecx
	addl	%ebp, %r8d
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%rdi, %r15
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB13_22
# BB#3:                                 # %if.end
	movl	(%r13), %ecx
	addl	%r12d, %ecx
	movl	4(%r13), %r8d
	addl	%ebp, %r8d
	testl	%r14d, %r14d
	movq	8(%rsp), %r9            # 8-byte Reload
	xorpd	%xmm1, %xmm1
	je	.LBB13_5
# BB#4:                                 # %if.then.39
	negl	%ebp
	jmp	.LBB13_6
.LBB13_1:
	movl	%ebp, %eax
	movl	%r12d, %ebp
	jmp	.LBB13_7
.LBB13_22:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_5:                               # %if.else
	negl	%r12d
.LBB13_6:                               # %if.end.52
	movl	%r12d, %eax
	movq	%r15, %rdi
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB13_7:                               # %if.end.52
	cvtsi2sdl	%ebp, %xmm8
	cvtsi2sdl	%eax, %xmm9
	cvtsi2sdl	(%rbx), %xmm5
	xorps	%xmm2, %xmm2
	cvtsi2sdl	4(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm9, %xmm0
	mulsd	%xmm5, %xmm0
	subsd	%xmm0, %xmm3
	movl	(%r15), %esi
	movl	4(%r15), %edx
	movl	%esi, %eax
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm4
	movapd	.LCPI13_1(%rip), %xmm7  # xmm7 = [9223372036854775808,9223372036854775808]
	movapd	%xmm3, %xmm0
	xorpd	%xmm7, %xmm0
	movapd	%xmm3, %xmm6
	cmpltsd	%xmm1, %xmm6
	movapd	%xmm6, %xmm1
	andnpd	%xmm3, %xmm1
	andpd	%xmm0, %xmm6
	orpd	%xmm1, %xmm6
	mulsd	.LCPI13_2(%rip), %xmm6
	js	.LBB13_8
# BB#9:                                 # %if.end.52
	movapd	%xmm4, %xmm7
	jmp	.LBB13_10
.LBB13_8:
	xorpd	%xmm4, %xmm7
.LBB13_10:                              # %if.end.52
	ucomisd	%xmm6, %xmm7
	jae	.LBB13_23
# BB#11:                                # %lor.lhs.false.i
	movl	%edx, %eax
	subl	%r8d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	js	.LBB13_12
# BB#13:                                # %lor.lhs.false.i
	movapd	%xmm0, %xmm7
	jmp	.LBB13_14
.LBB13_12:
	movapd	.LCPI13_1(%rip), %xmm7  # xmm7 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm0, %xmm7
.LBB13_14:                              # %lor.lhs.false.i
	ucomisd	%xmm6, %xmm7
	jae	.LBB13_23
# BB#15:                                # %if.end.i
	mulsd	%xmm4, %xmm2
	mulsd	%xmm0, %xmm5
	subsd	%xmm5, %xmm2
	divsd	%xmm3, %xmm2
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm2
	jb	.LBB13_23
# BB#16:                                # %land.rhs.i
	ucomisd	%xmm3, %xmm5
	seta	%bl
	mulsd	%xmm9, %xmm4
	mulsd	%xmm8, %xmm0
	ucomisd	%xmm5, %xmm3
	setae	%al
	ucomisd	%xmm0, %xmm4
	jae	.LBB13_18
# BB#17:                                # %land.rhs.i
	movb	%bl, %al
.LBB13_18:                              # %land.rhs.i
	testb	%al, %al
	je	.LBB13_23
# BB#19:                                # %if.end.60
	movq	%rdi, %r14
	mulsd	%xmm2, %xmm8
	mulsd	%xmm2, %xmm9
	cvttsd2si	%xmm8, %eax
	cvttsd2si	%xmm9, %edx
	leal	(%rcx,%rax), %ebx
	leal	(%r8,%rdx), %ebp
	negl	%eax
	negl	%edx
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsi2sdl	(%r9), %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%r9), %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	addsd	.LCPI13_3(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB13_21
# BB#20:                                # %call.sqrt
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB13_21:                              # %if.end.60.split
	movsd	.LCPI13_3(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	mulsd	.LCPI13_4(%rip), %xmm1
	movl	(%r15), %esi
	movl	4(%r15), %edx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	movapd	%xmm1, %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_partial_arc_notes # TAILCALL
.LBB13_23:                              # %if.then.56
	xorl	%ecx, %ecx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_path_add_line_notes  # TAILCALL
.Lfunc_end13:
	.size	do_pie_join, .Lfunc_end13-do_pie_join
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4603149758332357153     # double 0.55228474983079334
	.text
	.align	16, 0x90
	.type	add_round_cap,@function
add_round_cap:                          # @add_round_cap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp146:
	.cfi_def_cfa_offset 32
.Ltmp147:
	.cfi_offset %rbx, -24
.Ltmp148:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	24(%rbx), %ecx
	movl	28(%rbx), %r8d
	movl	(%rbx), %esi
	addl	%ecx, %esi
	movl	4(%rbx), %edx
	addl	%r8d, %edx
	addl	8(%rbx), %ecx
	addl	12(%rbx), %r8d
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB14_5
# BB#1:                                 # %lor.lhs.false
	movl	16(%rbx), %esi
	movl	20(%rbx), %edx
	movl	24(%rbx), %ecx
	addl	%esi, %ecx
	movl	28(%rbx), %r8d
	addl	%edx, %r8d
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB14_5
# BB#2:                                 # %lor.lhs.false.30
	movl	24(%rbx), %eax
	movl	(%rbx), %esi
	movl	4(%rbx), %edx
	subl	%eax, %esi
	movl	28(%rbx), %edi
	subl	%edi, %edx
	movl	16(%rbx), %ecx
	subl	%eax, %ecx
	movl	20(%rbx), %r8d
	subl	%edi, %r8d
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB14_5
# BB#3:                                 # %lor.lhs.false.52
	movl	8(%rbx), %esi
	movl	12(%rbx), %edx
	movl	%esi, %ecx
	subl	24(%rbx), %ecx
	movl	%edx, %r8d
	subl	28(%rbx), %r8d
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	callq	gx_path_add_partial_arc_notes
	testl	%eax, %eax
	js	.LBB14_5
# BB#4:                                 # %lor.lhs.false.69
	movl	16(%rbx), %esi
	movl	20(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gx_path_add_line_notes
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
.LBB14_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	add_round_cap, .Lfunc_end14-add_round_cap
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fill_stroke_path"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_stroke_path_only error"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_stroke_path exit(dash path)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_stroke_path exit(flattened path)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_join_path_and_reverse"
	.size	.L.str.4, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
