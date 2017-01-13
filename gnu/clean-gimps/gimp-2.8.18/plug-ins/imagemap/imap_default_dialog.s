	.text
	.file	"imap_default_dialog.bc"
	.globl	default_dialog_set_ok_cb
	.align	16, 0x90
	.type	default_dialog_set_ok_cb,@function
default_dialog_set_ok_cb:               # @default_dialog_set_ok_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 40(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 48(%rsi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	default_dialog_set_ok_cb, .Lfunc_end0-default_dialog_set_ok_cb
	.cfi_endproc

	.globl	default_dialog_set_apply_cb
	.align	16, 0x90
	.type	default_dialog_set_apply_cb,@function
default_dialog_set_apply_cb:            # @default_dialog_set_apply_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 64(%rsi)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	default_dialog_set_apply_cb, .Lfunc_end1-default_dialog_set_apply_cb
	.cfi_endproc

	.globl	default_dialog_set_cancel_cb
	.align	16, 0x90
	.type	default_dialog_set_cancel_cb,@function
default_dialog_set_cancel_cb:           # @default_dialog_set_cancel_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 72(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 80(%rsi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	default_dialog_set_cancel_cb, .Lfunc_end2-default_dialog_set_cancel_cb
	.cfi_endproc

	.globl	make_default_dialog
	.align	16, 0x90
	.type	make_default_dialog,@function
make_default_dialog:                    # @make_default_dialog
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
	subq	$128, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$88, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	get_dialog
	movabsq	$.L.str, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.1, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movl	$4294967286, %edx       # imm = 0xFFFFFFF6
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movq	-16(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967286, %edx       # imm = 0xFFFFFFF6
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.5, %rsi
	movabsq	$dialog_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	-16(%rbp), %r11
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_new
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	make_default_dialog, .Lfunc_end3-make_default_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_response,@function
dialog_response:                        # @dialog_response
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-10, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_14
.LBB4_14:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$-5, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB4_7
	jmp	.LBB4_10
.LBB4_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rdi
	callq	*%rax
	jmp	.LBB4_6
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_5
# BB#4:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	*%rax
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.5
	jmp	.LBB4_13
.LBB4_7:                                # %sw.bb.6
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_hide
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_9
# BB#8:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	*%rax
.LBB4_9:                                # %if.end.13
	jmp	.LBB4_13
.LBB4_10:                               # %sw.default
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_hide
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB4_12
# BB#11:                                # %if.then.16
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	80(%rcx), %rdi
	callq	*%rax
.LBB4_12:                               # %if.end.18
	jmp	.LBB4_13
.LBB4_13:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialog_response, .Lfunc_end4-dialog_response
	.cfi_endproc

	.globl	default_dialog_show
	.align	16, 0x90
	.type	default_dialog_show,@function
default_dialog_show:                    # @default_dialog_show
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gtk_widget_show
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	default_dialog_show, .Lfunc_end5-default_dialog_show
	.cfi_endproc

	.globl	default_dialog_hide_cancel_button
	.align	16, 0x90
	.type	default_dialog_hide_cancel_button,@function
default_dialog_hide_cancel_button:      # @default_dialog_hide_cancel_button
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gtk_widget_hide
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	default_dialog_hide_cancel_button, .Lfunc_end6-default_dialog_hide_cancel_button
	.cfi_endproc

	.globl	default_dialog_hide_apply_button
	.align	16, 0x90
	.type	default_dialog_hide_apply_button,@function
default_dialog_hide_apply_button:       # @default_dialog_hide_apply_button
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	gtk_widget_hide
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	default_dialog_hide_apply_button, .Lfunc_end7-default_dialog_hide_apply_button
	.cfi_endproc

	.globl	default_dialog_hide_help_button
	.align	16, 0x90
	.type	default_dialog_hide_help_button,@function
default_dialog_hide_help_button:        # @default_dialog_hide_help_button
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	default_dialog_hide_help_button, .Lfunc_end8-default_dialog_hide_help_button
	.cfi_endproc

	.globl	default_dialog_set_title
	.align	16, 0x90
	.type	default_dialog_set_title,@function
default_dialog_set_title:               # @default_dialog_set_title
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
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	default_dialog_set_title, .Lfunc_end9-default_dialog_set_title
	.cfi_endproc

	.globl	default_dialog_set_label
	.align	16, 0x90
	.type	default_dialog_set_label,@function
default_dialog_set_label:               # @default_dialog_set_label
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	default_dialog_set_label, .Lfunc_end10-default_dialog_set_label
	.cfi_endproc

	.globl	default_dialog_add_table
	.align	16, 0x90
	.type	default_dialog_add_table,@function
default_dialog_add_table:               # @default_dialog_add_table
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	%eax, %edx
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	default_dialog_add_table, .Lfunc_end11-default_dialog_add_table
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-imagemap"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"plug-in-imagemap"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-apply"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-cancel"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-ok"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"response"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"destroy"
	.size	.L.str.6, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
