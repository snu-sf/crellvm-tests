	.text
	.file	"gimpdisplayshell-appearance.bc"
	.globl	gimp_display_shell_appearance_update
	.align	16, 0x90
	.type	gimp_display_shell_appearance_update,@function
gimp_display_shell_appearance_update:   # @gimp_display_shell_appearance_update
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
	movabsq	$.L__func__.gimp_display_shell_appearance_update, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	movabsq	$.L.str.2, %rsi
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %edx
	callq	appearance_set_action_active
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_left_docks
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_right_docks
	xorl	%edx, %edx
	movb	%dl, %cl
	movq	%rax, -64(%rbp)
	cmpl	$0, -68(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB0_19
# BB#14:                                # %land.lhs.true.23
	cmpq	$0, -56(%rbp)
	je	.LBB0_16
# BB#15:                                # %land.lhs.true.25
	movq	-56(%rbp), %rdi
	callq	gimp_dock_columns_get_docks
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$0, %rax
	movb	%dl, -73(%rbp)          # 1-byte Spill
	jne	.LBB0_19
.LBB0_16:                               # %land.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -64(%rbp)
	movb	%cl, -74(%rbp)          # 1-byte Spill
	je	.LBB0_18
# BB#17:                                # %land.rhs.29
	movq	-64(%rbp), %rdi
	callq	gimp_dock_columns_get_docks
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -74(%rbp)          # 1-byte Spill
.LBB0_18:                               # %land.end
	movb	-74(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB0_19:                               # %land.end.32
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rdx
	movq	416(%rdx), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_statusbar_set_has_resize_grip
.LBB0_20:                               # %if.end.35
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	24(%rax), %esi
	callq	gimp_display_shell_set_show_menubar
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	28(%rax), %esi
	callq	gimp_display_shell_set_show_statusbar
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %esi
	callq	gimp_display_shell_set_show_rulers
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	callq	gimp_display_shell_set_show_scrollbars
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	callq	gimp_display_shell_set_show_selection
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	44(%rax), %esi
	callq	gimp_display_shell_set_show_layer
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	48(%rax), %esi
	callq	gimp_display_shell_set_show_guides
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	52(%rax), %esi
	callq	gimp_display_shell_set_show_grid
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %esi
	callq	gimp_display_shell_set_show_sample_points
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	60(%rax), %esi
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_display_shell_set_padding
.LBB0_21:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_appearance_update, .Lfunc_end0-gimp_display_shell_appearance_update
	.cfi_endproc

	.align	16, 0x90
	.type	appearance_get_options,@function
appearance_get_options:                 # @appearance_get_options
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	128(%rdi), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB1_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_window_get_fullscreen
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.end
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	appearance_get_options, .Lfunc_end1-appearance_get_options
	.cfi_endproc

	.align	16, 0x90
	.type	appearance_set_action_active,@function
appearance_set_action_active:           # @appearance_set_action_active
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-8(%rbp), %rax
	jne	.LBB2_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movabsq	$.L.str.29, %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_action_group_set_action_active
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.6
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_display
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB2_9
# BB#6:                                 # %if.then.11
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.15
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_action_group_set_action_active
.LBB2_8:                                # %if.end.16
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	appearance_set_action_active, .Lfunc_end2-appearance_set_action_active
	.cfi_endproc

	.globl	gimp_display_shell_set_show_menubar
	.align	16, 0x90
	.type	gimp_display_shell_set_show_menubar,@function
gimp_display_shell_set_show_menubar:    # @gimp_display_shell_set_show_menubar
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_menubar, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	cmpq	$0, -32(%rbp)
	je	.LBB3_15
# BB#13:                                # %land.lhs.true.14
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-8(%rbp), %rax
	jne	.LBB3_15
# BB#14:                                # %if.then.17
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, %rdi
	callq	gimp_image_window_keep_canvas_pos
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_window_set_show_menubar
.LBB3_15:                               # %if.end.19
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB3_16:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_set_show_menubar, .Lfunc_end3-gimp_display_shell_set_show_menubar
	.cfi_endproc

	.globl	gimp_display_shell_set_show_statusbar
	.align	16, 0x90
	.type	gimp_display_shell_set_show_statusbar,@function
gimp_display_shell_set_show_statusbar:  # @gimp_display_shell_set_show_statusbar
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_statusbar, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, %rdi
	callq	gimp_image_window_keep_canvas_pos
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_statusbar_set_visible
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB4_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_set_show_statusbar, .Lfunc_end4-gimp_display_shell_set_show_statusbar
	.cfi_endproc

	.globl	gimp_display_shell_set_show_rulers
	.align	16, 0x90
	.type	gimp_display_shell_set_show_rulers,@function
gimp_display_shell_set_show_rulers:     # @gimp_display_shell_set_show_rulers
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_rulers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, %rdi
	callq	gimp_image_window_keep_canvas_pos
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB5_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_set_show_rulers, .Lfunc_end5-gimp_display_shell_set_show_rulers
	.cfi_endproc

	.globl	gimp_display_shell_set_show_scrollbars
	.align	16, 0x90
	.type	gimp_display_shell_set_show_scrollbars,@function
gimp_display_shell_set_show_scrollbars: # @gimp_display_shell_set_show_scrollbars
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
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_scrollbars, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, %rdi
	callq	gimp_image_window_keep_canvas_pos
	movq	-8(%rbp), %rax
	movq	408(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rax
	movq	392(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_set_show_scrollbars, .Lfunc_end6-gimp_display_shell_set_show_scrollbars
	.cfi_endproc

	.globl	gimp_display_shell_set_show_selection
	.align	16, 0x90
	.type	gimp_display_shell_set_show_selection,@function
gimp_display_shell_set_show_selection:  # @gimp_display_shell_set_show_selection
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L__func__.gimp_display_shell_set_show_selection, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_display_shell_selection_set_show
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_set_show_selection, .Lfunc_end7-gimp_display_shell_set_show_selection
	.cfi_endproc

	.globl	gimp_display_shell_set_show_layer
	.align	16, 0x90
	.type	gimp_display_shell_set_show_layer,@function
gimp_display_shell_set_show_layer:      # @gimp_display_shell_set_show_layer
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	504(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_canvas_item_set_visible
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB8_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_set_show_layer, .Lfunc_end8-gimp_display_shell_set_show_layer
	.cfi_endproc

	.globl	gimp_display_shell_set_show_guides
	.align	16, 0x90
	.type	gimp_display_shell_set_show_guides,@function
gimp_display_shell_set_show_guides:     # @gimp_display_shell_set_show_guides
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_guides, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.15, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	488(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_canvas_item_set_visible
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB9_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_set_show_guides, .Lfunc_end9-gimp_display_shell_set_show_guides
	.cfi_endproc

	.globl	gimp_display_shell_set_show_grid
	.align	16, 0x90
	.type	gimp_display_shell_set_show_grid,@function
gimp_display_shell_set_show_grid:       # @gimp_display_shell_set_show_grid
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_grid, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.17, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	480(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_canvas_item_set_visible
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB10_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_set_show_grid, .Lfunc_end10-gimp_display_shell_set_show_grid
	.cfi_endproc

	.globl	gimp_display_shell_set_show_sample_points
	.align	16, 0x90
	.type	gimp_display_shell_set_show_sample_points,@function
gimp_display_shell_set_show_sample_points: # @gimp_display_shell_set_show_sample_points
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_show_sample_points, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	496(%rcx), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_canvas_item_set_visible
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB11_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_set_show_sample_points, .Lfunc_end11-gimp_display_shell_set_show_sample_points
	.cfi_endproc

	.globl	gimp_display_shell_set_padding
	.align	16, 0x90
	.type	gimp_display_shell_set_padding,@function
gimp_display_shell_set_padding:         # @gimp_display_shell_set_padding
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_padding, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_25
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_padding, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_25
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movaps	%xmm1, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movl	-12(%rbp), %ecx
	incl	%ecx
	movl	%ecx, %eax
	subl	$4, %ecx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	ja	.LBB12_24
# BB#26:                                # %do.end.16
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_18:                              # %sw.bb
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB12_20
# BB#19:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_ensure_style
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_style
	leaq	-64(%rbp), %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gimp_rgb_set_gdk_color
.LBB12_20:                              # %if.end.24
	jmp	.LBB12_24
.LBB12_21:                              # %sw.bb.25
	callq	gimp_render_light_check_color
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB12_24
.LBB12_22:                              # %sw.bb.27
	callq	gimp_render_dark_check_color
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB12_24
.LBB12_23:                              # %sw.bb.29
	jmp	.LBB12_24
.LBB12_24:                              # %sw.epilog
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rcx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_canvas_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_set_bg_color
	movabsq	$.L.str.28, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdx
	callq	appearance_set_action_color
.LBB12_25:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_set_padding, .Lfunc_end12-gimp_display_shell_set_padding
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_23
	.quad	.LBB12_18
	.quad	.LBB12_21
	.quad	.LBB12_22
	.quad	.LBB12_23

	.text
	.globl	gimp_display_shell_get_show_menubar
	.align	16, 0x90
	.type	gimp_display_shell_get_show_menubar,@function
gimp_display_shell_get_show_menubar:    # @gimp_display_shell_get_show_menubar
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_menubar, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_get_show_menubar, .Lfunc_end13-gimp_display_shell_get_show_menubar
	.cfi_endproc

	.globl	gimp_display_shell_get_show_statusbar
	.align	16, 0x90
	.type	gimp_display_shell_get_show_statusbar,@function
gimp_display_shell_get_show_statusbar:  # @gimp_display_shell_get_show_statusbar
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_statusbar, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	28(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_get_show_statusbar, .Lfunc_end14-gimp_display_shell_get_show_statusbar
	.cfi_endproc

	.globl	gimp_display_shell_get_show_rulers
	.align	16, 0x90
	.type	gimp_display_shell_get_show_rulers,@function
gimp_display_shell_get_show_rulers:     # @gimp_display_shell_get_show_rulers
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_rulers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB15_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_display_shell_get_show_rulers, .Lfunc_end15-gimp_display_shell_get_show_rulers
	.cfi_endproc

	.globl	gimp_display_shell_get_show_scrollbars
	.align	16, 0x90
	.type	gimp_display_shell_get_show_scrollbars,@function
gimp_display_shell_get_show_scrollbars: # @gimp_display_shell_get_show_scrollbars
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_scrollbars, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	36(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB16_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_display_shell_get_show_scrollbars, .Lfunc_end16-gimp_display_shell_get_show_scrollbars
	.cfi_endproc

	.globl	gimp_display_shell_get_show_selection
	.align	16, 0x90
	.type	gimp_display_shell_get_show_selection,@function
gimp_display_shell_get_show_selection:  # @gimp_display_shell_get_show_selection
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_selection, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB17_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_display_shell_get_show_selection, .Lfunc_end17-gimp_display_shell_get_show_selection
	.cfi_endproc

	.globl	gimp_display_shell_get_show_layer
	.align	16, 0x90
	.type	gimp_display_shell_get_show_layer,@function
gimp_display_shell_get_show_layer:      # @gimp_display_shell_get_show_layer
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	44(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB18_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_display_shell_get_show_layer, .Lfunc_end18-gimp_display_shell_get_show_layer
	.cfi_endproc

	.globl	gimp_display_shell_get_show_guides
	.align	16, 0x90
	.type	gimp_display_shell_get_show_guides,@function
gimp_display_shell_get_show_guides:     # @gimp_display_shell_get_show_guides
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_guides, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	48(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB19_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_display_shell_get_show_guides, .Lfunc_end19-gimp_display_shell_get_show_guides
	.cfi_endproc

	.globl	gimp_display_shell_get_show_grid
	.align	16, 0x90
	.type	gimp_display_shell_get_show_grid,@function
gimp_display_shell_get_show_grid:       # @gimp_display_shell_get_show_grid
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L__func__.gimp_display_shell_get_show_grid, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	52(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB20_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_display_shell_get_show_grid, .Lfunc_end20-gimp_display_shell_get_show_grid
	.cfi_endproc

	.globl	gimp_display_shell_get_show_sample_points
	.align	16, 0x90
	.type	gimp_display_shell_get_show_sample_points,@function
gimp_display_shell_get_show_sample_points: # @gimp_display_shell_get_show_sample_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_show_sample_points, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	appearance_get_options
	movl	56(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB21_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_display_shell_get_show_sample_points, .Lfunc_end21-gimp_display_shell_get_show_sample_points
	.cfi_endproc

	.globl	gimp_display_shell_set_snap_to_grid
	.align	16, 0x90
	.type	gimp_display_shell_set_snap_to_grid,@function
gimp_display_shell_set_snap_to_grid:    # @gimp_display_shell_set_snap_to_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_snap_to_grid, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_14
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	172(%rcx), %eax
	je	.LBB22_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.21, %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 172(%rdx)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB22_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_display_shell_set_snap_to_grid, .Lfunc_end22-gimp_display_shell_set_snap_to_grid
	.cfi_endproc

	.globl	gimp_display_shell_get_snap_to_grid
	.align	16, 0x90
	.type	gimp_display_shell_get_snap_to_grid,@function
gimp_display_shell_get_snap_to_grid:    # @gimp_display_shell_get_snap_to_grid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_snap_to_grid, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	172(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB23_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_display_shell_get_snap_to_grid, .Lfunc_end23-gimp_display_shell_get_snap_to_grid
	.cfi_endproc

	.globl	gimp_display_shell_set_snap_to_guides
	.align	16, 0x90
	.type	gimp_display_shell_set_snap_to_guides,@function
gimp_display_shell_set_snap_to_guides:  # @gimp_display_shell_set_snap_to_guides
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_snap_to_guides, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_14
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	168(%rcx), %eax
	je	.LBB24_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.22, %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 168(%rdx)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB24_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_display_shell_set_snap_to_guides, .Lfunc_end24-gimp_display_shell_set_snap_to_guides
	.cfi_endproc

	.globl	gimp_display_shell_get_snap_to_guides
	.align	16, 0x90
	.type	gimp_display_shell_get_snap_to_guides,@function
gimp_display_shell_get_snap_to_guides:  # @gimp_display_shell_get_snap_to_guides
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_snap_to_guides, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB25_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_display_shell_get_snap_to_guides, .Lfunc_end25-gimp_display_shell_get_snap_to_guides
	.cfi_endproc

	.globl	gimp_display_shell_set_snap_to_canvas
	.align	16, 0x90
	.type	gimp_display_shell_set_snap_to_canvas,@function
gimp_display_shell_set_snap_to_canvas:  # @gimp_display_shell_set_snap_to_canvas
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_snap_to_canvas, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_14
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	176(%rcx), %eax
	je	.LBB26_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.23, %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 176(%rdx)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB26_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_display_shell_set_snap_to_canvas, .Lfunc_end26-gimp_display_shell_set_snap_to_canvas
	.cfi_endproc

	.globl	gimp_display_shell_get_snap_to_canvas
	.align	16, 0x90
	.type	gimp_display_shell_get_snap_to_canvas,@function
gimp_display_shell_get_snap_to_canvas:  # @gimp_display_shell_get_snap_to_canvas
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_snap_to_canvas, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB27_13
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB27_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_display_shell_get_snap_to_canvas, .Lfunc_end27-gimp_display_shell_get_snap_to_canvas
	.cfi_endproc

	.globl	gimp_display_shell_set_snap_to_vectors
	.align	16, 0x90
	.type	gimp_display_shell_set_snap_to_vectors,@function
gimp_display_shell_set_snap_to_vectors: # @gimp_display_shell_set_snap_to_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_set_snap_to_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_14
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	180(%rcx), %eax
	je	.LBB28_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.24, %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 180(%rdx)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	appearance_set_action_active
.LBB28_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_display_shell_set_snap_to_vectors, .Lfunc_end28-gimp_display_shell_set_snap_to_vectors
	.cfi_endproc

	.globl	gimp_display_shell_get_snap_to_vectors
	.align	16, 0x90
	.type	gimp_display_shell_get_snap_to_vectors,@function
gimp_display_shell_get_snap_to_vectors: # @gimp_display_shell_get_snap_to_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_snap_to_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	180(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB29_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_display_shell_get_snap_to_vectors, .Lfunc_end29-gimp_display_shell_get_snap_to_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	appearance_set_action_color,@function
appearance_set_action_color:            # @appearance_set_action_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB30_5
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	cmpq	-8(%rbp), %rax
	jne	.LBB30_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movabsq	$.L.str.29, %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB30_4
# BB#3:                                 # %if.then.5
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_action_group_set_action_color
.LBB30_4:                               # %if.end
	jmp	.LBB30_5
.LBB30_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_display
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB30_9
# BB#6:                                 # %if.then.11
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB30_8
# BB#7:                                 # %if.then.15
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_action_group_set_action_color
.LBB30_8:                               # %if.end.16
	jmp	.LBB30_9
.LBB30_9:                               # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	appearance_set_action_color, .Lfunc_end30-appearance_set_action_color
	.cfi_endproc

	.globl	gimp_display_shell_get_padding
	.align	16, 0x90
	.type	gimp_display_shell_get_padding,@function
gimp_display_shell_get_padding:         # @gimp_display_shell_get_padding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_get_padding, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_16
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	appearance_get_options
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB31_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB31_14:                              # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB31_16
# BB#15:                                # %if.then.17
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	72(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	80(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	88(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB31_16:                              # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_display_shell_get_padding, .Lfunc_end31-gimp_display_shell_get_padding
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_appearance_update,@object # @__func__.gimp_display_shell_appearance_update
.L__func__.gimp_display_shell_appearance_update:
	.asciz	"gimp_display_shell_appearance_update"
	.size	.L__func__.gimp_display_shell_appearance_update, 37

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"view-fullscreen"
	.size	.L.str.2, 16

	.type	.L__func__.gimp_display_shell_set_show_menubar,@object # @__func__.gimp_display_shell_set_show_menubar
.L__func__.gimp_display_shell_set_show_menubar:
	.asciz	"gimp_display_shell_set_show_menubar"
	.size	.L__func__.gimp_display_shell_set_show_menubar, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"show-menubar"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view-show-menubar"
	.size	.L.str.4, 18

	.type	.L__func__.gimp_display_shell_get_show_menubar,@object # @__func__.gimp_display_shell_get_show_menubar
.L__func__.gimp_display_shell_get_show_menubar:
	.asciz	"gimp_display_shell_get_show_menubar"
	.size	.L__func__.gimp_display_shell_get_show_menubar, 36

	.type	.L__func__.gimp_display_shell_set_show_statusbar,@object # @__func__.gimp_display_shell_set_show_statusbar
.L__func__.gimp_display_shell_set_show_statusbar:
	.asciz	"gimp_display_shell_set_show_statusbar"
	.size	.L__func__.gimp_display_shell_set_show_statusbar, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"show-statusbar"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"view-show-statusbar"
	.size	.L.str.6, 20

	.type	.L__func__.gimp_display_shell_get_show_statusbar,@object # @__func__.gimp_display_shell_get_show_statusbar
.L__func__.gimp_display_shell_get_show_statusbar:
	.asciz	"gimp_display_shell_get_show_statusbar"
	.size	.L__func__.gimp_display_shell_get_show_statusbar, 38

	.type	.L__func__.gimp_display_shell_set_show_rulers,@object # @__func__.gimp_display_shell_set_show_rulers
.L__func__.gimp_display_shell_set_show_rulers:
	.asciz	"gimp_display_shell_set_show_rulers"
	.size	.L__func__.gimp_display_shell_set_show_rulers, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"show-rulers"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"view-show-rulers"
	.size	.L.str.8, 17

	.type	.L__func__.gimp_display_shell_get_show_rulers,@object # @__func__.gimp_display_shell_get_show_rulers
.L__func__.gimp_display_shell_get_show_rulers:
	.asciz	"gimp_display_shell_get_show_rulers"
	.size	.L__func__.gimp_display_shell_get_show_rulers, 35

	.type	.L__func__.gimp_display_shell_set_show_scrollbars,@object # @__func__.gimp_display_shell_set_show_scrollbars
.L__func__.gimp_display_shell_set_show_scrollbars:
	.asciz	"gimp_display_shell_set_show_scrollbars"
	.size	.L__func__.gimp_display_shell_set_show_scrollbars, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"show-scrollbars"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"view-show-scrollbars"
	.size	.L.str.10, 21

	.type	.L__func__.gimp_display_shell_get_show_scrollbars,@object # @__func__.gimp_display_shell_get_show_scrollbars
.L__func__.gimp_display_shell_get_show_scrollbars:
	.asciz	"gimp_display_shell_get_show_scrollbars"
	.size	.L__func__.gimp_display_shell_get_show_scrollbars, 39

	.type	.L__func__.gimp_display_shell_set_show_selection,@object # @__func__.gimp_display_shell_set_show_selection
.L__func__.gimp_display_shell_set_show_selection:
	.asciz	"gimp_display_shell_set_show_selection"
	.size	.L__func__.gimp_display_shell_set_show_selection, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"show-selection"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"view-show-selection"
	.size	.L.str.12, 20

	.type	.L__func__.gimp_display_shell_get_show_selection,@object # @__func__.gimp_display_shell_get_show_selection
.L__func__.gimp_display_shell_get_show_selection:
	.asciz	"gimp_display_shell_get_show_selection"
	.size	.L__func__.gimp_display_shell_get_show_selection, 38

	.type	.L__func__.gimp_display_shell_set_show_layer,@object # @__func__.gimp_display_shell_set_show_layer
.L__func__.gimp_display_shell_set_show_layer:
	.asciz	"gimp_display_shell_set_show_layer"
	.size	.L__func__.gimp_display_shell_set_show_layer, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"show-layer-boundary"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"view-show-layer-boundary"
	.size	.L.str.14, 25

	.type	.L__func__.gimp_display_shell_get_show_layer,@object # @__func__.gimp_display_shell_get_show_layer
.L__func__.gimp_display_shell_get_show_layer:
	.asciz	"gimp_display_shell_get_show_layer"
	.size	.L__func__.gimp_display_shell_get_show_layer, 34

	.type	.L__func__.gimp_display_shell_set_show_guides,@object # @__func__.gimp_display_shell_set_show_guides
.L__func__.gimp_display_shell_set_show_guides:
	.asciz	"gimp_display_shell_set_show_guides"
	.size	.L__func__.gimp_display_shell_set_show_guides, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"show-guides"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"view-show-guides"
	.size	.L.str.16, 17

	.type	.L__func__.gimp_display_shell_get_show_guides,@object # @__func__.gimp_display_shell_get_show_guides
.L__func__.gimp_display_shell_get_show_guides:
	.asciz	"gimp_display_shell_get_show_guides"
	.size	.L__func__.gimp_display_shell_get_show_guides, 35

	.type	.L__func__.gimp_display_shell_set_show_grid,@object # @__func__.gimp_display_shell_set_show_grid
.L__func__.gimp_display_shell_set_show_grid:
	.asciz	"gimp_display_shell_set_show_grid"
	.size	.L__func__.gimp_display_shell_set_show_grid, 33

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"show-grid"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"view-show-grid"
	.size	.L.str.18, 15

	.type	.L__func__.gimp_display_shell_get_show_grid,@object # @__func__.gimp_display_shell_get_show_grid
.L__func__.gimp_display_shell_get_show_grid:
	.asciz	"gimp_display_shell_get_show_grid"
	.size	.L__func__.gimp_display_shell_get_show_grid, 33

	.type	.L__func__.gimp_display_shell_set_show_sample_points,@object # @__func__.gimp_display_shell_set_show_sample_points
.L__func__.gimp_display_shell_set_show_sample_points:
	.asciz	"gimp_display_shell_set_show_sample_points"
	.size	.L__func__.gimp_display_shell_set_show_sample_points, 42

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"show-sample-points"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"view-show-sample-points"
	.size	.L.str.20, 24

	.type	.L__func__.gimp_display_shell_get_show_sample_points,@object # @__func__.gimp_display_shell_get_show_sample_points
.L__func__.gimp_display_shell_get_show_sample_points:
	.asciz	"gimp_display_shell_get_show_sample_points"
	.size	.L__func__.gimp_display_shell_get_show_sample_points, 42

	.type	.L__func__.gimp_display_shell_set_snap_to_grid,@object # @__func__.gimp_display_shell_set_snap_to_grid
.L__func__.gimp_display_shell_set_snap_to_grid:
	.asciz	"gimp_display_shell_set_snap_to_grid"
	.size	.L__func__.gimp_display_shell_set_snap_to_grid, 36

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"view-snap-to-grid"
	.size	.L.str.21, 18

	.type	.L__func__.gimp_display_shell_get_snap_to_grid,@object # @__func__.gimp_display_shell_get_snap_to_grid
.L__func__.gimp_display_shell_get_snap_to_grid:
	.asciz	"gimp_display_shell_get_snap_to_grid"
	.size	.L__func__.gimp_display_shell_get_snap_to_grid, 36

	.type	.L__func__.gimp_display_shell_set_snap_to_guides,@object # @__func__.gimp_display_shell_set_snap_to_guides
.L__func__.gimp_display_shell_set_snap_to_guides:
	.asciz	"gimp_display_shell_set_snap_to_guides"
	.size	.L__func__.gimp_display_shell_set_snap_to_guides, 38

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"view-snap-to-guides"
	.size	.L.str.22, 20

	.type	.L__func__.gimp_display_shell_get_snap_to_guides,@object # @__func__.gimp_display_shell_get_snap_to_guides
.L__func__.gimp_display_shell_get_snap_to_guides:
	.asciz	"gimp_display_shell_get_snap_to_guides"
	.size	.L__func__.gimp_display_shell_get_snap_to_guides, 38

	.type	.L__func__.gimp_display_shell_set_snap_to_canvas,@object # @__func__.gimp_display_shell_set_snap_to_canvas
.L__func__.gimp_display_shell_set_snap_to_canvas:
	.asciz	"gimp_display_shell_set_snap_to_canvas"
	.size	.L__func__.gimp_display_shell_set_snap_to_canvas, 38

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"view-snap-to-canvas"
	.size	.L.str.23, 20

	.type	.L__func__.gimp_display_shell_get_snap_to_canvas,@object # @__func__.gimp_display_shell_get_snap_to_canvas
.L__func__.gimp_display_shell_get_snap_to_canvas:
	.asciz	"gimp_display_shell_get_snap_to_canvas"
	.size	.L__func__.gimp_display_shell_get_snap_to_canvas, 38

	.type	.L__func__.gimp_display_shell_set_snap_to_vectors,@object # @__func__.gimp_display_shell_set_snap_to_vectors
.L__func__.gimp_display_shell_set_snap_to_vectors:
	.asciz	"gimp_display_shell_set_snap_to_vectors"
	.size	.L__func__.gimp_display_shell_set_snap_to_vectors, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"view-snap-to-vectors"
	.size	.L.str.24, 21

	.type	.L__func__.gimp_display_shell_get_snap_to_vectors,@object # @__func__.gimp_display_shell_get_snap_to_vectors
.L__func__.gimp_display_shell_get_snap_to_vectors:
	.asciz	"gimp_display_shell_get_snap_to_vectors"
	.size	.L__func__.gimp_display_shell_get_snap_to_vectors, 39

	.type	.L__func__.gimp_display_shell_set_padding,@object # @__func__.gimp_display_shell_set_padding
.L__func__.gimp_display_shell_set_padding:
	.asciz	"gimp_display_shell_set_padding"
	.size	.L__func__.gimp_display_shell_set_padding, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"padding_color != NULL"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"padding-mode"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"padding-color"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"view-padding-color-menu"
	.size	.L.str.28, 24

	.type	.L__func__.gimp_display_shell_get_padding,@object # @__func__.gimp_display_shell_get_padding
.L__func__.gimp_display_shell_get_padding:
	.asciz	"gimp_display_shell_get_padding"
	.size	.L__func__.gimp_display_shell_get_padding, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"view"
	.size	.L.str.29, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
