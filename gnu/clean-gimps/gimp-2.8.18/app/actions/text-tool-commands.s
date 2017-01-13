	.text
	.file	"text-tool-commands.bc"
	.globl	text_tool_cut_cmd_callback
	.align	16, 0x90
	.type	text_tool_cut_cmd_callback,@function
text_tool_cut_cmd_callback:             # @text_tool_cut_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_cut_clipboard
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	text_tool_cut_cmd_callback, .Lfunc_end0-text_tool_cut_cmd_callback
	.cfi_endproc

	.globl	text_tool_copy_cmd_callback
	.align	16, 0x90
	.type	text_tool_copy_cmd_callback,@function
text_tool_copy_cmd_callback:            # @text_tool_copy_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_copy_clipboard
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	text_tool_copy_cmd_callback, .Lfunc_end1-text_tool_copy_cmd_callback
	.cfi_endproc

	.globl	text_tool_paste_cmd_callback
	.align	16, 0x90
	.type	text_tool_paste_cmd_callback,@function
text_tool_paste_cmd_callback:           # @text_tool_paste_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_paste_clipboard
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	text_tool_paste_cmd_callback, .Lfunc_end2-text_tool_paste_cmd_callback
	.cfi_endproc

	.globl	text_tool_delete_cmd_callback
	.align	16, 0x90
	.type	text_tool_delete_cmd_callback,@function
text_tool_delete_cmd_callback:          # @text_tool_delete_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_delete_selection
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	text_tool_delete_cmd_callback, .Lfunc_end3-text_tool_delete_cmd_callback
	.cfi_endproc

	.globl	text_tool_load_cmd_callback
	.align	16, 0x90
	.type	text_tool_load_cmd_callback,@function
text_tool_load_cmd_callback:            # @text_tool_load_cmd_callback
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB4_8
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 56(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)
.LBB4_4:                                # %if.end.17
	movabsq	$.L.str.1, %rdi
	callq	gettext
	cmpq	$0, -40(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB4_6
# BB#5:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_7:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorl	%edx, %edx
	movabsq	$.L.str.2, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.3, %r9
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movabsq	$.L.str.4, %rsi
	movabsq	$text_tool_load_dialog_destroyed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.6, %rsi
	movabsq	$text_tool_load_dialog_response, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
.LBB4_8:                                # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	text_tool_load_cmd_callback, .Lfunc_end4-text_tool_load_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	text_tool_load_dialog_destroyed,@function
text_tool_load_dialog_destroyed:        # @text_tool_load_dialog_destroyed
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
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_object_set_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	text_tool_load_dialog_destroyed, .Lfunc_end5-text_tool_load_dialog_destroyed
	.cfi_endproc

	.align	16, 0x90
	.type	text_tool_load_dialog_response,@function
text_tool_load_dialog_response:         # @text_tool_load_dialog_response
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB6_4
# BB#1:                                 # %if.then
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	leaq	-40(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_buffer_load
	cmpl	$0, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$2, %edx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_5
.LBB6_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB6_4:                                # %if.end.10
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB6_5:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	text_tool_load_dialog_response, .Lfunc_end6-text_tool_load_dialog_response
	.cfi_endproc

	.globl	text_tool_clear_cmd_callback
	.align	16, 0x90
	.type	text_tool_clear_cmd_callback,@function
text_tool_clear_cmd_callback:           # @text_tool_clear_cmd_callback
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-112(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_select_range
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_delete_selection
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	text_tool_clear_cmd_callback, .Lfunc_end7-text_tool_clear_cmd_callback
	.cfi_endproc

	.globl	text_tool_text_to_path_cmd_callback
	.align	16, 0x90
	.type	text_tool_text_to_path_cmd_callback,@function
text_tool_text_to_path_cmd_callback:    # @text_tool_text_to_path_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_create_vectors
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	text_tool_text_to_path_cmd_callback, .Lfunc_end8-text_tool_text_to_path_cmd_callback
	.cfi_endproc

	.globl	text_tool_text_along_path_cmd_callback
	.align	16, 0x90
	.type	text_tool_text_along_path_cmd_callback,@function
text_tool_text_along_path_cmd_callback: # @text_tool_text_along_path_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_create_vectors_warped
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	text_tool_text_along_path_cmd_callback, .Lfunc_end9-text_tool_text_along_path_cmd_callback
	.cfi_endproc

	.globl	text_tool_direction_cmd_callback
	.align	16, 0x90
	.type	text_tool_direction_cmd_callback,@function
text_tool_direction_cmd_callback:       # @text_tool_direction_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movabsq	$.L.str.8, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movq	248(%rdx), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	text_tool_direction_cmd_callback, .Lfunc_end10-text_tool_direction_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-text-file-dialog"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Open Text File (UTF-8)"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-cancel"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-open"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"destroy"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-text-load-file"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"delete-event"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"base-direction"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.9, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
