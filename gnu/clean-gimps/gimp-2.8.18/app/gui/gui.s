	.text
	.file	"gui.bc"
	.globl	gui_libs_init
	.align	16, 0x90
	.type	gui_libs_init,@function
gui_libs_init:                          # @gui_libs_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_libs_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_get_option_group
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_option_context_add_group
.LBB0_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gui_libs_init, .Lfunc_end0-gui_libs_init
	.cfi_endproc

	.globl	gui_abort
	.align	16, 0x90
	.type	gui_abort,@function
gui_abort:                              # @gui_abort
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_abort, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	addq	$128, %rsp
	popq	%rbp
	retq
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %ecx
	movabsq	$.L.str.5, %rdx
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-5, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	callq	gimp_message_box_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	movl	$12, %r8d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_message_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	movl	$1, %edi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end1:
	.size	gui_abort, .Lfunc_end1-gui_abort
	.cfi_endproc

	.globl	gui_init
	.align	16, 0x90
	.type	gui_init,@function
gui_init:                               # @gui_init
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_init, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_25
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, the_gui_gimp
	jne	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_init, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_25
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	callq	gui_sanity_check
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.19
	movq	-48(%rbp), %rdi
	callq	gui_abort
.LBB2_19:                               # %if.end.20
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, the_gui_gimp
	callq	dgettext
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB2_21
# BB#20:                                # %if.then.24
	movl	$2, %edi
	callq	gtk_widget_set_default_direction
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.25
	movl	$1, %edi
	callq	gtk_widget_set_default_direction
.LBB2_22:                               # %if.end.26
	movq	-16(%rbp), %rdi
	callq	gui_unique_init
	movabsq	$gui_help_func, %rdi
	movabsq	$gui_get_foreground_func, %rsi
	movabsq	$gui_get_background_func, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	gimp_widgets_init
	callq	gimp_color_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_set_auto_startup_notification
	movq	-16(%rbp), %rdi
	callq	gimp_dnd_init
	movq	-16(%rbp), %rdi
	callq	themes_init
	callq	gdk_screen_get_default
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_screen_get_rgb_colormap
	movq	%rax, %rdi
	callq	gtk_widget_set_default_colormap
	cmpl	$0, -20(%rbp)
	jne	.LBB2_24
# BB#23:                                # %if.then.32
	movq	-16(%rbp), %rax
	movl	56(%rax), %edi
	callq	splash_create
	movabsq	$splash_update, %rax
	movq	%rax, -32(%rbp)
.LBB2_24:                               # %if.end.33
	movabsq	$.L.str.15, %rsi
	movabsq	$gui_initialize_after_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gui_restore_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gui_restore_after_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gui_exit_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gui_exit_after_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB2_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gui_init, .Lfunc_end2-gui_init
	.cfi_endproc

	.align	16, 0x90
	.type	gui_sanity_check,@function
gui_sanity_check:                       # @gui_sanity_check
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
	subq	$64, %rsp
	movl	$2, %edi
	movl	$24, %esi
	movl	$10, %edx
	callq	gtk_check_version
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movl	$2, %edx
	movl	$24, %ecx
	movl	$10, %r8d
	movq	-16(%rbp), %rsi
	movl	gtk_major_version, %r9d
	movl	gtk_minor_version, %eax
	movl	gtk_micro_version, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$24, 24(%rsp)
	movl	$10, 32(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gui_sanity_check, .Lfunc_end3-gui_sanity_check
	.cfi_endproc

	.align	16, 0x90
	.type	gui_help_func,@function
gui_help_func:                          # @gui_help_func
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
# BB#1:                                 # %do.body
	movq	the_gui_gimp, %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_help_func, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	the_gui_gimp, %rdi
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	gimp_help
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gui_help_func, .Lfunc_end4-gui_help_func
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_foreground_func,@function
gui_get_foreground_func:                # @gui_get_foreground_func
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_get_foreground_func, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_18
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	movq	the_gui_gimp, %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB5_13
.LBB5_8:                                # %if.else.3
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_12:                               # %if.end.10
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_get_foreground_func, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	the_gui_gimp, %rdi
	callq	gimp_get_user_context
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_get_foreground
	movl	$1, -4(%rbp)
.LBB5_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gui_get_foreground_func, .Lfunc_end5-gui_get_foreground_func
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_background_func,@function
gui_get_background_func:                # @gui_get_background_func
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_get_background_func, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_18
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	movq	the_gui_gimp, %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB6_13
.LBB6_8:                                # %if.else.3
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_11
# BB#10:                                # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_12:                               # %if.end.10
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_get_background_func, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	the_gui_gimp, %rdi
	callq	gimp_get_user_context
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_get_background
	movl	$1, -4(%rbp)
.LBB6_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gui_get_background_func, .Lfunc_end6-gui_get_background_func
	.cfi_endproc

	.align	16, 0x90
	.type	gui_initialize_after_callback,@function
gui_initialize_after_callback:          # @gui_initialize_after_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_initialize_after_callback, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_17
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB7_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gui_initialize_after_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB7_14:                               # %if.end.13
	movabsq	$.L.str.22, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.15
	callq	gdk_get_display
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_environ_table_add
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB7_16:                               # %if.end.18
	movq	-8(%rbp), %rdi
	callq	gimp_tools_init
	movq	-8(%rbp), %rdi
	callq	gimp_get_user_context
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_standard
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool
.LBB7_17:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gui_initialize_after_callback, .Lfunc_end7-gui_initialize_after_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4606281698874543309     # double 0.90000000000000002
	.text
	.align	16, 0x90
	.type	gui_restore_callback,@function
gui_restore_callback:                   # @gui_restore_callback
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gui_restore_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gui_vtable_init
	movq	-32(%rbp), %rdi
	cmpl	$0, 596(%rdi)
	jne	.LBB8_4
# BB#3:                                 # %if.then.6
	callq	gimp_help_disable_tooltips
.LBB8_4:                                # %if.end.7
	movabsq	$.L.str.23, %rsi
	movabsq	$gui_show_tooltips_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movb	%r9b, %r10b
	movq	-32(%rbp), %rcx
	cmpl	$0, 664(%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	%r10b, -81(%rbp)        # 1-byte Spill
	je	.LBB8_6
# BB#5:                                 # %land.rhs
	movq	-32(%rbp), %rax
	cmpl	$0, 668(%rax)
	setne	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB8_6:                                # %land.end
	movb	-81(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	gimp_dialogs_show_help_button
	movabsq	$.L.str.24, %rsi
	movabsq	$gui_show_help_button_notify, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %r10
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$gui_user_manual_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gui_show_help_button_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movabsq	$.L.str.27, %rsi
	movabsq	$gui_display_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	cmpl	$0, 512(%rcx)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB8_9
# BB#7:                                 # %lor.lhs.false
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	496(%rax), %xmm0
	ja	.LBB8_9
# BB#8:                                 # %lor.lhs.false.17
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	504(%rax), %xmm0
	jbe	.LBB8_10
.LBB8_9:                                # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	gimp_get_screen_resolution
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
.LBB8_10:                               # %if.end.21
	movq	-8(%rbp), %rdi
	callq	actions_init
	movq	-8(%rbp), %rdi
	movq	global_action_factory, %rsi
	callq	menus_init
	movq	-8(%rbp), %rdi
	callq	gimp_render_init
	movq	-8(%rbp), %rdi
	movq	global_menu_factory, %rsi
	callq	dialogs_init
	movq	-8(%rbp), %rdi
	callq	gimp_clipboard_init
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	440(%rsi), %rsi
	callq	gimp_clipboard_set_buffer
	movabsq	$.L.str.31, %rsi
	movabsq	$gui_global_buffer_changed, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_devices_init
	movq	-8(%rbp), %rdi
	callq	gimp_controllers_init
	movq	-8(%rbp), %rdi
	callq	session_init
	callq	gimp_color_selector_palette_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, %rdi
	callq	g_type_class_unref
	movabsq	$.L.str.32, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-176(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_recent_list_load
	movabsq	$.L.str.33, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rsi
	movq	-184(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_tools_restore
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gui_restore_callback, .Lfunc_end8-gui_restore_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gui_restore_after_callback,@function
gui_restore_after_callback:             # @gui_restore_after_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gui_restore_after_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 612(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	menus_restore
.LBB9_4:                                # %if.end.4
	callq	gimp_ui_configurer_get_type
	movabsq	$.L.str.34, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.35, %rsi
	movq	%rax, ui_configurer
	movq	global_menu_factory, %rdi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	600(%rcx), %ecx
	movq	%rax, %rdx
	callq	gimp_menu_factory_manager_new
	movq	%rax, image_ui_manager
	movq	image_ui_manager, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movabsq	$.L.str.36, %rsi
	movabsq	$gui_single_window_mode_notify, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	ui_configurer, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.37, %rsi
	movabsq	$gui_tearoff_menus_notify, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	image_ui_manager, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.38, %rsi
	movabsq	$gui_menu_show_tooltip, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	image_ui_manager, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gui_menu_hide_tooltip, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	image_ui_manager, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_devices_restore
	movq	-8(%rbp), %rdi
	movq	image_ui_manager, %rsi
	callq	gimp_controllers_restore
	movabsq	$splash_update, %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.12
	callq	splash_destroy
.LBB9_6:                                # %if.end.13
	movq	-8(%rbp), %rdi
	callq	color_history_restore
	movq	-8(%rbp), %rdi
	callq	gimp_get_show_gui
	cmpl	$0, %eax
	je	.LBB9_10
# BB#7:                                 # %if.then.16
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	gimp_create_display
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 588(%rax)
	je	.LBB9_9
# BB#8:                                 # %if.then.22
	movq	-8(%rbp), %rdi
	callq	session_restore
.LBB9_9:                                # %if.end.23
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB9_10:                               # %if.end.29
	callq	gdk_notify_startup_complete
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gui_restore_after_callback, .Lfunc_end9-gui_restore_after_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gui_exit_callback,@function
gui_exit_callback:                      # @gui_exit_callback
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.41, %rdi
	movabsq	$.L__func__.gui_exit_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB10_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_displays_dirty
	cmpl	$0, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.5
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gdk_screen_get_default
	movabsq	$.L.str.42, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_raise
	movl	$1, -4(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_12
.LBB10_5:                               # %if.end.9
	movq	-16(%rbp), %rax
	movl	$1, 80(%rax)
	callq	gui_unique_exit
	movq	-32(%rbp), %rax
	cmpl	$0, 584(%rax)
	je	.LBB10_7
# BB#6:                                 # %if.then.11
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	session_save
.LBB10_7:                               # %if.end.12
	movq	-16(%rbp), %rdi
	callq	color_history_save
	movq	-32(%rbp), %rdi
	cmpl	$0, 608(%rdi)
	je	.LBB10_9
# BB#8:                                 # %if.then.14
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	menus_save
.LBB10_9:                               # %if.end.15
	movq	-32(%rbp), %rax
	cmpl	$0, 580(%rax)
	je	.LBB10_11
# BB#10:                                # %if.then.17
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_devices_save
.LBB10_11:                              # %if.end.18
	movq	-16(%rbp), %rdi
	callq	gimp_controllers_save
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gui_display_changed, %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_displays_delete
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r8
	movl	592(%r8), %esi
	callq	gimp_tools_save
	movq	-16(%rbp), %rdi
	callq	gimp_tools_exit
	movl	$0, -4(%rbp)
.LBB10_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gui_exit_callback, .Lfunc_end10-gui_exit_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gui_exit_after_callback,@function
gui_exit_after_callback:                # @gui_exit_after_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.41, %rdi
	movabsq	$.L__func__.gui_exit_after_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB11_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gui_show_help_button_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gui_user_manual_notify, %rdi
	movq	-8(%rbp), %r9
	movq	32(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gui_show_tooltips_notify, %rdi
	movq	-8(%rbp), %r9
	movq	32(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	image_ui_manager, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	$0, image_ui_manager
	movq	ui_configurer, %rdi
	callq	g_object_unref
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gui_global_buffer_changed, %rdi
	movq	$0, ui_configurer
	movq	-8(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_clipboard_exit
	movq	-8(%rbp), %rdi
	callq	session_exit
	movq	-8(%rbp), %rdi
	callq	menus_exit
	movq	-8(%rbp), %rdi
	callq	actions_exit
	movq	-8(%rbp), %rdi
	callq	gimp_render_exit
	movq	-8(%rbp), %rdi
	callq	gimp_controllers_exit
	movq	-8(%rbp), %rdi
	callq	gimp_devices_exit
	movq	-8(%rbp), %rdi
	callq	dialogs_exit
	movq	-8(%rbp), %rdi
	callq	themes_exit
	callq	gimp_color_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, %rdi
	callq	g_type_class_unref
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gui_exit_after_callback, .Lfunc_end11-gui_exit_after_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gui_show_tooltips_notify,@function
gui_show_tooltips_notify:               # @gui_show_tooltips_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 596(%rdx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	callq	gimp_help_enable_tooltips
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	callq	gimp_help_disable_tooltips
.LBB12_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gui_show_tooltips_notify, .Lfunc_end12-gui_show_tooltips_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gui_show_help_button_notify,@function
gui_show_help_button_notify:            # @gui_show_help_button_notify
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 664(%rdx)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB13_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	cmpl	$0, 668(%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB13_2:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	gimp_dialogs_show_help_button
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gui_show_help_button_notify, .Lfunc_end13-gui_show_help_button_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gui_user_manual_notify,@function
gui_user_manual_notify:                 # @gui_user_manual_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_help_user_manual_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gui_user_manual_notify, .Lfunc_end14-gui_user_manual_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gui_display_changed,@function
gui_display_changed:                    # @gui_display_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_13
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_12
# BB#2:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -40(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB15_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.6
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
	jmp	.LBB15_14
.LBB15_6:                               # %if.end
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_7
.LBB15_7:                               # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB15_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false
                                        #   in Loop: Header=BB15_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_10
.LBB15_10:                              # %cond.end
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB15_3
.LBB15_11:                              # %for.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_context_set_image
.LBB15_12:                              # %if.end.8
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.9
	movq	image_ui_manager, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB15_14:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gui_display_changed, .Lfunc_end15-gui_display_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gui_global_buffer_changed,@function
gui_global_buffer_changed:              # @gui_global_buffer_changed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	440(%rax), %rsi
	callq	gimp_clipboard_set_buffer
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gui_global_buffer_changed, .Lfunc_end16-gui_global_buffer_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gui_single_window_mode_notify,@function
gui_single_window_mode_notify:          # @gui_single_window_mode_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	728(%rdx), %esi
	callq	gimp_ui_configurer_configure
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gui_single_window_mode_notify, .Lfunc_end17-gui_single_window_mode_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gui_tearoff_menus_notify,@function
gui_tearoff_menus_notify:               # @gui_tearoff_menus_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	600(%rdx), %esi
	callq	gtk_ui_manager_set_add_tearoffs
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gui_tearoff_menus_notify, .Lfunc_end18-gui_tearoff_menus_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gui_menu_show_tooltip,@function
gui_menu_show_tooltip:                  # @gui_menu_show_tooltip
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movabsq	$.L.str.40, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.9, %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %r8
	movb	$0, %al
	callq	gimp_statusbar_push
.LBB19_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gui_menu_show_tooltip, .Lfunc_end19-gui_menu_show_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gui_menu_hide_tooltip,@function
gui_menu_hide_tooltip:                  # @gui_menu_hide_tooltip
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movabsq	$.L.str.40, %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_statusbar_pop
.LBB20_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gui_menu_hide_tooltip, .Lfunc_end20-gui_menu_hide_tooltip
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GUI"
	.size	.L.str, 9

	.type	.L__func__.gui_libs_init,@object # @__func__.gui_libs_init
.L__func__.gui_libs_init:
	.asciz	"gui_libs_init"
	.size	.L__func__.gui_libs_init, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"context != NULL"
	.size	.L.str.1, 16

	.type	.L__func__.gui_abort,@object # @__func__.gui_abort
.L__func__.gui_abort:
	.asciz	"gui_abort"
	.size	.L__func__.gui_abort, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"abort_message != NULL"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP Message"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-abort"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-ok"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock-id"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-wilber-eek"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"border-width"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s"
	.size	.L.str.9, 3

	.type	.L__func__.gui_init,@object # @__func__.gui_init
.L__func__.gui_init:
	.asciz	"gui_init"
	.size	.L__func__.gui_init, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.10, 20

	.type	the_gui_gimp,@object    # @the_gui_gimp
	.local	the_gui_gimp
	.comm	the_gui_gimp,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"the_gui_gimp == NULL"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk20"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"default:LTR"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"default:RTL"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"initialize"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"restore"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"exit"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s\n\nGIMP requires GTK+ version %d.%d.%d or later.\nInstalled GTK+ version is %d.%d.%d.\n\nSomehow you or your software packager managed\nto install GIMP with an older GTK+ version.\n\nPlease upgrade to GTK+ version %d.%d.%d or later."
	.size	.L.str.18, 228

	.type	.L__func__.gui_help_func,@object # @__func__.gui_help_func
.L__func__.gui_help_func:
	.asciz	"gui_help_func"
	.size	.L__func__.gui_help_func, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_IS_GIMP (the_gui_gimp)"
	.size	.L.str.19, 28

	.type	.L__func__.gui_get_foreground_func,@object # @__func__.gui_get_foreground_func
.L__func__.gui_get_foreground_func:
	.asciz	"gui_get_foreground_func"
	.size	.L__func__.gui_get_foreground_func, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"color != NULL"
	.size	.L.str.20, 14

	.type	.L__func__.gui_get_background_func,@object # @__func__.gui_get_background_func
.L__func__.gui_get_background_func:
	.asciz	"gui_get_background_func"
	.size	.L__func__.gui_get_background_func, 24

	.type	.L__func__.gui_initialize_after_callback,@object # @__func__.gui_initialize_after_callback
.L__func__.gui_initialize_after_callback:
	.asciz	"gui_initialize_after_callback"
	.size	.L__func__.gui_initialize_after_callback, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"INIT: %s\n"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"DISPLAY"
	.size	.L.str.22, 8

	.type	.L__func__.gui_restore_callback,@object # @__func__.gui_restore_callback
.L__func__.gui_restore_callback:
	.asciz	"gui_restore_callback"
	.size	.L__func__.gui_restore_callback, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"notify::show-tooltips"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"notify::use-help"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"notify::user-manual-online"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"notify::show-help-button"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"display-changed"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"monitor-xresolution"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"monitor-yresolution"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"monitor-resolution-from-windowing-system"
	.size	.L.str.30, 41

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"buffer-changed"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Documents"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Tool Options"
	.size	.L.str.33, 13

	.type	image_ui_manager,@object # @image_ui_manager
	.local	image_ui_manager
	.comm	image_ui_manager,8,8
	.type	.L__func__.gui_restore_after_callback,@object # @__func__.gui_restore_after_callback
.L__func__.gui_restore_after_callback:
	.asciz	"gui_restore_after_callback"
	.size	.L__func__.gui_restore_after_callback, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp"
	.size	.L.str.34, 5

	.type	ui_configurer,@object   # @ui_configurer
	.local	ui_configurer
	.comm	ui_configurer,8,8
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Image>"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"notify::single-window-mode"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"notify::tearoff-menus"
	.size	.L.str.37, 22

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"show-tooltip"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"hide-tooltip"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"menu-tooltip"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"EXIT: %s\n"
	.size	.L.str.41, 10

	.type	.L__func__.gui_exit_callback,@object # @__func__.gui_exit_callback
.L__func__.gui_exit_callback:
	.asciz	"gui_exit_callback"
	.size	.L__func__.gui_exit_callback, 18

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-quit-dialog"
	.size	.L.str.42, 17

	.type	.L__func__.gui_exit_after_callback,@object # @__func__.gui_exit_after_callback
.L__func__.gui_exit_after_callback:
	.asciz	"gui_exit_after_callback"
	.size	.L__func__.gui_exit_after_callback, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
