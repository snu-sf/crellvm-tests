	.text
	.file	"vectors-actions.bc"
	.globl	vectors_actions_setup
	.align	16, 0x90
	.type	vectors_actions_setup,@function
vectors_actions_setup:                  # @vectors_actions_setup
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
	movabsq	$vectors_actions, %rdx
	movl	$18, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$vectors_toggle_actions, %rdx
	movl	$3, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str, %rsi
	movabsq	$vectors_to_selection_actions, %rdx
	movl	$5, %ecx
	movabsq	$vectors_to_selection_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$vectors_selection_to_vectors_actions, %rdx
	movl	$3, %ecx
	movabsq	$vectors_selection_to_vectors_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vectors_actions_setup, .Lfunc_end0-vectors_actions_setup
	.cfi_endproc

	.globl	vectors_actions_update
	.align	16, 0x90
	.type	vectors_actions_update,@function
vectors_actions_update:                 # @vectors_actions_update
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_16
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_n_vectors
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_11
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_visible
	movl	%eax, -52(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_linked
	movl	%eax, -56(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_lock_content
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_can_lock_content
	movl	%eax, -64(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_container_iter
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB1_10
# BB#3:                                 # %if.then.16
	cmpq	$0, -112(%rbp)
	je	.LBB1_5
# BB#4:                                 # %cond.true
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_6:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB1_8
# BB#7:                                 # %cond.true.20
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end.23
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
.LBB1_10:                               # %if.end
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.25
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_15
# BB#12:                                # %if.then.28
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -68(%rbp)
	movq	-120(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB1_14
# BB#13:                                # %if.then.38
	movl	$1, -72(%rbp)
.LBB1_14:                               # %if.end.39
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.40
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.41
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$1, -44(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	je	.LBB1_18
# BB#17:                                # %land.rhs
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB1_18:                               # %land.end
	movb	-169(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.8, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movb	%al, -185(%rbp)         # 1-byte Spill
	je	.LBB1_20
# BB#19:                                # %land.rhs.61
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB1_20:                               # %land.end.63
	movb	-185(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.9, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movb	%al, -201(%rbp)         # 1-byte Spill
	je	.LBB1_22
# BB#21:                                # %land.rhs.68
	cmpq	$0, -80(%rbp)
	setne	%al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB1_22:                               # %land.end.70
	movb	-201(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.10, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movb	%al, -217(%rbp)         # 1-byte Spill
	je	.LBB1_24
# BB#23:                                # %land.rhs.75
	cmpq	$0, -80(%rbp)
	setne	%al
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB1_24:                               # %land.end.77
	movb	-217(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.11, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -64(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -56(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movb	%al, -233(%rbp)         # 1-byte Spill
	je	.LBB1_26
# BB#25:                                # %land.rhs.102
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -233(%rbp)         # 1-byte Spill
.LBB1_26:                               # %land.end.106
	movb	-233(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.19, %rsi
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
	cmpq	$0, -24(%rbp)
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB1_28
# BB#27:                                # %land.rhs.111
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -249(%rbp)         # 1-byte Spill
.LBB1_28:                               # %land.end.115
	movb	-249(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.20, %rsi
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
	cmpq	$0, -24(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movb	%al, -265(%rbp)         # 1-byte Spill
	je	.LBB1_30
# BB#29:                                # %land.rhs.120
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB1_30:                               # %land.end.124
	movb	-265(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.21, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movb	%al, -281(%rbp)         # 1-byte Spill
	je	.LBB1_33
# BB#31:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -68(%rbp)
	movb	%cl, -281(%rbp)         # 1-byte Spill
	je	.LBB1_33
# BB#32:                                # %land.rhs.130
	cmpl	$0, -72(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -281(%rbp)         # 1-byte Spill
.LBB1_33:                               # %land.end.134
	movb	-281(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.22, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movb	%al, -297(%rbp)         # 1-byte Spill
	je	.LBB1_36
# BB#34:                                # %land.lhs.true.139
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -68(%rbp)
	movb	%cl, -297(%rbp)         # 1-byte Spill
	je	.LBB1_36
# BB#35:                                # %land.rhs.141
	cmpl	$0, -72(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -297(%rbp)         # 1-byte Spill
.LBB1_36:                               # %land.end.145
	movb	-297(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.23, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.25, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.26, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.27, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.28, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vectors_actions_update, .Lfunc_end1-vectors_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"vectors-action"
	.size	.L.str, 15

	.type	vectors_actions,@object # @vectors_actions
	.section	.rodata,"a",@progbits
	.align	16
vectors_actions:
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.32
	.quad	.L.str.1
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	vectors_vectors_tool_cmd_callback
	.quad	.L.str.35
	.quad	.L.str.2
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.38
	.quad	vectors_edit_attributes_cmd_callback
	.quad	.L.str.39
	.quad	.L.str.3
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	vectors_new_cmd_callback
	.quad	.L.str.44
	.quad	.L.str.4
	.quad	.L.str.40
	.quad	.L.str.45
	.quad	.L.str.42
	.quad	.L.str.46
	.quad	vectors_new_last_vals_cmd_callback
	.quad	.L.str.44
	.quad	.L.str.5
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	0
	.quad	.L.str.49
	.quad	vectors_duplicate_cmd_callback
	.quad	.L.str.50
	.quad	.L.str.6
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.42
	.quad	.L.str.53
	.quad	vectors_delete_cmd_callback
	.quad	.L.str.54
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.55
	.quad	0
	.quad	0
	.quad	vectors_merge_visible_cmd_callback
	.quad	.L.str.56
	.quad	.L.str.8
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.42
	.quad	.L.str.59
	.quad	vectors_raise_cmd_callback
	.quad	.L.str.60
	.quad	.L.str.9
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.42
	.quad	.L.str.63
	.quad	vectors_raise_to_top_cmd_callback
	.quad	.L.str.64
	.quad	.L.str.10
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.42
	.quad	.L.str.67
	.quad	vectors_lower_cmd_callback
	.quad	.L.str.68
	.quad	.L.str.11
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.42
	.quad	.L.str.71
	.quad	vectors_lower_to_bottom_cmd_callback
	.quad	.L.str.72
	.quad	.L.str.22
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	0
	.quad	.L.str.75
	.quad	vectors_stroke_cmd_callback
	.quad	.L.str.73
	.quad	.L.str.23
	.quad	.L.str.73
	.quad	.L.str.76
	.quad	0
	.quad	.L.str.77
	.quad	vectors_stroke_last_vals_cmd_callback
	.quad	.L.str.73
	.quad	.L.str.12
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.42
	.quad	0
	.quad	vectors_copy_cmd_callback
	.quad	.L.str.80
	.quad	.L.str.13
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.42
	.quad	0
	.quad	vectors_paste_cmd_callback
	.quad	.L.str.83
	.quad	.L.str.14
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.42
	.quad	0
	.quad	vectors_export_cmd_callback
	.quad	.L.str.86
	.quad	.L.str.15
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.42
	.quad	0
	.quad	vectors_import_cmd_callback
	.quad	.L.str.89
	.size	vectors_actions, 1008

	.type	vectors_toggle_actions,@object # @vectors_toggle_actions
	.align	16
vectors_toggle_actions:
	.quad	.L.str.16
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	0
	.quad	0
	.quad	vectors_visible_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.92
	.quad	.L.str.17
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	0
	.quad	0
	.quad	vectors_linked_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.95
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.96
	.quad	0
	.quad	0
	.quad	vectors_lock_content_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.size	vectors_toggle_actions, 192

	.type	vectors_to_selection_actions,@object # @vectors_to_selection_actions
	.align	16
vectors_to_selection_actions:
	.quad	.L.str.24
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	0
	.quad	.L.str.99
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.100
	.quad	.L.str.25
	.quad	.L.str.97
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.100
	.quad	.L.str.26
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	0
	.quad	.L.str.106
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.107
	.quad	.L.str.27
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	0
	.quad	.L.str.110
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.111
	.quad	.L.str.28
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	0
	.quad	.L.str.114
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.115
	.size	vectors_to_selection_actions, 280

	.type	vectors_selection_to_vectors_actions,@object # @vectors_selection_to_vectors_actions
	.align	16
vectors_selection_to_vectors_actions:
	.quad	.L.str.19
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	0
	.quad	.L.str.118
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.116
	.quad	.L.str.20
	.quad	.L.str.116
	.quad	.L.str.119
	.quad	0
	.quad	.L.str.118
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.116
	.quad	.L.str.21
	.quad	.L.str.116
	.quad	.L.str.120
	.quad	0
	.quad	.L.str.121
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.116
	.size	vectors_selection_to_vectors_actions, 168

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"vectors-path-tool"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vectors-edit-attributes"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"vectors-new"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"vectors-new-last-values"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"vectors-duplicate"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"vectors-delete"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"vectors-merge-visible"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"vectors-raise"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vectors-raise-to-top"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"vectors-lower"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"vectors-lower-to-bottom"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"vectors-copy"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"vectors-paste"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"vectors-export"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"vectors-import"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"vectors-visible"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"vectors-linked"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vectors-lock-content"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"vectors-selection-to-vectors"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"vectors-selection-to-vectors-short"
	.size	.L.str.20, 35

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"vectors-selection-to-vectors-advanced"
	.size	.L.str.21, 38

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"vectors-stroke"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"vectors-stroke-last-values"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"vectors-selection-replace"
	.size	.L.str.24, 26

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"vectors-selection-from-vectors"
	.size	.L.str.25, 31

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"vectors-selection-add"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"vectors-selection-subtract"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"vectors-selection-intersect"
	.size	.L.str.28, 28

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"vectors-popup"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-paths"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Paths Menu"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-path-dialog"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-tool-path"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Path _Tool"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-tool-vectors"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-edit"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Edit Path Attributes..."
	.size	.L.str.37, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Edit path attributes"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-path-edit"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-new"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_New Path..."
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.zero	1
	.size	.L.str.42, 1

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Create a new path..."
	.size	.L.str.43, 21

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-path-new"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_New Path with last values"
	.size	.L.str.45, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Create a new path with last used values"
	.size	.L.str.46, 40

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-duplicate"
	.size	.L.str.47, 15

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"D_uplicate Path"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Duplicate this path"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-path-duplicate"
	.size	.L.str.50, 20

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gtk-delete"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_Delete Path"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Delete this path"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-path-delete"
	.size	.L.str.54, 17

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Merge _Visible Paths"
	.size	.L.str.55, 21

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-path-merge-visible"
	.size	.L.str.56, 24

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gtk-go-up"
	.size	.L.str.57, 10

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Raise Path"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Raise this path"
	.size	.L.str.59, 16

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-path-raise"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gtk-goto-top"
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Raise Path to _Top"
	.size	.L.str.62, 19

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Raise this path to the top"
	.size	.L.str.63, 27

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-path-raise-to-top"
	.size	.L.str.64, 23

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gtk-go-down"
	.size	.L.str.65, 12

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"_Lower Path"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Lower this path"
	.size	.L.str.67, 16

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-path-lower"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gtk-goto-bottom"
	.size	.L.str.69, 16

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Lower Path to _Bottom"
	.size	.L.str.70, 22

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Lower this path to the bottom"
	.size	.L.str.71, 30

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-path-lower-to-bottom"
	.size	.L.str.72, 26

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-path-stroke"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Stro_ke Path..."
	.size	.L.str.74, 16

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Paint along the path"
	.size	.L.str.75, 21

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Stro_ke Path"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Paint along the path with last values"
	.size	.L.str.77, 38

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gtk-copy"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Co_py Path"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-path-copy"
	.size	.L.str.80, 15

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gtk-paste"
	.size	.L.str.81, 10

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Paste Pat_h"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-path-paste"
	.size	.L.str.83, 16

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gtk-save"
	.size	.L.str.84, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"E_xport Path..."
	.size	.L.str.85, 16

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-path-export"
	.size	.L.str.86, 17

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gtk-open"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"I_mport Path..."
	.size	.L.str.88, 16

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-path-import"
	.size	.L.str.89, 17

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gimp-visible"
	.size	.L.str.90, 13

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"_Visible"
	.size	.L.str.91, 9

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-path-visible"
	.size	.L.str.92, 18

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-linked"
	.size	.L.str.93, 12

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"_Linked"
	.size	.L.str.94, 8

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-path-linked"
	.size	.L.str.95, 17

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"L_ock strokes"
	.size	.L.str.96, 14

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-selection-replace"
	.size	.L.str.97, 23

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Path to Sele_ction"
	.size	.L.str.98, 19

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Path to selection"
	.size	.L.str.99, 18

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-path-selection-replace"
	.size	.L.str.100, 28

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Fr_om Path"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"<shift>V"
	.size	.L.str.102, 9

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Replace selection with path"
	.size	.L.str.103, 28

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-selection-add"
	.size	.L.str.104, 19

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"_Add to Selection"
	.size	.L.str.105, 18

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Add path to selection"
	.size	.L.str.106, 22

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-path-selection-add"
	.size	.L.str.107, 24

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-selection-subtract"
	.size	.L.str.108, 24

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"_Subtract from Selection"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Subtract path from selection"
	.size	.L.str.110, 29

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-path-selection-subtract"
	.size	.L.str.111, 29

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-selection-intersect"
	.size	.L.str.112, 25

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"_Intersect with Selection"
	.size	.L.str.113, 26

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Intersect path with selection"
	.size	.L.str.114, 30

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"gimp-path-selection-intersect"
	.size	.L.str.115, 30

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-selection-to-path"
	.size	.L.str.116, 23

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Selecti_on to Path"
	.size	.L.str.117, 19

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Selection to path"
	.size	.L.str.118, 18

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"To _Path"
	.size	.L.str.119, 9

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Selection to Path (_Advanced)"
	.size	.L.str.120, 30

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Advanced options"
	.size	.L.str.121, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
