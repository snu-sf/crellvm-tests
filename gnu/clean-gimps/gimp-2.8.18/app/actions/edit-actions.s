	.text
	.file	"edit-actions.bc"
	.globl	edit_actions_setup
	.align	16, 0x90
	.type	edit_actions_setup,@function
edit_actions_setup:                     # @edit_actions_setup
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_get_user_context
	movabsq	$.L.str, %rsi
	movabsq	$edit_actions, %rdx
	movl	$23, %ecx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$edit_fill_actions, %rdx
	movl	$3, %ecx
	movabsq	$edit_fill_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movabsq	$.L.str.2, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_action_set_accel_path
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.5, %rsi
	movabsq	$edit_actions_foreground_changed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$edit_actions_background_changed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.7, %rsi
	movabsq	$edit_actions_pattern_changed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_foreground
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	edit_actions_foreground_changed
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	edit_actions_background_changed
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	edit_actions_pattern_changed
	movabsq	$.L.str.8, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	movabsq	$.L.str.9, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	edit_actions_setup, .Lfunc_end0-edit_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	edit_actions_foreground_changed,@function
edit_actions_foreground_changed:        # @edit_actions_foreground_changed
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
	movabsq	$.L.str.8, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_action_group_set_action_color
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	edit_actions_foreground_changed, .Lfunc_end1-edit_actions_foreground_changed
	.cfi_endproc

	.align	16, 0x90
	.type	edit_actions_background_changed,@function
edit_actions_background_changed:        # @edit_actions_background_changed
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
	movabsq	$.L.str.9, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_action_group_set_action_color
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	edit_actions_background_changed, .Lfunc_end2-edit_actions_background_changed
	.cfi_endproc

	.align	16, 0x90
	.type	edit_actions_pattern_changed,@function
edit_actions_pattern_changed:           # @edit_actions_pattern_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_viewable
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	edit_actions_pattern_changed, .Lfunc_end3-edit_actions_pattern_changed
	.cfi_endproc

	.globl	edit_actions_update
	.align	16, 0x90
	.type	edit_actions_update,@function
edit_actions_update:                    # @edit_actions_update
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_24
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_5
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB4_4
# BB#3:                                 # %if.then.12
	movl	$1, -64(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.13
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_is_enabled
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB4_23
# BB#6:                                 # %if.then.16
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_undo_stack_peek
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.22
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	-96(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
.LBB4_8:                                # %if.end.26
	cmpq	$0, -104(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.28
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	-104(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
.LBB4_10:                               # %if.end.32
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_get_fadeable
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_drawable_undo_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_12
# BB#11:                                # %if.then.36
	movl	$0, -124(%rbp)
	jmp	.LBB4_17
.LBB4_12:                               # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_15
# BB#13:                                # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_15
# BB#14:                                # %if.then.39
	movl	$1, -124(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.40
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_16:                               # %if.end.42
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.43
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.45
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 112(%rax)
	je	.LBB4_20
# BB#19:                                # %if.then.49
	movl	$1, -72(%rbp)
.LBB4_20:                               # %if.end.50
	cmpl	$0, -72(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.52
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	-96(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
.LBB4_22:                               # %if.end.56
	jmp	.LBB4_23
.LBB4_23:                               # %if.end.57
	jmp	.LBB4_24
.LBB4_24:                               # %if.end.58
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	je	.LBB4_26
# BB#25:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB4_27:                               # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.13, %rsi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movq	-8(%rbp), %rdi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	je	.LBB4_29
# BB#28:                                # %cond.true.62
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB4_30
.LBB4_29:                               # %cond.false.63
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB4_30:                               # %cond.end.65
	movq	-208(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.15, %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movq	-8(%rbp), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	je	.LBB4_32
# BB#31:                                # %cond.true.68
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false.69
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB4_33:                               # %cond.end.71
	movq	-224(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.17, %rsi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movb	%r8b, -233(%rbp)        # 1-byte Spill
	je	.LBB4_35
# BB#34:                                # %land.rhs
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -233(%rbp)         # 1-byte Spill
.LBB4_35:                               # %land.end
	movb	-233(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.13, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB4_37
# BB#36:                                # %land.rhs.77
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -249(%rbp)         # 1-byte Spill
.LBB4_37:                               # %land.end.79
	movb	-249(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.15, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movb	%al, -265(%rbp)         # 1-byte Spill
	je	.LBB4_39
# BB#38:                                # %land.rhs.84
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB4_39:                               # %land.end.86
	movb	-265(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.19, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movb	%al, -281(%rbp)         # 1-byte Spill
	je	.LBB4_41
# BB#40:                                # %land.rhs.91
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -281(%rbp)         # 1-byte Spill
.LBB4_41:                               # %land.end.93
	movb	-281(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.20, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movb	%al, -297(%rbp)         # 1-byte Spill
	je	.LBB4_45
# BB#42:                                # %land.rhs.98
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -298(%rbp)         # 1-byte Spill
	jne	.LBB4_44
# BB#43:                                # %lor.rhs
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -298(%rbp)         # 1-byte Spill
.LBB4_44:                               # %lor.end
	movb	-298(%rbp), %al         # 1-byte Reload
	movb	%al, -297(%rbp)         # 1-byte Spill
.LBB4_45:                               # %land.end.101
	movb	-297(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.21, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movb	%al, -313(%rbp)         # 1-byte Spill
	je	.LBB4_47
# BB#46:                                # %land.rhs.106
	cmpq	$0, -56(%rbp)
	setne	%al
	movb	%al, -313(%rbp)         # 1-byte Spill
.LBB4_47:                               # %land.end.108
	movb	-313(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.17, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movb	%al, -329(%rbp)         # 1-byte Spill
	je	.LBB4_49
# BB#48:                                # %land.rhs.113
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -329(%rbp)         # 1-byte Spill
.LBB4_49:                               # %land.end.117
	movb	-329(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.22, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movb	$1, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movb	%al, -345(%rbp)         # 1-byte Spill
	je	.LBB4_55
# BB#50:                                # %lor.rhs.126
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -346(%rbp)         # 1-byte Spill
	je	.LBB4_54
# BB#51:                                # %lor.rhs.128
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -60(%rbp)
	movb	%cl, -347(%rbp)         # 1-byte Spill
	je	.LBB4_53
# BB#52:                                # %land.rhs.130
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -347(%rbp)         # 1-byte Spill
.LBB4_53:                               # %land.end.134
	movb	-347(%rbp), %al         # 1-byte Reload
	movb	%al, -346(%rbp)         # 1-byte Spill
.LBB4_54:                               # %lor.end.136
	movb	-346(%rbp), %al         # 1-byte Reload
	movb	%al, -345(%rbp)         # 1-byte Spill
.LBB4_55:                               # %lor.end.137
	movb	-345(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.25, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.26, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movb	%al, -361(%rbp)         # 1-byte Spill
	je	.LBB4_61
# BB#56:                                # %land.rhs.143
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -362(%rbp)         # 1-byte Spill
	je	.LBB4_60
# BB#57:                                # %lor.rhs.145
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -60(%rbp)
	movb	%cl, -363(%rbp)         # 1-byte Spill
	je	.LBB4_59
# BB#58:                                # %land.rhs.147
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -363(%rbp)         # 1-byte Spill
.LBB4_59:                               # %land.end.151
	movb	-363(%rbp), %al         # 1-byte Reload
	movb	%al, -362(%rbp)         # 1-byte Spill
.LBB4_60:                               # %lor.end.153
	movb	-362(%rbp), %al         # 1-byte Reload
	movb	%al, -361(%rbp)         # 1-byte Spill
.LBB4_61:                               # %land.end.155
	movb	-361(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.27, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movb	%al, -377(%rbp)         # 1-byte Spill
	je	.LBB4_63
# BB#62:                                # %land.rhs.160
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -377(%rbp)         # 1-byte Spill
.LBB4_63:                               # %land.end.164
	movb	-377(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.28, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.30, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.31, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movb	%al, -393(%rbp)         # 1-byte Spill
	je	.LBB4_65
# BB#64:                                # %land.rhs.173
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -393(%rbp)         # 1-byte Spill
.LBB4_65:                               # %land.end.177
	movb	-393(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.32, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movb	%al, -409(%rbp)         # 1-byte Spill
	je	.LBB4_67
# BB#66:                                # %land.rhs.182
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -409(%rbp)         # 1-byte Spill
.LBB4_67:                               # %land.end.186
	movb	-409(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.8, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movb	%al, -425(%rbp)         # 1-byte Spill
	je	.LBB4_69
# BB#68:                                # %land.rhs.191
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -425(%rbp)         # 1-byte Spill
.LBB4_69:                               # %land.end.195
	movb	-425(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.9, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-424(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movb	%al, -441(%rbp)         # 1-byte Spill
	je	.LBB4_71
# BB#70:                                # %land.rhs.200
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -441(%rbp)         # 1-byte Spill
.LBB4_71:                               # %land.end.204
	movb	-441(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	edit_actions_update, .Lfunc_end4-edit_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"edit-action"
	.size	.L.str, 12

	.type	edit_actions,@object    # @edit_actions
	.section	.rodata,"a",@progbits
	.align	16
edit_actions:
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.36
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.38
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.42
	.quad	.L.str.13
	.quad	.L.str.40
	.quad	.L.str.14
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	edit_undo_cmd_callback
	.quad	.L.str.45
	.quad	.L.str.15
	.quad	.L.str.46
	.quad	.L.str.16
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	edit_redo_cmd_callback
	.quad	.L.str.49
	.quad	.L.str.19
	.quad	.L.str.40
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	edit_strong_undo_cmd_callback
	.quad	.L.str.53
	.quad	.L.str.20
	.quad	.L.str.46
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	edit_strong_redo_cmd_callback
	.quad	.L.str.57
	.quad	.L.str.21
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	edit_undo_clear_cmd_callback
	.quad	.L.str.62
	.quad	.L.str.17
	.quad	.L.str.40
	.quad	.L.str.18
	.quad	.L.str.60
	.quad	.L.str.63
	.quad	edit_fade_cmd_callback
	.quad	.L.str.64
	.quad	.L.str.22
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	edit_cut_cmd_callback
	.quad	.L.str.69
	.quad	.L.str.23
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	edit_copy_cmd_callback
	.quad	.L.str.74
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	edit_copy_visible_cmd_callback
	.quad	.L.str.78
	.quad	.L.str.25
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	edit_paste_cmd_callback
	.quad	.L.str.83
	.quad	.L.str.27
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	0
	.quad	.L.str.86
	.quad	edit_paste_into_cmd_callback
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	edit_paste_as_new_cmd_callback
	.quad	.L.str.93
	.quad	.L.str.1
	.quad	.L.str.89
	.quad	.L.str.94
	.quad	0
	.quad	.L.str.92
	.quad	edit_paste_as_new_cmd_callback
	.quad	.L.str.93
	.quad	.L.str.26
	.quad	0
	.quad	.L.str.95
	.quad	0
	.quad	.L.str.96
	.quad	edit_paste_as_new_layer_cmd_callback
	.quad	.L.str.97
	.quad	.L.str.28
	.quad	.L.str.65
	.quad	.L.str.98
	.quad	.L.str.60
	.quad	.L.str.99
	.quad	edit_named_cut_cmd_callback
	.quad	.L.str.100
	.quad	.L.str.29
	.quad	.L.str.70
	.quad	.L.str.101
	.quad	.L.str.60
	.quad	.L.str.102
	.quad	edit_named_copy_cmd_callback
	.quad	.L.str.103
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.104
	.quad	.L.str.60
	.quad	.L.str.105
	.quad	edit_named_copy_visible_cmd_callback
	.quad	.L.str.103
	.quad	.L.str.31
	.quad	.L.str.79
	.quad	.L.str.106
	.quad	.L.str.60
	.quad	.L.str.107
	.quad	edit_named_paste_cmd_callback
	.quad	.L.str.108
	.quad	.L.str.32
	.quad	.L.str.58
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	edit_clear_cmd_callback
	.quad	.L.str.112
	.size	edit_actions, 1288

	.type	edit_fill_actions,@object # @edit_fill_actions
	.align	16
edit_fill_actions:
	.quad	.L.str.8
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.117
	.quad	.L.str.9
	.quad	.L.str.113
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.121
	.quad	.L.str.3
	.quad	.L.str.113
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	.L.str.125
	.size	edit_fill_actions, 168

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"edit-paste-as-new-short"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<Actions>/edit/edit-paste-as-new"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"edit-fill-pattern"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"context"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"foreground-changed"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"background-changed"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pattern-changed"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"edit-fill-fg"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"edit-fill-bg"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Undo %s"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Redo %s"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Fade %s..."
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"edit-undo"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Undo"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"edit-redo"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Redo"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"edit-fade"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Fade..."
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"edit-strong-undo"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"edit-strong-redo"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"edit-undo-clear"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"edit-cut"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"edit-copy"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"edit-copy-visible"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"edit-paste"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"edit-paste-as-new-layer"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"edit-paste-into"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"edit-named-cut"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"edit-named-copy"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"edit-named-copy-visible"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"edit-named-paste"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"edit-clear"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"edit-menu"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Edit"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"edit-paste-as-menu"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Paste _as"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"edit-buffer-menu"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Buffer"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"undo-popup"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-undo"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Undo History Menu"
	.size	.L.str.41, 18

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-undo-dialog"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"<primary>Z"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Undo the last operation"
	.size	.L.str.44, 24

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-edit-undo"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gtk-redo"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"<primary>Y"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Redo the last operation that was undone"
	.size	.L.str.48, 40

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-edit-redo"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Strong Undo"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"<primary><shift>Z"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Undo the last operation, skipping visibility changes"
	.size	.L.str.52, 53

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-edit-strong-undo"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Strong Redo"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"<primary><shift>Y"
	.size	.L.str.55, 18

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Redo the last operation that was undone, skipping visibility changes"
	.size	.L.str.56, 69

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-edit-strong-redo"
	.size	.L.str.57, 22

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gtk-clear"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Clear Undo History"
	.size	.L.str.59, 20

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.zero	1
	.size	.L.str.60, 1

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Remove all operations from the undo history"
	.size	.L.str.61, 44

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-edit-undo-clear"
	.size	.L.str.62, 21

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Modify paint mode and opacity of the last pixel manipulation"
	.size	.L.str.63, 61

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-edit-fade"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gtk-cut"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Cu_t"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"<primary>X"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Move the selected pixels to the clipboard"
	.size	.L.str.68, 42

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-edit-cut"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gtk-copy"
	.size	.L.str.70, 9

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"_Copy"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"<primary>C"
	.size	.L.str.72, 11

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Copy the selected pixels to the clipboard"
	.size	.L.str.73, 42

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-edit-copy"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Copy _Visible"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"<primary><shift>C"
	.size	.L.str.76, 18

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Copy what is visible in the selected region"
	.size	.L.str.77, 44

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-edit-copy-visible"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gtk-paste"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"_Paste"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"<primary>V"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Paste the content of the clipboard"
	.size	.L.str.82, 35

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-edit-paste"
	.size	.L.str.83, 16

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gimp-paste-into"
	.size	.L.str.84, 16

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Paste _Into"
	.size	.L.str.85, 12

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Paste the content of the clipboard into the current selection"
	.size	.L.str.86, 62

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gimp-edit-paste-into"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"edit-paste-as-new"
	.size	.L.str.88, 18

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-paste-as-new"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"From _Clipboard"
	.size	.L.str.90, 16

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"<primary><shift>V"
	.size	.L.str.91, 18

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Create a new image from the content of the clipboard"
	.size	.L.str.92, 53

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-edit-paste-as-new"
	.size	.L.str.93, 23

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"_New Image"
	.size	.L.str.94, 11

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"New _Layer"
	.size	.L.str.95, 11

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Create a new layer from the content of the clipboard"
	.size	.L.str.96, 53

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-edit-paste-as-new-layer"
	.size	.L.str.97, 29

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Cu_t Named..."
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Move the selected pixels to a named buffer"
	.size	.L.str.99, 43

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-buffer-cut"
	.size	.L.str.100, 16

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"_Copy Named..."
	.size	.L.str.101, 15

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Copy the selected pixels to a named buffer"
	.size	.L.str.102, 43

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-buffer-copy"
	.size	.L.str.103, 17

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Copy _Visible Named..."
	.size	.L.str.104, 23

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Copy what is visible in the selected region to a named buffer"
	.size	.L.str.105, 62

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"_Paste Named..."
	.size	.L.str.106, 16

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Paste the content of a named buffer"
	.size	.L.str.107, 36

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-buffer-paste"
	.size	.L.str.108, 18

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Cl_ear"
	.size	.L.str.109, 7

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Delete"
	.size	.L.str.110, 7

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Clear the selected pixels"
	.size	.L.str.111, 26

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-edit-clear"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.113, 22

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Fill with _FG Color"
	.size	.L.str.114, 20

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"<primary>comma"
	.size	.L.str.115, 15

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Fill the selection using the foreground color"
	.size	.L.str.116, 46

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-edit-fill-fg"
	.size	.L.str.117, 18

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Fill with B_G Color"
	.size	.L.str.118, 20

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"<primary>period"
	.size	.L.str.119, 16

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Fill the selection using the background color"
	.size	.L.str.120, 46

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-edit-fill-bg"
	.size	.L.str.121, 18

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Fill _with Pattern"
	.size	.L.str.122, 19

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"<primary>semicolon"
	.size	.L.str.123, 19

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Fill the selection using the active pattern"
	.size	.L.str.124, 44

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"gimp-edit-fill-pattern"
	.size	.L.str.125, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
