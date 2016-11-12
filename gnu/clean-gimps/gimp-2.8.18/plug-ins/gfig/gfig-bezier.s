	.text
	.file	"gfig-bezier.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	d_draw_bezier
	.align	16, 0x90
	.type	d_draw_bezier,@function
d_draw_bezier:                          # @d_draw_bezier
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	cmpl	$0, -28(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then
	jmp	.LBB0_18
.LBB0_6:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_7:                                # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_14
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rax
	cmpq	obj_creating, %rax
	jne	.LBB0_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$1, %esi
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	jmp	.LBB0_12
.LBB0_11:                               # %if.else
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
.LBB0_12:                               # %if.end.14
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
# BB#13:                                # %for.inc.24
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_7
.LBB0_14:                               # %for.end.26
	cmpl	$0, bezier_line_frame
	je	.LBB0_17
# BB#15:                                # %land.lhs.true.28
	cmpq	$0, tmp_bezier
	je	.LBB0_17
# BB#16:                                # %if.then.30
	callq	fp_pnt_start
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	DrawBezier
	movq	-16(%rbp), %rdi
	callq	d_bz_line
.LBB0_17:                               # %if.end.31
	callq	fp_pnt_start
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	$3, %edx
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	DrawBezier
	movq	-16(%rbp), %rdi
	callq	d_bz_line
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB0_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	d_draw_bezier, .Lfunc_end0-d_draw_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	fp_pnt_start,@function
fp_pnt_start:                           # @fp_pnt_start
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
	movl	$0, fp_pnt_cnt
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fp_pnt_start, .Lfunc_end1-fp_pnt_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	DrawBezier,@function
DrawBezier:                             # @DrawBezier
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB2_10
# BB#1:                                 # %if.then
	movl	$0, -32(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.LBB2_7
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB2_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB2_7
.LBB2_6:                                # %if.then.13
                                        #   in Loop: Header=BB2_2 Depth=1
	cvtsi2sdl	-40(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	cvtsi2sdl	-48(%rbp), %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	callq	fp_pnt_add
.LBB2_7:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -44(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_2
.LBB2_9:                                # %for.end
	jmp	.LBB2_25
.LBB2_10:                               # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	movl	$0, -32(%rbp)
.LBB2_11:                               # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_14
# BB#12:                                # %for.body.25
                                        #   in Loop: Header=BB2_11 Depth=1
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#13:                                # %for.inc.38
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_11
.LBB2_14:                               # %for.end.40
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
.LBB2_15:                               # %for.cond.49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	cmpl	$1, -36(%rbp)
	jl	.LBB2_22
# BB#16:                                # %for.body.52
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	$0, -32(%rbp)
.LBB2_17:                               # %for.cond.53
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB2_20
# BB#18:                                # %for.body.56
                                        #   in Loop: Header=BB2_17 Depth=2
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	subsd	-24(%rbp), %xmm1
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	mulsd	(%rax), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	mulsd	(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	movsd	%xmm1, (%rax)
	subsd	-24(%rbp), %xmm0
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#19:                                # %for.inc.84
                                        #   in Loop: Header=BB2_17 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_17
.LBB2_20:                               # %for.end.86
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-12(%rbp), %ecx
	subl	-36(%rbp), %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	-12(%rbp), %ecx
	subl	-36(%rbp), %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#21:                                # %for.inc.99
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_15
.LBB2_22:                               # %for.end.100
	cmpl	$0, -28(%rbp)
	jle	.LBB2_24
# BB#23:                                # %if.then.103
	movq	-64(%rbp), %rdi
	movl	-12(%rbp), %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	callq	DrawBezier
	movq	-72(%rbp), %rdi
	movl	-12(%rbp), %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	callq	DrawBezier
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB2_24:                               # %if.end.106
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.107
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	DrawBezier, .Lfunc_end2-DrawBezier
	.cfi_endproc

	.align	16, 0x90
	.type	d_bz_line,@function
d_bz_line:                              # @d_bz_line
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
# BB#1:                                 # %do.body
	movl	$4, %eax
	movl	fp_pnt_cnt, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-32(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.6, %rsi
	movl	$109, %edx
	movabsq	$.L__func__.d_bz_line, %rcx
	movabsq	$.L.str.7, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$0, -12(%rbp)
.LBB3_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	fp_pnt_cnt, %eax
	jge	.LBB3_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movslq	-12(%rbp), %rax
	movq	fp_pnt_pnts, %rcx
	cvttsd2si	(%rcx,%rax,8), %edx
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	fp_pnt_pnts, %rcx
	cvttsd2si	(%rcx,%rax,8), %edx
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	fp_pnt_pnts, %rcx
	cvttsd2si	(%rcx,%rax,8), %edx
	movl	%edx, -24(%rbp)
	movl	-12(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	fp_pnt_pnts, %rcx
	cvttsd2si	(%rcx,%rax,8), %edx
	movl	%edx, -28(%rbp)
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %r8
	callq	gfig_draw_line
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_6
.LBB3_9:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	d_bz_line, .Lfunc_end3-d_bz_line
	.cfi_endproc

	.globl	d_bezier_object_class_init
	.align	16, 0x90
	.type	d_bezier_object_class_init,@function
d_bezier_object_class_init:             # @d_bezier_object_class_init
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
	movabsq	$d_update_bezier, %rax
	movabsq	$d_copy_bezier, %rcx
	movabsq	$d_paint_bezier, %rdx
	movabsq	$d_draw_bezier, %rsi
	movabsq	$.L.str, %rdi
	movabsq	$dobj_class, %r8
	addq	$432, %r8               # imm = 0x1B0
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$9, (%r8)
	movq	-8(%rbp), %r8
	movq	%rdi, 8(%r8)
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_bezier_object_class_init, .Lfunc_end4-d_bezier_object_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	d_paint_bezier,@function
d_paint_bezier:                         # @d_paint_bezier
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	cmpl	$0, -36(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then
	jmp	.LBB5_16
.LBB5_6:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_7:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_10
# BB#8:                                 # %for.body.5
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-32(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	movslq	-40(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -40(%rbp)
# BB#9:                                 # %for.inc.14
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_7
.LBB5_10:                               # %for.end.16
	callq	fp_pnt_start
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	$5, %edx
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	DrawBezier
	leaq	-40(%rbp), %rdi
	callq	d_bz_get_array
	movq	%rax, -16(%rbp)
	cmpl	$0, selvals+120
	je	.LBB5_12
# BB#11:                                # %if.then.19
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_original_xy
	jmp	.LBB5_13
.LBB5_12:                               # %if.else
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_xy
.LBB5_13:                               # %if.end.23
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB5_15
# BB#14:                                # %if.then.25
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gfig_paint
.LBB5_15:                               # %if.end.26
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB5_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_paint_bezier, .Lfunc_end5-d_paint_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_bezier,@function
d_copy_bezier:                          # @d_copy_bezier
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$9, (%rax)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.6, %rsi
	movl	$282, %edx              # imm = 0x11A
	movabsq	$.L__func__.d_copy_bezier, %rcx
	movabsq	$.L.str.8, %r8
	callq	g_assertion_message_expr
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movl	$9, %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %edx
	callq	d_new_object
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	d_copy_dobjpoints
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_copy_bezier, .Lfunc_end6-d_copy_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_bezier,@function
d_update_bezier:                        # @d_update_bezier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, tmp_bezier
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.6, %rsi
	movl	$309, %edx              # imm = 0x135
	movabsq	$.L__func__.d_update_bezier, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	tmp_bezier, %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.1
	jmp	.LBB7_13
.LBB7_7:                                # %if.end.2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB7_12
# BB#8:                                 # %if.then.4
	jmp	.LBB7_9
.LBB7_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_9
.LBB7_11:                               # %while.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.9
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_bezier, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_pnt_add_line
.LBB7_13:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	d_update_bezier, .Lfunc_end7-d_update_bezier
	.cfi_endproc

	.globl	d_bezier_start
	.align	16, 0x90
	.type	d_bezier_start,@function
d_bezier_start:                         # @d_bezier_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, tmp_bezier
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$9, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_new_object
	movq	%rax, obj_creating
	movq	%rax, tmp_bezier
.LBB8_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	d_bezier_start, .Lfunc_end8-d_bezier_start
	.cfi_endproc

	.globl	d_bezier_end
	.align	16, 0x90
	.type	d_bezier_end,@function
d_bezier_end:                           # @d_bezier_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, tmp_bezier
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	obj_creating, %rax
	movq	%rax, tmp_bezier
.LBB9_2:                                # %if.end
	movq	tmp_bezier, %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.2
	jmp	.LBB9_14
.LBB9_4:                                # %if.end.3
	cmpl	$0, -12(%rbp)
	je	.LBB9_13
# BB#5:                                 # %if.then.5
	jmp	.LBB9_6
.LBB9_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_8
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_6
.LBB9_8:                                # %while.end
	cmpq	$0, -24(%rbp)
	je	.LBB9_12
# BB#9:                                 # %if.then.10
	cmpl	$0, bezier_closed
	je	.LBB9_11
# BB#10:                                # %if.then.12
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_bezier, %rdi
	movq	tmp_bezier, %rax
	movq	24(%rax), %rax
	movl	8(%rax), %esi
	movq	tmp_bezier, %rax
	movq	24(%rax), %rax
	movl	12(%rax), %edx
	callq	d_pnt_add_line
.LBB9_11:                               # %if.end.17
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
.LBB9_12:                               # %if.end.18
	movq	$0, tmp_bezier
	movq	$0, obj_creating
	jmp	.LBB9_14
.LBB9_13:                               # %if.else
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_bezier, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_pnt_add_line
.LBB9_14:                               # %if.end.21
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	d_bezier_end, .Lfunc_end9-d_bezier_end
	.cfi_endproc

	.globl	tool_options_bezier
	.align	16, 0x90
	.type	tool_options_bezier,@function
tool_options_bezier:                    # @tool_options_bezier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$1, %eax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_toggle_button_update, %rdx
	movabsq	$bezier_closed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bezier_closed, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_toggle_button_update, %rdi
	movabsq	$bezier_line_frame, %r10
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bezier_line_frame, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tool_options_bezier, .Lfunc_end10-tool_options_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	fp_pnt_add,@function
fp_pnt_add:                             # @fp_pnt_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	cmpq	$0, fp_pnt_pnts
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$10, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, fp_pnt_pnts
	movl	$1, fp_pnt_chunk
.LBB11_2:                               # %if.end
	movl	$10, %eax
	movl	fp_pnt_cnt, %ecx
	addl	$4, %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	fp_pnt_chunk, %eax
	jl	.LBB11_4
# BB#3:                                 # %if.then.1
	movl	$8, %eax
	movl	%eax, %edx
	movl	fp_pnt_chunk, %eax
	addl	$1, %eax
	movl	%eax, fp_pnt_chunk
	movq	fp_pnt_pnts, %rcx
	imull	$10, fp_pnt_chunk, %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n
	movq	%rax, fp_pnt_pnts
.LBB11_4:                               # %if.end.3
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	fp_pnt_cnt, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, fp_pnt_cnt
	movslq	%eax, %rdx
	movq	fp_pnt_pnts, %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	fp_pnt_cnt, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, fp_pnt_cnt
	movslq	%eax, %rdx
	movq	fp_pnt_pnts, %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	fp_pnt_cnt, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, fp_pnt_cnt
	movslq	%eax, %rdx
	movq	fp_pnt_pnts, %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	fp_pnt_cnt, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, fp_pnt_cnt
	movslq	%eax, %rdx
	movq	fp_pnt_pnts, %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fp_pnt_add, .Lfunc_end11-fp_pnt_add
	.cfi_endproc

	.align	16, 0x90
	.type	d_bz_get_array,@function
d_bz_get_array:                         # @d_bz_get_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	fp_pnt_cnt, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	fp_pnt_pnts, %rax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	d_bz_get_array, .Lfunc_end12-d_bz_get_array
	.cfi_endproc

	.type	bezier_line_frame,@object # @bezier_line_frame
	.local	bezier_line_frame
	.comm	bezier_line_frame,4,4
	.type	tmp_bezier,@object      # @tmp_bezier
	.bss
	.globl	tmp_bezier
	.align	8
tmp_bezier:
	.quad	0
	.size	tmp_bezier, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BEZIER"
	.size	.L.str, 7

	.type	bezier_closed,@object   # @bezier_closed
	.local	bezier_closed
	.comm	bezier_closed,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Closed"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"toggled"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Close curve on completion"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Show Line Frame"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Draws lines between the control points. Only during curve creation"
	.size	.L.str.5, 67

	.type	fp_pnt_cnt,@object      # @fp_pnt_cnt
	.local	fp_pnt_cnt
	.comm	fp_pnt_cnt,4,4
	.type	fp_pnt_pnts,@object     # @fp_pnt_pnts
	.local	fp_pnt_pnts
	.comm	fp_pnt_pnts,8,8
	.type	fp_pnt_chunk,@object    # @fp_pnt_chunk
	.local	fp_pnt_chunk
	.comm	fp_pnt_chunk,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gfig-bezier.c"
	.size	.L.str.6, 14

	.type	.L__func__.d_bz_line,@object # @__func__.d_bz_line
.L__func__.d_bz_line:
	.asciz	"d_bz_line"
	.size	.L__func__.d_bz_line, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(fp_pnt_cnt % 4) == 0"
	.size	.L.str.7, 22

	.type	.L__func__.d_copy_bezier,@object # @__func__.d_copy_bezier
.L__func__.d_copy_bezier:
	.asciz	"d_copy_bezier"
	.size	.L__func__.d_copy_bezier, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"obj->type == BEZIER"
	.size	.L.str.8, 20

	.type	.L__func__.d_update_bezier,@object # @__func__.d_update_bezier
.L__func__.d_update_bezier:
	.asciz	"d_update_bezier"
	.size	.L__func__.d_update_bezier, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tmp_bezier != NULL"
	.size	.L.str.9, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
