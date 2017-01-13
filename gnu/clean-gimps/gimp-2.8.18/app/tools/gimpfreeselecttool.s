	.text
	.file	"gimpfreeselecttool.bc"
	.globl	gimp_free_select_tool_get_type
	.align	16, 0x90
	.type	gimp_free_select_tool_get_type,@function
gimp_free_select_tool_get_type:         # @gimp_free_select_tool_get_type
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
	movq	gimp_free_select_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_free_select_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_selection_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_free_select_tool_class_intern_init, %rdi
	movl	$264, %r8d              # imm = 0x108
	movabsq	$gimp_free_select_tool_init, %rcx
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
	movabsq	$gimp_free_select_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_free_select_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_free_select_tool_get_type, .Lfunc_end0-gimp_free_select_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_class_intern_init,@function
gimp_free_select_tool_class_intern_init: # @gimp_free_select_tool_class_intern_init
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
	movq	%rax, gimp_free_select_tool_parent_class
	cmpl	$0, GimpFreeSelectTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFreeSelectTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_free_select_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_free_select_tool_class_intern_init, .Lfunc_end1-gimp_free_select_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_init,@function
gimp_free_select_tool_init:             # @gimp_free_select_tool_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_click
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$3, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 92(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 128(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_free_select_tool_init, .Lfunc_end2-gimp_free_select_tool_init
	.cfi_endproc

	.globl	gimp_free_select_tool_register
	.align	16, 0x90
	.type	gimp_free_select_tool_register,@function
gimp_free_select_tool_register:         # @gimp_free_select_tool_register
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
	callq	gimp_free_select_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_selection_options_gui, %rdx
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
	.size	gimp_free_select_tool_register, .Lfunc_end3-gimp_free_select_tool_register
	.cfi_endproc

	.globl	gimp_free_select_tool_select
	.align	16, 0x90
	.type	gimp_free_select_tool_select,@function
gimp_free_select_tool_select:           # @gimp_free_select_tool_select
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_free_select_tool_get_type
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_free_select_tool_select, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_free_select_tool_select, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB4_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_free_select_tool_select, .Lfunc_end4-gimp_free_select_tool_select
	.cfi_endproc

	.globl	gimp_free_select_tool_get_points
	.align	16, 0x90
	.type	gimp_free_select_tool_get_points,@function
gimp_free_select_tool_get_points:       # @gimp_free_select_tool_get_points
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_free_select_tool_get_points, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_7
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.LBB5_7:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_free_select_tool_get_points, .Lfunc_end5-gimp_free_select_tool_get_points
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_class_init,@function
gimp_free_select_tool_class_init:       # @gimp_free_select_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
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
	movl	$200, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_free_select_tool_real_select, %rdi
	movabsq	$gimp_free_select_tool_draw, %rdx
	movabsq	$gimp_free_select_tool_active_modifier_key, %r8
	movabsq	$gimp_free_select_tool_modifier_key, %r9
	movabsq	$gimp_free_select_tool_key_press, %r10
	movabsq	$gimp_free_select_tool_motion, %r11
	movabsq	$gimp_free_select_tool_button_release, %rbx
	movabsq	$gimp_free_select_tool_button_press, %r14
	movabsq	$gimp_free_select_tool_cursor_update, %r15
	movabsq	$gimp_free_select_tool_oper_update, %r12
	movabsq	$gimp_free_select_tool_control, %r13
	movabsq	$gimp_free_select_tool_finalize, %rcx
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 184(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 256(%rax)
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
	movq	%r8, 240(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 288(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_free_select_tool_class_init, .Lfunc_end6-gimp_free_select_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_finalize,@function
gimp_free_select_tool_finalize:         # @gimp_free_select_tool_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_free_select_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_free_select_tool_finalize, .Lfunc_end7-gimp_free_select_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_control,@function
gimp_free_select_tool_control:          # @gimp_free_select_tool_control
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, -64(%rbp)         # 4-byte Spill
	jb	.LBB8_1
	jmp	.LBB8_4
.LBB8_4:                                # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_3
.LBB8_1:                                # %sw.bb
	jmp	.LBB8_3
.LBB8_2:                                # %sw.bb.4
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 92(%rax)
.LBB8_3:                                # %sw.epilog
	movq	gimp_free_select_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_free_select_tool_control, .Lfunc_end8-gimp_free_select_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_oper_update,@function
gimp_free_select_tool_oper_update:      # @gimp_free_select_tool_oper_update
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gimp_free_select_tool_handle_segment_selection
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	gimp_free_select_tool_should_close
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 76(%rax)
	je	.LBB9_4
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -52(%rbp)
	je	.LBB9_4
.LBB9_3:                                # %lor.lhs.false.12
	cmpl	$0, -24(%rbp)
	jne	.LBB9_5
.LBB9_4:                                # %if.then
	movq	-48(%rbp), %rax
	movl	$0, 56(%rax)
	jmp	.LBB9_12
.LBB9_5:                                # %if.else
	movq	-48(%rbp), %rax
	movl	$1, 56(%rax)
	cmpl	$0, -52(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.16
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 48(%rax)
	jmp	.LBB9_11
.LBB9_7:                                # %if.else.17
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 100(%rax)
	je	.LBB9_10
# BB#8:                                 # %land.lhs.true.25
	movq	-48(%rbp), %rax
	cmpl	$0, 76(%rax)
	jle	.LBB9_10
# BB#9:                                 # %if.then.28
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_free_select_tool_get_last_point
	movl	$12, %edx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rsi
	addq	$40, %rsi
	movq	-48(%rbp), %rdi
	addq	$40, %rdi
	addq	$8, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	gimp_constrain_line
.LBB9_10:                               # %if.end
	jmp	.LBB9_11
.LBB9_11:                               # %if.end.33
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.34
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB9_14
# BB#13:                                # %if.then.39
	movq	gimp_free_select_tool_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.42
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-24(%rbp), %ecx
	callq	gimp_free_select_tool_status_update
.LBB9_15:                               # %if.end.43
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_free_select_tool_oper_update, .Lfunc_end9-gimp_free_select_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_cursor_update,@function
gimp_free_select_tool_cursor_update:    # @gimp_free_select_tool_cursor_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	gimp_free_select_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	jmp	.LBB10_7
.LBB10_2:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	gimp_free_select_tool_should_close
	cmpl	$0, %eax
	jne	.LBB10_5
# BB#4:                                 # %if.then.8
	movl	$5, -44(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.9
	movl	$0, -44(%rbp)
.LBB10_6:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_control_get_cursor
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_tool_control_get_tool_cursor
	movl	-44(%rbp), %r8d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_tool_set_cursor
.LBB10_7:                               # %if.end.13
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_free_select_tool_cursor_update, .Lfunc_end10-gimp_free_select_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_button_press,@function
gimp_free_select_tool_button_press:     # @gimp_free_select_tool_button_press
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB11_3
# BB#2:                                 # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_tool_control
.LBB11_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB11_7
# BB#4:                                 # %if.then.15
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_selection_tool_start_edit
	cmpl	$0, %eax
	je	.LBB11_6
# BB#5:                                 # %if.then.20
	jmp	.LBB11_14
.LBB11_6:                               # %if.end.21
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_start
	movq	-72(%rbp), %rax
	movl	352(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 96(%rax)
.LBB11_7:                               # %if.end.23
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-56(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	je	.LBB11_9
# BB#8:                                 # %if.then.26
	movq	-56(%rbp), %rdi
	callq	gimp_free_select_tool_prepare_for_move
	jmp	.LBB11_13
.LBB11_9:                               # %if.else
	movq	-64(%rbp), %rax
	cmpl	$0, 76(%rax)
	jle	.LBB11_11
# BB#10:                                # %if.then.28
	movq	-64(%rbp), %rax
	movq	40(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.29
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB11_12:                              # %if.end.32
	movq	-56(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_free_select_tool_add_point
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	76(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	gimp_free_select_tool_add_segment_index
.LBB11_13:                              # %if.end.36
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB11_14:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_free_select_tool_button_press, .Lfunc_end11-gimp_free_select_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_button_release,@function
gimp_free_select_tool_button_release:   # @gimp_free_select_tool_button_release
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	-28(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_6
.LBB12_6:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_7
.LBB12_7:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	ja	.LBB12_4
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movq	-56(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	gimp_free_select_tool_handle_click
	jmp	.LBB12_5
.LBB12_2:                               # %sw.bb.6
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_free_select_tool_handle_normal_release
	jmp	.LBB12_5
.LBB12_3:                               # %sw.bb.7
	movq	-48(%rbp), %rdi
	callq	gimp_free_select_tool_handle_cancel
	jmp	.LBB12_5
.LBB12_4:                               # %sw.default
	jmp	.LBB12_5
.LBB12_5:                               # %sw.epilog
	movq	-56(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_free_select_tool_button_release, .Lfunc_end12-gimp_free_select_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_motion,@function
gimp_free_select_tool_motion:           # @gimp_free_select_tool_motion
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_free_select_tool_update_motion
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_resume
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_free_select_tool_motion, .Lfunc_end13-gimp_free_select_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_key_press,@function
gimp_free_select_tool_key_press:        # @gimp_free_select_tool_key_press
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %r8d
	subl	$65076, %r8d            # imm = 0xFE34
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_8
.LBB14_8:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_9
.LBB14_9:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB14_3
	jmp	.LBB14_10
.LBB14_10:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_4
.LBB14_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	callq	gimp_free_select_tool_remove_last_segment
	movl	$1, -4(%rbp)
	jmp	.LBB14_6
.LBB14_2:                               # %sw.bb.2
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_free_select_tool_commit
	movl	$1, -4(%rbp)
	jmp	.LBB14_6
.LBB14_3:                               # %sw.bb.3
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_tool_control
	movl	$1, -4(%rbp)
	jmp	.LBB14_6
.LBB14_4:                               # %sw.default
	jmp	.LBB14_5
.LBB14_5:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB14_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_free_select_tool_key_press, .Lfunc_end14-gimp_free_select_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_modifier_key,@function
gimp_free_select_tool_modifier_key:     # @gimp_free_select_tool_modifier_key
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-68(%rbp), %esi         # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	movl	%ecx, %eax
	cmovnel	%edx, %eax
	movq	-48(%rbp), %rdi
	movl	%eax, 100(%rdi)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, 104(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB15_2:                               # %if.end
	movq	gimp_free_select_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_free_select_tool_modifier_key, .Lfunc_end15-gimp_free_select_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_active_modifier_key,@function
gimp_free_select_tool_active_modifier_key: # @gimp_free_select_tool_active_modifier_key
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-68(%rbp), %esi         # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	cmovnel	%edx, %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, 100(%rdi)
	movl	-20(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movsd	112(%rsi), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movsd	120(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_free_select_tool_update_motion
.LBB16_4:                               # %if.end.12
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_resume
	movq	gimp_free_select_tool_parent_class, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
.LBB16_5:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_free_select_tool_active_modifier_key, .Lfunc_end16-gimp_free_select_tool_active_modifier_key
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4630263366890291200     # double 36
.LCPI17_1:
	.quad	4665778142223269888     # double 8281
	.text
	.align	16, 0x90
	.type	gimp_free_select_tool_draw,@function
gimp_free_select_tool_draw:             # @gimp_free_select_tool_draw
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	callq	memset
	movq	-24(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	-24(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_29
.LBB17_2:                               # %if.end
	xorl	%edx, %edx
	leaq	-112(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_free_select_tool_should_close
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	76(%rax), %edx
	callq	gimp_draw_tool_add_lines
	movq	-8(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
	movb	$1, %r8b
	cmpl	$0, -44(%rbp)
	movb	%r8b, -201(%rbp)        # 1-byte Spill
	jne	.LBB17_4
# BB#3:                                 # %lor.rhs
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -201(%rbp)         # 1-byte Spill
.LBB17_4:                               # %lor.end
	movb	-201(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_27
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB17_27
# BB#6:                                 # %if.then.18
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB17_12
# BB#7:                                 # %land.lhs.true.22
	cmpl	$0, -44(%rbp)
	je	.LBB17_12
# BB#8:                                 # %if.then.24
	movq	-24(%rbp), %rax
	cmpl	$1, 92(%rax)
	jge	.LBB17_10
# BB#9:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false
	movl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB17_11
.LBB17_11:                              # %cond.end
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	jmp	.LBB17_13
.LBB17_12:                              # %if.else
	movq	-24(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -120(%rbp)
.LBB17_13:                              # %if.end.27
	movl	$0, -116(%rbp)
.LBB17_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB17_26
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB17_14 Depth=1
	xorps	%xmm0, %xmm0
	movq	$0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movl	$-1, -140(%rbp)
	movslq	-116(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	80(%rcx), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	64(%rcx), %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	120(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-128(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	ucomisd	-136(%rbp), %xmm1
	jbe	.LBB17_17
# BB#16:                                # %if.then.41
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	$3, -140(%rbp)
	jmp	.LBB17_20
.LBB17_17:                              # %if.else.42
                                        #   in Loop: Header=BB17_14 Depth=1
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB17_19
# BB#18:                                # %if.then.44
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	$2, -140(%rbp)
.LBB17_19:                              # %if.end.45
                                        #   in Loop: Header=BB17_14 Depth=1
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.46
                                        #   in Loop: Header=BB17_14 Depth=1
	cmpl	$-1, -140(%rbp)
	je	.LBB17_24
# BB#21:                                # %if.then.48
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	$13, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movl	-140(%rbp), %esi
	movq	-128(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-128(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -152(%rbp)
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB17_23
# BB#22:                                # %if.then.53
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	$1, %esi
	movq	-152(%rbp), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB17_23:                              # %if.end.54
                                        #   in Loop: Header=BB17_14 Depth=1
	jmp	.LBB17_24
.LBB17_24:                              # %if.end.55
                                        #   in Loop: Header=BB17_14 Depth=1
	jmp	.LBB17_25
.LBB17_25:                              # %for.inc
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB17_14
.LBB17_26:                              # %for.end
	jmp	.LBB17_27
.LBB17_27:                              # %if.end.56
	movq	-24(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB17_29
# BB#28:                                # %if.then.58
	movq	-24(%rbp), %rax
	movl	76(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdx
	shlq	$4, %rax
	addq	64(%rdx), %rax
	movq	(%rax), %rdx
	movq	%rdx, -168(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movq	-8(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movq	-8(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
.LBB17_29:                              # %if.end.69
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_free_select_tool_draw, .Lfunc_end17-gimp_free_select_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_real_select,@function
gimp_free_select_tool_real_select:      # @gimp_free_select_tool_real_select
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.18, %rsi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movl	76(%rdx), %edx
	movq	-32(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	-32(%rbp), %rdi
	movl	96(%rdi), %r8d
	movq	-24(%rbp), %rdi
	movl	356(%rdi), %r9d
	movq	-24(%rbp), %rdi
	movl	360(%rdi), %r10d
	movq	-24(%rbp), %rdi
	movsd	368(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	368(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_channel_select_polygon
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tool_control
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_free_select_tool_real_select, .Lfunc_end18-gimp_free_select_tool_real_select
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4630263366890291200     # double 36
	.text
	.align	16, 0x90
	.type	gimp_free_select_tool_handle_segment_selection,@function
gimp_free_select_tool_handle_segment_selection: # @gimp_free_select_tool_handle_segment_selection
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$-1, -52(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 56(%rax)
	je	.LBB19_9
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB19_9
# BB#2:                                 # %if.then
	movl	$0, -56(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jge	.LBB19_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rcx
	movslq	(%rcx,%rax,4), %rax
	movq	-32(%rbp), %rcx
	shlq	$4, %rax
	addq	64(%rcx), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB19_6:                               # %if.end
                                        #   in Loop: Header=BB19_3 Depth=1
	jmp	.LBB19_7
.LBB19_7:                               # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB19_3
.LBB19_8:                               # %for.end
	jmp	.LBB19_9
.LBB19_9:                               # %if.end.15
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB19_11
# BB#10:                                # %if.then.18
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB19_11:                              # %if.end.20
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_free_select_tool_handle_segment_selection, .Lfunc_end19-gimp_free_select_tool_handle_segment_selection
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI20_1:
	.quad	4630263366890291200     # double 36
	.text
	.align	16, 0x90
	.type	gimp_free_select_tool_should_close,@function
gimp_free_select_tool_should_close:     # @gimp_free_select_tool_should_close
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB20_3
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$0, 92(%rax)
	jle	.LBB20_3
# BB#2:                                 # %lor.lhs.false.2
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 56(%rax)
	jne	.LBB20_4
.LBB20_3:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_12
.LBB20_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rdi
	movq	64(%rdi), %rdi
	movsd	(%rdi), %xmm2           # xmm2 = mem[0],zero
	movq	-48(%rbp), %rdi
	movq	64(%rdi), %rdi
	movsd	8(%rdi), %xmm3          # xmm3 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_draw_tool_calc_distance_square
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB20_8
# BB#5:                                 # %if.then.15
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	128(%rcx), %eax
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	136(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	144(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_draw_tool_calc_distance_square
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movsd	%xmm0, -88(%rbp)
	callq	gimp_free_select_tool_get_double_click_settings
	xorl	%edx, %edx
	movb	%dl, %r8b
	movl	-76(%rbp), %edx
	cmpl	-68(%rbp), %edx
	movb	%r8b, -121(%rbp)        # 1-byte Spill
	jge	.LBB20_7
# BB#6:                                 # %land.rhs
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB20_7:                               # %land.end
	movb	-121(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
.LBB20_8:                               # %if.end.27
	movq	-48(%rbp), %rax
	cmpl	$0, 104(%rax)
	jne	.LBB20_10
# BB#9:                                 # %land.lhs.true
	movb	$1, %al
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	movb	%al, -122(%rbp)         # 1-byte Spill
	ja	.LBB20_11
.LBB20_10:                              # %lor.rhs
	cmpl	$0, -52(%rbp)
	setne	%al
	movb	%al, -122(%rbp)         # 1-byte Spill
.LBB20_11:                              # %lor.end
	movb	-122(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB20_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_free_select_tool_should_close, .Lfunc_end20-gimp_free_select_tool_should_close
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_is_point_grabbed,@function
gimp_free_select_tool_is_point_grabbed: # @gimp_free_select_tool_is_point_grabbed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_free_select_tool_is_point_grabbed, .Lfunc_end21-gimp_free_select_tool_is_point_grabbed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_get_last_point,@function
gimp_free_select_tool_get_last_point:   # @gimp_free_select_tool_get_last_point
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	subl	$1, %ecx
	callq	gimp_free_select_tool_get_segment_point
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_free_select_tool_get_last_point, .Lfunc_end22-gimp_free_select_tool_get_last_point
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_status_update,@function
gimp_free_select_tool_status_update:    # @gimp_free_select_tool_status_update
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -28(%rbp)
	je	.LBB23_13
# BB#1:                                 # %if.then
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	je	.LBB23_6
# BB#2:                                 # %if.then.6
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	gimp_free_select_tool_should_close
	cmpl	$0, %eax
	je	.LBB23_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.else
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
.LBB23_5:                               # %if.end
	jmp	.LBB23_10
.LBB23_6:                               # %if.else.12
	movq	-48(%rbp), %rax
	cmpl	$3, 92(%rax)
	jl	.LBB23_8
# BB#7:                                 # %if.then.13
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB23_9
.LBB23_8:                               # %if.else.15
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
.LBB23_9:                               # %if.end.17
	jmp	.LBB23_10
.LBB23_10:                              # %if.end.18
	cmpq	$0, -56(%rbp)
	je	.LBB23_12
# BB#11:                                # %if.then.20
	movabsq	$.L.str.17, %rdx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
.LBB23_12:                              # %if.end.21
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.22
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_free_select_tool_status_update, .Lfunc_end23-gimp_free_select_tool_status_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_get_double_click_settings,@function
gimp_free_select_tool_get_double_click_settings: # @gimp_free_select_tool_get_double_click_settings
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gdk_screen_get_default
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_settings_get_for_screen
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
.LBB24_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_free_select_tool_get_double_click_settings, .Lfunc_end24-gimp_free_select_tool_get_double_click_settings
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_get_segment_point,@function
gimp_free_select_tool_get_segment_point: # @gimp_free_select_tool_get_segment_point
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	80(%rdx), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	-40(%rbp), %rdx
	shlq	$4, %rax
	addq	64(%rdx), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	80(%rdx), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	-40(%rbp), %rdx
	shlq	$4, %rax
	addq	64(%rdx), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_free_select_tool_get_segment_point, .Lfunc_end25-gimp_free_select_tool_get_segment_point
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_prepare_for_move,@function
gimp_free_select_tool_prepare_for_move: # @gimp_free_select_tool_prepare_for_move
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB26_4
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	callq	gimp_free_select_tool_get_segment
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	cmpl	24(%rax), %ecx
	jle	.LBB26_3
# BB#2:                                 # %if.then.5
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_realloc
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB26_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB26_4:                               # %if.end.12
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB26_8
# BB#5:                                 # %if.then.17
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	addl	$1, %r8d
	callq	gimp_free_select_tool_get_segment
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	cmpl	28(%rax), %ecx
	jle	.LBB26_7
# BB#6:                                 # %if.then.22
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_realloc
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB26_7:                               # %if.end.28
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB26_8:                               # %if.end.32
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB26_13
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 92(%rax)
	jne	.LBB26_13
# BB#10:                                # %if.then.39
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB26_12
# BB#11:                                # %if.then.43
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$1, 24(%rcx)
	callq	g_malloc0_n
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB26_12:                              # %if.end.47
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
.LBB26_13:                              # %if.end.49
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_free_select_tool_prepare_for_move, .Lfunc_end26-gimp_free_select_tool_prepare_for_move
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_add_point,@function
gimp_free_select_tool_add_point:        # @gimp_free_select_tool_add_point
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	72(%rax), %ecx
	jl	.LBB27_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	72(%rax), %ecx
	addl	$1024, %ecx             # imm = 0x400
	movl	%ecx, 72(%rax)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rdx
	movslq	72(%rdx), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_realloc
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
.LBB27_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-32(%rbp), %rcx
	shlq	$4, %rax
	addq	64(%rcx), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-32(%rbp), %rcx
	shlq	$4, %rax
	addq	64(%rcx), %rax
	movsd	%xmm0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	addl	$1, %edx
	movl	%edx, 76(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_free_select_tool_add_point, .Lfunc_end27-gimp_free_select_tool_add_point
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_add_segment_index,@function
gimp_free_select_tool_add_segment_index: # @gimp_free_select_tool_add_segment_index
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	88(%rax), %ecx
	jl	.LBB28_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	addl	$1024, %ecx             # imm = 0x400
	movl	%ecx, 88(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rdx
	movslq	88(%rdx), %rdx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_realloc
	movq	-24(%rbp), %rdx
	movq	%rax, 80(%rdx)
.LBB28_2:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	92(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movq	-24(%rbp), %rcx
	movl	92(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 92(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_free_select_tool_add_segment_index, .Lfunc_end28-gimp_free_select_tool_add_segment_index
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_get_segment,@function
gimp_free_select_tool_get_segment:      # @gimp_free_select_tool_get_segment
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	80(%rdx), %rdx
	movslq	(%rdx,%rax,4), %rax
	movq	-40(%rbp), %rdx
	shlq	$4, %rax
	addq	64(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movslq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	80(%rdx), %rdx
	movl	(%rdx,%rax,4), %ecx
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	80(%rdx), %rdx
	subl	(%rdx,%rax,4), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_free_select_tool_get_segment, .Lfunc_end29-gimp_free_select_tool_get_segment
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_handle_click,@function
gimp_free_select_tool_handle_click:     # @gimp_free_select_tool_handle_click
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, %rdi
	callq	floating_sel_anchor
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tool_control
	jmp	.LBB30_7
.LBB30_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	jne	.LBB30_4
# BB#3:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_finish_line_segment
.LBB30_4:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gimp_free_select_tool_should_close
	cmpl	$0, %eax
	je	.LBB30_6
# BB#5:                                 # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_revert_to_saved_state
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_free_select_tool_commit
.LBB30_6:                               # %if.end.13
	movl	$64, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movq	-40(%rbp), %rcx
	addq	$136, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB30_7:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_free_select_tool_handle_click, .Lfunc_end30-gimp_free_select_tool_handle_click
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_handle_normal_release,@function
gimp_free_select_tool_handle_normal_release: # @gimp_free_select_tool_handle_normal_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_finish_free_segment
.LBB31_2:                               # %if.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	gimp_free_select_tool_should_close
	cmpl	$0, %eax
	je	.LBB31_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_free_select_tool_commit
.LBB31_4:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_free_select_tool_handle_normal_release, .Lfunc_end31-gimp_free_select_tool_handle_normal_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_handle_cancel,@function
gimp_free_select_tool_handle_cancel:    # @gimp_free_select_tool_handle_cancel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_revert_to_saved_state
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_remove_last_segment
.LBB32_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_free_select_tool_handle_cancel, .Lfunc_end32-gimp_free_select_tool_handle_cancel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_finish_line_segment,@function
gimp_free_select_tool_finish_line_segment: # @gimp_free_select_tool_finish_line_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_revert_to_last_segment
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_free_select_tool_finish_line_segment, .Lfunc_end33-gimp_free_select_tool_finish_line_segment
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_revert_to_saved_state,@function
gimp_free_select_tool_revert_to_saved_state: # @gimp_free_select_tool_revert_to_saved_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_9
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB34_4
# BB#3:                                 # %if.then.3
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	callq	gimp_free_select_tool_get_segment
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-28(%rbp), %rsi
	shlq	$4, %rsi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
.LBB34_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB34_6
# BB#5:                                 # %if.then.11
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	addl	$1, %r8d
	callq	gimp_free_select_tool_get_segment
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movslq	-28(%rbp), %rsi
	shlq	$4, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
.LBB34_6:                               # %if.end.16
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB34_9
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 92(%rax)
	jne	.LBB34_9
# BB#8:                                 # %if.then.23
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
.LBB34_9:                               # %if.end.25
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_free_select_tool_revert_to_saved_state, .Lfunc_end34-gimp_free_select_tool_revert_to_saved_state
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_commit,@function
gimp_free_select_tool_commit:           # @gimp_free_select_tool_commit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 76(%rax)
	jl	.LBB35_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_free_select_tool_select
.LBB35_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_free_select_tool_commit, .Lfunc_end35-gimp_free_select_tool_commit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_revert_to_last_segment,@function
gimp_free_select_tool_revert_to_last_segment: # @gimp_free_select_tool_revert_to_last_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rsi
	movl	(%rsi,%rax,4), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 76(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_free_select_tool_revert_to_last_segment, .Lfunc_end36-gimp_free_select_tool_revert_to_last_segment
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_finish_free_segment,@function
gimp_free_select_tool_finish_free_segment: # @gimp_free_select_tool_finish_free_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	76(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	gimp_free_select_tool_add_segment_index
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_free_select_tool_finish_free_segment, .Lfunc_end37-gimp_free_select_tool_finish_free_segment
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_remove_last_segment,@function
gimp_free_select_tool_remove_last_segment: # @gimp_free_select_tool_remove_last_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jle	.LBB38_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 92(%rax)
.LBB38_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jg	.LBB38_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gimp_tool_control
	jmp	.LBB38_5
.LBB38_4:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_revert_to_last_segment
.LBB38_5:                               # %if.end.12
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_resume
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_free_select_tool_remove_last_segment, .Lfunc_end38-gimp_free_select_tool_remove_last_segment
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_update_motion,@function
gimp_free_select_tool_update_motion:    # @gimp_free_select_tool_update_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_free_select_tool_is_point_grabbed
	cmpl	$0, %eax
	je	.LBB39_10
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 100(%rax)
	je	.LBB39_7
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$1, 92(%rax)
	jle	.LBB39_7
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB39_5
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB39_6
.LBB39_5:                               # %if.else
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB39_6:                               # %if.end
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %ecx
	callq	gimp_free_select_tool_get_segment_point
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$12, %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_constrain_line
.LBB39_7:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_free_select_tool_move_segment_vertex_to
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB39_9
# BB#8:                                 # %if.then.14
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
.LBB39_9:                               # %if.end.16
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.17
	movq	-32(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_free_select_tool_add_point
.LBB39_11:                              # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_free_select_tool_update_motion, .Lfunc_end39-gimp_free_select_tool_update_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_move_segment_vertex_to,@function
gimp_free_select_tool_move_segment_vertex_to: # @gimp_free_select_tool_move_segment_vertex_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_free_select_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB40_2
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %r8d
	callq	gimp_free_select_tool_get_segment
	leaq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %r9
	movq	8(%r9), %r9
	movl	-84(%rbp), %ecx
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rdx), %xmm3          # xmm3 = mem[0],zero
	movq	%r9, %rdx
	callq	gimp_free_select_tool_fit_segment
.LBB40_2:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	92(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB40_4
# BB#3:                                 # %if.then.5
	leaq	-64(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	(%rax), %r8d
	addl	$1, %r8d
	callq	gimp_free_select_tool_get_segment
	leaq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %r9
	movq	16(%r9), %r9
	movl	-84(%rbp), %ecx
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	movsd	8(%rdx), %xmm3          # xmm3 = mem[0],zero
	movq	%r9, %rdx
	callq	gimp_free_select_tool_fit_segment
.LBB40_4:                               # %if.end.10
	cmpl	$0, -12(%rbp)
	jne	.LBB40_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$1, 92(%rax)
	jne	.LBB40_7
# BB#6:                                 # %if.then.14
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movsd	%xmm0, (%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movsd	%xmm0, 8(%rax)
.LBB40_7:                               # %if.end.20
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_free_select_tool_move_segment_vertex_to, .Lfunc_end40-gimp_free_select_tool_move_segment_vertex_to
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_free_select_tool_fit_segment,@function
gimp_free_select_tool_fit_segment:      # @gimp_free_select_tool_fit_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.LBB41_2
# BB#1:                                 # %if.then
	jmp	.LBB41_12
.LBB41_2:                               # %if.else
	cmpl	$1, -60(%rbp)
	jne	.LBB41_4
# BB#3:                                 # %if.then.2
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	jmp	.LBB41_12
.LBB41_4:                               # %if.else.3
	cmpl	$2, -60(%rbp)
	jne	.LBB41_6
# BB#5:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB41_12
.LBB41_6:                               # %if.end
	jmp	.LBB41_7
.LBB41_7:                               # %if.end.8
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.9
	leaq	-80(%rbp), %rdi
	movabsq	$vector2_zero, %rsi
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	memcpy
	movl	-60(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	gimp_vector2_sub
	leaq	-80(%rbp), %rdx
	movq	-120(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_vector2_add
	leaq	-136(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	gimp_vector2_sub
	movsd	vector2_zero+8, %xmm0   # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	vector2_zero, %xmm1     # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	callq	atan2
	movsd	%xmm0, -144(%rbp)
	movsd	vector2_zero+8, %xmm0   # xmm0 = mem[0],zero
	movq	-120(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	vector2_zero, %xmm1     # xmm1 = mem[0],zero
	movq	-120(%rbp), %rax
	subsd	(%rax), %xmm1
	callq	atan2
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-120(%rbp), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_vector2_rotate
	leaq	-136(%rbp), %rdi
	callq	gimp_vector2_length
	movsd	%xmm0, -160(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_vector2_length
	movsd	%xmm0, -168(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-168(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-120(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_vector2_mul
	leaq	-96(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	gimp_vector2_sub
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_vector2_add
	movl	$0, -172(%rbp)
.LBB41_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-172(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB41_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB41_9 Depth=1
	leaq	-80(%rbp), %rsi
	movslq	-172(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movslq	-172(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_vector2_add
	movslq	-172(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_vector2_rotate
	movslq	-172(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_vector2_mul
	leaq	-96(%rbp), %rdx
	movslq	-172(%rbp), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movslq	-172(%rbp), %rcx
	shlq	$4, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_vector2_add
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB41_9 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB41_9
.LBB41_12:                              # %for.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_free_select_tool_fit_segment, .Lfunc_end41-gimp_free_select_tool_fit_segment
	.cfi_endproc

	.type	gimp_free_select_tool_get_type.g_define_type_id__volatile,@object # @gimp_free_select_tool_get_type.g_define_type_id__volatile
	.local	gimp_free_select_tool_get_type.g_define_type_id__volatile
	.comm	gimp_free_select_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFreeSelectTool"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-free-select-tool"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Free Select"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Free Select Tool: Select a hand-drawn region with free and polygonal segments"
	.size	.L.str.3, 78

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Free Select"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"F"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-free-select"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Tools"
	.size	.L.str.7, 11

	.type	.L__func__.gimp_free_select_tool_select,@object # @__func__.gimp_free_select_tool_select
.L__func__.gimp_free_select_tool_select:
	.asciz	"gimp_free_select_tool_select"
	.size	.L__func__.gimp_free_select_tool_select, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_FREE_SELECT_TOOL (fst)"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.9, 26

	.type	.L__func__.gimp_free_select_tool_get_points,@object # @__func__.gimp_free_select_tool_get_points
.L__func__.gimp_free_select_tool_get_points:
	.asciz	"gimp_free_select_tool_get_points"
	.size	.L__func__.gimp_free_select_tool_get_points, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"points != NULL && n_points != NULL"
	.size	.L.str.10, 35

	.type	gimp_free_select_tool_parent_class,@object # @gimp_free_select_tool_parent_class
	.local	gimp_free_select_tool_parent_class
	.comm	gimp_free_select_tool_parent_class,8,8
	.type	GimpFreeSelectTool_private_offset,@object # @GimpFreeSelectTool_private_offset
	.local	GimpFreeSelectTool_private_offset
	.comm	GimpFreeSelectTool_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-double-click-time"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-double-click-distance"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Click to complete selection"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Click-Drag to move segment vertex"
	.size	.L.str.14, 34

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Return commits, Escape cancels, Backspace removes last segment"
	.size	.L.str.15, 63

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Click-Drag adds a free segment, Click adds a polygonal segment"
	.size	.L.str.16, 63

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s"
	.size	.L.str.17, 3

	.type	vector2_zero,@object    # @vector2_zero
	.section	.rodata,"a",@progbits
	.align	8
vector2_zero:
	.zero	16
	.size	vector2_zero, 16

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"command\004Free Select"
	.size	.L.str.18, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
