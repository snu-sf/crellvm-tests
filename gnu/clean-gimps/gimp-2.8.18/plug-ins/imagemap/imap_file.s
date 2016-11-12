	.text
	.file	"imap_file.bc"
	.globl	do_file_open_dialog
	.align	16, 0x90
	.type	do_file_open_dialog,@function
do_file_open_dialog:                    # @do_file_open_dialog
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
	cmpq	$0, do_file_open_dialog.dialog
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.1, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.2, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -4(%rbp)         # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, do_file_open_dialog.dialog
	movq	do_file_open_dialog.dialog, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	do_file_open_dialog.dialog, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.3, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$do_file_open_dialog.dialog, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	do_file_open_dialog.dialog, %r11
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rsi
	movabsq	$open_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	do_file_open_dialog.dialog, %rdx
	movq	do_file_open_dialog.dialog, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_2:                                # %if.end
	movq	do_file_open_dialog.dialog, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	do_file_open_dialog, .Lfunc_end0-do_file_open_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	open_cb,@function
open_cb:                                # @open_cb
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB1_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_file_error_dialog
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_5
.LBB1_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	load
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB1_4:                                # %if.end.6
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB1_5:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	open_cb, .Lfunc_end1-open_cb
	.cfi_endproc

	.globl	do_file_save_as_dialog
	.align	16, 0x90
	.type	do_file_save_as_dialog,@function
do_file_save_as_dialog:                 # @do_file_save_as_dialog
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
	cmpq	$0, do_file_save_as_dialog.dialog
	jne	.LBB2_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movabsq	$.L.str.1, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.6, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -12(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, do_file_save_as_dialog.dialog
	movq	do_file_save_as_dialog.dialog, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	do_file_save_as_dialog.dialog, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	do_file_save_as_dialog.dialog, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.3, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$do_file_save_as_dialog.dialog, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	do_file_save_as_dialog.dialog, %r11
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rsi
	movabsq	$save_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	do_file_save_as_dialog.dialog, %rdx
	movq	do_file_save_as_dialog.dialog, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	get_image_name
	movabsq	$.L.str.7, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.13
	movq	do_file_save_as_dialog.dialog, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
	movq	-8(%rbp), %rdi
	callq	g_free
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %if.end.16
	movq	do_file_save_as_dialog.dialog, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	do_file_save_as_dialog, .Lfunc_end2-do_file_save_as_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	save_cb,@function
save_cb:                                # @save_cb
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	save_as
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	save_cb, .Lfunc_end3-save_cb
	.cfi_endproc

	.globl	do_file_error_dialog
	.align	16, 0x90
	.type	do_file_error_dialog,@function
do_file_error_dialog:                   # @do_file_error_dialog
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	%r9, -32(%rbp)          # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %ecx
	movl	$3, %edx
	movabsq	$.L.str.8, %r8
	movl	%ecx, %esi
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gtk_message_dialog_new_with_markup
	movabsq	$.L.str.4, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	do_file_error_dialog, .Lfunc_end4-do_file_error_dialog
	.cfi_endproc

	.type	do_file_open_dialog.dialog,@object # @do_file_open_dialog.dialog
	.local	do_file_open_dialog.dialog
	.comm	do_file_open_dialog.dialog,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Load Image Map"
	.size	.L.str, 15

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
	.asciz	"destroy"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"response"
	.size	.L.str.4, 9

	.type	do_file_save_as_dialog.dialog,@object # @do_file_save_as_dialog.dialog
	.local	do_file_save_as_dialog.dialog
	.comm	do_file_save_as_dialog.dialog,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Save Image Map"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-save"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".map"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<span weight=\"bold\" size=\"larger\">%s</span>\n\n%s"
	.size	.L.str.8, 48

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Error opening file"
	.size	.L.str.9, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
