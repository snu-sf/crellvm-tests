	.text
	.file	"gimpbucketfilltool.bc"
	.globl	gimp_bucket_fill_tool_get_type
	.align	16, 0x90
	.type	gimp_bucket_fill_tool_get_type,@function
gimp_bucket_fill_tool_get_type:         # @gimp_bucket_fill_tool_get_type
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
	movq	gimp_bucket_fill_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_bucket_fill_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_bucket_fill_tool_class_intern_init, %rdi
	movl	$200, %r8d
	movabsq	$gimp_bucket_fill_tool_init, %rcx
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
	movabsq	$gimp_bucket_fill_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_bucket_fill_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_bucket_fill_tool_get_type, .Lfunc_end0-gimp_bucket_fill_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_class_intern_init,@function
gimp_bucket_fill_tool_class_intern_init: # @gimp_bucket_fill_tool_class_intern_init
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
	movq	%rax, gimp_bucket_fill_tool_parent_class
	cmpl	$0, GimpBucketFillTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBucketFillTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_bucket_fill_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_bucket_fill_tool_class_intern_init, .Lfunc_end1-gimp_bucket_fill_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_init,@function
gimp_bucket_fill_tool_init:             # @gimp_bucket_fill_tool_init
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
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_wants_click
	movl	$22, %esi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.11, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_1
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_object_1
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_bucket_fill_tool_init, .Lfunc_end2-gimp_bucket_fill_tool_init
	.cfi_endproc

	.globl	gimp_bucket_fill_tool_register
	.align	16, 0x90
	.type	gimp_bucket_fill_tool_register,@function
gimp_bucket_fill_tool_register:         # @gimp_bucket_fill_tool_register
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
	callq	gimp_bucket_fill_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_bucket_fill_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_bucket_fill_options_gui, %rdx
	movl	$5056, %ecx             # imm = 0x13C0
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
	.size	gimp_bucket_fill_tool_register, .Lfunc_end3-gimp_bucket_fill_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_class_init,@function
gimp_bucket_fill_tool_class_init:       # @gimp_bucket_fill_tool_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_bucket_fill_tool_cursor_update, %rsi
	movabsq	$gimp_bucket_fill_tool_modifier_key, %rdi
	movabsq	$gimp_bucket_fill_tool_button_release, %rcx
	movabsq	$gimp_bucket_fill_tool_initialize, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 200(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 232(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 256(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_bucket_fill_tool_class_init, .Lfunc_end4-gimp_bucket_fill_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_initialize,@function
gimp_bucket_fill_tool_initialize:       # @gimp_bucket_fill_tool_initialize
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	movq	gimp_bucket_fill_tool_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
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
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %if.end.12
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then.17
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.end.20
	movl	$1, -4(%rbp)
.LBB5_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_bucket_fill_tool_initialize, .Lfunc_end5-gimp_bucket_fill_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_button_release,@function
gimp_bucket_fill_tool_button_release:   # @gimp_bucket_fill_tool_button_release
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp25:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_bucket_fill_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	cmpl	$2, -36(%rbp)
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$3, -36(%rbp)
	jne	.LBB6_9
.LBB6_2:                                # %land.lhs.true
	movl	$1, %ecx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	484(%rax), %edx
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	je	.LBB6_9
# BB#3:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	$0, -96(%rbp)
	movq	-24(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-24(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 484(%rax)
	jne	.LBB6_5
# BB#4:                                 # %if.then.16
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-100(%rbp), %ecx
	movl	-84(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -84(%rbp)
	movl	-104(%rbp), %ecx
	movl	-88(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -88(%rbp)
.LBB6_5:                                # %if.end
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	472(%rax), %edx
	movq	-80(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_context_get_paint_mode
	movq	-80(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_context_get_opacity
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	cmpl	$0, 476(%rdi)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movq	-56(%rbp), %rdi
	movl	480(%rdi), %r9d
	movq	-56(%rbp), %rdi
	movl	496(%rdi), %eax
	movq	-56(%rbp), %rdi
	movsd	488(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rdi
	movl	484(%rdi), %edx
	cvtsi2sdl	-84(%rbp), %xmm2
	cvtsi2sdl	-88(%rbp), %xmm3
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	-164(%rbp), %ecx        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	gimp_drawable_bucket_fill
	cmpl	$0, %eax
	jne	.LBB6_7
# BB#6:                                 # %if.then.28
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB6_8
.LBB6_7:                                # %if.else
	movq	-64(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_8:                                # %if.end.30
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.31
	movq	gimp_bucket_fill_tool_parent_class, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	200(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movq	-48(%rbp), %r9
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_bucket_fill_tool_button_release, .Lfunc_end6-gimp_bucket_fill_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_modifier_key,@function
gimp_bucket_fill_tool_modifier_key:     # @gimp_bucket_fill_tool_modifier_key
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
	subq	$80, %rsp
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
	callq	gimp_bucket_fill_options_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB7_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	472(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_10
.LBB7_10:                               # %if.then
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb
	movabsq	$.L.str.9, %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB7_5
.LBB7_3:                                # %sw.bb.6
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB7_5
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	jmp	.LBB7_9
.LBB7_6:                                # %if.else
	cmpl	$1, -12(%rbp)
	jne	.LBB7_8
# BB#7:                                 # %if.then.8
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rdi
	cmpl	$0, 476(%rdi)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB7_8:                                # %if.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.9
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_bucket_fill_tool_modifier_key, .Lfunc_end7-gimp_bucket_fill_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_tool_cursor_update,@function
gimp_bucket_fill_tool_cursor_update:    # @gimp_bucket_fill_tool_cursor_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_bucket_fill_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movl	$1, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	484(%rax), %edx
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	je	.LBB8_9
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB8_8
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	jne	.LBB8_8
# BB#3:                                 # %if.then.16
	movq	-40(%rbp), %rax
	movl	472(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_10
.LBB8_10:                               # %if.then.16
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB8_5
	jmp	.LBB8_11
.LBB8_11:                               # %if.then.16
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB8_6
	jmp	.LBB8_7
.LBB8_4:                                # %sw.bb
	movl	$9, -44(%rbp)
	jmp	.LBB8_7
.LBB8_5:                                # %sw.bb.17
	movl	$10, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %sw.bb.18
	movl	$11, -44(%rbp)
.LBB8_7:                                # %sw.epilog
	jmp	.LBB8_8
.LBB8_8:                                # %if.end
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.19
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
	movq	gimp_bucket_fill_tool_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_bucket_fill_tool_cursor_update, .Lfunc_end8-gimp_bucket_fill_tool_cursor_update
	.cfi_endproc

	.type	gimp_bucket_fill_tool_get_type.g_define_type_id__volatile,@object # @gimp_bucket_fill_tool_get_type.g_define_type_id__volatile
	.local	gimp_bucket_fill_tool_get_type.g_define_type_id__volatile
	.comm	gimp_bucket_fill_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBucketFillTool"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-bucket-fill-tool"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Bucket Fill"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Bucket Fill Tool: Fill selected area with a color or pattern"
	.size	.L.str.3, 61

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Bucket Fill"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>B"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.6, 22

	.type	gimp_bucket_fill_tool_parent_class,@object # @gimp_bucket_fill_tool_parent_class
	.local	gimp_bucket_fill_tool_parent_class
	.comm	gimp_bucket_fill_tool_parent_class,8,8
	.type	GimpBucketFillTool_private_offset,@object # @GimpBucketFillTool_private_offset
	.local	GimpBucketFillTool_private_offset
	.comm	GimpBucketFillTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Cannot modify the pixels of layer groups."
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"fill-mode"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fill-selection"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"context/context-opacity-set"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"context/context-pattern-select-set"
	.size	.L.str.12, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
