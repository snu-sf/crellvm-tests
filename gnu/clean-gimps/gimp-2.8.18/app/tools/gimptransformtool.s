	.text
	.file	"gimptransformtool.bc"
	.globl	gimp_transform_tool_get_type
	.align	16, 0x90
	.type	gimp_transform_tool_get_type,@function
gimp_transform_tool_get_type:           # @gimp_transform_tool_get_type
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
	movq	gimp_transform_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_transform_tool_get_type.g_define_type_id__volatile, %rax
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
	movl	$344, %edx              # imm = 0x158
	movabsq	$gimp_transform_tool_class_intern_init, %rdi
	movl	$792, %r8d              # imm = 0x318
	movabsq	$gimp_transform_tool_init, %rcx
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
	movabsq	$gimp_transform_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_transform_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_transform_tool_get_type, .Lfunc_end0-gimp_transform_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_class_intern_init,@function
gimp_transform_tool_class_intern_init:  # @gimp_transform_tool_class_intern_init
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
	movq	%rax, gimp_transform_tool_parent_class
	cmpl	$0, GimpTransformTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTransformTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_transform_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_transform_tool_class_intern_init, .Lfunc_end1-gimp_transform_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_init,@function
gimp_transform_tool_init:               # @gimp_transform_tool_init
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
	movabsq	$.L.str.18, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_1
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_scroll_lock
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_preserve
	movl	$834, %esi              # imm = 0x342
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_dirty_mask
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movq	-8(%rbp), %rax
	movl	$0, 664(%rax)
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, 776(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_transform_tool_init, .Lfunc_end2-gimp_transform_tool_init
	.cfi_endproc

	.globl	gimp_transform_tool_recalc_matrix
	.align	16, 0x90
	.type	gimp_transform_tool_recalc_matrix,@function
gimp_transform_tool_recalc_matrix:      # @gimp_transform_tool_recalc_matrix
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_transform_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_transform_tool_recalc_matrix, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 320(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB3_14:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_transform_tool_transform_bounding_box
	movq	-8(%rbp), %rdi
	callq	gimp_transform_tool_dialog_update
	movq	-8(%rbp), %rdi
	cmpq	$0, 784(%rdi)
	je	.LBB3_16
# BB#15:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	784(%rax), %rdi
	callq	gtk_widget_show
.LBB3_16:                               # %if.end.20
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_transform_tool_recalc_matrix, .Lfunc_end3-gimp_transform_tool_recalc_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_transform_bounding_box,@function
gimp_transform_tool_transform_bounding_box: # @gimp_transform_tool_transform_bounding_box
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_transform_tool_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_transform_tool_transform_bounding_box, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-8(%rbp), %rcx
	cvtsi2sdl	280(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	284(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$320, %rcx              # imm = 0x140
	movq	-8(%rbp), %rdx
	addq	$328, %rdx              # imm = 0x148
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-8(%rbp), %rcx
	cvtsi2sdl	288(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	284(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$336, %rcx              # imm = 0x150
	movq	-8(%rbp), %rdx
	addq	$344, %rdx              # imm = 0x158
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-8(%rbp), %rcx
	cvtsi2sdl	280(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	292(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$352, %rcx              # imm = 0x160
	movq	-8(%rbp), %rdx
	addq	$360, %rdx              # imm = 0x168
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-8(%rbp), %rcx
	cvtsi2sdl	288(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	292(%rcx), %xmm1
	movq	-8(%rbp), %rcx
	addq	$368, %rcx              # imm = 0x170
	movq	-8(%rbp), %rdx
	addq	$376, %rdx              # imm = 0x178
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-8(%rbp), %rcx
	movsd	296(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	304(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	addq	$384, %rcx              # imm = 0x180
	movq	-8(%rbp), %rdx
	addq	$392, %rdx              # imm = 0x188
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
.LBB4_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_transform_tool_transform_bounding_box, .Lfunc_end4-gimp_transform_tool_transform_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_dialog_update,@function
gimp_transform_tool_dialog_update:      # @gimp_transform_tool_dialog_update
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
	cmpq	$0, 784(%rdi)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 296(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_transform_tool_dialog_update, .Lfunc_end5-gimp_transform_tool_dialog_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_class_init,@function
gimp_transform_tool_class_init:         # @gimp_transform_tool_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_transform_tool_real_transform, %rsi
	movabsq	$gimp_transform_tool_draw, %rdi
	movabsq	$gimp_transform_tool_options_notify, %rcx
	movabsq	$gimp_transform_tool_cursor_update, %rdx
	movabsq	$gimp_transform_tool_oper_update, %r8
	movabsq	$gimp_transform_tool_modifier_key, %r9
	movabsq	$gimp_transform_tool_key_press, %r10
	movabsq	$gimp_transform_tool_motion, %r11
	movabsq	$gimp_transform_tool_button_release, %rbx
	movabsq	$gimp_transform_tool_button_press, %r14
	movabsq	$gimp_transform_tool_control, %r15
	movabsq	$gimp_transform_tool_initialize, %r12
	movabsq	$gimp_transform_tool_finalize, %r13
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%r13, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 176(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 184(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 192(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 200(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 208(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 216(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 232(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 240(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-64(%rbp), %rax
	movq	%rcx, 272(%rax)
	movq	-72(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 328(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 336(%rax)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_transform_tool_class_init, .Lfunc_end6-gimp_transform_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_finalize,@function
gimp_transform_tool_finalize:           # @gimp_transform_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	784(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 784(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_transform_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_transform_tool_finalize, .Lfunc_end7-gimp_transform_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_initialize,@function
gimp_transform_tool_initialize:         # @gimp_transform_tool_initialize
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	movq	gimp_transform_tool_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_transform_tool_check_active_item
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_4:                                # %if.end.10
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB8_14
# BB#5:                                 # %if.then.12
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_tool_control
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_transform_tool_bounds
	cmpl	$0, %eax
	jne	.LBB8_7
# BB#6:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.3, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_7:                                # %if.end.18
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 784(%rax)
	jne	.LBB8_9
# BB#8:                                 # %if.then.22
	movq	-40(%rbp), %rdi
	callq	gimp_transform_tool_dialog
.LBB8_9:                                # %if.end.23
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_transform_tool_prepare
	movq	-40(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	movq	-40(%rbp), %rax
	movl	$0, 664(%rax)
	movl	$0, -68(%rbp)
.LBB8_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -68(%rbp)
	jge	.LBB8_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB8_10 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	472(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 536(%rcx,%rax,8)
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	472(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 600(%rcx,%rax,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB8_10 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB8_10
.LBB8_13:                               # %for.end
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.34
	movl	$1, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_transform_tool_initialize, .Lfunc_end8-gimp_transform_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_control,@function
gimp_transform_tool_control:            # @gimp_transform_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_8
.LBB9_8:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_6
.LBB9_1:                                # %sw.bb
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.2
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_transform_tool_bounds
	movq	-32(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_transform_tool_recalc_matrix
	jmp	.LBB9_6
.LBB9_3:                                # %sw.bb.4
	movq	-32(%rbp), %rax
	movl	$0, 664(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	784(%rax), %rdi
	callq	gimp_dialog_factory_hide_dialog
.LBB9_5:                                # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB9_6:                                # %sw.epilog
	movq	gimp_transform_tool_parent_class, %rax
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
.Lfunc_end9:
	.size	gimp_transform_tool_control, .Lfunc_end9-gimp_transform_tool_control
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_transform_tool_button_press,@function
gimp_transform_tool_button_press:       # @gimp_transform_tool_button_press
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 664(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %r8
	callq	gimp_transform_tool_oper_update
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movl	$0, -52(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -52(%rbp)
	jge	.LBB10_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	472(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 600(%rcx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdi
	movq	688(%rdi,%rax,8), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_canvas_handle_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_8
# BB#7:                                 # %if.then.9
	movl	$0, -76(%rbp)
	jmp	.LBB10_13
.LBB10_8:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_11
# BB#9:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_11
# BB#10:                                # %if.then.13
	movl	$1, -76(%rbp)
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.14
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_12:                              # %if.end.16
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.17
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_21
# BB#14:                                # %if.then.19
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdi
	movq	688(%rdi,%rax,8), %rdi
	callq	gimp_canvas_handle_get_position
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jbe	.LBB10_16
# BB#15:                                # %cond.true
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
.LBB10_17:                              # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvttsd2si	%xmm0, %esi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	movl	%esi, -124(%rbp)        # 4-byte Spill
	jbe	.LBB10_19
# BB#18:                                # %cond.true.40
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false.44
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
.LBB10_20:                              # %cond.end.48
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	cvttsd2si	%xmm0, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB10_22
.LBB10_21:                              # %if.else.51
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
.LBB10_22:                              # %if.end.53
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_transform_tool_button_press, .Lfunc_end10-gimp_transform_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_button_release,@function
gimp_transform_tool_button_release:     # @gimp_transform_tool_button_release
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
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-48(%rbp), %rax
	cmpl	$0, 664(%rax)
	jne	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 668(%rax)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_13
.LBB11_3:                               # %if.end
	cmpl	$1, -28(%rbp)
	je	.LBB11_8
# BB#4:                                 # %if.then.3
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#5:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$0, 668(%rax)
	jne	.LBB11_7
.LBB11_6:                               # %if.then.7
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	-48(%rbp), %rdx
	callq	gimp_transform_tool_response
.LBB11_7:                               # %if.end.8
	jmp	.LBB11_13
.LBB11_8:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$0, -52(%rbp)
.LBB11_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -52(%rbp)
	jge	.LBB11_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB11_9 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	600(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 472(%rcx,%rax,8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_9
.LBB11_12:                              # %for.end
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_transform_tool_bounds
	movq	-48(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_transform_tool_recalc_matrix
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB11_13:                              # %if.end.17
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_transform_tool_button_release, .Lfunc_end11-gimp_transform_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_motion,@function
gimp_transform_tool_motion:             # @gimp_transform_tool_motion
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 664(%rax)
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$0, 668(%rax)
	jne	.LBB12_3
.LBB12_2:                               # %if.then
	jmp	.LBB12_6
.LBB12_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 248(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 256(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 312(%rax)
	je	.LBB12_5
# BB#4:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	312(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	-40(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
.LBB12_5:                               # %if.end.8
	movq	-40(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-40(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB12_6:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_transform_tool_motion, .Lfunc_end12-gimp_transform_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_key_press,@function
gimp_transform_tool_key_press:          # @gimp_transform_tool_key_press
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	cmpq	200(%rdx), %rax
	jne	.LBB13_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_8
.LBB13_8:                               # %if.then
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB13_3
	jmp	.LBB13_9
.LBB13_9:                               # %if.then
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_10
.LBB13_10:                              # %if.then
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB13_4
	jmp	.LBB13_11
.LBB13_11:                              # %if.then
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jne	.LBB13_5
	jmp	.LBB13_2
.LBB13_2:                               # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	-40(%rbp), %rdx
	callq	gimp_transform_tool_response
	movl	$1, -4(%rbp)
	jmp	.LBB13_7
.LBB13_3:                               # %sw.bb.5
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1, %esi
	movq	-40(%rbp), %rdx
	callq	gimp_transform_tool_response
	movl	$1, -4(%rbp)
	jmp	.LBB13_7
.LBB13_4:                               # %sw.bb.6
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	-40(%rbp), %rdx
	callq	gimp_transform_tool_response
	movl	$1, -4(%rbp)
	jmp	.LBB13_7
.LBB13_5:                               # %sw.epilog
	jmp	.LBB13_6
.LBB13_6:                               # %if.end
	movl	$0, -4(%rbp)
.LBB13_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_transform_tool_key_press, .Lfunc_end13-gimp_transform_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_modifier_key,@function
gimp_transform_tool_modifier_key:       # @gimp_transform_tool_modifier_key
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rdi
	cmpl	$0, 392(%rdi)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB14_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_transform_tool_modifier_key, .Lfunc_end14-gimp_transform_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_oper_update,@function
gimp_transform_tool_oper_update:        # @gimp_transform_tool_oper_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rax
	jne	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, 232(%rax)
	jne	.LBB15_3
.LBB15_2:                               # %if.then
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_transform_tool_set_function
	jmp	.LBB15_28
.LBB15_3:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 672(%rax)
	je	.LBB15_24
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	320(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	328(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movl	$2, -52(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	336(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	344(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_6
# BB#5:                                 # %if.then.12
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movl	$3, -52(%rbp)
.LBB15_6:                               # %if.end.13
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	352(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	360(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_8
# BB#7:                                 # %if.then.18
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movl	$4, -52(%rbp)
.LBB15_8:                               # %if.end.19
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	368(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_10
# BB#9:                                 # %if.then.24
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movl	$5, -52(%rbp)
.LBB15_10:                              # %if.end.25
	movq	-40(%rbp), %rax
	cmpl	$0, 680(%rax)
	je	.LBB15_23
# BB#11:                                # %if.then.27
	movq	-40(%rbp), %rax
	movq	736(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_canvas_item_hit
	cmpl	$0, %eax
	je	.LBB15_13
# BB#12:                                # %if.then.32
	movl	$6, -52(%rbp)
	jmp	.LBB15_22
.LBB15_13:                              # %if.else
	movq	-40(%rbp), %rax
	movq	752(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_canvas_item_hit
	cmpl	$0, %eax
	je	.LBB15_15
# BB#14:                                # %if.then.39
	movl	$8, -52(%rbp)
	jmp	.LBB15_21
.LBB15_15:                              # %if.else.40
	movq	-40(%rbp), %rax
	movq	744(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_canvas_item_hit
	cmpl	$0, %eax
	je	.LBB15_17
# BB#16:                                # %if.then.47
	movl	$7, -52(%rbp)
	jmp	.LBB15_20
.LBB15_17:                              # %if.else.48
	movq	-40(%rbp), %rax
	movq	760(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_canvas_item_hit
	cmpl	$0, %eax
	je	.LBB15_19
# BB#18:                                # %if.then.55
	movl	$9, -52(%rbp)
.LBB15_19:                              # %if.end.56
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.57
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.58
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.59
	jmp	.LBB15_23
.LBB15_23:                              # %if.end.60
	jmp	.LBB15_24
.LBB15_24:                              # %if.end.61
	movq	-40(%rbp), %rax
	cmpl	$0, 676(%rax)
	je	.LBB15_27
# BB#25:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	768(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_canvas_item_hit
	cmpl	$0, %eax
	je	.LBB15_27
# BB#26:                                # %if.then.69
	movl	$10, -52(%rbp)
.LBB15_27:                              # %if.end.70
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_transform_tool_set_function
.LBB15_28:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_transform_tool_oper_update, .Lfunc_end15-gimp_transform_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_cursor_update,@function
gimp_transform_tool_cursor_update:      # @gimp_transform_tool_cursor_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_cursor
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$0, 672(%rcx)
	je	.LBB16_12
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	664(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$7, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	ja	.LBB16_10
# BB#18:                                # %if.then
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_2:                               # %sw.bb
	movl	$1032, -52(%rbp)        # imm = 0x408
	jmp	.LBB16_11
.LBB16_3:                               # %sw.bb.4
	movl	$1033, -52(%rbp)        # imm = 0x409
	jmp	.LBB16_11
.LBB16_4:                               # %sw.bb.5
	movl	$1034, -52(%rbp)        # imm = 0x40A
	jmp	.LBB16_11
.LBB16_5:                               # %sw.bb.6
	movl	$1035, -52(%rbp)        # imm = 0x40B
	jmp	.LBB16_11
.LBB16_6:                               # %sw.bb.7
	movl	$1036, -52(%rbp)        # imm = 0x40C
	jmp	.LBB16_11
.LBB16_7:                               # %sw.bb.8
	movl	$1038, -52(%rbp)        # imm = 0x40E
	jmp	.LBB16_11
.LBB16_8:                               # %sw.bb.9
	movl	$1039, -52(%rbp)        # imm = 0x40F
	jmp	.LBB16_11
.LBB16_9:                               # %sw.bb.10
	movl	$1037, -52(%rbp)        # imm = 0x40D
	jmp	.LBB16_11
.LBB16_10:                              # %sw.default
	movl	$1027, -52(%rbp)        # imm = 0x403
.LBB16_11:                              # %sw.epilog
	jmp	.LBB16_12
.LBB16_12:                              # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 676(%rax)
	je	.LBB16_15
# BB#13:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$10, 664(%rax)
	jne	.LBB16_15
# BB#14:                                # %if.then.13
	movl	$5, -56(%rbp)
.LBB16_15:                              # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_transform_tool_check_active_item
	cmpq	$0, %rax
	jne	.LBB16_17
# BB#16:                                # %if.then.17
	movl	$1, -56(%rbp)
.LBB16_17:                              # %if.end.18
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-56(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_transform_tool_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_transform_tool_cursor_update, .Lfunc_end16-gimp_transform_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_8
	.quad	.LBB16_7
	.quad	.LBB16_9

	.text
	.align	16, 0x90
	.type	gimp_transform_tool_options_notify,@function
gimp_transform_tool_options_notify:     # @gimp_transform_tool_options_notify
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	gimp_transform_tool_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
	jmp	.LBB17_14
.LBB17_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, 668(%rax)
	je	.LBB17_12
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_9
# BB#4:                                 # %if.then.12
	movq	-32(%rbp), %rax
	cmpl	$0, 664(%rax)
	je	.LBB17_8
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB17_7
# BB#6:                                 # %if.then.16
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_transform_tool_bounds
	movq	-32(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_transform_tool_recalc_matrix
.LBB17_7:                               # %if.end.19
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.20
	jmp	.LBB17_9
.LBB17_9:                               # %if.end.21
	movq	-32(%rbp), %rax
	cmpl	$0, 664(%rax)
	je	.LBB17_11
# BB#10:                                # %if.then.24
	movq	-32(%rbp), %rdi
	callq	gimp_transform_tool_transform_bounding_box
.LBB17_11:                              # %if.end.25
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB17_12:                              # %if.end.28
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_14
# BB#13:                                # %if.then.32
	movq	-32(%rbp), %rdi
	callq	gimp_transform_tool_dialog_update
.LBB17_14:                              # %if.end.33
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_transform_tool_options_notify, .Lfunc_end17-gimp_transform_tool_options_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4611686018427387904     # double 2
.LCPI18_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_transform_tool_draw,@function
gimp_transform_tool_draw:               # @gimp_transform_tool_draw
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
	subq	$688, %rsp              # imm = 0x2B0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	$11, %rax
	jae	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, 688(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	movq	-24(%rbp), %rax
	cmpl	$0, 668(%rax)
	je	.LBB18_15
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_transform_options_show_preview
	cmpl	$0, %eax
	je	.LBB18_14
# BB#6:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-24(%rbp), %rcx
	cvtsi2sdl	280(%rcx), %xmm0
	movq	-24(%rbp), %rcx
	cvtsi2sdl	284(%rcx), %xmm1
	movq	-24(%rbp), %rcx
	cvtsi2sdl	288(%rcx), %xmm2
	movq	-24(%rbp), %rcx
	cvtsi2sdl	292(%rcx), %xmm3
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	movsd	%xmm2, -448(%rbp)       # 8-byte Spill
	movsd	%xmm3, -456(%rbp)       # 8-byte Spill
	callq	gimp_perspective_tool_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB18_8
# BB#7:                                 # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB18_13
.LBB18_8:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_11
# BB#9:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB18_11
# BB#10:                                # %if.then.25
	movl	$1, -76(%rbp)
	jmp	.LBB18_12
.LBB18_11:                              # %if.else.26
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB18_12:                              # %if.end
	jmp	.LBB18_13
.LBB18_13:                              # %if.end.28
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movsd	376(%rdx), %xmm4        # xmm4 = mem[0],zero
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-448(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-456(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_transform_preview
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB18_14:                              # %if.end.30
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-32(%rbp), %rcx
	movl	384(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	388(%rcx), %ecx
	movq	-24(%rbp), %rsi
	cvtsi2sdl	280(%rsi), %xmm0
	movq	-24(%rbp), %rsi
	cvtsi2sdl	284(%rsi), %xmm1
	movq	-24(%rbp), %rsi
	cvtsi2sdl	288(%rsi), %xmm2
	movq	-24(%rbp), %rsi
	cvtsi2sdl	292(%rsi), %xmm3
	movq	%rax, %rsi
	callq	gimp_draw_tool_add_transform_guides
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB18_15:                              # %if.end.41
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_transform_tool_handles_recalc
	movq	-24(%rbp), %rax
	cmpl	$0, 672(%rax)
	je	.LBB18_19
# BB#16:                                # %if.then.44
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movsd	320(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	328(%rcx), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	%eax, %esi
	movl	%eax, %r8d
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, 704(%rdi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	336(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	344(%rax), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	%esi, -476(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-476(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-480(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, 712(%rdi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	352(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	360(%rax), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	%esi, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-484(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-488(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, 720(%rdi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	376(%rax), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	%esi, -492(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-492(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-496(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_handle
	movq	-24(%rbp), %rdi
	movq	%rax, 728(%rdi)
	movq	-24(%rbp), %rax
	cmpl	$0, 680(%rax)
	je	.LBB18_18
# BB#17:                                # %if.then.58
	xorl	%eax, %eax
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	320(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	addsd	336(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-24(%rbp), %rcx
	movsd	328(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	addsd	344(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	%eax, %esi
	movl	%eax, %r8d
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	%rax, 736(%rdi)
	movq	-24(%rbp), %rax
	movsd	336(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	368(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-24(%rbp), %rax
	movsd	344(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	376(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	%esi, -500(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-500(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -504(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-504(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	%rax, 752(%rdi)
	movq	-24(%rbp), %rax
	movsd	352(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	368(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-24(%rbp), %rax
	movsd	360(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	376(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	%esi, -508(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-508(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-512(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_handle
	xorl	%ecx, %ecx
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	%rax, 744(%rdi)
	movq	-24(%rbp), %rax
	movsd	352(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	320(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-24(%rbp), %rax
	movsd	360(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	328(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	%esi, -516(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-516(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-520(%rbp), %r8d        # 4-byte Reload
	callq	gimp_draw_tool_add_handle
	movq	-24(%rbp), %rdi
	movq	%rax, 760(%rdi)
.LBB18_18:                              # %if.end.103
	jmp	.LBB18_19
.LBB18_19:                              # %if.end.104
	movq	-24(%rbp), %rax
	cmpl	$0, 676(%rax)
	je	.LBB18_24
# BB#20:                                # %if.then.106
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB18_22
# BB#21:                                # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB18_23
.LBB18_22:                              # %cond.false
	movl	-48(%rbp), %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB18_23:                              # %cond.end
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, 768(%rsi)
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movl	$2, %esi
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	392(%rax), %xmm1        # xmm1 = mem[0],zero
	movl	-108(%rbp), %edx
	movl	-108(%rbp), %ecx
	callq	gimp_draw_tool_add_handle
	movl	$4, %esi
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movsd	384(%r9), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %r9
	movsd	392(%r9), %xmm1         # xmm1 = mem[0],zero
	movl	-108(%rbp), %edx
	movl	-108(%rbp), %ecx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_handle
	movq	-8(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
.LBB18_24:                              # %if.end.120
	movq	-24(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	cmpq	$0, 688(%rdx,%rax,8)
	je	.LBB18_26
# BB#25:                                # %if.then.125
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	movq	688(%rdx,%rax,8), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB18_26:                              # %if.end.130
	movq	-32(%rbp), %rax
	cmpl	$1, 352(%rax)
	jne	.LBB18_42
# BB#27:                                # %if.then.133
	movl	$72, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-24(%rbp), %rsi
	addq	$400, %rsi              # imm = 0x190
	movq	%rcx, %rdi
	callq	memcpy
	movq	-32(%rbp), %rcx
	cmpl	$1, 356(%rcx)
	jne	.LBB18_29
# BB#28:                                # %if.then.144
	leaq	-184(%rbp), %rdi
	callq	gimp_matrix3_invert
.LBB18_29:                              # %if.end.145
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-192(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	leaq	-220(%rbp), %rcx
	leaq	-224(%rbp), %r8
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_channel_boundary
	movq	-192(%rbp), %rcx
	movslq	-220(%rbp), %rdx
	imulq	$20, %rdx, %rdx
	movl	%edx, %r9d
	movq	%rcx, %rdi
	movl	%r9d, %esi
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	g_memdup
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movslq	-224(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB18_35
# BB#30:                                # %if.then.156
	movl	$0, -52(%rbp)
.LBB18_31:                              # %for.cond.157
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jge	.LBB18_34
# BB#32:                                # %for.body.160
                                        #   in Loop: Header=BB18_31 Depth=1
	leaq	-184(%rbp), %rdi
	leaq	-232(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-184(%rbp), %rdi
	leaq	-232(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	movl	%ecx, (%rax)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	movl	%ecx, 4(%rax)
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	-576(%rbp), %rsi        # 8-byte Reload
	movq	-584(%rbp), %rdx        # 8-byte Reload
	callq	gimp_matrix3_transform_point
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	movl	%ecx, 8(%rax)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-208(%rbp), %rax
	movl	%ecx, 12(%rax)
# BB#33:                                # %for.inc.199
                                        #   in Loop: Header=BB18_31 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB18_31
.LBB18_34:                              # %for.end.201
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-220(%rbp), %edx
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_draw_tool_add_boundary
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_free
.LBB18_35:                              # %if.end.203
	cmpq	$0, -216(%rbp)
	je	.LBB18_41
# BB#36:                                # %if.then.205
	movl	$0, -52(%rbp)
.LBB18_37:                              # %for.cond.206
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-224(%rbp), %eax
	jge	.LBB18_40
# BB#38:                                # %for.body.209
                                        #   in Loop: Header=BB18_37 Depth=1
	leaq	-184(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-184(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	movl	%ecx, (%rax)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	movl	%ecx, 4(%rax)
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	-616(%rbp), %rsi        # 8-byte Reload
	movq	-624(%rbp), %rdx        # 8-byte Reload
	callq	gimp_matrix3_transform_point
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	movl	%ecx, 8(%rax)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-216(%rbp), %rax
	movl	%ecx, 12(%rax)
# BB#39:                                # %for.inc.250
                                        #   in Loop: Header=BB18_37 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB18_37
.LBB18_40:                              # %for.end.252
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	-224(%rbp), %edx
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_draw_tool_add_boundary
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_free
.LBB18_41:                              # %if.end.254
	jmp	.LBB18_61
.LBB18_42:                              # %if.else.255
	movq	-32(%rbp), %rax
	cmpl	$2, 352(%rax)
	jne	.LBB18_60
# BB#43:                                # %if.then.259
	movl	$72, %eax
	movl	%eax, %edx
	leaq	-344(%rbp), %rcx
	movq	$0, -272(%rbp)
	movq	-24(%rbp), %rsi
	addq	$400, %rsi              # imm = 0x190
	movq	%rcx, %rdi
	callq	memcpy
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -264(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB18_59
# BB#44:                                # %if.then.267
	movq	-32(%rbp), %rax
	cmpl	$1, 356(%rax)
	jne	.LBB18_46
# BB#45:                                # %if.then.271
	leaq	-344(%rbp), %rdi
	callq	gimp_matrix3_invert
.LBB18_46:                              # %if.end.272
	jmp	.LBB18_47
.LBB18_47:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_51 Depth 2
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -272(%rbp)
	cmpq	$0, %rax
	je	.LBB18_58
# BB#48:                                # %while.body
                                        #   in Loop: Header=BB18_47 Depth=1
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	leaq	-356(%rbp), %rsi
	movq	-272(%rbp), %rdi
	callq	gimp_stroke_interpolate
	movq	%rax, -352(%rbp)
	cmpq	$0, -352(%rbp)
	je	.LBB18_55
# BB#49:                                # %land.lhs.true.279
                                        #   in Loop: Header=BB18_47 Depth=1
	movq	-352(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB18_55
# BB#50:                                # %if.then.281
                                        #   in Loop: Header=BB18_47 Depth=1
	movl	$0, -360(%rbp)
.LBB18_51:                              # %for.cond.284
                                        #   Parent Loop BB18_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-360(%rbp), %eax
	movq	-352(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB18_54
# BB#52:                                # %for.body.288
                                        #   in Loop: Header=BB18_51 Depth=2
	leaq	-344(%rbp), %rdi
	movslq	-360(%rbp), %rax
	movq	-352(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -368(%rbp)
	movq	-368(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-368(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-368(%rbp), %rsi
	movq	-368(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	callq	gimp_matrix3_transform_point
# BB#53:                                # %for.inc.296
                                        #   in Loop: Header=BB18_51 Depth=2
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB18_51
.LBB18_54:                              # %for.end.298
                                        #   in Loop: Header=BB18_47 Depth=1
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	-352(%rbp), %rdx
	movl	8(%rdx), %edx
	movq	%rax, %rsi
	callq	gimp_draw_tool_add_strokes
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB18_55:                              # %if.end.303
                                        #   in Loop: Header=BB18_47 Depth=1
	cmpq	$0, -352(%rbp)
	je	.LBB18_57
# BB#56:                                # %if.then.305
                                        #   in Loop: Header=BB18_47 Depth=1
	movl	$1, %esi
	movq	-352(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB18_57:                              # %if.end.307
                                        #   in Loop: Header=BB18_47 Depth=1
	jmp	.LBB18_47
.LBB18_58:                              # %while.end
	jmp	.LBB18_59
.LBB18_59:                              # %if.end.308
	jmp	.LBB18_60
.LBB18_60:                              # %if.end.309
	jmp	.LBB18_61
.LBB18_61:                              # %if.end.310
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_transform_tool_draw, .Lfunc_end18-gimp_transform_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_real_transform,@function
gimp_transform_tool_real_transform:     # @gimp_transform_tool_real_transform
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	$0, -128(%rbp)
	movq	-104(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	776(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_progress_start
	movq	%rax, -120(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB19_12
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then.15
	movl	$0, -156(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.18
	movl	$1, -156(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.19
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.21
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB19_11
# BB#9:                                 # %land.lhs.true.23
	movq	-64(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB19_11
# BB#10:                                # %if.then.26
	movl	$1, -132(%rbp)
.LBB19_11:                              # %if.end.27
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movq	-48(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	movq	-104(%rbp), %r9
	movl	356(%r9), %r10d
	movq	-104(%rbp), %r9
	movl	360(%r9), %r11d
	movq	-104(%rbp), %r9
	movl	364(%r9), %ebx
	movl	-132(%rbp), %r14d
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %r15
	movq	-120(%rbp), %r12
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%r9, -248(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	-248(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_drawable_transform_tiles_affine
	movq	%rax, -128(%rbp)
	jmp	.LBB19_25
.LBB19_12:                              # %if.else.31
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB19_14
# BB#13:                                # %if.then.34
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-48(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-104(%rbp), %rcx
	movl	356(%rcx), %ecx
	movq	-104(%rbp), %rdx
	movl	360(%rdx), %r8d
	movq	-104(%rbp), %rdx
	movl	364(%rdx), %r9d
	movl	-132(%rbp), %r10d
	movq	-120(%rbp), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%r10d, (%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_linked_transform
	jmp	.LBB19_24
.LBB19_14:                              # %if.else.39
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB19_16
# BB#15:                                # %if.then.48
	movl	$0, -180(%rbp)
	jmp	.LBB19_21
.LBB19_16:                              # %if.else.49
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_19
# BB#17:                                # %land.lhs.true.52
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB19_19
# BB#18:                                # %if.then.56
	movl	$1, -180(%rbp)
	jmp	.LBB19_20
.LBB19_19:                              # %if.else.57
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB19_20:                              # %if.end.59
	jmp	.LBB19_21
.LBB19_21:                              # %if.end.60
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB19_23
# BB#22:                                # %if.then.63
	movl	$1, -132(%rbp)
.LBB19_23:                              # %if.end.64
	movq	-56(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-48(%rbp), %rax
	addq	$400, %rax              # imm = 0x190
	movq	-104(%rbp), %rcx
	movl	356(%rcx), %ecx
	movq	-104(%rbp), %rdx
	movl	360(%rdx), %r8d
	movq	-104(%rbp), %rdx
	movl	364(%rdx), %r9d
	movl	-132(%rbp), %r10d
	movq	-120(%rbp), %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%r10d, (%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB19_24:                              # %if.end.69
	jmp	.LBB19_25
.LBB19_25:                              # %if.end.70
	cmpq	$0, -120(%rbp)
	je	.LBB19_27
# BB#26:                                # %if.then.72
	movq	-120(%rbp), %rdi
	callq	gimp_progress_end
.LBB19_27:                              # %if.end.73
	movq	-128(%rbp), %rax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_transform_tool_real_transform, .Lfunc_end19-gimp_transform_tool_real_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_check_active_item,@function
gimp_transform_tool_check_active_item:  # @gimp_transform_tool_check_active_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_transform_tool_get_active_item
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	352(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB20_1
	jmp	.LBB20_10
.LBB20_10:                              # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB20_2
	jmp	.LBB20_11
.LBB20_11:                              # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB20_3
	jmp	.LBB20_4
.LBB20_1:                               # %sw.bb
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	%rax, -64(%rbp)
	jmp	.LBB20_4
.LBB20_2:                               # %sw.bb.8
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.6, %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	jmp	.LBB20_4
.LBB20_3:                               # %sw.bb.9
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movabsq	$.L.str.9, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	%rax, -64(%rbp)
.LBB20_4:                               # %sw.epilog
	cmpq	$0, -48(%rbp)
	jne	.LBB20_6
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB20_9
.LBB20_6:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB20_8
# BB#7:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	xorl	%edx, %edx
	movq	-64(%rbp), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB20_9
.LBB20_8:                               # %if.end.17
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_transform_tool_check_active_item, .Lfunc_end20-gimp_transform_tool_check_active_item
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_transform_tool_bounds,@function
gimp_transform_tool_bounds:             # @gimp_transform_tool_bounds
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	352(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB21_1
	jmp	.LBB21_4
.LBB21_4:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jb	.LBB21_2
	jmp	.LBB21_3
.LBB21_1:                               # %sw.bb
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	movl	%eax, -36(%rbp)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 284(%rcx)
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 288(%rcx)
	movl	-64(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 292(%rcx)
	jmp	.LBB21_3
.LBB21_2:                               # %sw.bb.17
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	-8(%rbp), %rdi
	addq	$280, %rdi              # imm = 0x118
	movq	-8(%rbp), %rcx
	addq	$284, %rcx              # imm = 0x11C
	movq	-8(%rbp), %rdx
	addq	$288, %rdx              # imm = 0x120
	movq	-8(%rbp), %rsi
	addq	$292, %rsi              # imm = 0x124
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gimp_channel_bounds
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB21_3:                               # %sw.epilog
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	288(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 296(%rax)
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	292(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 304(%rax)
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	280(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-8(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	284(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 312(%rax)
	movl	-36(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_transform_tool_bounds, .Lfunc_end21-gimp_transform_tool_bounds
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_dialog,@function
gimp_transform_tool_dialog:             # @gimp_transform_tool_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 288(%rax)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_display_get_shell
	movabsq	$.L.str.10, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.11, %r9
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-40(%rbp), %rdi
	movq	64(%rdi), %rdi
	movq	-48(%rbp), %rbx
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	$-6, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$-5, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_tool_dialog_new
	movq	-24(%rbp), %rcx
	movq	%rax, 784(%rcx)
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_transform_tool_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rbx
	movq	784(%rbx), %rbx
	movq	-24(%rbp), %r14
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	*%rcx
.LBB22_3:                               # %return
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_transform_tool_dialog, .Lfunc_end22-gimp_transform_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_prepare,@function
gimp_transform_tool_prepare:            # @gimp_transform_tool_prepare
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 784(%rsi)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_transform_tool_get_active_item
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_display_get_shell
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tool_dialog_set_shell
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 304(%rax)
	je	.LBB23_4
# BB#3:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	304(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB23_4:                               # %if.end.22
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_transform_tool_prepare, .Lfunc_end23-gimp_transform_tool_prepare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_get_active_item,@function
gimp_transform_tool_get_active_item:    # @gimp_transform_tool_get_active_item
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	352(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB24_1
	jmp	.LBB24_6
.LBB24_6:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB24_2
	jmp	.LBB24_7
.LBB24_7:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB24_3
	jmp	.LBB24_4
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB24_5
.LBB24_2:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB24_5
.LBB24_3:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB24_5
.LBB24_4:                               # %sw.epilog
	movq	$0, -8(%rbp)
.LBB24_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_transform_tool_get_active_item, .Lfunc_end24-gimp_transform_tool_get_active_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_response,@function
gimp_transform_tool_response:           # @gimp_transform_tool_response
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$-5, %r8d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	je	.LBB25_6
	jmp	.LBB25_14
.LBB25_14:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB25_12
	jmp	.LBB25_1
.LBB25_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$0, -36(%rbp)
.LBB25_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -36(%rbp)
	jge	.LBB25_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB25_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	536(%rcx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 472(%rcx,%rax,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB25_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB25_2
.LBB25_5:                               # %for.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_transform_tool_bounds
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_transform_tool_recalc_matrix
	movq	-32(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB25_13
.LBB25_6:                               # %sw.bb.9
	jmp	.LBB25_7
.LBB25_7:                               # %do.body
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB25_9
# BB#8:                                 # %if.then
	jmp	.LBB25_10
.LBB25_9:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_transform_tool_response, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_13
.LBB25_10:                              # %if.end
	jmp	.LBB25_11
.LBB25_11:                              # %do.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_transform_tool_transform
	jmp	.LBB25_13
.LBB25_12:                              # %sw.default
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
.LBB25_13:                              # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_transform_tool_response, .Lfunc_end25-gimp_transform_tool_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_transform,@function
gimp_transform_tool_transform:          # @gimp_transform_tool_transform
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-112(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -112(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_transform_tool_check_active_item
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	callq	gimp_tool_message_literal
	leaq	-112(%rbp), %rdi
	callq	g_clear_error
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_tool_control
	jmp	.LBB26_22
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB26_4
# BB#3:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	784(%rax), %rdi
	callq	gimp_dialog_factory_hide_dialog
.LBB26_4:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$1, %esi
	callq	gimp_tool_control_push_preserve
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	328(%rdi), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	movl	$32, %esi
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-96(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-32(%rbp), %rdx
	movl	352(%rdx), %eax
	testl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB26_5
	jmp	.LBB26_23
.LBB26_23:                              # %if.end.14
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB26_9
	jmp	.LBB26_24
.LBB26_24:                              # %if.end.14
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB26_10
	jmp	.LBB26_11
.LBB26_5:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB26_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB26_8
# BB#7:                                 # %if.then.26
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-100(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_drawable_transform_cut
	movq	%rax, -64(%rbp)
.LBB26_8:                               # %if.end.29
	jmp	.LBB26_11
.LBB26_9:                               # %sw.bb.30
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, %rdi
	callq	tile_manager_ref
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	jmp	.LBB26_11
.LBB26_10:                              # %sw.bb.35
	jmp	.LBB26_11
.LBB26_11:                              # %sw.epilog
	leaq	-84(%rbp), %r9
	leaq	-88(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	336(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r10d
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB26_13
# BB#12:                                # %if.then.39
	movq	-64(%rbp), %rdi
	callq	tile_manager_unref
.LBB26_13:                              # %if.end.40
	movq	-32(%rbp), %rax
	movl	352(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	je	.LBB26_14
	jmp	.LBB26_25
.LBB26_25:                              # %if.end.40
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB26_17
	jmp	.LBB26_26
.LBB26_26:                              # %if.end.40
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB26_20
	jmp	.LBB26_21
.LBB26_14:                              # %sw.bb.42
	cmpq	$0, -80(%rbp)
	je	.LBB26_16
# BB#15:                                # %if.then.44
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-100(%rbp), %r8d
	callq	gimp_drawable_transform_paste
	movq	-80(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	tile_manager_unref
.LBB26_16:                              # %if.end.47
	jmp	.LBB26_21
.LBB26_17:                              # %sw.bb.48
	cmpq	$0, -80(%rbp)
	je	.LBB26_19
# BB#18:                                # %if.then.50
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_channel_push_undo
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	xorl	%esi, %esi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_set_tiles
	movq	-80(%rbp), %rdi
	callq	tile_manager_unref
.LBB26_19:                              # %if.end.58
	jmp	.LBB26_21
.LBB26_20:                              # %sw.bb.59
	jmp	.LBB26_21
.LBB26_21:                              # %sw.epilog.60
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_transform_tool_undo_get_type
	movl	$74, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
	movabsq	$.L.str.14, %r9
	movq	-8(%rbp), %rdi
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	movq	-48(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_group_end
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_tool_control_pop_preserve
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_tool_control
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	gimp_unset_busy
	movq	-48(%rbp), %rdi
	callq	gimp_image_flush
.LBB26_22:                              # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_transform_tool_transform, .Lfunc_end26-gimp_transform_tool_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_set_function,@function
gimp_transform_tool_set_function:       # @gimp_transform_tool_set_function
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	cmpl	664(%rdi), %esi
	je	.LBB27_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	cmpq	$0, 688(%rdx,%rax,8)
	je	.LBB27_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB27_4
# BB#3:                                 # %if.then.6
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	688(%rdx,%rax,8), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB27_4:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 664(%rcx)
	movq	-8(%rbp), %rcx
	movl	664(%rcx), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	cmpq	$0, 688(%rdx,%rcx,8)
	je	.LBB27_7
# BB#5:                                 # %land.lhs.true.17
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB27_7
# BB#6:                                 # %if.then.22
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	664(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	688(%rdx,%rax,8), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB27_7:                               # %if.end.27
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.28
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_transform_tool_set_function, .Lfunc_end27-gimp_transform_tool_set_function
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_tool_handles_recalc,@function
gimp_transform_tool_handles_recalc:     # @gimp_transform_tool_handles_recalc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movsd	320(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	328(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_display_shell_transform_xy
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movsd	336(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	344(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_display_shell_transform_xy
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movsd	352(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	360(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_display_shell_transform_xy
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movsd	368(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	376(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_display_shell_transform_xy
	movl	-36(%rbp), %r8d
	cmpl	-44(%rbp), %r8d
	jge	.LBB28_2
# BB#1:                                 # %cond.true
	movl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB28_3:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	-52(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jge	.LBB28_5
# BB#4:                                 # %cond.true.5
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB28_6
.LBB28_5:                               # %cond.false.6
	movl	-60(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB28_6:                               # %cond.end.7
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB28_11
# BB#7:                                 # %cond.true.10
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB28_9
# BB#8:                                 # %cond.true.12
	movl	-36(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB28_10
.LBB28_9:                               # %cond.false.13
	movl	-44(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB28_10:                              # %cond.end.14
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB28_15
.LBB28_11:                              # %cond.false.16
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB28_13
# BB#12:                                # %cond.true.18
	movl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB28_14
.LBB28_13:                              # %cond.false.19
	movl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB28_14:                              # %cond.end.20
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB28_15:                              # %cond.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB28_17
# BB#16:                                # %cond.true.25
	movl	-40(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB28_18
.LBB28_17:                              # %cond.false.26
	movl	-48(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB28_18:                              # %cond.end.27
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	-56(%rbp), %ecx
	cmpl	-64(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jge	.LBB28_20
# BB#19:                                # %cond.true.30
	movl	-56(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB28_21
.LBB28_20:                              # %cond.false.31
	movl	-64(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB28_21:                              # %cond.end.32
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-112(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB28_26
# BB#22:                                # %cond.true.35
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB28_24
# BB#23:                                # %cond.true.37
	movl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB28_25
.LBB28_24:                              # %cond.false.38
	movl	-48(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB28_25:                              # %cond.end.39
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB28_30
.LBB28_26:                              # %cond.false.41
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB28_28
# BB#27:                                # %cond.true.43
	movl	-56(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB28_29
.LBB28_28:                              # %cond.false.44
	movl	-64(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB28_29:                              # %cond.end.45
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB28_30:                              # %cond.end.47
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB28_32
# BB#31:                                # %cond.true.50
	movl	-36(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB28_33
.LBB28_32:                              # %cond.false.51
	movl	-44(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB28_33:                              # %cond.end.52
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	-52(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jle	.LBB28_35
# BB#34:                                # %cond.true.55
	movl	-52(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB28_36
.LBB28_35:                              # %cond.false.56
	movl	-60(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB28_36:                              # %cond.end.57
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB28_41
# BB#37:                                # %cond.true.60
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB28_39
# BB#38:                                # %cond.true.62
	movl	-36(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB28_40
.LBB28_39:                              # %cond.false.63
	movl	-44(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB28_40:                              # %cond.end.64
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB28_45
.LBB28_41:                              # %cond.false.66
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB28_43
# BB#42:                                # %cond.true.68
	movl	-52(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB28_44
.LBB28_43:                              # %cond.false.69
	movl	-60(%rbp), %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB28_44:                              # %cond.end.70
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB28_45:                              # %cond.end.72
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB28_47
# BB#46:                                # %cond.true.75
	movl	-40(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB28_48
.LBB28_47:                              # %cond.false.76
	movl	-48(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB28_48:                              # %cond.end.77
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	-56(%rbp), %ecx
	cmpl	-64(%rbp), %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jle	.LBB28_50
# BB#49:                                # %cond.true.80
	movl	-56(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB28_51
.LBB28_50:                              # %cond.false.81
	movl	-64(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB28_51:                              # %cond.end.82
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	-160(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB28_56
# BB#52:                                # %cond.true.85
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB28_54
# BB#53:                                # %cond.true.87
	movl	-40(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB28_55
.LBB28_54:                              # %cond.false.88
	movl	-48(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB28_55:                              # %cond.end.89
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB28_60
.LBB28_56:                              # %cond.false.91
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB28_58
# BB#57:                                # %cond.true.93
	movl	-56(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB28_59
.LBB28_58:                              # %cond.false.94
	movl	-64(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB28_59:                              # %cond.end.95
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB28_60:                              # %cond.end.97
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$25, %eax
	jle	.LBB28_62
# BB#61:                                # %cond.true.100
	movl	$25, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB28_66
.LBB28_62:                              # %cond.false.101
	movl	$3, %eax
	movl	-76(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-184(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$6, %eax
	jge	.LBB28_64
# BB#63:                                # %cond.true.105
	movl	$6, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB28_65
.LBB28_64:                              # %cond.false.106
	movl	$3, %eax
	movl	-76(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-192(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB28_65:                              # %cond.end.109
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB28_66:                              # %cond.end.111
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$25, %eax
	jle	.LBB28_68
# BB#67:                                # %cond.true.116
	movl	$25, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB28_72
.LBB28_68:                              # %cond.false.117
	movl	$3, %eax
	movl	-80(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-200(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$6, %eax
	jge	.LBB28_70
# BB#69:                                # %cond.true.121
	movl	$6, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB28_71
.LBB28_70:                              # %cond.false.122
	movl	$3, %eax
	movl	-80(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-208(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB28_71:                              # %cond.end.125
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB28_72:                              # %cond.end.127
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_transform_tool_handles_recalc, .Lfunc_end28-gimp_transform_tool_handles_recalc
	.cfi_endproc

	.type	gimp_transform_tool_get_type.g_define_type_id__volatile,@object # @gimp_transform_tool_get_type.g_define_type_id__volatile
	.local	gimp_transform_tool_get_type.g_define_type_id__volatile
	.comm	gimp_transform_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTransformTool"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_transform_tool_recalc_matrix,@object # @__func__.gimp_transform_tool_recalc_matrix
.L__func__.gimp_transform_tool_recalc_matrix:
	.asciz	"gimp_transform_tool_recalc_matrix"
	.size	.L__func__.gimp_transform_tool_recalc_matrix, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TRANSFORM_TOOL (tr_tool)"
	.size	.L.str.2, 33

	.type	gimp_transform_tool_parent_class,@object # @gimp_transform_tool_parent_class
	.local	gimp_transform_tool_parent_class
	.comm	gimp_transform_tool_parent_class,8,8
	.type	GimpTransformTool_private_offset,@object # @GimpTransformTool_private_offset
	.local	GimpTransformTool_private_offset
	.comm	GimpTransformTool_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The selection does not intersect with the layer."
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"There is no layer to transform."
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"There is no selection to transform."
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The selection's pixels are locked."
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"There is no path to transform."
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The active path's strokes are locked."
	.size	.L.str.9, 38

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-reset"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-cancel"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"response"
	.size	.L.str.12, 9

	.type	.L__func__.gimp_transform_tool_response,@object # @__func__.gimp_transform_tool_response
.L__func__.gimp_transform_tool_response:
	.asciz	"gimp_transform_tool_response"
	.size	.L__func__.gimp_transform_tool_response, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tool->display != NULL"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"transform-tool"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"constrain"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"type"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"direction"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tools/tools-transform-preview-opacity-set"
	.size	.L.str.18, 42

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Transforming"
	.size	.L.str.19, 13

	.type	.L__func__.gimp_transform_tool_transform_bounding_box,@object # @__func__.gimp_transform_tool_transform_bounding_box
.L__func__.gimp_transform_tool_transform_bounding_box:
	.asciz	"gimp_transform_tool_transform_bounding_box"
	.size	.L__func__.gimp_transform_tool_transform_bounding_box, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
