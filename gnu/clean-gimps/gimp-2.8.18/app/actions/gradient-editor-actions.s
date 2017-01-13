	.text
	.file	"gradient-editor-actions.bc"
	.globl	gradient_editor_actions_setup
	.align	16, 0x90
	.type	gradient_editor_actions_setup,@function
gradient_editor_actions_setup:          # @gradient_editor_actions_setup
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
	subq	$96, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$gradient_editor_actions, %rdx
	movl	$20, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$gradient_editor_toggle_actions, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str, %rsi
	movabsq	$gradient_editor_load_left_actions, %rdx
	movl	$14, %ecx
	movabsq	$gradient_editor_load_left_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$gradient_editor_save_left_actions, %rdx
	movl	$10, %ecx
	movabsq	$gradient_editor_save_left_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$gradient_editor_load_right_actions, %rdx
	movl	$14, %ecx
	movabsq	$gradient_editor_load_right_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$gradient_editor_save_right_actions, %rdx
	movl	$10, %ecx
	movabsq	$gradient_editor_save_right_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str.1, %rsi
	movabsq	$gradient_editor_left_color_type_actions, %rdx
	movl	$5, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$gradient_editor_left_color_type_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str.1, %rsi
	movabsq	$gradient_editor_right_color_type_actions, %rdx
	movl	$5, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$gradient_editor_right_color_type_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str.2, %rsi
	movabsq	$gradient_editor_blending_actions, %rdx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$gradient_editor_blending_func_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str.3, %rsi
	movabsq	$gradient_editor_coloring_actions, %rdx
	movl	$4, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$gradient_editor_coloring_type_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_radio_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$gradient_editor_zoom_actions, %rdx
	movl	$3, %ecx
	movabsq	$gradient_editor_zoom_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_enum_actions
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gradient_editor_actions_setup, .Lfunc_end0-gradient_editor_actions_setup
	.cfi_endproc

	.globl	gradient_editor_actions_update
	.align	16, 0x90
	.type	gradient_editor_actions_update,@function
gradient_editor_actions_update:         # @gradient_editor_actions_update
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
	subq	$704, %rsp              # imm = 0x2C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gimp_gradient_editor_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -244(%rbp)
	movl	$1, -248(%rbp)
	movl	$1, -252(%rbp)
	movl	$1, -256(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -264(%rbp)
	movl	$0, -268(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_19
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB1_3
# BB#2:                                 # %if.then.8
	movl	$1, -44(%rbp)
.LBB1_3:                                # %if.end
	xorl	%ecx, %ecx
	leaq	-80(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	gimp_gradient_get_color_at
	movq	-24(%rbp), %rdx
	movq	304(%rdx), %rdx
	cmpq	$0, 112(%rdx)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	je	.LBB1_5
# BB#4:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -288(%rbp)
.LBB1_6:                                # %if.end.18
	xorl	%ecx, %ecx
	leaq	-144(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-288(%rbp), %rdx
	movq	-288(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_gradient_get_color_at
	xorl	%ecx, %ecx
	leaq	-112(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	144(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movq	312(%rdx), %rdx
	movq	-24(%rbp), %r9
	movq	312(%r9), %r9
	movsd	16(%r9), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_color_at
	movq	-24(%rbp), %rdx
	movq	312(%rdx), %rdx
	cmpq	$0, 120(%rdx)
	movq	%rax, -360(%rbp)        # 8-byte Spill
	je	.LBB1_8
# BB#7:                                 # %if.then.27
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -296(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.30
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdi
	callq	gimp_gradient_segment_get_first
	movq	%rax, -296(%rbp)
.LBB1_9:                                # %if.end.33
	xorl	%ecx, %ecx
	leaq	-176(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-296(%rbp), %rdx
	movq	-296(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	gimp_gradient_get_color_at
	movq	-24(%rbp), %rdx
	movq	304(%rdx), %rdx
	cmpl	$0, 24(%rdx)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -252(%rbp)
	movq	-24(%rbp), %rdx
	movq	312(%rdx), %rdx
	cmpl	$0, 64(%rdx)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -256(%rbp)
	movq	-24(%rbp), %rdx
	movq	304(%rdx), %rdx
	movl	104(%rdx), %ecx
	movl	%ecx, -272(%rbp)
	movq	-24(%rbp), %rdx
	movq	304(%rdx), %rdx
	movl	108(%rdx), %ecx
	movl	%ecx, -276(%rbp)
	movq	-24(%rbp), %rdx
	movq	304(%rdx), %rdx
	movq	%rdx, -304(%rbp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB1_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -244(%rbp)
	movb	%cl, -369(%rbp)         # 1-byte Spill
	je	.LBB1_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-304(%rbp), %rax
	movl	104(%rax), %ecx
	cmpl	-272(%rbp), %ecx
	sete	%dl
	movb	%dl, -369(%rbp)         # 1-byte Spill
.LBB1_12:                               # %land.end
                                        #   in Loop: Header=BB1_10 Depth=1
	movb	-369(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -244(%rbp)
	cmpl	$0, -248(%rbp)
	movb	%dl, -370(%rbp)         # 1-byte Spill
	je	.LBB1_14
# BB#13:                                # %land.rhs.51
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-304(%rbp), %rax
	movl	108(%rax), %ecx
	cmpl	-276(%rbp), %ecx
	sete	%dl
	movb	%dl, -370(%rbp)         # 1-byte Spill
.LBB1_14:                               # %land.end.55
                                        #   in Loop: Header=BB1_10 Depth=1
	movb	-370(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -248(%rbp)
	movq	-304(%rbp), %rdx
	movq	%rdx, -312(%rbp)
	movq	-304(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	%rdx, -304(%rbp)
# BB#15:                                # %do.cond
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-312(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	312(%rcx), %rax
	jne	.LBB1_10
# BB#16:                                # %do.end
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movq	304(%rcx), %rcx
	movq	-24(%rbp), %rdx
	cmpq	312(%rdx), %rcx
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movl	%edi, -260(%rbp)
	movq	-24(%rbp), %rcx
	movq	304(%rcx), %rcx
	cmpq	$0, 112(%rcx)
	movb	%al, -371(%rbp)         # 1-byte Spill
	jne	.LBB1_18
# BB#17:                                # %lor.rhs
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	cmpq	$0, 120(%rax)
	setne	%cl
	movb	%cl, -371(%rbp)         # 1-byte Spill
.LBB1_18:                               # %lor.end
	movb	-371(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -264(%rbp)
.LBB1_19:                               # %if.end.71
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB1_21
# BB#20:                                # %if.then.74
	leaq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_foreground
	leaq	-240(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_background
.LBB1_21:                               # %if.end.77
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#22:                                # %if.then.82
	movl	$0, -44(%rbp)
.LBB1_23:                               # %if.end.83
	cmpl	$0, -44(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.85
	movl	$0, -252(%rbp)
	movl	$0, -256(%rbp)
.LBB1_25:                               # %if.end.86
	movq	-32(%rbp), %rdi
	callq	gimp_data_editor_get_edit_active
	movabsq	$.L.str.4, %rsi
	movl	%eax, -268(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -40(%rbp)
	je	.LBB1_33
# BB#26:                                # %if.then.99
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	ja	.LBB1_32
# BB#85:                                # %if.then.99
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_27:                               # %sw.bb
	movabsq	$.L.str.4, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_32
.LBB1_28:                               # %sw.bb.102
	movabsq	$.L.str.5, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_32
.LBB1_29:                               # %sw.bb.103
	movabsq	$.L.str.6, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_32
.LBB1_30:                               # %sw.bb.104
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_32
.LBB1_31:                               # %sw.bb.105
	movabsq	$.L.str.8, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_32:                               # %sw.epilog
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.106
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -40(%rbp)
	je	.LBB1_35
# BB#34:                                # %if.then.114
	movabsq	$.L.str.9, %rsi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.10, %rsi
	leaq	-144(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.11, %rsi
	leaq	-112(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
.LBB1_35:                               # %if.end.115
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	cmpq	$0, 144(%rsi)
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	je	.LBB1_37
# BB#36:                                # %cond.true
	leaq	-208(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB1_38
.LBB1_37:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB1_38
.LBB1_38:                               # %cond.end
	movq	-416(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	je	.LBB1_40
# BB#39:                                # %cond.true.124
	leaq	-240(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB1_41
.LBB1_40:                               # %cond.false.125
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB1_41
.LBB1_41:                               # %cond.end.126
	movq	-432(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -252(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.14, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.15, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$32, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.16, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.17, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$96, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.18, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$128, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.19, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$160, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.20, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$192, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.21, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$224, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.22, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.23, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.25, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.26, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.28, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.30, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.31, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.32, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.33, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.24, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.25, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$32, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.26, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.27, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$96, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.28, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$128, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.29, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$160, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.30, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$192, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.31, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$224, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.32, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.33, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.34, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.35, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.37, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.38, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -40(%rbp)
	je	.LBB1_49
# BB#42:                                # %if.then.217
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	ja	.LBB1_48
# BB#86:                                # %if.then.217
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_43:                               # %sw.bb.220
	movabsq	$.L.str.34, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_48
.LBB1_44:                               # %sw.bb.221
	movabsq	$.L.str.35, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_48
.LBB1_45:                               # %sw.bb.222
	movabsq	$.L.str.36, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_48
.LBB1_46:                               # %sw.bb.223
	movabsq	$.L.str.37, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_48
.LBB1_47:                               # %sw.bb.224
	movabsq	$.L.str.38, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_48:                               # %sw.epilog.225
	jmp	.LBB1_49
.LBB1_49:                               # %if.end.226
	movabsq	$.L.str.39, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.41, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -40(%rbp)
	je	.LBB1_51
# BB#50:                                # %if.then.234
	movabsq	$.L.str.39, %rsi
	leaq	-112(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.40, %rsi
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.41, %rsi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
.LBB1_51:                               # %if.end.235
	movabsq	$.L.str.42, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.43, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	cmpq	$0, 144(%rsi)
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	je	.LBB1_53
# BB#52:                                # %cond.true.242
	leaq	-208(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB1_54
.LBB1_53:                               # %cond.false.243
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB1_54
.LBB1_54:                               # %cond.end.244
	movq	-464(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.42, %rsi
	xorl	%ecx, %ecx
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	je	.LBB1_56
# BB#55:                                # %cond.true.248
	leaq	-240(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB1_57
.LBB1_56:                               # %cond.false.249
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB1_57
.LBB1_57:                               # %cond.end.250
	movq	-480(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.43, %rsi
	xorl	%ecx, %ecx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.45, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.46, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.47, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.48, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.49, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.50, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.51, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.52, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.53, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -256(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.44, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.45, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$32, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.46, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.47, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$96, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.48, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$128, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.49, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$160, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.50, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$192, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.51, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$224, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.52, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.53, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.54, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.55, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.56, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.57, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.58, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.59, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.60, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.61, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.62, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.63, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.54, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.55, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$32, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.56, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$64, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.57, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$96, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.58, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$128, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.59, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$160, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.60, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$192, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.61, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$224, %rax
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.62, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.63, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.64, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.65, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.66, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.67, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movb	%r8b, -489(%rbp)        # 1-byte Spill
	je	.LBB1_59
# BB#58:                                # %land.rhs.341
	cmpl	$0, -264(%rbp)
	setne	%al
	movb	%al, -489(%rbp)         # 1-byte Spill
.LBB1_59:                               # %land.end.343
	movb	-489(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.68, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.69, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.70, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpl	$0, -260(%rbp)
	jne	.LBB1_61
# BB#60:                                # %if.then.352
	movabsq	$.L.str.72, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.71, %rsi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.74, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.73, %rsi
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.75, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.64, %rsi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.76, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.77, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.66, %rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.78, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.67, %rsi
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.79, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.68, %rsi
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.80, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.69, %rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.81, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.70, %rsi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	jmp	.LBB1_62
.LBB1_61:                               # %if.else.362
	movabsq	$.L.str.82, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.71, %rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.83, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.73, %rsi
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.84, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.64, %rsi
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.85, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rsi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.86, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.66, %rsi
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.87, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.67, %rsi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.88, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.68, %rsi
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.89, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.69, %rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.90, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.70, %rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
.LBB1_62:                               # %if.end.372
	movabsq	$.L.str.91, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.91, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.92, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.93, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.94, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.95, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.96, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpl	$0, -244(%rbp)
	je	.LBB1_71
# BB#63:                                # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB1_71
# BB#64:                                # %if.then.388
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movl	104(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	ja	.LBB1_70
# BB#87:                                # %if.then.388
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_65:                               # %sw.bb.391
	movabsq	$.L.str.92, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_70
.LBB1_66:                               # %sw.bb.392
	movabsq	$.L.str.93, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_70
.LBB1_67:                               # %sw.bb.393
	movabsq	$.L.str.94, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_70
.LBB1_68:                               # %sw.bb.394
	movabsq	$.L.str.95, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_70
.LBB1_69:                               # %sw.bb.395
	movabsq	$.L.str.96, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_70:                               # %sw.epilog.396
	jmp	.LBB1_72
.LBB1_71:                               # %if.else.397
	movabsq	$.L.str.91, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_72:                               # %if.end.398
	movabsq	$.L.str.97, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.97, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -248(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.98, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.99, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.100, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpl	$0, -248(%rbp)
	je	.LBB1_79
# BB#73:                                # %land.lhs.true.411
	cmpq	$0, -40(%rbp)
	je	.LBB1_79
# BB#74:                                # %if.then.413
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movl	108(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	je	.LBB1_75
	jmp	.LBB1_88
.LBB1_88:                               # %if.then.413
	movl	-660(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	je	.LBB1_76
	jmp	.LBB1_89
.LBB1_89:                               # %if.then.413
	movl	-660(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	je	.LBB1_77
	jmp	.LBB1_78
.LBB1_75:                               # %sw.bb.416
	movabsq	$.L.str.98, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_78
.LBB1_76:                               # %sw.bb.417
	movabsq	$.L.str.99, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_78
.LBB1_77:                               # %sw.bb.418
	movabsq	$.L.str.100, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_78:                               # %sw.epilog.419
	jmp	.LBB1_80
.LBB1_79:                               # %if.else.420
	movabsq	$.L.str.97, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_80:                               # %if.end.421
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movb	%cl, -681(%rbp)         # 1-byte Spill
	je	.LBB1_82
# BB#81:                                # %land.rhs.423
	cmpl	$0, -260(%rbp)
	setne	%al
	movb	%al, -681(%rbp)         # 1-byte Spill
.LBB1_82:                               # %land.end.425
	movb	-681(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.101, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-680(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movb	%al, -697(%rbp)         # 1-byte Spill
	je	.LBB1_84
# BB#83:                                # %land.rhs.430
	cmpl	$0, -260(%rbp)
	setne	%al
	movb	%al, -697(%rbp)         # 1-byte Spill
.LBB1_84:                               # %land.end.432
	movb	-697(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.102, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-696(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.103, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.104, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.105, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.106, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -268(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gradient_editor_actions_update, .Lfunc_end1-gradient_editor_actions_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_27
	.quad	.LBB1_28
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_31
.LJTI1_1:
	.quad	.LBB1_43
	.quad	.LBB1_44
	.quad	.LBB1_45
	.quad	.LBB1_46
	.quad	.LBB1_47
.LJTI1_2:
	.quad	.LBB1_65
	.quad	.LBB1_66
	.quad	.LBB1_67
	.quad	.LBB1_68
	.quad	.LBB1_69

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gradient-editor-action"
	.size	.L.str, 23

	.type	gradient_editor_actions,@object # @gradient_editor_actions
	.section	.rodata,"a",@progbits
	.align	16
gradient_editor_actions:
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	0
	.quad	.L.str.112
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.119
	.quad	0
	.quad	.L.str.120
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.121
	.quad	.L.str.114
	.quad	.L.str.122
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.123
	.quad	.L.str.117
	.quad	.L.str.124
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.71
	.quad	0
	.quad	.L.str.125
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.73
	.quad	0
	.quad	.L.str.126
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.9
	.quad	0
	.quad	.L.str.127
	.quad	0
	.quad	0
	.quad	gradient_editor_left_color_cmd_callback
	.quad	.L.str.128
	.quad	.L.str.39
	.quad	0
	.quad	.L.str.129
	.quad	0
	.quad	0
	.quad	gradient_editor_right_color_cmd_callback
	.quad	.L.str.130
	.quad	.L.str.64
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	0
	.quad	0
	.quad	gradient_editor_flip_cmd_callback
	.quad	.L.str.133
	.quad	.L.str.65
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	0
	.quad	0
	.quad	gradient_editor_replicate_cmd_callback
	.quad	.L.str.133
	.quad	.L.str.66
	.quad	0
	.quad	.L.str.136
	.quad	0
	.quad	0
	.quad	gradient_editor_split_midpoint_cmd_callback
	.quad	.L.str.137
	.quad	.L.str.67
	.quad	0
	.quad	.L.str.138
	.quad	0
	.quad	0
	.quad	gradient_editor_split_uniformly_cmd_callback
	.quad	.L.str.139
	.quad	.L.str.68
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	0
	.quad	gradient_editor_delete_cmd_callback
	.quad	.L.str.143
	.quad	.L.str.69
	.quad	0
	.quad	.L.str.144
	.quad	0
	.quad	0
	.quad	gradient_editor_recenter_cmd_callback
	.quad	.L.str.145
	.quad	.L.str.70
	.quad	0
	.quad	.L.str.146
	.quad	0
	.quad	0
	.quad	gradient_editor_redistribute_cmd_callback
	.quad	.L.str.147
	.quad	.L.str.101
	.quad	0
	.quad	.L.str.148
	.quad	0
	.quad	0
	.quad	gradient_editor_blend_color_cmd_callback
	.quad	.L.str.149
	.quad	.L.str.102
	.quad	0
	.quad	.L.str.150
	.quad	0
	.quad	0
	.quad	gradient_editor_blend_opacity_cmd_callback
	.quad	.L.str.151
	.size	gradient_editor_actions, 1120

	.type	gradient_editor_toggle_actions,@object # @gradient_editor_toggle_actions
	.align	16
gradient_editor_toggle_actions:
	.quad	.L.str.106
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	0
	.quad	0
	.quad	data_editor_edit_active_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.154
	.size	gradient_editor_toggle_actions, 64

	.type	gradient_editor_load_left_actions,@object # @gradient_editor_load_left_actions
	.align	16
gradient_editor_load_left_actions:
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.155
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.11
	.quad	0
	.quad	.L.str.157
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.158
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.159
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.160
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.161
	.quad	0
	.quad	0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.162
	.quad	0
	.quad	0
	.long	6                       # 0x6
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.163
	.quad	0
	.quad	0
	.long	7                       # 0x7
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.164
	.quad	0
	.quad	0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.165
	.quad	0
	.quad	0
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.20
	.quad	0
	.quad	.L.str.166
	.quad	0
	.quad	0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.167
	.quad	0
	.quad	0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.22
	.quad	0
	.quad	.L.str.168
	.quad	0
	.quad	0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.156
	.quad	.L.str.23
	.quad	0
	.quad	.L.str.169
	.quad	0
	.quad	0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.quad	.L.str.156
	.size	gradient_editor_load_left_actions, 784

	.type	gradient_editor_save_left_actions,@object # @gradient_editor_save_left_actions
	.align	16
gradient_editor_save_left_actions:
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.160
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.25
	.quad	0
	.quad	.L.str.161
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.26
	.quad	0
	.quad	.L.str.162
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.163
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.28
	.quad	0
	.quad	.L.str.164
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.165
	.quad	0
	.quad	0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.166
	.quad	0
	.quad	0
	.long	6                       # 0x6
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.31
	.quad	0
	.quad	.L.str.167
	.quad	0
	.quad	0
	.long	7                       # 0x7
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.32
	.quad	0
	.quad	.L.str.168
	.quad	0
	.quad	0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.169
	.quad	0
	.quad	0
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	.L.str.170
	.size	gradient_editor_save_left_actions, 560

	.type	gradient_editor_load_right_actions,@object # @gradient_editor_load_right_actions
	.align	16
gradient_editor_load_right_actions:
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.171
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.41
	.quad	0
	.quad	.L.str.173
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.42
	.quad	0
	.quad	.L.str.158
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.43
	.quad	0
	.quad	.L.str.159
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.44
	.quad	0
	.quad	.L.str.160
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.45
	.quad	0
	.quad	.L.str.161
	.quad	0
	.quad	0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.46
	.quad	0
	.quad	.L.str.162
	.quad	0
	.quad	0
	.long	6                       # 0x6
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.47
	.quad	0
	.quad	.L.str.163
	.quad	0
	.quad	0
	.long	7                       # 0x7
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.48
	.quad	0
	.quad	.L.str.164
	.quad	0
	.quad	0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.49
	.quad	0
	.quad	.L.str.165
	.quad	0
	.quad	0
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.166
	.quad	0
	.quad	0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.51
	.quad	0
	.quad	.L.str.167
	.quad	0
	.quad	0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.52
	.quad	0
	.quad	.L.str.168
	.quad	0
	.quad	0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.169
	.quad	0
	.quad	0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.quad	.L.str.172
	.size	gradient_editor_load_right_actions, 784

	.type	gradient_editor_save_right_actions,@object # @gradient_editor_save_right_actions
	.align	16
gradient_editor_save_right_actions:
	.quad	.L.str.54
	.quad	0
	.quad	.L.str.160
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.55
	.quad	0
	.quad	.L.str.161
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.162
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.57
	.quad	0
	.quad	.L.str.163
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.58
	.quad	0
	.quad	.L.str.164
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.59
	.quad	0
	.quad	.L.str.165
	.quad	0
	.quad	0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.60
	.quad	0
	.quad	.L.str.166
	.quad	0
	.quad	0
	.long	6                       # 0x6
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.61
	.quad	0
	.quad	.L.str.167
	.quad	0
	.quad	0
	.long	7                       # 0x7
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.62
	.quad	0
	.quad	.L.str.168
	.quad	0
	.quad	0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.quad	.L.str.174
	.quad	.L.str.63
	.quad	0
	.quad	.L.str.169
	.quad	0
	.quad	0
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	.L.str.174
	.size	gradient_editor_save_right_actions, 560

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gradient-editor-color-type"
	.size	.L.str.1, 27

	.type	gradient_editor_left_color_type_actions,@object # @gradient_editor_left_color_type_actions
	.section	.rodata,"a",@progbits
	.align	16
gradient_editor_left_color_type_actions:
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.175
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.5
	.quad	0
	.quad	.L.str.176
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.177
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.159
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.178
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.128
	.size	gradient_editor_left_color_type_actions, 280

	.type	gradient_editor_right_color_type_actions,@object # @gradient_editor_right_color_type_actions
	.align	16
gradient_editor_right_color_type_actions:
	.quad	.L.str.34
	.quad	0
	.quad	.L.str.175
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.130
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.176
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.quad	.L.str.36
	.quad	0
	.quad	.L.str.177
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.130
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.159
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.130
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.178
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.130
	.size	gradient_editor_right_color_type_actions, 280

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gradient-editor-blending"
	.size	.L.str.2, 25

	.type	gradient_editor_blending_actions,@object # @gradient_editor_blending_actions
	.section	.rodata,"a",@progbits
	.align	16
gradient_editor_blending_actions:
	.quad	.L.str.92
	.quad	0
	.quad	.L.str.179
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.93
	.quad	0
	.quad	.L.str.181
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.94
	.quad	0
	.quad	.L.str.182
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.95
	.quad	0
	.quad	.L.str.183
	.quad	0
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.96
	.quad	0
	.quad	.L.str.184
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.180
	.quad	.L.str.91
	.quad	0
	.quad	.L.str.185
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.180
	.size	gradient_editor_blending_actions, 336

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gradient-editor-coloring"
	.size	.L.str.3, 25

	.type	gradient_editor_coloring_actions,@object # @gradient_editor_coloring_actions
	.section	.rodata,"a",@progbits
	.align	16
gradient_editor_coloring_actions:
	.quad	.L.str.98
	.quad	0
	.quad	.L.str.186
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.187
	.quad	.L.str.99
	.quad	0
	.quad	.L.str.188
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.187
	.quad	.L.str.100
	.quad	0
	.quad	.L.str.189
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.187
	.quad	.L.str.97
	.quad	0
	.quad	.L.str.185
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.187
	.size	gradient_editor_coloring_actions, 224

	.type	gradient_editor_zoom_actions,@object # @gradient_editor_zoom_actions
	.align	16
gradient_editor_zoom_actions:
	.quad	.L.str.104
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	0
	.quad	.L.str.192
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.193
	.quad	.L.str.103
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	0
	.quad	.L.str.196
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.197
	.quad	.L.str.105
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	0
	.quad	.L.str.200
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.201
	.size	gradient_editor_zoom_actions, 168

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gradient-editor-left-color-fixed"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gradient-editor-left-color-foreground"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gradient-editor-left-color-foreground-transparent"
	.size	.L.str.6, 50

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gradient-editor-left-color-background"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gradient-editor-left-color-background-transparent"
	.size	.L.str.8, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gradient-editor-left-color"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gradient-editor-load-left-left-neighbor"
	.size	.L.str.10, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gradient-editor-load-left-right-endpoint"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gradient-editor-load-left-fg"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gradient-editor-load-left-bg"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gradient-editor-load-left-01"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gradient-editor-load-left-02"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gradient-editor-load-left-03"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gradient-editor-load-left-04"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gradient-editor-load-left-05"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gradient-editor-load-left-06"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gradient-editor-load-left-07"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gradient-editor-load-left-08"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gradient-editor-load-left-09"
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gradient-editor-load-left-10"
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gradient-editor-save-left-01"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gradient-editor-save-left-02"
	.size	.L.str.25, 29

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gradient-editor-save-left-03"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gradient-editor-save-left-04"
	.size	.L.str.27, 29

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gradient-editor-save-left-05"
	.size	.L.str.28, 29

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gradient-editor-save-left-06"
	.size	.L.str.29, 29

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gradient-editor-save-left-07"
	.size	.L.str.30, 29

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gradient-editor-save-left-08"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gradient-editor-save-left-09"
	.size	.L.str.32, 29

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gradient-editor-save-left-10"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gradient-editor-right-color-fixed"
	.size	.L.str.34, 34

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gradient-editor-right-color-foreground"
	.size	.L.str.35, 39

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gradient-editor-right-color-foreground-transparent"
	.size	.L.str.36, 51

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gradient-editor-right-color-background"
	.size	.L.str.37, 39

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gradient-editor-right-color-background-transparent"
	.size	.L.str.38, 51

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gradient-editor-right-color"
	.size	.L.str.39, 28

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gradient-editor-load-right-right-neighbor"
	.size	.L.str.40, 42

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gradient-editor-load-right-left-endpoint"
	.size	.L.str.41, 41

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gradient-editor-load-right-fg"
	.size	.L.str.42, 30

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gradient-editor-load-right-bg"
	.size	.L.str.43, 30

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gradient-editor-load-right-01"
	.size	.L.str.44, 30

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gradient-editor-load-right-02"
	.size	.L.str.45, 30

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gradient-editor-load-right-03"
	.size	.L.str.46, 30

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gradient-editor-load-right-04"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gradient-editor-load-right-05"
	.size	.L.str.48, 30

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gradient-editor-load-right-06"
	.size	.L.str.49, 30

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gradient-editor-load-right-07"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gradient-editor-load-right-08"
	.size	.L.str.51, 30

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gradient-editor-load-right-09"
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gradient-editor-load-right-10"
	.size	.L.str.53, 30

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gradient-editor-save-right-01"
	.size	.L.str.54, 30

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gradient-editor-save-right-02"
	.size	.L.str.55, 30

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gradient-editor-save-right-03"
	.size	.L.str.56, 30

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gradient-editor-save-right-04"
	.size	.L.str.57, 30

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gradient-editor-save-right-05"
	.size	.L.str.58, 30

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gradient-editor-save-right-06"
	.size	.L.str.59, 30

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gradient-editor-save-right-07"
	.size	.L.str.60, 30

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gradient-editor-save-right-08"
	.size	.L.str.61, 30

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gradient-editor-save-right-09"
	.size	.L.str.62, 30

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gradient-editor-save-right-10"
	.size	.L.str.63, 30

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gradient-editor-flip"
	.size	.L.str.64, 21

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gradient-editor-replicate"
	.size	.L.str.65, 26

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gradient-editor-split-midpoint"
	.size	.L.str.66, 31

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gradient-editor-split-uniform"
	.size	.L.str.67, 30

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gradient-editor-delete"
	.size	.L.str.68, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gradient-editor-recenter"
	.size	.L.str.69, 25

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gradient-editor-redistribute"
	.size	.L.str.70, 29

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gradient-editor-blending-func"
	.size	.L.str.71, 30

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"_Blending Function for Segment"
	.size	.L.str.72, 31

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gradient-editor-coloring-type"
	.size	.L.str.73, 30

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Coloring _Type for Segment"
	.size	.L.str.74, 27

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"_Flip Segment"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"_Replicate Segment..."
	.size	.L.str.76, 22

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Split Segment at _Midpoint"
	.size	.L.str.77, 27

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Split Segment _Uniformly..."
	.size	.L.str.78, 28

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"_Delete Segment"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Re-_center Segment's Midpoint"
	.size	.L.str.80, 30

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Re-distribute _Handles in Segment"
	.size	.L.str.81, 34

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"_Blending Function for Selection"
	.size	.L.str.82, 33

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Coloring _Type for Selection"
	.size	.L.str.83, 29

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"_Flip Selection"
	.size	.L.str.84, 16

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"_Replicate Selection..."
	.size	.L.str.85, 24

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Split Segments at _Midpoints"
	.size	.L.str.86, 29

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Split Segments _Uniformly..."
	.size	.L.str.87, 29

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"_Delete Selection"
	.size	.L.str.88, 18

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Re-_center Midpoints in Selection"
	.size	.L.str.89, 34

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Re-distribute _Handles in Selection"
	.size	.L.str.90, 36

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gradient-editor-blending-varies"
	.size	.L.str.91, 32

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gradient-editor-blending-linear"
	.size	.L.str.92, 32

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gradient-editor-blending-curved"
	.size	.L.str.93, 32

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gradient-editor-blending-sine"
	.size	.L.str.94, 30

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gradient-editor-blending-sphere-increasing"
	.size	.L.str.95, 43

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gradient-editor-blending-sphere-decreasing"
	.size	.L.str.96, 43

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gradient-editor-coloring-varies"
	.size	.L.str.97, 32

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gradient-editor-coloring-rgb"
	.size	.L.str.98, 29

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gradient-editor-coloring-hsv-ccw"
	.size	.L.str.99, 33

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gradient-editor-coloring-hsv-cw"
	.size	.L.str.100, 32

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gradient-editor-blend-color"
	.size	.L.str.101, 28

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gradient-editor-blend-opacity"
	.size	.L.str.102, 30

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gradient-editor-zoom-out"
	.size	.L.str.103, 25

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gradient-editor-zoom-in"
	.size	.L.str.104, 24

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"gradient-editor-zoom-all"
	.size	.L.str.105, 25

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gradient-editor-edit-active"
	.size	.L.str.106, 28

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gradient-editor-popup"
	.size	.L.str.107, 22

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-tool-blend"
	.size	.L.str.108, 16

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Gradient Editor Menu"
	.size	.L.str.109, 21

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-gradient-editor-dialog"
	.size	.L.str.110, 28

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gradient-editor-left-color-type"
	.size	.L.str.111, 32

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Left Color Type"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gradient-editor-load-left-color"
	.size	.L.str.113, 32

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gtk-revert-to-saved"
	.size	.L.str.114, 20

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"_Load Left Color From"
	.size	.L.str.115, 22

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gradient-editor-save-left-color"
	.size	.L.str.116, 32

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gtk-save"
	.size	.L.str.117, 9

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"_Save Left Color To"
	.size	.L.str.118, 20

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gradient-editor-right-color-type"
	.size	.L.str.119, 33

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Right Color Type"
	.size	.L.str.120, 17

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gradient-editor-load-right-color"
	.size	.L.str.121, 33

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Load Right Color Fr_om"
	.size	.L.str.122, 23

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gradient-editor-save-right-color"
	.size	.L.str.123, 33

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Sa_ve Right Color To"
	.size	.L.str.124, 21

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"blending-function"
	.size	.L.str.125, 18

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"coloring-type"
	.size	.L.str.126, 14

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"L_eft Endpoint's Color..."
	.size	.L.str.127, 26

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-gradient-editor-left-color"
	.size	.L.str.128, 32

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"R_ight Endpoint's Color..."
	.size	.L.str.129, 27

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"gimp-gradient-editor-right-color"
	.size	.L.str.130, 33

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-flip-horizontal"
	.size	.L.str.131, 21

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"flip"
	.size	.L.str.132, 5

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"gimp-gradient-editor-flip"
	.size	.L.str.133, 26

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"gimp-duplicate"
	.size	.L.str.134, 15

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"replicate"
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"splitmidpoint"
	.size	.L.str.136, 14

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"gimp-gradient-editor-split-midpoint"
	.size	.L.str.137, 36

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"splituniform"
	.size	.L.str.138, 13

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gimp-gradient-editor-split-uniform"
	.size	.L.str.139, 35

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gtk-delete"
	.size	.L.str.140, 11

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"delete"
	.size	.L.str.141, 7

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.zero	1
	.size	.L.str.142, 1

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gimp-gradient-editor-delete"
	.size	.L.str.143, 28

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"recenter"
	.size	.L.str.144, 9

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-gradient-editor-recenter"
	.size	.L.str.145, 30

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"redistribute"
	.size	.L.str.146, 13

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"gimp-gradient-editor-redistribute"
	.size	.L.str.147, 34

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Ble_nd Endpoints' Colors"
	.size	.L.str.148, 25

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"gimp-gradient-editor-blend-color"
	.size	.L.str.149, 33

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Blend Endpoints' Opacit_y"
	.size	.L.str.150, 26

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"gimp-gradient-editor-blend-opacity"
	.size	.L.str.151, 35

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gimp-linked"
	.size	.L.str.152, 12

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Edit Active Gradient"
	.size	.L.str.153, 21

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"gimp-gradient-editor-edit-active"
	.size	.L.str.154, 33

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"_Left Neighbor's Right Endpoint"
	.size	.L.str.155, 32

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-gradient-editor-left-load"
	.size	.L.str.156, 31

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"_Right Endpoint"
	.size	.L.str.157, 16

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"_Foreground Color"
	.size	.L.str.158, 18

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"_Background Color"
	.size	.L.str.159, 18

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"01"
	.size	.L.str.160, 3

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"02"
	.size	.L.str.161, 3

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"03"
	.size	.L.str.162, 3

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"04"
	.size	.L.str.163, 3

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"05"
	.size	.L.str.164, 3

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"06"
	.size	.L.str.165, 3

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"07"
	.size	.L.str.166, 3

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"08"
	.size	.L.str.167, 3

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"09"
	.size	.L.str.168, 3

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"10"
	.size	.L.str.169, 3

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"gimp-gradient-editor-left-save"
	.size	.L.str.170, 31

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"_Right Neighbor's Left Endpoint"
	.size	.L.str.171, 32

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"gimp-gradient-editor-right-load"
	.size	.L.str.172, 32

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"_Left Endpoint"
	.size	.L.str.173, 15

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"gimp-gradient-editor-right-save"
	.size	.L.str.174, 32

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"_Fixed"
	.size	.L.str.175, 7

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"F_oreground Color"
	.size	.L.str.176, 18

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Fo_reground Color (Transparent)"
	.size	.L.str.177, 32

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"B_ackground Color (Transparent)"
	.size	.L.str.178, 32

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"_Linear"
	.size	.L.str.179, 8

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"gimp-gradient-editor-blending"
	.size	.L.str.180, 30

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"_Curved"
	.size	.L.str.181, 8

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"_Sinusoidal"
	.size	.L.str.182, 12

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Spherical (i_ncreasing)"
	.size	.L.str.183, 24

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Spherical (_decreasing)"
	.size	.L.str.184, 24

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"(Varies)"
	.size	.L.str.185, 9

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"_RGB"
	.size	.L.str.186, 5

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"gimp-gradient-editor-coloring"
	.size	.L.str.187, 30

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"HSV (_counter-clockwise hue)"
	.size	.L.str.188, 29

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"HSV (clockwise _hue)"
	.size	.L.str.189, 21

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"gtk-zoom-in"
	.size	.L.str.190, 12

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Zoom In"
	.size	.L.str.191, 8

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"Zoom in"
	.size	.L.str.192, 8

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"gimp-gradient-editor-zoom-in"
	.size	.L.str.193, 29

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"gtk-zoom-out"
	.size	.L.str.194, 13

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Zoom Out"
	.size	.L.str.195, 9

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Zoom out"
	.size	.L.str.196, 9

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"gimp-gradient-editor-zoom-out"
	.size	.L.str.197, 30

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"gtk-zoom-fit"
	.size	.L.str.198, 13

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Zoom All"
	.size	.L.str.199, 9

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"Zoom all"
	.size	.L.str.200, 9

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"gimp-gradient-editor-zoom-all"
	.size	.L.str.201, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
