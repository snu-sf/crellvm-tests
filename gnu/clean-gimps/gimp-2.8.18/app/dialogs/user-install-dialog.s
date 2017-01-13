	.text
	.file	"user-install-dialog.bc"
	.globl	user_install_dialog_run
	.align	16, 0x90
	.type	user_install_dialog_run,@function
user_install_dialog_run:                # @user_install_dialog_run
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.user_install_dialog_run, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	user_install_dialog_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_user_install_run
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.2
	movabsq	$.L.str.2, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
	callq	gtk_main
.LBB0_7:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	user_install_dialog_run, .Lfunc_end0-user_install_dialog_run
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_dialog_new,@function
user_install_dialog_new:                # @user_install_dialog_new
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_stock_init
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movabsq	$.L.str.5, %rdx
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-5, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_message_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	264(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-16(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	264(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_text_buffer_new
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movl	$700, %ecx              # imm = 0x2BC
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_text_buffer_create_tag
	movq	-40(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_text_view_new_with_buffer
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$200, %edx
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$user_install_dialog_log, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_user_install_set_log_handler
	movq	-16(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	user_install_dialog_new, .Lfunc_end1-user_install_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_dialog_log,@function
user_install_dialog_log:                # @user_install_dialog_log
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
	cmpl	$0, -12(%rbp)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	leaq	-112(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movabsq	$.L.str.9, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags_by_name
	jmp	.LBB2_6
.LBB2_3:                                # %if.else
	cmpq	$0, -8(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.4
	leaq	-112(%rbp), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gtk_text_buffer_insert
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.5
	leaq	-112(%rbp), %rsi
	movabsq	$.L.str.11, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_insert
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	user_install_dialog_log, .Lfunc_end2-user_install_dialog_log
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.user_install_dialog_run,@object # @__func__.user_install_dialog_run
.L__func__.user_install_dialog_run:
	.asciz	"user_install_dialog_run"
	.size	.L__func__.user_install_dialog_run, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"install != NULL"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"response"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP User Installation"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-wilber-eek"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-quit"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"User installation failed!"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The GIMP user installation failed; see the log for details."
	.size	.L.str.7, 60

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Installation Log"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"bold"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"weight"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
