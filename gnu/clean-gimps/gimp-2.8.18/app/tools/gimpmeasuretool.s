	.text
	.file	"gimpmeasuretool.bc"
	.globl	gimp_measure_tool_get_type
	.align	16, 0x90
	.type	gimp_measure_tool_get_type,@function
gimp_measure_tool_get_type:             # @gimp_measure_tool_get_type
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
	movq	gimp_measure_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_measure_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_draw_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_measure_tool_class_intern_init, %rdi
	movl	$464, %r8d              # imm = 0x1D0
	movabsq	$gimp_measure_tool_init, %rcx
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
	movabsq	$gimp_measure_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_measure_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_measure_tool_get_type, .Lfunc_end0-gimp_measure_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_class_intern_init,@function
gimp_measure_tool_class_intern_init:    # @gimp_measure_tool_class_intern_init
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
	movq	%rax, gimp_measure_tool_parent_class
	cmpl	$0, GimpMeasureTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMeasureTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_measure_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_measure_tool_class_intern_init, .Lfunc_end1-gimp_measure_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_init,@function
gimp_measure_tool_init:                 # @gimp_measure_tool_init
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
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_handle_empty_image
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$35, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-8(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 280(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 328(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_measure_tool_init, .Lfunc_end2-gimp_measure_tool_init
	.cfi_endproc

	.globl	gimp_measure_tool_register
	.align	16, 0x90
	.type	gimp_measure_tool_register,@function
gimp_measure_tool_register:             # @gimp_measure_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_measure_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_measure_options_gui, %rdx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_measure_tool_register, .Lfunc_end3-gimp_measure_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_class_init,@function
gimp_measure_tool_class_init:           # @gimp_measure_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp19:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_measure_tool_draw, %rsi
	movabsq	$gimp_measure_tool_cursor_update, %rdi
	movabsq	$gimp_measure_tool_oper_update, %rcx
	movabsq	$gimp_measure_tool_active_modifier_key, %rdx
	movabsq	$gimp_measure_tool_key_press, %r8
	movabsq	$gimp_measure_tool_motion, %r9
	movabsq	$gimp_measure_tool_button_release, %r10
	movabsq	$gimp_measure_tool_button_press, %r11
	movabsq	$gimp_measure_tool_control, %rbx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 184(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_measure_tool_class_init, .Lfunc_end4-gimp_measure_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_control,@function
gimp_measure_tool_control:              # @gimp_measure_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB5_1
	jmp	.LBB5_6
.LBB5_6:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_5
.LBB5_1:                                # %sw.bb
	jmp	.LBB5_5
.LBB5_2:                                # %sw.bb.2
	movq	-32(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_destroy
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	movq	gimp_measure_tool_parent_class, %rax
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
.Lfunc_end5:
	.size	gimp_measure_tool_control, .Lfunc_end5-gimp_measure_tool_control
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_button_press,@function
gimp_measure_tool_button_press:         # @gimp_measure_tool_button_press
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
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
	callq	gimp_measure_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rax
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_tool_pop_status
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end.13
	movq	-48(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 256(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB6_52
# BB#5:                                 # %if.then.16
	movq	-48(%rbp), %rax
	cmpl	$-1, 280(%rax)
	je	.LBB6_42
# BB#6:                                 # %if.then.18
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -76(%rbp)
	movl	-24(%rbp), %eax
	movl	-76(%rbp), %ecx
	orl	$8, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB6_37
# BB#7:                                 # %if.then.21
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	andl	-76(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB6_15
# BB#8:                                 # %land.rhs
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	300(%rcx,%rax,4), %edx
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	300(%rcx,%rax,4), %esi
	movq	-72(%rbp), %rdi
	movl	%edx, -120(%rbp)        # 4-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-124(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB6_10
# BB#9:                                 # %cond.true
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB6_14
.LBB6_10:                               # %cond.false
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, 300(%rcx,%rax,4)
	jge	.LBB6_12
# BB#11:                                # %cond.true.38
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false.39
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	300(%rcx,%rax,4), %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB6_13:                               # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB6_14:                               # %cond.end.44
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	sete	%dl
	movb	%dl, -113(%rbp)         # 1-byte Spill
.LBB6_15:                               # %land.end
	movb	-113(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -80(%rbp)
	movl	-24(%rbp), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	movb	%dl, -133(%rbp)         # 1-byte Spill
	je	.LBB6_23
# BB#16:                                # %land.rhs.49
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	288(%rcx,%rax,4), %edx
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	288(%rcx,%rax,4), %esi
	movq	-72(%rbp), %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%esi, -144(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-144(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB6_18
# BB#17:                                # %cond.true.60
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB6_22
.LBB6_18:                               # %cond.false.62
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, 288(%rcx,%rax,4)
	jge	.LBB6_20
# BB#19:                                # %cond.true.68
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB6_21
.LBB6_20:                               # %cond.false.69
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	288(%rcx,%rax,4), %edx
	movl	%edx, -152(%rbp)        # 4-byte Spill
.LBB6_21:                               # %cond.end.74
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB6_22:                               # %cond.end.76
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	sete	%dl
	movb	%dl, -133(%rbp)         # 1-byte Spill
.LBB6_23:                               # %land.end.79
	movb	-133(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, -80(%rbp)
	jne	.LBB6_25
# BB#24:                                # %lor.lhs.false
	cmpl	$0, -84(%rbp)
	je	.LBB6_36
.LBB6_25:                               # %if.then.83
	cmpl	$0, -80(%rbp)
	je	.LBB6_28
# BB#26:                                # %land.lhs.true
	cmpl	$0, -84(%rbp)
	je	.LBB6_28
# BB#27:                                # %if.then.86
	movabsq	$.L.str.7, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$12, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB6_28:                               # %if.end.89
	cmpl	$0, -80(%rbp)
	je	.LBB6_30
# BB#29:                                # %if.then.91
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	300(%rcx,%rax,4), %esi
	callq	gimp_image_add_hguide
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB6_30:                               # %if.end.97
	cmpl	$0, -84(%rbp)
	je	.LBB6_32
# BB#31:                                # %if.then.99
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	288(%rcx,%rax,4), %esi
	callq	gimp_image_add_vguide
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB6_32:                               # %if.end.105
	cmpl	$0, -80(%rbp)
	je	.LBB6_35
# BB#33:                                # %land.lhs.true.107
	cmpl	$0, -84(%rbp)
	je	.LBB6_35
# BB#34:                                # %if.then.109
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB6_35:                               # %if.end.111
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_36:                               # %if.end.112
	movq	-48(%rbp), %rax
	movl	$4, 248(%rax)
	jmp	.LBB6_41
.LBB6_37:                               # %if.else
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB6_39
# BB#38:                                # %if.then.116
	movq	-48(%rbp), %rax
	movl	$1, 248(%rax)
	jmp	.LBB6_40
.LBB6_39:                               # %if.else.118
	movq	-48(%rbp), %rax
	movl	$2, 248(%rax)
.LBB6_40:                               # %if.end.120
	jmp	.LBB6_41
.LBB6_41:                               # %if.end.121
	jmp	.LBB6_42
.LBB6_42:                               # %if.end.122
	movq	-48(%rbp), %rax
	cmpl	$0, 280(%rax)
	jne	.LBB6_46
# BB#43:                                # %land.lhs.true.125
	movq	-48(%rbp), %rax
	cmpl	$1, 248(%rax)
	jne	.LBB6_46
# BB#44:                                # %land.lhs.true.128
	movq	-48(%rbp), %rax
	cmpl	$3, 284(%rax)
	jne	.LBB6_46
# BB#45:                                # %if.then.130
	movq	-48(%rbp), %rax
	movl	$2, 248(%rax)
.LBB6_46:                               # %if.end.132
	movq	-48(%rbp), %rax
	cmpl	$0, 248(%rax)
	jne	.LBB6_51
# BB#47:                                # %if.then.135
	movq	-48(%rbp), %rax
	cmpl	$1, 284(%rax)
	jle	.LBB6_50
# BB#48:                                # %land.lhs.true.138
	movl	-24(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB6_50
# BB#49:                                # %if.then.141
	movq	-48(%rbp), %rax
	movl	$3, 248(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 276(%rax)
.LBB6_50:                               # %if.end.146
	jmp	.LBB6_51
.LBB6_51:                               # %if.end.147
	jmp	.LBB6_52
.LBB6_52:                               # %if.end.148
	movq	-48(%rbp), %rax
	cmpl	$0, 248(%rax)
	jne	.LBB6_56
# BB#53:                                # %if.then.152
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB6_55
# BB#54:                                # %if.then.157
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB6_55:                               # %if.end.160
	movabsq	$.L.str.8, %rdi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	$0, 296(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 292(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 288(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 308(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 304(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 300(%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm0, %xmm1
	addsd	(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 300(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 284(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 248(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-8(%rbp), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB6_56:                               # %if.end.189
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rax
	cmpq	$0, 360(%rax)
	jne	.LBB6_61
# BB#57:                                # %if.then.191
	movq	-56(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB6_59
# BB#58:                                # %lor.lhs.false.193
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_get_show_statusbar
	cmpl	$0, %eax
	jne	.LBB6_60
.LBB6_59:                               # %if.then.196
	movq	-48(%rbp), %rdi
	callq	gimp_measure_tool_dialog_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, 360(%rdi)
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	addq	$360, %rsi              # imm = 0x168
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB6_60:                               # %if.end.202
	jmp	.LBB6_61
.LBB6_61:                               # %if.end.203
	movq	-48(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB6_63
# BB#62:                                # %if.then.206
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tool_dialog_set_shell
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_measure_tool_dialog_update
.LBB6_63:                               # %if.end.217
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_measure_tool_button_press, .Lfunc_end6-gimp_measure_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_button_release,@function
gimp_measure_tool_button_release:       # @gimp_measure_tool_button_release
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$5, 248(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_measure_tool_button_release, .Lfunc_end7-gimp_measure_tool_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_motion,@function
gimp_measure_tool_motion:               # @gimp_measure_tool_motion
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 256(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-40(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_25
.LBB8_25:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB8_10
	jmp	.LBB8_26
.LBB8_26:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB8_16
	jmp	.LBB8_21
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movl	280(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_27
.LBB8_27:                               # %sw.bb
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_28
.LBB8_28:                               # %sw.bb
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_5
.LBB8_2:                                # %sw.bb.4
	jmp	.LBB8_6
.LBB8_3:                                # %sw.bb.5
	movq	-40(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 288(%rax)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 292(%rax)
	movq	-40(%rbp), %rax
	movl	300(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 300(%rax)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 304(%rax)
	jmp	.LBB8_6
.LBB8_4:                                # %sw.bb.21
	movq	-40(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 292(%rax)
	movq	-40(%rbp), %rax
	movl	300(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 304(%rax)
	movq	-40(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-40(%rbp), %rax
	movl	308(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 300(%rax)
	jmp	.LBB8_6
.LBB8_5:                                # %sw.default
	jmp	.LBB8_6
.LBB8_6:                                # %sw.epilog
	movq	-40(%rbp), %rax
	movl	284(%rax), %ecx
	addl	$1, %ecx
	cmpl	$3, %ecx
	jge	.LBB8_8
# BB#7:                                 # %cond.true
	movq	-40(%rbp), %rax
	movl	284(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB8_9
.LBB8_8:                                # %cond.false
	movl	$3, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB8_9
.LBB8_9:                                # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 284(%rcx)
	movq	-40(%rbp), %rcx
	movl	284(%rcx), %eax
	subl	$1, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-40(%rbp), %rcx
	movl	$2, 248(%rcx)
.LBB8_10:                               # %sw.bb.44
	movq	-40(%rbp), %rax
	cmpl	$2, 284(%rax)
	jne	.LBB8_13
# BB#11:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 280(%rax)
	jne	.LBB8_13
# BB#12:                                # %if.then
	movq	-40(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 288(%rax)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 292(%rax)
	movq	-40(%rbp), %rax
	movl	300(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 300(%rax)
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 304(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 280(%rax)
.LBB8_13:                               # %if.end
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm0, %xmm1
	addsd	(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	%ecx, 288(%rdx,%rax,4)
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	%ecx, 300(%rdx,%rax,4)
	movl	-24(%rbp), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-124(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB8_15
# BB#14:                                # %if.then.79
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movl	$12, %edx
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	cvtsi2sdl	288(%rcx,%rax,4), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	cvtsi2sdl	300(%rcx,%rax,4), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	callq	gimp_constrain_line
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-64(%rbp), %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	%edx, 288(%rcx,%rax,4)
	addsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	%edx, 300(%rcx,%rax,4)
.LBB8_15:                               # %if.end.112
	jmp	.LBB8_22
.LBB8_16:                               # %sw.bb.113
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm0, %xmm1
	addsd	(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-40(%rbp), %rax
	subl	272(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	subl	276(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB8_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jge	.LBB8_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-44(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addl	288(%rdx,%rcx,4), %eax
	movl	%eax, 288(%rdx,%rcx,4)
	movl	-48(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addl	300(%rdx,%rcx,4), %eax
	movl	%eax, 300(%rdx,%rcx,4)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_17
.LBB8_20:                               # %for.end
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm0, %xmm1
	addsd	(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 272(%rax)
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 276(%rax)
	jmp	.LBB8_22
.LBB8_21:                               # %sw.default.141
	jmp	.LBB8_22
.LBB8_22:                               # %sw.epilog.142
	movq	-40(%rbp), %rax
	cmpl	$2, 248(%rax)
	jne	.LBB8_24
# BB#23:                                # %if.then.146
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_measure_tool_dialog_update
.LBB8_24:                               # %if.end.147
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_measure_tool_motion, .Lfunc_end8-gimp_measure_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_key_press,@function
gimp_measure_tool_key_press:            # @gimp_measure_tool_key_press
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	cmpq	56(%rsi), %rdx
	jne	.LBB9_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	subl	$65307, %ecx            # imm = 0xFF1B
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jne	.LBB9_3
	jmp	.LBB9_2
.LBB9_2:                                # %sw.bb
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
	movl	$1, -4(%rbp)
	jmp	.LBB9_6
.LBB9_3:                                # %sw.default
	jmp	.LBB9_4
.LBB9_4:                                # %sw.epilog
	jmp	.LBB9_5
.LBB9_5:                                # %if.end
	movl	$0, -4(%rbp)
.LBB9_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_measure_tool_key_press, .Lfunc_end9-gimp_measure_tool_key_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_active_modifier_key,@function
gimp_measure_tool_active_modifier_key:  # @gimp_measure_tool_active_modifier_key
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB10_5
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$2, 248(%rax)
	jne	.LBB10_5
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-40(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB10_4
# BB#3:                                 # %if.then.6
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movl	$12, %edx
	movq	-40(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	callq	gimp_constrain_line
.LBB10_4:                               # %if.end
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-40(%rbp), %rcx
	movslq	280(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, 288(%rdx,%rcx,4)
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movslq	280(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, 300(%rdx,%rcx,4)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_measure_tool_dialog_update
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB10_5:                               # %if.end.22
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_measure_tool_active_modifier_key, .Lfunc_end10-gimp_measure_tool_active_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_oper_update,@function
gimp_measure_tool_oper_update:          # @gimp_measure_tool_oper_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_42
# BB#1:                                 # %if.then
	movl	$-1, -56(%rbp)
	movl	$0, -52(%rbp)
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jge	.LBB11_22
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	336(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_canvas_item_hit
	cmpl	$0, %eax
	je	.LBB11_20
# BB#4:                                 # %if.then.5
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	andl	-60(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB11_9
# BB#5:                                 # %if.then.8
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB11_7
# BB#6:                                 # %if.then.11
	movabsq	$.L.str.25, %rdi
	callq	gettext
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB11_8
.LBB11_7:                               # %if.else
	movabsq	$.L.str.26, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-20(%rbp), %ecx
	xorl	$-1, %ecx
	andl	$8, %ecx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
.LBB11_8:                               # %if.end
	movabsq	$.L.str.27, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rcx
	movl	$1, 328(%rcx)
	jmp	.LBB11_22
.LBB11_9:                               # %if.end.17
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB11_11
# BB#10:                                # %if.then.20
	movabsq	$.L.str.28, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-60(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	gimp_suggest_modifiers
	movabsq	$.L.str.27, %rdx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rcx
	movl	$1, 328(%rcx)
	jmp	.LBB11_22
.LBB11_11:                              # %if.end.26
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB11_15
# BB#12:                                # %land.lhs.true
	cmpl	$0, -52(%rbp)
	jne	.LBB11_14
# BB#13:                                # %land.lhs.true.30
	movq	-40(%rbp), %rax
	cmpl	$3, 284(%rax)
	je	.LBB11_15
.LBB11_14:                              # %if.then.33
	movabsq	$.L.str.29, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-60(%rbp), %ecx
	orl	$8, %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
	jmp	.LBB11_19
.LBB11_15:                              # %if.else.38
	cmpl	$0, -52(%rbp)
	jne	.LBB11_18
# BB#16:                                # %land.lhs.true.40
	movq	-40(%rbp), %rax
	cmpl	$3, 284(%rax)
	jne	.LBB11_18
# BB#17:                                # %if.then.43
	movl	-20(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB11_18:                              # %if.end.45
	movabsq	$.L.str.30, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-60(%rbp), %ecx
	orl	$1, %ecx
	orl	$8, %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -48(%rbp)
.LBB11_19:                              # %if.end.52
	movabsq	$.L.str.27, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rcx
	movl	$1, 328(%rcx)
	jmp	.LBB11_22
.LBB11_20:                              # %if.end.54
                                        #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_21
.LBB11_21:                              # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_2
.LBB11_22:                              # %for.end
	cmpl	$-1, -56(%rbp)
	jne	.LBB11_33
# BB#23:                                # %if.then.56
	movq	-40(%rbp), %rax
	cmpl	$1, 284(%rax)
	jle	.LBB11_26
# BB#24:                                # %land.lhs.true.59
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB11_26
# BB#25:                                # %if.then.62
	movabsq	$.L.str.31, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_replace_status
	movq	-40(%rbp), %rdx
	movl	$1, 328(%rdx)
	jmp	.LBB11_32
.LBB11_26:                              # %if.else.65
	movq	-40(%rbp), %rax
	cmpl	$0, 328(%rax)
	je	.LBB11_31
# BB#27:                                # %if.then.68
	movq	-40(%rbp), %rax
	cmpl	$1, 284(%rax)
	jle	.LBB11_29
# BB#28:                                # %if.then.71
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_measure_tool_dialog_update
	jmp	.LBB11_30
.LBB11_29:                              # %if.else.72
	movabsq	$.L.str.32, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gimp_tool_replace_status
.LBB11_30:                              # %if.end.73
	jmp	.LBB11_31
.LBB11_31:                              # %if.end.74
	jmp	.LBB11_32
.LBB11_32:                              # %if.end.75
	jmp	.LBB11_33
.LBB11_33:                              # %if.end.76
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	280(%rcx), %eax
	je	.LBB11_41
# BB#34:                                # %if.then.79
	movq	-40(%rbp), %rax
	cmpl	$-1, 280(%rax)
	je	.LBB11_37
# BB#35:                                # %land.lhs.true.82
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, 336(%rcx,%rax,8)
	je	.LBB11_37
# BB#36:                                # %if.then.88
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	336(%rcx,%rax,8), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB11_37:                              # %if.end.93
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-40(%rbp), %rcx
	cmpl	$-1, 280(%rcx)
	je	.LBB11_40
# BB#38:                                # %land.lhs.true.97
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, 336(%rcx,%rax,8)
	je	.LBB11_40
# BB#39:                                # %if.then.103
	movl	$1, %esi
	movq	-40(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	336(%rcx,%rax,8), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB11_40:                              # %if.end.108
	jmp	.LBB11_41
.LBB11_41:                              # %if.end.109
	jmp	.LBB11_42
.LBB11_42:                              # %if.end.110
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_measure_tool_oper_update, .Lfunc_end11-gimp_measure_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_measure_tool_cursor_update,@function
gimp_measure_tool_cursor_update:        # @gimp_measure_tool_cursor_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1027, -44(%rbp)        # imm = 0x403
	movl	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_22
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	cmpl	$-1, 280(%rax)
	je	.LBB12_17
# BB#2:                                 # %if.then.4
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	andl	-52(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_7
# BB#3:                                 # %if.then.6
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB12_5
# BB#4:                                 # %if.then.9
	movl	$1035, -44(%rbp)        # imm = 0x40B
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movl	$1039, -44(%rbp)        # imm = 0x40F
.LBB12_6:                               # %if.end
	jmp	.LBB12_16
.LBB12_7:                               # %if.else.10
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB12_9
# BB#8:                                 # %if.then.13
	movl	$1038, -44(%rbp)        # imm = 0x40E
	jmp	.LBB12_15
.LBB12_9:                               # %if.else.14
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB12_13
# BB#10:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 280(%rax)
	jne	.LBB12_12
# BB#11:                                # %land.lhs.true.19
	movq	-40(%rbp), %rax
	cmpl	$3, 284(%rax)
	je	.LBB12_13
.LBB12_12:                              # %if.then.21
	movl	$2, -48(%rbp)
	jmp	.LBB12_14
.LBB12_13:                              # %if.else.22
	movl	$5, -48(%rbp)
.LBB12_14:                              # %if.end.23
	jmp	.LBB12_15
.LBB12_15:                              # %if.end.24
	jmp	.LBB12_16
.LBB12_16:                              # %if.end.25
	jmp	.LBB12_21
.LBB12_17:                              # %if.else.26
	movq	-40(%rbp), %rax
	cmpl	$1, 284(%rax)
	jle	.LBB12_20
# BB#18:                                # %land.lhs.true.29
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB12_20
# BB#19:                                # %if.then.32
	movl	$5, -48(%rbp)
.LBB12_20:                              # %if.end.33
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.34
	jmp	.LBB12_22
.LBB12_22:                              # %if.end.35
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_measure_tool_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_measure_tool_cursor_update, .Lfunc_end12-gimp_measure_tool_cursor_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI13_1:
	.quad	4640537203540230144     # double 180
.LCPI13_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI13_3:
	.quad	-4609115380302729960    # double -3.1415926535897931
.LCPI13_4:
	.quad	4629137466983448576     # double 30
.LCPI13_5:
	.quad	4619567317775286272     # double 7
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_draw,@function
gimp_measure_tool_draw:                 # @gimp_measure_tool_draw
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_measure_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	$0, 336(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB13_5:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jge	.LBB13_16
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB13_5 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB13_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 284(%rax)
	jne	.LBB13_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	$2, %esi
	movl	$15, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cvtsi2sdl	288(%rdx,%rcx,4), %xmm0
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cvtsi2sdl	300(%rdx,%rcx,4), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movslq	-36(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rax, 336(%r9,%rdi,8)
	jmp	.LBB13_10
.LBB13_9:                               # %if.else
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	$4, %esi
	movl	$15, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cvtsi2sdl	288(%rdx,%rcx,4), %xmm0
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cvtsi2sdl	300(%rdx,%rcx,4), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movslq	-36(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rax, 336(%r9,%rdi,8)
.LBB13_10:                              # %if.end
                                        #   in Loop: Header=BB13_5 Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB13_14
# BB#11:                                # %if.then.34
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	cvtsi2sdl	288(%rsi), %xmm0
	movq	-16(%rbp), %rsi
	cvtsi2sdl	300(%rsi), %xmm1
	movslq	-36(%rbp), %rsi
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax,%rsi,4), %xmm2
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rsi
	cvtsi2sdl	300(%rsi,%rax,4), %xmm3
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cvtsi2sdl	288(%rcx,%rax,4), %xmm2
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cvtsi2sdl	300(%rcx,%rax,4), %xmm3
	callq	gimp_draw_tool_calc_distance
	movsd	.LCPI13_4, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_13
# BB#12:                                # %if.then.67
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB13_13:                              # %if.end.69
                                        #   in Loop: Header=BB13_5 Depth=1
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.70
                                        #   in Loop: Header=BB13_5 Depth=1
	jmp	.LBB13_15
.LBB13_15:                              # %for.inc.71
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_5
.LBB13_16:                              # %for.end.73
	movq	-16(%rbp), %rax
	cmpl	$-1, 280(%rax)
	je	.LBB13_19
# BB#17:                                # %land.lhs.true.76
	movq	-16(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 336(%rcx,%rax,8)
	je	.LBB13_19
# BB#18:                                # %if.then.81
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movslq	280(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	336(%rcx,%rax,8), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB13_19:                              # %if.end.86
	movq	-16(%rbp), %rax
	cmpl	$1, 284(%rax)
	jle	.LBB13_33
# BB#20:                                # %land.lhs.true.90
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	284(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB13_33
# BB#21:                                # %if.then.94
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	320(%rax), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	312(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	320(%rax), %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_23
# BB#22:                                # %if.then.103
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB13_23:                              # %if.end.105
	movsd	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB13_25
# BB#24:                                # %if.then.108
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB13_25:                              # %if.end.109
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB13_26
	jp	.LBB13_26
	jmp	.LBB13_32
.LBB13_26:                              # %if.then.112
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movl	$2, %esi
	movl	$61, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	cvtsi2sdl	288(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	300(%rcx), %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_canvas_handle_set_angles
	movq	-16(%rbp), %rax
	cmpl	$2, 284(%rax)
	jne	.LBB13_31
# BB#27:                                # %if.then.123
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movsd	.LCPI13_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_5, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	divsd	200(%rax), %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-72(%rbp), %rax
	divsd	200(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	movq	-16(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	288(%rax), %ecx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jl	.LBB13_29
# BB#28:                                # %cond.true
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB13_30
.LBB13_29:                              # %cond.false
	movq	-16(%rbp), %rax
	cvtsi2sdl	288(%rax), %xmm0
	subsd	-88(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB13_30:                              # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm3
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB13_31:                              # %if.end.155
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
.LBB13_32:                              # %if.end.156
	jmp	.LBB13_33
.LBB13_33:                              # %if.end.157
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_measure_tool_draw, .Lfunc_end13-gimp_measure_tool_draw
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	1056964608              # float 0.5
.LCPI14_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_dialog_new,@function
gimp_measure_tool_dialog_new:           # @gimp_measure_tool_dialog_new
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
	subq	$608, %rsp              # imm = 0x260
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_display_get_shell
	movabsq	$.L.str.9, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rcx
	movl	$4294967289, %r8d       # imm = 0xFFFFFFF9
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_focus_on_map
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_widget_destroy, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movl	$4, %edi
	movl	$5, %esi
	movl	$1, %edx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
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
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-160(%rbp), %r8d        # 4-byte Reload
	movl	-156(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 368(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-188(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-192(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 376(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 432(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 384(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-300(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-304(%rbp), %r8d        # 4-byte Reload
	movl	-300(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movl	$1, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-328(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 392(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 440(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movl	-412(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -436(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-440(%rbp), %r8d        # 4-byte Reload
	movl	-436(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 408(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %ecx
	movl	$4, %edx
	movl	$2, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -468(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-468(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-472(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 448(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 416(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$4, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	movl	-548(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 424(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movq	-40(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %ecx
	movl	$4, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -580(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-580(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -584(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-584(%rbp), %r8d        # 4-byte Reload
	movl	-580(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 456(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %ecx
	movl	$5, %edx
	movl	$3, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -604(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-604(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -608(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-608(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_measure_tool_dialog_new, .Lfunc_end14-gimp_measure_tool_dialog_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4640537203540230144     # double 180
.LCPI15_2:
	.quad	4607182418800017408     # double 1
.LCPI15_3:
	.quad	4645040803167600640     # double 360
.LCPI15_4:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_dialog_update,@function
gimp_measure_tool_dialog_update:        # @gimp_measure_tool_dialog_update
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
	subq	$768, %rsp              # imm = 0x300
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	288(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	300(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 284(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	288(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	308(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	300(%rax), %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB15_3:                               # %if.end
	movl	-36(%rbp), %eax
	subl	-44(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB15_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	subl	-44(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %cond.false
	movl	-36(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB15_6:                               # %cond.end
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB15_8
# BB#7:                                 # %cond.true.25
	xorl	%eax, %eax
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB15_9
.LBB15_8:                               # %cond.false.28
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB15_9:                               # %cond.end.30
	movl	-408(%rbp), %eax        # 4-byte Reload
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_resolution
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -64(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -72(%rbp)
	movl	-36(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	-36(%rbp), %edi
	subl	-44(%rbp), %edi
	imull	%edi, %eax
	movl	-40(%rbp), %edi
	subl	-48(%rbp), %edi
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	imull	%ecx, %edi
	addl	%edi, %eax
	cvtsi2sdl	%eax, %xmm0
	callq	sqrt
	movsd	%xmm0, -80(%rbp)
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	callq	gimp_unit_get_factor
	movl	-36(%rbp), %eax
	subl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	-128(%rbp), %xmm1
	movl	-36(%rbp), %eax
	subl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	-128(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	-136(%rbp), %xmm2
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	-136(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$3, 284(%rdx)
	je	.LBB15_11
# BB#10:                                # %if.then.64
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$0, -36(%rbp)
	cmovgl	%ecx, %eax
	movl	%eax, -44(%rbp)
.LBB15_11:                              # %if.end.68
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_measure_tool_get_angle
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movaps	%xmm1, %xmm0
	callq	gimp_measure_tool_get_angle
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movapd	.LCPI15_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_13
# BB#12:                                # %if.then.75
	movsd	.LCPI15_3, %xmm0        # xmm0 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movapd	.LCPI15_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB15_13:                              # %if.end.78
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_measure_tool_get_angle
	movsd	%xmm0, -96(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_measure_tool_get_angle
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 312(%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 320(%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movapd	.LCPI15_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_15
# BB#14:                                # %if.then.85
	movsd	.LCPI15_3, %xmm0        # xmm0 = mem[0],zero
	subsd	-120(%rbp), %xmm0
	movapd	.LCPI15_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB15_15:                              # %if.end.88
	movq	-24(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB15_17
# BB#16:                                # %if.then.92
	movq	-8(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %rsi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.19, %rdx
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movsd	-440(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rcx
	movb	$2, %al
	callq	gimp_tool_replace_status
	jmp	.LBB15_18
.LBB15_17:                              # %if.else.96
	leaq	-272(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	184(%rax), %ecx
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_unit_get_digits
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_plural
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_digits
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_digits
	movl	$128, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.20, %rdx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %ecx        # 4-byte Reload
	movq	-480(%rbp), %r8         # 8-byte Reload
	movl	-484(%rbp), %r9d        # 4-byte Reload
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movl	%eax, -488(%rbp)        # 4-byte Spill
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-272(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	movb	$4, %al
	callq	gimp_tool_replace_status
.LBB15_18:                              # %if.end.109
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB15_35
# BB#19:                                # %if.then.110
	leaq	-272(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	184(%rax), %ecx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_unit_get_digits
	movl	$128, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.21, %rdx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	$128, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-400(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -508(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	368(%rdx), %rdx
	movl	%eax, -512(%rbp)        # 4-byte Spill
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB15_21
# BB#20:                                # %if.then.124
	movl	$128, %eax
	movl	%eax, %esi
	leaq	-272(%rbp), %rdx
	leaq	-400(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	376(%rdx), %rdx
	movl	%eax, -524(%rbp)        # 4-byte Spill
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_plural
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	jmp	.LBB15_22
.LBB15_21:                              # %if.else.138
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB15_22:                              # %if.end.147
	movl	$128, %eax
	movl	%eax, %esi
	movabsq	$.L.str.23, %rdx
	leaq	-400(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movsd	.LCPI15_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	movapd	.LCPI15_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_24
# BB#23:                                # %if.then.158
	movl	$128, %eax
	movl	%eax, %esi
	movabsq	$.L.str.23, %rdx
	leaq	-400(%rbp), %rdi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	392(%rdx), %rdx
	movl	%eax, -588(%rbp)        # 4-byte Spill
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB15_25
.LBB15_24:                              # %if.else.170
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB15_25:                              # %if.end.179
	movl	$128, %eax
	movl	%eax, %esi
	movabsq	$.L.str.24, %rdx
	leaq	-400(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	400(%rdx), %rdx
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB15_27
# BB#26:                                # %if.then.189
	movl	$128, %eax
	movl	%eax, %esi
	leaq	-272(%rbp), %rdx
	leaq	-400(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	408(%rdx), %rdx
	movl	%eax, -644(%rbp)        # 4-byte Spill
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_plural
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.204
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB15_28:                              # %if.end.213
	movl	$128, %eax
	movl	%eax, %esi
	movabsq	$.L.str.24, %rdx
	leaq	-400(%rbp), %rdi
	movl	-56(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	416(%rdx), %rdx
	movl	%eax, -692(%rbp)        # 4-byte Spill
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB15_30
# BB#29:                                # %if.then.223
	movl	$128, %eax
	movl	%eax, %esi
	leaq	-272(%rbp), %rdx
	leaq	-400(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	424(%rdx), %rdx
	movl	%eax, -708(%rbp)        # 4-byte Spill
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movl	184(%rdx), %edi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_plural
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	jmp	.LBB15_31
.LBB15_30:                              # %if.else.238
	movq	-8(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB15_31:                              # %if.end.247
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB15_33
# BB#32:                                # %if.then.251
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_window_show
	jmp	.LBB15_34
.LBB15_33:                              # %if.else.254
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_show
.LBB15_34:                              # %if.end.256
	jmp	.LBB15_35
.LBB15_35:                              # %if.end.257
	addq	$768, %rsp              # imm = 0x300
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_measure_tool_dialog_update, .Lfunc_end15-gimp_measure_tool_dialog_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4640537203540230144     # double 180
.LCPI16_1:
	.quad	4643457506423603200     # double 270
.LCPI16_2:
	.quad	4636033603912859648     # double 90
.LCPI16_3:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI16_4:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	gimp_measure_tool_get_angle,@function
gimp_measure_tool_get_angle:            # @gimp_measure_tool_get_angle
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-8(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	cvtsi2sdl	-4(%rbp), %xmm1
	divsd	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	atan
	movsd	.LCPI16_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_4, %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB16_6
.LBB16_2:                               # %if.else
	cmpl	$0, -8(%rbp)
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_2, %xmm1        # xmm1 = mem[0],zero
	cmpl	$0, -8(%rbp)
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jg	.LBB16_14
# BB#13:                                # %if.then.6
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB16_14:                              # %if.then.6
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %if.else.8
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB16_5:                               # %if.end
	jmp	.LBB16_6
.LBB16_6:                               # %if.end.9
	cmpl	$0, -4(%rbp)
	jle	.LBB16_11
# BB#7:                                 # %if.then.12
	cmpl	$0, -8(%rbp)
	jle	.LBB16_9
# BB#8:                                 # %if.then.15
	movsd	.LCPI16_4, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB16_10
.LBB16_9:                               # %if.else.16
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB16_10:                              # %if.end.18
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.19
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB16_12:                              # %if.end.21
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_measure_tool_get_angle, .Lfunc_end16-gimp_measure_tool_get_angle
	.cfi_endproc

	.type	gimp_measure_tool_get_type.g_define_type_id__volatile,@object # @gimp_measure_tool_get_type.g_define_type_id__volatile
	.local	gimp_measure_tool_get_type.g_define_type_id__volatile
	.comm	gimp_measure_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMeasureTool"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-measure-tool"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Measure"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Measure Tool: Measure distances and angles"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Measure"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>M"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-measure"
	.size	.L.str.6, 18

	.type	gimp_measure_tool_parent_class,@object # @gimp_measure_tool_parent_class
	.local	gimp_measure_tool_parent_class
	.comm	gimp_measure_tool_parent_class,8,8
	.type	GimpMeasureTool_private_offset,@object # @GimpMeasureTool_private_offset
	.local	GimpMeasureTool_private_offset
	.comm	GimpMeasureTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Add Guides"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Drag to create a line"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Measure Distances and Angles"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-close"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Distance:"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0.0"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pixels"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Angle:"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\302\260"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Width:"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Height:"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%.1f %s, %.2f\302\260 (%d \303\227 %d)"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%%.%df %s, %%.2f\302\260 (%%.%df \303\227 %%.%df)"
	.size	.L.str.20, 38

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%%.%df"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%.1f"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%.2f"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%d"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Click to place vertical and horizontal guides"
	.size	.L.str.25, 46

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Click to place a horizontal guide"
	.size	.L.str.26, 34

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Click to place a vertical guide"
	.size	.L.str.28, 32

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Click-Drag to add a new point"
	.size	.L.str.29, 30

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Click-Drag to move this point"
	.size	.L.str.30, 30

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Click-Drag to move all points"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	" "
	.size	.L.str.32, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
