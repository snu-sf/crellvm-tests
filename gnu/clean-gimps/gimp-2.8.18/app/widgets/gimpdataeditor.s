	.text
	.file	"gimpdataeditor.bc"
	.globl	gimp_data_editor_get_type
	.align	16, 0x90
	.type	gimp_data_editor_get_type,@function
gimp_data_editor_get_type:              # @gimp_data_editor_get_type
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
	movq	gimp_data_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_data_editor_get_type.g_define_type_id__volatile, %rax
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
	movl	$840, %edx              # imm = 0x348
	movabsq	$gimp_data_editor_class_intern_init, %rdi
	movl	$208, %r8d
	movabsq	$gimp_data_editor_init, %rcx
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
	movabsq	$gimp_data_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_data_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_data_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_data_editor_get_type, .Lfunc_end0-gimp_data_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_class_intern_init,@function
gimp_data_editor_class_intern_init:     # @gimp_data_editor_class_intern_init
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
	movq	%rax, gimp_data_editor_parent_class
	cmpl	$0, GimpDataEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDataEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_data_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_data_editor_class_intern_init, .Lfunc_end1-gimp_data_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_init,@function
gimp_data_editor_init:                  # @gimp_data_editor_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 168(%rdi)
	callq	gtk_entry_new
	movq	-8(%rbp), %rdi
	movq	%rax, 176(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	-20(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_data_editor_name_key_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_data_editor_name_activate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_data_editor_name_focus_out, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_data_editor_init, .Lfunc_end2-gimp_data_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_docked_iface_init,@function
gimp_data_editor_docked_iface_init:     # @gimp_data_editor_docked_iface_init
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
	movabsq	$gimp_data_editor_get_title, %rax
	movabsq	$gimp_data_editor_get_aux_info, %rcx
	movabsq	$gimp_data_editor_set_aux_info, %rdx
	movabsq	$gimp_data_editor_set_context, %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_data_editor_docked_iface_init, .Lfunc_end3-gimp_data_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_data_editor_set_data
	.align	16, 0x90
	.type	gimp_data_editor_set_data,@function
gimp_data_editor_set_data:              # @gimp_data_editor_set_data
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_editor_set_data, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_35
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_editor_set_data, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_35
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	jmp	.LBB4_26
.LBB4_26:                               # %do.body.40
	cmpq	$0, -16(%rbp)
	je	.LBB4_28
# BB#27:                                # %lor.lhs.false.42
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB4_29
.LBB4_28:                               # %if.then.49
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_editor_set_data, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_35
.LBB4_30:                               # %if.end.51
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.52
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB4_35
# BB#32:                                # %if.then.55
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	cmpq	$0, %rax
	je	.LBB4_34
# BB#33:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-8(%rbp), %rsi
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
.LBB4_34:                               # %if.end.69
	jmp	.LBB4_35
.LBB4_35:                               # %if.end.70
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_data_editor_set_data, .Lfunc_end4-gimp_data_editor_set_data
	.cfi_endproc

	.globl	gimp_data_editor_get_data
	.align	16, 0x90
	.type	gimp_data_editor_get_data,@function
gimp_data_editor_get_data:              # @gimp_data_editor_get_data
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_editor_get_data, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_data_editor_get_data, .Lfunc_end5-gimp_data_editor_get_data
	.cfi_endproc

	.globl	gimp_data_editor_set_edit_active
	.align	16, 0x90
	.type	gimp_data_editor_set_edit_active,@function
gimp_data_editor_set_edit_active:       # @gimp_data_editor_set_edit_active
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_editor_set_edit_active, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_17
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	152(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB6_17
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-8(%rbp), %rcx
	cmpl	$0, 152(%rcx)
	je	.LBB6_16
# BB#14:                                # %land.lhs.true.17
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB6_16
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_data_editor_set_data
.LBB6_16:                               # %if.end.28
	jmp	.LBB6_17
.LBB6_17:                               # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_data_editor_set_edit_active, .Lfunc_end6-gimp_data_editor_set_edit_active
	.cfi_endproc

	.globl	gimp_data_editor_get_edit_active
	.align	16, 0x90
	.type	gimp_data_editor_get_edit_active,@function
gimp_data_editor_get_edit_active:       # @gimp_data_editor_get_edit_active
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_editor_get_edit_active, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_data_editor_get_edit_active, .Lfunc_end7-gimp_data_editor_get_edit_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_class_init,@function
gimp_data_editor_class_init:            # @gimp_data_editor_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_data_editor_real_set_data, %rsi
	movabsq	$gimp_data_editor_style_set, %rdi
	movabsq	$gimp_data_editor_get_property, %rcx
	movabsq	$gimp_data_editor_set_property, %rdx
	movabsq	$gimp_data_editor_dispose, %r8
	movabsq	$gimp_data_editor_constructed, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 824(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$32, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$96, %r9d
	movl	$225, %esi
	movq	-24(%rbp), %rdx
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_data_editor_class_init, .Lfunc_end8-gimp_data_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_constructed,@function
gimp_data_editor_constructed:           # @gimp_data_editor_constructed
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_data_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_data_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB9_10
.LBB9_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_9:                                # %if.end.13
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_12
# BB#11:                                # %if.then.16
	jmp	.LBB9_13
.LBB9_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$207, %edx
	movabsq	$.L__func__.gimp_data_editor_constructed, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_assertion_message_expr
.LBB9_13:                               # %if.end.18
	jmp	.LBB9_14
.LBB9_14:                               # %do.end
	jmp	.LBB9_15
.LBB9_15:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_17
# BB#16:                                # %if.then.28
	movl	$0, -60(%rbp)
	jmp	.LBB9_22
.LBB9_17:                               # %if.else.29
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_20
# BB#18:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_20
# BB#19:                                # %if.then.36
	movl	$1, -60(%rbp)
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.37
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_21:                               # %if.end.39
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.40
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_24
# BB#23:                                # %if.then.43
	jmp	.LBB9_25
.LBB9_24:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$208, %edx
	movabsq	$.L__func__.gimp_data_editor_constructed, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB9_25:                               # %if.end.45
	jmp	.LBB9_26
.LBB9_26:                               # %do.end.46
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_data_editor_set_edit_active
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$gimp_data_editor_save_clicked, %rdx
	movq	-16(%rbp), %r8
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_editor_add_button
	movq	-16(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movabsq	$gimp_data_editor_revert_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-16(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_data_editor_constructed, .Lfunc_end9-gimp_data_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_dispose,@function
gimp_data_editor_dispose:               # @gimp_data_editor_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_data_editor_save_dirty
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_data_editor_set_data
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_context
.LBB10_4:                               # %if.end.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_data_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_data_editor_dispose, .Lfunc_end10-gimp_data_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_set_property,@function
gimp_data_editor_set_property:          # @gimp_data_editor_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_8
.LBB11_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_9
.LBB11_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_4
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 136(%rdi)
	jmp	.LBB11_7
.LBB11_2:                               # %sw.bb.3
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_value_get_object
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_docked_set_context
	jmp	.LBB11_7
.LBB11_3:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_editor_set_data
	jmp	.LBB11_7
.LBB11_4:                               # %sw.default
	jmp	.LBB11_5
.LBB11_5:                               # %do.body
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
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$270, %edx              # imm = 0x10E
	movabsq	$.L.str.18, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB11_7
.LBB11_7:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_data_editor_set_property, .Lfunc_end11-gimp_data_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_get_property,@function
gimp_data_editor_get_property:          # @gimp_data_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_8
.LBB12_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_9
.LBB12_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_4
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_7
.LBB12_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_7
.LBB12_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB12_7
.LBB12_4:                               # %sw.default
	jmp	.LBB12_5
.LBB12_5:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$295, %edx              # imm = 0x127
	movabsq	$.L.str.18, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB12_7
.LBB12_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_data_editor_get_property, .Lfunc_end12-gimp_data_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_style_set,@function
gimp_data_editor_style_set:             # @gimp_data_editor_style_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_data_editor_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.8, %rsi
	leaq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-24(%rbp), %rcx
	cmpq	$0, 184(%rcx)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	movl	-28(%rbp), %edx
	callq	gtk_widget_set_size_request
.LBB13_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_data_editor_style_set, .Lfunc_end13-gimp_data_editor_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_real_set_data,@function
gimp_data_editor_real_set_data:         # @gimp_data_editor_real_set_data
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 160(%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_data_editor_data_name_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_data_editor_data_name_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB14_5:                               # %if.end.19
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	$0, 160(%rdx)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB14_7
# BB#6:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB14_7:                               # %land.end
	movb	-97(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdx
	movl	168(%rdx), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB14_9
# BB#8:                                 # %if.then.25
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 168(%rcx)
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_docked_title_changed
.LBB14_9:                               # %if.end.32
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_data_editor_real_set_data, .Lfunc_end14-gimp_data_editor_real_set_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_save_clicked,@function
gimp_data_editor_save_clicked:          # @gimp_data_editor_save_clicked
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_data_editor_save_dirty
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_data_editor_save_clicked, .Lfunc_end15-gimp_data_editor_save_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_revert_clicked,@function
gimp_data_editor_revert_clicked:        # @gimp_data_editor_revert_clicked
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
	subq	$16, %rsp
	movabsq	$.L.str.16, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_print
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_data_editor_revert_clicked, .Lfunc_end16-gimp_data_editor_revert_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_save_dirty,@function
gimp_data_editor_save_dirty:            # @gimp_data_editor_save_dirty
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_data_is_dirty
	cmpl	$0, %eax
	je	.LBB17_6
# BB#2:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB17_6
# BB#3:                                 # %if.then
	leaq	-24(%rbp), %rdx
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_data_factory_data_save_single
	cmpl	$0, %eax
	jne	.LBB17_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_data_factory_get_gimp
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
.LBB17_5:                               # %if.end
	jmp	.LBB17_6
.LBB17_6:                               # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_data_editor_save_dirty, .Lfunc_end17-gimp_data_editor_save_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_data_name_changed,@function
gimp_data_editor_data_name_changed:     # @gimp_data_editor_data_name_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_data_editor_data_name_changed, .Lfunc_end19-gimp_data_editor_data_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_set_context,@function
gimp_data_editor_set_context:           # @gimp_data_editor_set_context
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	144(%rsi), %rax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_8
.LBB20_2:                               # %if.end
	movq	parent_docked_iface, %rax
	cmpq	$0, 72(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.3
	movq	parent_docked_iface, %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB20_4:                               # %if.end.5
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB20_6
# BB#5:                                 # %if.then.8
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_data_editor_data_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB20_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB20_8
# BB#7:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_context_type_to_signal_name
	movabsq	$gimp_data_editor_data_changed, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_data_changed
.LBB20_8:                               # %if.end.29
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_data_editor_set_context, .Lfunc_end20-gimp_data_editor_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_set_aux_info,@function
gimp_data_editor_set_aux_info:          # @gimp_data_editor_set_aux_info
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB21_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.21, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB21_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$.L.str.22, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_data_editor_set_edit_active
	jmp	.LBB21_11
.LBB21_4:                               # %if.else
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.23, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB21_10
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 152(%rax)
	jne	.LBB21_9
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_container_get_child_by_name
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB21_8
# BB#7:                                 # %if.then.18
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_data_editor_set_data
.LBB21_8:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_9
.LBB21_9:                               # %if.end.19
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_10
.LBB21_10:                              # %if.end.20
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_11
.LBB21_11:                              # %if.end.21
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_12
.LBB21_12:                              # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB21_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB21_15
.LBB21_14:                              # %cond.false
                                        #   in Loop: Header=BB21_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB21_15
.LBB21_15:                              # %cond.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB21_1
.LBB21_16:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_data_editor_set_aux_info, .Lfunc_end21-gimp_data_editor_set_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_get_aux_info,@function
gimp_data_editor_get_aux_info:          # @gimp_data_editor_get_aux_info
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	parent_docked_iface, %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.22, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 152(%rax)
	cmovneq	%rcx, %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.23, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB22_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_data_editor_get_aux_info, .Lfunc_end22-gimp_data_editor_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_get_title,@function
gimp_data_editor_get_title:             # @gimp_data_editor_get_title
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	832(%rax), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB23_3
.LBB23_2:                               # %if.else
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	832(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB23_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_data_editor_get_title, .Lfunc_end23-gimp_data_editor_get_title
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_data_changed,@function
gimp_data_editor_data_changed:          # @gimp_data_editor_data_changed
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 152(%rdx)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_data_editor_set_data
.LBB24_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_data_editor_data_changed, .Lfunc_end24-gimp_data_editor_data_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_name_key_press,@function
gimp_data_editor_name_key_press:        # @gimp_data_editor_name_key_press
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$65307, 28(%rdx)        # imm = 0xFF1B
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movl	$1, -4(%rbp)
	jmp	.LBB25_3
.LBB25_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB25_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_data_editor_name_key_press, .Lfunc_end25-gimp_data_editor_name_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_name_activate,@function
gimp_data_editor_name_activate:         # @gimp_data_editor_name_activate
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 160(%rsi)
	je	.LBB26_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB26_3
# BB#2:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_data_editor_name_activate, .Lfunc_end26-gimp_data_editor_name_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_editor_name_focus_out,@function
gimp_data_editor_name_focus_out:        # @gimp_data_editor_name_focus_out
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_data_editor_name_activate
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_data_editor_name_focus_out, .Lfunc_end27-gimp_data_editor_name_focus_out
	.cfi_endproc

	.type	gimp_data_editor_get_type.g_define_type_id__volatile,@object # @gimp_data_editor_get_type.g_define_type_id__volatile
	.local	gimp_data_editor_get_type.g_define_type_id__volatile
	.comm	gimp_data_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDataEditor"
	.size	.L.str, 15

	.type	gimp_data_editor_get_type.g_implement_interface_info,@object # @gimp_data_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_data_editor_get_type.g_implement_interface_info:
	.quad	gimp_data_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_data_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_data_editor_set_data,@object # @__func__.gimp_data_editor_set_data
.L__func__.gimp_data_editor_set_data:
	.asciz	"gimp_data_editor_set_data"
	.size	.L__func__.gimp_data_editor_set_data, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DATA_EDITOR (editor)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"data == NULL || GIMP_IS_DATA (data)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"data == NULL || g_type_is_a (G_TYPE_FROM_INSTANCE (data), gimp_container_get_children_type (gimp_data_factory_get_container (editor->data_factory)))"
	.size	.L.str.4, 149

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"data"
	.size	.L.str.5, 5

	.type	.L__func__.gimp_data_editor_get_data,@object # @__func__.gimp_data_editor_get_data
.L__func__.gimp_data_editor_get_data:
	.asciz	"gimp_data_editor_get_data"
	.size	.L__func__.gimp_data_editor_get_data, 26

	.type	.L__func__.gimp_data_editor_set_edit_active,@object # @__func__.gimp_data_editor_set_edit_active
.L__func__.gimp_data_editor_set_edit_active:
	.asciz	"gimp_data_editor_set_edit_active"
	.size	.L__func__.gimp_data_editor_set_edit_active, 33

	.type	.L__func__.gimp_data_editor_get_edit_active,@object # @__func__.gimp_data_editor_get_edit_active
.L__func__.gimp_data_editor_get_edit_active:
	.asciz	"gimp_data_editor_get_edit_active"
	.size	.L__func__.gimp_data_editor_get_edit_active, 33

	.type	gimp_data_editor_parent_class,@object # @gimp_data_editor_parent_class
	.local	gimp_data_editor_parent_class
	.comm	gimp_data_editor_parent_class,8,8
	.type	GimpDataEditor_private_offset,@object # @GimpDataEditor_private_offset
	.local	GimpDataEditor_private_offset
	.comm	GimpDataEditor_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"data-factory"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"context"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"minimal-height"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpdataeditor.c"
	.size	.L.str.9, 17

	.type	.L__func__.gimp_data_editor_constructed,@object # @__func__.gimp_data_editor_constructed
.L__func__.gimp_data_editor_constructed:
	.asciz	"gimp_data_editor_constructed"
	.size	.L__func__.gimp_data_editor_constructed, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_DATA_FACTORY (editor->data_factory)"
	.size	.L.str.10, 44

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_CONTEXT (editor->context)"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-save"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Save"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-revert-to-saved"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Revert"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"TODO: implement revert\n"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.17, 54

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"property"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"name-changed"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"edit-active"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"true"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"current-data"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"false"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s (read only)"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"key-press-event"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"activate"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"focus-out-event"
	.size	.L.str.28, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
