	.text
	.file	"gimpdisplayshell-style.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_guide_style
	.align	16, 0x90
	.type	gimp_display_shell_set_guide_style,@function
gimp_display_shell_set_guide_style:     # @gimp_display_shell_set_guide_style
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_guide_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_guide_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	cmpl	$0, -20(%rbp)
	je	.LBB0_19
# BB#18:                                # %if.then.18
	movabsq	$guide_active_fg, %rdi
	movabsq	$guide_active_bg, %rsi
	xorl	%edx, %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -32(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.20
	movabsq	$guide_normal_fg, %rdi
	movabsq	$guide_normal_bg, %rsi
	xorl	%edx, %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -32(%rbp)
.LBB0_20:                               # %if.end.22
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	cairo_set_source
	movq	-32(%rbp), %rdi
	callq	cairo_pattern_destroy
.LBB0_21:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_set_guide_style, .Lfunc_end0-gimp_display_shell_set_guide_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_sample_point_style
	.align	16, 0x90
	.type	gimp_display_shell_set_sample_point_style,@function
gimp_display_shell_set_sample_point_style: # @gimp_display_shell_set_sample_point_style
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_sample_point_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_20
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_sample_point_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_20
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	cmpl	$0, -20(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.18
	movabsq	$sample_point_active, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgb
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.19
	movabsq	$sample_point_normal, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgb
.LBB1_20:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_set_sample_point_style, .Lfunc_end1-gimp_display_shell_set_sample_point_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_grid_style
	.align	16, 0x90
	.type	gimp_display_shell_set_grid_style,@function
gimp_display_shell_set_grid_style:      # @gimp_display_shell_set_grid_style
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_grid_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_35
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_grid_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_35
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_20
# BB#19:                                # %if.then.26
	movl	$0, -68(%rbp)
	jmp	.LBB2_25
.LBB2_20:                               # %if.else.27
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_23
# BB#21:                                # %land.lhs.true.30
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_23
# BB#22:                                # %if.then.34
	movl	$1, -68(%rbp)
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.35
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_24:                               # %if.end.37
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.38
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.41
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_grid_style, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_35
.LBB2_28:                               # %if.end.43
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.44
	movq	-16(%rbp), %rdi
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	cairo_set_line_width
	movq	-24(%rbp), %rdi
	movl	32(%rdi), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jb	.LBB2_34
	jmp	.LBB2_36
.LBB2_36:                               # %do.end.44
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jb	.LBB2_30
	jmp	.LBB2_37
.LBB2_37:                               # %do.end.44
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB2_34
	jmp	.LBB2_35
.LBB2_30:                               # %sw.bb
	movq	-24(%rbp), %rax
	cmpl	$3, 32(%rax)
	jne	.LBB2_32
# BB#31:                                # %if.then.48
	xorl	%edx, %edx
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rcx
	addq	$72, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -80(%rbp)
	jmp	.LBB2_33
.LBB2_32:                               # %if.else.50
	leaq	-112(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	memset
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -80(%rbp)
.LBB2_33:                               # %if.end.54
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	cairo_set_source
	movq	-80(%rbp), %rdi
	callq	cairo_pattern_destroy
	jmp	.LBB2_35
.LBB2_34:                               # %sw.bb.55
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	gimp_cairo_set_source_rgb
.LBB2_35:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_set_grid_style, .Lfunc_end2-gimp_display_shell_set_grid_style
	.cfi_endproc

	.globl	gimp_display_shell_set_pen_style
	.align	16, 0x90
	.type	gimp_display_shell_set_pen_style,@function
gimp_display_shell_set_pen_style:       # @gimp_display_shell_set_pen_style
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_pen_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
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
	movabsq	$.L__func__.gimp_display_shell_set_pen_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_pen_style, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_antialias
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	cairo_set_line_width
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_cap
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_join
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_cairo_set_source_rgb
.LBB3_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_set_pen_style, .Lfunc_end3-gimp_display_shell_set_pen_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_layer_style
	.align	16, 0x90
	.type	gimp_display_shell_set_layer_style,@function
gimp_display_shell_set_layer_style:     # @gimp_display_shell_set_layer_style
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_layer_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
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
	movabsq	$.L__func__.gimp_display_shell_set_layer_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_20
# BB#19:                                # %if.then.26
	movl	$0, -76(%rbp)
	jmp	.LBB4_25
.LBB4_20:                               # %if.else.27
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_23
# BB#21:                                # %land.lhs.true.30
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_23
# BB#22:                                # %if.then.34
	movl	$1, -76(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.35
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_24:                               # %if.end.37
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.38
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.41
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_layer_style, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
.LBB4_28:                               # %if.end.43
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.44
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_cap
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB4_32
# BB#30:                                # %land.lhs.true.47
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	je	.LBB4_32
# BB#31:                                # %if.then.51
	movabsq	$layer_mask_fg, %rdi
	movabsq	$layer_mask_bg, %rsi
	xorl	%edx, %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -32(%rbp)
	jmp	.LBB4_36
.LBB4_32:                               # %if.else.53
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB4_34
# BB#33:                                # %if.then.58
	movabsq	$layer_group_fg, %rdi
	movabsq	$layer_group_bg, %rsi
	xorl	%edx, %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -32(%rbp)
	jmp	.LBB4_35
.LBB4_34:                               # %if.else.60
	movabsq	$layer_fg, %rdi
	movabsq	$layer_bg, %rsi
	xorl	%edx, %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -32(%rbp)
.LBB4_35:                               # %if.end.62
	jmp	.LBB4_36
.LBB4_36:                               # %if.end.63
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	cairo_set_source
	movq	-32(%rbp), %rdi
	callq	cairo_pattern_destroy
.LBB4_37:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_set_layer_style, .Lfunc_end4-gimp_display_shell_set_layer_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_selection_out_style
	.align	16, 0x90
	.type	gimp_display_shell_set_selection_out_style,@function
gimp_display_shell_set_selection_out_style: # @gimp_display_shell_set_selection_out_style
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_selection_out_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_selection_out_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_cap
	movabsq	$selection_out_fg, %rdi
	movabsq	$selection_out_bg, %rsi
	xorl	%edx, %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	cairo_set_source
	movq	-24(%rbp), %rdi
	callq	cairo_pattern_destroy
.LBB5_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_set_selection_out_style, .Lfunc_end5-gimp_display_shell_set_selection_out_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_selection_in_style
	.align	16, 0x90
	.type	gimp_display_shell_set_selection_in_style,@function
gimp_display_shell_set_selection_in_style: # @gimp_display_shell_set_selection_in_style
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_selection_in_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_selection_in_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_cap
	movabsq	$selection_in_fg, %rdi
	movabsq	$selection_in_bg, %rsi
	movl	-20(%rbp), %edx
	callq	gimp_cairo_stipple_pattern_create
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	cairo_set_source
	movq	-32(%rbp), %rdi
	callq	cairo_pattern_destroy
.LBB6_18:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_set_selection_in_style, .Lfunc_end6-gimp_display_shell_set_selection_in_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4613937818241073152     # double 3
	.text
	.globl	gimp_display_shell_set_vectors_bg_style
	.align	16, 0x90
	.type	gimp_display_shell_set_vectors_bg_style,@function
gimp_display_shell_set_vectors_bg_style: # @gimp_display_shell_set_vectors_bg_style
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_vectors_bg_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_20
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_vectors_bg_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_20
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	cmpl	$0, -20(%rbp)
	je	.LBB7_19
# BB#18:                                # %if.then.18
	movabsq	$vectors_active_bg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.19
	movabsq	$vectors_normal_bg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
.LBB7_20:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_set_vectors_bg_style, .Lfunc_end7-gimp_display_shell_set_vectors_bg_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_vectors_fg_style
	.align	16, 0x90
	.type	gimp_display_shell_set_vectors_fg_style,@function
gimp_display_shell_set_vectors_fg_style: # @gimp_display_shell_set_vectors_fg_style
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_vectors_fg_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_vectors_fg_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_20
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	cmpl	$0, -20(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.18
	movabsq	$vectors_active_fg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.19
	movabsq	$vectors_normal_fg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
.LBB8_20:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_set_vectors_fg_style, .Lfunc_end8-gimp_display_shell_set_vectors_fg_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_outline_bg_style
	.align	16, 0x90
	.type	gimp_display_shell_set_outline_bg_style,@function
gimp_display_shell_set_outline_bg_style: # @gimp_display_shell_set_outline_bg_style
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_outline_bg_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_outline_bg_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movabsq	$outline_bg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
.LBB9_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_set_outline_bg_style, .Lfunc_end9-gimp_display_shell_set_outline_bg_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_outline_fg_style
	.align	16, 0x90
	.type	gimp_display_shell_set_outline_fg_style,@function
gimp_display_shell_set_outline_fg_style: # @gimp_display_shell_set_outline_fg_style
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_outline_fg_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_outline_fg_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movabsq	$outline_fg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
	movabsq	$gimp_display_shell_set_outline_fg_style.dashes, %rsi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	callq	cairo_set_dash
.LBB10_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_set_outline_fg_style, .Lfunc_end10-gimp_display_shell_set_outline_fg_style
	.cfi_endproc

	.globl	gimp_display_shell_set_passe_partout_style
	.align	16, 0x90
	.type	gimp_display_shell_set_passe_partout_style,@function
gimp_display_shell_set_passe_partout_style: # @gimp_display_shell_set_passe_partout_style
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_passe_partout_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_18
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_passe_partout_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_18
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	movabsq	$passe_partout, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
.LBB11_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_set_passe_partout_style, .Lfunc_end11-gimp_display_shell_set_passe_partout_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4613937818241073152     # double 3
	.text
	.globl	gimp_display_shell_set_tool_bg_style
	.align	16, 0x90
	.type	gimp_display_shell_set_tool_bg_style,@function
gimp_display_shell_set_tool_bg_style:   # @gimp_display_shell_set_tool_bg_style
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_tool_bg_style, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_tool_bg_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_join
	movabsq	$tool_bg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
.LBB12_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_set_tool_bg_style, .Lfunc_end12-gimp_display_shell_set_tool_bg_style
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_set_tool_fg_style
	.align	16, 0x90
	.type	gimp_display_shell_set_tool_fg_style,@function
gimp_display_shell_set_tool_fg_style:   # @gimp_display_shell_set_tool_fg_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_tool_fg_style, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_8
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_join
	cmpl	$0, -20(%rbp)
	je	.LBB13_7
# BB#6:                                 # %if.then.1
	movabsq	$tool_fg_highlight, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
	jmp	.LBB13_8
.LBB13_7:                               # %if.else.2
	movabsq	$tool_fg, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_cairo_set_source_rgba
.LBB13_8:                               # %if.end.3
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_set_tool_fg_style, .Lfunc_end13-gimp_display_shell_set_tool_fg_style
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_set_guide_style,@object # @__func__.gimp_display_shell_set_guide_style
.L__func__.gimp_display_shell_set_guide_style:
	.asciz	"gimp_display_shell_set_guide_style"
	.size	.L__func__.gimp_display_shell_set_guide_style, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cr != NULL"
	.size	.L.str.2, 11

	.type	guide_active_fg,@object # @guide_active_fg
	.section	.rodata,"a",@progbits
	.align	8
guide_active_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	guide_active_fg, 32

	.type	guide_active_bg,@object # @guide_active_bg
	.align	8
guide_active_bg:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	guide_active_bg, 32

	.type	guide_normal_fg,@object # @guide_normal_fg
	.align	8
guide_normal_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	guide_normal_fg, 32

	.type	guide_normal_bg,@object # @guide_normal_bg
	.align	8
guide_normal_bg:
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	guide_normal_bg, 32

	.type	.L__func__.gimp_display_shell_set_sample_point_style,@object # @__func__.gimp_display_shell_set_sample_point_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_sample_point_style:
	.asciz	"gimp_display_shell_set_sample_point_style"
	.size	.L__func__.gimp_display_shell_set_sample_point_style, 42

	.type	sample_point_active,@object # @sample_point_active
	.section	.rodata,"a",@progbits
	.align	8
sample_point_active:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	sample_point_active, 32

	.type	sample_point_normal,@object # @sample_point_normal
	.align	8
sample_point_normal:
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	sample_point_normal, 32

	.type	.L__func__.gimp_display_shell_set_grid_style,@object # @__func__.gimp_display_shell_set_grid_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_grid_style:
	.asciz	"gimp_display_shell_set_grid_style"
	.size	.L__func__.gimp_display_shell_set_grid_style, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_GRID (grid)"
	.size	.L.str.3, 20

	.type	.L__func__.gimp_display_shell_set_pen_style,@object # @__func__.gimp_display_shell_set_pen_style
.L__func__.gimp_display_shell_set_pen_style:
	.asciz	"gimp_display_shell_set_pen_style"
	.size	.L__func__.gimp_display_shell_set_pen_style, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color != NULL"
	.size	.L.str.4, 14

	.type	.L__func__.gimp_display_shell_set_layer_style,@object # @__func__.gimp_display_shell_set_layer_style
.L__func__.gimp_display_shell_set_layer_style:
	.asciz	"gimp_display_shell_set_layer_style"
	.size	.L__func__.gimp_display_shell_set_layer_style, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.5, 22

	.type	layer_mask_fg,@object   # @layer_mask_fg
	.section	.rodata,"a",@progbits
	.align	8
layer_mask_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	layer_mask_fg, 32

	.type	layer_mask_bg,@object   # @layer_mask_bg
	.align	8
layer_mask_bg:
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	layer_mask_bg, 32

	.type	layer_group_fg,@object  # @layer_group_fg
	.align	8
layer_group_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	layer_group_fg, 32

	.type	layer_group_bg,@object  # @layer_group_bg
	.align	8
layer_group_bg:
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	layer_group_bg, 32

	.type	layer_fg,@object        # @layer_fg
	.align	8
layer_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	layer_fg, 32

	.type	layer_bg,@object        # @layer_bg
	.align	8
layer_bg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	layer_bg, 32

	.type	.L__func__.gimp_display_shell_set_selection_out_style,@object # @__func__.gimp_display_shell_set_selection_out_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_selection_out_style:
	.asciz	"gimp_display_shell_set_selection_out_style"
	.size	.L__func__.gimp_display_shell_set_selection_out_style, 43

	.type	selection_out_fg,@object # @selection_out_fg
	.section	.rodata,"a",@progbits
	.align	8
selection_out_fg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	selection_out_fg, 32

	.type	selection_out_bg,@object # @selection_out_bg
	.align	8
selection_out_bg:
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.quad	4607182418800017408     # double 1
	.size	selection_out_bg, 32

	.type	.L__func__.gimp_display_shell_set_selection_in_style,@object # @__func__.gimp_display_shell_set_selection_in_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_selection_in_style:
	.asciz	"gimp_display_shell_set_selection_in_style"
	.size	.L__func__.gimp_display_shell_set_selection_in_style, 42

	.type	selection_in_fg,@object # @selection_in_fg
	.section	.rodata,"a",@progbits
	.align	8
selection_in_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	selection_in_fg, 32

	.type	selection_in_bg,@object # @selection_in_bg
	.align	8
selection_in_bg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	selection_in_bg, 32

	.type	.L__func__.gimp_display_shell_set_vectors_bg_style,@object # @__func__.gimp_display_shell_set_vectors_bg_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_vectors_bg_style:
	.asciz	"gimp_display_shell_set_vectors_bg_style"
	.size	.L__func__.gimp_display_shell_set_vectors_bg_style, 40

	.type	vectors_active_bg,@object # @vectors_active_bg
	.section	.rodata,"a",@progbits
	.align	8
vectors_active_bg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4603579539098121011     # double 0.59999999999999998
	.size	vectors_active_bg, 32

	.type	vectors_normal_bg,@object # @vectors_normal_bg
	.align	8
vectors_normal_bg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4603579539098121011     # double 0.59999999999999998
	.size	vectors_normal_bg, 32

	.type	.L__func__.gimp_display_shell_set_vectors_fg_style,@object # @__func__.gimp_display_shell_set_vectors_fg_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_vectors_fg_style:
	.asciz	"gimp_display_shell_set_vectors_fg_style"
	.size	.L__func__.gimp_display_shell_set_vectors_fg_style, 40

	.type	vectors_active_fg,@object # @vectors_active_fg
	.section	.rodata,"a",@progbits
	.align	8
vectors_active_fg:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4605380978949069210     # double 0.80000000000000004
	.size	vectors_active_fg, 32

	.type	vectors_normal_fg,@object # @vectors_normal_fg
	.align	8
vectors_normal_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4605380978949069210     # double 0.80000000000000004
	.size	vectors_normal_fg, 32

	.type	.L__func__.gimp_display_shell_set_outline_bg_style,@object # @__func__.gimp_display_shell_set_outline_bg_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_outline_bg_style:
	.asciz	"gimp_display_shell_set_outline_bg_style"
	.size	.L__func__.gimp_display_shell_set_outline_bg_style, 40

	.type	outline_bg,@object      # @outline_bg
	.section	.rodata,"a",@progbits
	.align	8
outline_bg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4603579539098121011     # double 0.59999999999999998
	.size	outline_bg, 32

	.type	gimp_display_shell_set_outline_fg_style.dashes,@object # @gimp_display_shell_set_outline_fg_style.dashes
	.align	16
gimp_display_shell_set_outline_fg_style.dashes:
	.quad	4616189618054758400     # double 4.000000e+00
	.quad	4616189618054758400     # double 4.000000e+00
	.size	gimp_display_shell_set_outline_fg_style.dashes, 16

	.type	.L__func__.gimp_display_shell_set_outline_fg_style,@object # @__func__.gimp_display_shell_set_outline_fg_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_outline_fg_style:
	.asciz	"gimp_display_shell_set_outline_fg_style"
	.size	.L__func__.gimp_display_shell_set_outline_fg_style, 40

	.type	outline_fg,@object      # @outline_fg
	.section	.rodata,"a",@progbits
	.align	8
outline_fg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4605380978949069210     # double 0.80000000000000004
	.size	outline_fg, 32

	.type	.L__func__.gimp_display_shell_set_passe_partout_style,@object # @__func__.gimp_display_shell_set_passe_partout_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_passe_partout_style:
	.asciz	"gimp_display_shell_set_passe_partout_style"
	.size	.L__func__.gimp_display_shell_set_passe_partout_style, 43

	.type	passe_partout,@object   # @passe_partout
	.section	.rodata,"a",@progbits
	.align	8
passe_partout:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.size	passe_partout, 32

	.type	.L__func__.gimp_display_shell_set_tool_bg_style,@object # @__func__.gimp_display_shell_set_tool_bg_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_tool_bg_style:
	.asciz	"gimp_display_shell_set_tool_bg_style"
	.size	.L__func__.gimp_display_shell_set_tool_bg_style, 37

	.type	tool_bg,@object         # @tool_bg
	.section	.rodata,"a",@progbits
	.align	8
tool_bg:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4600877379321698714     # double 0.40000000000000002
	.size	tool_bg, 32

	.type	.L__func__.gimp_display_shell_set_tool_fg_style,@object # @__func__.gimp_display_shell_set_tool_fg_style
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_display_shell_set_tool_fg_style:
	.asciz	"gimp_display_shell_set_tool_fg_style"
	.size	.L__func__.gimp_display_shell_set_tool_fg_style, 37

	.type	tool_fg_highlight,@object # @tool_fg_highlight
	.section	.rodata,"a",@progbits
	.align	8
tool_fg_highlight:
	.quad	4607182418800017408     # double 1
	.quad	4605380978949069210     # double 0.80000000000000004
	.quad	4596373779694328218     # double 0.20000000000000001
	.quad	4605380978949069210     # double 0.80000000000000004
	.size	tool_fg_highlight, 32

	.type	tool_fg,@object         # @tool_fg
	.align	8
tool_fg:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4605380978949069210     # double 0.80000000000000004
	.size	tool_fg, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
