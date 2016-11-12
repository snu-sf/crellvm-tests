	.text
	.file	"gimpcontainergridview.bc"
	.globl	gimp_container_grid_view_get_type
	.align	16, 0x90
	.type	gimp_container_grid_view_get_type,@function
gimp_container_grid_view_get_type:      # @gimp_container_grid_view_get_type
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
	movq	gimp_container_grid_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_grid_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_container_grid_view_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_container_grid_view_init, %rcx
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
	callq	gimp_container_view_interface_get_type
	movabsq	$gimp_container_grid_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_grid_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_grid_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_grid_view_get_type, .Lfunc_end0-gimp_container_grid_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_class_intern_init,@function
gimp_container_grid_view_class_intern_init: # @gimp_container_grid_view_class_intern_init
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
	movq	%rax, gimp_container_grid_view_parent_class
	cmpl	$0, GimpContainerGridView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerGridView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_grid_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_grid_view_class_intern_init, .Lfunc_end1-gimp_container_grid_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_init,@function
gimp_container_grid_view_init:          # @gimp_container_grid_view_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 152(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 156(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_editor_set_show_name
	xorl	%edi, %edi
	callq	gtk_hwrap_box_new
	movl	$16, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movl	%edx, %esi
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_add_with_viewport
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_viewport_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_viewport_set_shadow_type
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_container_grid_view_viewport_resized, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_container_grid_view_button_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
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
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_can_focus
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_grid_view_init, .Lfunc_end2-gimp_container_grid_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_view_iface_init,@function
gimp_container_grid_view_view_iface_init: # @gimp_container_grid_view_view_iface_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_interface_peek_parent
	movabsq	$gimp_container_grid_view_set_view_size, %rdi
	movabsq	$gimp_container_grid_view_clear_items, %rcx
	movabsq	$gimp_container_grid_view_select_item, %rdx
	movabsq	$gimp_container_grid_view_rename_item, %rsi
	movabsq	$gimp_container_grid_view_reorder_item, %r8
	movabsq	$gimp_container_grid_view_remove_item, %r9
	movabsq	$gimp_container_grid_view_insert_item, %r10
	movabsq	$gimp_container_grid_view_set_context, %r11
	movq	%rax, parent_view_iface
	movq	-8(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%r10, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%r9, 80(%rax)
	movq	-8(%rbp), %rax
	movq	%r8, 88(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 96(%rax)
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 112(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_grid_view_view_iface_init, .Lfunc_end3-gimp_container_grid_view_view_iface_init
	.cfi_endproc

	.globl	gimp_container_grid_view_new
	.align	16, 0x90
	.type	gimp_container_grid_view_new,@function
gimp_container_grid_view_new:           # @gimp_container_grid_view_new
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
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_8:                                # %if.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_11
.LBB4_10:                               # %if.then.9
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_grid_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_12:                               # %if.end.11
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB4_23
# BB#15:                                # %lor.lhs.false.14
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.23
	movl	$0, -92(%rbp)
	jmp	.LBB4_22
.LBB4_17:                               # %if.else.24
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.27
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_20
# BB#19:                                # %if.then.31
	movl	$1, -92(%rbp)
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.32
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_21:                               # %if.end.34
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.35
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_24
.LBB4_23:                               # %if.then.38
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_grid_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_25:                               # %if.end.40
	jmp	.LBB4_26
.LBB4_26:                               # %do.end.41
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.42
	cmpl	$0, -28(%rbp)
	jle	.LBB4_30
# BB#28:                                # %land.lhs.true.44
	cmpl	$2048, -28(%rbp)        # imm = 0x800
	jg	.LBB4_30
# BB#29:                                # %if.then.46
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.47
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_grid_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_31:                               # %if.end.48
	jmp	.LBB4_32
.LBB4_32:                               # %do.end.49
	jmp	.LBB4_33
.LBB4_33:                               # %do.body.50
	cmpl	$0, -32(%rbp)
	jl	.LBB4_36
# BB#34:                                # %land.lhs.true.52
	cmpl	$16, -32(%rbp)
	jg	.LBB4_36
# BB#35:                                # %if.then.54
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.55
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_grid_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_37:                               # %if.end.56
	jmp	.LBB4_38
.LBB4_38:                               # %do.end.57
	callq	gimp_container_grid_view_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_container_view_set_view_size
	cmpq	$0, -16(%rbp)
	je	.LBB4_40
# BB#39:                                # %if.then.63
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_set_container
.LBB4_40:                               # %if.end.64
	cmpq	$0, -24(%rbp)
	je	.LBB4_42
# BB#41:                                # %if.then.66
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_set_context
.LBB4_42:                               # %if.end.67
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_43:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_grid_view_new, .Lfunc_end4-gimp_container_grid_view_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_container_grid_view_class_init,@function
gimp_container_grid_view_class_init:    # @gimp_container_grid_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_binding_set_by_class
	movabsq	$gimp_container_grid_view_move_cursor, %rsi
	movabsq	$gimp_container_grid_view_popup_menu, %rdi
	movabsq	$gimp_container_grid_view_focus, %rcx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, 328(%rax)
	movq	-56(%rbp), %rax
	movq	%rdi, 632(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 824(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_movement_step_get_type
	movabsq	$.L.str.6, %rdi
	movl	$34, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_BOOLEAN__ENUM_INT, %r9
	movl	$20, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	-88(%rbp), %r15         # 8-byte Reload
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r15, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$20, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	$65360, %esi            # imm = 0xFF50
	xorl	%edx, %edx
	movabsq	$.L.str.6, %rcx
	movl	$2, %r8d
	movl	$48, %r11d
	movl	%r11d, %r9d
	movl	$8, %r11d
	movl	$24, %r13d
	movl	%r13d, %edi
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	movl	%eax, grid_view_signals
	movq	-64(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	$8, (%rsp)
	movq	$24, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r13d, -132(%rbp)       # 4-byte Spill
	movl	%r11d, -136(%rbp)       # 4-byte Spill
	callq	gtk_binding_entry_add_signal
	movl	$65367, %esi            # imm = 0xFF57
	xorl	%edx, %edx
	movabsq	$.L.str.6, %rcx
	movl	$2, %r8d
	movl	$48, %r11d
	movl	%r11d, %r9d
	movl	$8, %r11d
	movl	$24, %r13d
	movl	%r13d, %edi
	movl	$1, %r13d
	movq	-64(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	$8, (%rsp)
	movq	$24, 8(%rsp)
	movl	$1, 16(%rsp)
	movb	$0, %al
	movl	%r13d, -148(%rbp)       # 4-byte Spill
	movl	%r11d, -152(%rbp)       # 4-byte Spill
	callq	gtk_binding_entry_add_signal
	movl	$65365, %esi            # imm = 0xFF55
	xorl	%edx, %edx
	movabsq	$.L.str.6, %rcx
	movl	$2, %r8d
	movl	$48, %r11d
	movl	%r11d, %r9d
	movl	$7, %r11d
	movl	$24, %r13d
	movl	%r13d, %edi
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	movq	-64(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	$7, (%rsp)
	movq	$24, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r13d, -164(%rbp)       # 4-byte Spill
	movl	%r11d, -168(%rbp)       # 4-byte Spill
	callq	gtk_binding_entry_add_signal
	movl	$65366, %esi            # imm = 0xFF56
	xorl	%edx, %edx
	movabsq	$.L.str.6, %rcx
	movl	$2, %r8d
	movl	$48, %r11d
	movl	%r11d, %r9d
	movl	$7, %r11d
	movl	$24, %r13d
	movl	%r13d, %edi
	movl	$1, %r13d
	movq	-64(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	$7, (%rsp)
	movq	$24, 8(%rsp)
	movl	$1, 16(%rsp)
	movb	$0, %al
	movl	%r13d, -180(%rbp)       # 4-byte Spill
	movl	%r11d, -184(%rbp)       # 4-byte Spill
	callq	gtk_binding_entry_add_signal
	movabsq	$white_color, %rdi
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-192(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$black_color, %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-200(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_grid_view_class_init, .Lfunc_end5-gimp_container_grid_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_focus,@function
gimp_container_grid_view_focus:         # @gimp_container_grid_view_focus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_can_focus
	cmpl	$0, %eax
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus
	movl	$1, -4(%rbp)
	jmp	.LBB6_10
.LBB6_3:                                # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB6_9
# BB#11:                                # %if.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_4:                                # %sw.bb
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	callq	gimp_container_grid_view_move_by
	movl	%eax, -4(%rbp)
	jmp	.LBB6_10
.LBB6_5:                                # %sw.bb.8
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_container_grid_view_move_by
	movl	%eax, -4(%rbp)
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.10
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_container_grid_view_move_by
	movl	%eax, -4(%rbp)
	jmp	.LBB6_10
.LBB6_7:                                # %sw.bb.12
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_container_grid_view_move_by
	movl	%eax, -4(%rbp)
	jmp	.LBB6_10
.LBB6_8:                                # %sw.bb.14
	jmp	.LBB6_9
.LBB6_9:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB6_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_grid_view_focus, .Lfunc_end6-gimp_container_grid_view_focus
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_8
	.quad	.LBB6_8
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7

	.text
	.align	16, 0x90
	.type	gimp_container_grid_view_popup_menu,@function
gimp_container_grid_view_popup_menu:    # @gimp_container_grid_view_popup_menu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_grid_view_menu_position, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_grid_view_popup_menu, .Lfunc_end7-gimp_container_grid_view_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_move_cursor,@function
gimp_container_grid_view_move_cursor:   # @gimp_container_grid_view_move_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	subl	$7, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_14
.LBB8_14:                               # %if.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB8_5
	jmp	.LBB8_11
.LBB8_4:                                # %sw.bb
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	160(%rcx), %eax
	movl	%eax, %edx
	callq	gimp_container_grid_view_move_by
	movl	%eax, -4(%rbp)
	jmp	.LBB8_13
.LBB8_5:                                # %sw.bb.7
	cmpl	$0, -24(%rbp)
	jge	.LBB8_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	movq	-40(%rbp), %rdi
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB8_8:                                # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_container_view_item_selected
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB8_10:                               # %if.end.14
	movl	$1, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %sw.default
	jmp	.LBB8_12
.LBB8_12:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_grid_view_move_cursor, .Lfunc_end8-gimp_container_grid_view_move_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_move_by,@function
gimp_container_grid_view_move_by:       # @gimp_container_grid_view_move_by
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_17
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB9_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rdi
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB9_8
.LBB9_4:                                # %cond.false
	cmpl	$0, -52(%rbp)
	jge	.LBB9_6
# BB#5:                                 # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false.12
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB9_7:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB9_8:                                # %cond.end.13
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	156(%rcx), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB9_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB9_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-16(%rbp), %rax
	movl	156(%rax), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB9_9
.LBB9_11:                               # %while.end
	jmp	.LBB9_12
.LBB9_12:                               # %while.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_container_get_n_children
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB9_14
# BB#13:                                # %while.body.22
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-16(%rbp), %rax
	movl	156(%rax), %ecx
	movl	-52(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB9_12
.LBB9_14:                               # %while.end.25
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.28
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_item_selected
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB9_16:                               # %if.end.32
	movl	$1, -4(%rbp)
.LBB9_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_grid_view_move_by, .Lfunc_end9-gimp_container_grid_view_move_by
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_menu_position,@function
gimp_container_grid_view_menu_position: # @gimp_container_grid_view_menu_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB10_3:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin
	movq	-48(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB10_5
# BB#4:                                 # %if.then.11
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB10_5:                               # %if.end.15
	movq	-40(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB10_7
# BB#6:                                 # %if.then.18
	movl	$2, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-16(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.22
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	536(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-72(%rbp), %rax
	movl	540(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB10_8:                               # %if.end.26
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_menu_position
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_grid_view_menu_position, .Lfunc_end10-gimp_container_grid_view_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_set_context,@function
gimp_container_grid_view_set_context:   # @gimp_container_grid_view_set_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_set_context
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_grid_view_set_context, .Lfunc_end11-gimp_container_grid_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_insert_item,@function
gimp_container_grid_view_insert_item:   # @gimp_container_grid_view_insert_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_context
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_view_new_full
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_set_border_type
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_remove_idle
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	callq	gtk_wrap_box_pack
	cmpl	$-1, -28(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_wrap_box_reorder_child
.LBB12_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_container_grid_view_item_selected, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_container_grid_view_item_activated, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_container_grid_view_item_context, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_grid_view_insert_item, .Lfunc_end12-gimp_container_grid_view_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_remove_item,@function
gimp_container_grid_view_remove_item:   # @gimp_container_grid_view_remove_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	168(%rdx), %rdx
	cmpq	%rdx, %rax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	$0, 168(%rax)
.LBB13_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_grid_view_remove_item, .Lfunc_end13-gimp_container_grid_view_remove_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_reorder_item,@function
gimp_container_grid_view_reorder_item:  # @gimp_container_grid_view_reorder_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_wrap_box_reorder_child
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_grid_view_reorder_item, .Lfunc_end14-gimp_container_grid_view_reorder_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_rename_item,@function
gimp_container_grid_view_rename_item:   # @gimp_container_grid_view_rename_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	168(%rdx), %rdx
	cmpq	%rdx, %rax
	jne	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_editor_set_name
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB15_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_grid_view_rename_item, .Lfunc_end15-gimp_container_grid_view_rename_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_select_item,@function
gimp_container_grid_view_select_item:   # @gimp_container_grid_view_select_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_container_grid_view_highlight_item
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_grid_view_select_item, .Lfunc_end16-gimp_container_grid_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_clear_items,@function
gimp_container_grid_view_clear_items:   # @gimp_container_grid_view_clear_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 120(%rax)
	je	.LBB17_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	120(%rax), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB17_1
.LBB17_3:                               # %while.end
	movq	parent_view_iface, %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_grid_view_clear_items, .Lfunc_end17-gimp_container_grid_view_clear_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_set_view_size,@function
gimp_container_grid_view_set_view_size: # @gimp_container_grid_view_set_view_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	56(%rax), %edx
	callq	gimp_view_renderer_set_size
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_queue_resize
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_grid_view_set_view_size, .Lfunc_end18-gimp_container_grid_view_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_item_selected,@function
gimp_container_grid_view_item_selected: # @gimp_container_grid_view_item_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$4, (%rdx)
	jne	.LBB19_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB19_6
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_widget_get_can_focus
	cmpl	$0, %eax
	je	.LBB19_5
# BB#3:                                 # %land.lhs.true.2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB19_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus
.LBB19_5:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	gimp_container_view_item_selected
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB19_6:                               # %if.end.13
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_grid_view_item_selected, .Lfunc_end19-gimp_container_grid_view_item_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_item_activated,@function
gimp_container_grid_view_item_activated: # @gimp_container_grid_view_item_activated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	gimp_container_view_item_activated
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_grid_view_item_activated, .Lfunc_end20-gimp_container_grid_view_item_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_item_context,@function
gimp_container_grid_view_item_context:  # @gimp_container_grid_view_item_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	gimp_container_view_item_selected
	cmpl	$0, %eax
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	gimp_container_view_item_context
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_object_unref
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_grid_view_item_context, .Lfunc_end21-gimp_container_grid_view_item_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_highlight_item,@function
gimp_container_grid_view_highlight_item: # @gimp_container_grid_view_highlight_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_grid_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
.LBB22_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB22_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB22_5
# BB#4:                                 # %if.then.9
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_set_border_type
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_update
.LBB22_5:                               # %if.end.13
	cmpq	$0, -56(%rbp)
	je	.LBB22_12
# BB#6:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_vadjustment
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movl	-60(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movq	-32(%rbp), %rsi
	cltd
	idivl	156(%rsi)
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	imull	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_8
# BB#7:                                 # %if.then.27
	movq	-72(%rbp), %rdi
	movl	-84(%rbp), %eax
	imull	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB22_11
.LBB22_8:                               # %if.else
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_10
# BB#9:                                 # %if.then.37
	movq	-72(%rbp), %rdi
	movl	-84(%rbp), %eax
	addl	$1, %eax
	imull	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-72(%rbp), %rcx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	gtk_adjustment_set_value
.LBB22_10:                              # %if.end.42
	jmp	.LBB22_11
.LBB22_11:                              # %if.end.43
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_set_border_type
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_update
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_editor_set_name
	movq	-96(%rbp), %rdi
	callq	g_free
	jmp	.LBB22_13
.LBB22_12:                              # %if.else.51
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_editor_set_name
.LBB22_13:                              # %if.end.54
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 168(%rcx)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_grid_view_highlight_item, .Lfunc_end22-gimp_container_grid_view_highlight_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_viewport_resized,@function
gimp_container_grid_view_viewport_resized: # @gimp_container_grid_view_viewport_resized
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_container
	cmpq	$0, %rax
	je	.LBB23_14
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB23_11
# BB#2:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltd
	idivl	-56(%rbp)
	cmpl	%eax, %ecx
	jle	.LBB23_4
# BB#3:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltd
	idivl	-56(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB23_5:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	cmpl	$0, %edx
	je	.LBB23_7
# BB#6:                                 # %if.then.17
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
.LBB23_7:                               # %if.end
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	152(%rcx), %eax
	jne	.LBB23_9
# BB#8:                                 # %lor.lhs.false
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	156(%rcx), %eax
	je	.LBB23_10
.LBB23_9:                               # %if.then.22
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 156(%rcx)
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rdi
	movl	-56(%rbp), %esi
	movl	-64(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
.LBB23_10:                              # %if.end.27
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cltd
	idivl	-52(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 160(%rcx)
.LBB23_11:                              # %if.end.31
	movq	-24(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB23_13
# BB#12:                                # %if.then.33
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_grid_view_highlight_item
.LBB23_13:                              # %if.end.35
	jmp	.LBB23_14
.LBB23_14:                              # %if.end.36
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_container_grid_view_viewport_resized, .Lfunc_end23-gimp_container_grid_view_viewport_resized
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_grid_view_button_press,@function
gimp_container_grid_view_button_press:  # @gimp_container_grid_view_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB24_2:                               # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_container_grid_view_button_press, .Lfunc_end24-gimp_container_grid_view_button_press
	.cfi_endproc

	.type	gimp_container_grid_view_get_type.g_define_type_id__volatile,@object # @gimp_container_grid_view_get_type.g_define_type_id__volatile
	.local	gimp_container_grid_view_get_type.g_define_type_id__volatile
	.comm	gimp_container_grid_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerGridView"
	.size	.L.str, 22

	.type	gimp_container_grid_view_get_type.g_implement_interface_info,@object # @gimp_container_grid_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_grid_view_get_type.g_implement_interface_info:
	.quad	gimp_container_grid_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_grid_view_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_container_grid_view_new,@object # @__func__.gimp_container_grid_view_new
.L__func__.gimp_container_grid_view_new:
	.asciz	"gimp_container_grid_view_new"
	.size	.L__func__.gimp_container_grid_view_new, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"container == NULL || GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 51

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	gimp_container_grid_view_parent_class,@object # @gimp_container_grid_view_parent_class
	.local	gimp_container_grid_view_parent_class
	.comm	gimp_container_grid_view_parent_class,8,8
	.type	GimpContainerGridView_private_offset,@object # @GimpContainerGridView_private_offset
	.local	GimpContainerGridView_private_offset
	.comm	GimpContainerGridView_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"move-cursor"
	.size	.L.str.6, 12

	.type	grid_view_signals,@object # @grid_view_signals
	.local	grid_view_signals
	.comm	grid_view_signals,4,4
	.type	white_color,@object     # @white_color
	.local	white_color
	.comm	white_color,32,8
	.type	black_color,@object     # @black_color
	.local	black_color
	.comm	black_color,32,8
	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"button-press-event"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"double-clicked"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"size-allocate"
	.size	.L.str.10, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
