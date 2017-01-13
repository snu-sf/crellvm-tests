	.text
	.file	"gimpdisplayshell-close.bc"
	.globl	gimp_display_shell_close
	.align	16, 0x90
	.type	gimp_display_shell_close,@function
gimp_display_shell_close:               # @gimp_display_shell_close
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_close, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_28
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.14
	jmp	.LBB0_28
.LBB0_14:                               # %if.end.15
	cmpl	$0, -12(%rbp)
	jne	.LBB0_22
# BB#15:                                # %land.lhs.true.17
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#16:                                # %land.lhs.true.19
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$1, %eax
	jne	.LBB0_22
# BB#17:                                # %land.lhs.true.22
	movq	-24(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB0_22
# BB#18:                                # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.30
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.33
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_close_dialog
.LBB0_21:                               # %if.end.34
	jmp	.LBB0_28
.LBB0_22:                               # %if.else.35
	cmpq	$0, -24(%rbp)
	je	.LBB0_24
# BB#23:                                # %if.then.37
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_close
	jmp	.LBB0_27
.LBB0_24:                               # %if.else.39
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_26
# BB#25:                                # %if.then.43
	movq	-64(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB0_26:                               # %if.end.47
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.48
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.49
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_close, .Lfunc_end0-gimp_display_shell_close
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_display_shell_close_dialog,@function
gimp_display_shell_close_dialog:        # @gimp_display_shell_close_dialog
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 608(%rsi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_uri
	movabsq	$.L.str.5, %rdi
	movq	%rax, -128(%rbp)
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_get_display_name
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_message_dialog_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, 608(%rdx)
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movabsq	$.L.str.8, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.6, %r9
	cmpq	$0, -128(%rbp)
	cmovneq	%r9, %rdi
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-184(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -196(%rbp)       # 4-byte Spill
	callq	gtk_dialog_add_buttons
	movq	-40(%rbp), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.10, %rsi
	movabsq	$gtk_widget_destroyed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rbx
	movq	-24(%rbp), %r14
	addq	$608, %r14              # imm = 0x260
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_display_shell_close_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_accel_group_new
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_add_accel_group
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$32, %edi
	movq	%rax, %rsi
	callq	g_closure_new_object
	movabsq	$gimp_display_shell_close_accel_marshal, %rsi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_closure_set_marshal
	movabsq	$.L.str.12, %rdi
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	gtk_accelerator_parse
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movq	-72(%rbp), %r8
	callq	gtk_accel_group_connect
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	gtk_accelerator_get_label
	movabsq	$.L.str.13, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.14, %rdi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -120(%rbp)
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_markup
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_display_shell_close_name_changed, %rax
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_display_shell_close_exported, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_close_name_changed
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_display_shell_close_time_changed, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	g_cclosure_new_object
	movl	$10, %edi
	movq	%rax, -72(%rbp)
	callq	g_timeout_source_new_seconds
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_source_set_closure
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-80(%rbp), %rdi
	callq	g_source_attach
	movq	-80(%rbp), %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	g_source_unref
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_close_time_changed
	movq	-40(%rbp), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
.LBB1_3:                                # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_close_dialog, .Lfunc_end1-gimp_display_shell_close_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_close_response,@function
gimp_display_shell_close_response:      # @gimp_display_shell_close_response
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-7, %eax
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_7
.LBB2_7:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB2_2
	jmp	.LBB2_5
.LBB2_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_close
	jmp	.LBB2_6
.LBB2_2:                                # %sw.bb.1
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_window_set_active_shell
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.18, %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB2_4:                                # %if.end
	jmp	.LBB2_6
.LBB2_5:                                # %sw.default
	jmp	.LBB2_6
.LBB2_6:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_close_response, .Lfunc_end2-gimp_display_shell_close_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_close_accel_marshal,@function
gimp_display_shell_close_accel_marshal: # @gimp_display_shell_close_accel_marshal
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_response
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	g_value_set_boolean
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_close_accel_marshal, .Lfunc_end3-gimp_display_shell_close_accel_marshal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_close_name_changed,@function
gimp_display_shell_close_name_changed:  # @gimp_display_shell_close_name_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then.6
	movl	$1, -44(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.7
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.11
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_display_name
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB4_9:                                # %if.end.18
	movabsq	$.L.str.19, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_get_display_name
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_close_name_changed, .Lfunc_end4-gimp_display_shell_close_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_close_exported,@function
gimp_display_shell_close_exported:      # @gimp_display_shell_close_exported
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_close_time_changed
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_close_exported, .Lfunc_end5-gimp_display_shell_close_exported
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_close_time_changed,@function
gimp_display_shell_close_time_changed:  # @gimp_display_shell_close_time_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_dirty_time
	movl	%eax, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB6_9
# BB#1:                                 # %if.then
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_time_since
	cmpl	$0, -44(%rbp)
	jle	.LBB6_7
# BB#2:                                 # %if.then.3
	cmpl	$1, -44(%rbp)
	jg	.LBB6_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jne	.LBB6_5
.LBB6_4:                                # %if.then.6
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movslq	-44(%rbp), %rdx
	callq	ngettext
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movslq	-48(%rbp), %rdx
	callq	ngettext
	movl	-48(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.12
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movslq	-48(%rbp), %rdx
	callq	ngettext
	movl	-48(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
.LBB6_8:                                # %if.end.16
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_image_is_export_dirty
	cmpl	$0, %eax
	jne	.LBB6_13
# BB#10:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.23
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -56(%rbp)
.LBB6_12:                               # %if.end.25
	movq	-56(%rbp), %rdi
	callq	file_utils_uri_to_utf8_filename
	movabsq	$.L.str.26, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB6_13:                               # %if.end.29
	cmpq	$0, -32(%rbp)
	je	.LBB6_16
# BB#14:                                # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.32
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	gimp_message_box_set_text
	jmp	.LBB6_24
.LBB6_16:                               # %if.else.33
	cmpq	$0, -32(%rbp)
	jne	.LBB6_18
# BB#17:                                # %lor.lhs.false.35
	cmpq	$0, -40(%rbp)
	je	.LBB6_22
.LBB6_18:                               # %if.then.37
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	je	.LBB6_20
# BB#19:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_21
.LBB6_20:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB6_21:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.28, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_message_box_set_text
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.39
	movabsq	$.L.str.28, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	gimp_message_box_set_text
.LBB6_23:                               # %if.end.40
	jmp	.LBB6_24
.LBB6_24:                               # %if.end.41
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_close_time_changed, .Lfunc_end6-gimp_display_shell_close_time_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_time_since,@function
gimp_time_since:                        # @gimp_time_since
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	time
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %r8d
	addl	$1, %r8d
	subl	-4(%rbp), %r8d
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jb	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_time_since, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_16
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movl	$60, %eax
	movl	-32(%rbp), %ecx
	addl	$59, %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-36(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%eax, -32(%rbp)
	cmpl	$50, -32(%rbp)
	jbe	.LBB7_7
# BB#6:                                 # %if.then.5
	movl	$10, %eax
	movl	-32(%rbp), %ecx
	addl	$8, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-40(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	imull	$10, %eax, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_10
.LBB7_7:                                # %if.else.8
	cmpl	$20, -32(%rbp)
	jbe	.LBB7_9
# BB#8:                                 # %if.then.11
	movl	$5, %eax
	movl	-32(%rbp), %ecx
	addl	$3, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	imull	$5, %eax, %eax
	movl	%eax, -32(%rbp)
.LBB7_9:                                # %if.end.15
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.16
	cmpl	$60, -32(%rbp)
	jb	.LBB7_12
# BB#11:                                # %if.then.19
	movl	$60, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-32(%rbp), %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	divl	%ecx
	movl	%edx, -32(%rbp)
.LBB7_12:                               # %if.end.21
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jle	.LBB7_15
# BB#13:                                # %land.lhs.true
	cmpl	$0, -32(%rbp)
	jbe	.LBB7_15
# BB#14:                                # %if.then.26
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	$0, -32(%rbp)
.LBB7_15:                               # %if.end.28
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_time_since, .Lfunc_end7-gimp_time_since
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_close,@object # @__func__.gimp_display_shell_close
.L__func__.gimp_display_shell_close:
	.asciz	"gimp_display_shell_close"
	.size	.L__func__.gimp_display_shell_close, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-file-save-dialog"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file-quit"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Close %s"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-save"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Discard Changes"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-cancel"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-save-as"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"destroy"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<Primary>D"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Press %s to discard all changes and close the image."
	.size	.L.str.13, 53

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<i><small>%s</small></i>"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"name-changed"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"exported"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-image"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"file-save-and-close"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Save the changes to image '%s' before closing?"
	.size	.L.str.19, 47

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"If you don't save the image, changes from the last hour will be lost."
	.size	.L.str.20, 70

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"If you don't save the image, changes from the last %d hours will be lost."
	.size	.L.str.21, 74

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"If you don't save the image, changes from the last hour and %d minute will be lost."
	.size	.L.str.22, 84

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"If you don't save the image, changes from the last hour and %d minutes will be lost."
	.size	.L.str.23, 85

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"If you don't save the image, changes from the last minute will be lost."
	.size	.L.str.24, 72

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"If you don't save the image, changes from the last %d minutes will be lost."
	.size	.L.str.25, 76

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The image has been exported to '%s'."
	.size	.L.str.26, 37

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s\n\n%s"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s"
	.size	.L.str.28, 3

	.type	.L__func__.gimp_time_since,@object # @__func__.gimp_time_since
.L__func__.gimp_time_since:
	.asciz	"gimp_time_since"
	.size	.L__func__.gimp_time_since, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"now >= then"
	.size	.L.str.29, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
