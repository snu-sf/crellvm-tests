	.text
	.file	"gimprectangleselecttool.bc"
	.globl	gimp_rectangle_select_tool_get_type
	.align	16, 0x90
	.type	gimp_rectangle_select_tool_get_type,@function
gimp_rectangle_select_tool_get_type:    # @gimp_rectangle_select_tool_get_type
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
	movq	gimp_rectangle_select_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_rectangle_select_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_rectangle_select_tool_class_intern_init, %rdi
	movl	$272, %r8d              # imm = 0x110
	movabsq	$gimp_rectangle_select_tool_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movabsq	$gimp_rectangle_select_tool_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_rectangle_select_tool_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_rectangle_select_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rectangle_select_tool_get_type, .Lfunc_end0-gimp_rectangle_select_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_class_intern_init,@function
gimp_rectangle_select_tool_class_intern_init: # @gimp_rectangle_select_tool_class_intern_init
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
	movq	%rax, gimp_rectangle_select_tool_parent_class
	cmpl	$0, GimpRectangleSelectTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpRectangleSelectTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_rectangle_select_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rectangle_select_tool_class_intern_init, .Lfunc_end1-gimp_rectangle_select_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_init,@function
gimp_rectangle_select_tool_init:        # @gimp_rectangle_select_tool_init
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
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_init
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 264(%rdi)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_click
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_preserve
	movl	$258, %esi              # imm = 0x102
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_dirty_mask
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rectangle_select_tool_init, .Lfunc_end2-gimp_rectangle_select_tool_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_rectangle_tool_iface_init,@function
gimp_rectangle_select_tool_rectangle_tool_iface_init: # @gimp_rectangle_select_tool_rectangle_tool_iface_init
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
	movabsq	$gimp_rectangle_select_tool_rectangle_change_complete, %rax
	movabsq	$gimp_rectangle_select_tool_cancel, %rcx
	movabsq	$gimp_rectangle_select_tool_execute, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, 16(%rdi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rectangle_select_tool_rectangle_tool_iface_init, .Lfunc_end3-gimp_rectangle_select_tool_rectangle_tool_iface_init
	.cfi_endproc

	.globl	gimp_rectangle_select_tool_register
	.align	16, 0x90
	.type	gimp_rectangle_select_tool_register,@function
gimp_rectangle_select_tool_register:    # @gimp_rectangle_select_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_rectangle_select_options_gui, %rdx
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
.Lfunc_end4:
	.size	gimp_rectangle_select_tool_register, .Lfunc_end4-gimp_rectangle_select_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_class_init,@function
gimp_rectangle_select_tool_class_init:  # @gimp_rectangle_select_tool_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
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
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	movabsq	$gimp_rectangle_select_tool_real_select, %rax
	movabsq	$gimp_rectangle_select_tool_draw, %rsi
	movabsq	$gimp_rectangle_select_tool_cursor_update, %rdi
	movabsq	$gimp_rectangle_select_tool_oper_update, %rdx
	movabsq	$gimp_rectangle_select_tool_active_modifier_key, %r8
	movabsq	$gimp_rectangle_select_tool_key_press, %r9
	movabsq	$gimp_rectangle_tool_motion, %r10
	movabsq	$gimp_rectangle_select_tool_button_release, %r11
	movabsq	$gimp_rectangle_select_tool_button_press, %rbx
	movabsq	$gimp_rectangle_select_tool_control, %r14
	movabsq	$gimp_rectangle_tool_get_property, %r15
	movabsq	$gimp_rectangle_tool_set_property, %r12
	movabsq	$gimp_rectangle_select_tool_constructed, %r13
	movq	-56(%rbp), %rcx
	movq	%r13, 72(%rcx)
	movq	-56(%rbp), %rcx
	movq	%r12, 24(%rcx)
	movq	-56(%rbp), %rcx
	movq	%r15, 32(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r14, 184(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rbx, 192(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r11, 200(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r10, 208(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r9, 216(%rcx)
	movq	-64(%rbp), %rcx
	movq	%r8, 240(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rdx, 248(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rdi, 256(%rcx)
	movq	-72(%rbp), %rcx
	movq	%rsi, 280(%rcx)
	movq	-48(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_install_properties
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rectangle_select_tool_class_init, .Lfunc_end5-gimp_rectangle_select_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_constructed,@function
gimp_rectangle_select_tool_constructed: # @gimp_rectangle_select_tool_constructed
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_rectangle_select_tool_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_rectangle_select_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_constructor
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_rectangle_select_tool_round_corners_notify, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	384(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-24(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_rectangle_select_tool_round_corners_notify, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_update_option_defaults
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rectangle_select_tool_constructed, .Lfunc_end6-gimp_rectangle_select_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_control,@function
gimp_rectangle_select_tool_control:     # @gimp_rectangle_select_tool_control
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_rectangle_tool_control
	movq	gimp_rectangle_select_tool_parent_class, %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rectangle_select_tool_control, .Lfunc_end7-gimp_rectangle_select_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_button_press,@function
gimp_rectangle_select_tool_button_press: # @gimp_rectangle_select_tool_button_press
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_cancel
.LBB8_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_selection_tool_start_edit
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.14
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_execute
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_rectangle_tool_control
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_select_tool_update_option_defaults
	jmp	.LBB8_16
.LBB8_5:                                # %if.end.16
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_get_show_selection
	movq	-72(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movl	-24(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_get_extend_selection_mask
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_get_modify_selection_mask
	movl	-164(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movl	-160(%rbp), %eax        # 4-byte Reload
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB8_7
# BB#6:                                 # %if.then.21
	movl	$2, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
.LBB8_7:                                # %if.end.22
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	gimp_rectangle_tool_button_press
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-72(%rbp), %rsi
	movsd	%xmm0, 48(%rsi)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-72(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_get_function
	movl	%eax, -76(%rbp)
	cmpl	$2, -76(%rbp)
	jne	.LBB8_9
# BB#8:                                 # %if.then.25
	movq	-72(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.LBB8_15
.LBB8_9:                                # %if.else
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB8_12
# BB#10:                                # %land.lhs.true.32
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB8_12
# BB#11:                                # %if.then.35
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-88(%rbp), %rdi
	callq	gimp_image_undo
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_tool_control_pop_preserve
	movq	-104(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	-72(%rbp), %rdi
	movq	%rax, 24(%rdi)
.LBB8_12:                               # %if.end.40
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_select_tool_get_operation
	movl	%eax, -116(%rbp)
	cmpl	$2, -116(%rbp)
	jne	.LBB8_14
# BB#13:                                # %if.then.43
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	gimp_display_shell_set_show_selection
.LBB8_14:                               # %if.end.44
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.45
	movq	-72(%rbp), %rax
	movq	$0, 16(%rax)
.LBB8_16:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rectangle_select_tool_button_press, .Lfunc_end8-gimp_rectangle_select_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_button_release,@function
gimp_rectangle_select_tool_button_release: # @gimp_rectangle_select_tool_button_release
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	-56(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_display_shell_set_show_selection
	cmpl	$2, -28(%rbp)
	jne	.LBB9_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB9_4
# BB#2:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB9_4
# BB#3:                                 # %if.then.10
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-64(%rbp), %rdi
	callq	gimp_image_redo
	movq	-56(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_tool_control_pop_preserve
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.15
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	gimp_rectangle_tool_button_release
	cmpl	$1, -28(%rbp)
	jne	.LBB9_9
# BB#6:                                 # %if.then.17
	movq	-56(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB9_8
# BB#7:                                 # %if.then.20
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-64(%rbp), %rdi
	callq	gimp_image_redo
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_tool_control_pop_preserve
.LBB9_8:                                # %if.end.24
	movq	-56(%rbp), %rax
	movl	$1, 4(%rax)
.LBB9_9:                                # %if.end.25
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rectangle_select_tool_button_release, .Lfunc_end9-gimp_rectangle_select_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_key_press,@function
gimp_rectangle_select_tool_key_press:   # @gimp_rectangle_select_tool_key_press
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_rectangle_tool_key_press
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB10_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_edit_selection_tool_key_press
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB10_2:                               # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rectangle_select_tool_key_press, .Lfunc_end10-gimp_rectangle_select_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_active_modifier_key,@function
gimp_rectangle_select_tool_active_modifier_key: # @gimp_rectangle_select_tool_active_modifier_key
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	gimp_rectangle_select_tool_parent_class, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_rectangle_tool_active_modifier_key
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rectangle_select_tool_active_modifier_key, .Lfunc_end11-gimp_rectangle_select_tool_active_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_oper_update,@function
gimp_rectangle_select_tool_oper_update: # @gimp_rectangle_select_tool_oper_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_rectangle_tool_oper_update
	movq	gimp_rectangle_select_tool_parent_class, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rectangle_select_tool_oper_update, .Lfunc_end12-gimp_rectangle_select_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_cursor_update,@function
gimp_rectangle_select_tool_cursor_update: # @gimp_rectangle_select_tool_cursor_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_rectangle_tool_cursor_update
	movl	-20(%rbp), %edx
	movl	%edx, -36(%rbp)         # 4-byte Spill
	callq	gimp_get_extend_selection_mask
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_get_modify_selection_mask
	movl	-40(%rbp), %edx         # 4-byte Reload
	orl	%eax, %edx
	movl	-36(%rbp), %eax         # 4-byte Reload
	andl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1027, %esi             # imm = 0x403
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor
.LBB13_2:                               # %if.end
	movq	gimp_rectangle_select_tool_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_rectangle_select_tool_cursor_update, .Lfunc_end13-gimp_rectangle_select_tool_cursor_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4611686018427387904     # double 2
.LCPI14_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI14_2:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI14_3:
	.quad	4616991696741409234     # double 4.7123889803846897
	.text
	.align	16, 0x90
	.type	gimp_rectangle_select_tool_draw,@function
gimp_rectangle_select_tool_draw:        # @gimp_rectangle_select_tool_draw
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB14_11
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rsi
	leaq	-60(%rbp), %rdx
	movabsq	$.L.str.10, %rcx
	leaq	-64(%rbp), %r8
	movabsq	$.L.str.11, %r9
	leaq	-68(%rbp), %rax
	movabsq	$.L.str.12, %rdi
	leaq	-72(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-32(%rbp), %r14
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	callq	g_object_get
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movl	-68(%rbp), %r11d
	subl	-60(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm2
	divsd	%xmm0, %xmm2
	movl	-72(%rbp), %r11d
	subl	-64(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm3
	divsd	%xmm0, %xmm3
	ucomisd	%xmm2, %xmm3
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	jbe	.LBB14_3
# BB#2:                                 # %cond.true
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	jmp	.LBB14_4
.LBB14_3:                               # %cond.false
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
.LBB14_4:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_6
# BB#5:                                 # %cond.true.15
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB14_10
.LBB14_6:                               # %cond.false.17
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB14_8
# BB#7:                                 # %cond.true.26
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false.30
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
.LBB14_9:                               # %cond.end.34
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB14_10:                              # %cond.end.36
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	mulsd	-80(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI14_2, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-60(%rbp), %xmm1
	cvtsi2sdl	-64(%rbp), %xmm2
	cvtsi2sdl	-84(%rbp), %xmm3
	cvtsi2sdl	-84(%rbp), %xmm4
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movsd	-160(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-160(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_draw_tool_add_arc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_canvas_group_add_item
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_remove_item
	xorl	%esi, %esi
	xorps	%xmm4, %xmm4
	movsd	.LCPI14_2, %xmm5        # xmm5 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %ecx
	subl	-84(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-84(%rbp), %xmm3
	callq	gimp_draw_tool_add_arc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_canvas_group_add_item
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_remove_item
	xorl	%esi, %esi
	movsd	.LCPI14_3, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI14_2, %xmm5        # xmm5 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %ecx
	subl	-84(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-72(%rbp), %ecx
	subl	-84(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-84(%rbp), %xmm3
	callq	gimp_draw_tool_add_arc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_canvas_group_add_item
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_remove_item
	xorl	%esi, %esi
	movsd	.LCPI14_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI14_2, %xmm5        # xmm5 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-60(%rbp), %xmm0
	movl	-72(%rbp), %ecx
	subl	-84(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-84(%rbp), %xmm3
	callq	gimp_draw_tool_add_arc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_canvas_group_add_item
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_draw_tool_remove_item
.LBB14_11:                              # %if.end
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_rectangle_tool_draw
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_rectangle_select_tool_draw, .Lfunc_end14-gimp_rectangle_select_tool_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_select_tool_real_select,@function
gimp_rectangle_select_tool_real_select: # @gimp_rectangle_select_tool_real_select
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp59:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_select_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB15_8
# BB#1:                                 # %if.then
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB15_3
# BB#2:                                 # %cond.true
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
.LBB15_4:                               # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movq	-64(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_6
# BB#5:                                 # %cond.true.23
	movq	-64(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false.25
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB15_7:                               # %cond.end.26
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %eax
	movsd	%xmm0, -88(%rbp)
	movq	-72(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-20(%rbp), %r9d
	movq	-56(%rbp), %r10
	movl	356(%r10), %r11d
	movq	-56(%rbp), %r10
	movl	360(%r10), %ebx
	movq	-56(%rbp), %r10
	movsd	368(%r10), %xmm2        # xmm2 = mem[0],zero
	movq	-56(%rbp), %r10
	movsd	368(%r10), %xmm3        # xmm3 = mem[0],zero
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_channel_select_round_rect
	jmp	.LBB15_9
.LBB15_8:                               # %if.else
	movl	$1, %eax
	movq	-72(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movq	-56(%rbp), %r10
	movl	360(%r10), %r11d
	movq	-56(%rbp), %r10
	movsd	368(%r10), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %r10
	movsd	368(%r10), %xmm1        # xmm1 = mem[0],zero
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_channel_select_rectangle
.LBB15_9:                               # %if.end
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_rectangle_select_tool_real_select, .Lfunc_end15-gimp_rectangle_select_tool_real_select
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_round_corners_notify,@function
gimp_rectangle_select_tool_round_corners_notify: # @gimp_rectangle_select_tool_round_corners_notify
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	movl	384(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_select_tool_rectangle_change_complete
	movq	-32(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_draw_tool_resume
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_rectangle_select_tool_round_corners_notify, .Lfunc_end16-gimp_rectangle_select_tool_round_corners_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_rectangle_select_tool_update_option_defaults,@function
gimp_rectangle_select_tool_update_option_defaults: # @gimp_rectangle_select_tool_update_option_defaults
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB17_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_rectangle_tool_pending_size_set
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movabsq	$.L.str.14, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB17_4:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_rectangle_select_tool_update_option_defaults, .Lfunc_end17-gimp_rectangle_select_tool_update_option_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_rectangle_change_complete,@function
gimp_rectangle_select_tool_rectangle_change_complete: # @gimp_rectangle_select_tool_rectangle_change_complete
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp69:
	.cfi_offset %rbx, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB18_10
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB18_10
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB18_5
# BB#3:                                 # %land.lhs.true.13
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB18_5
# BB#4:                                 # %if.then.15
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo
	movq	-56(%rbp), %rdi
	movq	$0, 16(%rdi)
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB18_5:                               # %if.end
	movabsq	$.L.str.9, %rsi
	leaq	-84(%rbp), %rdx
	movabsq	$.L.str.10, %rcx
	leaq	-88(%rbp), %r8
	movabsq	$.L.str.11, %r9
	leaq	-92(%rbp), %rax
	movabsq	$.L.str.12, %rdi
	leaq	-96(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-32(%rbp), %r14
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	callq	g_object_get
	movq	-32(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %r11d
	subl	-84(%rbp), %r11d
	movl	-96(%rbp), %r15d
	subl	-88(%rbp), %r15d
	movl	%r11d, %ecx
	movl	%r15d, %r8d
	callq	gimp_rectangle_select_tool_select
	cmpl	$0, %eax
	je	.LBB18_7
# BB#6:                                 # %if.then.21
	movq	-72(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	-56(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
.LBB18_7:                               # %if.end.24
	movq	-56(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB18_9
# BB#8:                                 # %if.then.26
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	352(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movl	$1, 4(%rax)
.LBB18_9:                               # %if.end.34
	movq	-64(%rbp), %rdi
	callq	gimp_image_flush
.LBB18_10:                              # %if.end.35
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_select_tool_update_option_defaults
	movl	$1, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_rectangle_select_tool_rectangle_change_complete, .Lfunc_end18-gimp_rectangle_select_tool_rectangle_change_complete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_select,@function
gimp_rectangle_select_tool_select:      # @gimp_rectangle_select_tool_select
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_tool_pop_status
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	xorl	%ecx, %ecx
	movb	%cl, %r9b
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movb	%r9b, -77(%rbp)         # 1-byte Spill
	jg	.LBB19_6
# BB#1:                                 # %land.lhs.true
	movl	-16(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movb	%dl, -77(%rbp)          # 1-byte Spill
	jg	.LBB19_6
# BB#2:                                 # %land.lhs.true.9
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -77(%rbp)          # 1-byte Spill
	jl	.LBB19_6
# BB#3:                                 # %land.lhs.true.11
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -77(%rbp)          # 1-byte Spill
	jl	.LBB19_6
# BB#4:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -77(%rbp)          # 1-byte Spill
	jle	.LBB19_6
# BB#5:                                 # %land.rhs
	cmpl	$0, -24(%rbp)
	setg	%al
	movb	%al, -77(%rbp)          # 1-byte Spill
.LBB19_6:                               # %land.end
	movb	-77(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_select_tool_get_operation
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_8
# BB#7:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	*%rax
.LBB19_8:                               # %if.end
	movl	-52(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_rectangle_select_tool_select, .Lfunc_end19-gimp_rectangle_select_tool_select
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_get_operation,@function
gimp_rectangle_select_tool_get_operation: # @gimp_rectangle_select_tool_get_operation
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
	movq	-16(%rbp), %rdi
	movq	264(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movq	-32(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB20_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_rectangle_select_tool_get_operation, .Lfunc_end20-gimp_rectangle_select_tool_get_operation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_rectangle_select_tool_execute,@function
gimp_rectangle_select_tool_execute:     # @gimp_rectangle_select_tool_execute
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp81:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB21_15
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -40(%rbp)
	jne	.LBB21_15
# BB#2:                                 # %land.lhs.true.6
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB21_15
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB21_5
# BB#4:                                 # %if.then.12
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, %rdi
	callq	floating_sel_anchor
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
	movl	$1, -12(%rbp)
	jmp	.LBB21_16
.LBB21_5:                               # %if.end
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movaps	%xmm0, %xmm1
	addsd	48(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -84(%rbp)
	movq	-64(%rbp), %rax
	addsd	56(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_pickable_get_opacity_at
	cmpl	$127, %eax
	jle	.LBB21_9
# BB#6:                                 # %if.then.21
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-80(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB21_8
# BB#7:                                 # %if.then.24
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-24(%rbp), %r8
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %r10d
	movl	-100(%rbp), %r11d
	movl	-104(%rbp), %ebx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%r10d, %r8d
	movl	%r11d, (%rsp)
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_set
.LBB21_8:                               # %if.end.25
	movl	$3, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_select_tool_update_option_defaults
	movl	$0, -12(%rbp)
	jmp	.LBB21_16
.LBB21_9:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	48(%rax), %rdi
	movl	$1, %esi
	callq	gimp_tool_control_push_preserve
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_select_tool_get_operation
	movl	%eax, -116(%rbp)
	movl	%eax, %esi
	subl	$2, %eax
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jb	.LBB21_11
	jmp	.LBB21_17
.LBB21_17:                              # %if.else
	movl	-164(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	ja	.LBB21_12
	jmp	.LBB21_10
.LBB21_10:                              # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-80(%rbp), %rdi
	callq	gimp_channel_clear
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB21_13
.LBB21_11:                              # %sw.bb.30
	jmp	.LBB21_12
.LBB21_12:                              # %sw.default
	jmp	.LBB21_13
.LBB21_13:                              # %sw.epilog
	movq	-112(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_pop_preserve
# BB#14:                                # %if.end.32
	jmp	.LBB21_15
.LBB21_15:                              # %if.end.33
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_select_tool_update_option_defaults
	movq	-64(%rbp), %rdi
	movq	$0, 16(%rdi)
	movq	-64(%rbp), %rdi
	movq	$0, 24(%rdi)
	movl	$1, -12(%rbp)
.LBB21_16:                              # %return
	movl	-12(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_rectangle_select_tool_execute, .Lfunc_end21-gimp_rectangle_select_tool_execute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_select_tool_cancel,@function
gimp_rectangle_select_tool_cancel:      # @gimp_rectangle_select_tool_cancel
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB22_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_4
# BB#3:                                 # %if.then.11
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_push_preserve
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	gimp_tool_control_pop_preserve
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.14
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_rectangle_select_tool_update_option_defaults
	movq	-32(%rbp), %rdi
	movq	$0, 16(%rdi)
	movq	-32(%rbp), %rdi
	movq	$0, 24(%rdi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_rectangle_select_tool_cancel, .Lfunc_end22-gimp_rectangle_select_tool_cancel
	.cfi_endproc

	.type	gimp_rectangle_select_tool_get_type.g_define_type_id__volatile,@object # @gimp_rectangle_select_tool_get_type.g_define_type_id__volatile
	.local	gimp_rectangle_select_tool_get_type.g_define_type_id__volatile
	.comm	gimp_rectangle_select_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRectangleSelectTool"
	.size	.L.str, 24

	.type	gimp_rectangle_select_tool_get_type.g_implement_interface_info,@object # @gimp_rectangle_select_tool_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_rectangle_select_tool_get_type.g_implement_interface_info:
	.quad	gimp_rectangle_select_tool_rectangle_tool_iface_init
	.quad	0
	.quad	0
	.size	gimp_rectangle_select_tool_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gimp-rect-select-tool"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Rectangle Select"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Rectangle Select Tool: Select a rectangular region"
	.size	.L.str.3, 51

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Rectangle Select"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"R"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-rect-select"
	.size	.L.str.6, 22

	.type	gimp_rectangle_select_tool_parent_class,@object # @gimp_rectangle_select_tool_parent_class
	.local	gimp_rectangle_select_tool_parent_class
	.comm	gimp_rectangle_select_tool_parent_class,8,8
	.type	GimpRectangleSelectTool_private_offset,@object # @GimpRectangleSelectTool_private_offset
	.local	GimpRectangleSelectTool_private_offset
	.comm	GimpRectangleSelectTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"notify::round-corners"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::corner-radius"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"x1"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"y1"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"x2"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"y2"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"default-aspect-numerator"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"default-aspect-denominator"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"use-string-current"
	.size	.L.str.15, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
