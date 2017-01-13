	.text
	.file	"imap_settings.bc"
	.globl	do_settings_dialog
	.align	16, 0x90
	.type	do_settings_dialog,@function
do_settings_dialog:                     # @do_settings_dialog
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
	subq	$80, %rsp
	callq	get_filename
	movq	%rax, -8(%rbp)
	callq	get_map_info
	movq	%rax, -16(%rbp)
	cmpq	$0, do_settings_dialog.dialog
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	create_settings_dialog
	movq	%rax, do_settings_dialog.dialog
.LBB0_2:                                # %if.end
	cmpq	$0, -8(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
.LBB0_4:                                # %if.end.6
	movq	do_settings_dialog.dialog, %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	do_settings_dialog.dialog, %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	browse_widget_set_filename
	movq	do_settings_dialog.dialog, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	do_settings_dialog.dialog, %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	do_settings_dialog.dialog, %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_6
# BB#5:                                 # %if.then.19
	movq	do_settings_dialog.dialog, %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	jmp	.LBB0_10
.LBB0_6:                                # %if.else
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB0_8
# BB#7:                                 # %if.then.24
	movq	do_settings_dialog.dialog, %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.27
	movq	do_settings_dialog.dialog, %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB0_9:                                # %if.end.30
	jmp	.LBB0_10
.LBB0_10:                               # %if.end.31
	movq	do_settings_dialog.dialog, %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_grab_focus
	movq	do_settings_dialog.dialog, %rax
	movq	(%rax), %rdi
	callq	default_dialog_show
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	do_settings_dialog.dialog, %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gtk_text_buffer_set_text
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	do_settings_dialog, .Lfunc_end0-do_settings_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	create_settings_dialog,@function
create_settings_dialog:                 # @create_settings_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movl	$1, %eax
	movl	%eax, %edi
	movl	$80, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str.1, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movabsq	$settings_ok_cb, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_ok_cb
	movl	$9, %esi
	movl	$2, %edx
	movq	-80(%rbp), %rdi
	callq	default_dialog_add_table
	movabsq	$.L.str.2, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%esi, %esi
	movl	$1, %edx
	movabsq	$.L.str.3, %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	create_label_in_table
	movabsq	$.L.str.4, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.5, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	browse_widget_new
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r8d
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-124(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-128(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.6, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$2, %edx
	movl	$1, %ecx
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	create_entry_in_table
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$3, %edx
	movl	$1, %ecx
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	create_entry_in_table
	movabsq	$.L.str.8, %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$4, %edx
	movl	$1, %ecx
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	create_entry_in_table
	movabsq	$.L.str.9, %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$5, %esi
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -64(%rbp)
	callq	gtk_text_buffer_new
	movq	-24(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gtk_text_view_new_with_buffer
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$128, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	xorl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	movl	$8, %r9d
	movl	$7, %r10d
	xorl	%r11d, %r11d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$7, (%rsp)
	movl	$7, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -188(%rbp)       # 4-byte Spill
	movl	%r10d, -192(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$9, %r8d
	movl	$10, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.11, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movabsq	$.L.str.12, %rsi
	movabsq	$type_toggled_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %ebx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r14
	movq	%rax, 48(%r14)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbx, %r8
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movabsq	$.L.str.12, %rsi
	movabsq	$type_toggled_cb, %rdi
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rbx
	movq	%rax, 56(%rbx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movabsq	$.L.str.12, %rsi
	movabsq	$type_toggled_cb, %rdi
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rbx
	movq	%rax, 64(%rbx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	create_settings_dialog, .Lfunc_end1-create_settings_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	settings_ok_cb,@function
settings_ok_cb:                         # @settings_ok_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	get_map_info
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strreplace
	movq	-24(%rbp), %rsi
	addq	$16, %rsi
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strreplace
	movq	-24(%rbp), %rsi
	addq	$24, %rsi
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strreplace
	movq	-24(%rbp), %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strreplace
	leaq	-112(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_bounds
	leaq	-112(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-32(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_free
	movl	_map_format, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end2:
	.size	settings_ok_cb, .Lfunc_end2-settings_ok_cb
	.cfi_endproc

	.align	16, 0x90
	.type	type_toggled_cb,@function
type_toggled_cb:                        # @type_toggled_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, _map_format
.LBB3_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	type_toggled_cb, .Lfunc_end3-type_toggled_cb
	.cfi_endproc

	.type	do_settings_dialog.dialog,@object # @do_settings_dialog.dialog
	.local	do_settings_dialog.dialog
	.comm	do_settings_dialog.dialog,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<Untitled>"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Settings for this Mapfile"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Filename:"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Image name:"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Select Image File"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Title:"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Aut_hor:"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Default _URL:"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Description:"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Map File Format"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_NCSA"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"toggled"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"C_ERN"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"C_SIM"
	.size	.L.str.14, 6

	.type	_map_format,@object     # @_map_format
	.data
	.align	4
_map_format:
	.long	2                       # 0x2
	.size	_map_format, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
