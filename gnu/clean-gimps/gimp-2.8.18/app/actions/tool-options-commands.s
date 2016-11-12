	.text
	.file	"tool-options-commands.bc"
	.globl	tool_options_save_new_preset_cmd_callback
	.align	16, 0x90
	.type	tool_options_save_new_preset_cmd_callback,@function
tool_options_save_new_preset_cmd_callback: # @tool_options_save_new_preset_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_get_user_context
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	504(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_data_factory_data_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	tool_options_show_preset_editor
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_options_save_new_preset_cmd_callback, .Lfunc_end0-tool_options_save_new_preset_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	tool_options_show_preset_editor,@function
tool_options_show_preset_editor:        # @tool_options_show_preset_editor
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-16(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movabsq	$.L.str.7, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_editor_set_data
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tool_options_show_preset_editor, .Lfunc_end1-tool_options_show_preset_editor
	.cfi_endproc

	.globl	tool_options_save_preset_cmd_callback
	.align	16, 0x90
	.type	tool_options_save_preset_cmd_callback,@function
tool_options_save_preset_cmd_callback:  # @tool_options_save_preset_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-64(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	tool_options_show_preset_editor
.LBB2_2:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tool_options_save_preset_cmd_callback, .Lfunc_end2-tool_options_save_preset_cmd_callback
	.cfi_endproc

	.globl	tool_options_restore_preset_cmd_callback
	.align	16, 0x90
	.type	tool_options_restore_preset_cmd_callback,@function
tool_options_restore_preset_cmd_callback: # @tool_options_restore_preset_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_tool_preset
	cmpq	-64(%rbp), %rax
	je	.LBB3_3
# BB#2:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_context_set_tool_preset
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rdi
	callq	gimp_context_tool_preset_changed
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.9
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tool_options_restore_preset_cmd_callback, .Lfunc_end3-tool_options_restore_preset_cmd_callback
	.cfi_endproc

	.globl	tool_options_edit_preset_cmd_callback
	.align	16, 0x90
	.type	tool_options_edit_preset_cmd_callback,@function
tool_options_edit_preset_cmd_callback:  # @tool_options_edit_preset_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	tool_options_show_preset_editor
.LBB4_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tool_options_edit_preset_cmd_callback, .Lfunc_end4-tool_options_edit_preset_cmd_callback
	.cfi_endproc

	.globl	tool_options_delete_preset_cmd_callback
	.align	16, 0x90
	.type	tool_options_delete_preset_cmd_callback,@function
tool_options_delete_preset_cmd_callback: # @tool_options_delete_preset_cmd_callback
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	504(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	data_delete_dialog_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
.LBB5_3:                                # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tool_options_delete_preset_cmd_callback, .Lfunc_end5-tool_options_delete_preset_cmd_callback
	.cfi_endproc

	.globl	tool_options_reset_cmd_callback
	.align	16, 0x90
	.type	tool_options_reset_cmd_callback,@function
tool_options_reset_cmd_callback:        # @tool_options_reset_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_reset
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tool_options_reset_cmd_callback, .Lfunc_end6-tool_options_reset_cmd_callback
	.cfi_endproc

	.globl	tool_options_reset_all_cmd_callback
	.align	16, 0x90
	.type	tool_options_reset_all_cmd_callback,@function
tool_options_reset_all_cmd_callback:    # @tool_options_reset_all_cmd_callback
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movl	$3, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.3, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.4, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -104(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movl	$2, %r8d
	movq	-40(%rbp), %r9
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movq	-40(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	264(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-40(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB7_9
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_editor_get_ui_manager
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -56(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB7_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_reset
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB7_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
                                        #   in Loop: Header=BB7_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_7
.LBB7_7:                                # %cond.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB7_2
.LBB7_8:                                # %for.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tool_options_reset_all_cmd_callback, .Lfunc_end7-tool_options_reset_all_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Untitled"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Reset All Tool Options"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-question"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-cancel"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-reset"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unmap"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Do you really want to reset all tool options to default values?"
	.size	.L.str.6, 64

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-tool-preset-editor"
	.size	.L.str.7, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
