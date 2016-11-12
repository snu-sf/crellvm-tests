	.text
	.file	"imap_cmd_gimp_guides.bc"
	.globl	gimp_guides_command_new
	.align	16, 0x90
	.type	gimp_guides_command_new,@function
gimp_guides_command_new:                # @gimp_guides_command_new
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$48, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_guides_command_class, %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_guides_command_new, .Lfunc_end0-gimp_guides_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guides_command_execute,@function
gimp_guides_command_execute:            # @gimp_guides_command_execute
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	do_create_gimp_guides_dialog
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_guides_command_execute, .Lfunc_end1-gimp_guides_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	do_create_gimp_guides_dialog,@function
do_create_gimp_guides_dialog:           # @do_create_gimp_guides_dialog
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, do_create_gimp_guides_dialog.dialog
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	make_gimp_guides_dialog
	movq	%rax, do_create_gimp_guides_dialog.dialog
.LBB2_2:                                # %if.end
	movq	do_create_gimp_guides_dialog.dialog, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	init_gimp_guides_dialog
	movq	do_create_gimp_guides_dialog.dialog, %rdx
	movq	(%rdx), %rdi
	callq	default_dialog_show
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	do_create_gimp_guides_dialog, .Lfunc_end2-do_create_gimp_guides_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	make_gimp_guides_dialog,@function
make_gimp_guides_dialog:                # @make_gimp_guides_dialog
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
	subq	$240, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$80, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -8(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movabsq	$gimp_guides_ok_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_ok_cb
	movl	$3, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	callq	default_dialog_add_table
	movabsq	$.L.str.1, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movl	-72(%rbp), %r9d         # 4-byte Reload
	callq	gtk_table_attach_defaults
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	-8(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-8(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	callq	gtk_entry_new
	movq	-8(%rbp), %rsi
	movq	%rax, 72(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	make_gimp_guides_dialog, .Lfunc_end3-make_gimp_guides_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	init_gimp_guides_dialog,@function
init_gimp_guides_dialog:                # @init_gimp_guides_dialog
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_gimp_guides_dialog, .Lfunc_end4-init_gimp_guides_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_guides_ok_cb,@function
gimp_guides_ok_cb:                      # @gimp_guides_ok_cb
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	(%rdi), %edi
	callq	gimp_item_get_image
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	g_slist_append
	movq	%rax, -48(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movq	$0, -48(%rbp)
.LBB5_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB5_5
# BB#4:                                 # %if.then.13
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %eax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_image_width
	movslq	%eax, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	g_slist_append
	movq	%rax, -48(%rbp)
.LBB5_5:                                # %if.end.16
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB5_7
# BB#6:                                 # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	g_slist_append
	movq	%rax, -32(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.23
	movq	$0, -32(%rbp)
.LBB5_8:                                # %if.end.24
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB5_10
# BB#9:                                 # %if.then.29
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %eax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_image_height
	movslq	%eax, %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	g_slist_append
	movq	%rax, -32(%rbp)
.LBB5_10:                               # %if.end.33
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	xorl	%esi, %esi
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	callq	gimp_image_find_next_guide
	movl	%eax, -20(%rbp)
.LBB5_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB5_16
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-76(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	gimp_image_get_guide_position
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	gimp_image_get_guide_orientation
	cmpl	$0, %eax
	jne	.LBB5_14
# BB#13:                                # %if.then.44
                                        #   in Loop: Header=BB5_11 Depth=1
	movabsq	$guide_sort_func, %rdx
	movq	-32(%rbp), %rdi
	movslq	-80(%rbp), %rsi
	callq	g_slist_insert_sorted
	movq	%rax, -32(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.47
                                        #   in Loop: Header=BB5_11 Depth=1
	movabsq	$guide_sort_func, %rdx
	movq	-48(%rbp), %rdi
	movslq	-80(%rbp), %rsi
	callq	g_slist_insert_sorted
	movq	%rax, -48(%rbp)
.LBB5_15:                               # %if.end.50
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-76(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	gimp_image_find_next_guide
	movl	%eax, -20(%rbp)
	jmp	.LBB5_11
.LBB5_16:                               # %while.end
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	subcommand_start
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB5_17:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -185(%rbp)         # 1-byte Spill
	je	.LBB5_19
# BB#18:                                # %land.rhs
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB5_19:                               # %land.end
                                        #   in Loop: Header=BB5_17 Depth=1
	movb	-185(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_20
	jmp	.LBB5_34
.LBB5_20:                               # %for.body
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	subl	-84(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB5_21:                               # %for.cond.61
                                        #   Parent Loop BB5_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -186(%rbp)         # 1-byte Spill
	je	.LBB5_23
# BB#22:                                # %land.rhs.63
                                        #   in Loop: Header=BB5_21 Depth=2
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -186(%rbp)         # 1-byte Spill
.LBB5_23:                               # %land.end.66
                                        #   in Loop: Header=BB5_21 Depth=2
	movb	-186(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_24
	jmp	.LBB5_29
.LBB5_24:                               # %for.body.67
                                        #   in Loop: Header=BB5_21 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	subl	-92(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movl	-92(%rbp), %edi
	movl	-84(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %ecx
	callq	create_rectangle
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	create_command_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	object_set_url
	movq	-112(%rbp), %rdi
	callq	command_execute
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB5_21 Depth=2
	cmpl	$0, -60(%rbp)
	je	.LBB5_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB5_21 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB5_28
.LBB5_27:                               # %cond.false
                                        #   in Loop: Header=BB5_21 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB5_28:                               # %cond.end
                                        #   in Loop: Header=BB5_21 Depth=2
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB5_21
.LBB5_29:                               # %for.end
                                        #   in Loop: Header=BB5_17 Depth=1
	jmp	.LBB5_30
.LBB5_30:                               # %for.inc.80
                                        #   in Loop: Header=BB5_17 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB5_32
# BB#31:                                # %cond.true.82
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB5_33
.LBB5_32:                               # %cond.false.84
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB5_33:                               # %cond.end.87
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB5_17
.LBB5_34:                               # %for.end.89
	callq	subcommand_end
	callq	preview_redraw
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_guides_ok_cb, .Lfunc_end5-gimp_guides_ok_cb
	.cfi_endproc

	.align	16, 0x90
	.type	guide_sort_func,@function
guide_sort_func:                        # @guide_sort_func
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%esi, %eax
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	subl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	guide_sort_func, .Lfunc_end6-guide_sort_func
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Use Gimp Guides"
	.size	.L.str, 16

	.type	gimp_guides_command_class,@object # @gimp_guides_command_class
	.data
	.align	8
gimp_guides_command_class:
	.quad	0
	.quad	gimp_guides_command_execute
	.quad	0
	.quad	0
	.size	gimp_guides_command_class, 32

	.type	do_create_gimp_guides_dialog.dialog,@object # @do_create_gimp_guides_dialog.dialog
	.local	do_create_gimp_guides_dialog.dialog
	.comm	do_create_gimp_guides_dialog.dialog,8,8
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Create"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Al_ternate"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"A_ll"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Add Additional Guides"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"L_eft border"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Right border"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Upper border"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Lo_wer border"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Base URL:"
	.size	.L.str.9, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
