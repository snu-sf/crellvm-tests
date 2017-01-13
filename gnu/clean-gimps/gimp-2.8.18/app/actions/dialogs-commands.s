	.text
	.file	"dialogs-commands.bc"
	.globl	dialogs_create_toplevel_cmd_callback
	.align	16, 0x90
	.type	dialogs_create_toplevel_cmd_callback,@function
dialogs_create_toplevel_cmd_callback:   # @dialogs_create_toplevel_cmd_callback
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.2
	callq	gimp_dialog_factory_get_singleton
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$1, %r9d
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_4:                                # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dialogs_create_toplevel_cmd_callback, .Lfunc_end0-dialogs_create_toplevel_cmd_callback
	.cfi_endproc

	.globl	dialogs_create_dockable_cmd_callback
	.align	16, 0x90
	.type	dialogs_create_dockable_cmd_callback,@function
dialogs_create_dockable_cmd_callback:   # @dialogs_create_dockable_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_6
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	jmp	.LBB1_6
.LBB1_4:                                # %if.end.4
	cmpq	$0, -16(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-16(%rbp), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_6:                                # %if.end.13
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dialogs_create_dockable_cmd_callback, .Lfunc_end1-dialogs_create_dockable_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
