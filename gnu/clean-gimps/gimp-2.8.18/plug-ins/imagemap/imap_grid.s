	.text
	.file	"imap_grid.bc"
	.globl	do_grid_settings_dialog
	.align	16, 0x90
	.type	do_grid_settings_dialog,@function
do_grid_settings_dialog:                # @do_grid_settings_dialog
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
	subq	$64, %rsp
	cmpq	$0, do_grid_settings_dialog.dialog
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	create_grid_settings_dialog
	movq	%rax, do_grid_settings_dialog.dialog
.LBB0_2:                                # %if.end
	movq	do_grid_settings_dialog.dialog, %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	grid_snap, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_grid_settings_dialog.dialog, %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	grid_width, %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	do_grid_settings_dialog.dialog, %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	grid_height, %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	do_grid_settings_dialog.dialog, %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	grid_left, %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	do_grid_settings_dialog.dialog, %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	grid_top, %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	cmpl	$0, grid_type
	jne	.LBB0_4
# BB#3:                                 # %if.then.15
	movq	do_grid_settings_dialog.dialog, %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                # %if.else
	cmpl	$1, grid_type
	jne	.LBB0_6
# BB#5:                                 # %if.then.18
	movq	do_grid_settings_dialog.dialog, %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.19
	movq	do_grid_settings_dialog.dialog, %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:                                # %if.end.20
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.21
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_grid_settings_dialog.dialog, %rax
	movq	(%rax), %rdi
	callq	default_dialog_show
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	do_grid_settings_dialog, .Lfunc_end0-do_grid_settings_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	create_grid_settings_dialog,@function
create_grid_settings_dialog:            # @create_grid_settings_dialog
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
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movl	%eax, %edi
	movl	$128, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movabsq	$grid_settings_ok_cb, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_ok_cb
	movl	$4, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rdi
	callq	default_dialog_add_table
	movabsq	$.L.str.1, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movabsq	$.L.str.2, %rsi
	movabsq	$snap_toggled_cb, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movabsq	$.L.str.2, %rsi
	movabsq	$type_toggled_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r11d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rbx
	movq	%rax, 88(%rbx)
	movq	-72(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movq	%r11, %r8
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movabsq	$.L.str.2, %rsi
	movabsq	$type_toggled_cb, %rdi
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %r11
	movq	%rax, 96(%r11)
	movq	-72(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movabsq	$.L.str.2, %rsi
	movabsq	$type_toggled_cb, %rdi
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %r11
	movq	%rax, 104(%r11)
	movq	-72(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movl	$2, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.8, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$15, %r8d
	movl	$100, %r9d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	%esi, -284(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-284(%rbp), %ecx        # 4-byte Reload
	movl	-284(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -288(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.9, %rsi
	movabsq	$width_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 40(%r11)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.11, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	movl	$15, %r8d
	movl	$100, %esi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -336(%rbp)        # 4-byte Spill
	movl	-336(%rbp), %ecx        # 4-byte Reload
	movl	-336(%rbp), %r9d        # 4-byte Reload
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.9, %rsi
	movabsq	$height_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 48(%r11)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$3, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$3, %edi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.13, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$100, %esi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	%esi, -436(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -440(%rbp)        # 4-byte Spill
	movl	-440(%rbp), %ecx        # 4-byte Reload
	movl	-440(%rbp), %r8d        # 4-byte Reload
	movl	-440(%rbp), %r9d        # 4-byte Reload
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.9, %rsi
	movabsq	$left_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 64(%r11)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$2, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$100, %r9d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	%esi, -468(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-468(%rbp), %ecx        # 4-byte Reload
	movl	-468(%rbp), %r8d        # 4-byte Reload
	movl	-468(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -472(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.9, %rsi
	movabsq	$top_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r11
	movq	%rax, 72(%r11)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %r11
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$3, %edi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r9d
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$toggle_preview_cb, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 112(%rdi)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	112(%rcx), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	snap_toggled_cb
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	create_grid_settings_dialog, .Lfunc_end1-create_grid_settings_dialog
	.cfi_endproc

	.globl	draw_grid
	.align	16, 0x90
	.type	draw_grid,@function
draw_grid:                              # @draw_grid
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, grid_snap
	je	.LBB2_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, grid_type
	je	.LBB2_6
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	cairo_save
	cmpl	$1, grid_type
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	draw_lines
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	draw_crosses
.LBB2_5:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	cairo_restore
.LBB2_6:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	draw_grid, .Lfunc_end2-draw_grid
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	draw_lines,@function
draw_lines:                             # @draw_lines
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	cairo_set_dash
	movl	grid_left, %eax
	cltd
	idivl	grid_width
	movl	%edx, -20(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	draw_line
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	grid_width, %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movl	grid_top, %eax
	cltd
	idivl	grid_height
	movl	%edx, -24(%rbp)
.LBB3_5:                                # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB3_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	draw_line
# BB#7:                                 # %for.inc.5
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	grid_height, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	draw_lines, .Lfunc_end3-draw_lines
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4616752568008179712     # double 4.5
.LCPI4_1:
	.quad	4619567317775286272     # double 7
	.text
	.align	16, 0x90
	.type	draw_crosses,@function
draw_crosses:                           # @draw_crosses
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rcx
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm1, -64(%rbp)
	cvtsi2sdl	grid_height, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm1, -48(%rbp)
	cvtsi2sdl	grid_width, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	grid_top, %xmm1
	subsd	%xmm1, %xmm0
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	cairo_set_dash
	movl	grid_left, %eax
	cltd
	idivl	grid_width
	movl	%edx, -20(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	draw_line
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	grid_width, %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movl	$2, %edx
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	addq	$16, %rax
	cvtsi2sdl	grid_left, %xmm1
	subsd	%xmm1, %xmm0
	movq	%rax, %rsi
	callq	cairo_set_dash
	movl	grid_top, %eax
	cltd
	idivl	grid_height
	movl	%edx, -24(%rbp)
.LBB4_5:                                # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB4_8
# BB#6:                                 # %for.body.15
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	draw_line
# BB#7:                                 # %for.inc.16
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	grid_height, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB4_5
.LBB4_8:                                # %for.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	draw_crosses, .Lfunc_end4-draw_crosses
	.cfi_endproc

	.globl	toggle_grid
	.align	16, 0x90
	.type	toggle_grid,@function
toggle_grid:                            # @toggle_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	cmpl	$0, grid_snap
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, grid_snap
	callq	preview_redraw
	popq	%rbp
	retq
.Lfunc_end5:
	.size	toggle_grid, .Lfunc_end5-toggle_grid
	.cfi_endproc

	.globl	round_to_grid
	.align	16, 0x90
	.type	round_to_grid,@function
round_to_grid:                          # @round_to_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, grid_snap
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	grid_nearest_x
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	grid_nearest_y
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	round_to_grid, .Lfunc_end6-round_to_grid
	.cfi_endproc

	.align	16, 0x90
	.type	grid_nearest_x,@function
grid_nearest_x:                         # @grid_nearest_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
	movl	%edi, -4(%rbp)
	movl	grid_left, %edi
	movl	-4(%rbp), %ecx
	subl	grid_left, %ecx
	movl	grid_width, %edx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-8(%rbp), %esi          # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	grid_width
	imull	grid_width, %eax
	addl	%eax, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	grid_nearest_x, .Lfunc_end7-grid_nearest_x
	.cfi_endproc

	.align	16, 0x90
	.type	grid_nearest_y,@function
grid_nearest_y:                         # @grid_nearest_y
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
	movl	$2, %eax
	movl	%edi, -4(%rbp)
	movl	grid_top, %edi
	movl	-4(%rbp), %ecx
	subl	grid_top, %ecx
	movl	grid_height, %edx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-8(%rbp), %esi          # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	grid_height
	imull	grid_height, %eax
	addl	%eax, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	grid_nearest_y, .Lfunc_end8-grid_nearest_y
	.cfi_endproc

	.globl	grid_near_x
	.align	16, 0x90
	.type	grid_near_x,@function
grid_near_x:                            # @grid_near_x
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movl	%edi, -4(%rbp)
	cmpl	$0, grid_snap
	movb	%cl, -5(%rbp)           # 1-byte Spill
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, grid_type
	movb	%cl, -5(%rbp)           # 1-byte Spill
	je	.LBB9_3
# BB#2:                                 # %land.rhs
	movl	-4(%rbp), %edi
	callq	grid_nearest_x
	subl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	$1, %eax
	setle	%cl
	movb	%cl, -5(%rbp)           # 1-byte Spill
.LBB9_3:                                # %land.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	grid_near_x, .Lfunc_end9-grid_near_x
	.cfi_endproc

	.globl	grid_near_y
	.align	16, 0x90
	.type	grid_near_y,@function
grid_near_y:                            # @grid_near_y
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movl	%edi, -4(%rbp)
	cmpl	$0, grid_snap
	movb	%cl, -5(%rbp)           # 1-byte Spill
	je	.LBB10_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, grid_type
	movb	%cl, -5(%rbp)           # 1-byte Spill
	je	.LBB10_3
# BB#2:                                 # %land.rhs
	movl	-4(%rbp), %edi
	callq	grid_nearest_x
	subl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	$1, %eax
	setle	%cl
	movb	%cl, -5(%rbp)           # 1-byte Spill
.LBB10_3:                               # %land.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	grid_near_y, .Lfunc_end10-grid_near_y
	.cfi_endproc

	.align	16, 0x90
	.type	grid_settings_ok_cb,@function
grid_settings_ok_cb:                    # @grid_settings_ok_cb
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, grid_width
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, grid_height
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, grid_left
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, grid_top
	movl	grid_snap, %eax
	cmpl	-20(%rbp), %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, grid_snap
	movl	grid_snap, %edi
	callq	menu_check_grid
.LBB11_2:                               # %if.end
	callq	preview_redraw
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	grid_settings_ok_cb, .Lfunc_end11-grid_settings_ok_cb
	.cfi_endproc

	.align	16, 0x90
	.type	snap_toggled_cb,@function
snap_toggled_cb:                        # @snap_toggled_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rdi
	movq	112(%rdi), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	snap_toggled_cb, .Lfunc_end12-snap_toggled_cb
	.cfi_endproc

	.align	16, 0x90
	.type	type_toggled_cb,@function
type_toggled_cb:                        # @type_toggled_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, grid_type
	callq	preview_redraw
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	type_toggled_cb, .Lfunc_end13-type_toggled_cb
	.cfi_endproc

	.align	16, 0x90
	.type	width_changed_cb,@function
width_changed_cb:                       # @width_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$grid_width, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	grid_assign_value
	movq	-24(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
.LBB14_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	width_changed_cb, .Lfunc_end14-width_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	height_changed_cb,@function
height_changed_cb:                      # @height_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$grid_height, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	grid_assign_value
	movq	-24(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
.LBB15_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	height_changed_cb, .Lfunc_end15-height_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	left_changed_cb,@function
left_changed_cb:                        # @left_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$grid_left, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	grid_assign_value
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
.LBB16_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	left_changed_cb, .Lfunc_end16-left_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	top_changed_cb,@function
top_changed_cb:                         # @top_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$grid_top, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	grid_assign_value
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
.LBB17_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	top_changed_cb, .Lfunc_end17-top_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_preview_cb,@function
toggle_preview_cb:                      # @toggle_preview_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
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
	movl	%eax, 120(%rsi)
	callq	preview_redraw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	toggle_preview_cb, .Lfunc_end18-toggle_preview_cb
	.cfi_endproc

	.align	16, 0x90
	.type	grid_assign_value,@function
grid_assign_value:                      # @grid_assign_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpl	$0, 120(%rdx)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	callq	preview_redraw
.LBB19_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	grid_assign_value, .Lfunc_end19-grid_assign_value
	.cfi_endproc

	.type	do_grid_settings_dialog.dialog,@object # @do_grid_settings_dialog.dialog
	.local	do_grid_settings_dialog.dialog
	.comm	do_grid_settings_dialog.dialog,8,8
	.type	grid_snap,@object       # @grid_snap
	.local	grid_snap
	.comm	grid_snap,4,4
	.type	grid_width,@object      # @grid_width
	.data
	.align	4
grid_width:
	.long	15                      # 0xf
	.size	grid_width, 4

	.type	grid_height,@object     # @grid_height
	.align	4
grid_height:
	.long	15                      # 0xf
	.size	grid_height, 4

	.type	grid_left,@object       # @grid_left
	.local	grid_left
	.comm	grid_left,4,4
	.type	grid_top,@object        # @grid_top
	.local	grid_top
	.comm	grid_top,4,4
	.type	grid_type,@object       # @grid_type
	.align	4
grid_type:
	.long	1                       # 0x1
	.size	grid_type, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Grid Settings"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"_Snap-to grid enabled"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"toggled"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Grid Visibility and Type"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Hidden"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Lines"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"C_rosses"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Grid Granularity"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Width"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"value-changed"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"pixels"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Height"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Grid Offset"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pixels from l_eft"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pixels from _top"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Preview"
	.size	.L.str.15, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
