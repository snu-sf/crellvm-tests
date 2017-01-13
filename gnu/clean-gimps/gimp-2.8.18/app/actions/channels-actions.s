	.text
	.file	"channels-actions.bc"
	.globl	channels_actions_setup
	.align	16, 0x90
	.type	channels_actions_setup,@function
channels_actions_setup:                 # @channels_actions_setup
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
	subq	$16, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$channels_actions, %rdx
	movl	$10, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$channels_to_selection_actions, %rdx
	movl	$4, %ecx
	movabsq	$channels_to_selection_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	channels_actions_setup, .Lfunc_end0-channels_actions_setup
	.cfi_endproc

	.globl	channels_actions_update
	.align	16, 0x90
	.type	channels_actions_update,@function
channels_actions_update:                # @channels_actions_update
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_24
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_component_editor_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then.4
	movl	$0, -76(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.9
	movl	$1, -76(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.10
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.12
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_12
# BB#9:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$-1, 208(%rax)
	je	.LBB1_11
# BB#10:                                # %if.then.19
	movl	$1, -40(%rbp)
.LBB1_11:                               # %if.end.20
	jmp	.LBB1_23
.LBB1_12:                               # %if.else.21
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_22
# BB#13:                                # %if.then.24
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_container_iter
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB1_21
# BB#14:                                # %if.then.32
	cmpq	$0, -96(%rbp)
	je	.LBB1_16
# BB#15:                                # %cond.true
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_17
.LBB1_17:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB1_19
# BB#18:                                # %cond.true.36
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %cond.false.38
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_20
.LBB1_20:                               # %cond.end.39
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB1_21:                               # %if.end.41
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.42
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.43
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.44
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jne	.LBB1_26
# BB#25:                                # %land.rhs
	cmpq	$0, -32(%rbp)
	setne	%al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB1_26:                               # %land.end
	movb	-137(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.1, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movb	%al, -153(%rbp)         # 1-byte Spill
	jne	.LBB1_28
# BB#27:                                # %land.rhs.50
	cmpq	$0, -24(%rbp)
	setne	%al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB1_28:                               # %land.end.52
	movb	-153(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.2, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	jne	.LBB1_30
# BB#29:                                # %land.rhs.57
	cmpq	$0, -24(%rbp)
	setne	%al
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB1_30:                               # %land.end.59
	movb	-169(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movb	%al, -185(%rbp)         # 1-byte Spill
	jne	.LBB1_34
# BB#31:                                # %land.rhs.64
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -186(%rbp)         # 1-byte Spill
	jne	.LBB1_33
# BB#32:                                # %lor.rhs
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -186(%rbp)         # 1-byte Spill
.LBB1_33:                               # %lor.end
	movb	-186(%rbp), %al         # 1-byte Reload
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB1_34:                               # %land.end.67
	movb	-185(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.4, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movb	%al, -201(%rbp)         # 1-byte Spill
	jne	.LBB1_36
# BB#35:                                # %land.rhs.72
	cmpq	$0, -32(%rbp)
	setne	%al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB1_36:                               # %land.end.74
	movb	-201(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.5, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movb	%al, -217(%rbp)         # 1-byte Spill
	jne	.LBB1_39
# BB#37:                                # %land.lhs.true.79
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -217(%rbp)         # 1-byte Spill
	je	.LBB1_39
# BB#38:                                # %land.rhs.81
	cmpq	$0, -56(%rbp)
	setne	%al
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB1_39:                               # %land.end.83
	movb	-217(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.6, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movb	%al, -233(%rbp)         # 1-byte Spill
	jne	.LBB1_42
# BB#40:                                # %land.lhs.true.88
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -233(%rbp)         # 1-byte Spill
	je	.LBB1_42
# BB#41:                                # %land.rhs.90
	cmpq	$0, -56(%rbp)
	setne	%al
	movb	%al, -233(%rbp)         # 1-byte Spill
.LBB1_42:                               # %land.end.92
	movb	-233(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.7, %rsi
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
	cmpl	$0, -36(%rbp)
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movb	%al, -249(%rbp)         # 1-byte Spill
	jne	.LBB1_45
# BB#43:                                # %land.lhs.true.97
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -249(%rbp)         # 1-byte Spill
	je	.LBB1_45
# BB#44:                                # %land.rhs.99
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -249(%rbp)         # 1-byte Spill
.LBB1_45:                               # %land.end.101
	movb	-249(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.8, %rsi
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
	cmpl	$0, -36(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movb	%al, -265(%rbp)         # 1-byte Spill
	jne	.LBB1_48
# BB#46:                                # %land.lhs.true.106
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	je	.LBB1_48
# BB#47:                                # %land.rhs.108
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB1_48:                               # %land.end.110
	movb	-265(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.9, %rsi
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
	cmpl	$0, -36(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movb	%al, -281(%rbp)         # 1-byte Spill
	jne	.LBB1_52
# BB#49:                                # %land.rhs.115
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -282(%rbp)         # 1-byte Spill
	jne	.LBB1_51
# BB#50:                                # %lor.rhs.117
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -282(%rbp)         # 1-byte Spill
.LBB1_51:                               # %lor.end.119
	movb	-282(%rbp), %al         # 1-byte Reload
	movb	%al, -281(%rbp)         # 1-byte Spill
.LBB1_52:                               # %land.end.120
	movb	-281(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.10, %rsi
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
	cmpl	$0, -36(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movb	%al, -297(%rbp)         # 1-byte Spill
	jne	.LBB1_56
# BB#53:                                # %land.rhs.125
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -298(%rbp)         # 1-byte Spill
	jne	.LBB1_55
# BB#54:                                # %lor.rhs.127
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -298(%rbp)         # 1-byte Spill
.LBB1_55:                               # %lor.end.129
	movb	-298(%rbp), %al         # 1-byte Reload
	movb	%al, -297(%rbp)         # 1-byte Spill
.LBB1_56:                               # %land.end.130
	movb	-297(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.11, %rsi
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
	cmpl	$0, -36(%rbp)
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movb	%al, -313(%rbp)         # 1-byte Spill
	jne	.LBB1_60
# BB#57:                                # %land.rhs.135
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -314(%rbp)         # 1-byte Spill
	jne	.LBB1_59
# BB#58:                                # %lor.rhs.137
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -314(%rbp)         # 1-byte Spill
.LBB1_59:                               # %lor.end.139
	movb	-314(%rbp), %al         # 1-byte Reload
	movb	%al, -313(%rbp)         # 1-byte Spill
.LBB1_60:                               # %land.end.140
	movb	-313(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.12, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movb	%al, -329(%rbp)         # 1-byte Spill
	jne	.LBB1_64
# BB#61:                                # %land.rhs.145
	movb	$1, %al
	cmpq	$0, -32(%rbp)
	movb	%al, -330(%rbp)         # 1-byte Spill
	jne	.LBB1_63
# BB#62:                                # %lor.rhs.147
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -330(%rbp)         # 1-byte Spill
.LBB1_63:                               # %lor.end.149
	movb	-330(%rbp), %al         # 1-byte Reload
	movb	%al, -329(%rbp)         # 1-byte Spill
.LBB1_64:                               # %land.end.150
	movb	-329(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.13, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end1:
	.size	channels_actions_update, .Lfunc_end1-channels_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"channels-action"
	.size	.L.str, 16

	.type	channels_actions,@object # @channels_actions
	.section	.rodata,"a",@progbits
	.align	16
channels_actions:
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.17
	.quad	.L.str.1
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.20
	.quad	channels_edit_attributes_cmd_callback
	.quad	.L.str.21
	.quad	.L.str.2
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	channels_new_cmd_callback
	.quad	.L.str.26
	.quad	.L.str.3
	.quad	.L.str.22
	.quad	.L.str.27
	.quad	.L.str.24
	.quad	.L.str.28
	.quad	channels_new_last_vals_cmd_callback
	.quad	.L.str.26
	.quad	.L.str.4
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.31
	.quad	channels_duplicate_cmd_callback
	.quad	.L.str.32
	.quad	.L.str.5
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.24
	.quad	.L.str.35
	.quad	channels_delete_cmd_callback
	.quad	.L.str.36
	.quad	.L.str.6
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.24
	.quad	.L.str.39
	.quad	channels_raise_cmd_callback
	.quad	.L.str.40
	.quad	.L.str.7
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.24
	.quad	.L.str.43
	.quad	channels_raise_to_top_cmd_callback
	.quad	.L.str.44
	.quad	.L.str.8
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.24
	.quad	.L.str.47
	.quad	channels_lower_cmd_callback
	.quad	.L.str.48
	.quad	.L.str.9
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.24
	.quad	.L.str.51
	.quad	channels_lower_to_bottom_cmd_callback
	.quad	.L.str.52
	.size	channels_actions, 560

	.type	channels_to_selection_actions,@object # @channels_to_selection_actions
	.align	16
channels_to_selection_actions:
	.quad	.L.str.10
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	0
	.quad	.L.str.55
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.56
	.quad	.L.str.11
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	0
	.quad	.L.str.59
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.60
	.quad	.L.str.12
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	0
	.quad	.L.str.63
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.64
	.quad	.L.str.13
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	0
	.quad	.L.str.67
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.68
	.size	channels_to_selection_actions, 224

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"channels-edit-attributes"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"channels-new"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"channels-new-last-values"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"channels-duplicate"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"channels-delete"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"channels-raise"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"channels-raise-to-top"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"channels-lower"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"channels-lower-to-bottom"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"channels-selection-replace"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"channels-selection-add"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"channels-selection-subtract"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"channels-selection-intersect"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"channels-popup"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-channels"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Channels Menu"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-channel-dialog"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gtk-edit"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Edit Channel Attributes..."
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Edit the channel's name, color and opacity"
	.size	.L.str.20, 43

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-channel-edit"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-new"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_New Channel..."
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Create a new channel"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-channel-new"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_New Channel"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Create a new channel with last used values"
	.size	.L.str.28, 43

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-duplicate"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"D_uplicate Channel"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Create a duplicate of this channel and add it to the image"
	.size	.L.str.31, 59

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-channel-duplicate"
	.size	.L.str.32, 23

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-delete"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Delete Channel"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Delete this channel"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-channel-delete"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-go-up"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Raise Channel"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Raise this channel one step in the channel stack"
	.size	.L.str.39, 49

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-channel-raise"
	.size	.L.str.40, 19

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-goto-top"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Raise Channel to _Top"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Raise this channel to the top of the channel stack"
	.size	.L.str.43, 51

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-channel-raise-to-top"
	.size	.L.str.44, 26

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-go-down"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Lower Channel"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Lower this channel one step in the channel stack"
	.size	.L.str.47, 49

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-channel-lower"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gtk-goto-bottom"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Lower Channel to _Bottom"
	.size	.L.str.50, 25

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Lower this channel to the bottom of the channel stack"
	.size	.L.str.51, 54

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-channel-lower-to-bottom"
	.size	.L.str.52, 29

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-selection-replace"
	.size	.L.str.53, 23

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Channel to Sele_ction"
	.size	.L.str.54, 22

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Replace the selection with this channel"
	.size	.L.str.55, 40

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-channel-selection-replace"
	.size	.L.str.56, 31

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-selection-add"
	.size	.L.str.57, 19

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Add to Selection"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Add this channel to the current selection"
	.size	.L.str.59, 42

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-channel-selection-add"
	.size	.L.str.60, 27

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-selection-subtract"
	.size	.L.str.61, 24

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Subtract from Selection"
	.size	.L.str.62, 25

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Subtract this channel from the current selection"
	.size	.L.str.63, 49

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-channel-selection-subtract"
	.size	.L.str.64, 32

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-selection-intersect"
	.size	.L.str.65, 25

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"_Intersect with Selection"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Intersect this channel with the current selection"
	.size	.L.str.67, 50

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-channel-selection-intersect"
	.size	.L.str.68, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
