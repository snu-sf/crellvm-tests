	.text
	.file	"gimpcomponenteditor.bc"
	.globl	gimp_component_editor_get_type
	.align	16, 0x90
	.type	gimp_component_editor_get_type,@function
gimp_component_editor_get_type:         # @gimp_component_editor_get_type
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
	movq	gimp_component_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_component_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_component_editor_class_intern_init, %rdi
	movl	$216, %r8d
	movabsq	$gimp_component_editor_init, %rcx
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
	movabsq	$gimp_component_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_component_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_component_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_component_editor_get_type, .Lfunc_end0-gimp_component_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_class_intern_init,@function
gimp_component_editor_class_intern_init: # @gimp_component_editor_class_intern_init
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
	movq	%rax, gimp_component_editor_parent_class
	cmpl	$0, GimpComponentEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpComponentEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_component_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_component_editor_class_intern_init, .Lfunc_end1-gimp_component_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_init,@function
gimp_component_editor_init:             # @gimp_component_editor_init
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
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	gtk_frame_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_view_renderer_get_type
	movl	$4, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movl	$20, %ecx
	movl	%ecx, %edx
	movl	$64, %ecx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_tree_view_set_headers_visible
	callq	gtk_tree_view_column_new
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gtk_tree_view_append_column
	movabsq	$.L.str.10, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_cell_renderer_toggle_new
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.18, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_component_editor_clicked, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_cell_renderer_viewable_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.16, %r8
	movl	$2, %r9d
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.20, %r8
	movl	$3, %r9d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-16(%rbp), %rcx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_component_editor_button_press, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_selection
	movl	$3, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$gimp_component_editor_select, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gtk_tree_selection_set_select_function
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_component_editor_drag_component, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_component_source_add
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_component_editor_init, .Lfunc_end2-gimp_component_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_docked_iface_init,@function
gimp_component_editor_docked_iface_init: # @gimp_component_editor_docked_iface_init
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
	movq	%rax, parent_docked_iface
	cmpq	$0, parent_docked_iface
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_docked_interface_get_type
	movq	%rax, %rdi
	callq	g_type_default_interface_peek
	movq	%rax, parent_docked_iface
.LBB3_2:                                # %if.end
	movabsq	$gimp_component_editor_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_component_editor_docked_iface_init, .Lfunc_end3-gimp_component_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_component_editor_new
	.align	16, 0x90
	.type	gimp_component_editor_new,@function
gimp_component_editor_new:              # @gimp_component_editor_new
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
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB4_4
# BB#2:                                 # %land.lhs.true
	cmpl	$2048, -12(%rbp)        # imm = 0x800
	jg	.LBB4_4
# BB#3:                                 # %if.then
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_component_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_19
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.end
	jmp	.LBB4_7
.LBB4_7:                                # %do.body.2
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_9
# BB#8:                                 # %if.then.3
	movl	$0, -52(%rbp)
	jmp	.LBB4_14
.LBB4_9:                                # %if.else.4
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_12
# BB#10:                                # %land.lhs.true.6
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_12
# BB#11:                                # %if.then.9
	movl	$1, -52(%rbp)
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.10
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_13:                               # %if.end.12
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.13
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_16
# BB#15:                                # %if.then.15
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_component_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_19
.LBB4_17:                               # %if.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.18
	callq	gimp_component_editor_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdx
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-24(%rbp), %r11
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_component_editor_set_view_size
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_component_editor_new, .Lfunc_end4-gimp_component_editor_new
	.cfi_endproc

	.globl	gimp_component_editor_set_view_size
	.align	16, 0x90
	.type	gimp_component_editor_set_view_size,@function
gimp_component_editor_set_view_size:    # @gimp_component_editor_set_view_size
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_component_editor_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_component_editor_set_view_size, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB5_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$2048, -12(%rbp)        # imm = 0x800
	jg	.LBB5_16
# BB#15:                                # %if.then.15
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_component_editor_set_view_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_17:                               # %if.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.18
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movabsq	$.L.str.10, %rsi
	movl	$4, %edx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	536(%rax), %r8d
	shll	$1, %r8d
	subl	%r8d, %ecx
	movl	-12(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	540(%rax), %r9d
	shll	$1, %r9d
	subl	%r9d, %r8d
	callq	gimp_get_icon_size
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movl	-36(%rbp), %edx
	movb	$0, %al
	callq	g_object_set
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -76(%rbp)
.LBB5_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB5_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB5_19 Depth=1
	leaq	-72(%rbp), %rsi
	movl	$2, %edx
	leaq	-112(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	$1, %edx
	movq	-112(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_view_renderer_set_size
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB5_19 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -76(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rdi
	callq	gtk_tree_view_columns_autosize
.LBB5_23:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_component_editor_set_view_size, .Lfunc_end5-gimp_component_editor_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_class_init,@function
gimp_component_editor_class_init:       # @gimp_component_editor_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_component_editor_set_image, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_component_editor_class_init, .Lfunc_end6-gimp_component_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_set_image,@function
gimp_component_editor_set_image:        # @gimp_component_editor_set_image
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_component_editor_clear_components
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_component_editor_mode_changed, %rdi
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-24(%rbp), %r9
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_component_editor_alpha_changed, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_component_editor_visibility_changed, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_component_editor_active_changed, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	gimp_component_editor_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	callq	gimp_component_editor_create_components
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_component_editor_mode_changed, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_component_editor_alpha_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_component_editor_visibility_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_component_editor_active_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB7_4:                                # %if.end.24
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_component_editor_set_image, .Lfunc_end7-gimp_component_editor_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_clear_components,@function
gimp_component_editor_clear_components: # @gimp_component_editor_clear_components
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
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_list_store_clear
	movabsq	$.L.str.16, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_object_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_component_editor_clear_components, .Lfunc_end8-gimp_component_editor_clear_components
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_mode_changed,@function
gimp_component_editor_mode_changed:     # @gimp_component_editor_mode_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_component_editor_clear_components
	movq	-16(%rbp), %rdi
	callq	gimp_component_editor_create_components
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_component_editor_mode_changed, .Lfunc_end9-gimp_component_editor_mode_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_alpha_changed,@function
gimp_component_editor_alpha_changed:    # @gimp_component_editor_alpha_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_component_editor_clear_components
	movq	-16(%rbp), %rdi
	callq	gimp_component_editor_create_components
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_component_editor_alpha_changed, .Lfunc_end10-gimp_component_editor_alpha_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_visibility_changed,@function
gimp_component_editor_visibility_changed: # @gimp_component_editor_visibility_changed
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
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rax, %rdx
	callq	gimp_component_editor_get_iter
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_get_component_visible
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	-60(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set
.LBB11_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_component_editor_visibility_changed, .Lfunc_end11-gimp_component_editor_visibility_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_active_changed,@function
gimp_component_editor_active_changed:   # @gimp_component_editor_active_changed
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
	subq	$64, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rax, %rdx
	callq	gimp_component_editor_get_iter
	cmpl	$0, %eax
	je	.LBB12_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_get_component_active
	leaq	-56(%rbp), %rsi
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	movq	176(%rdi), %rdi
	callq	gtk_tree_selection_iter_is_selected
	cmpl	-60(%rbp), %eax
	je	.LBB12_6
# BB#2:                                 # %if.then.3
	cmpl	$0, -60(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_tree_selection_select_iter
	jmp	.LBB12_5
.LBB12_4:                               # %if.else
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_tree_selection_unselect_iter
.LBB12_5:                               # %if.end
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.8
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_component_editor_active_changed, .Lfunc_end12-gimp_component_editor_active_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_create_components,@function
gimp_component_editor_create_components: # @gimp_component_editor_create_components
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
	pushq	%r14
	pushq	%rbx
	subq	$288, %rsp              # imm = 0x120
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_base_type
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	je	.LBB13_1
	jmp	.LBB13_13
.LBB13_13:                              # %entry
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_14
.LBB13_14:                              # %entry
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB13_3
	jmp	.LBB13_4
.LBB13_1:                               # %sw.bb
	movl	$3, -36(%rbp)
	movl	$0, -64(%rbp)
	movl	$1, -60(%rbp)
	movl	$2, -56(%rbp)
	jmp	.LBB13_4
.LBB13_2:                               # %sw.bb.6
	movl	$1, -36(%rbp)
	movl	$3, -64(%rbp)
	jmp	.LBB13_4
.LBB13_3:                               # %sw.bb.8
	movl	$1, -36(%rbp)
	movl	$4, -64(%rbp)
.LBB13_4:                               # %sw.epilog
	movq	-32(%rbp), %rdi
	callq	gimp_image_has_alpha
	cmpl	$0, %eax
	je	.LBB13_6
# BB#5:                                 # %if.then
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movslq	%eax, %rdx
	movl	$5, -64(%rbp,%rdx,4)
.LBB13_6:                               # %if.end
	callq	gimp_channel_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB13_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB13_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movl	-64(%rbp,%rax,4), %esi
	callq	gimp_image_get_component_visible
	movl	%eax, -140(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	136(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	152(%rax), %edx
	callq	gimp_view_renderer_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_renderer_set_viewable
	movq	-88(%rbp), %rdi
	callq	gimp_view_renderer_remove_idle
	movslq	-76(%rbp), %rax
	movl	-64(%rbp,%rax,4), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_image_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_component_editor_renderer_update, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 152(%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %r10
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movslq	-76(%rbp), %rcx
	movl	-64(%rbp,%rcx,4), %esi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_enum_get_value
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gimp_enum_value_get_desc
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$3, %r11d
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movslq	-76(%rbp), %rcx
	movl	-64(%rbp,%rcx,4), %ecx
	movl	-140(%rbp), %r14d
	movq	-88(%rbp), %rdi
	movq	-136(%rbp), %r10
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -252(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$2, (%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	$-1, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -256(%rbp)        # 4-byte Spill
	movl	%r11d, -260(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	movq	-88(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	movl	-64(%rbp,%rsi,4), %esi
	callq	gimp_image_get_component_active
	cmpl	$0, %eax
	je	.LBB13_10
# BB#9:                                 # %if.then.42
                                        #   in Loop: Header=BB13_7 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_tree_selection_select_iter
.LBB13_10:                              # %if.end.43
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_11
.LBB13_11:                              # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB13_7
.LBB13_12:                              # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_component_editor_create_components, .Lfunc_end13-gimp_component_editor_create_components
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_get_iter,@function
gimp_component_editor_get_iter:         # @gimp_component_editor_get_iter
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %ecx
	callq	gtk_tree_model_iter_nth_child
	movl	%eax, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_component_editor_get_iter, .Lfunc_end14-gimp_component_editor_get_iter
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_renderer_update,@function
gimp_component_editor_renderer_update:  # @gimp_component_editor_renderer_update
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rdx
	movl	152(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_component_editor_get_iter
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_tree_model_get_path
	leaq	-56(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_model_row_changed
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB15_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_component_editor_renderer_update, .Lfunc_end15-gimp_component_editor_renderer_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_clicked,@function
gimp_component_editor_clicked:          # @gimp_component_editor_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-72(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-84(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	144(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.18, %rsi
	leaq	-88(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	cmpl	$0, -88(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_image_set_component_visible
	movq	-80(%rbp), %rdi
	callq	gimp_image_flush
.LBB16_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_component_editor_clicked, .Lfunc_end16-gimp_component_editor_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_button_press,@function
gimp_component_editor_button_press:     # @gimp_component_editor_button_press
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	$-1, 208(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-16(%rbp), %rdx
	cvttsd2si	24(%rdx), %esi
	movq	-16(%rbp), %rdx
	cvttsd2si	32(%rdx), %edx
	movq	%rax, %rdi
	movq	$0, (%rsp)
	callq	gtk_tree_view_get_path_at_pos
	cmpl	$0, %eax
	je	.LBB17_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_selection_path_is_selected
	leaq	-72(%rbp), %rsi
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-40(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	movq	-40(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gtk_tree_path_free
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	-76(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, 208(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB17_3
# BB#2:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB17_7
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB17_7
# BB#5:                                 # %land.lhs.true.17
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	184(%rcx), %rax
	je	.LBB17_7
# BB#6:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movl	-76(%rbp), %esi
	cmpl	$0, -80(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_image_set_component_active
	movq	-88(%rbp), %rdi
	callq	gimp_image_flush
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.25
	jmp	.LBB17_9
.LBB17_9:                               # %if.end.26
	xorl	%eax, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_component_editor_button_press, .Lfunc_end17-gimp_component_editor_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_select,@function
gimp_component_editor_select:           # @gimp_component_editor_select
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-84(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-48(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_image_get_component_active
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_component_editor_select, .Lfunc_end18-gimp_component_editor_select
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_drag_component,@function
gimp_component_editor_drag_component:   # @gimp_component_editor_drag_component
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 144(%rax)
	je	.LBB19_7
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$-1, 208(%rax)
	je	.LBB19_7
# BB#2:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB19_4
# BB#3:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB19_4:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB19_6
# BB#5:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	136(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB19_6:                               # %if.end.12
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_8
.LBB19_7:                               # %if.end.16
	movq	$0, -8(%rbp)
.LBB19_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_component_editor_drag_component, .Lfunc_end19-gimp_component_editor_drag_component
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_component_editor_set_context,@function
gimp_component_editor_set_context:      # @gimp_component_editor_set_context
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -60(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$2, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_set_context
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -60(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_component_editor_set_context, .Lfunc_end20-gimp_component_editor_set_context
	.cfi_endproc

	.type	gimp_component_editor_get_type.g_define_type_id__volatile,@object # @gimp_component_editor_get_type.g_define_type_id__volatile
	.local	gimp_component_editor_get_type.g_define_type_id__volatile
	.comm	gimp_component_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpComponentEditor"
	.size	.L.str, 20

	.type	gimp_component_editor_get_type.g_implement_interface_info,@object # @gimp_component_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_component_editor_get_type.g_implement_interface_info:
	.quad	gimp_component_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_component_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_component_editor_new,@object # @__func__.gimp_component_editor_new
.L__func__.gimp_component_editor_new:
	.asciz	"gimp_component_editor_new"
	.size	.L__func__.gimp_component_editor_new, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.2, 61

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-factory"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu-identifier"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<Channels>"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ui-path"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/channels-popup"
	.size	.L.str.8, 16

	.type	.L__func__.gimp_component_editor_set_view_size,@object # @__func__.gimp_component_editor_set_view_size
.L__func__.gimp_component_editor_set_view_size:
	.asciz	"gimp_component_editor_set_view_size"
	.size	.L__func__.gimp_component_editor_set_view_size, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_COMPONENT_EDITOR (editor)"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-visible"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stock-size"
	.size	.L.str.11, 11

	.type	gimp_component_editor_parent_class,@object # @gimp_component_editor_parent_class
	.local	gimp_component_editor_parent_class
	.comm	gimp_component_editor_parent_class,8,8
	.type	GimpComponentEditor_private_offset,@object # @GimpComponentEditor_private_offset
	.local	GimpComponentEditor_private_offset
	.comm	GimpComponentEditor_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"mode-changed"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"alpha-changed"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"component-visibility-changed"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"component-active-changed"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"renderer"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"update"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"active"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"clicked"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"text"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"button-press-event"
	.size	.L.str.21, 19

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
