	.text
	.file	"dock-commands.bc"
	.globl	dock_toggle_image_menu_cmd_callback
	.align	16, 0x90
	.type	dock_toggle_image_menu_cmd_callback,@function
dock_toggle_image_menu_cmd_callback:    # @dock_toggle_image_menu_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	dock_commands_get_dock_window_from_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_dock_window_set_show_image_menu
.LBB0_4:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dock_toggle_image_menu_cmd_callback, .Lfunc_end0-dock_toggle_image_menu_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dock_commands_get_dock_window_from_widget,@function
dock_commands_get_dock_window_from_widget: # @dock_commands_get_dock_window_from_widget
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB1_9:                                # %if.end.12
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dock_commands_get_dock_window_from_widget, .Lfunc_end1-dock_commands_get_dock_window_from_widget
	.cfi_endproc

	.globl	dock_toggle_auto_cmd_callback
	.align	16, 0x90
	.type	dock_toggle_auto_cmd_callback,@function
dock_toggle_auto_cmd_callback:          # @dock_toggle_auto_cmd_callback
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_4
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	dock_commands_get_dock_window_from_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_dock_window_set_auto_follow_active
.LBB2_4:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dock_toggle_auto_cmd_callback, .Lfunc_end2-dock_toggle_auto_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
