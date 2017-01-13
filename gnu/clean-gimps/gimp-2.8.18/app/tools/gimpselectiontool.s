	.text
	.file	"gimpselectiontool.bc"
	.globl	gimp_selection_tool_get_type
	.align	16, 0x90
	.type	gimp_selection_tool_get_type,@function
gimp_selection_tool_get_type:           # @gimp_selection_tool_get_type
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
	movq	gimp_selection_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_selection_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_selection_tool_class_intern_init, %rdi
	movl	$264, %r8d              # imm = 0x108
	movabsq	$gimp_selection_tool_init, %rcx
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
	movabsq	$gimp_selection_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_selection_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_selection_tool_get_type, .Lfunc_end0-gimp_selection_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_tool_class_intern_init,@function
gimp_selection_tool_class_intern_init:  # @gimp_selection_tool_class_intern_init
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
	movq	%rax, gimp_selection_tool_parent_class
	cmpl	$0, GimpSelectionTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSelectionTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_selection_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_selection_tool_class_intern_init, .Lfunc_end1-gimp_selection_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_tool_init,@function
gimp_selection_tool_init:               # @gimp_selection_tool_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 248(%rdi)
	movq	-8(%rbp), %rdi
	movl	$2, 252(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 256(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_selection_tool_init, .Lfunc_end2-gimp_selection_tool_init
	.cfi_endproc

	.globl	gimp_selection_tool_start_edit
	.align	16, 0x90
	.type	gimp_selection_tool_start_edit,@function
gimp_selection_tool_start_edit:         # @gimp_selection_tool_start_edit
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_selection_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_tool_start_edit, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_48
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_tool_start_edit, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_48
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.41
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_tool_start_edit, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_48
.LBB3_28:                               # %if.end.43
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.44
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
# BB#30:                                # %do.body.47
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB3_32
# BB#31:                                # %if.then.50
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.51
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_tool_start_edit, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_48
.LBB3_33:                               # %if.end.52
	jmp	.LBB3_34
.LBB3_34:                               # %do.end.53
	movq	-16(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%edx, -128(%rbp)        # 4-byte Spill
	je	.LBB3_35
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.53
	movl	-124(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jb	.LBB3_36
	jmp	.LBB3_46
.LBB3_35:                               # %sw.bb
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_edit_selection_tool_start
	movl	$1, -4(%rbp)
	jmp	.LBB3_48
.LBB3_36:                               # %sw.bb.54
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB3_38
# BB#37:                                # %if.then.63
	movabsq	$.L.str.6, %rdi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_message_literal
	jmp	.LBB3_45
.LBB3_38:                               # %if.else.65
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB3_40
# BB#39:                                # %if.then.70
	movabsq	$.L.str.7, %rdi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_message_literal
	jmp	.LBB3_44
.LBB3_40:                               # %if.else.72
	movq	-16(%rbp), %rax
	cmpl	$2, 248(%rax)
	jne	.LBB3_42
# BB#41:                                # %if.then.76
	movl	$4, -108(%rbp)
	jmp	.LBB3_43
.LBB3_42:                               # %if.else.77
	movl	$5, -108(%rbp)
.LBB3_43:                               # %if.end.78
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-108(%rbp), %ecx
	callq	gimp_edit_selection_tool_start
.LBB3_44:                               # %if.end.79
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.80
	movl	$1, -4(%rbp)
	jmp	.LBB3_48
.LBB3_46:                               # %sw.default
	jmp	.LBB3_47
.LBB3_47:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB3_48:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_selection_tool_start_edit, .Lfunc_end3-gimp_selection_tool_start_edit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_tool_class_init,@function
gimp_selection_tool_class_init:         # @gimp_selection_tool_class_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_selection_tool_cursor_update, %rsi
	movabsq	$gimp_selection_tool_oper_update, %rdi
	movabsq	$gimp_edit_selection_tool_key_press, %rcx
	movabsq	$gimp_selection_tool_modifier_key, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 216(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 256(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_selection_tool_class_init, .Lfunc_end4-gimp_selection_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_tool_modifier_key,@function
gimp_selection_tool_modifier_key:       # @gimp_selection_tool_modifier_key
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	callq	gimp_get_extend_selection_mask
	movl	%eax, -52(%rbp)
	callq	gimp_get_modify_selection_mask
	movl	%eax, -56(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.LBB5_3
# BB#2:                                 # %lor.lhs.false.10
	cmpl	$8, -12(%rbp)
	jne	.LBB5_18
.LBB5_3:                                # %if.then
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB5_7
# BB#4:                                 # %if.then.12
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-52(%rbp), %edx
	orl	-56(%rbp), %edx
	orl	$8, %edx
	andl	%edx, %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.15
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 252(%rax)
.LBB5_6:                                # %if.end
	jmp	.LBB5_10
.LBB5_7:                                # %if.else
	movl	-20(%rbp), %eax
	movl	-52(%rbp), %ecx
	orl	-56(%rbp), %ecx
	orl	$8, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB5_9
# BB#8:                                 # %if.then.21
	movq	-40(%rbp), %rax
	movl	252(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB5_9:                                # %if.end.23
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.24
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB5_12
# BB#11:                                # %if.then.27
	movq	-40(%rbp), %rax
	movl	252(%rax), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB5_15
.LBB5_12:                               # %if.else.29
	movl	-20(%rbp), %eax
	movl	-52(%rbp), %ecx
	orl	-56(%rbp), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB5_14
# BB#13:                                # %if.then.33
	movl	-20(%rbp), %edi
	callq	gimp_modifiers_to_channel_op
	movl	%eax, -60(%rbp)
.LBB5_14:                               # %if.end.35
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.36
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	352(%rcx), %eax
	je	.LBB5_17
# BB#16:                                # %if.then.39
	movabsq	$.L.str.8, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB5_17:                               # %if.end.40
	jmp	.LBB5_18
.LBB5_18:                               # %if.end.41
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_selection_tool_modifier_key, .Lfunc_end5-gimp_selection_tool_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_tool_oper_update,@function
gimp_selection_tool_oper_update:        # @gimp_selection_tool_oper_update
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %edx
	callq	gimp_image_pick_layer
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -88(%rbp)
	callq	gimp_get_extend_selection_mask
	movl	%eax, -92(%rbp)
	callq	gimp_get_modify_selection_mask
	movl	%eax, -96(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB6_9
# BB#1:                                 # %if.then
	cmpq	$0, -88(%rbp)
	je	.LBB6_5
# BB#2:                                 # %if.then.16
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_4
# BB#3:                                 # %if.then.18
	movl	$1, -104(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_8
.LBB6_5:                                # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %if.then.23
	movl	$1, -100(%rbp)
.LBB6_7:                                # %if.end.24
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.25
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.26
	movq	-64(%rbp), %rdi
	callq	gimp_channel_is_empty
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rdi
	movl	$0, 248(%rdi)
	movq	-40(%rbp), %rdi
	cmpl	$0, 256(%rdi)
	je	.LBB6_14
# BB#10:                                # %land.lhs.true
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB6_14
# BB#11:                                # %land.lhs.true.30
	movl	-20(%rbp), %eax
	andl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB6_14
# BB#12:                                # %land.lhs.true.33
	cmpl	$0, -100(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.35
	movq	-40(%rbp), %rax
	movl	$2, 248(%rax)
	jmp	.LBB6_37
.LBB6_14:                               # %if.else.37
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	je	.LBB6_19
# BB#15:                                # %land.lhs.true.40
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB6_19
# BB#16:                                # %land.lhs.true.43
	movl	-20(%rbp), %eax
	andl	-92(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.46
	cmpl	$0, -100(%rbp)
	je	.LBB6_19
# BB#18:                                # %if.then.48
	movq	-40(%rbp), %rax
	movl	$3, 248(%rax)
	jmp	.LBB6_36
.LBB6_19:                               # %if.else.50
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	je	.LBB6_23
# BB#20:                                # %land.lhs.true.53
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB6_23
# BB#21:                                # %land.lhs.true.56
	cmpl	$0, -108(%rbp)
	jne	.LBB6_23
# BB#22:                                # %if.then.58
	movq	-40(%rbp), %rax
	movl	$1, 248(%rax)
	jmp	.LBB6_35
.LBB6_23:                               # %if.else.60
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	je	.LBB6_27
# BB#24:                                # %land.lhs.true.63
	movl	-20(%rbp), %eax
	movl	-92(%rbp), %ecx
	orl	-96(%rbp), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB6_27
# BB#25:                                # %land.lhs.true.66
	cmpl	$0, -104(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.68
	movq	-40(%rbp), %rax
	movl	$2, 248(%rax)
	jmp	.LBB6_34
.LBB6_27:                               # %if.else.70
	movl	-20(%rbp), %eax
	andl	-96(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB6_29
# BB#28:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	andl	-92(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB6_30
.LBB6_29:                               # %if.then.75
	movq	-40(%rbp), %rax
	movl	$0, 248(%rax)
	jmp	.LBB6_33
.LBB6_30:                               # %if.else.77
	cmpq	$0, -88(%rbp)
	je	.LBB6_32
# BB#31:                                # %if.then.79
	movq	-40(%rbp), %rax
	movl	$4, 248(%rax)
.LBB6_32:                               # %if.end.81
	jmp	.LBB6_33
.LBB6_33:                               # %if.end.82
	jmp	.LBB6_34
.LBB6_34:                               # %if.end.83
	jmp	.LBB6_35
.LBB6_35:                               # %if.end.84
	jmp	.LBB6_36
.LBB6_36:                               # %if.end.85
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.86
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -24(%rbp)
	je	.LBB6_61
# BB#38:                                # %if.then.88
	movq	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	-92(%rbp), %eax
	orl	-96(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB6_40
# BB#39:                                # %if.then.91
	movl	-128(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -128(%rbp)
.LBB6_40:                               # %if.end.93
	movq	-40(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	ja	.LBB6_54
# BB#62:                                # %if.end.93
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_41:                               # %sw.bb
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	ja	.LBB6_49
# BB#63:                                # %sw.bb
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_42:                               # %sw.bb.95
	cmpl	$0, -108(%rbp)
	jne	.LBB6_44
# BB#43:                                # %if.then.97
	movabsq	$.L.str.9, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-128(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -120(%rbp)
	movl	$1, -124(%rbp)
	jmp	.LBB6_45
.LBB6_44:                               # %if.else.101
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, -120(%rbp)
.LBB6_45:                               # %if.end.103
	jmp	.LBB6_49
.LBB6_46:                               # %sw.bb.104
	movabsq	$.L.str.11, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-128(%rbp), %ecx
	movl	-20(%rbp), %edx
	orl	-92(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -120(%rbp)
	movl	$1, -124(%rbp)
	jmp	.LBB6_49
.LBB6_47:                               # %sw.bb.110
	movabsq	$.L.str.12, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-128(%rbp), %ecx
	movl	-20(%rbp), %edx
	orl	-96(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -120(%rbp)
	movl	$1, -124(%rbp)
	jmp	.LBB6_49
.LBB6_48:                               # %sw.bb.116
	movabsq	$.L.str.13, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-128(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -120(%rbp)
	movl	$1, -124(%rbp)
.LBB6_49:                               # %sw.epilog
	jmp	.LBB6_56
.LBB6_50:                               # %sw.bb.121
	movabsq	$.L.str.14, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-128(%rbp), %ecx
	movl	-20(%rbp), %edx
	xorl	$-1, %edx
	andl	%edx, %ecx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %r8         # 8-byte Reload
	callq	gimp_suggest_modifiers
	movq	%rax, -120(%rbp)
	movl	$1, -124(%rbp)
	jmp	.LBB6_56
.LBB6_51:                               # %sw.bb.126
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, -120(%rbp)
	jmp	.LBB6_56
.LBB6_52:                               # %sw.bb.128
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, -120(%rbp)
	jmp	.LBB6_56
.LBB6_53:                               # %sw.bb.130
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, -120(%rbp)
	jmp	.LBB6_56
.LBB6_54:                               # %sw.default
	jmp	.LBB6_55
.LBB6_55:                               # %do.body
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rcx
	movl	$316, %r8d              # imm = 0x13C
	movabsq	$.L__func__.gimp_selection_tool_oper_update, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB6_61
.LBB6_56:                               # %sw.epilog.132
	cmpq	$0, -120(%rbp)
	je	.LBB6_58
# BB#57:                                # %if.then.134
	movabsq	$.L.str.20, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-120(%rbp), %rcx
	movb	$0, %al
	callq	gimp_tool_push_status
.LBB6_58:                               # %if.end.135
	cmpl	$0, -124(%rbp)
	je	.LBB6_60
# BB#59:                                # %if.then.137
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB6_60:                               # %if.end.138
	jmp	.LBB6_61
.LBB6_61:                               # %if.end.139
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_selection_tool_oper_update, .Lfunc_end6-gimp_selection_tool_oper_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_41
	.quad	.LBB6_50
	.quad	.LBB6_51
	.quad	.LBB6_52
	.quad	.LBB6_53
.LJTI6_1:
	.quad	.LBB6_46
	.quad	.LBB6_47
	.quad	.LBB6_42
	.quad	.LBB6_48

	.text
	.align	16, 0x90
	.type	gimp_selection_tool_cursor_update,@function
gimp_selection_tool_cursor_update:      # @gimp_selection_tool_cursor_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_selection_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_tool_cursor
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-40(%rbp), %rcx
	movl	248(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	subq	$4, %rsi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	ja	.LBB7_10
# BB#13:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-48(%rbp), %rax
	movl	352(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB7_6
# BB#14:                                # %sw.bb
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_2:                                # %sw.bb.8
	jmp	.LBB7_6
.LBB7_3:                                # %sw.bb.9
	movl	$2, -56(%rbp)
	jmp	.LBB7_6
.LBB7_4:                                # %sw.bb.10
	movl	$3, -56(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %sw.bb.11
	movl	$4, -56(%rbp)
.LBB7_6:                                # %sw.epilog
	jmp	.LBB7_10
.LBB7_7:                                # %sw.bb.12
	movl	$5, -56(%rbp)
	jmp	.LBB7_10
.LBB7_8:                                # %sw.bb.13
	movl	$11, -52(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %sw.bb.14
	movl	$8, -56(%rbp)
.LBB7_10:                               # %sw.epilog.15
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_cursor_modifier
	cmpl	$1, %eax
	jne	.LBB7_12
# BB#11:                                # %if.then
	movl	$1, -56(%rbp)
.LBB7_12:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_cursor
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_tool_set_cursor
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_selection_tool_cursor_update, .Lfunc_end7-gimp_selection_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_8
	.quad	.LBB7_9
.LJTI7_1:
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_2
	.quad	.LBB7_5

	.type	gimp_selection_tool_get_type.g_define_type_id__volatile,@object # @gimp_selection_tool_get_type.g_define_type_id__volatile
	.local	gimp_selection_tool_get_type.g_define_type_id__volatile
	.comm	gimp_selection_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSelectionTool"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_selection_tool_start_edit,@object # @__func__.gimp_selection_tool_start_edit
.L__func__.gimp_selection_tool_start_edit:
	.asciz	"gimp_selection_tool_start_edit"
	.size	.L__func__.gimp_selection_tool_start_edit, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_SELECTION_TOOL (sel_tool)"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"coords != NULL"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_tool_control_is_active (tool->control) == FALSE"
	.size	.L.str.5, 53

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Cannot modify the pixels of layer groups."
	.size	.L.str.6, 42

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.7, 38

	.type	gimp_selection_tool_parent_class,@object # @gimp_selection_tool_parent_class
	.local	gimp_selection_tool_parent_class
	.comm	gimp_selection_tool_parent_class,8,8
	.type	GimpSelectionTool_private_offset,@object # @GimpSelectionTool_private_offset
	.local	GimpSelectionTool_private_offset
	.comm	GimpSelectionTool_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"operation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Click-Drag to replace the current selection"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Click-Drag to create a new selection"
	.size	.L.str.10, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Click-Drag to add to the current selection"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Click-Drag to subtract from the current selection"
	.size	.L.str.12, 50

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Click-Drag to intersect with the current selection"
	.size	.L.str.13, 51

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Click-Drag to move the selection mask"
	.size	.L.str.14, 38

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Click-Drag to move the selected pixels"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Click-Drag to move a copy of the selected pixels"
	.size	.L.str.16, 49

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Click to anchor the floating selection"
	.size	.L.str.17, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimpselectiontool.c"
	.size	.L.str.19, 20

	.type	.L__func__.gimp_selection_tool_oper_update,@object # @__func__.gimp_selection_tool_oper_update
.L__func__.gimp_selection_tool_oper_update:
	.asciz	"gimp_selection_tool_oper_update"
	.size	.L__func__.gimp_selection_tool_oper_update, 32

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s"
	.size	.L.str.20, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
