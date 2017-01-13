	.text
	.file	"imap_edit_area_info.bc"
	.globl	create_edit_area_info_dialog
	.align	16, 0x90
	.type	create_edit_area_info_dialog,@function
create_edit_area_info_dialog:           # @create_edit_area_info_dialog
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$200, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 176(%rax)
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movabsq	$edit_area_ok_cb, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_ok_cb
	movabsq	$edit_area_apply_cb, %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_apply_cb
	movabsq	$edit_area_cancel_cb, %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_cancel_cb
	callq	gtk_notebook_new
	movabsq	$.L.str.1, %rsi
	movabsq	$switch_page, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$1, %r9d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_link_tab
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_info_tab
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_java_script_tab
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	create_edit_area_info_dialog, .Lfunc_end0-create_edit_area_info_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	edit_area_ok_cb,@function
edit_area_ok_cb:                        # @edit_area_ok_cb
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	192(%rax), %rsi
	callq	object_list_remove_geometry_cb
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	edit_object_command_new
	movq	%rax, %rdi
	callq	command_list_add
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	edit_area_apply_cb
	movq	-24(%rbp), %rdi
	callq	object_unlock
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	object_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	edit_area_ok_cb, .Lfunc_end1-edit_area_ok_cb
	.cfi_endproc

	.align	16, 0x90
	.type	edit_area_apply_cb,@function
edit_area_apply_cb:                     # @edit_area_apply_cb
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_url
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_target
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_comment
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_mouse_over
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_mouse_out
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_focus
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_blur
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rsi
	callq	*%rax
	movq	-24(%rbp), %rdi
	callq	update_shape
	movq	-16(%rbp), %rdi
	callq	object_was_changed
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	callq	preview_redraw
.LBB2_2:                                # %if.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	edit_area_apply_cb, .Lfunc_end2-edit_area_apply_cb
	.cfi_endproc

	.align	16, 0x90
	.type	edit_area_cancel_cb,@function
edit_area_cancel_cb:                    # @edit_area_cancel_cb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	object_was_changed
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rsi
	callq	object_list_remove_geometry_cb
	movq	-24(%rbp), %rdi
	callq	object_unlock
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	object_assign
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%edx, 20(%rcx)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	object_unref
	cmpl	$0, -28(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	callq	preview_redraw
.LBB3_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	edit_area_cancel_cb, .Lfunc_end3-edit_area_cancel_cb
	.cfi_endproc

	.align	16, 0x90
	.type	switch_page,@function
switch_page:                            # @switch_page
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_grab_focus
	jmp	.LBB4_6
.LBB4_2:                                # %if.else
	cmpl	$1, -20(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	184(%rcx), %rsi
	callq	*%rax
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.4
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_grab_focus
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	switch_page, .Lfunc_end4-switch_page
	.cfi_endproc

	.align	16, 0x90
	.type	create_link_tab,@function
create_link_tab:                        # @create_link_tab
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
	subq	$496, %rsp              # imm = 0x1F0
	movl	$11, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_web_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 48(%r10)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.6, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_ftp_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 56(%r10)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.7, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$2, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_gopher_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 64(%r10)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.8, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_other_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 72(%r10)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.9, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_file_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 80(%r10)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.10, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %r9d
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_wais_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 88(%r10)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.11, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movl	$2, %ecx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_telnet_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 96(%r10)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.12, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movl	$3, %ecx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r8
	callq	create_radio_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$select_email_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rax, 104(%r10)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.14, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	browse_widget_new
	movabsq	$relative_filter, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	browse_widget_set_filter
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.15, %rsi
	movabsq	$url_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, 112(%r10)
	movq	-8(%rbp), %rdi
	movq	112(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	112(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.16, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	xorl	%edx, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.17, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$6, %esi
	xorl	%edx, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$7, %edx
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	create_entry_in_table
	movabsq	$.L.str.18, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$9, %esi
	xorl	%edx, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$10, %edx
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	create_entry_in_table
	movabsq	$.L.str.20, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.19, %rdx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	append_page
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_link_tab, .Lfunc_end5-create_link_tab
	.cfi_endproc

	.align	16, 0x90
	.type	create_info_tab,@function
create_info_tab:                        # @create_info_tab
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
	subq	$128, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movabsq	$.L.str.5, %rsi
	movabsq	$toggle_preview_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rsi
	movq	%rax, 184(%rsi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	*200(%rax)
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	append_page
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	create_info_tab, .Lfunc_end6-create_info_tab
	.cfi_endproc

	.align	16, 0x90
	.type	create_java_script_tab,@function
create_java_script_tab:                 # @create_java_script_tab
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
	subq	$96, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$11, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movabsq	$.L.str.32, %rax
	movq	-32(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	create_entry_in_table
	movl	$3, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.33, %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movq	-32(%rbp), %rdi
	callq	create_label_in_table
	movl	$4, %edx
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	create_entry_in_table
	movl	$6, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.34, %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-32(%rbp), %rdi
	callq	create_label_in_table
	movl	$7, %edx
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	create_entry_in_table
	movl	$9, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.35, %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
	movq	-32(%rbp), %rdi
	callq	create_label_in_table
	movl	$10, %edx
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	create_entry_in_table
	movabsq	$.L.str.37, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	append_page
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	create_java_script_tab, .Lfunc_end7-create_java_script_tab
	.cfi_endproc

	.globl	edit_area_info_dialog_show
	.align	16, 0x90
	.type	edit_area_info_dialog_show,@function
edit_area_info_dialog_show:             # @edit_area_info_dialog_show
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	object_unlock
	movq	-16(%rbp), %rdi
	callq	object_lock
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-16(%rbp), %rdi
	callq	object_clone
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	184(%rsi), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_grab_focus
	movabsq	$geometry_changed, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	object_list_add_geometry_cb
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 192(%rdx)
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	object_get_position_in_list
	addl	$1, %eax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	default_dialog_set_title
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	default_dialog_show
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	edit_area_info_dialog_show, .Lfunc_end8-edit_area_info_dialog_show
	.cfi_endproc

	.align	16, 0x90
	.type	geometry_changed,@function
geometry_changed:                       # @geometry_changed
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
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 28(%rsi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
	jmp	.LBB9_5
.LBB9_2:                                # %if.else
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB9_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	184(%rcx), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rsi
	callq	*%rax
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	geometry_changed, .Lfunc_end9-geometry_changed
	.cfi_endproc

	.globl	edit_area_info_dialog_emit_geometry_signal
	.align	16, 0x90
	.type	edit_area_info_dialog_emit_geometry_signal,@function
edit_area_info_dialog_emit_geometry_signal: # @edit_area_info_dialog_emit_geometry_signal
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 32(%rdi)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	object_emit_geometry_signal
.LBB10_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	edit_area_info_dialog_emit_geometry_signal, .Lfunc_end10-edit_area_info_dialog_emit_geometry_signal
	.cfi_endproc

	.align	16, 0x90
	.type	object_was_changed,@function
object_was_changed:                     # @object_was_changed
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
	subq	$80, %rsp
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	104(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movb	$1, %r9b
	movl	-44(%rbp), %r10d
	cmpl	-28(%rbp), %r10d
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	jne	.LBB11_5
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movl	-48(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB11_5
# BB#2:                                 # %lor.lhs.false.6
	movb	$1, %al
	movl	-52(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB11_5
# BB#3:                                 # %lor.lhs.false.8
	movb	$1, %al
	movl	-56(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB11_5
# BB#4:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	20(%rax), %ecx
	setne	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB11_5:                               # %lor.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	object_was_changed, .Lfunc_end11-object_was_changed
	.cfi_endproc

	.align	16, 0x90
	.type	select_web_cb,@function
select_web_cb:                          # @select_web_cb
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
	subq	$16, %rsp
	movabsq	$.L.str.21, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	select_web_cb, .Lfunc_end12-select_web_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_ftp_cb,@function
select_ftp_cb:                          # @select_ftp_cb
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
	subq	$16, %rsp
	movabsq	$.L.str.23, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	select_ftp_cb, .Lfunc_end13-select_ftp_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_gopher_cb,@function
select_gopher_cb:                       # @select_gopher_cb
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
	subq	$16, %rsp
	movabsq	$.L.str.24, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	select_gopher_cb, .Lfunc_end14-select_gopher_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_other_cb,@function
select_other_cb:                        # @select_other_cb
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
	movabsq	$.L.str.25, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	select_other_cb, .Lfunc_end15-select_other_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_file_cb,@function
select_file_cb:                         # @select_file_cb
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
	movabsq	$.L.str.26, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	select_file_cb, .Lfunc_end16-select_file_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_wais_cb,@function
select_wais_cb:                         # @select_wais_cb
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
	subq	$16, %rsp
	movabsq	$.L.str.27, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	select_wais_cb, .Lfunc_end17-select_wais_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_telnet_cb,@function
select_telnet_cb:                       # @select_telnet_cb
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
	subq	$16, %rsp
	movabsq	$.L.str.28, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	select_telnet_cb, .Lfunc_end18-select_telnet_cb
	.cfi_endproc

	.align	16, 0x90
	.type	select_email_cb,@function
select_email_cb:                        # @select_email_cb
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
	subq	$16, %rsp
	movabsq	$.L.str.29, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_url
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	select_email_cb, .Lfunc_end19-select_email_cb
	.cfi_endproc

	.align	16, 0x90
	.type	relative_filter,@function
relative_filter:                        # @relative_filter
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -8(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB20_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	relative_filter, .Lfunc_end20-relative_filter
	.cfi_endproc

	.align	16, 0x90
	.type	url_changed,@function
url_changed:                            # @url_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$.L.str.21, %rsi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_21
.LBB21_2:                               # %if.else
	movabsq	$.L.str.23, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_20
.LBB21_4:                               # %if.else.8
	movabsq	$.L.str.24, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_6
# BB#5:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_19
.LBB21_6:                               # %if.else.12
	movabsq	$.L.str.26, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_8
# BB#7:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_18
.LBB21_8:                               # %if.else.16
	movabsq	$.L.str.27, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_10
# BB#9:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_17
.LBB21_10:                              # %if.else.20
	movabsq	$.L.str.28, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_12
# BB#11:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_16
.LBB21_12:                              # %if.else.24
	movabsq	$.L.str.29, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB21_14
# BB#13:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_15
.LBB21_14:                              # %if.else.28
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB21_15:                              # %if.end
	jmp	.LBB21_16
.LBB21_16:                              # %if.end.29
	jmp	.LBB21_17
.LBB21_17:                              # %if.end.30
	jmp	.LBB21_18
.LBB21_18:                              # %if.end.31
	jmp	.LBB21_19
.LBB21_19:                              # %if.end.32
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.33
	jmp	.LBB21_21
.LBB21_21:                              # %if.end.34
	movl	$1, callback_lock
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	url_changed, .Lfunc_end21-url_changed
	.cfi_endproc

	.align	16, 0x90
	.type	append_page,@function
append_page:                            # @append_page
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	movl	%r8d, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	append_page, .Lfunc_end22-append_page
	.cfi_endproc

	.align	16, 0x90
	.type	set_url,@function
set_url:                                # @set_url
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, callback_lock
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$0, callback_lock
	jmp	.LBB23_13
.LBB23_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB23_12
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movabsq	$.L.str.22, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strstr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_5
# BB#4:                                 # %if.then.10
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_11
.LBB23_5:                               # %if.else.11
	movl	$58, %esi
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_9
# BB#6:                                 # %if.then.14
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB23_8
# BB#7:                                 # %if.then.16
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB23_8:                               # %if.end
	jmp	.LBB23_10
.LBB23_9:                               # %if.else.18
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB23_10:                              # %if.end.19
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.20
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB23_12:                              # %if.end.25
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.26
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_grab_focus
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	set_url, .Lfunc_end23-set_url
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_preview_cb,@function
toggle_preview_cb:                      # @toggle_preview_cb
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-16(%rbp), %rsi
	movl	%eax, 32(%rsi)
	movq	-16(%rbp), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	toggle_preview_cb, .Lfunc_end24-toggle_preview_cb
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Area Settings"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"switch-page"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Area #%d Settings"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Link Type"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Web Site"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"toggled"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Ftp Site"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Gopher"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Ot_her"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"F_ile"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"WAI_S"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Tel_net"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"e-_mail"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_URL to activate when this area is clicked: (required)"
	.size	.L.str.13, 55

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Select HTML file"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"changed"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Relati_ve link"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Target frame name/ID: (optional - used for FRAMES only)"
	.size	.L.str.17, 57

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ALT te_xt: (optional)"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-web"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Link"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"http://"
	.size	.L.str.21, 8

	.type	callback_lock,@object   # @callback_lock
	.local	callback_lock
	.comm	callback_lock,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"//"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ftp://"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gopher://"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.zero	1
	.size	.L.str.25, 1

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file:/"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"wais://"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"telnet://"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"mailto:"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Dimensions"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Pre_view"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"o_nMouseover:"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"on_Mouseout:"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"on_Focus (HTML 4.0):"
	.size	.L.str.34, 21

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"on_Blur (HTML 4.0):"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"imap-java"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_JavaScript"
	.size	.L.str.37, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
