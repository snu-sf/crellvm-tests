	.text
	.file	"gimpnavigationeditor.bc"
	.globl	gimp_navigation_editor_get_type
	.align	16, 0x90
	.type	gimp_navigation_editor_get_type,@function
gimp_navigation_editor_get_type:        # @gimp_navigation_editor_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_navigation_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_navigation_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_navigation_editor_class_intern_init, %rdi
	movl	$232, %r8d
	movabsq	$gimp_navigation_editor_init, %rcx
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
	callq	gimp_docked_interface_get_type
	movabsq	$gimp_navigation_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_navigation_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_navigation_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_navigation_editor_get_type, .Lfunc_end0-gimp_navigation_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_class_intern_init,@function
gimp_navigation_editor_class_intern_init: # @gimp_navigation_editor_class_intern_init
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
	movq	%rax, gimp_navigation_editor_parent_class
	cmpl	$0, GimpNavigationEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpNavigationEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_navigation_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_navigation_editor_class_intern_init, .Lfunc_end1-gimp_navigation_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_init,@function
gimp_navigation_editor_init:            # @gimp_navigation_editor_init
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 224(%rdi)
	movq	%rcx, %rdi
	callq	gtk_frame_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_navigation_view_get_type
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$32, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_view_new_by_types
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_navigation_editor_marker_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_navigation_editor_zoom, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_navigation_editor_scroll, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_navigation_editor_init, .Lfunc_end2-gimp_navigation_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_docked_iface_init,@function
gimp_navigation_editor_docked_iface_init: # @gimp_navigation_editor_docked_iface_init
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
	movabsq	$gimp_navigation_editor_set_context, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_navigation_editor_docked_iface_init, .Lfunc_end3-gimp_navigation_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_navigation_editor_new
	.align	16, 0x90
	.type	gimp_navigation_editor_new,@function
gimp_navigation_editor_new:             # @gimp_navigation_editor_new
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
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_navigation_editor_new_private
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_navigation_editor_new, .Lfunc_end4-gimp_navigation_editor_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4602678819172646912    # double -8
.LCPI5_1:
	.quad	4620693217682128896     # double 8
.LCPI5_2:
	.quad	4602678819172646912     # double 0.5
.LCPI5_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_navigation_editor_new_private,@function
gimp_navigation_editor_new_private:     # @gimp_navigation_editor_new_private
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_9
.LBB5_4:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_7
# BB#6:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_8:                                # %if.end
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_11
.LBB5_10:                               # %if.then.9
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_new_private, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_36
.LBB5_12:                               # %if.end.11
	jmp	.LBB5_13
.LBB5_13:                               # %do.end
	jmp	.LBB5_14
.LBB5_14:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB5_23
# BB#15:                                # %lor.lhs.false.14
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.23
	movl	$0, -76(%rbp)
	jmp	.LBB5_22
.LBB5_17:                               # %if.else.24
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true.27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.31
	movl	$1, -76(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.32
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_21:                               # %if.end.34
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.35
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_24
.LBB5_23:                               # %if.then.38
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_new_private, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_36
.LBB5_25:                               # %if.end.40
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.41
	jmp	.LBB5_27
.LBB5_27:                               # %do.body.42
	cmpq	$0, -16(%rbp)
	jne	.LBB5_29
# BB#28:                                # %lor.lhs.false.44
	cmpq	$0, -24(%rbp)
	je	.LBB5_30
.LBB5_29:                               # %if.then.46
	jmp	.LBB5_31
.LBB5_30:                               # %if.else.47
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_new_private, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_36
.LBB5_31:                               # %if.end.48
	jmp	.LBB5_32
.LBB5_32:                               # %do.end.49
	cmpq	$0, -24(%rbp)
	je	.LBB5_34
# BB#33:                                # %if.then.51
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_navigation_editor_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-96(%rbp), %rax
	imull	$3, 516(%rax), %esi
	movq	-104(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	callq	gimp_view_renderer_set_size
	movq	-104(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_renderer_set_context
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_navigation_editor_set_shell
	jmp	.LBB5_35
.LBB5_34:                               # %if.else.66
	callq	gimp_navigation_editor_get_type
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.23, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movl	$96, %r10d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	movl	%r10d, %esi
	movl	%r10d, %edx
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_expand
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.26, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-32(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.27, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-32(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.28, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-32(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-32(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	xorl	%edi, %edi
	movl	$6, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, 216(%rcx)
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_end
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_3, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movsd	-208(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_navigation_editor_zoom_adj_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r11
	movq	%rax, 168(%r11)
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	168(%rcx), %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_scale_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rdi
	callq	gtk_label_new
	movq	-32(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$7, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_width_chars
	movq	-120(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show
.LBB5_35:                               # %if.end.115
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_set_background
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB5_36:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_navigation_editor_new_private, .Lfunc_end5-gimp_navigation_editor_new_private
	.cfi_endproc

	.globl	gimp_navigation_editor_popup
	.align	16, 0x90
	.type	gimp_navigation_editor_popup,@function
gimp_navigation_editor_popup:           # @gimp_navigation_editor_popup
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.4
	movl	$1, -100(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.5
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.7
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.9
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_popup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_52
.LBB6_11:                               # %if.end.11
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.12
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.21
	movl	$0, -124(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.22
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.25
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.29
	movl	$1, -124(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.30
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB6_19:                               # %if.end.32
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.33
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.36
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_popup, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_52
.LBB6_23:                               # %if.end.38
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.39
	movq	-8(%rbp), %rax
	cmpq	$0, 624(%rax)
	jne	.LBB6_26
# BB#25:                                # %if.then.41
	movl	$1, %edi
	callq	gtk_window_new
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-8(%rbp), %rcx
	movq	%rax, 624(%rcx)
	callq	gtk_frame_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_navigation_editor_new_private
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_navigation_editor_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_navigation_editor_button_release, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB6_27
.LBB6_26:                               # %if.else.62
	movq	-8(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_navigation_editor_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
.LBB6_27:                               # %if.end.73
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	-48(%rbp), %rdi
	callq	gimp_navigation_view_get_local_marker
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin
	movl	-148(%rbp), %r9d
	addl	-20(%rbp), %r9d
	movl	%r9d, -172(%rbp)
	movl	-152(%rbp), %r9d
	addl	-24(%rbp), %r9d
	movl	%r9d, -176(%rbp)
	movq	-32(%rbp), %rcx
	movl	536(%rcx), %r9d
	shll	$1, %r9d
	movl	%r9d, -164(%rbp)
	movq	-32(%rbp), %rcx
	movl	540(%rcx), %r9d
	shll	$1, %r9d
	movl	%r9d, -168(%rbp)
	movq	-48(%rbp), %rcx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movl	48(%rax), %r9d
	movl	-164(%rbp), %r10d
	shll	$1, %r10d
	subl	%r10d, %r9d
	movl	%r9d, -156(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	movq	112(%rax), %rax
	movl	52(%rax), %r10d
	movl	-168(%rbp), %r11d
	shll	$1, %r11d
	subl	%r11d, %r10d
	movl	%r10d, -160(%rbp)
	movl	-172(%rbp), %r10d
	subl	-164(%rbp), %r10d
	subl	-68(%rbp), %r10d
	movl	-76(%rbp), %eax
	cltd
	idivl	%r9d
	subl	%eax, %r10d
	movl	%r10d, -60(%rbp)
	movl	-176(%rbp), %eax
	subl	-168(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	-80(%rbp), %r10d
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r9d
	movl	-316(%rbp), %r9d        # 4-byte Reload
	subl	%eax, %r9d
	movl	%r9d, -64(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jle	.LBB6_29
# BB#28:                                # %cond.true
	movl	-172(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB6_33
.LBB6_29:                               # %cond.false
	movl	-60(%rbp), %eax
	movl	-172(%rbp), %ecx
	subl	-156(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_31
# BB#30:                                # %cond.true.111
	movl	-172(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB6_32
.LBB6_31:                               # %cond.false.113
	movl	-60(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB6_32:                               # %cond.end
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB6_33:                               # %cond.end.114
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB6_35
# BB#34:                                # %cond.true.117
	movl	-176(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB6_39
.LBB6_35:                               # %cond.false.118
	movl	-64(%rbp), %eax
	movl	-176(%rbp), %ecx
	subl	-160(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_37
# BB#36:                                # %cond.true.121
	movl	-176(%rbp), %eax
	subl	-160(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB6_38
.LBB6_37:                               # %cond.false.123
	movl	-64(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB6_38:                               # %cond.end.124
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB6_39:                               # %cond.end.126
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	gdk_screen_get_width
	subl	-156(%rbp), %eax
	movl	-336(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB6_41
# BB#40:                                # %cond.true.131
	movq	-56(%rbp), %rdi
	callq	gdk_screen_get_width
	subl	-156(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB6_45
.LBB6_41:                               # %cond.false.134
	cmpl	$0, -60(%rbp)
	jge	.LBB6_43
# BB#42:                                # %cond.true.136
	xorl	%eax, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB6_44
.LBB6_43:                               # %cond.false.137
	movl	-60(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB6_44:                               # %cond.end.138
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB6_45:                               # %cond.end.140
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	gdk_screen_get_height
	subl	-160(%rbp), %eax
	movl	-348(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB6_47
# BB#46:                                # %cond.true.145
	movq	-56(%rbp), %rdi
	callq	gdk_screen_get_height
	subl	-160(%rbp), %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB6_51
.LBB6_47:                               # %cond.false.148
	cmpl	$0, -64(%rbp)
	jge	.LBB6_49
# BB#48:                                # %cond.true.150
	xorl	%eax, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB6_50
.LBB6_49:                               # %cond.false.151
	movl	-64(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB6_50:                               # %cond.end.152
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB6_51:                               # %cond.end.154
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rcx
	movq	624(%rcx), %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_move
	movq	-8(%rbp), %rax
	movq	624(%rax), %rdi
	callq	gtk_widget_show
	callq	gdk_flush
	movl	$2, %edx
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %eax
	movl	%edx, -372(%rbp)        # 4-byte Spill
	cltd
	movl	-372(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-80(%rbp), %r8d
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movl	-376(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_navigation_view_set_motion_offset
	movq	-48(%rbp), %rdi
	callq	gimp_navigation_view_grab_pointer
.LBB6_52:                               # %return
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_navigation_editor_popup, .Lfunc_end6-gimp_navigation_editor_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_button_release,@function
gimp_navigation_editor_button_release:  # @gimp_navigation_editor_button_release
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$1, 52(%rdx)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	624(%rax), %rdi
	callq	gtk_widget_hide
.LBB7_2:                                # %if.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_navigation_editor_button_release, .Lfunc_end7-gimp_navigation_editor_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_class_init,@function
gimp_navigation_editor_class_init:      # @gimp_navigation_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_navigation_editor_dispose, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_navigation_editor_class_init, .Lfunc_end8-gimp_navigation_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_dispose,@function
gimp_navigation_editor_dispose:         # @gimp_navigation_editor_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_navigation_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_navigation_editor_set_shell
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 224(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movl	224(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 224(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB9_4:                                # %if.end.7
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_navigation_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_navigation_editor_dispose, .Lfunc_end9-gimp_navigation_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_set_shell,@function
gimp_navigation_editor_set_shell:       # @gimp_navigation_editor_set_shell
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_navigation_editor_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_set_shell, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_37
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB10_21
.LBB10_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB10_20
.LBB10_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_20:                              # %if.end.32
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_23
.LBB10_22:                              # %if.then.36
	jmp	.LBB10_24
.LBB10_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_set_shell, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_37
.LBB10_24:                              # %if.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	144(%rcx), %rax
	jne	.LBB10_27
# BB#26:                                # %if.then.42
	jmp	.LBB10_37
.LBB10_27:                              # %if.end.43
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB10_29
# BB#28:                                # %if.then.46
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_navigation_editor_shell_scaled, %rdx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_navigation_editor_shell_scrolled, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_navigation_editor_shell_reconnect, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB10_32
.LBB10_29:                              # %if.else.53
	cmpq	$0, -16(%rbp)
	je	.LBB10_31
# BB#30:                                # %if.then.55
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
.LBB10_31:                              # %if.end.58
	jmp	.LBB10_32
.LBB10_32:                              # %if.end.59
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB10_34
# BB#33:                                # %if.then.63
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_navigation_editor_shell_scaled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_navigation_editor_shell_scrolled, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_navigation_editor_shell_reconnect, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_navigation_editor_shell_scaled
	jmp	.LBB10_35
.LBB10_34:                              # %if.else.77
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
.LBB10_35:                              # %if.end.83
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	cmpq	$0, %rax
	je	.LBB10_37
# BB#36:                                # %if.then.88
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-8(%rbp), %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB10_37:                              # %if.end.95
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_navigation_editor_set_shell, .Lfunc_end10-gimp_navigation_editor_set_shell
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4604418534313441775     # double 0.69314718055994529
	.text
	.align	16, 0x90
	.type	gimp_navigation_editor_shell_scaled,@function
gimp_navigation_editor_shell_scaled:    # @gimp_navigation_editor_shell_scaled
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 160(%rsi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rsi
	leaq	-24(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	callq	log
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_navigation_editor_zoom_adj_changed, %rax
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_navigation_editor_zoom_adj_changed, %rdi
	movq	-16(%rbp), %r9
	movq	168(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB11_4:                               # %if.end.13
	movq	-16(%rbp), %rdi
	callq	gimp_navigation_editor_update_marker
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	cmpq	$0, %rax
	je	.LBB11_6
# BB#5:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-16(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB11_6:                               # %if.end.25
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_navigation_editor_shell_scaled, .Lfunc_end11-gimp_navigation_editor_shell_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_shell_scrolled,@function
gimp_navigation_editor_shell_scrolled:  # @gimp_navigation_editor_shell_scrolled
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
	movq	-16(%rbp), %rdi
	callq	gimp_navigation_editor_update_marker
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	cmpq	$0, %rax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-16(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB12_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_navigation_editor_shell_scrolled, .Lfunc_end12-gimp_navigation_editor_shell_scrolled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_shell_reconnect,@function
gimp_navigation_editor_shell_reconnect: # @gimp_navigation_editor_shell_reconnect
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	cmpq	$0, %rax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-16(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB13_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_navigation_editor_shell_reconnect, .Lfunc_end13-gimp_navigation_editor_shell_reconnect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_zoom_adj_changed,@function
gimp_navigation_editor_zoom_adj_changed: # @gimp_navigation_editor_zoom_adj_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 224(%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	224(%rax), %edi
	callq	g_source_remove
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_navigation_editor_zoom_adj_changed_timeout, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-16(%rbp), %rdx
	movl	%eax, 224(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_navigation_editor_zoom_adj_changed, .Lfunc_end14-gimp_navigation_editor_zoom_adj_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_update_marker,@function
gimp_navigation_editor_update_marker:   # @gimp_navigation_editor_update_marker
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movb	60(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	cmpl	232(%rax), %edx
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	232(%rax), %esi
	callq	gimp_view_renderer_set_dot_for_dot
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scroll_get_viewport
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_navigation_view_set_marker
.LBB15_4:                               # %if.end.11
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_navigation_editor_update_marker, .Lfunc_end15-gimp_navigation_editor_update_marker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_navigation_editor_zoom_adj_changed_timeout,@function
gimp_navigation_editor_zoom_adj_changed_timeout: # @gimp_navigation_editor_zoom_adj_changed_timeout
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_navigation_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movl	$6, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	gimp_display_shell_scale
.LBB16_2:                               # %if.end
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	$0, 224(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_navigation_editor_zoom_adj_changed_timeout, .Lfunc_end16-gimp_navigation_editor_zoom_adj_changed_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_set_context,@function
gimp_navigation_editor_set_context:     # @gimp_navigation_editor_set_context
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_navigation_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_navigation_editor_display_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_navigation_editor_display_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_display
	movq	%rax, -32(%rbp)
.LBB17_4:                               # %if.end.11
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_set_context
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_navigation_editor_display_changed
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_navigation_editor_set_context, .Lfunc_end17-gimp_navigation_editor_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_display_changed,@function
gimp_navigation_editor_display_changed: # @gimp_navigation_editor_display_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
.LBB18_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_navigation_editor_set_shell
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_navigation_editor_display_changed, .Lfunc_end18-gimp_navigation_editor_display_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_navigation_editor_marker_changed,@function
gimp_navigation_editor_marker_changed:  # @gimp_navigation_editor_marker_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rsi
	cmpq	$0, 144(%rsi)
	je	.LBB19_4
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB19_3
# BB#2:                                 # %if.then.3
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_display_shell_scroll_center_image_coordinate
.LBB19_3:                               # %if.end
	jmp	.LBB19_4
.LBB19_4:                               # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_navigation_editor_marker_changed, .Lfunc_end19-gimp_navigation_editor_marker_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_editor_zoom,@function
gimp_navigation_editor_zoom:            # @gimp_navigation_editor_zoom
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$6, -12(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_editor_zoom, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_9
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB20_9
# BB#6:                                 # %if.then.1
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB20_8
# BB#7:                                 # %if.then.4
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_display_shell_scale
.LBB20_8:                               # %if.end.6
	jmp	.LBB20_9
.LBB20_9:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_navigation_editor_zoom, .Lfunc_end20-gimp_navigation_editor_zoom
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_navigation_editor_scroll,@function
gimp_navigation_editor_scroll:          # @gimp_navigation_editor_scroll
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 144(%rdx)
	je	.LBB21_19
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jb	.LBB21_3
	jmp	.LBB21_20
.LBB21_20:                              # %if.then
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB21_4
	jmp	.LBB21_2
.LBB21_2:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	336(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB21_4
.LBB21_3:                               # %sw.bb.2
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	344(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB21_4:                               # %sw.epilog
	jmp	.LBB21_5
.LBB21_5:                               # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB21_7
# BB#6:                                 # %if.then.4
	jmp	.LBB21_8
.LBB21_7:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$578, %edx              # imm = 0x242
	movabsq	$.L__func__.gimp_navigation_editor_scroll, %rcx
	movabsq	$.L.str.17, %r8
	callq	g_assertion_message_expr
.LBB21_8:                               # %if.end
	jmp	.LBB21_9
.LBB21_9:                               # %do.end
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$3, %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	ja	.LBB21_12
# BB#21:                                # %do.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_10:                              # %sw.bb.5
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB21_12
.LBB21_11:                              # %sw.bb.7
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB21_12:                              # %sw.epilog.10
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_14
# BB#13:                                # %cond.true
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB21_18
.LBB21_14:                              # %cond.false
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_16
# BB#15:                                # %cond.true.20
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB21_17
.LBB21_16:                              # %cond.false.22
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB21_17:                              # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB21_18:                              # %cond.end.23
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB21_19:                              # %if.end.25
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_navigation_editor_scroll, .Lfunc_end21-gimp_navigation_editor_scroll
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_10
	.quad	.LBB21_11
	.quad	.LBB21_10
	.quad	.LBB21_11

	.type	gimp_navigation_editor_get_type.g_define_type_id__volatile,@object # @gimp_navigation_editor_get_type.g_define_type_id__volatile
	.local	gimp_navigation_editor_get_type.g_define_type_id__volatile
	.comm	gimp_navigation_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpNavigationEditor"
	.size	.L.str, 21

	.type	gimp_navigation_editor_get_type.g_implement_interface_info,@object # @gimp_navigation_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_navigation_editor_get_type.g_implement_interface_info:
	.quad	gimp_navigation_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_navigation_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_navigation_editor_popup,@object # @__func__.gimp_navigation_editor_popup
.L__func__.gimp_navigation_editor_popup:
	.asciz	"gimp_navigation_editor_popup"
	.size	.L__func__.gimp_navigation_editor_popup, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"button-release-event"
	.size	.L.str.4, 21

	.type	gimp_navigation_editor_parent_class,@object # @gimp_navigation_editor_parent_class
	.local	gimp_navigation_editor_parent_class
	.comm	gimp_navigation_editor_parent_class,8,8
	.type	GimpNavigationEditor_private_offset,@object # @GimpNavigationEditor_private_offset
	.local	GimpNavigationEditor_private_offset
	.comm	GimpNavigationEditor_private_offset,4,4
	.type	.L__func__.gimp_navigation_editor_set_shell,@object # @__func__.gimp_navigation_editor_set_shell
.L__func__.gimp_navigation_editor_set_shell:
	.asciz	"gimp_navigation_editor_set_shell"
	.size	.L__func__.gimp_navigation_editor_set_shell, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_NAVIGATION_EDITOR (editor)"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"! shell || GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.6, 41

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"scaled"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"scrolled"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"reconnect"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"percentage"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"display-changed"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"marker-changed"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"zoom"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"scroll"
	.size	.L.str.14, 7

	.type	.L__func__.gimp_navigation_editor_zoom,@object # @__func__.gimp_navigation_editor_zoom
.L__func__.gimp_navigation_editor_zoom:
	.asciz	"gimp_navigation_editor_zoom"
	.size	.L__func__.gimp_navigation_editor_zoom, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"direction != GIMP_ZOOM_TO"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpnavigationeditor.c"
	.size	.L.str.16, 23

	.type	.L__func__.gimp_navigation_editor_scroll,@object # @__func__.gimp_navigation_editor_scroll
.L__func__.gimp_navigation_editor_scroll:
	.asciz	"gimp_navigation_editor_scroll"
	.size	.L__func__.gimp_navigation_editor_scroll, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"adj != NULL"
	.size	.L.str.17, 12

	.type	.L__func__.gimp_navigation_editor_new_private,@object # @__func__.gimp_navigation_editor_new_private
.L__func__.gimp_navigation_editor_new_private:
	.asciz	"gimp_navigation_editor_new_private"
	.size	.L__func__.gimp_navigation_editor_new_private, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"menu_factory == NULL || GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.18, 60

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"shell == NULL || GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.19, 47

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"menu_factory || shell"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"menu-factory"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"menu-identifier"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<NavigationEditor>"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"view"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"view-zoom-out"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"view-zoom-in"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"view-zoom-1-1"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"view-zoom-fit-in"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"view-zoom-fill"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"view-shrink-wrap"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"value-changed"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"100%"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-texture"
	.size	.L.str.33, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
