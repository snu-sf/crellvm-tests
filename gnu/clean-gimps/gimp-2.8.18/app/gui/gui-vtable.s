	.text
	.file	"gui-vtable.bc"
	.globl	gui_vtable_init
	.align	16, 0x90
	.type	gui_vtable_init,@function
gui_vtable_init:                        # @gui_vtable_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_vtable_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$gui_recent_list_load, %rax
	movabsq	$gui_recent_list_add_uri, %rcx
	movabsq	$gui_pdb_dialog_close, %rdx
	movabsq	$gui_pdb_dialog_set, %rsi
	movabsq	$gui_pdb_dialog_new, %rdi
	movabsq	$gui_free_progress, %r8
	movabsq	$gui_new_progress, %r9
	movabsq	$gui_displays_reconnect, %r10
	movabsq	$gui_display_delete, %r11
	movabsq	$gui_display_create, %rbx
	movabsq	$gui_display_get_window_id, %r14
	movabsq	$gui_display_get_ID, %r15
	movabsq	$gui_display_get_by_ID, %r12
	movabsq	$gui_get_empty_display, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$gui_get_window_strategy, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gui_get_theme_dir, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gui_get_user_time, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gui_get_display_name, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gui_get_program_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gui_help, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$gui_message, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$gui_unset_busy, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$gui_set_busy, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movabsq	$gui_threads_leave, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movabsq	$gui_threads_enter, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movabsq	$gui_ungrab, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 96(%rax)
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 104(%rax)
	movq	-48(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 112(%rax)
	movq	-48(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 120(%rax)
	movq	-48(%rbp), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 128(%rax)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 136(%rax)
	movq	-48(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 144(%rax)
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 168(%rax)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 176(%rax)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 184(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 200(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 216(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 224(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 232(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 240(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 248(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 256(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 264(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 272(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-48(%rbp), %rax
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 288(%rax)
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 296(%rax)
.LBB0_13:                               # %return
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gui_vtable_init, .Lfunc_end0-gui_vtable_init
	.cfi_endproc

	.align	16, 0x90
	.type	gui_ungrab,@function
gui_ungrab:                             # @gui_ungrab
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gdk_display_get_default
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gdk_display_pointer_ungrab
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gdk_display_keyboard_ungrab
.LBB1_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gui_ungrab, .Lfunc_end1-gui_ungrab
	.cfi_endproc

	.align	16, 0x90
	.type	gui_threads_enter,@function
gui_threads_enter:                      # @gui_threads_enter
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
# BB#1:                                 # %do.body
	cmpq	$0, gdk_threads_lock
	je	.LBB2_3
# BB#2:                                 # %if.then
	callq	*gdk_threads_lock
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gui_threads_enter, .Lfunc_end2-gui_threads_enter
	.cfi_endproc

	.align	16, 0x90
	.type	gui_threads_leave,@function
gui_threads_leave:                      # @gui_threads_leave
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, gdk_threads_unlock
	je	.LBB3_3
# BB#2:                                 # %if.then
	callq	*gdk_threads_unlock
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gui_threads_leave, .Lfunc_end3-gui_threads_leave
	.cfi_endproc

	.align	16, 0x90
	.type	gui_set_busy,@function
gui_set_busy:                           # @gui_set_busy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_displays_set_busy
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_set_busy
	callq	gdk_flush
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gui_set_busy, .Lfunc_end4-gui_set_busy
	.cfi_endproc

	.align	16, 0x90
	.type	gui_unset_busy,@function
gui_unset_busy:                         # @gui_unset_busy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_displays_unset_busy
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_unset_busy
	callq	gdk_flush
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gui_unset_busy, .Lfunc_end5-gui_unset_busy
	.cfi_endproc

	.align	16, 0x90
	.type	gui_help,@function
gui_help:                               # @gui_help
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_help_show
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gui_help, .Lfunc_end6-gui_help
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_program_class,@function
gui_get_program_class:                  # @gui_get_program_class
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gdk_get_program_class
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gui_get_program_class, .Lfunc_end7-gui_get_program_class
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_display_name,@function
gui_get_display_name:                   # @gui_get_display_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_display_get_by_ID
	movq	%rax, -40(%rbp)
.LBB8_2:                                # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.1
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gdk_screen_get_monitor_at_window
	movl	%eax, -52(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	callq	gdk_display_get_default
	leaq	-48(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	%rax, %rdi
	callq	gdk_display_get_pointer
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	gdk_screen_get_monitor_at_point
	movl	%eax, -52(%rbp)
.LBB8_5:                                # %if.end.12
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.14
	movq	-48(%rbp), %rdi
	callq	gdk_screen_make_display_name
	movq	%rax, -8(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %if.end.16
	movq	$0, -8(%rbp)
.LBB8_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gui_get_display_name, .Lfunc_end8-gui_get_display_name
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_user_time,@function
gui_get_user_time:                      # @gui_get_user_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gdk_display_get_default
	movq	%rax, %rdi
	callq	gdk_x11_display_get_user_time
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gui_get_user_time, .Lfunc_end9-gui_get_user_time
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_theme_dir,@function
gui_get_theme_dir:                      # @gui_get_theme_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	656(%rax), %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	themes_get_theme_dir
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gui_get_theme_dir, .Lfunc_end10-gui_get_theme_dir
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_window_strategy,@function
gui_get_window_strategy:                # @gui_get_window_strategy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 728(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	callq	gimp_single_window_strategy_get_singleton
	movq	%rax, -8(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	callq	gimp_multi_window_strategy_get_singleton
	movq	%rax, -8(%rbp)
.LBB11_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gui_get_window_strategy, .Lfunc_end11-gui_get_window_strategy
	.cfi_endproc

	.align	16, 0x90
	.type	gui_get_empty_display,@function
gui_get_empty_display:                  # @gui_get_empty_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	416(%rdi), %rdi
	callq	gimp_container_get_n_children
	cmpl	$1, %eax
	jne	.LBB12_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	416(%rax), %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB12_3
# BB#2:                                 # %if.then.6
	movq	$0, -16(%rbp)
.LBB12_3:                               # %if.end
	jmp	.LBB12_4
.LBB12_4:                               # %if.end.7
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gui_get_empty_display, .Lfunc_end12-gui_get_empty_display
	.cfi_endproc

	.align	16, 0x90
	.type	gui_display_get_by_ID,@function
gui_display_get_by_ID:                  # @gui_display_get_by_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_display_get_by_ID
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gui_display_get_by_ID, .Lfunc_end13-gui_display_get_by_ID
	.cfi_endproc

	.align	16, 0x90
	.type	gui_display_get_ID,@function
gui_display_get_ID:                     # @gui_display_get_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_display_get_ID
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gui_display_get_ID, .Lfunc_end14-gui_display_get_ID
	.cfi_endproc

	.align	16, 0x90
	.type	gui_display_get_window_id,@function
gui_display_get_window_id:              # @gui_display_get_window_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_11
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then.8
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.11
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.12
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.14
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.16
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_get_native_id
	movl	%eax, -4(%rbp)
	jmp	.LBB15_12
.LBB15_10:                              # %if.end.20
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.21
	movl	$0, -4(%rbp)
.LBB15_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gui_display_get_window_id, .Lfunc_end15-gui_display_get_window_id
	.cfi_endproc

	.align	16, 0x90
	.type	gui_display_create,@function
gui_display_create:                     # @gui_display_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gui_get_empty_display
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_fill
	jmp	.LBB16_8
.LBB16_2:                               # %if.else
	movabsq	$.L.str.2, %rdi
	callq	gimp_ui_managers_from_name
	movq	%rax, -64(%rbp)
# BB#3:                                 # %do.body
	cmpq	$0, -64(%rbp)
	je	.LBB16_5
# BB#4:                                 # %if.then.5
	jmp	.LBB16_6
.LBB16_5:                               # %if.else.6
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_display_create, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_12
.LBB16_6:                               # %if.end
	jmp	.LBB16_7
.LBB16_7:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	global_menu_factory, %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	gimp_display_new
	movq	%rax, -56(%rbp)
.LBB16_8:                               # %if.end.9
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_display
	movq	-56(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB16_10
# BB#9:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_set_image
	movq	-48(%rbp), %rdi
	callq	gimp_context_display_changed
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.13
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
.LBB16_11:                              # %if.end.14
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB16_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gui_display_create, .Lfunc_end16-gui_display_create
	.cfi_endproc

	.align	16, 0x90
	.type	gui_display_delete,@function
gui_display_delete:                     # @gui_display_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_display_close
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gui_display_delete, .Lfunc_end17-gui_display_delete
	.cfi_endproc

	.align	16, 0x90
	.type	gui_displays_reconnect,@function
gui_displays_reconnect:                 # @gui_displays_reconnect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_displays_reconnect
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gui_displays_reconnect, .Lfunc_end18-gui_displays_reconnect
	.cfi_endproc

	.align	16, 0x90
	.type	gui_new_progress,@function
gui_new_progress:                       # @gui_new_progress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB19_10
# BB#2:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_9
.LBB19_4:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_7
# BB#6:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB19_8
.LBB19_7:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_8:                               # %if.end
	jmp	.LBB19_9
.LBB19_9:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_11
.LBB19_10:                              # %if.then.9
	jmp	.LBB19_12
.LBB19_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_new_progress, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_16
.LBB19_12:                              # %if.end.11
	jmp	.LBB19_13
.LBB19_13:                              # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB19_16
.LBB19_15:                              # %if.end.16
	callq	gimp_progress_dialog_new
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB19_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gui_new_progress, .Lfunc_end19-gui_new_progress
	.cfi_endproc

	.align	16, 0x90
	.type	gui_free_progress,@function
gui_free_progress:                      # @gui_free_progress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_progress_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_free_progress, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_21
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_progress_dialog_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.19
	movl	$0, -60(%rbp)
	jmp	.LBB20_19
.LBB20_14:                              # %if.else.20
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_17
# BB#15:                                # %land.lhs.true.23
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_17
# BB#16:                                # %if.then.27
	movl	$1, -60(%rbp)
	jmp	.LBB20_18
.LBB20_17:                              # %if.else.28
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_18:                              # %if.end.30
	jmp	.LBB20_19
.LBB20_19:                              # %if.end.31
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_21
# BB#20:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB20_21:                              # %if.end.37
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gui_free_progress, .Lfunc_end20-gui_free_progress
	.cfi_endproc

	.align	16, 0x90
	.type	gui_pdb_dialog_new,@function
gui_pdb_dialog_new:                     # @gui_pdb_dialog_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	$4, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_2
# BB#1:                                 # %if.then
	callq	gimp_brush_select_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.6, %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	jmp	.LBB21_14
.LBB21_2:                               # %if.else
	movq	-80(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_font_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB21_4
# BB#3:                                 # %if.then.6
	callq	gimp_font_select_get_type
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.8, %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	jmp	.LBB21_13
.LBB21_4:                               # %if.else.8
	movq	-80(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB21_6
# BB#5:                                 # %if.then.12
	callq	gimp_gradient_select_get_type
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.10, %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	jmp	.LBB21_12
.LBB21_6:                               # %if.else.14
	movq	-80(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB21_8
# BB#7:                                 # %if.then.18
	callq	gimp_palette_select_get_type
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.12, %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
	jmp	.LBB21_11
.LBB21_8:                               # %if.else.20
	movq	-80(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB21_10
# BB#9:                                 # %if.then.24
	callq	gimp_pattern_select_get_type
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.14, %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -128(%rbp)
	movq	%rcx, -136(%rbp)
.LBB21_10:                              # %if.end
	jmp	.LBB21_11
.LBB21_11:                              # %if.end.26
	jmp	.LBB21_12
.LBB21_12:                              # %if.end.27
	jmp	.LBB21_13
.LBB21_13:                              # %if.end.28
	jmp	.LBB21_14
.LBB21_14:                              # %if.end.29
	cmpq	$4, -120(%rbp)
	je	.LBB21_29
# BB#15:                                # %if.then.31
	movq	$0, -144(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true
	movq	-104(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB21_18
# BB#17:                                # %if.then.34
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -144(%rbp)
.LBB21_18:                              # %if.end.36
	cmpq	$0, -144(%rbp)
	jne	.LBB21_20
# BB#19:                                # %if.then.38
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -144(%rbp)
.LBB21_20:                              # %if.end.41
	cmpq	$0, -144(%rbp)
	je	.LBB21_28
# BB#21:                                # %if.then.43
	movq	$0, -152(%rbp)
	movl	$0, -156(%rbp)
	movq	-120(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-88(%rbp), %r8
	movq	-128(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	520(%rdx), %rdx
	movq	-64(%rbp), %r9
	movq	-80(%rbp), %r10
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%r9, -264(%rbp)         # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%r8, -280(%rbp)         # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	leaq	-156(%rbp), %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_standard_help_func, %rdi
	movabsq	$.L.str.19, %r8
	movabsq	$.L.str.20, %r10
	movabsq	$.L.str.21, %r11
	movabsq	$.L.str.22, %rbx
	movabsq	$.L.str.23, %r14
	movabsq	$.L.str.24, %r15
	movabsq	$.L.str.25, %r12
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	global_menu_factory, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r11, 56(%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%r14, 88(%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 96(%rsp)
	movq	%r15, 104(%rsp)
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, 112(%rsp)
	movq	%r12, 120(%rsp)
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, %al
	movq	%r13, -368(%rbp)        # 8-byte Spill
	callq	gimp_parameters_append
	leaq	-156(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	-120(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-112(%rbp), %rcx
	callq	gimp_parameters_append_valist
	movq	%rax, -152(%rbp)
	movq	-120(%rbp), %rdi
	movl	-156(%rbp), %esi
	movq	-152(%rbp), %rdx
	callq	g_object_newv
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	gimp_parameters_free
	movq	-168(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB21_23
# BB#22:                                # %if.then.52
	movq	-176(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_show_button_bar
.LBB21_23:                              # %if.end.55
	cmpq	$0, -72(%rbp)
	je	.LBB21_27
# BB#24:                                # %if.then.57
	movq	-72(%rbp), %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	.LBB21_26
# BB#25:                                # %if.then.60
	movq	-168(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-180(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_window_set_transient_for
.LBB21_26:                              # %if.end.63
	jmp	.LBB21_27
.LBB21_27:                              # %if.end.64
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movl	$100, %edi
	callq	g_timeout_source_new
	movl	$80, %edi
	movl	%edi, %esi
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gui_pdb_dialog_present, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	g_cclosure_new_object
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_source_set_closure
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-192(%rbp), %rdi
	callq	g_source_attach
	movq	-192(%rbp), %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	g_source_unref
	movl	$1, -44(%rbp)
	jmp	.LBB21_30
.LBB21_28:                              # %if.end.69
	jmp	.LBB21_29
.LBB21_29:                              # %if.end.70
	movl	$0, -44(%rbp)
.LBB21_30:                              # %return
	movl	-44(%rbp), %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gui_pdb_dialog_new, .Lfunc_end21-gui_pdb_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	gui_pdb_dialog_set,@function
gui_pdb_dialog_set:                     # @gui_pdb_dialog_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_2
# BB#1:                                 # %if.then
	callq	gimp_brush_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -56(%rbp)
	jmp	.LBB22_14
.LBB22_2:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB22_4
# BB#3:                                 # %if.then.7
	callq	gimp_font_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -56(%rbp)
	jmp	.LBB22_13
.LBB22_4:                               # %if.else.10
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB22_6
# BB#5:                                 # %if.then.14
	callq	gimp_gradient_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -56(%rbp)
	jmp	.LBB22_12
.LBB22_6:                               # %if.else.17
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB22_8
# BB#7:                                 # %if.then.21
	callq	gimp_palette_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -56(%rbp)
	jmp	.LBB22_11
.LBB22_8:                               # %if.else.24
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB22_10
# BB#9:                                 # %if.then.28
	callq	gimp_pattern_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -56(%rbp)
.LBB22_10:                              # %if.end
	jmp	.LBB22_11
.LBB22_11:                              # %if.end.31
	jmp	.LBB22_12
.LBB22_12:                              # %if.end.32
	jmp	.LBB22_13
.LBB22_13:                              # %if.end.33
	jmp	.LBB22_14
.LBB22_14:                              # %if.end.34
	cmpq	$0, -56(%rbp)
	je	.LBB22_26
# BB#15:                                # %if.then.35
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_dialog_get_by_callback
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB22_25
# BB#16:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB22_25
# BB#17:                                # %if.then.40
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB22_24
# BB#18:                                # %if.then.43
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	ja	.LBB22_20
# BB#19:                                # %vaarg.in_reg
	movl	-140(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB22_21
.LBB22_20:                              # %vaarg.in_mem
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -152(%rbp)        # 8-byte Spill
.LBB22_21:                              # %vaarg.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	288(%rax), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_context_set_by_type
	cmpq	$0, -80(%rbp)
	je	.LBB22_23
# BB#22:                                # %if.then.46
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_valist
.LBB22_23:                              # %if.end.48
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	movl	$1, -4(%rbp)
	jmp	.LBB22_27
.LBB22_24:                              # %if.end.51
	jmp	.LBB22_25
.LBB22_25:                              # %if.end.52
	jmp	.LBB22_26
.LBB22_26:                              # %if.end.53
	movl	$0, -4(%rbp)
.LBB22_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gui_pdb_dialog_set, .Lfunc_end22-gui_pdb_dialog_set
	.cfi_endproc

	.align	16, 0x90
	.type	gui_pdb_dialog_close,@function
gui_pdb_dialog_close:                   # @gui_pdb_dialog_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	callq	gimp_brush_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -40(%rbp)
	jmp	.LBB23_14
.LBB23_2:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB23_4
# BB#3:                                 # %if.then.7
	callq	gimp_font_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -40(%rbp)
	jmp	.LBB23_13
.LBB23_4:                               # %if.else.10
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB23_6
# BB#5:                                 # %if.then.14
	callq	gimp_gradient_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -40(%rbp)
	jmp	.LBB23_12
.LBB23_6:                               # %if.else.17
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB23_8
# BB#7:                                 # %if.then.21
	callq	gimp_palette_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -40(%rbp)
	jmp	.LBB23_11
.LBB23_8:                               # %if.else.24
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB23_10
# BB#9:                                 # %if.then.28
	callq	gimp_pattern_select_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -40(%rbp)
.LBB23_10:                              # %if.end
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.31
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.32
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.33
	jmp	.LBB23_14
.LBB23_14:                              # %if.end.34
	cmpq	$0, -40(%rbp)
	je	.LBB23_19
# BB#15:                                # %if.then.35
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_dialog_get_by_callback
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB23_18
# BB#17:                                # %if.then.40
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movl	$1, -4(%rbp)
	jmp	.LBB23_20
.LBB23_18:                              # %if.end.43
	jmp	.LBB23_19
.LBB23_19:                              # %if.end.44
	movl	$0, -4(%rbp)
.LBB23_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gui_pdb_dialog_close, .Lfunc_end23-gui_pdb_dialog_close
	.cfi_endproc

	.align	16, 0x90
	.type	gui_recent_list_add_uri,@function
gui_recent_list_add_uri:                # @gui_recent_list_add_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	.Lgui_recent_list_add_uri.groups, %rdx
	movq	%rdx, -112(%rbp)
	movq	.Lgui_recent_list_add_uri.groups+8, %rdx
	movq	%rdx, -104(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_recent_list_add_uri, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_21
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_recent_list_add_uri, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_21
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB24_19
# BB#18:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB24_20
.LBB24_19:                              # %cond.false
	movabsq	$.L.str.28, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB24_20
.LBB24_20:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.29, %rsi
	movq	%rax, -72(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -40(%rbp)
	callq	gtk_recent_manager_get_default
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_recent_manager_add_full
	movl	%eax, -4(%rbp)
.LBB24_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gui_recent_list_add_uri, .Lfunc_end24-gui_recent_list_add_uri
	.cfi_endproc

	.align	16, 0x90
	.type	gui_recent_list_load,@function
gui_recent_list_load:                   # @gui_recent_list_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gui_recent_list_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_19
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	544(%rax), %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rax
	movq	544(%rax), %rdi
	callq	gimp_container_clear
	callq	gtk_recent_manager_get_default
	movq	%rax, %rdi
	callq	gtk_recent_manager_get_items
	movabsq	$gui_recent_list_compare, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_list_sort
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB25_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB25_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB25_13 Depth=1
	movabsq	$.L.str.29, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_recent_info_has_application
	cmpl	$0, %eax
	je	.LBB25_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB25_13 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_recent_info_get_uri
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_imagefile_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_recent_info_get_mime_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_imagefile_set_mime_type
	movq	-8(%rbp), %rax
	movq	544(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-64(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_object_unref
.LBB25_16:                              # %if.end.28
                                        #   in Loop: Header=BB25_13 Depth=1
	movq	-56(%rbp), %rdi
	callq	gtk_recent_info_unref
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB25_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_13
.LBB25_18:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rdi
	movq	544(%rdi), %rdi
	callq	gimp_container_thaw
.LBB25_19:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gui_recent_list_load, .Lfunc_end25-gui_recent_list_load
	.cfi_endproc

	.align	16, 0x90
	.type	gui_pdb_dialog_present,@function
gui_pdb_dialog_present:                 # @gui_pdb_dialog_present
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_window_present
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gui_pdb_dialog_present, .Lfunc_end26-gui_pdb_dialog_present
	.cfi_endproc

	.align	16, 0x90
	.type	gui_recent_list_compare,@function
gui_recent_list_compare:                # @gui_recent_list_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_recent_info_get_modified
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_recent_info_get_modified
	movq	-24(%rbp), %rsi         # 8-byte Reload
	subq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gui_recent_list_compare, .Lfunc_end27-gui_recent_list_compare
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GUI"
	.size	.L.str, 9

	.type	.L__func__.gui_vtable_init,@object # @__func__.gui_vtable_init
.L__func__.gui_vtable_init:
	.asciz	"gui_vtable_init"
	.size	.L__func__.gui_vtable_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<Image>"
	.size	.L.str.2, 8

	.type	.L__func__.gui_display_create,@object # @__func__.gui_display_create
.L__func__.gui_display_create:
	.asciz	"gui_display_create"
	.size	.L__func__.gui_display_create, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image_managers != NULL"
	.size	.L.str.3, 23

	.type	.L__func__.gui_new_progress,@object # @__func__.gui_new_progress
.L__func__.gui_new_progress:
	.asciz	"gui_new_progress"
	.size	.L__func__.gui_new_progress, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"display == NULL || GIMP_IS_DISPLAY (display)"
	.size	.L.str.4, 45

	.type	.L__func__.gui_free_progress,@object # @__func__.gui_free_progress
.L__func__.gui_free_progress:
	.asciz	"gui_free_progress"
	.size	.L__func__.gui_free_progress, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PROGRESS_DIALOG (progress)"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-brush-selection"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-brush-dialog"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-font-selection"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-font-dialog"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-gradient-selection"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-gradient-dialog"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-palette-selection"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-palette-dialog"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-pattern-selection"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-pattern-dialog"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"title"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"role"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"help-func"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"help-id"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdb"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"context"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"select-type"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"initial-object"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"callback-name"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"menu-factory"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Graphics"
	.size	.L.str.26, 9

	.type	.Lgui_recent_list_add_uri.groups,@object # @gui_recent_list_add_uri.groups
	.section	.rodata,"a",@progbits
	.align	16
.Lgui_recent_list_add_uri.groups:
	.quad	.L.str.26
	.quad	0
	.size	.Lgui_recent_list_add_uri.groups, 16

	.type	.L__func__.gui_recent_list_add_uri,@object # @__func__.gui_recent_list_add_uri
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gui_recent_list_add_uri:
	.asciz	"gui_recent_list_add_uri"
	.size	.L__func__.gui_recent_list_add_uri, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"uri != NULL"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"application/octet-stream"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str.29, 31

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-2.8 %u"
	.size	.L.str.30, 12

	.type	.L__func__.gui_recent_list_load,@object # @__func__.gui_recent_list_load
.L__func__.gui_recent_list_load:
	.asciz	"gui_recent_list_load"
	.size	.L__func__.gui_recent_list_load, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
