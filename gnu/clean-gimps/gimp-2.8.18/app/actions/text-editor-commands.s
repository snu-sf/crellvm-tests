	.text
	.file	"text-editor-commands.bc"
	.globl	text_editor_load_cmd_callback
	.align	16, 0x90
	.type	text_editor_load_cmd_callback,@function
text_editor_load_cmd_callback:          # @text_editor_load_cmd_callback
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.1, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.2, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	-32(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-32(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
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
	movq	-40(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$296, %rsi              # imm = 0x128
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.4, %rsi
	movabsq	$text_editor_load_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
.LBB0_3:                                # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	text_editor_load_cmd_callback, .Lfunc_end0-text_editor_load_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	text_editor_load_response,@function
text_editor_load_response:              # @text_editor_load_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB1_4
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_text_buffer_load
	cmpl	$0, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	304(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$2, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_5
.LBB1_3:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB1_4:                                # %if.end.13
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB1_5:                                # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	text_editor_load_response, .Lfunc_end1-text_editor_load_response
	.cfi_endproc

	.globl	text_editor_clear_cmd_callback
	.align	16, 0x90
	.type	text_editor_clear_cmd_callback,@function
text_editor_clear_cmd_callback:         # @text_editor_clear_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_set_text
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	text_editor_clear_cmd_callback, .Lfunc_end2-text_editor_clear_cmd_callback
	.cfi_endproc

	.globl	text_editor_direction_cmd_callback
	.align	16, 0x90
	.type	text_editor_direction_cmd_callback,@function
text_editor_direction_cmd_callback:     # @text_editor_direction_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_editor_get_type
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
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_text_editor_set_direction
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	text_editor_direction_cmd_callback, .Lfunc_end3-text_editor_direction_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Open Text File (UTF-8)"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk-cancel"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-open"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-text-load-file"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"response"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"delete-event"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.7, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
