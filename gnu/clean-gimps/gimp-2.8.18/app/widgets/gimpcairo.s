	.text
	.file	"gimpcairo.bc"
	.globl	gimp_cairo_stipple_pattern_create
	.align	16, 0x90
	.type	gimp_cairo_stipple_pattern_create,@function
gimp_cairo_stipple_pattern_create:      # @gimp_cairo_stipple_pattern_create
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_stipple_pattern_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_26
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_stipple_pattern_create, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_26
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edi
	callq	g_malloc
	leaq	-65(%rbp), %rsi
	leaq	-66(%rbp), %rdx
	leaq	-67(%rbp), %rcx
	leaq	-68(%rbp), %r8
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_rgba_get_uchar
	leaq	-69(%rbp), %rsi
	leaq	-70(%rbp), %rdx
	leaq	-71(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	-24(%rbp), %rdi
	callq	gimp_rgba_get_uchar
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -80(%rbp)
.LBB0_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	cmpl	$8, -80(%rbp)
	jge	.LBB0_25
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$0, -76(%rbp)
.LBB0_13:                               # %for.cond.8
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -76(%rbp)
	jge	.LBB0_23
# BB#14:                                # %for.body.10
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	$8, %eax
	movl	-76(%rbp), %ecx
	addl	-80(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$4, %edx
	jl	.LBB0_18
# BB#15:                                # %if.then.13
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.14
                                        #   in Loop: Header=BB0_13 Depth=2
	movzbl	-68(%rbp), %eax
	movzbl	-65(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -84(%rbp)
	movzbl	-68(%rbp), %eax
	movzbl	-66(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -88(%rbp)
	movzbl	-68(%rbp), %eax
	movzbl	-67(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$8, %eax
	addl	-92(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-88(%rbp), %eax
	shrl	$8, %eax
	addl	-88(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-84(%rbp), %eax
	shrl	$8, %eax
	addl	-84(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-68(%rbp), %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#17:                                # %do.end.39
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_21
.LBB0_18:                               # %if.else.40
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_19
.LBB0_19:                               # %do.body.41
                                        #   in Loop: Header=BB0_13 Depth=2
	movzbl	-72(%rbp), %eax
	movzbl	-69(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -96(%rbp)
	movzbl	-72(%rbp), %eax
	movzbl	-70(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -100(%rbp)
	movzbl	-72(%rbp), %eax
	movzbl	-71(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	$8, %eax
	addl	-104(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-100(%rbp), %eax
	shrl	$8, %eax
	addl	-100(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-96(%rbp), %eax
	shrl	$8, %eax
	addl	-96(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-72(%rbp), %dl
	movq	-64(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#20:                                # %do.end.73
                                        #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.74
                                        #   in Loop: Header=BB0_13 Depth=2
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_13
.LBB0_23:                               # %for.end
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %for.inc.75
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_11
.LBB0_25:                               # %for.end.77
	xorl	%esi, %esi
	movl	$8, %eax
	movl	$32, %r8d
	movq	-56(%rbp), %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	cairo_image_surface_create_for_data
	movabsq	$surface_data_key, %rsi
	movabsq	$g_free, %rcx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	cairo_surface_set_user_data
	movq	-40(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	cairo_pattern_create_for_surface
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	cairo_pattern_set_extend
	movq	-40(%rbp), %rdi
	callq	cairo_surface_destroy
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cairo_stipple_pattern_create, .Lfunc_end0-gimp_cairo_stipple_pattern_create
	.cfi_endproc

	.globl	gimp_cairo_add_arc
	.align	16, 0x90
	.type	gimp_cairo_add_arc,@function
gimp_cairo_add_arc:                     # @gimp_cairo_add_arc
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_add_arc, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_8
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_7
# BB#6:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movd	%xmm4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm4
	subsd	-48(%rbp), %xmm4
	callq	cairo_arc_negative
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.5
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movd	%xmm4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm4
	subsd	-48(%rbp), %xmm4
	callq	cairo_arc
.LBB1_8:                                # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cairo_add_arc, .Lfunc_end1-gimp_cairo_add_arc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_cairo_add_segments
	.align	16, 0x90
	.type	gimp_cairo_add_segments,@function
gimp_cairo_add_segments:                # @gimp_cairo_add_segments
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_add_segments, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_18
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	jle	.LBB2_9
# BB#8:                                 # %if.then.4
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_add_segments, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_18
.LBB2_10:                               # %if.end.6
	jmp	.LBB2_11
.LBB2_11:                               # %do.end.7
	movl	$0, -24(%rbp)
.LBB2_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_18
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB2_15
# BB#14:                                # %if.then.12
                                        #   in Loop: Header=BB2_12 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm2
	subsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.28
                                        #   in Loop: Header=BB2_12 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	subsd	%xmm0, %xmm1
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
.LBB2_16:                               # %if.end.49
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_17
.LBB2_17:                               # %for.inc
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_12
.LBB2_18:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cairo_add_segments, .Lfunc_end2-gimp_cairo_add_segments
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI3_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_2:
	.quad	4679239875398991872     # double 65535
.LCPI3_3:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_cairo_draw_toolbox_wilber
	.align	16, 0x90
	.type	gimp_cairo_draw_toolbox_wilber,@function
gimp_cairo_draw_toolbox_wilber:         # @gimp_cairo_draw_toolbox_wilber
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_draw_toolbox_wilber, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_20
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_draw_toolbox_wilber, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_20
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	leaq	-48(%rbp), %rsi
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_wilber_get_size
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	-56(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB3_19
# BB#18:                                # %if.then.21
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	cairo_translate
.LBB3_19:                               # %if.end.24
	movq	-16(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_scale
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	-72(%rbp), %xmm1
	subsd	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	-72(%rbp), %xmm2
	subsd	-64(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_cairo_wilber
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movzwl	4(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movzwl	6(%rdx), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdx
	movzwl	8(%rdx), %eax
	cvtsi2sdl	%eax, %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm4, %xmm2
	callq	cairo_set_source_rgba
	movq	-16(%rbp), %rdi
	callq	cairo_fill
.LBB3_20:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cairo_draw_toolbox_wilber, .Lfunc_end3-gimp_cairo_draw_toolbox_wilber
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4594572339843380019     # double 0.14999999999999999
.LCPI4_2:
	.quad	4679239875398991872     # double 65535
.LCPI4_3:
	.quad	4607632778762754458     # double 1.1000000000000001
.LCPI4_4:
	.quad	4603579539098121011     # double 0.59999999999999998
	.text
	.globl	gimp_cairo_draw_drop_wilber
	.align	16, 0x90
	.type	gimp_cairo_draw_drop_wilber,@function
gimp_cairo_draw_drop_wilber:            # @gimp_cairo_draw_drop_wilber
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_draw_drop_wilber, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_44
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_cairo_draw_drop_wilber, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_44
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	leaq	-48(%rbp), %rsi
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_wilber_get_size
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_19
# BB#18:                                # %cond.true
	movl	-40(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB4_20:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	-40(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jle	.LBB4_22
# BB#21:                                # %cond.true.28
	movl	-40(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.30
	movl	-36(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB4_23:                               # %cond.end.32
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_28
# BB#24:                                # %cond.true.36
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_26
# BB#25:                                # %cond.true.40
	movl	-40(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false.42
	movl	-36(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB4_27:                               # %cond.end.44
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB4_32
.LBB4_28:                               # %cond.false.46
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB4_30
# BB#29:                                # %cond.true.50
	movl	-40(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB4_31
.LBB4_30:                               # %cond.false.52
	movl	-36(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB4_31:                               # %cond.end.54
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB4_32:                               # %cond.end.57
	movl	-140(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB4_34
# BB#33:                                # %cond.true.61
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB4_35
.LBB4_34:                               # %cond.false.62
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB4_35:                               # %cond.end.63
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB4_37
# BB#36:                                # %cond.true.67
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB4_38
.LBB4_37:                               # %cond.false.68
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB4_38:                               # %cond.end.69
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_40
# BB#39:                                # %cond.true.75
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.77
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB4_41:                               # %cond.end.79
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB4_43
# BB#42:                                # %if.then.83
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	cairo_translate
.LBB4_43:                               # %if.end.86
	movq	-16(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_scale
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movd	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	callq	gimp_cairo_wilber
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movzwl	4(%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movzwl	6(%rcx), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	imulq	$12, %rax, %rax
	addq	%rax, %rcx
	movzwl	8(%rcx), %edx
	cvtsi2sdl	%edx, %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm4, %xmm2
	callq	cairo_set_source_rgba
	movq	-16(%rbp), %rdi
	callq	cairo_fill
.LBB4_44:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cairo_draw_drop_wilber, .Lfunc_end4-gimp_cairo_draw_drop_wilber
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_cairo_stipple_pattern_create,@object # @__func__.gimp_cairo_stipple_pattern_create
.L__func__.gimp_cairo_stipple_pattern_create:
	.asciz	"gimp_cairo_stipple_pattern_create"
	.size	.L__func__.gimp_cairo_stipple_pattern_create, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"fg != NULL"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"bg != NULL"
	.size	.L.str.2, 11

	.type	surface_data_key,@object # @surface_data_key
	.local	surface_data_key
	.comm	surface_data_key,4,4
	.type	.L__func__.gimp_cairo_add_arc,@object # @__func__.gimp_cairo_add_arc
.L__func__.gimp_cairo_add_arc:
	.asciz	"gimp_cairo_add_arc"
	.size	.L__func__.gimp_cairo_add_arc, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cr != NULL"
	.size	.L.str.3, 11

	.type	.L__func__.gimp_cairo_add_segments,@object # @__func__.gimp_cairo_add_segments
.L__func__.gimp_cairo_add_segments:
	.asciz	"gimp_cairo_add_segments"
	.size	.L__func__.gimp_cairo_add_segments, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"segs != NULL && n_segs > 0"
	.size	.L.str.4, 27

	.type	.L__func__.gimp_cairo_draw_toolbox_wilber,@object # @__func__.gimp_cairo_draw_toolbox_wilber
.L__func__.gimp_cairo_draw_toolbox_wilber:
	.asciz	"gimp_cairo_draw_toolbox_wilber"
	.size	.L__func__.gimp_cairo_draw_toolbox_wilber, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.5, 23

	.type	.L__func__.gimp_cairo_draw_drop_wilber,@object # @__func__.gimp_cairo_draw_drop_wilber
.L__func__.gimp_cairo_draw_drop_wilber:
	.asciz	"gimp_cairo_draw_drop_wilber"
	.size	.L__func__.gimp_cairo_draw_drop_wilber, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
