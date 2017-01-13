	.text
	.file	"windows-commands.bc"
	.globl	windows_hide_docks_cmd_callback
	.align	16, 0x90
	.type	windows_hide_docks_cmd_callback,@function
windows_hide_docks_cmd_callback:        # @windows_hide_docks_cmd_callback
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_5
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	724(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB0_4
# BB#3:                                 # %if.then.6
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.7
	movabsq	$.L.str, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB0_5:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	windows_hide_docks_cmd_callback, .Lfunc_end0-windows_hide_docks_cmd_callback
	.cfi_endproc

	.globl	windows_use_single_window_mode_cmd_callback
	.align	16, 0x90
	.type	windows_use_single_window_mode_cmd_callback,@function
windows_use_single_window_mode_cmd_callback: # @windows_use_single_window_mode_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_5
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	728(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB1_4
# BB#3:                                 # %if.then.6
	jmp	.LBB1_5
.LBB1_4:                                # %if.end.7
	movabsq	$.L.str.1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB1_5:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	windows_use_single_window_mode_cmd_callback, .Lfunc_end1-windows_use_single_window_mode_cmd_callback
	.cfi_endproc

	.globl	windows_show_display_next_cmd_callback
	.align	16, 0x90
	.type	windows_show_display_next_cmd_callback,@function
windows_show_display_next_cmd_callback: # @windows_show_display_next_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_7
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_7
.LBB2_4:                                # %if.end.4
	movq	-32(%rbp), %rax
	movq	416(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rsi
	movq	416(%rsi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_container_get_n_children
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_6
# BB#5:                                 # %if.then.10
	movl	$0, -36(%rbp)
.LBB2_6:                                # %if.end.11
	movq	-32(%rbp), %rax
	movq	416(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_present
.LBB2_7:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	windows_show_display_next_cmd_callback, .Lfunc_end2-windows_show_display_next_cmd_callback
	.cfi_endproc

	.globl	windows_show_display_previous_cmd_callback
	.align	16, 0x90
	.type	windows_show_display_previous_cmd_callback,@function
windows_show_display_previous_cmd_callback: # @windows_show_display_previous_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_7
.LBB3_4:                                # %if.end.4
	movq	-32(%rbp), %rax
	movq	416(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB3_6
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movq	416(%rax), %rdi
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB3_6:                                # %if.end.11
	movq	-32(%rbp), %rax
	movq	416(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_present
.LBB3_7:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	windows_show_display_previous_cmd_callback, .Lfunc_end3-windows_show_display_previous_cmd_callback
	.cfi_endproc

	.globl	windows_show_display_cmd_callback
	.align	16, 0x90
	.type	windows_show_display_cmd_callback,@function
windows_show_display_cmd_callback:      # @windows_show_display_cmd_callback
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_present
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	windows_show_display_cmd_callback, .Lfunc_end4-windows_show_display_cmd_callback
	.cfi_endproc

	.globl	windows_show_dock_cmd_callback
	.align	16, 0x90
	.type	windows_show_dock_cmd_callback,@function
windows_show_dock_cmd_callback:         # @windows_show_dock_cmd_callback
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_window_present
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	windows_show_dock_cmd_callback, .Lfunc_end5-windows_show_dock_cmd_callback
	.cfi_endproc

	.globl	windows_open_recent_cmd_callback
	.align	16, 0x90
	.type	windows_open_recent_cmd_callback,@function
windows_open_recent_cmd_callback:       # @windows_open_recent_cmd_callback
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	global_recent_docks, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_add_session_info
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_session_info_restore
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	windows_open_recent_cmd_callback, .Lfunc_end6-windows_open_recent_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hide-docks"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"single-window-mode"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"display"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dock-window"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"info"
	.size	.L.str.4, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
