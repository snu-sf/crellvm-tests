	.text
	.file	"gimplut.bc"
	.globl	gimp_lut_new
	.align	16, 0x90
	.type	gimp_lut_new,@function
gimp_lut_new:                           # @gimp_lut_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_lut_new, .Lfunc_end0-gimp_lut_new
	.cfi_endproc

	.globl	gimp_lut_free
	.align	16, 0x90
	.type	gimp_lut_free,@function
gimp_lut_free:                          # @gimp_lut_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#5:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_lut_free, .Lfunc_end1-gimp_lut_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643176031446892544     # double 255
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_lut_setup
	.align	16, 0x90
	.type	gimp_lut_setup,@function
gimp_lut_setup:                         # @gimp_lut_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, (%rdx)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movl	$0, -32(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_free
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB2_6:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rdi
	callq	g_malloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -32(%rbp)
.LBB2_7:                                # %for.cond.7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB2_20
# BB#8:                                 # %for.body.11
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movl	-32(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movl	$0, -36(%rbp)
.LBB2_9:                                # %for.cond.16
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jae	.LBB2_18
# BB#10:                                # %for.body.19
                                        #   in Loop: Header=BB2_9 Depth=2
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %r8d
	movl	%r8d, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	callq	*%rax
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	movsd	%xmm3, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB2_9 Depth=2
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB2_16
.LBB2_12:                               # %cond.false
                                        #   in Loop: Header=BB2_9 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB2_14
# BB#13:                                # %cond.true.29
                                        #   in Loop: Header=BB2_9 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB2_15
.LBB2_14:                               # %cond.false.30
                                        #   in Loop: Header=BB2_9 Depth=2
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB2_15:                               # %cond.end
                                        #   in Loop: Header=BB2_9 Depth=2
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB2_16:                               # %cond.end.31
                                        #   in Loop: Header=BB2_9 Depth=2
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#17:                                # %for.inc.39
                                        #   in Loop: Header=BB2_9 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_9
.LBB2_18:                               # %for.end.41
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_19
.LBB2_19:                               # %for.inc.42
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_7
.LBB2_20:                               # %for.end.44
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_lut_setup, .Lfunc_end2-gimp_lut_setup
	.cfi_endproc

	.globl	gimp_lut_setup_exact
	.align	16, 0x90
	.type	gimp_lut_setup_exact,@function
gimp_lut_setup_exact:                   # @gimp_lut_setup_exact
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	gimp_lut_setup
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_lut_setup_exact, .Lfunc_end3-gimp_lut_setup_exact
	.cfi_endproc

	.globl	gimp_lut_process
	.align	16, 0x90
	.type	gimp_lut_process,@function
gimp_lut_process:                       # @gimp_lut_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	jle	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	jle	.LBB4_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB4_4:                                # %if.end.6
	movq	-8(%rbp), %rax
	cmpl	$2, 8(%rax)
	jle	.LBB4_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB4_6:                                # %if.end.12
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jle	.LBB4_8
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB4_8:                                # %if.end.18
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-16(%rbp), %rax
	imull	44(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -84(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-16(%rbp), %rax
	imull	44(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB4_11
# BB#9:                                 # %land.lhs.true
	cmpl	$0, -88(%rbp)
	jne	.LBB4_11
# BB#10:                                # %if.then.29
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	$1, -76(%rbp)
.LBB4_11:                               # %if.end.31
	jmp	.LBB4_12
.LBB4_12:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_19 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB4_32
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	ja	.LBB4_30
# BB#33:                                # %while.body
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_14:                               # %sw.bb
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %while.cond.33
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, %eax
	je	.LBB4_17
# BB#16:                                # %while.body.36
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_15
.LBB4_17:                               # %while.end
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_31
.LBB4_18:                               # %sw.bb.39
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %while.cond.40
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, %eax
	je	.LBB4_21
# BB#20:                                # %while.body.43
                                        #   in Loop: Header=BB4_19 Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_19
.LBB4_21:                               # %while.end.53
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_31
.LBB4_22:                               # %sw.bb.54
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %while.cond.55
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, %eax
	je	.LBB4_25
# BB#24:                                # %while.body.58
                                        #   in Loop: Header=BB4_23 Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_23
.LBB4_25:                               # %while.end.73
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_31
.LBB4_26:                               # %sw.bb.74
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %while.cond.75
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, %eax
	je	.LBB4_29
# BB#28:                                # %while.body.78
                                        #   in Loop: Header=BB4_27 Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 3(%rax)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_27
.LBB4_29:                               # %while.end.97
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_31
.LBB4_30:                               # %sw.default
                                        #   in Loop: Header=BB4_12 Depth=1
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movb	$0, %al
	callq	g_warning
.LBB4_31:                               # %sw.epilog
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	-84(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-88(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_12
.LBB4_32:                               # %while.end.103
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_lut_process, .Lfunc_end4-gimp_lut_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_14
	.quad	.LBB4_18
	.quad	.LBB4_22
	.quad	.LBB4_26

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB5_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.globl	gimp_lut_process_inline
	.align	16, 0x90
	.type	gimp_lut_process_inline,@function
gimp_lut_process_inline:                # @gimp_lut_process_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	jle	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	jle	.LBB6_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB6_4:                                # %if.end.6
	movq	-8(%rbp), %rax
	cmpl	$2, 8(%rax)
	jle	.LBB6_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB6_6:                                # %if.end.12
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jle	.LBB6_8
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB6_8:                                # %if.end.18
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-16(%rbp), %rax
	imull	44(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB6_10
# BB#9:                                 # %if.then.22
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$1, -20(%rbp)
.LBB6_10:                               # %if.end.24
	jmp	.LBB6_11
.LBB6_11:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_22 Depth 2
                                        #     Child Loop BB6_18 Depth 2
                                        #     Child Loop BB6_14 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB6_31
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_29
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_13:                               # %sw.bb
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               # %while.cond.26
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB6_16
# BB#15:                                # %while.body.29
                                        #   in Loop: Header=BB6_14 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_14
.LBB6_16:                               # %while.end
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_30
.LBB6_17:                               # %sw.bb.31
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_18
.LBB6_18:                               # %while.cond.32
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB6_20
# BB#19:                                # %while.body.35
                                        #   in Loop: Header=BB6_18 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_18
.LBB6_20:                               # %while.end.44
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_30
.LBB6_21:                               # %sw.bb.45
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %while.cond.46
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB6_24
# BB#23:                                # %while.body.49
                                        #   in Loop: Header=BB6_22 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_22
.LBB6_24:                               # %while.end.63
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_30
.LBB6_25:                               # %sw.bb.64
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_26
.LBB6_26:                               # %while.cond.65
                                        #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB6_28
# BB#27:                                # %while.body.68
                                        #   in Loop: Header=BB6_26 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, (%rax)
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-40(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movb	%sil, 3(%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_26
.LBB6_28:                               # %while.end.86
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_30
.LBB6_29:                               # %sw.default
                                        #   in Loop: Header=BB6_11 Depth=1
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movb	$0, %al
	callq	g_warning
.LBB6_30:                               # %sw.epilog
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_11
.LBB6_31:                               # %while.end.90
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_lut_process_inline, .Lfunc_end6-gimp_lut_process_inline
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_13
	.quad	.LBB6_17
	.quad	.LBB6_21
	.quad	.LBB6_25

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimplut: Error: nchannels = %d\n"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Base"
	.size	.L.str.1, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
