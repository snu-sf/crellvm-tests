	.text
	.file	"gxpaint.bc"
	.globl	gx_fill_path
	.align	16, 0x90
	.type	gx_fill_path,@function
gx_fill_path:                           # @gx_fill_path
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movl	%r9d, %r13d
	movl	%r8d, %ebp
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	movq	1872(%rbx), %r15
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	js	.LBB0_7
# BB#1:                                 # %if.end
	movl	%r14d, 16(%rsp)
	movl	%ebp, 20(%rsp)
	movl	%r13d, 24(%rsp)
	cmpl	$2, 1848(%rbx)
	jb	.LBB0_5
# BB#2:                                 # %land.lhs.true.i
	movq	1792(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true.2.i
	movl	128(%rax), %eax
	addl	$-3, %eax
	xorps	%xmm0, %xmm0
	cmpl	$50, %eax
	ja	.LBB0_6
# BB#4:                                 # %caching_an_outline_font.exit
	movabsq	$562949953421182, %rcx  # imm = 0x1FFFFFFFFFF7E
	btq	%rax, %rcx
	jb	.LBB0_6
.LBB0_5:                                # %cond.false
	movss	296(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB0_6:                                # %cond.end
	movss	%xmm0, 28(%rsp)
	movq	32(%rsp), %r9
	leaq	16(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	8(%rsp), %r8            # 8-byte Reload
	callq	*1336(%r15)
.LBB0_7:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_fill_path, .Lfunc_end0-gx_fill_path
	.cfi_endproc

	.globl	gx_stroke_fill
	.align	16, 0x90
	.type	gx_stroke_fill,@function
gx_stroke_fill:                         # @gx_stroke_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1872(%rbx), %r15
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	js	.LBB1_7
# BB#1:                                 # %if.end
	cmpl	$2, 1848(%rbx)
	jb	.LBB1_5
# BB#2:                                 # %land.lhs.true.i
	movq	1792(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true.2.i
	movl	128(%rax), %eax
	addl	$-3, %eax
	xorps	%xmm0, %xmm0
	cmpl	$50, %eax
	ja	.LBB1_6
# BB#4:                                 # %caching_an_outline_font.exit
	movabsq	$562949953421182, %rcx  # imm = 0x1FFFFFFFFFF7E
	btq	%rax, %rcx
	jb	.LBB1_6
.LBB1_5:                                # %cond.false
	movss	296(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB1_6:                                # %cond.end
	movss	%xmm0, (%rsp)
	movl	$0, 4(%rsp)
	movq	1760(%rbx), %r8
	movq	8(%rsp), %r9
	leaq	(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*1344(%r15)
.LBB1_7:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gx_stroke_fill, .Lfunc_end1-gx_stroke_fill
	.cfi_endproc

	.globl	gx_stroke_add
	.align	16, 0x90
	.type	gx_stroke_add,@function
gx_stroke_add:                          # @gx_stroke_add
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 32
	movq	%rdx, %rax
	cmpl	$2, 1848(%rax)
	jb	.LBB2_4
# BB#1:                                 # %land.lhs.true.i
	movq	1792(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB2_4
# BB#2:                                 # %land.lhs.true.2.i
	movl	128(%rdx), %r8d
	addl	$-3, %r8d
	xorps	%xmm0, %xmm0
	cmpl	$50, %r8d
	ja	.LBB2_5
# BB#3:                                 # %caching_an_outline_font.exit
	movabsq	$562949953421182, %rdx  # imm = 0x1FFFFFFFFFF7E
	btq	%r8, %rdx
	jb	.LBB2_5
.LBB2_4:                                # %cond.false
	movss	296(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB2_5:                                # %cond.end
	movss	%xmm0, 16(%rsp)
	movl	%ecx, 20(%rsp)
	movq	1872(%rax), %rdx
	movq	$0, (%rsp)
	leaq	16(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%rax, %rcx
	callq	gx_stroke_path_only
	addq	$24, %rsp
	retq
.Lfunc_end2:
	.size	gx_stroke_add, .Lfunc_end2-gx_stroke_add
	.cfi_endproc

	.globl	gx_imager_stroke_add
	.align	16, 0x90
	.type	gx_imager_stroke_add,@function
gx_imager_stroke_add:                   # @gx_imager_stroke_add
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 32
	movl	296(%rcx), %eax
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	movq	$0, (%rsp)
	leaq	16(%rsp), %r8
	xorl	%r9d, %r9d
	callq	gx_stroke_path_only
	addq	$24, %rsp
	retq
.Lfunc_end3:
	.size	gx_imager_stroke_add, .Lfunc_end3-gx_imager_stroke_add
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
