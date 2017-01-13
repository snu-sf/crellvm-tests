	.text
	.file	"gimppainttool.bc"
	.globl	gimp_paint_tool_get_type
	.align	16, 0x90
	.type	gimp_paint_tool_get_type,@function
gimp_paint_tool_get_type:               # @gimp_paint_tool_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_paint_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_paint_tool_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_color_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %edx              # imm = 0x130
	movabsq	$gimp_paint_tool_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_paint_tool_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_paint_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_paint_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_tool_get_type, .Lfunc_end0-gimp_paint_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_class_intern_init,@function
gimp_paint_tool_class_intern_init:      # @gimp_paint_tool_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_paint_tool_parent_class
	cmpl	$0, GimpPaintTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaintTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_paint_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paint_tool_class_intern_init, .Lfunc_end1-gimp_paint_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_init,@function
gimp_paint_tool_init:                   # @gimp_paint_tool_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_motion_mode
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_1
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rax
	movl	$0, 296(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 300(%rax)
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 304(%rsi)
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 312(%rsi)
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	%rax, 320(%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paint_tool_init, .Lfunc_end2-gimp_paint_tool_init
	.cfi_endproc

	.globl	gimp_paint_tool_enable_color_picker
	.align	16, 0x90
	.type	gimp_paint_tool_enable_color_picker,@function
gimp_paint_tool_enable_color_picker:    # @gimp_paint_tool_enable_color_picker
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
	movq	%rax, -24(%rbp)
	callq	gimp_paint_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_tool_enable_color_picker, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	$1, 296(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 260(%rax)
.LBB3_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paint_tool_enable_color_picker, .Lfunc_end3-gimp_paint_tool_enable_color_picker
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_class_init,@function
gimp_paint_tool_class_init:             # @gimp_paint_tool_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_paint_tool_draw, %rsi
	movabsq	$gimp_paint_tool_oper_update, %rdi
	movabsq	$gimp_paint_tool_cursor_update, %rcx
	movabsq	$gimp_paint_tool_modifier_key, %rdx
	movabsq	$gimp_paint_tool_motion, %r8
	movabsq	$gimp_paint_tool_button_release, %r9
	movabsq	$gimp_paint_tool_button_press, %r10
	movabsq	$gimp_paint_tool_control, %r11
	movabsq	$gimp_paint_tool_finalize, %rbx
	movabsq	$gimp_paint_tool_constructed, %r14
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 184(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 192(%rax)
	movq	-40(%rbp), %rax
	movq	%r9, 200(%rax)
	movq	-40(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_paint_tool_class_init, .Lfunc_end4-gimp_paint_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_constructed,@function
gimp_paint_tool_constructed:            # @gimp_paint_tool_constructed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.14
	movl	$0, -60(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.17
	movl	$1, -60(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.18
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_9:                                # %if.end.20
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.21
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.23
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$156, %edx
	movabsq	$.L__func__.gimp_paint_tool_constructed, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.25
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	jmp	.LBB5_15
.LBB5_15:                               # %do.body.26
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_paint_info_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.37
	movl	$0, -84(%rbp)
	jmp	.LBB5_22
.LBB5_17:                               # %if.else.38
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true.41
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.45
	movl	$1, -84(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.46
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_21:                               # %if.end.48
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.49
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.52
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.53
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$157, %edx
	movabsq	$.L__func__.gimp_paint_tool_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_25:                               # %if.end.54
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.55
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#27:                                # %do.body.58
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB5_29
# BB#28:                                # %if.then.62
	jmp	.LBB5_30
.LBB5_29:                               # %if.else.63
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$161, %edx
	movabsq	$.L__func__.gimp_paint_tool_constructed, %rcx
	movabsq	$.L.str.6, %r8
	callq	g_assertion_message_expr
.LBB5_30:                               # %if.end.64
	jmp	.LBB5_31
.LBB5_31:                               # %do.end.65
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdx
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_paint_tool_hard_notify, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	%rax, 328(%rdx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_hard_notify
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_paint_tool_constructed, .Lfunc_end5-gimp_paint_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_finalize,@function
gimp_paint_tool_finalize:               # @gimp_paint_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 328(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_paint_tool_finalize, .Lfunc_end6-gimp_paint_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_control,@function
gimp_paint_tool_control:                # @gimp_paint_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB7_1
	jmp	.LBB7_4
.LBB7_4:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	jmp	.LBB7_3
.LBB7_2:                                # %sw.bb.2
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_paint_core_cleanup
.LBB7_3:                                # %sw.epilog
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_paint_tool_control, .Lfunc_end7-gimp_paint_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_button_press,@function
gimp_paint_tool_button_press:           # @gimp_paint_tool_button_press
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -96(%rbp)
	movq	$0, -176(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	jmp	.LBB8_26
.LBB8_2:                                # %if.end
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB8_4
# BB#3:                                 # %if.then.22
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_message_literal
	jmp	.LBB8_26
.LBB8_4:                                # %if.end.24
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.29
	movabsq	$.L.str.10, %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_message_literal
	jmp	.LBB8_26
.LBB8_6:                                # %if.end.31
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-96(%rbp), %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	cvtsi2sdl	-164(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	cvtsi2sdl	-168(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.38
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB8_8:                                # %if.end.39
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB8_12
# BB#9:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB8_12
# BB#10:                                # %land.lhs.true.44
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	-88(%rbp), %rax
	jne	.LBB8_12
# BB#11:                                # %if.then.49
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB8_12:                               # %if.end.51
	leaq	-160(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_paint_core_start
	cmpl	$0, %eax
	jne	.LBB8_14
# BB#13:                                # %if.then.54
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-176(%rbp), %rax
	movq	8(%rax), %rdx
	callq	gimp_tool_message_literal
	leaq	-176(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB8_26
.LBB8_14:                               # %if.end.55
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB8_16
# BB#15:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpl	$0, 300(%rax)
	jne	.LBB8_19
.LBB8_16:                               # %if.then.60
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB8_18
# BB#17:                                # %if.then.64
	movl	$64, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	addq	$48, %rcx
	movq	-72(%rbp), %rsi
	addq	$112, %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB8_18:                               # %if.end.65
	xorps	%xmm0, %xmm0
	movl	$64, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	addq	$176, %rcx
	movq	-72(%rbp), %rsi
	addq	$112, %rsi
	movq	%rcx, %rdi
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-72(%rbp), %rcx
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 256(%rcx)
	movq	-72(%rbp), %rcx
	movsd	%xmm0, 264(%rcx)
	jmp	.LBB8_22
.LBB8_19:                               # %if.else
	movq	-56(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB8_21
# BB#20:                                # %if.then.69
	movl	-24(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-300(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -180(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-180(%rbp), %edx
	callq	gimp_paint_core_round_line
.LBB8_21:                               # %if.end.73
	jmp	.LBB8_22
.LBB8_22:                               # %if.end.74
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	movq	-80(%rbp), %rdi
	callq	gimp_display_shell_selection_pause
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-20(%rbp), %r8d
	callq	gimp_paint_core_paint
	movq	-56(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB8_24
# BB#23:                                # %if.then.80
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	$112, %rax
	movl	-20(%rbp), %r8d
	movq	%rax, %rcx
	callq	gimp_paint_core_interpolate
	jmp	.LBB8_25
.LBB8_24:                               # %if.else.82
	movl	$1, %ecx
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-20(%rbp), %r8d
	callq	gimp_paint_core_paint
.LBB8_25:                               # %if.end.83
	movq	-88(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, %rdi
	callq	gimp_projection_flush_now
	movq	-40(%rbp), %rdi
	callq	gimp_display_flush_now
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_start
.LBB8_26:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_paint_tool_button_press, .Lfunc_end8-gimp_paint_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_button_release,@function
gimp_paint_tool_button_release:         # @gimp_paint_tool_button_release
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	jmp	.LBB9_6
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$2, %ecx
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-20(%rbp), %r8d
	callq	gimp_paint_core_paint
	movq	-72(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	cmpl	$1, -28(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.21
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_paint_core_cancel
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_paint_core_finish
.LBB9_5:                                # %if.end.22
	movq	-80(%rbp), %rdi
	callq	gimp_image_flush
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB9_6:                                # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_paint_tool_button_release, .Lfunc_end9-gimp_paint_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_motion,@function
gimp_paint_tool_motion:                 # @gimp_paint_tool_motion
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -72(%rbp)
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	leaq	-136(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	gimp_paint_core_smooth_coords
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	cvtsi2sdl	-140(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
	cvtsi2sdl	-144(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.20
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gimp_paint_core_set_current_coords
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.21
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	leaq	-136(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %r8d
	callq	gimp_paint_core_interpolate
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, %rdi
	callq	gimp_projection_flush_now
	movq	-32(%rbp), %rdi
	callq	gimp_display_flush_now
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB10_5:                               # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_paint_tool_motion, .Lfunc_end10-gimp_paint_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_modifier_key,@function
gimp_paint_tool_modifier_key:           # @gimp_paint_tool_modifier_key
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_25
.LBB11_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 296(%rax)
	je	.LBB11_25
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 300(%rax)
	jne	.LBB11_25
# BB#4:                                 # %if.then.6
	cmpl	$0, -16(%rbp)
	je	.LBB11_21
# BB#5:                                 # %if.then.8
	movabsq	$.L.str.11, %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_7
# BB#6:                                 # %if.then.12
	movl	$0, -76(%rbp)
	jmp	.LBB11_12
.LBB11_7:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_10
# BB#8:                                 # %land.lhs.true.14
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_10
# BB#9:                                 # %if.then.17
	movl	$1, -76(%rbp)
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.18
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_11:                              # %if.end.20
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.21
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_20
# BB#13:                                # %if.then.23
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB11_15
# BB#14:                                # %if.then.26
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB11_15:                              # %if.end.27
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	120(%rsi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_color_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_tool_enable
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	260(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%edx, -144(%rbp)        # 4-byte Spill
	je	.LBB11_16
	jmp	.LBB11_26
.LBB11_26:                              # %if.end.27
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB11_17
	jmp	.LBB11_18
.LBB11_16:                              # %sw.bb
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_push_status
	jmp	.LBB11_19
.LBB11_17:                              # %sw.bb.35
	movabsq	$.L.str.13, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_push_status
	jmp	.LBB11_19
.LBB11_18:                              # %sw.default
	jmp	.LBB11_19
.LBB11_19:                              # %sw.epilog
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_21:                              # %if.else.38
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	je	.LBB11_23
# BB#22:                                # %if.then.43
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-8(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_disable
.LBB11_23:                              # %if.end.46
	jmp	.LBB11_24
.LBB11_24:                              # %if.end.47
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.48
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_paint_tool_modifier_key, .Lfunc_end11-gimp_paint_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_cursor_update,@function
gimp_paint_tool_cursor_update:          # @gimp_paint_tool_cursor_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	124(%rcx), %edx
	movl	%edx, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	136(%rcx), %edx
	movl	%edx, -40(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	jne	.LBB12_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB12_4
.LBB12_3:                               # %if.then.14
	movl	$1, -36(%rbp)
	movl	$1, -40(%rbp)
.LBB12_4:                               # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-40(%rbp), %esi
	callq	gimp_tool_control_set_toggle_cursor_modifier
.LBB12_5:                               # %if.end.17
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_tool_control_set_toggle_cursor_modifier
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_paint_tool_cursor_update, .Lfunc_end12-gimp_paint_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_oper_update,@function
gimp_paint_tool_oper_update:            # @gimp_paint_tool_oper_update
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	jmp	.LBB13_29
.LBB13_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB13_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_5
# BB#4:                                 # %if.then.21
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB13_5:                               # %if.end.22
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-8(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB13_9
# BB#6:                                 # %land.lhs.true.25
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true.28
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	-80(%rbp), %rax
	jne	.LBB13_9
# BB#8:                                 # %if.then.32
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB13_9:                               # %if.end.34
	cmpq	$0, -88(%rbp)
	je	.LBB13_25
# BB#10:                                # %land.lhs.true.36
	cmpl	$0, -24(%rbp)
	je	.LBB13_25
# BB#11:                                # %if.then.38
	callq	gimp_get_constrain_behavior_mask
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	56(%rdx), %rcx
	jne	.LBB13_17
# BB#12:                                # %land.lhs.true.42
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB13_17
# BB#13:                                # %if.then.44
	movl	$64, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	addq	$112, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-88(%rbp), %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	cvtsi2sdl	-132(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movsd	112(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rax)
	cvtsi2sdl	-136(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movsd	120(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rax)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %r8d
	andl	-92(%rbp), %r8d
	cmpl	$0, %r8d
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	callq	gimp_paint_core_round_line
	movabsq	$.L.str.14, %rdi
	movq	-64(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	subsd	176(%rax), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-64(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	subsd	184(%rax), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movl	-92(%rbp), %edx
	movl	-20(%rbp), %r8d
	xorl	$-1, %r8d
	andl	%r8d, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %esi        # 4-byte Reload
	movq	%rcx, %rdx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-320(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB13_15
# BB#14:                                # %if.then.68
	movabsq	$.L.str.16, %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rdx
	movq	-104(%rbp), %r8
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rcx
	movb	$1, %al
	callq	gimp_tool_push_status
	jmp	.LBB13_16
.LBB13_15:                              # %if.else
	leaq	-144(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-224(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movl	184(%rdx), %eax
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_digits
	movq	-72(%rbp), %rdx
	movl	184(%rdx), %edi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_symbol
	movl	$64, %edi
	movl	%edi, %esi
	movabsq	$.L.str.17, %rdx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	-364(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_snprintf
	movq	-72(%rbp), %rdx
	movl	184(%rdx), %edi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_factor
	leaq	-224(%rbp), %rdx
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-144(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-144(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-152(%rbp), %xmm2
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	-152(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-104(%rbp), %rcx
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movb	$1, %al
	callq	gimp_tool_push_status
.LBB13_16:                              # %if.end.88
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movl	$1, 300(%rdi)
	jmp	.LBB13_22
.LBB13_17:                              # %if.else.89
	movl	$0, -236(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB13_19
# BB#18:                                # %if.then.92
	movl	-92(%rbp), %eax
	orl	-236(%rbp), %eax
	movl	%eax, -236(%rbp)
.LBB13_19:                              # %if.end.93
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB13_21
# BB#20:                                # %if.then.97
	movl	-236(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -236(%rbp)
.LBB13_21:                              # %if.end.99
	movabsq	$.L.str.18, %rdi
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movl	-236(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-40(%rbp), %rdi
	movq	320(%rdi), %rcx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	-388(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_suggest_modifiers
	movabsq	$.L.str.19, %rdx
	movq	%rax, -232(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-232(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
	movq	-232(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rcx
	movl	$0, 300(%rcx)
.LBB13_22:                              # %if.end.107
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB13_24
# BB#23:                                # %if.then.110
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_draw_tool_start
.LBB13_24:                              # %if.end.111
	jmp	.LBB13_28
.LBB13_25:                              # %if.else.112
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB13_27
# BB#26:                                # %if.then.115
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB13_27:                              # %if.end.116
	jmp	.LBB13_28
.LBB13_28:                              # %if.end.117
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB13_29:                              # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_paint_tool_oper_update, .Lfunc_end13-gimp_paint_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_draw,@function
gimp_paint_tool_draw:                   # @gimp_paint_tool_draw
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	jne	.LBB14_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB14_4
# BB#3:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	184(%rax), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-24(%rbp), %rax
	movsd	112(%rax), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movq	-24(%rbp), %rax
	movsd	120(%rax), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	callq	gimp_draw_tool_add_line
	movl	$4, %esi
	movl	$15, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movsd	176(%rdx), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	184(%rdx), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movl	%ecx, %edx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movl	$4, %esi
	movl	$15, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movsd	112(%r9), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %r9
	movsd	120(%r9), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movl	%ecx, %edx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.45
	movq	gimp_paint_tool_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_paint_tool_draw, .Lfunc_end14-gimp_paint_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_tool_hard_notify,@function
gimp_paint_tool_hard_notify:            # @gimp_paint_tool_hard_notify
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
	subq	$32, %rsp
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdi
	movq	-8(%rbp), %rdx
	cmpl	$0, 392(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	gimp_tool_control_set_precision
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_paint_tool_hard_notify, .Lfunc_end15-gimp_paint_tool_hard_notify
	.cfi_endproc

	.type	gimp_paint_tool_get_type.g_define_type_id__volatile,@object # @gimp_paint_tool_get_type.g_define_type_id__volatile
	.local	gimp_paint_tool_get_type.g_define_type_id__volatile
	.comm	gimp_paint_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaintTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_paint_tool_enable_color_picker,@object # @__func__.gimp_paint_tool_enable_color_picker
.L__func__.gimp_paint_tool_enable_color_picker:
	.asciz	"gimp_paint_tool_enable_color_picker"
	.size	.L__func__.gimp_paint_tool_enable_color_picker, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PAINT_TOOL (tool)"
	.size	.L.str.2, 26

	.type	gimp_paint_tool_parent_class,@object # @gimp_paint_tool_parent_class
	.local	gimp_paint_tool_parent_class
	.comm	gimp_paint_tool_parent_class,8,8
	.type	GimpPaintTool_private_offset,@object # @GimpPaintTool_private_offset
	.local	GimpPaintTool_private_offset
	.comm	GimpPaintTool_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimppainttool.c"
	.size	.L.str.3, 16

	.type	.L__func__.gimp_paint_tool_constructed,@object # @__func__.gimp_paint_tool_constructed
.L__func__.gimp_paint_tool_constructed:
	.asciz	"gimp_paint_tool_constructed"
	.size	.L__func__.gimp_paint_tool_constructed, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TOOL_INFO (tool->tool_info)"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PAINT_INFO (tool->tool_info->paint_info)"
	.size	.L.str.5, 49

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"g_type_is_a (paint_info->paint_type, GIMP_TYPE_PAINT_CORE)"
	.size	.L.str.6, 59

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"undo-desc"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::hard"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cannot paint on layer groups."
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-color-picker-tool"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click in any image to pick the foreground color"
	.size	.L.str.12, 48

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Click in any image to pick the background color"
	.size	.L.str.13, 48

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s for constrained angles"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%.1f %s.  %s"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pixels"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%.%df %s.  %%s"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s for a straight line"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"context/context-opacity-set"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Click to paint"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Click to draw the line"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s to pick a color"
	.size	.L.str.23, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
