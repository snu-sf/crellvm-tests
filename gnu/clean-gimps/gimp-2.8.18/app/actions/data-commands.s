	.text
	.file	"data-commands.bc"
	.globl	data_open_as_image_cmd_callback
	.align	16, 0x90
	.type	data_open_as_image_cmd_callback,@function
data_open_as_image_cmd_callback:        # @data_open_as_image_cmd_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_8
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_data_get_filename
	cmpq	$0, %rax
	je	.LBB0_8
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_data_get_filename
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	g_filename_to_uri
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_7
# BB#3:                                 # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	leaq	-60(%rbp), %r9
	leaq	-72(%rbp), %rcx
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %r10
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	file_open_with_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_6
# BB#4:                                 # %land.lhs.true.16
	cmpl	$4, -60(%rbp)
	je	.LBB0_6
# BB#5:                                 # %if.then.17
	movq	-48(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-72(%rbp), %rdi
	callq	g_clear_error
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB0_6:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB0_7:                                # %if.end.22
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.23
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	data_open_as_image_cmd_callback, .Lfunc_end0-data_open_as_image_cmd_callback
	.cfi_endproc

	.globl	data_new_cmd_callback
	.align	16, 0x90
	.type	data_new_cmd_callback,@function
data_new_cmd_callback:                  # @data_new_cmd_callback
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_has_data_new_func
	cmpl	$0, %eax
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_get_data_factory
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movabsq	$.L.str.1, %rdi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_data_factory_data_new
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.11
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_context_set_by_type
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_get_edit_button
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.18
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	data_new_cmd_callback, .Lfunc_end1-data_new_cmd_callback
	.cfi_endproc

	.globl	data_duplicate_cmd_callback
	.align	16, 0x90
	.type	data_duplicate_cmd_callback,@function
data_duplicate_cmd_callback:            # @data_duplicate_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_view_have
	cmpl	$0, %eax
	je	.LBB2_5
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_get_data_factory
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_data_factory_data_duplicate
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_context_set_by_type
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_get_edit_button
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.22
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	data_duplicate_cmd_callback, .Lfunc_end2-data_duplicate_cmd_callback
	.cfi_endproc

	.globl	data_copy_location_cmd_callback
	.align	16, 0x90
	.type	data_copy_location_cmd_callback,@function
data_copy_location_cmd_callback:        # @data_copy_location_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_data_get_filename
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_6
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_6
# BB#3:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then.14
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_clipboard_set_text
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.15
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	data_copy_location_cmd_callback, .Lfunc_end3-data_copy_location_cmd_callback
	.cfi_endproc

	.globl	data_delete_cmd_callback
	.align	16, 0x90
	.type	data_delete_cmd_callback,@function
data_delete_cmd_callback:               # @data_delete_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_4
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_view_have
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_get_data_factory
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	data_delete_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB4_4:                                # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	data_delete_cmd_callback, .Lfunc_end4-data_delete_cmd_callback
	.cfi_endproc

	.globl	data_refresh_cmd_callback
	.align	16, 0x90
	.type	data_refresh_cmd_callback,@function
data_refresh_cmd_callback:              # @data_refresh_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_set_busy
	movq	-24(%rbp), %rdi
	callq	gimp_data_factory_view_get_data_factory
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_data_refresh
	movq	-32(%rbp), %rdi
	callq	gimp_unset_busy
.LBB5_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	data_refresh_cmd_callback, .Lfunc_end5-data_refresh_cmd_callback
	.cfi_endproc

	.globl	data_edit_cmd_callback
	.align	16, 0x90
	.type	data_edit_cmd_callback,@function
data_edit_cmd_callback:                 # @data_edit_cmd_callback
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_children_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_view_have
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_data_editor_set_data
.LBB6_3:                                # %if.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	data_edit_cmd_callback, .Lfunc_end6-data_edit_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Untitled"
	.size	.L.str.1, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
