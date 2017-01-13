	.text
	.file	"gimpblendtool.bc"
	.globl	gimp_blend_tool_get_type
	.align	16, 0x90
	.type	gimp_blend_tool_get_type,@function
gimp_blend_tool_get_type:               # @gimp_blend_tool_get_type
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
	movq	gimp_blend_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_blend_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_blend_tool_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_blend_tool_init, %rcx
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
	movabsq	$gimp_blend_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_blend_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_blend_tool_get_type, .Lfunc_end0-gimp_blend_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_class_intern_init,@function
gimp_blend_tool_class_intern_init:      # @gimp_blend_tool_class_intern_init
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
	movq	%rax, gimp_blend_tool_parent_class
	cmpl	$0, GimpBlendTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBlendTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_blend_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_blend_tool_class_intern_init, .Lfunc_end1-gimp_blend_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_init,@function
gimp_blend_tool_init:                   # @gimp_blend_tool_init
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
	callq	gimp_tool_control_set_scroll_lock
	movl	$2, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$23, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_1
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_object_1
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_blend_tool_init, .Lfunc_end2-gimp_blend_tool_init
	.cfi_endproc

	.globl	gimp_blend_tool_register
	.align	16, 0x90
	.type	gimp_blend_tool_register,@function
gimp_blend_tool_register:               # @gimp_blend_tool_register
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
	callq	gimp_blend_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_blend_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_blend_options_gui, %rdx
	movl	$9152, %ecx             # imm = 0x23C0
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
	.size	gimp_blend_tool_register, .Lfunc_end3-gimp_blend_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_class_init,@function
gimp_blend_tool_class_init:             # @gimp_blend_tool_class_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_blend_tool_draw, %rsi
	movabsq	$gimp_blend_tool_cursor_update, %rdi
	movabsq	$gimp_blend_tool_active_modifier_key, %rcx
	movabsq	$gimp_blend_tool_motion, %rdx
	movabsq	$gimp_blend_tool_button_release, %r8
	movabsq	$gimp_blend_tool_button_press, %r9
	movabsq	$gimp_blend_tool_initialize, %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 176(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 192(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 200(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 240(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 256(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_blend_tool_class_init, .Lfunc_end4-gimp_blend_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_initialize,@function
gimp_blend_tool_initialize:             # @gimp_blend_tool_initialize
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_blend_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	gimp_blend_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_4:                                # %if.end.15
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB5_6
# BB#5:                                 # %if.then.20
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_6:                                # %if.end.23
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB5_8
# BB#7:                                 # %if.then.28
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_8:                                # %if.end.31
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_gradient
	cmpq	$0, %rax
	jne	.LBB5_10
# BB#9:                                 # %if.then.36
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_10:                               # %if.end.39
	movl	$1, -4(%rbp)
.LBB5_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_blend_tool_initialize, .Lfunc_end5-gimp_blend_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_button_press,@function
gimp_blend_tool_button_press:           # @gimp_blend_tool_button_press
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_blend_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 248(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 256(%rax)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 296(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 280(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 304(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 288(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	gimp_blend_tool_push_status
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_blend_tool_button_press, .Lfunc_end6-gimp_blend_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_button_release,@function
gimp_blend_tool_button_release:         # @gimp_blend_tool_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp28:
	.cfi_offset %rbx, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_blend_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_blend_options_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	cmpl	$1, -52(%rbp)
	je	.LBB7_6
# BB#1:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	ucomisd	264(%rax), %xmm0
	jne	.LBB7_3
	jp	.LBB7_3
# BB#2:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	ucomisd	272(%rax), %xmm0
	jne	.LBB7_3
	jp	.LBB7_3
	jmp	.LBB7_6
.LBB7_3:                                # %if.then
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-112(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_context_get_paint_mode
	movq	-80(%rbp), %rdx
	movl	480(%rdx), %r8d
	movq	-96(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%r8d, -224(%rbp)        # 4-byte Spill
	callq	gimp_context_get_opacity
	movl	$3, %edx
	movq	-80(%rbp), %rsi
	movsd	472(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-88(%rbp), %rsi
	movq	424(%rsi), %rsi
	movl	4(%rsi), %r9d
	movq	-88(%rbp), %rsi
	movq	424(%rsi), %rsi
	movl	(%rsi), %eax
	movq	-80(%rbp), %rsi
	movl	484(%rsi), %r8d
	movq	-80(%rbp), %rsi
	movl	488(%rsi), %ecx
	movq	-80(%rbp), %rsi
	movsd	496(%rsi), %xmm2        # xmm2 = mem[0],zero
	movq	-80(%rbp), %rsi
	movl	504(%rsi), %r10d
	movq	-72(%rbp), %rsi
	movsd	248(%rsi), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-124(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movq	-72(%rbp), %rsi
	movsd	256(%rsi), %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	-128(%rbp), %xmm5
	subsd	%xmm5, %xmm4
	movq	-72(%rbp), %rsi
	movsd	264(%rsi), %xmm5        # xmm5 = mem[0],zero
	cvtsi2sdl	-124(%rbp), %xmm6
	subsd	%xmm6, %xmm5
	movq	-72(%rbp), %rsi
	movsd	272(%rsi), %xmm6        # xmm6 = mem[0],zero
	cvtsi2sdl	-128(%rbp), %xmm7
	subsd	%xmm7, %xmm6
	movq	-120(%rbp), %rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	-220(%rbp), %ebx        # 4-byte Reload
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%ebx, %ecx
	movl	-224(%rbp), %r14d       # 4-byte Reload
	movl	%r8d, -240(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	%eax, (%rsp)
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movq	-232(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	callq	gimp_drawable_blend
	cmpq	$0, -120(%rbp)
	je	.LBB7_5
# BB#4:                                 # %if.then.36
	movq	-120(%rbp), %rdi
	callq	gimp_progress_end
.LBB7_5:                                # %if.end
	movq	-104(%rbp), %rdi
	callq	gimp_image_flush
.LBB7_6:                                # %if.end.37
	movq	-32(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_blend_tool_button_release, .Lfunc_end7-gimp_blend_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_motion,@function
gimp_blend_tool_motion:                 # @gimp_blend_tool_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_blend_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 296(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 304(%rax)
	movl	-24(%rbp), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movsd	280(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	248(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 248(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 256(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	264(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 264(%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 272(%rax)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 272(%rax)
.LBB8_3:                                # %if.end
	movl	-24(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-68(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB8_5
# BB#4:                                 # %if.then.16
	movl	$12, %edx
	movq	-40(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	-40(%rbp), %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_constrain_line
.LBB8_5:                                # %if.end.21
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_blend_tool_push_status
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 280(%rdx)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 288(%rdx)
	movq	-40(%rbp), %rdi
	callq	gimp_blend_tool_update_items
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_blend_tool_motion, .Lfunc_end8-gimp_blend_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_active_modifier_key,@function
gimp_blend_tool_active_modifier_key:    # @gimp_blend_tool_active_modifier_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_blend_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_4
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 264(%rax)
	movq	-40(%rbp), %rax
	movsd	304(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 272(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.3
	movl	$12, %edx
	movq	-40(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	-40(%rbp), %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_constrain_line
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_blend_tool_push_status
	movq	-40(%rbp), %rdi
	callq	gimp_blend_tool_update_items
	jmp	.LBB9_7
.LBB9_4:                                # %if.else
	cmpl	$8, -12(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_blend_tool_push_status
.LBB9_6:                                # %if.end.8
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_blend_tool_active_modifier_key, .Lfunc_end9-gimp_blend_tool_active_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_cursor_update,@function
gimp_blend_tool_cursor_update:          # @gimp_blend_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB10_3
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB10_3
# BB#2:                                 # %lor.lhs.false.7
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB10_4
.LBB10_3:                               # %if.then
	movl	$1, -52(%rbp)
.LBB10_4:                               # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_blend_tool_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
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
.Lfunc_end10:
	.size	gimp_blend_tool_cursor_update, .Lfunc_end10-gimp_blend_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_draw,@function
gimp_blend_tool_draw:                   # @gimp_blend_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_blend_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$15, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movl	%ecx, %edx
	callq	gimp_draw_tool_add_handle
	movq	-16(%rbp), %rdi
	movq	%rax, 312(%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	272(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_line
	movl	$4, %esi
	movl	$15, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	%rax, 320(%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	movl	%ecx, %edx
	callq	gimp_draw_tool_add_handle
	movq	-16(%rbp), %rdi
	movq	%rax, 328(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_blend_tool_draw, .Lfunc_end11-gimp_blend_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_push_status,@function
gimp_blend_tool_push_status:            # @gimp_blend_tool_push_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	callq	gimp_get_constrain_behavior_mask
	movabsq	$.L.str.12, %rdi
	orl	$8, %eax
	movl	-12(%rbp), %ecx
	xorl	$-1, %ecx
	andl	%ecx, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_suggest_modifiers
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movabsq	$.L.str.14, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %r8
	movq	-8(%rbp), %rcx
	movsd	264(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	subsd	248(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	movsd	272(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	subsd	256(%rcx), %xmm1
	movq	-40(%rbp), %r9
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_tool_push_status_coords
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_blend_tool_push_status, .Lfunc_end12-gimp_blend_tool_push_status
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_tool_update_items,@function
gimp_blend_tool_update_items:           # @gimp_blend_tool_update_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_canvas_handle_set_position
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	272(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_canvas_line_set
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	272(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_canvas_handle_set_position
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_blend_tool_update_items, .Lfunc_end13-gimp_blend_tool_update_items
	.cfi_endproc

	.type	gimp_blend_tool_get_type.g_define_type_id__volatile,@object # @gimp_blend_tool_get_type.g_define_type_id__volatile
	.local	gimp_blend_tool_get_type.g_define_type_id__volatile
	.comm	gimp_blend_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBlendTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-blend-tool"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Blend"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Blend Tool: Fill selected area with a color gradient"
	.size	.L.str.3, 53

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Blen_d"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"L"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-blend"
	.size	.L.str.6, 16

	.type	gimp_blend_tool_parent_class,@object # @gimp_blend_tool_parent_class
	.local	gimp_blend_tool_parent_class
	.comm	gimp_blend_tool_parent_class,8,8
	.type	GimpBlendTool_private_offset,@object # @GimpBlendTool_private_offset
	.local	GimpBlendTool_private_offset
	.comm	GimpBlendTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Blend does not operate on indexed layers."
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Cannot modify the pixels of layer groups."
	.size	.L.str.8, 42

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.9, 38

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"No gradient available for use with this tool."
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s for constrained angles"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s to move the whole line"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Blend: "
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	", "
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Blending"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"context/context-opacity-set"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"context/context-gradient-select-set"
	.size	.L.str.18, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
