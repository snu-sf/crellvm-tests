	.text
	.file	"gimpoverlaychild.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_overlay_child_new
	.align	16, 0x90
	.type	gimp_overlay_child_new,@function
gimp_overlay_child_new:                 # @gimp_overlay_child_new
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_45
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movl	$120, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_26
# BB#25:                                # %cond.true
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB0_30
.LBB0_26:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB0_28
# BB#27:                                # %cond.true.43
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false.44
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB0_29:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB0_30:                               # %cond.end.45
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_32
# BB#31:                                # %cond.true.49
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB0_36
.LBB0_32:                               # %cond.false.50
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB0_34
# BB#33:                                # %cond.true.52
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB0_35
.LBB0_34:                               # %cond.false.53
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB0_35:                               # %cond.end.54
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB0_36:                               # %cond.end.56
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	-64(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-64(%rbp), %rax
	movsd	%xmm2, 40(%rax)
	movq	-64(%rbp), %rax
	movsd	%xmm2, 48(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 16(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_38
# BB#37:                                # %cond.true.61
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB0_42
.LBB0_38:                               # %cond.false.62
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB0_40
# BB#39:                                # %cond.true.64
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false.65
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB0_41:                               # %cond.end.66
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB0_42:                               # %cond.end.68
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-64(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	cairo_matrix_init_identity
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB0_44
# BB#43:                                # %if.then.75
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_overlay_child_realize
.LBB0_44:                               # %if.end.76
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_set_parent
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_45:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_overlay_child_new, .Lfunc_end0-gimp_overlay_child_new
	.cfi_endproc

	.globl	gimp_overlay_child_realize
	.align	16, 0x90
	.type	gimp_overlay_child_realize,@function
gimp_overlay_child_realize:             # @gimp_overlay_child_realize
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -180(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -180(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_realize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
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
	movabsq	$.L__func__.gimp_overlay_child_realize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_screen_get_rgba_colormap
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.23
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_widget_set_colormap
.LBB1_19:                               # %if.end.25
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB1_21
# BB#20:                                # %if.then.30
	movl	-56(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.33
	movl	$1, -132(%rbp)
	movl	$1, -128(%rbp)
.LBB1_22:                               # %if.end.36
	movl	-64(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	$6, -104(%rbp)
	movl	$0, -124(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gtk_widget_get_visual
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_colormap
	movl	$68, %esi
	movq	%rax, -112(%rbp)
	movl	$2, -144(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -96(%rbp)
	movl	$124, -156(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_root_window
	leaq	-152(%rbp), %rsi
	movl	-156(%rbp), %edx
	movq	%rax, %rdi
	callq	gdk_window_new
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gdk_window_set_user_data
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gtk_widget_set_parent_window
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gdk_offscreen_window_set_embedder
	movq	-96(%rbp), %rdi
	callq	gdk_cursor_unref
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_overlay_child_from_embedder, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_overlay_child_to_embedder, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_style
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_style_set_background
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_window_show
.LBB1_23:                               # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_overlay_child_realize, .Lfunc_end1-gimp_overlay_child_realize
	.cfi_endproc

	.globl	gimp_overlay_child_free
	.align	16, 0x90
	.type	gimp_overlay_child_free,@function
gimp_overlay_child_free:                # @gimp_overlay_child_free
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_21
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
	movabsq	$.L__func__.gimp_overlay_child_free, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_21
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_unparent
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB2_19
# BB#18:                                # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_overlay_child_unrealize
.LBB2_19:                               # %if.end.22
	jmp	.LBB2_20
.LBB2_20:                               # %do.body.23
	movl	$120, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB2_21:                               # %do.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_overlay_child_free, .Lfunc_end2-gimp_overlay_child_free
	.cfi_endproc

	.globl	gimp_overlay_child_unrealize
	.align	16, 0x90
	.type	gimp_overlay_child_unrealize,@function
gimp_overlay_child_unrealize:           # @gimp_overlay_child_unrealize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_unrealize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
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
	movabsq	$.L__func__.gimp_overlay_child_unrealize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gdk_window_set_user_data
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gdk_window_destroy
	movq	-16(%rbp), %rcx
	movq	$0, 8(%rcx)
.LBB3_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_overlay_child_unrealize, .Lfunc_end3-gimp_overlay_child_unrealize
	.cfi_endproc

	.globl	gimp_overlay_child_find
	.align	16, 0x90
	.type	gimp_overlay_child_find,@function
gimp_overlay_child_find:                # @gimp_overlay_child_find
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_overlay_box_get_type
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
	movabsq	$.L__func__.gimp_overlay_child_find, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_find, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_27
# BB#26:                                # %if.then.44
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_find, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_28:                               # %if.end.46
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.47
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_38
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_33
# BB#32:                                # %if.then.52
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_39
.LBB4_33:                               # %if.end.53
                                        #   in Loop: Header=BB4_30 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %for.inc
                                        #   in Loop: Header=BB4_30 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_36
# BB#35:                                # %cond.true
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %cond.false
                                        #   in Loop: Header=BB4_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_37:                               # %cond.end
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_30
.LBB4_38:                               # %for.end
	movq	$0, -8(%rbp)
.LBB4_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_overlay_child_find, .Lfunc_end4-gimp_overlay_child_find
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_child_from_embedder,@function
gimp_overlay_child_from_embedder:       # @gimp_overlay_child_from_embedder
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
	subq	$112, %rsp
	leaq	-96(%rbp), %rax
	movl	$48, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	addq	$72, %rcx
	movq	%rax, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%r9, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	cairo_matrix_invert
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	cairo_matrix_transform_point
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_overlay_child_from_embedder, .Lfunc_end5-gimp_overlay_child_from_embedder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_child_to_embedder,@function
gimp_overlay_child_to_embedder:         # @gimp_overlay_child_to_embedder
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-48(%rbp), %rcx
	addq	$72, %rcx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	callq	cairo_matrix_transform_point
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_overlay_child_to_embedder, .Lfunc_end6-gimp_overlay_child_to_embedder
	.cfi_endproc

	.globl	gimp_overlay_child_size_request
	.align	16, 0x90
	.type	gimp_overlay_child_size_request,@function
gimp_overlay_child_size_request:        # @gimp_overlay_child_size_request
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_overlay_box_get_type
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
	movabsq	$.L__func__.gimp_overlay_child_size_request, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_18
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
	movabsq	$.L__func__.gimp_overlay_child_size_request, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_18
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_size_request
.LBB7_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_overlay_child_size_request, .Lfunc_end7-gimp_overlay_child_size_request
	.cfi_endproc

	.globl	gimp_overlay_child_size_allocate
	.align	16, 0x90
	.type	gimp_overlay_child_size_allocate,@function
gimp_overlay_child_size_allocate:       # @gimp_overlay_child_size_allocate
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_size_allocate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_27
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
	movabsq	$.L__func__.gimp_overlay_child_size_allocate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_27
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_allocation
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_child_requisition
	leaq	-64(%rbp), %rsi
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	-48(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_size_allocate
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB8_19
# BB#18:                                # %if.then.30
	leaq	-112(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gdk_window_get_position
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_window_get_width
	movl	%eax, -104(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gdk_window_get_height
	leaq	-112(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_overlay_child_transform_bounds
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-128(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_window_invalidate_rect
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %r8d
	callq	gdk_window_move_resize
.LBB8_19:                               # %if.end.47
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	cairo_matrix_init_identity
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	-16(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	cairo_matrix_rotate
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB8_21
# BB#20:                                # %if.then.50
	movq	-16(%rbp), %rax
	cvttsd2si	40(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB8_26
.LBB8_21:                               # %if.else.54
	leaq	-64(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_overlay_child_transform_bounds
	movq	-8(%rbp), %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -148(%rbp)
	movl	-32(%rbp), %eax
	movl	-148(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -152(%rbp)
	movl	-28(%rbp), %eax
	movl	-148(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-152(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jle	.LBB8_23
# BB#22:                                # %if.then.69
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-152(%rbp), %ecx
	subl	-136(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -68(%rbp)
.LBB8_23:                               # %if.end.79
	movl	-156(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jle	.LBB8_25
# BB#24:                                # %if.then.83
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-156(%rbp), %ecx
	subl	-132(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-140(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -72(%rbp)
.LBB8_25:                               # %if.end.94
	jmp	.LBB8_26
.LBB8_26:                               # %if.end.95
	movq	-16(%rbp), %rax
	addq	$72, %rax
	cvtsi2sdl	-68(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	movq	%rax, %rdi
	callq	cairo_matrix_init_translate
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	-16(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	cairo_matrix_rotate
.LBB8_27:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_overlay_child_size_allocate, .Lfunc_end8-gimp_overlay_child_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_child_transform_bounds,@function
gimp_overlay_child_transform_bounds:    # @gimp_overlay_child_transform_bounds
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
	subq	$288, %rsp              # imm = 0x120
	leaq	-32(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	4(%rdx), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %r8d
	movq	-16(%rbp), %rdx
	addl	8(%rdx), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	4(%rdx), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-16(%rbp), %rdx
	addl	12(%rdx), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %r8d
	movq	-16(%rbp), %rdx
	addl	8(%rdx), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-16(%rbp), %rdx
	addl	12(%rdx), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	cairo_matrix_transform_point
	leaq	-40(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	cairo_matrix_transform_point
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	cairo_matrix_transform_point
	leaq	-56(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	cairo_matrix_transform_point
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_2
# BB#1:                                 # %cond.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB9_3:                                # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jbe	.LBB9_5
# BB#4:                                 # %cond.true.28
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.29
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB9_6:                                # %cond.end.30
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_11
# BB#7:                                 # %cond.true.34
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_9
# BB#8:                                 # %cond.true.37
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false.38
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB9_10:                               # %cond.end.39
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB9_15
.LBB9_11:                               # %cond.false.41
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_13
# BB#12:                                # %cond.true.44
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.45
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB9_14:                               # %cond.end.46
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB9_15:                               # %cond.end.48
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_17
# BB#16:                                # %cond.true.54
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.55
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB9_18:                               # %cond.end.56
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jbe	.LBB9_20
# BB#19:                                # %cond.true.60
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false.61
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB9_21:                               # %cond.end.62
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_26
# BB#22:                                # %cond.true.66
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_24
# BB#23:                                # %cond.true.69
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB9_25
.LBB9_24:                               # %cond.false.70
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB9_25:                               # %cond.end.71
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB9_30
.LBB9_26:                               # %cond.false.73
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_28
# BB#27:                                # %cond.true.76
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB9_29
.LBB9_28:                               # %cond.false.77
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB9_29:                               # %cond.end.78
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB9_30:                               # %cond.end.80
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_32
# BB#31:                                # %cond.true.87
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB9_33
.LBB9_32:                               # %cond.false.88
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB9_33:                               # %cond.end.89
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-56(%rbp), %xmm1
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jbe	.LBB9_35
# BB#34:                                # %cond.true.93
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB9_36
.LBB9_35:                               # %cond.false.94
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB9_36:                               # %cond.end.95
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_41
# BB#37:                                # %cond.true.99
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_39
# BB#38:                                # %cond.true.102
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB9_40
.LBB9_39:                               # %cond.false.103
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB9_40:                               # %cond.end.104
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB9_45
.LBB9_41:                               # %cond.false.106
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB9_43
# BB#42:                                # %cond.true.109
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB9_44
.LBB9_43:                               # %cond.false.110
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB9_44:                               # %cond.end.111
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB9_45:                               # %cond.end.113
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	subl	(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB9_47
# BB#46:                                # %cond.true.121
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB9_48
.LBB9_47:                               # %cond.false.122
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB9_48:                               # %cond.end.123
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-88(%rbp), %xmm1
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jbe	.LBB9_50
# BB#49:                                # %cond.true.127
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB9_51
.LBB9_50:                               # %cond.false.128
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB9_51:                               # %cond.end.129
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_56
# BB#52:                                # %cond.true.133
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB9_54
# BB#53:                                # %cond.true.136
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB9_55
.LBB9_54:                               # %cond.false.137
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB9_55:                               # %cond.end.138
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB9_60
.LBB9_56:                               # %cond.false.140
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB9_58
# BB#57:                                # %cond.true.143
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB9_59
.LBB9_58:                               # %cond.false.144
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB9_59:                               # %cond.end.145
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB9_60:                               # %cond.end.147
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	subl	4(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 12(%rcx)
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_overlay_child_transform_bounds, .Lfunc_end9-gimp_overlay_child_transform_bounds
	.cfi_endproc

	.globl	gimp_overlay_child_expose
	.align	16, 0x90
	.type	gimp_overlay_child_expose,@function
gimp_overlay_child_expose:              # @gimp_overlay_child_expose
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_expose, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_33
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_expose, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_33
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB10_20
# BB#19:                                # %if.then.19
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_expose, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_33
.LBB10_21:                              # %if.end.21
	jmp	.LBB10_22
.LBB10_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_27
# BB#23:                                # %if.then.27
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	leaq	-80(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_overlay_child_transform_bounds
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB10_26
# BB#24:                                # %land.lhs.true.34
	leaq	-96(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$20, %rcx
	movq	%rcx, %rdi
	callq	gdk_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB10_26
# BB#25:                                # %if.then.37
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_offscreen_window_get_pixmap
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-112(%rbp), %rdi
	callq	cairo_clip
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	cairo_transform
	xorps	%xmm0, %xmm0
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gdk_cairo_set_source_pixmap
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	cairo_paint_with_alpha
	movq	-112(%rbp), %rdi
	callq	cairo_destroy
.LBB10_26:                              # %if.end.44
	jmp	.LBB10_32
.LBB10_27:                              # %if.else.45
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB10_31
# BB#28:                                # %if.then.49
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_app_paintable
	cmpl	$0, %eax
	jne	.LBB10_30
# BB#29:                                # %if.then.53
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_style
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %r8
	addq	$20, %r8
	movq	-40(%rbp), %r9
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$-1, 24(%rsp)
	movl	$-1, 32(%rsp)
	callq	gtk_paint_flat_box
.LBB10_30:                              # %if.end.58
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_container_propagate_expose
	movl	$1, -4(%rbp)
	jmp	.LBB10_33
.LBB10_31:                              # %if.end.62
	jmp	.LBB10_32
.LBB10_32:                              # %if.end.63
	movl	$0, -4(%rbp)
.LBB10_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_overlay_child_expose, .Lfunc_end10-gimp_overlay_child_expose
	.cfi_endproc

	.globl	gimp_overlay_child_damage
	.align	16, 0x90
	.type	gimp_overlay_child_damage,@function
gimp_overlay_child_damage:              # @gimp_overlay_child_damage
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_damage, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_29
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_damage, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_29
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB11_20
# BB#19:                                # %if.then.19
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_damage, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_29
.LBB11_21:                              # %if.end.21
	jmp	.LBB11_22
.LBB11_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rsi
	cmpq	8(%rsi), %rax
	jne	.LBB11_28
# BB#23:                                # %if.then.27
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_region_get_rectangles
	movl	$0, -80(%rbp)
.LBB11_24:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB11_27
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB11_24 Depth=1
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movslq	-80(%rbp), %rax
	shlq	$4, %rax
	addq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_overlay_child_transform_bounds
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_window_invalidate_rect
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB11_24
.LBB11_27:                              # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$1, -4(%rbp)
	jmp	.LBB11_29
.LBB11_28:                              # %if.end.34
	movl	$0, -4(%rbp)
.LBB11_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_overlay_child_damage, .Lfunc_end11-gimp_overlay_child_damage
	.cfi_endproc

	.globl	gimp_overlay_child_invalidate
	.align	16, 0x90
	.type	gimp_overlay_child_invalidate,@function
gimp_overlay_child_invalidate:          # @gimp_overlay_child_invalidate
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_invalidate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_20
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
	movabsq	$.L__func__.gimp_overlay_child_invalidate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_20
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_20
# BB#18:                                # %land.lhs.true.21
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB12_20
# BB#19:                                # %if.then.24
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	leaq	-64(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_overlay_child_transform_bounds
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	gdk_window_invalidate_rect
.LBB12_20:                              # %if.end.28
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_overlay_child_invalidate, .Lfunc_end12-gimp_overlay_child_invalidate
	.cfi_endproc

	.globl	gimp_overlay_child_pick
	.align	16, 0x90
	.type	gimp_overlay_child_pick,@function
gimp_overlay_child_pick:                # @gimp_overlay_child_pick
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_pick, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_23
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_overlay_child_pick, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_23
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	callq	gimp_overlay_child_from_embedder
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	xorps	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB13_22
# BB#18:                                # %land.lhs.true.18
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_22
# BB#19:                                # %land.lhs.true.21
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB13_22
# BB#20:                                # %land.lhs.true.24
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_22
# BB#21:                                # %if.then.28
	movl	$1, -4(%rbp)
	jmp	.LBB13_23
.LBB13_22:                              # %if.end.29
	movl	$0, -4(%rbp)
.LBB13_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_overlay_child_pick, .Lfunc_end13-gimp_overlay_child_pick
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_overlay_child_new,@object # @__func__.gimp_overlay_child_new
.L__func__.gimp_overlay_child_new:
	.asciz	"gimp_overlay_child_new"
	.size	.L__func__.gimp_overlay_child_new, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_OVERLAY_BOX (box)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.2, 23

	.type	.L__func__.gimp_overlay_child_free,@object # @__func__.gimp_overlay_child_free
.L__func__.gimp_overlay_child_free:
	.asciz	"gimp_overlay_child_free"
	.size	.L__func__.gimp_overlay_child_free, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"child != NULL"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_overlay_child_find,@object # @__func__.gimp_overlay_child_find
.L__func__.gimp_overlay_child_find:
	.asciz	"gimp_overlay_child_find"
	.size	.L__func__.gimp_overlay_child_find, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk_widget_get_parent (widget) == GTK_WIDGET (box)"
	.size	.L.str.4, 51

	.type	.L__func__.gimp_overlay_child_realize,@object # @__func__.gimp_overlay_child_realize
.L__func__.gimp_overlay_child_realize:
	.asciz	"gimp_overlay_child_realize"
	.size	.L__func__.gimp_overlay_child_realize, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"from-embedder"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"to-embedder"
	.size	.L.str.6, 12

	.type	.L__func__.gimp_overlay_child_unrealize,@object # @__func__.gimp_overlay_child_unrealize
.L__func__.gimp_overlay_child_unrealize:
	.asciz	"gimp_overlay_child_unrealize"
	.size	.L__func__.gimp_overlay_child_unrealize, 29

	.type	.L__func__.gimp_overlay_child_size_request,@object # @__func__.gimp_overlay_child_size_request
.L__func__.gimp_overlay_child_size_request:
	.asciz	"gimp_overlay_child_size_request"
	.size	.L__func__.gimp_overlay_child_size_request, 32

	.type	.L__func__.gimp_overlay_child_size_allocate,@object # @__func__.gimp_overlay_child_size_allocate
.L__func__.gimp_overlay_child_size_allocate:
	.asciz	"gimp_overlay_child_size_allocate"
	.size	.L__func__.gimp_overlay_child_size_allocate, 33

	.type	.L__func__.gimp_overlay_child_expose,@object # @__func__.gimp_overlay_child_expose
.L__func__.gimp_overlay_child_expose:
	.asciz	"gimp_overlay_child_expose"
	.size	.L__func__.gimp_overlay_child_expose, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"event != NULL"
	.size	.L.str.7, 14

	.type	.L__func__.gimp_overlay_child_damage,@object # @__func__.gimp_overlay_child_damage
.L__func__.gimp_overlay_child_damage:
	.asciz	"gimp_overlay_child_damage"
	.size	.L__func__.gimp_overlay_child_damage, 26

	.type	.L__func__.gimp_overlay_child_invalidate,@object # @__func__.gimp_overlay_child_invalidate
.L__func__.gimp_overlay_child_invalidate:
	.asciz	"gimp_overlay_child_invalidate"
	.size	.L__func__.gimp_overlay_child_invalidate, 30

	.type	.L__func__.gimp_overlay_child_pick,@object # @__func__.gimp_overlay_child_pick
.L__func__.gimp_overlay_child_pick:
	.asciz	"gimp_overlay_child_pick"
	.size	.L__func__.gimp_overlay_child_pick, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
