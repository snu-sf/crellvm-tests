	.text
	.file	"gfig-spiral.bc"
	.globl	tool_options_spiral
	.align	16, 0x90
	.type	tool_options_spiral,@function
tool_options_spiral:                    # @tool_options_spiral
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
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$spiral_num_turns, %rsi
	movabsq	$spiral_toggle, %rdx
	movl	$1, %ecx
	movl	$20, %r8d
	movq	%rax, %rdi
	callq	num_sides_widget
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_options_spiral, .Lfunc_end0-tool_options_spiral
	.cfi_endproc

	.globl	d_spiral_object_class_init
	.align	16, 0x90
	.type	d_spiral_object_class_init,@function
d_spiral_object_class_init:             # @d_spiral_object_class_init
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
	movabsq	$d_update_spiral, %rax
	movabsq	$d_copy_spiral, %rcx
	movabsq	$d_paint_spiral, %rdx
	movabsq	$d_draw_spiral, %rsi
	movabsq	$.L.str.1, %rdi
	movabsq	$dobj_class, %r8
	addq	$384, %r8               # imm = 0x180
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$8, (%r8)
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
.Lfunc_end1:
	.size	d_spiral_object_class_init, .Lfunc_end1-d_spiral_object_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI2_1:
	.quad	4585191390103903545     # double 0.034906585039886591
.LCPI2_2:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	d_draw_spiral,@function
d_draw_spiral:                          # @d_draw_spiral
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	movl	$0, -100(%rbp)
	movl	$1, -104(%rbp)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_19
.LBB2_2:                                # %if.end
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	jmp	.LBB2_19
.LBB2_4:                                # %if.end.3
	movq	obj_creating, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.6
	movl	$1, %esi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
	movq	-32(%rbp), %rax
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
.LBB2_7:                                # %if.end.12
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -34(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -36(%rbp)
	movswl	-34(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-36(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -64(%rbp)
	movswl	-36(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movswl	-34(%rbp), %ecx
	movw	%cx, %si
	cvtsi2sdl	%ecx, %xmm1
	movw	%si, -130(%rbp)         # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %edi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	abs
	xorps	%xmm0, %xmm0
	movl	-136(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%eax, -104(%rbp)
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB2_9
# BB#8:                                 # %if.then.35
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB2_9:                                # %if.end.37
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	-72(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -80(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$0, -84(%rbp)
.LBB2_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	$180, 16(%rcx), %edi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	abs
	movl	-104(%rbp), %edi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%edi, -152(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	-152(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	movl	-148(%rbp), %eax        # 4-byte Reload
	addl	%edi, %eax
	movl	-144(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jg	.LBB2_19
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB2_10 Depth=1
	cvtsi2sdl	-84(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-104(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -124(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB2_16
# BB#12:                                # %if.then.79
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jne	.LBB2_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-124(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.88
                                        #   in Loop: Header=BB2_10 Depth=1
	jmp	.LBB2_18
.LBB2_15:                               # %if.end.89
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-128(%rbp), %edi
	movl	-124(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	gfig_draw_line
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.94
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$1, -100(%rbp)
.LBB2_17:                               # %if.end.95
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB2_18:                               # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB2_10
.LBB2_19:                               # %for.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_draw_spiral, .Lfunc_end2-d_draw_spiral
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI3_1:
	.quad	4640537203540230144     # double 180
.LCPI3_2:
	.quad	4585191390103903545     # double 0.034906585039886591
.LCPI3_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI3_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	d_paint_spiral,@function
d_paint_spiral:                         # @d_paint_spiral
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
	subq	$192, %rsp
	xorl	%esi, %esi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movl	$1, -108(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$175, %edx
	movabsq	$.L__func__.d_paint_spiral, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_8
.LBB3_7:                                # %if.then.2
	jmp	.LBB3_25
.LBB3_8:                                # %if.end.3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -42(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -44(%rbp)
	movswl	-42(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-44(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %edi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	abs
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-144(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%eax, -108(%rbp)
	movswl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movswl	-42(%rbp), %eax
	movw	%ax, %si
	cvtsi2sdl	%eax, %xmm1
	movw	%si, -146(%rbp)         # 2-byte Spill
	callq	atan2
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -80(%rbp)
	ucomisd	-80(%rbp), %xmm1
	jbe	.LBB3_10
# BB#9:                                 # %if.then.25
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB3_10:                               # %if.end.27
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm3         # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm5
	mulsd	%xmm3, %xmm5
	mulsd	%xmm2, %xmm5
	addsd	-80(%rbp), %xmm5
	divsd	%xmm5, %xmm4
	movsd	%xmm4, -88(%rbp)
	movsd	%xmm1, -56(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	movl	$8, %edi
	movl	%edi, %esi
	movl	-108(%rbp), %edi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%edi, -164(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	-164(%rbp), %edi        # 4-byte Reload
	imull	%eax, %edi
	movl	-152(%rbp), %eax        # 4-byte Reload
	addl	%edi, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$3, %eax
	movslq	%eax, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movl	$0, -92(%rbp)
.LBB3_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB3_19
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB3_11 Depth=1
	cvtsi2sdl	-92(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-108(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -132(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB3_17
# BB#13:                                # %if.then.75
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-136(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB3_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-132(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.LBB3_16
# BB#15:                                # %if.then.84
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.85
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_17
.LBB3_17:                               # %if.end.86
                                        #   in Loop: Header=BB3_11 Depth=1
	cvtsi2sdl	-136(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cvtsi2sdl	-132(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movq	-136(%rbp), %rdx
	movq	%rdx, -104(%rbp)
.LBB3_18:                               # %for.inc
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB3_11
.LBB3_19:                               # %for.end
	cmpl	$0, selvals+120
	je	.LBB3_21
# BB#20:                                # %if.then.96
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-188(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_original_xy
	jmp	.LBB3_22
.LBB3_21:                               # %if.else.99
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-192(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_xy
.LBB3_22:                               # %if.end.102
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB3_24
# BB#23:                                # %if.then.105
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gfig_paint
.LBB3_24:                               # %if.end.106
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB3_25:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	d_paint_spiral, .Lfunc_end3-d_paint_spiral
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_spiral,@function
d_copy_spiral:                          # @d_copy_spiral
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$8, (%rax)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$257, %edx              # imm = 0x101
	movabsq	$.L__func__.d_copy_spiral, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	$8, %edi
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
.Lfunc_end4:
	.size	d_copy_spiral, .Lfunc_end4-d_copy_spiral
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_spiral,@function
d_update_spiral:                        # @d_update_spiral
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	obj_creating, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_pnt_add_line
.LBB5_5:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_update_spiral, .Lfunc_end5-d_update_spiral
	.cfi_endproc

	.globl	d_spiral_start
	.align	16, 0x90
	.type	d_spiral_start,@function
d_spiral_start:                         # @d_spiral_start
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
	movl	$8, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edx
	movl	%eax, %edi
	callq	d_new_object
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %esi
	movq	%rax, obj_creating
	movl	spiral_num_turns, %edi
	cmpl	$0, spiral_toggle
	cmovel	%esi, %edx
	imull	%edx, %edi
	movq	obj_creating, %rax
	movl	%edi, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_spiral_start, .Lfunc_end6-d_spiral_start
	.cfi_endproc

	.globl	d_spiral_end
	.align	16, 0x90
	.type	d_spiral_end,@function
d_spiral_end:                           # @d_spiral_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
	movq	$0, obj_creating
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	d_spiral_end, .Lfunc_end7-d_spiral_end
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Spiral Number of Turns"
	.size	.L.str, 23

	.type	spiral_num_turns,@object # @spiral_num_turns
	.data
	.align	4
spiral_num_turns:
	.long	4                       # 0x4
	.size	spiral_num_turns, 4

	.type	spiral_toggle,@object   # @spiral_toggle
	.local	spiral_toggle
	.comm	spiral_toggle,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"SPIRAL"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gfig-spiral.c"
	.size	.L.str.2, 14

	.type	.L__func__.d_paint_spiral,@object # @__func__.d_paint_spiral
.L__func__.d_paint_spiral:
	.asciz	"d_paint_spiral"
	.size	.L__func__.d_paint_spiral, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"obj != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.d_copy_spiral,@object # @__func__.d_copy_spiral
.L__func__.d_copy_spiral:
	.asciz	"d_copy_spiral"
	.size	.L__func__.d_copy_spiral, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"obj->type == SPIRAL"
	.size	.L.str.4, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
