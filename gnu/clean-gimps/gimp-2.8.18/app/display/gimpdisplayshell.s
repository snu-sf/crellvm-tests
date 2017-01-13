	.text
	.file	"gimpdisplayshell.bc"
	.globl	gimp_display_shell_get_type
	.align	16, 0x90
	.type	gimp_display_shell_get_type,@function
gimp_display_shell_get_type:            # @gimp_display_shell_get_type
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_display_shell_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_display_shell_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$848, %edx              # imm = 0x350
	movabsq	$gimp_display_shell_class_intern_init, %rdi
	movl	$824, %r8d              # imm = 0x338
	movabsq	$gimp_display_shell_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_display_shell_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movabsq	$gimp_display_shell_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_display_shell_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_display_shell_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_get_type, .Lfunc_end0-gimp_display_shell_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_class_intern_init,@function
gimp_display_shell_class_intern_init:   # @gimp_display_shell_class_intern_init
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
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_display_shell_parent_class
	cmpl	$0, GimpDisplayShell_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDisplayShell_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_display_shell_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_class_intern_init, .Lfunc_end1-gimp_display_shell_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_init,@function
gimp_display_shell_init:                # @gimp_display_shell_init
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	callq	gimp_display_options_get_type
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
	callq	gimp_display_options_fullscreen_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rsi
	movq	%rax, 152(%rsi)
	callq	gimp_display_options_no_image_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rsi
	movq	%rax, 160(%rsi)
	callq	gimp_zoom_model_new
	xorl	%edi, %edi
	movl	$256, %ecx              # imm = 0x100
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	%rax, 256(%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 232(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 200(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 208(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 244(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 236(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 240(%rax)
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	cairo_image_surface_create
	movq	-8(%rbp), %r8
	movq	%rax, 424(%r8)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_items_init
	movq	-8(%rbp), %rax
	movl	$32, 552(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 572(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 576(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 580(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 584(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 588(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 592(%rax)
	callq	gimp_motion_buffer_new
	movabsq	$.L.str.73, %rsi
	movabsq	$gimp_display_shell_buffer_stroke, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 808(%r10)
	movq	-8(%rbp), %rax
	movq	808(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.74, %rsi
	movabsq	$gimp_display_shell_buffer_hover, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	808(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_queue_new
	movq	-8(%rbp), %rcx
	movq	%rax, 816(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2247940, %esi          # imm = 0x224D04
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.75, %rsi
	movabsq	$gimp_display_shell_scale_changed, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rcx
	movq	256(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_display_shell_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_display_shell_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.76, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	callq	gimp_help_connect
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_init, .Lfunc_end2-gimp_display_shell_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_managed_iface_init,@function
gimp_color_managed_iface_init:          # @gimp_color_managed_iface_init
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
	movabsq	$gimp_display_shell_get_icc_profile, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_managed_iface_init, .Lfunc_end3-gimp_color_managed_iface_init
	.cfi_endproc

	.globl	gimp_display_shell_new
	.align	16, 0x90
	.type	gimp_display_shell_new,@function
gimp_display_shell_new:                 # @gimp_display_shell_new
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
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	callq	gimp_display_shell_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %r8
	movl	-20(%rbp), %r10d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_new, .Lfunc_end4-gimp_display_shell_new
	.cfi_endproc

	.globl	gimp_display_shell_add_overlay
	.align	16, 0x90
	.type	gimp_display_shell_add_overlay,@function
gimp_display_shell_add_overlay:         # @gimp_display_shell_add_overlay
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_overlay, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_overlay, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movl	$1, %eax
	movl	%eax, %edi
	movl	$32, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 20(%rax)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movabsq	$g_free, %rcx
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data_full
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, 320(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_transform_overlay
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_overlay_box_add_child
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_position
.LBB5_25:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_add_overlay, .Lfunc_end5-gimp_display_shell_add_overlay
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_transform_overlay,@function
gimp_display_shell_transform_overlay:   # @gimp_display_shell_transform_overlay
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	$80, %eax
	movl	%eax, %esi
	callq	g_type_check_instance_cast
	movl	$.L.str.10, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_display_shell_transform_xy_f
	movq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	gtk_widget_size_request
	movq	-40(%rbp), %rax
	movl	16(%rax), %r8d
	movl	%r8d, %eax
	movq	%rax, %rcx
	subq	$8, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB6_10
# BB#11:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-32(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	jmp	.LBB6_10
.LBB6_2:                                # %sw.bb.5
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	movq	-40(%rbp), %rsi
	cvtsi2sdl	24(%rsi), %xmm0
	movq	-32(%rbp), %rsi
	addsd	(%rsi), %xmm0
	movsd	%xmm0, (%rsi)
	jmp	.LBB6_10
.LBB6_3:                                # %sw.bb.11
	movq	-40(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm0
	movq	-32(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.LBB6_10
.LBB6_4:                                # %sw.bb.17
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	20(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	movq	-40(%rbp), %rcx
	cvtsi2sdl	24(%rcx), %xmm0
	movq	-32(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	jmp	.LBB6_10
.LBB6_5:                                # %sw.bb.26
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rsi
	addl	24(%rsi), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-32(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.36
	movq	-40(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	24(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	jmp	.LBB6_10
.LBB6_7:                                # %sw.bb.45
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	20(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	24(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-32(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	jmp	.LBB6_10
.LBB6_8:                                # %sw.bb.56
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	cvtsi2sdl	20(%rcx), %xmm0
	movq	-24(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movl	-44(%rbp), %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-80(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm0
	movq	-32(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	jmp	.LBB6_10
.LBB6_9:                                # %sw.bb.64
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rdx
	addl	20(%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdx)
	movl	-44(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movq	-32(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rsi)
.LBB6_10:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_transform_overlay, .Lfunc_end6-gimp_display_shell_transform_overlay
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_9

	.text
	.globl	gimp_display_shell_move_overlay
	.align	16, 0x90
	.type	gimp_display_shell_move_overlay,@function
gimp_display_shell_move_overlay:        # @gimp_display_shell_move_overlay
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_move_overlay, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_move_overlay, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
# BB#25:                                # %do.body.41
	cmpq	$0, -56(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.43
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.44
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_move_overlay, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_30
.LBB7_28:                               # %if.end.45
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.46
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movl	-36(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 16(%rax)
	movl	-40(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 20(%rax)
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%esi, 24(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_transform_overlay
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_position
.LBB7_30:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_move_overlay, .Lfunc_end7-gimp_display_shell_move_overlay
	.cfi_endproc

	.globl	gimp_display_shell_get_window
	.align	16, 0x90
	.type	gimp_display_shell_get_window,@function
gimp_display_shell_get_window:          # @gimp_display_shell_get_window
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_window, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_get_window, .Lfunc_end8-gimp_display_shell_get_window
	.cfi_endproc

	.globl	gimp_display_shell_get_statusbar
	.align	16, 0x90
	.type	gimp_display_shell_get_statusbar,@function
gimp_display_shell_get_statusbar:       # @gimp_display_shell_get_statusbar
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_statusbar, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_get_statusbar, .Lfunc_end9-gimp_display_shell_get_statusbar
	.cfi_endproc

	.globl	gimp_display_shell_present
	.align	16, 0x90
	.type	gimp_display_shell_present,@function
gimp_display_shell_present:             # @gimp_display_shell_present
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_present, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_image_window_set_active_shell
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB10_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_present, .Lfunc_end10-gimp_display_shell_present
	.cfi_endproc

	.globl	gimp_display_shell_reconnect
	.align	16, 0x90
	.type	gimp_display_shell_reconnect,@function
gimp_display_shell_reconnect:           # @gimp_display_shell_reconnect
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_reconnect, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_32
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -52(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -52(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_reconnect, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_32
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB11_27
# BB#26:                                # %if.then.43
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.44
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_reconnect, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_32
.LBB11_28:                              # %if.end.45
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.46
	movq	-8(%rbp), %rax
	cmpl	$0, 568(%rax)
	je	.LBB11_31
# BB#30:                                # %if.then.48
	movq	-8(%rbp), %rax
	movl	568(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 568(%rcx)
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB11_31:                              # %if.end.52
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	display_shell_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_managed_profile_changed
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_and_update
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scaled
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_expose_full
.LBB11_32:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_reconnect, .Lfunc_end11-gimp_display_shell_reconnect
	.cfi_endproc

	.globl	gimp_display_shell_scaled
	.align	16, 0x90
	.type	gimp_display_shell_scaled,@function
gimp_display_shell_scaled:              # @gimp_display_shell_scaled
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_scaled, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_20
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB12_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_display_shell_transform_overlay
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_position
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB12_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_18
.LBB12_17:                              # %cond.false
                                        #   in Loop: Header=BB12_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_18
.LBB12_18:                              # %cond.end
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB12_13
.LBB12_19:                              # %for.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	display_shell_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB12_20:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_scaled, .Lfunc_end12-gimp_display_shell_scaled
	.cfi_endproc

	.globl	gimp_display_shell_empty
	.align	16, 0x90
	.type	gimp_display_shell_empty,@function
gimp_display_shell_empty:               # @gimp_display_shell_empty
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_empty, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_33
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_empty, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_33
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB13_27
# BB#26:                                # %if.then.43
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.44
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_empty, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_33
.LBB13_28:                              # %if.end.45
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.46
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 568(%rax)
	je	.LBB13_31
# BB#30:                                # %if.then.49
	movq	-8(%rbp), %rax
	movl	568(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 568(%rcx)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB13_31:                              # %if.end.53
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_selection_undraw
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_unset_cursor
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rsi
	callq	gimp_display_shell_sync_config
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_appearance_update
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_update_tabs
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_statusbar_empty
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_set_double_buffered
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_expose_full
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_context_get_display
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_33
# BB#32:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB13_33:                              # %if.end.64
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_empty, .Lfunc_end13-gimp_display_shell_empty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_sync_config,@function
gimp_display_shell_sync_config:         # @gimp_display_shell_sync_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	520(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	528(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-8(%rbp), %rcx
	cmpq	$0, 128(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	je	.LBB14_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	536(%rax), %esi
	callq	gimp_display_shell_set_snap_to_guides
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	540(%rax), %esi
	callq	gimp_display_shell_set_snap_to_grid
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	544(%rax), %esi
	callq	gimp_display_shell_set_snap_to_canvas
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	548(%rax), %esi
	callq	gimp_display_shell_set_snap_to_vectors
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	movl	536(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 168(%rax)
	movq	-16(%rbp), %rax
	movl	540(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 172(%rax)
	movq	-16(%rbp), %rax
	movl	544(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 176(%rax)
	movq	-16(%rbp), %rax
	movl	548(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 180(%rax)
.LBB14_4:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_sync_config, .Lfunc_end14-gimp_display_shell_sync_config
	.cfi_endproc

	.globl	gimp_display_shell_fill
	.align	16, 0x90
	.type	gimp_display_shell_fill,@function
gimp_display_shell_fill:                # @gimp_display_shell_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_fill, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_37
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_fill, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_37
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB15_27
# BB#26:                                # %if.then.48
	movl	$0, -108(%rbp)
	jmp	.LBB15_32
.LBB15_27:                              # %if.else.49
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_30
# BB#28:                                # %land.lhs.true.52
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB15_30
# BB#29:                                # %if.then.56
	movl	$1, -108(%rbp)
	jmp	.LBB15_31
.LBB15_30:                              # %if.else.57
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB15_31:                              # %if.end.59
	jmp	.LBB15_32
.LBB15_32:                              # %if.end.60
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB15_34
# BB#33:                                # %if.then.63
	jmp	.LBB15_35
.LBB15_34:                              # %if.else.64
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_fill, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_37
.LBB15_35:                              # %if.end.65
	jmp	.LBB15_36
.LBB15_36:                              # %do.end.66
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_display_shell_set_unit
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	-8(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gimp_display_shell_set_initial_scale
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_changed
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rsi
	callq	gimp_display_shell_sync_config
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_appearance_update
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_update_tabs
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_statusbar_fill
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_display_shell_scroll_center_image_on_next_size_allocate
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_set_double_buffered
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_display_shell_fill_idle, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %r8
	movq	%rax, %rsi
	movq	%r8, %rdx
	callq	g_idle_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 568(%rcx)
.LBB15_37:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_display_shell_fill, .Lfunc_end15-gimp_display_shell_fill
	.cfi_endproc

	.globl	gimp_display_shell_set_unit
	.align	16, 0x90
	.type	gimp_display_shell_set_unit,@function
gimp_display_shell_set_unit:            # @gimp_display_shell_set_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_unit, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_14
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	184(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB16_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 184(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_update_rulers
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scaled
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB16_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_display_shell_set_unit, .Lfunc_end16-gimp_display_shell_set_unit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_display_shell_scale_changed
	.align	16, 0x90
	.type	gimp_display_shell_scale_changed,@function
gimp_display_shell_scale_changed:       # @gimp_display_shell_scale_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_scale_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_19
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_18
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_zoom_model_get_factor
	movq	-8(%rbp), %rax
	addq	$200, %rax
	movq	-8(%rbp), %rdi
	addq	$208, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	gimp_display_shell_calculate_scale_x_and_y
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rcx
	movl	%eax, 244(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-8(%rbp), %rcx
	movl	%eax, 248(%rcx)
	movq	-8(%rbp), %rcx
	movsd	200(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	244(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 236(%rcx)
	movq	-8(%rbp), %rcx
	movsd	208(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	248(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 240(%rcx)
	movq	-8(%rbp), %rcx
	cmpl	$1, 236(%rcx)
	jge	.LBB17_15
# BB#14:                                # %if.then.28
	movq	-8(%rbp), %rax
	movl	$1, 236(%rax)
.LBB17_15:                              # %if.end.30
	movq	-8(%rbp), %rax
	cmpl	$1, 240(%rax)
	jge	.LBB17_17
# BB#16:                                # %if.then.34
	movq	-8(%rbp), %rax
	movl	$1, 240(%rax)
.LBB17_17:                              # %if.end.36
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.37
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 200(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 208(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 244(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 236(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 240(%rax)
.LBB17_19:                              # %if.end.44
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_display_shell_scale_changed, .Lfunc_end17-gimp_display_shell_scale_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_fill_idle,@function
gimp_display_shell_fill_idle:           # @gimp_display_shell_fill_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 568(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_7
.LBB18_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_5
# BB#4:                                 # %if.then.6
	movl	$1, -36(%rbp)
	jmp	.LBB18_6
.LBB18_5:                               # %if.else.7
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_6:                               # %if.end
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.9
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_9
# BB#8:                                 # %if.then.11
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_shrink_wrap
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB18_9:                               # %if.end.14
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_display_shell_fill_idle, .Lfunc_end18-gimp_display_shell_fill_idle
	.cfi_endproc

	.globl	gimp_display_shell_scrolled
	.align	16, 0x90
	.type	gimp_display_shell_scrolled,@function
gimp_display_shell_scrolled:            # @gimp_display_shell_scrolled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_scrolled, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_20
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB19_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB19_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB19_13 Depth=1
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_display_shell_transform_overlay
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_overlay_box_set_child_position
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB19_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB19_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB19_18
.LBB19_17:                              # %cond.false
                                        #   in Loop: Header=BB19_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB19_18
.LBB19_18:                              # %cond.end
                                        #   in Loop: Header=BB19_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB19_13
.LBB19_19:                              # %for.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	display_shell_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB19_20:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_display_shell_scrolled, .Lfunc_end19-gimp_display_shell_scrolled
	.cfi_endproc

	.globl	gimp_display_shell_get_unit
	.align	16, 0x90
	.type	gimp_display_shell_get_unit,@function
gimp_display_shell_get_unit:            # @gimp_display_shell_get_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_unit, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	184(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB20_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_display_shell_get_unit, .Lfunc_end20-gimp_display_shell_get_unit
	.cfi_endproc

	.globl	gimp_display_shell_snap_coords
	.align	16, 0x90
	.type	gimp_display_shell_snap_coords,@function
gimp_display_shell_snap_coords:         # @gimp_display_shell_snap_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_snap_coords, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_38
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_snap_coords, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_38
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_snap_to_guides
	cmpl	$0, %eax
	je	.LBB21_20
# BB#18:                                # %land.lhs.true.20
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_guides
	cmpq	$0, %rax
	je	.LBB21_20
# BB#19:                                # %if.then.23
	movl	$1, -52(%rbp)
.LBB21_20:                              # %if.end.24
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_snap_to_grid
	cmpl	$0, %eax
	je	.LBB21_23
# BB#21:                                # %land.lhs.true.27
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_grid
	cmpq	$0, %rax
	je	.LBB21_23
# BB#22:                                # %if.then.30
	movl	$1, -56(%rbp)
.LBB21_23:                              # %if.end.31
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_snap_to_canvas
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_snap_to_vectors
	cmpl	$0, %eax
	je	.LBB21_26
# BB#24:                                # %land.lhs.true.35
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	cmpq	$0, %rax
	je	.LBB21_26
# BB#25:                                # %if.then.38
	movl	$1, -64(%rbp)
.LBB21_26:                              # %if.end.39
	cmpl	$0, -52(%rbp)
	jne	.LBB21_30
# BB#27:                                # %lor.lhs.false
	cmpl	$0, -56(%rbp)
	jne	.LBB21_30
# BB#28:                                # %lor.lhs.false.42
	cmpl	$0, -60(%rbp)
	jne	.LBB21_30
# BB#29:                                # %lor.lhs.false.44
	cmpl	$0, -64(%rbp)
	je	.LBB21_37
.LBB21_30:                              # %if.then.46
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB21_33
# BB#31:                                # %land.lhs.true.53
	cmpl	$0, -40(%rbp)
	jle	.LBB21_33
# BB#32:                                # %if.then.55
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	-36(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	cvtsi2sdl	-40(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	cvtsi2sdl	-100(%rbp), %xmm4
	movq	-16(%rbp), %rax
	divsd	200(%rax), %xmm4
	cvtsi2sdl	-100(%rbp), %xmm5
	movq	-16(%rbp), %rax
	divsd	208(%rax), %xmm5
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_image_snap_rectangle
	movl	%eax, -68(%rbp)
	jmp	.LBB21_34
.LBB21_33:                              # %if.else.72
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdl	-100(%rbp), %xmm2
	movq	-16(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-100(%rbp), %xmm3
	movq	-16(%rbp), %rax
	divsd	208(%rax), %xmm3
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_image_snap_point
	movl	%eax, -68(%rbp)
.LBB21_34:                              # %if.end.86
	cmpl	$0, -68(%rbp)
	je	.LBB21_36
# BB#35:                                # %if.then.88
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB21_36:                              # %if.end.94
	jmp	.LBB21_37
.LBB21_37:                              # %if.end.95
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB21_38:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_display_shell_snap_coords, .Lfunc_end21-gimp_display_shell_snap_coords
	.cfi_endproc

	.globl	gimp_display_shell_mask_bounds
	.align	16, 0x90
	.type	gimp_display_shell_mask_bounds,@function
gimp_display_shell_mask_bounds:         # @gimp_display_shell_mask_bounds
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_mask_bounds, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_79
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.13
	jmp	.LBB22_16
.LBB22_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_mask_bounds, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_79
.LBB22_16:                              # %if.end.15
	jmp	.LBB22_17
.LBB22_17:                              # %do.end.16
	jmp	.LBB22_18
.LBB22_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB22_20
# BB#19:                                # %if.then.19
	jmp	.LBB22_21
.LBB22_20:                              # %if.else.20
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_mask_bounds, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_79
.LBB22_21:                              # %if.end.21
	jmp	.LBB22_22
.LBB22_22:                              # %do.end.22
	jmp	.LBB22_23
.LBB22_23:                              # %do.body.23
	cmpq	$0, -40(%rbp)
	je	.LBB22_25
# BB#24:                                # %if.then.25
	jmp	.LBB22_26
.LBB22_25:                              # %if.else.26
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_mask_bounds, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_79
.LBB22_26:                              # %if.end.27
	jmp	.LBB22_27
.LBB22_27:                              # %do.end.28
	jmp	.LBB22_28
.LBB22_28:                              # %do.body.29
	cmpq	$0, -48(%rbp)
	je	.LBB22_30
# BB#29:                                # %if.then.31
	jmp	.LBB22_31
.LBB22_30:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_mask_bounds, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_79
.LBB22_31:                              # %if.end.33
	jmp	.LBB22_32
.LBB22_32:                              # %do.end.34
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB22_49
# BB#33:                                # %if.then.38
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB22_35
# BB#34:                                # %if.then.46
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-124(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-140(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-40(%rbp), %rcx
	movl	%edx, (%rcx)
	movl	-128(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-156(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx)
	jmp	.LBB22_48
.LBB22_35:                              # %if.else.54
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB22_37
# BB#36:                                # %cond.true
	movl	-124(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB22_38
.LBB22_37:                              # %cond.false
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB22_38:                              # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB22_40
# BB#39:                                # %cond.true.57
	movl	-128(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB22_41
.LBB22_40:                              # %cond.false.58
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB22_41:                              # %cond.end.59
	movl	-176(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-124(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-180(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %edx
	jle	.LBB22_43
# BB#42:                                # %cond.true.66
	movl	-124(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-196(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB22_44
.LBB22_43:                              # %cond.false.71
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
.LBB22_44:                              # %cond.end.72
	movl	-212(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-128(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-216(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %edx
	jle	.LBB22_46
# BB#45:                                # %cond.true.79
	movl	-128(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-228(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB22_47
.LBB22_46:                              # %cond.false.84
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB22_47:                              # %cond.end.85
	movl	-244(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB22_48:                              # %if.end.87
	jmp	.LBB22_52
.LBB22_49:                              # %if.else.88
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB22_51
# BB#50:                                # %if.then.92
	movl	$0, -4(%rbp)
	jmp	.LBB22_79
.LBB22_51:                              # %if.end.93
	jmp	.LBB22_52
.LBB22_52:                              # %if.end.94
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-32(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	callq	gimp_display_shell_transform_xy_f
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-48(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	callq	gimp_display_shell_transform_xy_f
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movq	-16(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_54
# BB#53:                                # %cond.true.102
	movq	-16(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB22_58
.LBB22_54:                              # %cond.false.105
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_56
# BB#55:                                # %cond.true.109
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB22_57
.LBB22_56:                              # %cond.false.110
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB22_57:                              # %cond.end.112
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB22_58:                              # %cond.end.114
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movq	-16(%rbp), %rcx
	cvtsi2sdl	300(%rcx), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_60
# BB#59:                                # %cond.true.121
	movq	-16(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB22_64
.LBB22_60:                              # %cond.false.124
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_62
# BB#61:                                # %cond.true.128
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB22_63
.LBB22_62:                              # %cond.false.129
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB22_63:                              # %cond.end.131
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB22_64:                              # %cond.end.133
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movq	-16(%rbp), %rcx
	cvtsi2sdl	296(%rcx), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_66
# BB#65:                                # %cond.true.141
	movq	-16(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB22_70
.LBB22_66:                              # %cond.false.144
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_68
# BB#67:                                # %cond.true.148
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB22_69
.LBB22_68:                              # %cond.false.149
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB22_69:                              # %cond.end.151
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB22_70:                              # %cond.end.153
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movq	-16(%rbp), %rcx
	cvtsi2sdl	300(%rcx), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_72
# BB#71:                                # %cond.true.161
	movq	-16(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm0
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB22_76
.LBB22_72:                              # %cond.false.164
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_74
# BB#73:                                # %cond.true.168
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB22_75
.LBB22_74:                              # %cond.false.169
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB22_75:                              # %cond.end.171
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB22_76:                              # %cond.end.173
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movb	%al, %cl
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rdx
	movl	(%rdx), %eax
	movq	-24(%rbp), %rdx
	subl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jle	.LBB22_78
# BB#77:                                # %land.rhs
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	(%rax), %ecx
	cmpl	$0, %ecx
	setg	%dl
	movb	%dl, -345(%rbp)         # 1-byte Spill
.LBB22_78:                              # %land.end
	movb	-345(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB22_79:                              # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_display_shell_mask_bounds, .Lfunc_end22-gimp_display_shell_mask_bounds
	.cfi_endproc

	.globl	gimp_display_shell_flush
	.align	16, 0x90
	.type	gimp_display_shell_flush,@function
gimp_display_shell_flush:               # @gimp_display_shell_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_flush, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_20
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_title_update
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_changed
	movq	-8(%rbp), %rdi
	movq	504(%rdi), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_active_layer
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_canvas_layer_boundary_set_layer
	cmpl	$0, -12(%rbp)
	je	.LBB23_14
# BB#13:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
	jmp	.LBB23_20
.LBB23_14:                              # %if.else.18
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB23_17
# BB#15:                                # %land.lhs.true.23
	movq	-48(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-8(%rbp), %rax
	jne	.LBB23_17
# BB#16:                                # %if.then.26
	movq	-48(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB23_17:                              # %if.end.30
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_context_get_display
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB23_19
# BB#18:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB23_19:                              # %if.end.38
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.39
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_display_shell_flush, .Lfunc_end23-gimp_display_shell_flush
	.cfi_endproc

	.globl	gimp_display_shell_pause
	.align	16, 0x90
	.type	gimp_display_shell_pause,@function
gimp_display_shell_pause:               # @gimp_display_shell_pause
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_pause, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_14
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 664(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 664(%rax)
	jne	.LBB24_14
# BB#13:                                # %if.then.13
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	callq	tool_manager_control_active
.LBB24_14:                              # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_display_shell_pause, .Lfunc_end24-gimp_display_shell_pause
	.cfi_endproc

	.globl	gimp_display_shell_resume
	.align	16, 0x90
	.type	gimp_display_shell_resume,@function
gimp_display_shell_resume:              # @gimp_display_shell_resume
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_resume, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_19
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 664(%rax)
	jle	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_resume, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_19
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 664(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 664(%rax)
	jne	.LBB25_19
# BB#18:                                # %if.then.20
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	callq	tool_manager_control_active
.LBB25_19:                              # %if.end.22
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_display_shell_resume, .Lfunc_end25-gimp_display_shell_resume
	.cfi_endproc

	.globl	gimp_display_shell_set_highlight
	.align	16, 0x90
	.type	gimp_display_shell_set_highlight,@function
gimp_display_shell_set_highlight:       # @gimp_display_shell_set_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
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
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_highlight, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_15
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB26_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gimp_canvas_item_begin_change
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	movq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm2
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm3
	callq	gimp_canvas_rectangle_set
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gimp_canvas_item_end_change
	jmp	.LBB26_15
.LBB26_14:                              # %if.else.19
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gimp_canvas_item_set_visible
.LBB26_15:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_display_shell_set_highlight, .Lfunc_end26-gimp_display_shell_set_highlight
	.cfi_endproc

	.globl	gimp_display_shell_set_mask
	.align	16, 0x90
	.type	gimp_display_shell_set_mask,@function
gimp_display_shell_set_mask:            # @gimp_display_shell_set_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_mask, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_39
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB27_23
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB27_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB27_21
.LBB27_16:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB27_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB27_20
.LBB27_19:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB27_20:                              # %if.end.32
	jmp	.LBB27_21
.LBB27_21:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB27_24
# BB#22:                                # %land.lhs.true.36
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_bytes
	cmpl	$1, %eax
	jne	.LBB27_24
.LBB27_23:                              # %if.then.39
	jmp	.LBB27_25
.LBB27_24:                              # %if.else.40
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_mask, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_39
.LBB27_25:                              # %if.end.41
	jmp	.LBB27_26
.LBB27_26:                              # %do.end.42
	jmp	.LBB27_27
.LBB27_27:                              # %do.body.43
	cmpq	$0, -16(%rbp)
	je	.LBB27_29
# BB#28:                                # %lor.lhs.false.45
	cmpq	$0, -24(%rbp)
	je	.LBB27_30
.LBB27_29:                              # %if.then.47
	jmp	.LBB27_31
.LBB27_30:                              # %if.else.48
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_mask, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_39
.LBB27_31:                              # %if.end.49
	jmp	.LBB27_32
.LBB27_32:                              # %do.end.50
	cmpq	$0, -16(%rbp)
	je	.LBB27_34
# BB#33:                                # %if.then.52
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB27_34:                              # %if.end.54
	movq	-8(%rbp), %rax
	cmpq	$0, 768(%rax)
	je	.LBB27_36
# BB#35:                                # %if.then.57
	movq	-8(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB27_36:                              # %if.end.59
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 768(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB27_38
# BB#37:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 776(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 784(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 792(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 800(%rax)
.LBB27_38:                              # %if.end.63
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_expose_full
.LBB27_39:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_display_shell_set_mask, .Lfunc_end27-gimp_display_shell_set_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_class_init,@function
gimp_display_shell_class_init:          # @gimp_display_shell_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.24, %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.25, %rdi
	movl	$1, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, display_shell_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.26, %rdi
	movl	$1, %edx
	movl	$840, %ecx              # imm = 0x348
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, display_shell_signals+4
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_display_shell_real_scaled, %rsi
	movabsq	$gimp_display_shell_popup_menu, %rdi
	movabsq	$gimp_display_shell_screen_changed, %r8
	movabsq	$gimp_display_shell_unrealize, %r9
	movabsq	$gimp_display_shell_get_property, %r10
	movabsq	$gimp_display_shell_set_property, %r11
	movabsq	$gimp_display_shell_finalize, %r14
	movabsq	$gimp_display_shell_dispose, %r15
	movabsq	$gimp_display_shell_constructed, %r12
	movl	%eax, display_shell_signals+8
	movq	-56(%rbp), %r13
	movq	%r12, 72(%r13)
	movq	-56(%rbp), %r12
	movq	%r15, 40(%r12)
	movq	-56(%rbp), %r15
	movq	%r14, 48(%r15)
	movq	-56(%rbp), %r14
	movq	%r11, 24(%r14)
	movq	-56(%rbp), %r11
	movq	%r10, 32(%r11)
	movq	-64(%rbp), %r10
	movq	%r9, 232(%r10)
	movq	-64(%rbp), %r9
	movq	%r8, 656(%r9)
	movq	-64(%rbp), %r8
	movq	%rdi, 632(%r8)
	movq	-48(%rbp), %rdi
	movq	%rsi, 824(%rdi)
	movq	-48(%rbp), %rsi
	movq	$0, 832(%rsi)
	movq	-48(%rbp), %rsi
	movq	$0, 840(%rsi)
	movq	-56(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_ui_manager_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-196(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_unit
	movl	$3, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.28, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$231, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$4, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.29, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$227, %r8d
	movq	-56(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$5, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gdk_pixbuf_get_type
	movabsq	$.L.str.30, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$6, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$display_rc_style, %rdi
	callq	gtk_rc_parse_string
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_display_shell_class_init, .Lfunc_end28-gimp_display_shell_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_constructed,@function
gimp_display_shell_constructed:         # @gimp_display_shell_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1080, %rsp             # imm = 0x438
.Ltmp95:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_display_shell_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_display_shell_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB29_2:                               # %if.end
	jmp	.LBB29_3
.LBB29_3:                               # %do.body
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB29_5
# BB#4:                                 # %if.then.7
	movl	$0, -140(%rbp)
	jmp	.LBB29_10
.LBB29_5:                               # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_8
# BB#6:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB29_8
# BB#7:                                 # %if.then.10
	movl	$1, -140(%rbp)
	jmp	.LBB29_9
.LBB29_8:                               # %if.else.11
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB29_9:                               # %if.end.13
	jmp	.LBB29_10
.LBB29_10:                              # %if.end.14
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB29_12
# BB#11:                                # %if.then.16
	jmp	.LBB29_13
.LBB29_12:                              # %if.else.17
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$370, %edx              # imm = 0x172
	movabsq	$.L__func__.gimp_display_shell_constructed, %rcx
	movabsq	$.L.str.32, %r8
	callq	g_assertion_message_expr
.LBB29_13:                              # %if.end.18
	jmp	.LBB29_14
.LBB29_14:                              # %do.end
	jmp	.LBB29_15
.LBB29_15:                              # %do.body.19
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB29_17
# BB#16:                                # %if.then.28
	movl	$0, -164(%rbp)
	jmp	.LBB29_22
.LBB29_17:                              # %if.else.29
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_20
# BB#18:                                # %land.lhs.true.32
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB29_20
# BB#19:                                # %if.then.36
	movl	$1, -164(%rbp)
	jmp	.LBB29_21
.LBB29_20:                              # %if.else.37
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB29_21:                              # %if.end.39
	jmp	.LBB29_22
.LBB29_22:                              # %if.end.40
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB29_24
# BB#23:                                # %if.then.43
	jmp	.LBB29_25
.LBB29_24:                              # %if.else.44
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$371, %edx              # imm = 0x173
	movabsq	$.L__func__.gimp_display_shell_constructed, %rcx
	movabsq	$.L.str.12, %r8
	callq	g_assertion_message_expr
.LBB29_25:                              # %if.end.45
	jmp	.LBB29_26
.LBB29_26:                              # %do.end.46
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB29_28
# BB#27:                                # %if.then.52
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -112(%rbp)
	jmp	.LBB29_29
.LBB29_28:                              # %if.else.55
	movl	$640, -108(%rbp)        # imm = 0x280
	movl	$133, -112(%rbp)
.LBB29_29:                              # %if.end.56
	movq	-32(%rbp), %rax
	movl	448(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 232(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 512(%rax)
	je	.LBB29_31
# BB#30:                                # %if.then.61
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$216, %rax
	movq	-24(%rbp), %rcx
	addq	$224, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_get_screen_resolution
	jmp	.LBB29_32
.LBB29_31:                              # %if.else.62
	movq	-32(%rbp), %rax
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movq	-32(%rbp), %rax
	movsd	504(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 224(%rax)
.LBB29_32:                              # %if.end.67
	cmpq	$0, -40(%rbp)
	je	.LBB29_34
# BB#33:                                # %if.then.69
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_set_initial_scale
	jmp	.LBB29_35
.LBB29_34:                              # %if.else.70
	movl	$-1, -116(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB29_35:                              # %if.end.71
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_display_shell_sync_config
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_table_set_col_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_table_set_row_spacing
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$1, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm2
	cvtsi2sdl	-108(%rbp), %xmm5
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -264(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-264(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-264(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, 336(%rsi)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rsi
	callq	gtk_scrollbar_new
	xorl	%esi, %esi
	movq	-24(%rbp), %r9
	movq	%rax, 352(%r9)
	movq	-24(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_set_can_focus
	xorps	%xmm0, %xmm0
	movsd	.LCPI29_0, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-112(%rbp), %xmm2
	cvtsi2sdl	-112(%rbp), %xmm5
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movsd	-280(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-288(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-288(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, 344(%rsi)
	movq	-24(%rbp), %rax
	movq	344(%rax), %rsi
	callq	gtk_scrollbar_new
	xorl	%esi, %esi
	movq	-24(%rbp), %r9
	movq	%rax, 360(%r9)
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_set_can_focus
	callq	gtk_event_box_new
	movabsq	$.L.str.33, %rdi
	movl	$1, %esi
	movq	-24(%rbp), %r9
	movq	%rax, 384(%r9)
	callq	gtk_image_new_from_stock
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_origin_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rdi
	movq	-24(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-32(%rbp), %rdi
	callq	gimp_canvas_new
	movq	-24(%rbp), %rcx
	movq	%rax, 328(%rcx)
	movq	-24(%rbp), %rax
	movq	328(%rax), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_display_shell_remove_overlay, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_dnd_init
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_selection_init
	xorl	%edi, %edi
	callq	gimp_ruler_new
	movq	-24(%rbp), %rcx
	movq	%rax, 368(%rcx)
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$768, %esi              # imm = 0x300
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	328(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_ruler_add_track_widget
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_hruler_button_press, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.38, %rdx
	movq	-24(%rbp), %rcx
	movq	368(%rcx), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_help_set_help_data
	movl	$1, %edi
	callq	gimp_ruler_new
	movq	-24(%rbp), %rcx
	movq	%rax, 376(%rcx)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$768, %esi              # imm = 0x300
	movq	%rax, %rdi
	callq	gtk_widget_set_events
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	328(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_ruler_add_track_widget
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_vruler_button_press, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	368(%rcx), %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	376(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_ruler_add_track_widget
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_ruler_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	368(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_ruler_add_track_widget
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.38, %rdx
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gimp_help_set_help_data
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rsi
	callq	gimp_devices_add_widget
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rsi
	callq	gimp_devices_add_widget
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_display_shell_canvas_realize, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_display_shell_canvas_size_allocate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_display_shell_canvas_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_display_shell_canvas_expose_after, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-616(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.50, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-632(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_display_shell_canvas_tool_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_check_button_get_type
	movabsq	$.L.str.53, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.54, %rcx
	movl	$2, %r8d
	movabsq	$.L.str.55, %r9
	movl	$18, %r11d
	movabsq	$.L.str.56, %rdi
	xorl	%ebx, %ebx
	movl	%ebx, %r10d
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$18, (%rsp)
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$18, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r10, -696(%rbp)        # 8-byte Spill
	movl	%r11d, -700(%rbp)       # 4-byte Spill
	callq	g_object_new
	xorl	%esi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 400(%rcx)
	movq	-24(%rbp), %rax
	movq	400(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movabsq	$.L.str.57, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rdi
	movq	-24(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.59, %rdx
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.60, %rsi
	movabsq	$gimp_display_shell_zoom_button_callback, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$2, %r9d
	movq	-24(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-728(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_check_button_get_type
	movabsq	$.L.str.53, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.54, %rcx
	movl	$2, %r8d
	movabsq	$.L.str.55, %r9
	movl	$18, %r11d
	movabsq	$.L.str.56, %rdi
	xorl	%ebx, %ebx
	movl	%ebx, %r10d
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$18, (%rsp)
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$18, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r10, -752(%rbp)        # 8-byte Spill
	movl	%r11d, -756(%rbp)       # 4-byte Spill
	callq	g_object_new
	xorl	%esi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 392(%rcx)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movabsq	$.L.str.61, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.62, %rsi
	movabsq	$.L.str.63, %rdx
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_ui_manager_find_action
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB29_37
# BB#36:                                # %if.then.207
	movq	-24(%rbp), %rax
	movq	392(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_widget_set_accel_help
	jmp	.LBB29_38
.LBB29_37:                              # %if.else.209
	movabsq	$.L.str.64, %rdi
	movq	-24(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rdx
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
.LBB29_38:                              # %if.end.212
	movabsq	$.L.str.60, %rsi
	movabsq	$gimp_display_shell_quick_mask_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-784(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_quick_mask_button_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_event_box_new
	movabsq	$.L.str.66, %rdi
	movl	$1, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 408(%rcx)
	callq	gtk_image_new_from_stock
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_display_shell_navigation_button_press, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	408(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-824(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.67, %rdi
	movq	-24(%rbp), %rcx
	movq	408(%rcx), %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.68, %rdx
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gimp_statusbar_new
	movq	-24(%rbp), %rcx
	movq	%rax, 416(%rcx)
	movq	-24(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_statusbar_set_shell
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.69, %rdx
	movq	-24(%rbp), %rax
	movq	416(%rax), %rdi
	callq	gimp_help_set_help_data
	movq	-24(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	416(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-80(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-24(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -868(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-868(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -872(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-872(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -876(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-80(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$7, %r9d
	movl	$4, %r10d
	movq	-24(%rbp), %rsi
	movq	368(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -892(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-892(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -896(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-896(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -900(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$7, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -904(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movl	$7, %r10d
	movq	-24(%rbp), %rsi
	movq	376(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	movl	-916(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -920(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$4, (%rsp)
	movl	$7, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -924(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$7, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -940(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-940(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -944(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-944(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -948(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -952(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$7, (%rsp)
	movl	$7, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-64(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	400(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -964(%rbp)        # 4-byte Spill
	movl	-964(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	360(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	392(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	movl	-988(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	352(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	408(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	movl	-1012(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rsi
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	callq	gimp_display_shell_filter_new
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB29_40
# BB#39:                                # %if.then.268
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_display_shell_filter_set
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
.LBB29_40:                              # %if.end.269
	cmpq	$0, -40(%rbp)
	je	.LBB29_42
# BB#41:                                # %if.then.271
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_connect
	movl	$1, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_display_shell_scroll_center_image_on_next_size_allocate
	jmp	.LBB29_43
.LBB29_42:                              # %if.else.272
	movq	-24(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_statusbar_empty
.LBB29_43:                              # %if.end.276
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scale_changed
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_display_shell_constructed, .Lfunc_end29-gimp_display_shell_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_dispose,@function
gimp_display_shell_dispose:             # @gimp_display_shell_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB30_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	je	.LBB30_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_disconnect
.LBB30_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_selection_free
	movq	-16(%rbp), %rax
	cmpq	$0, 640(%rax)
	je	.LBB30_5
# BB#4:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_filter_set
.LBB30_5:                               # %if.end.7
	movq	-16(%rbp), %rax
	cmpl	$0, 648(%rax)
	je	.LBB30_7
# BB#6:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movl	648(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 648(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB30_7:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 424(%rax)
	je	.LBB30_9
# BB#8:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	424(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-16(%rbp), %rax
	movq	$0, 424(%rax)
.LBB30_9:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 432(%rax)
	je	.LBB30_11
# BB#10:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	432(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-16(%rbp), %rax
	movq	$0, 432(%rax)
.LBB30_11:                              # %if.end.23
	movq	-16(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB30_13
# BB#12:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	440(%rax), %rdi
	callq	cairo_pattern_destroy
	movq	-16(%rbp), %rax
	movq	$0, 440(%rax)
.LBB30_13:                              # %if.end.28
	movq	-16(%rbp), %rax
	cmpq	$0, 768(%rax)
	je	.LBB30_15
# BB#14:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 768(%rax)
.LBB30_15:                              # %if.end.33
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_items_free
	movq	-16(%rbp), %rdi
	cmpq	$0, 808(%rdi)
	je	.LBB30_17
# BB#16:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 808(%rax)
.LBB30_17:                              # %if.end.38
	movq	-16(%rbp), %rax
	cmpq	$0, 816(%rax)
	je	.LBB30_19
# BB#18:                                # %if.then.40
	movq	-16(%rbp), %rax
	movq	816(%rax), %rdi
	callq	g_queue_free
	movq	-16(%rbp), %rax
	movq	$0, 816(%rax)
.LBB30_19:                              # %if.end.43
	movq	-16(%rbp), %rax
	cmpl	$0, 528(%rax)
	je	.LBB30_21
# BB#20:                                # %if.then.45
	movq	-16(%rbp), %rax
	movl	528(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 528(%rcx)
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB30_21:                              # %if.end.49
	movq	-16(%rbp), %rax
	cmpl	$0, 568(%rax)
	je	.LBB30_23
# BB#22:                                # %if.then.51
	movq	-16(%rbp), %rax
	movl	568(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 568(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB30_23:                              # %if.end.55
	movq	-16(%rbp), %rax
	cmpq	$0, 624(%rax)
	je	.LBB30_25
# BB#24:                                # %if.then.57
	movq	-16(%rbp), %rax
	movq	624(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 624(%rax)
.LBB30_25:                              # %if.end.60
	movq	-16(%rbp), %rax
	cmpq	$0, 632(%rax)
	je	.LBB30_27
# BB#26:                                # %if.then.62
	movq	-16(%rbp), %rax
	movq	632(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 632(%rax)
.LBB30_27:                              # %if.end.65
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	$0, 128(%rcx)
	movq	gimp_display_shell_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_display_shell_dispose, .Lfunc_end30-gimp_display_shell_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_finalize,@function
gimp_display_shell_finalize:            # @gimp_display_shell_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB31_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB31_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB31_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB31_6:                               # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 536(%rax)
	je	.LBB31_8
# BB#7:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	536(%rax), %rdi
	callq	g_free
.LBB31_8:                               # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 544(%rax)
	je	.LBB31_10
# BB#9:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	544(%rax), %rdi
	callq	g_free
.LBB31_10:                              # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 560(%rax)
	je	.LBB31_12
# BB#11:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB31_12:                              # %if.end.22
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_display_shell_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_display_shell_finalize, .Lfunc_end31-gimp_display_shell_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_set_property,@function
gimp_display_shell_set_property:        # @gimp_display_shell_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB32_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI32_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB32_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 136(%rdi)
	jmp	.LBB32_12
.LBB32_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB32_12
.LBB32_3:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_display_shell_set_unit
	jmp	.LBB32_12
.LBB32_4:                               # %sw.bb.7
	movq	-40(%rbp), %rax
	movq	536(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 536(%rdi)
	jmp	.LBB32_12
.LBB32_5:                               # %sw.bb.10
	movq	-40(%rbp), %rax
	movq	544(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 544(%rdi)
	jmp	.LBB32_12
.LBB32_6:                               # %sw.bb.13
	movq	-40(%rbp), %rax
	cmpq	$0, 560(%rax)
	je	.LBB32_8
# BB#7:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB32_8:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 560(%rdi)
	jmp	.LBB32_12
.LBB32_9:                               # %sw.default
	jmp	.LBB32_10
.LBB32_10:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.70, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$907, %edx              # imm = 0x38B
	movabsq	$.L.str.71, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB32_12
.LBB32_12:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_display_shell_set_property, .Lfunc_end32-gimp_display_shell_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_1
	.quad	.LBB32_2
	.quad	.LBB32_3
	.quad	.LBB32_4
	.quad	.LBB32_5
	.quad	.LBB32_6

	.text
	.align	16, 0x90
	.type	gimp_display_shell_get_property,@function
gimp_display_shell_get_property:        # @gimp_display_shell_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB33_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI33_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB33_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB33_10
.LBB33_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB33_10
.LBB33_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	184(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB33_10
.LBB33_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	536(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB33_10
.LBB33_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	544(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB33_10
.LBB33_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB33_10
.LBB33_7:                               # %sw.default
	jmp	.LBB33_8
.LBB33_8:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.70, %rdi
	movabsq	$.L.str.31, %rsi
	movl	$942, %edx              # imm = 0x3AE
	movabsq	$.L.str.71, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB33_10
.LBB33_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_display_shell_get_property, .Lfunc_end33-gimp_display_shell_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI33_0:
	.quad	.LBB33_1
	.quad	.LBB33_2
	.quad	.LBB33_3
	.quad	.LBB33_4
	.quad	.LBB33_5
	.quad	.LBB33_6

	.text
	.align	16, 0x90
	.type	gimp_display_shell_unrealize,@function
gimp_display_shell_unrealize:           # @gimp_display_shell_unrealize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 624(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	624(%rax), %rdi
	callq	gtk_widget_unrealize
.LBB34_2:                               # %if.end
	movq	gimp_display_shell_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_display_shell_unrealize, .Lfunc_end34-gimp_display_shell_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_screen_changed,@function
gimp_display_shell_screen_changed:      # @gimp_display_shell_screen_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_display_shell_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 656(%rax)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	gimp_display_shell_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	656(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB35_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$0, 512(%rax)
	je	.LBB35_4
# BB#3:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	-24(%rbp), %rdi
	addq	$216, %rdi
	movq	-24(%rbp), %rcx
	addq	$224, %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	gimp_get_screen_resolution
	jmp	.LBB35_5
.LBB35_4:                               # %if.else
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movsd	504(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 224(%rax)
.LBB35_5:                               # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_display_shell_screen_changed, .Lfunc_end35-gimp_display_shell_screen_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_popup_menu,@function
gimp_display_shell_popup_menu:          # @gimp_display_shell_popup_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_display
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_display_shell_menu_position, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_display_shell_popup_menu, .Lfunc_end36-gimp_display_shell_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_real_scaled,@function
gimp_display_shell_real_scaled:         # @gimp_display_shell_real_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 128(%rdi)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	jmp	.LBB37_4
.LBB37_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_title_update
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_get_user_context
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_context_get_display
	movq	-24(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB37_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB37_4:                               # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_display_shell_real_scaled, .Lfunc_end37-gimp_display_shell_real_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_remove_overlay,@function
gimp_display_shell_remove_overlay:      # @gimp_display_shell_remove_overlay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	320(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_list_remove
	movq	-24(%rbp), %rdx
	movq	%rax, 320(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_display_shell_remove_overlay, .Lfunc_end38-gimp_display_shell_remove_overlay
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_zoom_button_callback,@function
gimp_display_shell_zoom_button_callback: # @gimp_display_shell_zoom_button_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-8(%rbp), %rsi
	movl	%eax, 696(%rsi)
	movq	-8(%rbp), %rsi
	cmpl	$0, 696(%rsi)
	je	.LBB39_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_display_shell_scale_image_is_within_viewport
	cmpl	$0, %eax
	je	.LBB39_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_scale_fit_in
.LBB39_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_display_shell_zoom_button_callback, .Lfunc_end39-gimp_display_shell_zoom_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
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
	je	.LBB40_2
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
.LBB40_2:                               # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end40:
	.size	g_warning, .Lfunc_end40-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_menu_position,@function
gimp_display_shell_menu_position:       # @gimp_display_shell_menu_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_button_menu_position
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_display_shell_menu_position, .Lfunc_end41-gimp_display_shell_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_get_icc_profile,@function
gimp_display_shell_get_icc_profile:     # @gimp_display_shell_get_icc_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_managed_get_icc_profile
	movq	%rax, -8(%rbp)
	jmp	.LBB42_3
.LBB42_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB42_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_display_shell_get_icc_profile, .Lfunc_end42-gimp_display_shell_get_icc_profile
	.cfi_endproc

	.type	gimp_display_shell_get_type.g_define_type_id__volatile,@object # @gimp_display_shell_get_type.g_define_type_id__volatile
	.local	gimp_display_shell_get_type.g_define_type_id__volatile
	.comm	gimp_display_shell_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDisplayShell"
	.size	.L.str, 17

	.type	gimp_display_shell_get_type.g_implement_interface_info,@object # @gimp_display_shell_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_display_shell_get_type.g_implement_interface_info:
	.quad	gimp_display_shell_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_display_shell_get_type.g_implement_interface_info, 24

	.type	gimp_display_shell_get_type.g_implement_interface_info.1,@object # @gimp_display_shell_get_type.g_implement_interface_info.1
	.align	8
gimp_display_shell_get_type.g_implement_interface_info.1:
	.quad	gimp_color_managed_iface_init
	.quad	0
	.quad	0
	.size	gimp_display_shell_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Display"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_display_shell_new,@object # @__func__.gimp_display_shell_new
.L__func__.gimp_display_shell_new:
	.asciz	"gimp_display_shell_new"
	.size	.L__func__.gimp_display_shell_new, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_UI_MANAGER (popup_manager)"
	.size	.L.str.4, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"popup-manager"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"display"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"unit"
	.size	.L.str.7, 5

	.type	.L__func__.gimp_display_shell_add_overlay,@object # @__func__.gimp_display_shell_add_overlay
.L__func__.gimp_display_shell_add_overlay:
	.asciz	"gimp_display_shell_add_overlay"
	.size	.L__func__.gimp_display_shell_add_overlay, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GTK_IS_WIDGET (shell)"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image-coords-overlay"
	.size	.L.str.10, 21

	.type	.L__func__.gimp_display_shell_move_overlay,@object # @__func__.gimp_display_shell_move_overlay
.L__func__.gimp_display_shell_move_overlay:
	.asciz	"gimp_display_shell_move_overlay"
	.size	.L__func__.gimp_display_shell_move_overlay, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"overlay != NULL"
	.size	.L.str.11, 16

	.type	.L__func__.gimp_display_shell_get_window,@object # @__func__.gimp_display_shell_get_window
.L__func__.gimp_display_shell_get_window:
	.asciz	"gimp_display_shell_get_window"
	.size	.L__func__.gimp_display_shell_get_window, 30

	.type	.L__func__.gimp_display_shell_get_statusbar,@object # @__func__.gimp_display_shell_get_statusbar
.L__func__.gimp_display_shell_get_statusbar:
	.asciz	"gimp_display_shell_get_statusbar"
	.size	.L__func__.gimp_display_shell_get_statusbar, 33

	.type	.L__func__.gimp_display_shell_present,@object # @__func__.gimp_display_shell_present
.L__func__.gimp_display_shell_present:
	.asciz	"gimp_display_shell_present"
	.size	.L__func__.gimp_display_shell_present, 27

	.type	.L__func__.gimp_display_shell_reconnect,@object # @__func__.gimp_display_shell_reconnect
.L__func__.gimp_display_shell_reconnect:
	.asciz	"gimp_display_shell_reconnect"
	.size	.L__func__.gimp_display_shell_reconnect, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_DISPLAY (shell->display)"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp_display_get_image (shell->display) != NULL"
	.size	.L.str.13, 48

	.type	display_shell_signals,@object # @display_shell_signals
	.local	display_shell_signals
	.comm	display_shell_signals,12,4
	.type	.L__func__.gimp_display_shell_empty,@object # @__func__.gimp_display_shell_empty
.L__func__.gimp_display_shell_empty:
	.asciz	"gimp_display_shell_empty"
	.size	.L__func__.gimp_display_shell_empty, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp_display_get_image (shell->display) == NULL"
	.size	.L.str.14, 48

	.type	.L__func__.gimp_display_shell_fill,@object # @__func__.gimp_display_shell_fill
.L__func__.gimp_display_shell_fill:
	.asciz	"gimp_display_shell_fill"
	.size	.L__func__.gimp_display_shell_fill, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.15, 22

	.type	.L__func__.gimp_display_shell_scale_changed,@object # @__func__.gimp_display_shell_scale_changed
.L__func__.gimp_display_shell_scale_changed:
	.asciz	"gimp_display_shell_scale_changed"
	.size	.L__func__.gimp_display_shell_scale_changed, 33

	.type	.L__func__.gimp_display_shell_scaled,@object # @__func__.gimp_display_shell_scaled
.L__func__.gimp_display_shell_scaled:
	.asciz	"gimp_display_shell_scaled"
	.size	.L__func__.gimp_display_shell_scaled, 26

	.type	.L__func__.gimp_display_shell_scrolled,@object # @__func__.gimp_display_shell_scrolled
.L__func__.gimp_display_shell_scrolled:
	.asciz	"gimp_display_shell_scrolled"
	.size	.L__func__.gimp_display_shell_scrolled, 28

	.type	.L__func__.gimp_display_shell_set_unit,@object # @__func__.gimp_display_shell_set_unit
.L__func__.gimp_display_shell_set_unit:
	.asciz	"gimp_display_shell_set_unit"
	.size	.L__func__.gimp_display_shell_set_unit, 28

	.type	.L__func__.gimp_display_shell_get_unit,@object # @__func__.gimp_display_shell_get_unit
.L__func__.gimp_display_shell_get_unit:
	.asciz	"gimp_display_shell_get_unit"
	.size	.L__func__.gimp_display_shell_get_unit, 28

	.type	.L__func__.gimp_display_shell_snap_coords,@object # @__func__.gimp_display_shell_snap_coords
.L__func__.gimp_display_shell_snap_coords:
	.asciz	"gimp_display_shell_snap_coords"
	.size	.L__func__.gimp_display_shell_snap_coords, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"coords != NULL"
	.size	.L.str.16, 15

	.type	.L__func__.gimp_display_shell_mask_bounds,@object # @__func__.gimp_display_shell_mask_bounds
.L__func__.gimp_display_shell_mask_bounds:
	.asciz	"gimp_display_shell_mask_bounds"
	.size	.L__func__.gimp_display_shell_mask_bounds, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"x1 != NULL"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"y1 != NULL"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"x2 != NULL"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"y2 != NULL"
	.size	.L.str.20, 11

	.type	.L__func__.gimp_display_shell_flush,@object # @__func__.gimp_display_shell_flush
.L__func__.gimp_display_shell_flush:
	.asciz	"gimp_display_shell_flush"
	.size	.L__func__.gimp_display_shell_flush, 25

	.type	.L__func__.gimp_display_shell_pause,@object # @__func__.gimp_display_shell_pause
.L__func__.gimp_display_shell_pause:
	.asciz	"gimp_display_shell_pause"
	.size	.L__func__.gimp_display_shell_pause, 25

	.type	.L__func__.gimp_display_shell_resume,@object # @__func__.gimp_display_shell_resume
.L__func__.gimp_display_shell_resume:
	.asciz	"gimp_display_shell_resume"
	.size	.L__func__.gimp_display_shell_resume, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"shell->paused_count > 0"
	.size	.L.str.21, 24

	.type	.L__func__.gimp_display_shell_set_highlight,@object # @__func__.gimp_display_shell_set_highlight
.L__func__.gimp_display_shell_set_highlight:
	.asciz	"gimp_display_shell_set_highlight"
	.size	.L__func__.gimp_display_shell_set_highlight, 33

	.type	.L__func__.gimp_display_shell_set_mask,@object # @__func__.gimp_display_shell_set_mask
.L__func__.gimp_display_shell_set_mask:
	.asciz	"gimp_display_shell_set_mask"
	.size	.L__func__.gimp_display_shell_set_mask, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"mask == NULL || (GIMP_IS_DRAWABLE (mask) && gimp_drawable_bytes (mask) == 1)"
	.size	.L.str.22, 77

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"mask == NULL || color != NULL"
	.size	.L.str.23, 30

	.type	gimp_display_shell_parent_class,@object # @gimp_display_shell_parent_class
	.local	gimp_display_shell_parent_class
	.comm	gimp_display_shell_parent_class,8,8
	.type	GimpDisplayShell_private_offset,@object # @GimpDisplayShell_private_offset
	.local	GimpDisplayShell_private_offset
	.comm	GimpDisplayShell_private_offset,4,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"scaled"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"scrolled"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"reconnect"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"title"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"status"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"icon"
	.size	.L.str.30, 5

	.type	display_rc_style,@object # @display_rc_style
	.section	.rodata,"a",@progbits
	.align	16
display_rc_style:
	.asciz	"style \"check-button-style\"\n{\n  GtkToggleButton::child-displacement-x = 0\n  GtkToggleButton::child-displacement-y = 0\n}\nwidget \"*\" style \"check-button-style\""
	.size	display_rc_style, 157

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"gimpdisplayshell.c"
	.size	.L.str.31, 19

	.type	.L__func__.gimp_display_shell_constructed,@object # @__func__.gimp_display_shell_constructed
.L__func__.gimp_display_shell_constructed:
	.asciz	"gimp_display_shell_constructed"
	.size	.L__func__.gimp_display_shell_constructed, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_IS_UI_MANAGER (shell->popup_manager)"
	.size	.L.str.32, 42

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-menu-right"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"button-press-event"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Access the image menu"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-image-window-origin"
	.size	.L.str.36, 25

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"remove"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-image-window-ruler"
	.size	.L.str.38, 24

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"realize"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"size-allocate"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"expose-event"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"enter-notify-event"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"leave-notify-event"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"proximity-in-event"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"proximity-out-event"
	.size	.L.str.45, 20

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"focus-in-event"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"focus-out-event"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"button-release-event"
	.size	.L.str.48, 21

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"scroll-event"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"motion-notify-event"
	.size	.L.str.50, 20

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"key-press-event"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"key-release-event"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"draw-indicator"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"relief"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"width-request"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"height-request"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-zoom-follow-window"
	.size	.L.str.57, 24

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Zoom image when window size changes"
	.size	.L.str.58, 36

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-image-window-zoom-follow-button"
	.size	.L.str.59, 37

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"toggled"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-quick-mask-off"
	.size	.L.str.61, 20

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"quick-mask"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"quick-mask-toggle"
	.size	.L.str.63, 18

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Toggle Quick Mask"
	.size	.L.str.64, 18

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-image-window-quick-mask-button"
	.size	.L.str.65, 36

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-navigation"
	.size	.L.str.66, 16

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Navigate the image display"
	.size	.L.str.67, 27

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-image-window-nav-button"
	.size	.L.str.68, 29

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-image-window-status-bar"
	.size	.L.str.69, 29

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.70, 54

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"property"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/dummy-menubar/image-popup"
	.size	.L.str.72, 27

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"stroke"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"hover"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"zoomed"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimp-image-window"
	.size	.L.str.76, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
