	.text
	.file	"documents-commands.bc"
	.globl	documents_open_cmd_callback
	.align	16, 0x90
	.type	documents_open_cmd_callback,@function
documents_open_cmd_callback:            # @documents_open_cmd_callback
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
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	documents_open_image
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	file_file_open_dialog
.LBB0_4:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	documents_open_cmd_callback, .Lfunc_end0-documents_open_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	documents_open_image,@function
documents_open_image:                   # @documents_open_image
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	leaq	-44(%rbp), %r9
	leaq	-56(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	file_open_with_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpl	$4, -44(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB1_3:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	documents_open_image, .Lfunc_end1-documents_open_image
	.cfi_endproc

	.globl	documents_raise_or_open_cmd_callback
	.align	16, 0x90
	.type	documents_raise_or_open_cmd_callback,@function
documents_raise_or_open_cmd_callback:   # @documents_raise_or_open_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
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
	je	.LBB2_5
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$documents_raise_display, %rdi
	leaq	-64(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movl	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	416(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	gimp_container_foreach
	cmpl	$0, -56(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	documents_open_image
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.16
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	documents_raise_or_open_cmd_callback, .Lfunc_end2-documents_raise_or_open_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	documents_raise_display,@function
documents_raise_display:                # @documents_raise_display
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
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_present
.LBB3_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	documents_raise_display, .Lfunc_end3-documents_raise_display
	.cfi_endproc

	.globl	documents_file_open_dialog_cmd_callback
	.align	16, 0x90
	.type	documents_file_open_dialog_cmd_callback,@function
documents_file_open_dialog_cmd_callback: # @documents_file_open_dialog_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	file_file_open_dialog
.LBB4_3:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	documents_file_open_dialog_cmd_callback, .Lfunc_end4-documents_file_open_dialog_cmd_callback
	.cfi_endproc

	.globl	documents_copy_location_cmd_callback
	.align	16, 0x90
	.type	documents_copy_location_cmd_callback,@function
documents_copy_location_cmd_callback:   # @documents_copy_location_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_clipboard_set_text
.LBB5_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	documents_copy_location_cmd_callback, .Lfunc_end5-documents_copy_location_cmd_callback
	.cfi_endproc

	.globl	documents_remove_cmd_callback
	.align	16, 0x90
	.type	documents_remove_cmd_callback,@function
documents_remove_cmd_callback:          # @documents_remove_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -48(%rbp)
	callq	gtk_recent_manager_get_default
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_recent_manager_remove_item
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_container_view_remove_active
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	documents_remove_cmd_callback, .Lfunc_end6-documents_remove_cmd_callback
	.cfi_endproc

	.globl	documents_clear_cmd_callback
	.align	16, 0x90
	.type	documents_clear_cmd_callback,@function
documents_clear_cmd_callback:           # @documents_clear_cmd_callback
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movl	$3, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.2, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -136(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.3, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movl	$2, %r8d
	movq	-56(%rbp), %r9
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movq	-56(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	264(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-56(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	264(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-56(%rbp), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB7_8
# BB#1:                                 # %if.then
	callq	gtk_recent_manager_get_default
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_recent_manager_get_items
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB7_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_recent_info_has_application
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.29
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_recent_info_get_uri
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_recent_manager_remove_item
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-88(%rbp), %rdi
	callq	gtk_recent_info_unref
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB7_2
.LBB7_7:                                # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
	movq	-48(%rbp), %rdi
	movq	544(%rdi), %rdi
	callq	gimp_container_clear
.LBB7_8:                                # %if.end.32
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	documents_clear_cmd_callback, .Lfunc_end7-documents_clear_cmd_callback
	.cfi_endproc

	.globl	documents_recreate_preview_cmd_callback
	.align	16, 0x90
	.type	documents_recreate_preview_cmd_callback,@function
documents_recreate_preview_cmd_callback: # @documents_recreate_preview_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	352(%rcx), %ecx
	callq	gimp_imagefile_create_thumbnail
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB8_3:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	documents_recreate_preview_cmd_callback, .Lfunc_end8-documents_recreate_preview_cmd_callback
	.cfi_endproc

	.globl	documents_reload_previews_cmd_callback
	.align	16, 0x90
	.type	documents_reload_previews_cmd_callback,@function
documents_reload_previews_cmd_callback: # @documents_reload_previews_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movabsq	$gimp_imagefile_update, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdx
	callq	gimp_container_foreach
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	documents_reload_previews_cmd_callback, .Lfunc_end9-documents_reload_previews_cmd_callback
	.cfi_endproc

	.globl	documents_remove_dangling_cmd_callback
	.align	16, 0x90
	.type	documents_remove_dangling_cmd_callback,@function
documents_remove_dangling_cmd_callback: # @documents_remove_dangling_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movabsq	$documents_remove_dangling_foreach, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_foreach
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	documents_remove_dangling_cmd_callback, .Lfunc_end10-documents_remove_dangling_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	documents_remove_dangling_foreach,@function
documents_remove_dangling_foreach:      # @documents_remove_dangling_foreach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_imagefile_get_thumbnail
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_thumbnail_peek_image
	cmpl	$4, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	callq	gtk_recent_manager_get_default
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_recent_manager_remove_item
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	documents_remove_dangling_foreach, .Lfunc_end11-documents_remove_dangling_foreach
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Clear Document History"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk-clear"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-cancel"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"unmap"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Clear the Recent Documents list?"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Clearing the document history will permanently remove all images from the recent documents list."
	.size	.L.str.5, 97

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.7, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
