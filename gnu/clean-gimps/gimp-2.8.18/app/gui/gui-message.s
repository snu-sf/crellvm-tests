	.text
	.file	"gui-message.bc"
	.globl	gui_message
	.align	16, 0x90
	.type	gui_message,@function
gui_message:                            # @gui_message
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movl	80(%rcx), %edx
	testl	%edx, %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_9
.LBB0_9:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB0_7
	jmp	.LBB0_10
.LBB0_10:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB0_8
	jmp	.LBB0_1
.LBB0_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gui_message_error_console
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_8
.LBB0_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
.LBB0_4:                                # %sw.bb.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gui_message_error_dialog
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then.5
	jmp	.LBB0_8
.LBB0_6:                                # %if.end.6
	movq	-8(%rbp), %rax
	movl	$1, 80(%rax)
.LBB0_7:                                # %sw.bb.8
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gui_message_console
.LBB0_8:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gui_message, .Lfunc_end0-gui_message
	.cfi_endproc

	.align	16, 0x90
	.type	gui_message_error_console,@function
gui_message_error_console:              # @gui_message_error_console
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$2, -20(%rbp)
	jae	.LBB1_11
# BB#1:                                 # %if.then
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then.3
	movl	$0, -76(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	movl	$1, -76(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.8
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.10
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.12
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_10:                               # %if.end.13
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.14
	cmpq	$0, -48(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gdk_screen_get_default
	movabsq	$.L.str, %r8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -48(%rbp)
.LBB1_13:                               # %if.end.23
	cmpq	$0, -48(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.25
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_error_console_add
	movl	$1, -4(%rbp)
	jmp	.LBB1_16
.LBB1_15:                               # %if.end.32
	movl	$0, -4(%rbp)
.LBB1_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gui_message_error_console, .Lfunc_end1-gui_message_error_console
	.cfi_endproc

	.align	16, 0x90
	.type	gui_message_error_dialog,@function
gui_message_error_dialog:               # @gui_message_error_dialog
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB2_7
.LBB2_2:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_12
# BB#8:                                 # %if.then.8
	movabsq	$.L.str.1, %rsi
	movq	-24(%rbp), %rdi
	callq	g_object_get_data
	cmpq	$0, %rax
	jne	.LBB2_11
# BB#9:                                 # %land.lhs.true.11
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_progress_message
	cmpl	$0, %eax
	je	.LBB2_11
# BB#10:                                # %if.then.16
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_11:                               # %if.end.17
	jmp	.LBB2_26
.LBB2_12:                               # %if.else.18
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_14
# BB#13:                                # %if.then.27
	movl	$0, -100(%rbp)
	jmp	.LBB2_19
.LBB2_14:                               # %if.else.28
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_17
# BB#15:                                # %land.lhs.true.31
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_17
# BB#16:                                # %if.then.35
	movl	$1, -100(%rbp)
	jmp	.LBB2_18
.LBB2_17:                               # %if.else.36
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_18:                               # %if.end.38
	jmp	.LBB2_19
.LBB2_19:                               # %if.end.39
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_25
# BB#20:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	$3, -116(%rbp)
	movl	-28(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	je	.LBB2_21
	jmp	.LBB2_48
.LBB2_48:                               # %if.then.42
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB2_22
	jmp	.LBB2_49
.LBB2_49:                               # %if.then.42
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB2_23
	jmp	.LBB2_24
.LBB2_21:                               # %sw.bb
	movl	$0, -116(%rbp)
	jmp	.LBB2_24
.LBB2_22:                               # %sw.bb.47
	movl	$1, -116(%rbp)
	jmp	.LBB2_24
.LBB2_23:                               # %sw.bb.48
	movl	$3, -116(%rbp)
.LBB2_24:                               # %sw.epilog
	movq	-112(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %ecx
	movabsq	$.L.str.2, %r8
	movl	-116(%rbp), %edx
	movq	-48(%rbp), %r9
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_message_dialog_new
	movabsq	$.L.str.3, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%r8, %rcx
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_25:                               # %if.end.54
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.55
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB2_28
# BB#27:                                # %if.then.64
	movl	$0, -140(%rbp)
	jmp	.LBB2_33
.LBB2_28:                               # %if.else.65
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_31
# BB#29:                                # %land.lhs.true.68
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB2_31
# BB#30:                                # %if.then.72
	movl	$1, -140(%rbp)
	jmp	.LBB2_32
.LBB2_31:                               # %if.else.73
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB2_32:                               # %if.end.75
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.76
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB2_43
# BB#34:                                # %land.lhs.true.79
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_progress_dialog_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB2_36
# BB#35:                                # %if.then.88
	movl	$0, -164(%rbp)
	jmp	.LBB2_41
.LBB2_36:                               # %if.else.89
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_39
# BB#37:                                # %land.lhs.true.92
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB2_39
# BB#38:                                # %if.then.96
	movl	$1, -164(%rbp)
	jmp	.LBB2_40
.LBB2_39:                               # %if.else.97
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB2_40:                               # %if.end.99
	jmp	.LBB2_41
.LBB2_41:                               # %if.end.100
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	jne	.LBB2_43
# BB#42:                                # %if.then.103
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	progress_error_dialog
	movq	%rax, -56(%rbp)
	jmp	.LBB2_44
.LBB2_43:                               # %if.else.107
	callq	global_error_dialog
	movq	%rax, -56(%rbp)
.LBB2_44:                               # %if.end.109
	cmpq	$0, -56(%rbp)
	je	.LBB2_46
# BB#45:                                # %if.then.111
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_error_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_get_message_stock_id
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_error_dialog_add
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_46:                               # %if.end.117
	movl	$0, -4(%rbp)
.LBB2_47:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gui_message_error_dialog, .Lfunc_end2-gui_message_error_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gui_message_console,@function
gui_message_console:                    # @gui_message_console
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
	movabsq	$.L.str.8, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, -32(%rbp)
	callq	gimp_message_severity_get_type
	xorl	%edi, %edi
	movl	%edi, %edx
	leaq	-32(%rbp), %r8
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	movabsq	$.L.str.9, %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_printerr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gui_message_console, .Lfunc_end3-gui_message_console
	.cfi_endproc

	.align	16, 0x90
	.type	progress_error_dialog,@function
progress_error_dialog:                  # @progress_error_dialog
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.progress_error_dialog, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_36
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_35
# BB#13:                                # %if.then.14
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_error_dialog_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movabsq	$.L.str.7, %rsi
	movabsq	$progress_error_dialog_unset, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.27
	movl	$0, -68(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.28
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.31
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.35
	movl	$1, -68(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.36
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_19:                               # %if.end.38
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.39
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_31
# BB#21:                                # %if.then.42
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_23
# BB#22:                                # %if.then.55
	movl	$0, -100(%rbp)
	jmp	.LBB4_28
.LBB4_23:                               # %if.else.56
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_26
# BB#24:                                # %land.lhs.true.59
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_26
# BB#25:                                # %if.then.63
	movl	$1, -100(%rbp)
	jmp	.LBB4_27
.LBB4_26:                               # %if.else.64
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_27:                               # %if.end.66
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.67
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_30
# BB#29:                                # %if.then.70
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
.LBB4_30:                               # %if.end.75
	jmp	.LBB4_34
.LBB4_31:                               # %if.else.76
	movq	-16(%rbp), %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB4_33
# BB#32:                                # %if.then.80
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_window_set_transient_for
.LBB4_33:                               # %if.end.83
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.84
	jmp	.LBB4_35
.LBB4_35:                               # %if.end.85
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_36:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	progress_error_dialog, .Lfunc_end4-progress_error_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	global_error_dialog,@function
global_error_dialog:                    # @global_error_dialog
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
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gdk_screen_get_default
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.1, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	global_error_dialog, .Lfunc_end5-global_error_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	progress_error_dialog_unset,@function
progress_error_dialog_unset:            # @progress_error_dialog_unset
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	progress_error_dialog_unset, .Lfunc_end6-progress_error_dialog_unset
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-error-console"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-error-dialog"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"response"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-GUI"
	.size	.L.str.4, 9

	.type	.L__func__.progress_error_dialog,@object # @__func__.progress_error_dialog
.L__func__.progress_error_dialog:
	.asciz	"progress_error_dialog"
	.size	.L__func__.progress_error_dialog, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PROGRESS (progress)"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP Message"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"destroy"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Message"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s-%s: %s\n\n"
	.size	.L.str.9, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
