	.text
	.file	"gimptexttool.bc"
	.globl	gimp_text_tool_get_type
	.align	16, 0x90
	.type	gimp_text_tool_get_type,@function
gimp_text_tool_get_type:                # @gimp_text_tool_get_type
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
	movq	gimp_text_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_text_tool_class_intern_init, %rdi
	movl	$536, %r8d              # imm = 0x218
	movabsq	$gimp_text_tool_init, %rcx
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
	movabsq	$gimp_text_tool_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_text_tool_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_tool_get_type, .Lfunc_end0-gimp_text_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_class_intern_init,@function
gimp_text_tool_class_intern_init:       # @gimp_text_tool_class_intern_init
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
	movq	%rax, gimp_text_tool_parent_class
	cmpl	$0, GimpTextTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_tool_class_intern_init, .Lfunc_end1-gimp_text_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_init,@function
gimp_text_tool_init:                    # @gimp_text_tool_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
	callq	gimp_text_buffer_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 272(%rdx)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_text_tool_buffer_end_edit, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	272(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movl	$1, 320(%rcx)
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_editor_init
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_handle_empty_image
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_click
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_double_click
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_triple_click
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_all_key_events
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_precision
	movl	$20, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.37, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_object_1
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_tool_init, .Lfunc_end2-gimp_text_tool_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_rectangle_tool_iface_init,@function
gimp_text_tool_rectangle_tool_iface_init: # @gimp_text_tool_rectangle_tool_iface_init
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
	movabsq	$gimp_text_tool_rectangle_change_complete, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_tool_rectangle_tool_iface_init, .Lfunc_end3-gimp_text_tool_rectangle_tool_iface_init
	.cfi_endproc

	.globl	gimp_text_tool_register
	.align	16, 0x90
	.type	gimp_text_tool_register,@function
gimp_text_tool_register:                # @gimp_text_tool_register
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
	callq	gimp_text_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_text_options_gui, %rdx
	movl	$81984, %ecx            # imm = 0x14040
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
	.size	gimp_text_tool_register, .Lfunc_end4-gimp_text_tool_register
	.cfi_endproc

	.globl	gimp_text_tool_clear_layout
	.align	16, 0x90
	.type	gimp_text_tool_clear_layout,@function
gimp_text_tool_clear_layout:            # @gimp_text_tool_clear_layout
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 328(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_tool_clear_layout, .Lfunc_end5-gimp_text_tool_clear_layout
	.cfi_endproc

	.globl	gimp_text_tool_ensure_layout
	.align	16, 0x90
	.type	gimp_text_tool_ensure_layout,@function
gimp_text_tool_ensure_layout:           # @gimp_text_tool_ensure_layout
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 328(%rdi)
	jne	.LBB6_5
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB6_5
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	104(%rax), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_layout_new
	movq	-8(%rbp), %rdx
	movq	%rax, 328(%rdx)
	cmpq	$0, -40(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-40(%rbp), %rdi
	callq	g_error_free
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.10
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_tool_ensure_layout, .Lfunc_end6-gimp_text_tool_ensure_layout
	.cfi_endproc

	.globl	gimp_text_tool_set_layer
	.align	16, 0x90
	.type	gimp_text_tool_set_layer,@function
gimp_text_tool_set_layer:               # @gimp_text_tool_set_layer
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_set_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_43
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB7_21
.LBB7_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_20:                               # %if.end.32
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_23
.LBB7_22:                               # %if.then.36
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_set_layer, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_43
.LBB7_24:                               # %if.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.end.39
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_text_tool_set_drawable
	cmpl	$0, %eax
	je	.LBB7_43
# BB#26:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB7_28
# BB#27:                                # %lor.lhs.false.56
	movq	-96(%rbp), %rdi
	callq	gimp_display_get_image
	movq	-80(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-152(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB7_38
.LBB7_28:                               # %if.then.60
	movq	$0, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -104(%rbp)
.LBB7_29:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB7_37
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_display_get_image
	movq	-80(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB7_32
# BB#31:                                # %if.then.69
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_context_set_display
	jmp	.LBB7_37
.LBB7_32:                               # %if.end.70
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	$0, -96(%rbp)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB7_29 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB7_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_36
.LBB7_35:                               # %cond.false
                                        #   in Loop: Header=BB7_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_36
.LBB7_36:                               # %cond.end
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB7_29
.LBB7_37:                               # %for.end
	jmp	.LBB7_38
.LBB7_38:                               # %if.end.72
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-72(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB7_42
# BB#39:                                # %if.then.76
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-112(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB7_41
# BB#40:                                # %if.then.84
	movq	-112(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB7_41:                               # %if.end.85
	movq	-112(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_draw_tool_start
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_frame_item
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_editor_start
.LBB7_42:                               # %if.end.86
	jmp	.LBB7_43
.LBB7_43:                               # %if.end.87
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_tool_set_layer, .Lfunc_end7-gimp_text_tool_set_layer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_set_drawable,@function
gimp_text_tool_set_drawable:            # @gimp_text_tool_set_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 304(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gtk_widget_destroy
.LBB8_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
.LBB8_4:                                # %if.end.6
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_text_tool_set_image
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.9
	movl	$0, -60(%rbp)
	jmp	.LBB8_11
.LBB8_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_9
# BB#8:                                 # %if.then.12
	movl	$1, -60(%rbp)
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.13
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_10:                               # %if.end.15
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.16
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_22
# BB#12:                                # %land.lhs.true.18
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 104(%rax)
	je	.LBB8_22
# BB#13:                                # %if.then.22
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rsi
	cmpq	288(%rsi), %rax
	jne	.LBB8_16
# BB#14:                                # %land.lhs.true.28
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	280(%rcx), %rax
	jne	.LBB8_16
# BB#15:                                # %if.then.32
	movl	$1, -4(%rbp)
	jmp	.LBB8_23
.LBB8_16:                               # %if.end.33
	movq	-72(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB8_20
# BB#17:                                # %if.then.35
	cmpl	$0, -28(%rbp)
	je	.LBB8_19
# BB#18:                                # %if.then.37
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_text_tool_connect
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_confirm_dialog
	movl	$1, -4(%rbp)
	jmp	.LBB8_23
.LBB8_19:                               # %if.end.38
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.39
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	104(%rax), %rdx
	callq	gimp_text_tool_connect
	movl	$1, -4(%rbp)
	jmp	.LBB8_23
.LBB8_21:                               # %if.end.41
	jmp	.LBB8_22
.LBB8_22:                               # %if.end.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_text_tool_connect
	movl	$0, -4(%rbp)
.LBB8_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_tool_set_drawable, .Lfunc_end8-gimp_text_tool_set_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_frame_item,@function
gimp_text_tool_frame_item:              # @gimp_text_tool_frame_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_frame_item, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_rectangle_tool_frame_item
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
.LBB9_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_tool_frame_item, .Lfunc_end9-gimp_text_tool_frame_item
	.cfi_endproc

	.globl	gimp_text_tool_get_has_text_selection
	.align	16, 0x90
	.type	gimp_text_tool_get_has_text_selection,@function
gimp_text_tool_get_has_text_selection:  # @gimp_text_tool_get_has_text_selection
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_tool_get_has_text_selection, .Lfunc_end10-gimp_text_tool_get_has_text_selection
	.cfi_endproc

	.globl	gimp_text_tool_delete_selection
	.align	16, 0x90
	.type	gimp_text_tool_delete_selection,@function
gimp_text_tool_delete_selection:        # @gimp_text_tool_delete_selection
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_text_buffer_delete_selection
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_tool_delete_selection, .Lfunc_end11-gimp_text_tool_delete_selection
	.cfi_endproc

	.globl	gimp_text_tool_cut_clipboard
	.align	16, 0x90
	.type	gimp_text_tool_cut_clipboard,@function
gimp_text_tool_cut_clipboard:           # @gimp_text_tool_cut_clipboard
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_cut_clipboard, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_clipboard
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_cut_clipboard
.LBB12_13:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_tool_cut_clipboard, .Lfunc_end12-gimp_text_tool_cut_clipboard
	.cfi_endproc

	.globl	gimp_text_tool_copy_clipboard
	.align	16, 0x90
	.type	gimp_text_tool_copy_clipboard,@function
gimp_text_tool_copy_clipboard:          # @gimp_text_tool_copy_clipboard
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_copy_clipboard, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_clipboard
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdi
	movq	-8(%rbp), %r9
	movq	272(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_copy_clipboard
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rax
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	movq	-8(%rbp), %r9
	movq	272(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB13_13:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_tool_copy_clipboard, .Lfunc_end13-gimp_text_tool_copy_clipboard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_buffer_begin_edit,@function
gimp_text_tool_buffer_begin_edit:       # @gimp_text_tool_buffer_begin_edit
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_block_drawing
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_tool_buffer_begin_edit, .Lfunc_end14-gimp_text_tool_buffer_begin_edit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_buffer_end_edit,@function
gimp_text_tool_buffer_end_edit:         # @gimp_text_tool_buffer_end_edit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 280(%rsi)
	je	.LBB15_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_text_buffer_has_markup
	cmpl	$0, %eax
	je	.LBB15_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	gimp_text_buffer_get_markup
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_text_buffer_get_text
	movabsq	$.L.str.17, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB15_4:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_free
	jmp	.LBB15_6
.LBB15_5:                               # %if.else.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_create_layer
.LBB15_6:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_tool_buffer_end_edit, .Lfunc_end15-gimp_text_tool_buffer_end_edit
	.cfi_endproc

	.globl	gimp_text_tool_paste_clipboard
	.align	16, 0x90
	.type	gimp_text_tool_paste_clipboard,@function
gimp_text_tool_paste_clipboard:         # @gimp_text_tool_paste_clipboard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_paste_clipboard, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_clipboard
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_text_buffer_paste_clipboard
.LBB16_13:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_tool_paste_clipboard, .Lfunc_end16-gimp_text_tool_paste_clipboard
	.cfi_endproc

	.globl	gimp_text_tool_create_vectors
	.align	16, 0x90
	.type	gimp_text_tool_create_vectors,@function
gimp_text_tool_create_vectors:          # @gimp_text_tool_create_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_tool_get_type
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_create_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_18
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB17_14
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	jne	.LBB17_15
.LBB17_14:                              # %if.then.13
	jmp	.LBB17_18
.LBB17_15:                              # %if.end.14
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rsi
	callq	gimp_text_vectors_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB17_17
# BB#16:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
.LBB17_17:                              # %if.end.27
	movl	$1, %eax
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-8(%rbp), %rsi
	movq	296(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-8(%rbp), %rdx
	movq	296(%rdx), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB17_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_tool_create_vectors, .Lfunc_end17-gimp_text_tool_create_vectors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_text_tool_create_vectors_warped
	.align	16, 0x90
	.type	gimp_text_tool_create_vectors_warped,@function
gimp_text_tool_create_vectors_warped:   # @gimp_text_tool_create_vectors_warped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_create_vectors_warped, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_19
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB18_15
# BB#13:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB18_15
# BB#14:                                # %lor.lhs.false.13
	movq	-8(%rbp), %rax
	cmpq	$0, 288(%rax)
	jne	.LBB18_16
.LBB18_15:                              # %if.then.15
	jmp	.LBB18_19
.LBB18_16:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	296(%rsi), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB18_18
# BB#17:                                # %if.then.24
	jmp	.LBB18_19
.LBB18_18:                              # %if.end.25
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rsi
	callq	gimp_text_vectors_new
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	mulsd	-32(%rbp), %xmm0
	callq	gimp_vectors_warp_vectors
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-8(%rbp), %rdx
	movq	296(%rdx), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB18_19:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_tool_create_vectors_warped, .Lfunc_end18-gimp_text_tool_create_vectors_warped
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_class_init,@function
gimp_text_tool_class_init:              # @gimp_text_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
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
	movabsq	$gimp_text_tool_draw, %rsi
	movabsq	$gimp_text_tool_get_popup, %rdi
	movabsq	$gimp_text_tool_cursor_update, %rcx
	movabsq	$gimp_text_tool_oper_update, %rdx
	movabsq	$gimp_text_tool_key_release, %r8
	movabsq	$gimp_text_tool_key_press, %r9
	movabsq	$gimp_text_tool_button_release, %r10
	movabsq	$gimp_text_tool_motion, %r11
	movabsq	$gimp_text_tool_button_press, %rbx
	movabsq	$gimp_text_tool_control, %r14
	movabsq	$gimp_rectangle_tool_get_property, %r15
	movabsq	$gimp_rectangle_tool_set_property, %r12
	movabsq	$gimp_text_tool_finalize, %r13
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_text_tool_constructed, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 184(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 192(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 208(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 200(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 216(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 224(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 256(%rax)
	movq	-64(%rbp), %rax
	movq	%rdi, 264(%rax)
	movq	-72(%rbp), %rax
	movq	%rsi, 280(%rax)
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_install_properties
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_text_tool_class_init, .Lfunc_end19-gimp_text_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_constructed,@function
gimp_text_tool_constructed:             # @gimp_text_tool_constructed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_text_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_constructor
	callq	gimp_text_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-16(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	248(%rax), %rsi
	callq	gimp_text_options_connect_text
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_text_tool_proxy_notify, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.11, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_text_tool_constructed, .Lfunc_end20-gimp_text_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_finalize,@function
gimp_text_tool_finalize:                # @gimp_text_tool_finalize
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
	callq	gimp_text_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 248(%rax)
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
.LBB21_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_finalize
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_tool_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_text_tool_finalize, .Lfunc_end21-gimp_text_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_control,@function
gimp_text_tool_control:                 # @gimp_text_tool_control
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jb	.LBB22_1
	jmp	.LBB22_4
.LBB22_4:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB22_2
	jmp	.LBB22_3
.LBB22_1:                               # %sw.bb
	jmp	.LBB22_3
.LBB22_2:                               # %sw.bb.2
	movq	-32(%rbp), %rdi
	callq	gimp_text_tool_editor_halt
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_text_tool_set_drawable
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB22_3:                               # %sw.epilog
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_rectangle_tool_control
	movq	gimp_text_tool_parent_class, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
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
.Lfunc_end22:
	.size	gimp_text_tool_control, .Lfunc_end22-gimp_text_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_button_press,@function
gimp_text_tool_button_press:            # @gimp_text_tool_button_press
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB23_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB23_3
# BB#2:                                 # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_tool_control
.LBB23_3:                               # %if.end
	cmpl	$0, -28(%rbp)
	jne	.LBB23_29
# BB#4:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-48(%rbp), %rdi
	callq	gimp_text_tool_reset_im_context
	movq	-48(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_point_in_rectangle
	cmpl	$0, %eax
	je	.LBB23_7
# BB#5:                                 # %land.lhs.true.14
	movq	-48(%rbp), %rax
	cmpl	$0, 268(%rax)
	jne	.LBB23_7
# BB#6:                                 # %if.then.16
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
	jmp	.LBB23_8
.LBB23_7:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	gimp_rectangle_tool_button_press
.LBB23_8:                               # %if.end.17
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_get_function
	cmpl	$2, %eax
	je	.LBB23_18
# BB#9:                                 # %if.then.20
	movq	-48(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB23_16
# BB#10:                                # %if.then.22
	movq	-48(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_x
	cvtsi2sdl	%eax, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_y
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -96(%rbp)
	ucomisd	-88(%rbp), %xmm0
	ja	.LBB23_14
# BB#11:                                # %lor.lhs.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB23_14
# BB#12:                                # %lor.lhs.false.40
	xorps	%xmm0, %xmm0
	ucomisd	-96(%rbp), %xmm0
	ja	.LBB23_14
# BB#13:                                # %lor.lhs.false.43
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB23_15
.LBB23_14:                              # %if.then.48
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB23_47
.LBB23_15:                              # %if.end.51
	jmp	.LBB23_17
.LBB23_16:                              # %if.else.52
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB23_47
.LBB23_17:                              # %if.end.55
	jmp	.LBB23_18
.LBB23_18:                              # %if.end.56
	movq	-48(%rbp), %rax
	cmpl	$0, 268(%rax)
	jne	.LBB23_28
# BB#19:                                # %land.lhs.true.59
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_get_function
	cmpl	$2, %eax
	jne	.LBB23_28
# BB#20:                                # %if.then.63
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	callq	gimp_image_pick_text_layer
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB23_27
# BB#21:                                # %land.lhs.true.70
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	288(%rcx), %rax
	je	.LBB23_27
# BB#22:                                # %if.then.74
	movq	-48(%rbp), %rax
	movq	296(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB23_24
# BB#23:                                # %if.then.78
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_layer_changed, %rdx
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %r9
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB23_24:                              # %if.end.80
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_set_active_layer
	movq	-48(%rbp), %rsi
	movq	296(%rsi), %rsi
	cmpq	-64(%rbp), %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB23_26
# BB#25:                                # %if.then.87
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_layer_changed, %rdx
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %r9
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r9, -280(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB23_26:                              # %if.end.89
	jmp	.LBB23_27
.LBB23_27:                              # %if.end.90
	jmp	.LBB23_28
.LBB23_28:                              # %if.end.91
	jmp	.LBB23_29
.LBB23_29:                              # %if.end.92
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	je	.LBB23_44
# BB#30:                                # %if.then.95
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_x
	cvtsi2sdl	%eax, %xmm0
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_y
	movl	$1, %edx
	cvtsi2sdl	%eax, %xmm0
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_text_tool_set_drawable
	cmpl	$0, %eax
	je	.LBB23_43
# BB#31:                                # %if.then.112
	cmpl	$0, -28(%rbp)
	jne	.LBB23_38
# BB#32:                                # %if.then.115
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_get_function
	cmpl	$2, %eax
	jne	.LBB23_34
# BB#33:                                # %if.then.119
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
	movq	-48(%rbp), %rdi
	callq	gimp_text_tool_frame_item
.LBB23_34:                              # %if.end.120
	movq	-48(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB23_37
# BB#35:                                # %land.lhs.true.123
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB23_37
# BB#36:                                # %if.then.127
	movq	-48(%rbp), %rdi
	callq	gimp_text_tool_editor_start
.LBB23_37:                              # %if.end.128
	jmp	.LBB23_38
.LBB23_38:                              # %if.end.129
	movq	-48(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB23_41
# BB#39:                                # %land.lhs.true.132
	movq	-48(%rbp), %rax
	cmpl	$0, 268(%rax)
	jne	.LBB23_41
# BB#40:                                # %if.then.135
	movq	-48(%rbp), %rax
	movl	$1, 360(%rax)
	movq	-48(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-28(%rbp), %esi
	callq	gimp_text_tool_editor_button_press
	jmp	.LBB23_42
.LBB23_41:                              # %if.else.137
	movq	-48(%rbp), %rax
	movl	$0, 360(%rax)
.LBB23_42:                              # %if.end.139
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB23_47
.LBB23_43:                              # %if.end.142
	jmp	.LBB23_44
.LBB23_44:                              # %if.end.143
	cmpl	$0, -28(%rbp)
	jne	.LBB23_46
# BB#45:                                # %if.then.146
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movl	$0, 324(%rdx)
	movq	-48(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_text_tool_connect
	movq	-48(%rbp), %rdi
	callq	gimp_text_tool_editor_start
.LBB23_46:                              # %if.end.147
	movq	-8(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB23_47:                              # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_text_tool_button_press, .Lfunc_end23-gimp_text_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_motion,@function
gimp_text_tool_motion:                  # @gimp_text_tool_motion
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 360(%rax)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_rectangle_tool_motion
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gimp_item_get_offset_x
	cvtsi2sdl	%eax, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_item_get_offset_y
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-40(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_tool_editor_motion
.LBB24_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_text_tool_motion, .Lfunc_end24-gimp_text_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_button_release,@function
gimp_text_tool_button_release:          # @gimp_text_tool_button_release
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
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp87:
	.cfi_offset %rbx, -32
.Ltmp88:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-72(%rbp), %rax
	cmpl	$0, 360(%rax)
	je	.LBB25_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdx
	movq	-72(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-72(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdi
	movq	-72(%rbp), %r9
	movq	272(%r9), %r9
	movq	-72(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-72(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_text_tool_editor_button_release
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdi
	movq	-72(%rbp), %r9
	movq	272(%r9), %r9
	movq	-72(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	movq	-72(%rbp), %r9
	movq	272(%r9), %r9
	movq	-72(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movq	-72(%rbp), %rdi
	movl	$0, 360(%rdi)
	movq	-72(%rbp), %rdi
	movl	$0, 320(%rdi)
	cmpl	$1, -44(%rbp)
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jne	.LBB25_3
# BB#2:                                 # %if.then.12
	movl	$0, -44(%rbp)
.LBB25_3:                               # %if.end
	jmp	.LBB25_18
.LBB25_4:                               # %if.else
	movq	-72(%rbp), %rax
	cmpl	$0, 268(%rax)
	je	.LBB25_6
# BB#5:                                 # %if.then.14
	jmp	.LBB25_17
.LBB25_6:                               # %if.else.15
	movq	-64(%rbp), %rdi
	callq	gimp_rectangle_tool_get_function
	cmpl	$1, %eax
	jne	.LBB25_8
# BB#7:                                 # %if.then.18
	movq	-72(%rbp), %rax
	movl	$0, 320(%rax)
	jmp	.LBB25_16
.LBB25_8:                               # %if.else.20
	cmpl	$1, -44(%rbp)
	jne	.LBB25_10
# BB#9:                                 # %if.then.22
	movq	-72(%rbp), %rdi
	callq	gimp_text_tool_editor_halt
	movq	-72(%rbp), %rdi
	movl	$0, 320(%rdi)
	jmp	.LBB25_15
.LBB25_10:                              # %if.else.24
	movabsq	$.L.str.22, %rsi
	leaq	-76(%rbp), %rdx
	movabsq	$.L.str.23, %rcx
	leaq	-80(%rbp), %r8
	movabsq	$.L.str.24, %r9
	leaq	-84(%rbp), %rax
	movabsq	$.L.str.25, %rdi
	leaq	-88(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-72(%rbp), %r14
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -176(%rbp)        # 8-byte Spill
	callq	g_object_get
	cmpl	$2, -44(%rbp)
	je	.LBB25_13
# BB#11:                                # %lor.lhs.false
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	cmpl	$3, %eax
	jl	.LBB25_13
# BB#12:                                # %lor.lhs.false.27
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	cmpl	$3, %eax
	jge	.LBB25_14
.LBB25_13:                              # %if.then.30
	movabsq	$.L.str.26, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movq	248(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-72(%rbp), %rcx
	movl	$0, 320(%rcx)
.LBB25_14:                              # %if.end.32
	jmp	.LBB25_15
.LBB25_15:                              # %if.end.33
	jmp	.LBB25_16
.LBB25_16:                              # %if.end.34
	jmp	.LBB25_17
.LBB25_17:                              # %if.end.35
	jmp	.LBB25_18
.LBB25_18:                              # %if.end.36
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	gimp_rectangle_tool_button_release
	movq	-72(%rbp), %rsi
	movl	$1, 320(%rsi)
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_text_tool_button_release, .Lfunc_end25-gimp_text_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_key_press,@function
gimp_text_tool_key_press:               # @gimp_text_tool_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	56(%rdx), %rax
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_text_tool_editor_key_press
	movl	%eax, -4(%rbp)
	jmp	.LBB26_3
.LBB26_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB26_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_text_tool_key_press, .Lfunc_end26-gimp_text_tool_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_key_release,@function
gimp_text_tool_key_release:             # @gimp_text_tool_key_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	56(%rdx), %rax
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_text_tool_editor_key_release
	movl	%eax, -4(%rbp)
	jmp	.LBB27_3
.LBB27_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB27_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_text_tool_key_release, .Lfunc_end27-gimp_text_tool_key_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_oper_update,@function
gimp_text_tool_oper_update:             # @gimp_text_tool_oper_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_rectangle_tool_oper_update
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_get_function
	xorl	%ecx, %ecx
	movb	%cl, %r9b
	cmpl	$3, %eax
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	jne	.LBB28_2
# BB#1:                                 # %land.rhs
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB28_2:                               # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, 268(%rdx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_text_tool_oper_update, .Lfunc_end28-gimp_text_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_cursor_update,@function
gimp_text_tool_cursor_update:           # @gimp_text_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	cmpq	-32(%rbp), %rcx
	jne	.LBB29_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_point_in_rectangle
	cmpl	$0, %eax
	je	.LBB29_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 268(%rax)
	jne	.LBB29_4
# BB#3:                                 # %if.then.7
	movl	$152, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor_modifier
	jmp	.LBB29_5
.LBB29_4:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_rectangle_tool_cursor_update
.LBB29_5:                               # %if.end
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.9
	movl	$152, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_cursor_modifier
.LBB29_7:                               # %if.end.12
	movq	gimp_text_tool_parent_class, %rax
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
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_text_tool_cursor_update, .Lfunc_end29-gimp_text_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_get_popup,@function
gimp_text_tool_get_popup:               # @gimp_text_tool_get_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_point_in_rectangle
	cmpl	$0, %eax
	je	.LBB30_16
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	cmpq	$0, 312(%rax)
	jne	.LBB30_15
# BB#2:                                 # %if.then.6
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_dialog_factory_get_menu_factory
	movabsq	$.L.str.27, %rsi
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	gimp_menu_factory_manager_new
	movq	-56(%rbp), %rdx
	movq	%rax, 312(%rdx)
	movq	-56(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB30_4
# BB#3:                                 # %if.then.17
	movl	$0, -100(%rbp)
	jmp	.LBB30_9
.LBB30_4:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_7
# BB#5:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB30_7
# BB#6:                                 # %if.then.20
	movl	$1, -100(%rbp)
	jmp	.LBB30_8
.LBB30_7:                               # %if.else.21
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB30_8:                               # %if.end
	jmp	.LBB30_9
.LBB30_9:                               # %if.end.23
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB30_11
# BB#10:                                # %if.then.25
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_menu_item_get_submenu
	movq	%rax, -72(%rbp)
.LBB30_11:                              # %if.end.29
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -80(%rbp)
.LBB30_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB30_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB30_12 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_remove
	movq	%rax, -80(%rbp)
	jmp	.LBB30_12
.LBB30_14:                              # %while.end
	movq	-56(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_im_multicontext_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_im_multicontext_append_menuitems
.LBB30_15:                              # %if.end.40
	movq	-56(%rbp), %rax
	movq	312(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
	movabsq	$.L.str.29, %rax
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-56(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_17
.LBB30_16:                              # %if.end.43
	movq	$0, -8(%rbp)
.LBB30_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_text_tool_get_popup, .Lfunc_end30-gimp_text_tool_get_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_draw,@function
gimp_text_tool_draw:                    # @gimp_text_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_draw
	movq	-16(%rbp), %rcx
	cmpq	$0, 280(%rcx)
	je	.LBB31_3
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB31_3
# BB#2:                                 # %lor.lhs.false.3
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB31_4
.LBB31_3:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_update_im_rect
	jmp	.LBB31_10
.LBB31_4:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_ensure_layout
	movq	-16(%rbp), %rdi
	movq	272(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB31_6
# BB#5:                                 # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_draw_selection
	jmp	.LBB31_9
.LBB31_6:                               # %if.else
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	500(%rax), %esi
	callq	gimp_text_tool_editor_get_cursor_rect
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movl	-44(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-48(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 500(%rax)
	movb	%r8b, -89(%rbp)         # 1-byte Spill
	je	.LBB31_8
# BB#7:                                 # %land.rhs
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB31_8:                               # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	leaq	-40(%rbp), %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %edx
	callq	gimp_draw_tool_add_text_cursor
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB31_9:                               # %if.end.20
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_update_im_rect
.LBB31_10:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_text_tool_draw, .Lfunc_end31-gimp_text_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_proxy_notify,@function
gimp_text_tool_proxy_notify:            # @gimp_text_tool_proxy_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 280(%rdx)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_7
.LBB32_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	jne	.LBB32_7
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_get_type
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_7
# BB#4:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_block_drawing
	movq	-24(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	%rax, 256(%rsi)
	movq	-24(%rbp), %rax
	cmpl	$0, 264(%rax)
	je	.LBB32_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movl	264(%rax), %edi
	callq	g_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB32_6:                               # %if.end.10
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_text_tool_apply_idle, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	callq	g_idle_add_full
	movq	-24(%rbp), %rcx
	movl	%eax, 264(%rcx)
.LBB32_7:                               # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_text_tool_proxy_notify, .Lfunc_end32-gimp_text_tool_proxy_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_block_drawing,@function
gimp_text_tool_block_drawing:           # @gimp_text_tool_block_drawing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 336(%rdi)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_clear_layout
	movq	-8(%rbp), %rax
	movl	$1, 336(%rax)
.LBB33_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_text_tool_block_drawing, .Lfunc_end33-gimp_text_tool_block_drawing
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_apply_idle,@function
gimp_text_tool_apply_idle:              # @gimp_text_tool_apply_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_apply
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_text_tool_apply_idle, .Lfunc_end34-gimp_text_tool_apply_idle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_apply,@function
gimp_text_tool_apply:                   # @gimp_text_tool_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -76(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 264(%rdi)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	264(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 264(%rcx)
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB35_2:                               # %if.end
	jmp	.LBB35_3
.LBB35_3:                               # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB35_5
# BB#4:                                 # %if.then.3
	jmp	.LBB35_6
.LBB35_5:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_apply, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB35_54
.LBB35_6:                               # %if.end.4
	jmp	.LBB35_7
.LBB35_7:                               # %do.end
	jmp	.LBB35_8
.LBB35_8:                               # %do.body.5
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_apply, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB35_54
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end.11
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.16
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	280(%rcx), %rax
	jne	.LBB35_15
# BB#14:                                # %if.then.20
	jmp	.LBB35_16
.LBB35_15:                              # %if.else.21
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_apply, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB35_54
.LBB35_16:                              # %if.end.22
	jmp	.LBB35_17
.LBB35_17:                              # %do.end.23
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB35_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -72(%rbp)
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB35_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB35_18 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB35_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB35_18 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB35_21:                              # %land.end
                                        #   in Loop: Header=BB35_18 Depth=1
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_22
	jmp	.LBB35_24
.LBB35_22:                              # %for.body
                                        #   in Loop: Header=BB35_18 Depth=1
	jmp	.LBB35_23
.LBB35_23:                              # %for.inc
                                        #   in Loop: Header=BB35_18 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB35_18
.LBB35_24:                              # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	jne	.LBB35_26
# BB#25:                                # %if.then.32
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB35_26:                              # %if.end.34
	cmpq	$0, -32(%rbp)
	je	.LBB35_35
# BB#27:                                # %if.then.36
	movq	-40(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_text_undo_get_type
	movl	$61, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB35_34
# BB#28:                                # %land.lhs.true.40
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB35_34
# BB#29:                                # %if.then.46
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB35_33
# BB#30:                                # %if.then.51
	movq	-88(%rbp), %rdi
	callq	gimp_undo_get_age
	cmpl	$3, %eax
	jge	.LBB35_32
# BB#31:                                # %if.then.54
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_tool_get_options
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	$0, -20(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_undo_reset_age
	movq	-88(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_undo_refresh_preview
.LBB35_32:                              # %if.end.60
	jmp	.LBB35_33
.LBB35_33:                              # %if.end.61
	jmp	.LBB35_34
.LBB35_34:                              # %if.end.62
	jmp	.LBB35_35
.LBB35_35:                              # %if.end.63
	cmpl	$0, -20(%rbp)
	je	.LBB35_39
# BB#36:                                # %if.then.65
	movq	-48(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB35_38
# BB#37:                                # %if.then.67
	movl	$31, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$1, -76(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_push_text_layer_modified
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_push_drawable_mod
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB35_38:                              # %if.end.73
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_image_undo_push_text_layer
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB35_39:                              # %if.end.75
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_tool_text_notify, %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	-288(%rbp), %r9         # 8-byte Reload
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_text_changed, %rdi
	movq	-64(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-296(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-64(%rbp), %rdi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	g_object_freeze_notify
.LBB35_40:                              # %for.cond.81
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB35_49
# BB#41:                                # %for.body.83
                                        #   in Loop: Header=BB35_40 Depth=1
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-72(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB35_44
# BB#42:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB35_40 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB35_44
# BB#43:                                # %if.then.91
                                        #   in Loop: Header=BB35_40 Depth=1
	jmp	.LBB35_45
.LBB35_44:                              # %if.end.92
                                        #   in Loop: Header=BB35_40 Depth=1
	leaq	-136(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init
	leaq	-136(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-136(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_set_property
	leaq	-136(%rbp), %rdi
	callq	g_value_unset
.LBB35_45:                              # %for.inc.96
                                        #   in Loop: Header=BB35_40 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB35_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB35_40 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB35_48
.LBB35_47:                              # %cond.false
                                        #   in Loop: Header=BB35_40 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB35_48
.LBB35_48:                              # %cond.end
                                        #   in Loop: Header=BB35_40 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB35_40
.LBB35_49:                              # %for.end.99
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-64(%rbp), %rdi
	callq	g_object_thaw_notify
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_text_notify, %rax
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -328(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_text_changed, %rdi
	movq	-64(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-336(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	cmpl	$0, -20(%rbp)
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB35_53
# BB#50:                                # %if.then.105
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	cmpl	$0, -76(%rbp)
	je	.LBB35_52
# BB#51:                                # %if.then.107
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB35_52:                              # %if.end.109
	jmp	.LBB35_53
.LBB35_53:                              # %if.end.110
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_frame_item
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_unblock_drawing
	movl	$0, -4(%rbp)
.LBB35_54:                              # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_text_tool_apply, .Lfunc_end35-gimp_text_tool_apply
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_text_notify,@function
gimp_text_tool_text_notify:             # @gimp_text_tool_text_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	280(%rcx), %rax
	jne	.LBB36_3
# BB#2:                                 # %if.then
	jmp	.LBB36_4
.LBB36_3:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_text_notify, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB36_13
.LBB36_4:                               # %if.end
	jmp	.LBB36_5
.LBB36_5:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_block_drawing
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	jne	.LBB36_7
# BB#6:                                 # %if.then.3
	leaq	-48(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	g_value_init
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_get_property
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_tool_proxy_notify, %rax
	movq	-24(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	248(%rdi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$gimp_text_tool_proxy_notify, %rax
	movq	-24(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	leaq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_value_unset
.LBB36_7:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB36_9
# BB#8:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB36_13
.LBB36_9:                               # %if.then.18
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdx
	movq	-24(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdi
	movq	-24(%rbp), %r9
	movq	272(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB36_11
# BB#10:                                # %if.then.22
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_text_buffer_set_markup
	jmp	.LBB36_12
.LBB36_11:                              # %if.else.25
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gimp_text_buffer_set_text
.LBB36_12:                              # %if.end.28
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdx
	movq	-24(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	movq	-24(%rbp), %r9
	movq	272(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB36_13:                              # %if.end.33
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_text_tool_text_notify, .Lfunc_end36-gimp_text_tool_text_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_text_changed,@function
gimp_text_tool_text_changed:            # @gimp_text_tool_text_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_frame_item
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_unblock_drawing
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_text_tool_text_changed, .Lfunc_end37-gimp_text_tool_text_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_unblock_drawing,@function
gimp_text_tool_unblock_drawing:         # @gimp_text_tool_unblock_drawing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$1, 336(%rax)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	jmp	.LBB38_4
.LBB38_3:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_unblock_drawing, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_6
.LBB38_4:                               # %if.end
	jmp	.LBB38_5
.LBB38_5:                               # %do.end
	movq	-8(%rbp), %rax
	movl	$0, 336(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB38_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_text_tool_unblock_drawing, .Lfunc_end38-gimp_text_tool_unblock_drawing
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_layer_changed,@function
gimp_text_tool_layer_changed:           # @gimp_text_tool_layer_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB39_2
# BB#1:                                 # %if.then
	jmp	.LBB39_9
.LBB39_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_halt
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_clear_layout
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB39_4
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB39_4:                               # %if.end.12
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_text_tool_set_drawable
	cmpl	$0, %eax
	je	.LBB39_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	-24(%rbp), %rax
	jne	.LBB39_7
# BB#6:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_draw_tool_start
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_frame_item
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_start
	movq	-16(%rbp), %rdi
	callq	gimp_text_tool_editor_position
	jmp	.LBB39_8
.LBB39_7:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	56(%rax), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_tool_control
.LBB39_8:                               # %if.end.31
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB39_9:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_text_tool_layer_changed, .Lfunc_end39-gimp_text_tool_layer_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_connect,@function
gimp_text_tool_connect:                 # @gimp_text_tool_connect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB40_4
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB40_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB40_5
.LBB40_4:                               # %if.then
	jmp	.LBB40_6
.LBB40_5:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_connect, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_26
.LBB40_6:                               # %if.end
	jmp	.LBB40_7
.LBB40_7:                               # %do.end
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB40_20
# BB#8:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdi
	movq	-8(%rbp), %r9
	movq	272(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	cmpq	$0, 280(%rdi)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB40_12
# BB#9:                                 # %if.then.17
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_text_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_text_changed, %rdi
	movq	-8(%rbp), %r9
	movq	280(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	cmpq	$0, 256(%rdi)
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB40_11
# BB#10:                                # %if.then.23
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_apply
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB40_11:                              # %if.end.25
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.17, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movabsq	$.L.str.18, %rcx
	movq	-8(%rbp), %rdi
	movq	$0, 280(%rdi)
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rax, %rdx
	movq	%rax, %r8
	movq	%rax, %r9
	movb	$0, %al
	callq	g_object_set
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rdi
	callq	gimp_text_buffer_set_text
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_clear_layout
.LBB40_12:                              # %if.end.29
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	cmpq	$0, -24(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	%rax, %rdi
	callq	gimp_context_define_property
	cmpq	$0, -24(%rbp)
	je	.LBB40_19
# BB#13:                                # %if.then.34
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	cmpl	56(%rax), %ecx
	je	.LBB40_15
# BB#14:                                # %if.then.39
	movq	-40(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	56(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit
.LBB40_15:                              # %if.end.43
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-24(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB40_17
# BB#16:                                # %if.then.49
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_text_buffer_set_markup
	jmp	.LBB40_18
.LBB40_17:                              # %if.else.52
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gimp_text_buffer_set_text
.LBB40_18:                              # %if.end.55
	movq	-8(%rbp), %rdi
	callq	gimp_text_tool_clear_layout
	movq	-24(%rbp), %rdi
	callq	g_object_ref
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_text_tool_text_notify, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_text_tool_text_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB40_19:                              # %if.end.60
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_buffer_end_edit, %rdx
	movq	-8(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_buffer_begin_edit, %rdi
	movq	-8(%rbp), %r9
	movq	272(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-232(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB40_20:                              # %if.end.65
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB40_26
# BB#21:                                # %if.then.69
	movq	-8(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB40_23
# BB#22:                                # %if.then.72
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_layer_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r9, -256(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-256(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB40_23:                              # %if.end.75
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 288(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB40_25
# BB#24:                                # %if.then.78
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_text_tool_layer_notify, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB40_25:                              # %if.end.81
	jmp	.LBB40_26
.LBB40_26:                              # %if.end.82
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_text_tool_connect, .Lfunc_end40-gimp_text_tool_connect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_layer_notify,@function
gimp_text_tool_layer_notify:            # @gimp_text_tool_layer_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB41_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB41_3
# BB#2:                                 # %if.then.4
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
.LBB41_3:                               # %if.end
	jmp	.LBB41_9
.LBB41_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB41_8
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB41_7
# BB#6:                                 # %if.then.10
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	callq	gimp_tool_control
.LBB41_7:                               # %if.end.12
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.13
	jmp	.LBB41_9
.LBB41_9:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_text_tool_layer_notify, .Lfunc_end41-gimp_text_tool_layer_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_draw_selection,@function
gimp_text_tool_draw_selection:          # @gimp_text_tool_draw_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_fill_group
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_canvas_item_set_highlight
	leaq	-144(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	272(%rdi), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_text_buffer_get_iter_index
	leaq	-224(%rbp), %rsi
	movl	$1, %edx
	movl	%eax, -228(%rbp)
	movq	-16(%rbp), %rdi
	movq	272(%rdi), %rdi
	callq	gimp_text_buffer_get_iter_index
	movl	%eax, -232(%rbp)
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rdi
	callq	gimp_text_layout_get_pango_layout
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gimp_text_layout_get_offsets
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-52(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-56(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	pango_layout_get_iter
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_draw_tool_push_group
.LBB42_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	callq	pango_layout_iter_get_run
	cmpq	$0, %rax
	jne	.LBB42_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_7
.LBB42_3:                               # %if.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	pango_layout_iter_get_index
	movl	%eax, -236(%rbp)
	movl	-236(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jl	.LBB42_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	-236(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB42_6
# BB#5:                                 # %if.then.23
                                        #   in Loop: Header=BB42_1 Depth=1
	leaq	-256(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	pango_layout_iter_get_char_extents
	leaq	-260(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	pango_layout_iter_get_line_yrange
	leaq	-256(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-260(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-264(%rbp), %eax
	subl	-260(%rbp), %eax
	movl	%eax, -244(%rbp)
	callq	pango_extents_to_pixels
	leaq	-256(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	328(%rdx), %rdi
	callq	gimp_text_layout_transform_rect
	movl	$1, %esi
	movl	-44(%rbp), %eax
	addl	-256(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-48(%rbp), %eax
	addl	-252(%rbp), %eax
	movl	%eax, -252(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-256(%rbp), %xmm0
	cvtsi2sdl	-252(%rbp), %xmm1
	cvtsi2sdl	-248(%rbp), %xmm2
	cvtsi2sdl	-244(%rbp), %xmm3
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB42_6:                               # %if.end.35
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_7
.LBB42_7:                               # %do.cond
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	pango_layout_iter_next_char
	cmpl	$0, %eax
	jne	.LBB42_1
# BB#8:                                 # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
	movq	-64(%rbp), %rdi
	callq	pango_layout_iter_free
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_text_tool_draw_selection, .Lfunc_end42-gimp_text_tool_draw_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_rectangle_change_complete,@function
gimp_text_tool_rectangle_change_complete: # @gimp_text_tool_rectangle_change_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp143:
	.cfi_offset %rbx, -32
.Ltmp144:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_text_tool_editor_position
	movq	-40(%rbp), %rax
	cmpl	$0, 320(%rax)
	je	.LBB43_19
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movl	$1, 324(%rax)
	movl	$1, -20(%rbp)
	jmp	.LBB43_20
.LBB43_3:                               # %if.end
	movabsq	$.L.str.22, %rsi
	leaq	-52(%rbp), %rdx
	movabsq	$.L.str.23, %rcx
	leaq	-56(%rbp), %r8
	movabsq	$.L.str.24, %r9
	leaq	-60(%rbp), %rax
	movabsq	$.L.str.25, %rdi
	leaq	-64(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-32(%rbp), %r14
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	callq	g_object_get
	movl	-52(%rbp), %r11d
	movq	-48(%rbp), %rdi
	movl	%r11d, -140(%rbp)       # 4-byte Spill
	callq	gimp_item_get_offset_x
	movl	-140(%rbp), %r11d       # 4-byte Reload
	cmpl	%eax, %r11d
	jne	.LBB43_7
# BB#4:                                 # %lor.lhs.false
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	movl	-144(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB43_7
# BB#5:                                 # %lor.lhs.false.9
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB43_7
# BB#6:                                 # %lor.lhs.false.12
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-152(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB43_18
.LBB43_7:                               # %if.then.16
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movl	$1, -92(%rbp)
	movq	-40(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gimp_image_get_resolution
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	-60(%rbp), %ecx
	subl	-52(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-68(%rbp), %edi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pixels_to_units
	movl	-64(%rbp), %ecx
	subl	-56(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	-68(%rbp), %edi
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_pixels_to_units
	movabsq	$.L.str.26, %rsi
	movl	$1, %edx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r8
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	296(%rcx), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	$31, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB43_11
# BB#8:                                 # %land.lhs.true
	movq	-104(%rbp), %rdi
	callq	gimp_undo_get_age
	cmpl	$3, %eax
	jg	.LBB43_11
# BB#9:                                 # %land.lhs.true.31
	movl	$80, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB43_11
# BB#10:                                # %if.then.36
	movl	$0, -92(%rbp)
.LBB43_11:                              # %if.end.37
	cmpl	$0, -92(%rbp)
	je	.LBB43_15
# BB#12:                                # %if.then.39
	movabsq	$.L.str.34, %rdi
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$31, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-40(%rbp), %rdx
	movq	296(%rdx), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	$31, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB43_14
# BB#13:                                # %if.then.47
	movl	$80, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB43_14:                              # %if.end.49
	jmp	.LBB43_15
.LBB43_15:                              # %if.end.50
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_x
	movl	-220(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%edx, -224(%rbp)        # 4-byte Spill
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	movl	-228(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	-92(%rbp), %ecx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-224(%rbp), %esi        # 4-byte Reload
	callq	gimp_item_translate
	movq	-40(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_text_tool_apply
	cmpl	$0, -92(%rbp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB43_17
# BB#16:                                # %if.then.57
	movq	-40(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB43_17:                              # %if.end.60
	jmp	.LBB43_18
.LBB43_18:                              # %if.end.61
	jmp	.LBB43_19
.LBB43_19:                              # %if.end.62
	movl	$1, -20(%rbp)
.LBB43_20:                              # %return
	movl	-20(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_text_tool_rectangle_change_complete, .Lfunc_end43-gimp_text_tool_rectangle_change_complete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_set_image,@function
gimp_text_tool_set_image:               # @gimp_text_tool_set_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	296(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB44_2
# BB#1:                                 # %if.then
	jmp	.LBB44_6
.LBB44_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB44_4
# BB#3:                                 # %if.then.3
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_layer_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	296(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	296(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	addq	$296, %rsi              # imm = 0x128
	movq	%rax, %rdi
	callq	g_object_remove_weak_pointer
.LBB44_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB44_6
# BB#5:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_text_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	addq	$296, %rsi              # imm = 0x128
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_text_tool_layer_changed, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	296(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_get_resolution
	movq	-24(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	gimp_size_entry_set_resolution
.LBB44_6:                               # %if.end.24
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_text_tool_set_image, .Lfunc_end44-gimp_text_tool_set_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI45_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_text_tool_confirm_dialog,@function
gimp_text_tool_confirm_dialog:          # @gimp_text_tool_confirm_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp151:
	.cfi_offset %rbx, -56
.Ltmp152:
	.cfi_offset %r12, -48
.Ltmp153:
	.cfi_offset %r13, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB45_3
# BB#2:                                 # %if.then
	jmp	.LBB45_4
.LBB45_3:                               # %if.else
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_text_tool_confirm_dialog, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_8
.LBB45_4:                               # %if.end
	jmp	.LBB45_5
.LBB45_5:                               # %do.end
	movq	-48(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB45_7
# BB#6:                                 # %if.then.3
	movq	-48(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB45_8
.LBB45_7:                               # %if.end.7
	movq	-48(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_options
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.39, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.40, %rcx
	movabsq	$.L.str.41, %r8
	movabsq	$gimp_standard_help_func, %rsi
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	$1, %edx
	movabsq	$.L.str.43, %r9
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.44, %r11
	movl	$4294967293, %ebx       # imm = 0xFFFFFFFD
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-144(%rbp), %r12        # 8-byte Reload
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movq	%r12, %rdx
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	-168(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-184(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rax, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	$-6, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	$-3, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movl	%r10d, -204(%rbp)       # 4-byte Spill
	movl	%ebx, -208(%rbp)        # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967293, %edx       # imm = 0xFFFFFFFD
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-72(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_text_tool_confirm_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI45_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-88(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rsi
	movabsq	$g_nullify_pointer, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rdi, 304(%r11)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	addq	$304, %r11              # imm = 0x130
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB45_8:                               # %return
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_text_tool_confirm_dialog, .Lfunc_end45-gimp_text_tool_confirm_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_confirm_response,@function
gimp_text_tool_confirm_response:        # @gimp_text_tool_confirm_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpq	$0, -32(%rbp)
	je	.LBB46_7
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB46_7
# BB#2:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$-3, %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	je	.LBB46_4
	jmp	.LBB46_8
.LBB46_8:                               # %if.then
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB46_5
	jmp	.LBB46_3
.LBB46_3:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rsi
	callq	gimp_text_tool_create_layer
	jmp	.LBB46_6
.LBB46_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdx
	callq	gimp_text_tool_connect
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_editor_start
	jmp	.LBB46_6
.LBB46_5:                               # %sw.default
	jmp	.LBB46_6
.LBB46_6:                               # %sw.epilog
	jmp	.LBB46_7
.LBB46_7:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_text_tool_confirm_response, .Lfunc_end46-gimp_text_tool_confirm_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_tool_create_layer,@function
gimp_text_tool_create_layer:            # @gimp_text_tool_create_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp162:
	.cfi_offset %rbx, -32
.Ltmp163:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_block_drawing
	cmpq	$0, -32(%rbp)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -32(%rbp)
	jmp	.LBB47_6
.LBB47_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gimp_text_buffer_has_markup
	cmpl	$0, %eax
	je	.LBB47_4
# BB#3:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gimp_text_buffer_get_markup
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.26, %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB47_5
.LBB47_4:                               # %if.else.13
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gimp_text_buffer_get_text
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.26, %rcx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB47_5:                               # %if.end
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -32(%rbp)
.LBB47_6:                               # %if.end.21
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_layer_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpq	$0, -64(%rbp)
	jne	.LBB47_8
# BB#7:                                 # %if.then.24
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_unblock_drawing
	jmp	.LBB47_14
.LBB47_8:                               # %if.end.25
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_text_tool_connect
	movabsq	$.L.str.48, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$31, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-56(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB47_10
# BB#9:                                 # %if.then.32
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_tool_layer_changed, %rdx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-56(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_image_get_floating_selection
	movq	%rax, %rdi
	callq	floating_sel_anchor
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_tool_layer_changed, %rax
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB47_10:                              # %if.end.36
	movabsq	$.L.str.22, %rsi
	leaq	-68(%rbp), %rdx
	movabsq	$.L.str.23, %rcx
	leaq	-72(%rbp), %r8
	movabsq	$.L.str.24, %r9
	leaq	-76(%rbp), %rax
	movabsq	$.L.str.25, %rdi
	leaq	-80(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-40(%rbp), %r14
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -232(%rbp)        # 8-byte Spill
	callq	g_object_get
	movq	-64(%rbp), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-24(%rbp), %rdx
	cmpl	$0, 324(%rdx)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB47_12
# BB#11:                                # %if.then.41
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movl	-76(%rbp), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-92(%rbp), %edi
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_pixels_to_units
	movl	-80(%rbp), %ecx
	subl	-72(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	-92(%rbp), %edi
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_pixels_to_units
	movabsq	$.L.str.26, %rsi
	movl	$1, %edx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r8
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_apply
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB47_13
.LBB47_12:                              # %if.else.50
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_frame_item
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_unblock_drawing
.LBB47_13:                              # %if.end.51
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-56(%rbp), %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_text_tool_set_drawable
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB47_14:                              # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_text_tool_create_layer, .Lfunc_end47-gimp_text_tool_create_layer
	.cfi_endproc

	.type	gimp_text_tool_get_type.g_define_type_id__volatile,@object # @gimp_text_tool_get_type.g_define_type_id__volatile
	.local	gimp_text_tool_get_type.g_define_type_id__volatile
	.comm	gimp_text_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextTool"
	.size	.L.str, 13

	.type	gimp_text_tool_get_type.g_implement_interface_info,@object # @gimp_text_tool_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_text_tool_get_type.g_implement_interface_info:
	.quad	gimp_text_tool_rectangle_tool_iface_init
	.quad	0
	.quad	0
	.size	gimp_text_tool_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gimp-text-tool"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Text"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Text Tool: Create or edit text layers"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Te_xt"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"T"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-text"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Tools"
	.size	.L.str.7, 11

	.type	.L__func__.gimp_text_tool_set_layer,@object # @__func__.gimp_text_tool_set_layer
.L__func__.gimp_text_tool_set_layer:
	.asciz	"gimp_text_tool_set_layer"
	.size	.L__func__.gimp_text_tool_set_layer, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_TEXT_TOOL (text_tool)"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"layer == NULL || GIMP_IS_LAYER (layer)"
	.size	.L.str.9, 39

	.type	.L__func__.gimp_text_tool_cut_clipboard,@object # @__func__.gimp_text_tool_cut_clipboard
.L__func__.gimp_text_tool_cut_clipboard:
	.asciz	"gimp_text_tool_cut_clipboard"
	.size	.L__func__.gimp_text_tool_cut_clipboard, 29

	.type	.L__func__.gimp_text_tool_copy_clipboard,@object # @__func__.gimp_text_tool_copy_clipboard
.L__func__.gimp_text_tool_copy_clipboard:
	.asciz	"gimp_text_tool_copy_clipboard"
	.size	.L__func__.gimp_text_tool_copy_clipboard, 30

	.type	.L__func__.gimp_text_tool_paste_clipboard,@object # @__func__.gimp_text_tool_paste_clipboard
.L__func__.gimp_text_tool_paste_clipboard:
	.asciz	"gimp_text_tool_paste_clipboard"
	.size	.L__func__.gimp_text_tool_paste_clipboard, 31

	.type	.L__func__.gimp_text_tool_create_vectors,@object # @__func__.gimp_text_tool_create_vectors
.L__func__.gimp_text_tool_create_vectors:
	.asciz	"gimp_text_tool_create_vectors"
	.size	.L__func__.gimp_text_tool_create_vectors, 30

	.type	.L__func__.gimp_text_tool_create_vectors_warped,@object # @__func__.gimp_text_tool_create_vectors_warped
.L__func__.gimp_text_tool_create_vectors_warped:
	.asciz	"gimp_text_tool_create_vectors_warped"
	.size	.L__func__.gimp_text_tool_create_vectors_warped, 37

	.type	gimp_text_tool_parent_class,@object # @gimp_text_tool_parent_class
	.local	gimp_text_tool_parent_class
	.comm	gimp_text_tool_parent_class,8,8
	.type	GimpTextTool_private_offset,@object # @GimpTextTool_private_offset
	.local	GimpTextTool_private_offset
	.comm	GimpTextTool_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"notify"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"highlight"
	.size	.L.str.11, 10

	.type	.L__func__.gimp_text_tool_apply,@object # @__func__.gimp_text_tool_apply
.L__func__.gimp_text_tool_apply:
	.asciz	"gimp_text_tool_apply"
	.size	.L__func__.gimp_text_tool_apply, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"text_tool->text != NULL"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"text_tool->layer != NULL"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"layer->text == text_tool->text"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"modified"
	.size	.L.str.15, 9

	.type	.L__func__.gimp_text_tool_text_notify,@object # @__func__.gimp_text_tool_text_notify
.L__func__.gimp_text_tool_text_notify:
	.asciz	"gimp_text_tool_text_notify"
	.size	.L__func__.gimp_text_tool_text_notify, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"text == text_tool->text"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"text"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"markup"
	.size	.L.str.18, 7

	.type	.L__func__.gimp_text_tool_unblock_drawing,@object # @__func__.gimp_text_tool_unblock_drawing
.L__func__.gimp_text_tool_unblock_drawing:
	.asciz	"gimp_text_tool_unblock_drawing"
	.size	.L__func__.gimp_text_tool_unblock_drawing, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"text_tool->drawing_blocked == TRUE"
	.size	.L.str.19, 35

	.type	.L__func__.gimp_text_tool_connect,@object # @__func__.gimp_text_tool_connect
.L__func__.gimp_text_tool_connect:
	.asciz	"gimp_text_tool_connect"
	.size	.L__func__.gimp_text_tool_connect, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"text == NULL || (layer != NULL && layer->text == text)"
	.size	.L.str.20, 55

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"changed"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"x1"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"y1"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"x2"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"y2"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"box-mode"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<TextTool>"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/text-tool-popup/text-tool-input-methods-menu"
	.size	.L.str.28, 46

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/text-tool-popup"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"narrow-mode"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"box-width"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"box-height"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"reshape-text-layer"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Reshape Text Layer"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"begin-user-action"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"end-user-action"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"context/context-font-select-set"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"active-layer-changed"
	.size	.L.str.38, 21

	.type	.L__func__.gimp_text_tool_confirm_dialog,@object # @__func__.gimp_text_tool_confirm_dialog
.L__func__.gimp_text_tool_confirm_dialog:
	.asciz	"gimp_text_tool_confirm_dialog"
	.size	.L__func__.gimp_text_tool_confirm_dialog, 30

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Confirm Text Editing"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-text-tool-confirm"
	.size	.L.str.40, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-text-layer"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Create _New Layer"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gtk-cancel"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-edit"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"response"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The layer you selected is a text layer but it has been modified using other tools. Editing the layer with the text tool will discard these modifications.\n\nYou can edit the layer or create a new text layer from its text attributes."
	.size	.L.str.46, 231

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"destroy"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Add Text Layer"
	.size	.L.str.48, 15

	.type	.L__func__.gimp_text_tool_frame_item,@object # @__func__.gimp_text_tool_frame_item
.L__func__.gimp_text_tool_frame_item:
	.asciz	"gimp_text_tool_frame_item"
	.size	.L__func__.gimp_text_tool_frame_item, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIMP_IS_LAYER (text_tool->layer)"
	.size	.L.str.49, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
