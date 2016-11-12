	.text
	.file	"error-console-commands.bc"
	.globl	error_console_clear_cmd_callback
	.align	16, 0x90
	.type	error_console_clear_cmd_callback,@function
error_console_clear_cmd_callback:       # @error_console_clear_cmd_callback
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_delete
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	error_console_clear_cmd_callback, .Lfunc_end0-error_console_clear_cmd_callback
	.cfi_endproc

	.globl	error_console_select_all_cmd_callback
	.align	16, 0x90
	.type	error_console_select_all_cmd_callback,@function
error_console_select_all_cmd_callback:  # @error_console_select_all_cmd_callback
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_text_buffer_select_range
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	error_console_select_all_cmd_callback, .Lfunc_end1-error_console_select_all_cmd_callback
	.cfi_endproc

	.globl	error_console_save_cmd_callback
	.align	16, 0x90
	.type	error_console_save_cmd_callback,@function
error_console_save_cmd_callback:        # @error_console_save_cmd_callback
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gtk_text_buffer_get_selection_bounds
	cmpl	$0, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	136(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB2_6
.LBB2_3:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB2_5
# BB#4:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB2_6
.LBB2_5:                                # %if.end.11
	movabsq	$.L.str.1, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movabsq	$.L.str.2, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.3, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, 184(%rdi)
	movq	-32(%rbp), %rdi
	movq	176(%rdi), %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$176, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
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
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.5, %rsi
	movabsq	$error_console_save_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	callq	gimp_help_connect
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
.LBB2_6:                                # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	error_console_save_cmd_callback, .Lfunc_end2-error_console_save_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	error_console_save_response,@function
error_console_save_response:            # @error_console_save_response
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
	cmpl	$-5, -12(%rbp)
	jne	.LBB3_4
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	184(%rdi), %edx
	movq	%rax, %rdi
	callq	gimp_text_buffer_save
	cmpl	$0, %eax
	jne	.LBB3_3
# BB#2:                                 # %if.then.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$2, %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	leaq	-32(%rbp), %rdi
	callq	g_clear_error
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_5
.LBB3_3:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB3_4:                                # %if.end.10
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB3_5:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	error_console_save_response, .Lfunc_end3-error_console_save_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot save. Nothing is selected."
	.size	.L.str, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Save Error Log to File"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-cancel"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-save"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-save-errors"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"response"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"delete-event"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-errors-dialog"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error writing file '%s':\n%s"
	.size	.L.str.8, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
