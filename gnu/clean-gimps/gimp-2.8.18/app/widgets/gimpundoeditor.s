	.text
	.file	"gimpundoeditor.bc"
	.globl	gimp_undo_editor_get_type
	.align	16, 0x90
	.type	gimp_undo_editor_get_type,@function
gimp_undo_editor_get_type:              # @gimp_undo_editor_get_type
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
	movq	gimp_undo_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_undo_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_undo_editor_class_intern_init, %rdi
	movl	$216, %r8d
	movabsq	$gimp_undo_editor_init, %rcx
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
	movabsq	$gimp_undo_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_undo_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_undo_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_undo_editor_get_type, .Lfunc_end0-gimp_undo_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_class_intern_init,@function
gimp_undo_editor_class_intern_init:     # @gimp_undo_editor_class_intern_init
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
	movq	%rax, gimp_undo_editor_parent_class
	cmpl	$0, GimpUndoEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpUndoEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_undo_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_undo_editor_class_intern_init, .Lfunc_end1-gimp_undo_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_init,@function
gimp_undo_editor_init:                  # @gimp_undo_editor_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_undo_editor_init, .Lfunc_end2-gimp_undo_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_docked_iface_init,@function
gimp_undo_editor_docked_iface_init:     # @gimp_undo_editor_docked_iface_init
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
	movabsq	$gimp_undo_editor_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_undo_editor_docked_iface_init, .Lfunc_end3-gimp_undo_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_undo_editor_new
	.align	16, 0x90
	.type	gimp_undo_editor_new,@function
gimp_undo_editor_new:                   # @gimp_undo_editor_new
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_core_config_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_menu_factory_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	callq	gimp_undo_editor_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r14
	movl	328(%r14), %r10d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r11, -112(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -24(%rbp)
.LBB4_25:                               # %return
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_undo_editor_new, .Lfunc_end4-gimp_undo_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_class_init,@function
gimp_undo_editor_class_init:            # @gimp_undo_editor_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_undo_editor_set_image, %rsi
	movabsq	$gimp_undo_editor_set_property, %rdi
	movabsq	$gimp_undo_editor_constructed, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_size_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$48, %r8d
	movl	$234, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_undo_editor_class_init, .Lfunc_end5-gimp_undo_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_constructed,@function
gimp_undo_editor_constructed:           # @gimp_undo_editor_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_undo_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_undo_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_undo_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	176(%rdx), %edx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movl	%eax, %ecx
	callq	gimp_container_tree_view_new
	movq	-16(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_undo_editor_select_item, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.14, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 208(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_undo_editor_constructed, .Lfunc_end6-gimp_undo_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_set_property,@function
gimp_undo_editor_set_property:          # @gimp_undo_editor_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_undo_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 176(%rdi)
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$172, %edx
	movabsq	$.L.str.17, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_undo_editor_set_property, .Lfunc_end7-gimp_undo_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_set_image,@function
gimp_undo_editor_set_image:             # @gimp_undo_editor_set_image
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_undo_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_undo_editor_clear
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_undo_editor_undo_event, %rdi
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
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB8_2:                                # %if.end
	movq	gimp_undo_editor_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB8_6
# BB#3:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_undo_is_enabled
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.13
	movq	-24(%rbp), %rdi
	callq	gimp_undo_editor_fill
.LBB8_5:                                # %if.end.14
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_undo_editor_undo_event, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB8_6:                                # %if.end.17
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_undo_editor_set_image, .Lfunc_end8-gimp_undo_editor_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_select_item,@function
gimp_undo_editor_select_item:           # @gimp_undo_editor_select_item
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -56(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_26
.LBB9_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi
	cmpq	184(%rdi), %rax
	jne	.LBB9_9
# BB#3:                                 # %if.then.6
	jmp	.LBB9_4
.LBB9_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#6:                                 # %if.then.10
	jmp	.LBB9_8
.LBB9_7:                                # %if.end.11
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -64(%rbp)
	jmp	.LBB9_4
.LBB9_8:                                # %while.end
	jmp	.LBB9_25
.LBB9_9:                                # %if.else
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB9_16
# BB#10:                                # %if.then.17
	jmp	.LBB9_11
.LBB9_11:                               # %while.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB9_15
# BB#12:                                # %while.body.20
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo
	cmpl	$0, %eax
	jne	.LBB9_14
# BB#13:                                # %if.then.23
	jmp	.LBB9_15
.LBB9_14:                               # %if.end.24
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -64(%rbp)
	jmp	.LBB9_11
.LBB9_15:                               # %while.end.26
	jmp	.LBB9_24
.LBB9_16:                               # %if.else.27
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB9_23
# BB#17:                                # %if.then.33
	jmp	.LBB9_18
.LBB9_18:                               # %while.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB9_22
# BB#19:                                # %while.body.36
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_image_redo
	cmpl	$0, %eax
	jne	.LBB9_21
# BB#20:                                # %if.then.39
	jmp	.LBB9_22
.LBB9_21:                               # %if.end.40
                                        #   in Loop: Header=BB9_18 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -64(%rbp)
	jmp	.LBB9_18
.LBB9_22:                               # %while.end.42
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.43
	jmp	.LBB9_24
.LBB9_24:                               # %if.end.44
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.45
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB9_26:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_undo_editor_select_item, .Lfunc_end9-gimp_undo_editor_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_clear,@function
gimp_undo_editor_clear:                 # @gimp_undo_editor_clear
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 160(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_container_view_set_container
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
.LBB11_4:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_undo_editor_clear, .Lfunc_end11-gimp_undo_editor_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_undo_event,@function
gimp_undo_editor_undo_event:            # @gimp_undo_editor_undo_event
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -40(%rbp)
	movq	%rax, %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$7, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB12_12
# BB#13:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_1:                               # %sw.bb
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_undo_editor_select_item, %rdx
	movq	-32(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-24(%rbp), %r8
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r8, -104(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_insert
	movq	-32(%rbp), %rsi
	movq	168(%rsi), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	152(%rsi), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_undo_create_preview
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_undo_editor_select_item, %rdi
	movq	-32(%rbp), %r9
	movq	168(%r9), %r9
	movq	-32(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_2:                               # %sw.bb.14
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_3:                               # %sw.bb.19
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_undo_editor_select_item, %rdx
	movq	-32(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	cmpq	$0, -48(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB12_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	152(%rsi), %rsi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_undo_create_preview
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	184(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movq	152(%rsi), %rsi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_undo_create_preview
.LBB12_6:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_undo_editor_select_item, %rdx
	movq	-32(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r9, -288(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-288(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_7:                               # %sw.bb.39
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_is_enabled
	cmpl	$0, %eax
	je	.LBB12_9
# BB#8:                                 # %if.then.42
	movq	-32(%rbp), %rdi
	callq	gimp_undo_editor_clear
.LBB12_9:                               # %if.end.43
	jmp	.LBB12_12
.LBB12_10:                              # %sw.bb.44
	movq	-32(%rbp), %rdi
	callq	gimp_undo_editor_clear
	jmp	.LBB12_12
.LBB12_11:                              # %sw.bb.45
	movq	-32(%rbp), %rdi
	callq	gimp_undo_editor_fill
.LBB12_12:                              # %sw.epilog
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_undo_editor_undo_event, .Lfunc_end12-gimp_undo_editor_undo_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_1
	.quad	.LBB12_2
	.quad	.LBB12_2
	.quad	.LBB12_3
	.quad	.LBB12_3
	.quad	.LBB12_7
	.quad	.LBB12_10
	.quad	.LBB12_11

	.text
	.align	16, 0x90
	.type	gimp_undo_editor_fill,@function
gimp_undo_editor_fill:                  # @gimp_undo_editor_fill
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -32(%rbp)
	callq	gimp_undo_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
	callq	gimp_undo_get_type
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_object_new
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -124(%rbp)        # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_6
.LBB13_6:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %for.end
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB13_8:                               # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_25
# BB#9:                                 # %for.body.27
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB13_19
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_undo_stack_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$0, -68(%rbp)
	jmp	.LBB13_17
.LBB13_12:                              # %if.else
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_15
# BB#14:                                # %if.then.34
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$1, -68(%rbp)
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.35
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_16:                              # %if.end
                                        #   in Loop: Header=BB13_8 Depth=1
	jmp	.LBB13_17
.LBB13_17:                              # %if.end.37
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB13_19
# BB#18:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_undo_group_count
	cmpl	$0, %eax
	jne	.LBB13_20
.LBB13_19:                              # %if.then.42
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB13_20:                              # %if.end.48
                                        #   in Loop: Header=BB13_8 Depth=1
	jmp	.LBB13_21
.LBB13_21:                              # %for.inc.49
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_23
# BB#22:                                # %cond.true.51
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB13_24
.LBB13_23:                              # %cond.false.53
                                        #   in Loop: Header=BB13_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB13_24
.LBB13_24:                              # %cond.end.54
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB13_8
.LBB13_25:                              # %for.end.56
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-8(%rbp), %rsi
	movq	168(%rsi), %rsi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_container
	movq	-24(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_undo_editor_select_item, %rdi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	cmpq	$0, -40(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB13_27
# BB#26:                                # %if.then.69
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_undo_create_preview
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.76
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	184(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_undo_create_preview
.LBB13_28:                              # %if.end.86
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_undo_editor_select_item, %rdx
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r9, -320(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-320(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -324(%rbp)        # 4-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_undo_editor_fill, .Lfunc_end13-gimp_undo_editor_fill
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_editor_set_context,@function
gimp_undo_editor_set_context:           # @gimp_undo_editor_set_context
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_undo_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB14_4:                               # %if.end.10
	movq	parent_docked_iface, %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_context
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_undo_editor_set_context, .Lfunc_end14-gimp_undo_editor_set_context
	.cfi_endproc

	.type	gimp_undo_editor_get_type.g_define_type_id__volatile,@object # @gimp_undo_editor_get_type.g_define_type_id__volatile
	.local	gimp_undo_editor_get_type.g_define_type_id__volatile
	.comm	gimp_undo_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUndoEditor"
	.size	.L.str, 15

	.type	gimp_undo_editor_get_type.g_implement_interface_info,@object # @gimp_undo_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_undo_editor_get_type.g_implement_interface_info:
	.quad	gimp_undo_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_undo_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_undo_editor_new,@object # @__func__.gimp_undo_editor_new
.L__func__.gimp_undo_editor_new:
	.asciz	"gimp_undo_editor_new"
	.size	.L__func__.gimp_undo_editor_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CORE_CONFIG (config)"
	.size	.L.str.2, 29

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
	.asciz	"<Undo>"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ui-path"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/undo-popup"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"view-size"
	.size	.L.str.9, 10

	.type	gimp_undo_editor_parent_class,@object # @gimp_undo_editor_parent_class
	.local	gimp_undo_editor_parent_class
	.comm	gimp_undo_editor_parent_class,8,8
	.type	GimpUndoEditor_private_offset,@object # @GimpUndoEditor_private_offset
	.local	GimpUndoEditor_private_offset
	.comm	GimpUndoEditor_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"select-item"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"edit"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"edit-undo"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"edit-redo"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"edit-undo-clear"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpundoeditor.c"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"undo-event"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"image"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"name"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"[ Base Image ]"
	.size	.L.str.21, 15

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
