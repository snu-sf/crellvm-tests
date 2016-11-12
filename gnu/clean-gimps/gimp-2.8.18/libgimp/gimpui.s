	.text
	.file	"gimpui.bc"
	.globl	gimp_ui_init
	.align	16, 0x90
	.type	gimp_ui_init,@function
gimp_ui_init:                           # @gimp_ui_init
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_ui_init(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_14
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	cmpl	$0, gimp_ui_initialized(%rip)
	je	.LBB0_7
# BB#6:                                 # %if.then.1
	jmp	.LBB0_14
.LBB0_7:                                # %if.end.2
	movq	-8(%rbp), %rdi
	callq	g_set_prgname@PLT
	callq	gimp_display_name@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_9
# BB#8:                                 # %if.then.4
	leaq	.L.str.2(%rip), %rdi
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	callq	g_setenv@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB0_9:                                # %if.end.6
	callq	gimp_user_time@PLT
	cmpl	$0, %eax
	je	.LBB0_11
# BB#10:                                # %if.then.9
	callq	gimp_user_time@PLT
	leaq	.L.str.3(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	callq	g_setenv@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB0_11:                               # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_init@PLT
	leaq	.L.str.5(%rip), %rdi
	callq	gimp_personal_rc_file@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_rc_add_default_file@PLT
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	callq	gimp_wm_class@PLT
	movq	%rax, %rdi
	callq	gdk_set_program_class@PLT
	callq	gdk_screen_get_default@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_screen_get_rgb_colormap@PLT
	movq	%rax, %rdi
	callq	gtk_widget_set_default_colormap@PLT
	leaq	gimp_ui_help_func(%rip), %rdi
	movq	gimp_context_get_foreground@GOTPCREL(%rip), %rsi
	movq	gimp_context_get_background@GOTPCREL(%rip), %rdx
	leaq	gimp_ensure_modules(%rip), %rcx
	callq	gimp_widgets_init@PLT
	callq	gimp_show_tool_tips@PLT
	cmpl	$0, %eax
	jne	.LBB0_13
# BB#12:                                # %if.then.20
	callq	gimp_help_disable_tooltips@PLT
.LBB0_13:                               # %if.end.21
	callq	gimp_show_help_button@PLT
	movl	%eax, %edi
	callq	gimp_dialogs_show_help_button@PLT
	movl	$1, gimp_ui_initialized(%rip)
.LBB0_14:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_ui_init, .Lfunc_end0-gimp_ui_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_help_func,@function
gimp_ui_help_func:                      # @gimp_ui_help_func
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_help@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_ui_help_func, .Lfunc_end1-gimp_ui_help_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ensure_modules,@function
gimp_ensure_modules:                    # @gimp_ensure_modules
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
	cmpq	$0, gimp_ensure_modules.module_db(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	gimp_get_module_load_inhibit@PLT
	leaq	.L.str.8(%rip), %rdi
	movq	%rax, -8(%rbp)
	callq	gimp_gimprc_query@PLT
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	gimp_module_db_new@PLT
	movq	%rax, gimp_ensure_modules.module_db(%rip)
	movq	gimp_ensure_modules.module_db(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_module_db_set_load_inhibit@PLT
	movq	gimp_ensure_modules.module_db(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_module_db_load@PLT
	movq	-16(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rdi
	callq	g_free@PLT
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ensure_modules, .Lfunc_end2-gimp_ensure_modules
	.cfi_endproc

	.globl	gimp_ui_get_display_window
	.align	16, 0x90
	.type	gimp_ui_get_display_window,@function
gimp_ui_get_display_window:             # @gimp_ui_get_display_window
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_ui_initialized(%rip)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_ui_get_display_window(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	-12(%rbp), %edi
	callq	gimp_display_get_window_handle@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.2
	movl	-16(%rbp), %edi
	callq	gimp_ui_get_foreign_window
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.4
	movq	$0, -8(%rbp)
.LBB3_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_ui_get_display_window, .Lfunc_end3-gimp_ui_get_display_window
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_get_foreign_window,@function
gimp_ui_get_foreign_window:             # @gimp_ui_get_foreign_window
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gdk_display_get_default@PLT
	movl	-4(%rbp), %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	gdk_x11_window_foreign_new_for_display@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_ui_get_foreign_window, .Lfunc_end4-gimp_ui_get_foreign_window
	.cfi_endproc

	.globl	gimp_ui_get_progress_window
	.align	16, 0x90
	.type	gimp_ui_get_progress_window,@function
gimp_ui_get_progress_window:            # @gimp_ui_get_progress_window
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
# BB#1:                                 # %do.body
	cmpl	$0, gimp_ui_initialized(%rip)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_ui_get_progress_window(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_8
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	callq	gimp_progress_get_window_handle@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.2
	movl	-12(%rbp), %edi
	callq	gimp_ui_get_foreign_window
	movq	%rax, -8(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.end.4
	movq	$0, -8(%rbp)
.LBB5_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_ui_get_progress_window, .Lfunc_end5-gimp_ui_get_progress_window
	.cfi_endproc

	.globl	gimp_window_set_transient_for_display
	.align	16, 0x90
	.type	gimp_window_set_transient_for_display,@function
gimp_window_set_transient_for_display:  # @gimp_window_set_transient_for_display
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_ui_initialized(%rip)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_window_set_transient_for_display(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.3
	movl	$0, -36(%rbp)
	jmp	.LBB6_13
.LBB6_8:                                # %if.else.4
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_window_set_transient_for_display(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_ui_get_display_window@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_window_set_transient_for
	cmpl	$0, %eax
	jne	.LBB6_19
# BB#18:                                # %if.then.20
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_window_set_position@PLT
.LBB6_19:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_window_set_transient_for_display, .Lfunc_end6-gimp_window_set_transient_for_display
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_set_transient_for,@function
gimp_window_set_transient_for:          # @gimp_window_set_transient_for
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gtk_window_set_transient_for@PLT
	movl	$8, %esi
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_window_transient_realized(%rip), %rcx
	movq	-16(%rbp), %rdi
	movl	%eax, %edx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	cmpq	$0, -24(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_window@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_transient_for@PLT
.LBB7_4:                                # %if.end.9
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_window_transient_realized(%rip), %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_object_unref@PLT
	movl	$1, -4(%rbp)
.LBB7_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_window_set_transient_for, .Lfunc_end7-gimp_window_set_transient_for
	.cfi_endproc

	.globl	gimp_window_set_transient
	.align	16, 0x90
	.type	gimp_window_set_transient,@function
gimp_window_set_transient:              # @gimp_window_set_transient
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_ui_initialized(%rip)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_window_set_transient(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_19
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_window_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then.3
	movl	$0, -28(%rbp)
	jmp	.LBB8_13
.LBB8_8:                                # %if.else.4
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_11
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_11
# BB#10:                                # %if.then.7
	movl	$1, -28(%rbp)
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB8_12:                               # %if.end.10
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.11
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_window_set_transient(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_19
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ui_get_progress_window@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_window_set_transient_for
	cmpl	$0, %eax
	jne	.LBB8_19
# BB#18:                                # %if.then.20
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_window_set_position@PLT
.LBB8_19:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_window_set_transient, .Lfunc_end8-gimp_window_set_transient
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_transient_realized,@function
gimp_window_transient_realized:         # @gimp_window_transient_realized
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_transient_for@PLT
.LBB9_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_window_transient_realized, .Lfunc_end9-gimp_window_transient_realized
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_ui_init,@object # @__func__.gimp_ui_init
.L__func__.gimp_ui_init:
	.asciz	"gimp_ui_init"
	.size	.L__func__.gimp_ui_init, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"prog_name != NULL"
	.size	.L.str.1, 18

	.type	gimp_ui_initialized,@object # @gimp_ui_initialized
	.local	gimp_ui_initialized
	.comm	gimp_ui_initialized,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DISPLAY"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"_TIME%u"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DESKTOP_STARTUP_ID"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"themerc"
	.size	.L.str.5, 8

	.type	.L__func__.gimp_ui_get_display_window,@object # @__func__.gimp_ui_get_display_window
.L__func__.gimp_ui_get_display_window:
	.asciz	"gimp_ui_get_display_window"
	.size	.L__func__.gimp_ui_get_display_window, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_ui_initialized"
	.size	.L.str.6, 20

	.type	.L__func__.gimp_ui_get_progress_window,@object # @__func__.gimp_ui_get_progress_window
.L__func__.gimp_ui_get_progress_window:
	.asciz	"gimp_ui_get_progress_window"
	.size	.L__func__.gimp_ui_get_progress_window, 28

	.type	.L__func__.gimp_window_set_transient_for_display,@object # @__func__.gimp_window_set_transient_for_display
.L__func__.gimp_window_set_transient_for_display:
	.asciz	"gimp_window_set_transient_for_display"
	.size	.L__func__.gimp_window_set_transient_for_display, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GTK_IS_WINDOW (window)"
	.size	.L.str.7, 23

	.type	.L__func__.gimp_window_set_transient,@object # @__func__.gimp_window_set_transient
.L__func__.gimp_window_set_transient:
	.asciz	"gimp_window_set_transient"
	.size	.L__func__.gimp_window_set_transient, 26

	.type	gimp_ensure_modules.module_db,@object # @gimp_ensure_modules.module_db
	.local	gimp_ensure_modules.module_db
	.comm	gimp_ensure_modules.module_db,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"module-path"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"realize"
	.size	.L.str.9, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
