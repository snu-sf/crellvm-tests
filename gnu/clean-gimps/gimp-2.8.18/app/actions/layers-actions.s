	.text
	.file	"layers-actions.bc"
	.globl	layers_actions_setup
	.align	16, 0x90
	.type	layers_actions_setup,@function
layers_actions_setup:                   # @layers_actions_setup
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
	movq	%rdi, -8(%rbp)
	callq	gdk_display_get_default
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	movabsq	$.L.str, %rsi
	movabsq	$layers_actions, %rdx
	movl	$36, %ecx
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$layers_toggle_actions, %rdx
	movl	$4, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str, %rsi
	movabsq	$layers_mask_apply_actions, %rdx
	movl	$2, %ecx
	movabsq	$layers_mask_apply_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-32(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$layers_mask_to_selection_actions, %rdx
	movl	$4, %ecx
	movabsq	$layers_mask_to_selection_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$layers_alpha_to_selection_actions, %rdx
	movl	$4, %ecx
	movabsq	$layers_alpha_to_selection_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str.1, %rsi
	movl	$8, %edx
	movq	-8(%rbp), %rdi
	callq	layers_actions_fix_tooltip
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %eax
	orl	$8, %eax
	movl	%eax, %edx
	callq	layers_actions_fix_tooltip
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %eax
	orl	$8, %eax
	movl	%eax, %edx
	callq	layers_actions_fix_tooltip
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %eax
	orl	-24(%rbp), %eax
	orl	$8, %eax
	movl	%eax, %edx
	callq	layers_actions_fix_tooltip
	movabsq	$.L.str, %rsi
	movabsq	$layers_select_actions, %rdx
	movl	$4, %ecx
	movabsq	$layers_select_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$layers_opacity_actions, %rdx
	movl	$7, %ecx
	movabsq	$layers_opacity_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$layers_mode_actions, %rdx
	movl	$4, %ecx
	movabsq	$layers_mode_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	layers_actions_setup, .Lfunc_end0-layers_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	layers_actions_fix_tooltip,@function
layers_actions_fix_tooltip:             # @layers_actions_fix_tooltip
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_action_group_get_action_tooltip
	movabsq	$.L.str.216, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movl	-20(%rbp), %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_get_mod_string
	movabsq	$.L.str.217, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.215, %rsi
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_action_group_set_action_tooltip
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	layers_actions_fix_tooltip, .Lfunc_end1-layers_actions_fix_tooltip
	.cfi_endproc

	.globl	layers_actions_update
	.align	16, 0x90
	.type	layers_actions_update,@function
layers_actions_update:                  # @layers_actions_update
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
	subq	$928, %rsp              # imm = 0x3A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_26
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_25
# BB#2:                                 # %if.then.13
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_lock_alpha
	movl	%eax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_layer_can_lock_alpha
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
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
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB2_4
# BB#3:                                 # %if.then.30
	movl	$1, -80(%rbp)
.LBB2_4:                                # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_container_iter
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB2_24
# BB#5:                                 # %if.then.36
	cmpq	$0, -120(%rbp)
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB2_10
# BB#9:                                 # %cond.true.40
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_11:                               # %cond.end.43
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB2_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB2_23
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB2_18
# BB#14:                                # %if.then.49
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	jne	.LBB2_16
# BB#15:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB2_17
.LBB2_16:                               # %if.then.56
	movq	$0, -96(%rbp)
.LBB2_17:                               # %if.end.57
	jmp	.LBB2_23
.LBB2_18:                               # %if.end.58
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_19
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB2_21
# BB#20:                                # %cond.true.60
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false.62
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_22:                               # %cond.end.63
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB2_12
.LBB2_23:                               # %for.end
	jmp	.LBB2_24
.LBB2_24:                               # %if.end.65
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	movl	%eax, -72(%rbp)
.LBB2_25:                               # %if.end.69
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.70
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movb	%cl, -193(%rbp)         # 1-byte Spill
	je	.LBB2_28
# BB#27:                                # %land.rhs
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -193(%rbp)         # 1-byte Spill
.LBB2_28:                               # %land.end
	movb	-193(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.5, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_visible
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movb	%al, -209(%rbp)         # 1-byte Spill
	je	.LBB2_31
# BB#29:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jne	.LBB2_31
# BB#30:                                # %land.rhs.79
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -209(%rbp)         # 1-byte Spill
.LBB2_31:                               # %land.end.83
	movb	-209(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.6, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -32(%rbp)
	je	.LBB2_34
# BB#32:                                # %land.lhs.true.88
	movq	-32(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB2_34
# BB#33:                                # %if.then.91
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movl	$14, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.7, %rsi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.8, %rsi
	movl	$14, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.9, %rsi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	jmp	.LBB2_35
.LBB2_34:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$14, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.7, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.11, %rsi
	movl	$14, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.9, %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
.LBB2_35:                               # %if.end.96
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movb	%al, -257(%rbp)         # 1-byte Spill
	je	.LBB2_37
# BB#36:                                # %land.rhs.104
	cmpl	$0, -60(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB2_37:                               # %land.end.108
	movb	-257(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.13, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movb	%al, -273(%rbp)         # 1-byte Spill
	je	.LBB2_40
# BB#38:                                # %land.lhs.true.113
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -273(%rbp)         # 1-byte Spill
	jne	.LBB2_40
# BB#39:                                # %land.rhs.115
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -273(%rbp)         # 1-byte Spill
.LBB2_40:                               # %land.end.119
	movb	-273(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.14, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movb	%al, -289(%rbp)         # 1-byte Spill
	je	.LBB2_42
# BB#41:                                # %land.rhs.124
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -289(%rbp)         # 1-byte Spill
.LBB2_42:                               # %land.end.128
	movb	-289(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.15, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movb	%al, -305(%rbp)         # 1-byte Spill
	je	.LBB2_46
# BB#43:                                # %land.lhs.true.133
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -305(%rbp)         # 1-byte Spill
	jne	.LBB2_46
# BB#44:                                # %land.lhs.true.135
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -305(%rbp)         # 1-byte Spill
	jne	.LBB2_46
# BB#45:                                # %land.rhs.137
	cmpq	$0, -104(%rbp)
	setne	%al
	movb	%al, -305(%rbp)         # 1-byte Spill
.LBB2_46:                               # %land.end.139
	movb	-305(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.16, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movb	%al, -321(%rbp)         # 1-byte Spill
	je	.LBB2_50
# BB#47:                                # %land.lhs.true.144
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -321(%rbp)         # 1-byte Spill
	jne	.LBB2_50
# BB#48:                                # %land.lhs.true.146
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -321(%rbp)         # 1-byte Spill
	jne	.LBB2_50
# BB#49:                                # %land.rhs.148
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -321(%rbp)         # 1-byte Spill
.LBB2_50:                               # %land.end.150
	movb	-321(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.17, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movb	%al, -337(%rbp)         # 1-byte Spill
	je	.LBB2_54
# BB#51:                                # %land.lhs.true.155
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -337(%rbp)         # 1-byte Spill
	jne	.LBB2_54
# BB#52:                                # %land.lhs.true.157
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -337(%rbp)         # 1-byte Spill
	jne	.LBB2_54
# BB#53:                                # %land.rhs.159
	cmpq	$0, -104(%rbp)
	setne	%al
	movb	%al, -337(%rbp)         # 1-byte Spill
.LBB2_54:                               # %land.end.161
	movb	-337(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.18, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movb	%al, -353(%rbp)         # 1-byte Spill
	je	.LBB2_58
# BB#55:                                # %land.lhs.true.166
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -353(%rbp)         # 1-byte Spill
	jne	.LBB2_58
# BB#56:                                # %land.lhs.true.168
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -353(%rbp)         # 1-byte Spill
	jne	.LBB2_58
# BB#57:                                # %land.rhs.170
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -353(%rbp)         # 1-byte Spill
.LBB2_58:                               # %land.end.172
	movb	-353(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.19, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movb	%al, -369(%rbp)         # 1-byte Spill
	je	.LBB2_62
# BB#59:                                # %land.lhs.true.177
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -369(%rbp)         # 1-byte Spill
	jne	.LBB2_62
# BB#60:                                # %land.lhs.true.179
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -369(%rbp)         # 1-byte Spill
	jne	.LBB2_62
# BB#61:                                # %land.rhs.181
	cmpq	$0, -104(%rbp)
	setne	%al
	movb	%al, -369(%rbp)         # 1-byte Spill
.LBB2_62:                               # %land.end.183
	movb	-369(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.20, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movb	%al, -385(%rbp)         # 1-byte Spill
	je	.LBB2_66
# BB#63:                                # %land.lhs.true.188
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -385(%rbp)         # 1-byte Spill
	jne	.LBB2_66
# BB#64:                                # %land.lhs.true.190
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -385(%rbp)         # 1-byte Spill
	jne	.LBB2_66
# BB#65:                                # %land.rhs.192
	cmpq	$0, -104(%rbp)
	setne	%al
	movb	%al, -385(%rbp)         # 1-byte Spill
.LBB2_66:                               # %land.end.194
	movb	-385(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.21, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movb	%al, -401(%rbp)         # 1-byte Spill
	je	.LBB2_70
# BB#67:                                # %land.lhs.true.199
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -401(%rbp)         # 1-byte Spill
	jne	.LBB2_70
# BB#68:                                # %land.lhs.true.201
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -401(%rbp)         # 1-byte Spill
	jne	.LBB2_70
# BB#69:                                # %land.rhs.203
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -401(%rbp)         # 1-byte Spill
.LBB2_70:                               # %land.end.205
	movb	-401(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.22, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movb	%al, -417(%rbp)         # 1-byte Spill
	je	.LBB2_74
# BB#71:                                # %land.lhs.true.210
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -417(%rbp)         # 1-byte Spill
	jne	.LBB2_74
# BB#72:                                # %land.lhs.true.212
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -417(%rbp)         # 1-byte Spill
	jne	.LBB2_74
# BB#73:                                # %land.rhs.214
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -417(%rbp)         # 1-byte Spill
.LBB2_74:                               # %land.end.216
	movb	-417(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.23, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movb	%al, -433(%rbp)         # 1-byte Spill
	je	.LBB2_77
# BB#75:                                # %land.lhs.true.221
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -433(%rbp)         # 1-byte Spill
	je	.LBB2_77
# BB#76:                                # %land.rhs.223
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -433(%rbp)         # 1-byte Spill
.LBB2_77:                               # %land.end.227
	movb	-433(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.24, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movb	%al, -449(%rbp)         # 1-byte Spill
	je	.LBB2_81
# BB#78:                                # %land.lhs.true.232
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -449(%rbp)         # 1-byte Spill
	jne	.LBB2_81
# BB#79:                                # %land.lhs.true.234
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -449(%rbp)         # 1-byte Spill
	jne	.LBB2_81
# BB#80:                                # %land.rhs.236
	cmpq	$0, -96(%rbp)
	setne	%al
	movb	%al, -449(%rbp)         # 1-byte Spill
.LBB2_81:                               # %land.end.238
	movb	-449(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.25, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.26, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -80(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movb	%al, -465(%rbp)         # 1-byte Spill
	je	.LBB2_85
# BB#82:                                # %land.lhs.true.245
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -465(%rbp)         # 1-byte Spill
	jne	.LBB2_85
# BB#83:                                # %land.lhs.true.247
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -465(%rbp)         # 1-byte Spill
	jne	.LBB2_85
# BB#84:                                # %land.rhs.249
	cmpl	$0, -80(%rbp)
	setne	%al
	movb	%al, -465(%rbp)         # 1-byte Spill
.LBB2_85:                               # %land.end.251
	movb	-465(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.26, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movb	%al, -481(%rbp)         # 1-byte Spill
	je	.LBB2_88
# BB#86:                                # %land.lhs.true.256
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -481(%rbp)         # 1-byte Spill
	jne	.LBB2_88
# BB#87:                                # %land.rhs.258
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -481(%rbp)         # 1-byte Spill
.LBB2_88:                               # %land.end.262
	movb	-481(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.27, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movb	%al, -497(%rbp)         # 1-byte Spill
	je	.LBB2_91
# BB#89:                                # %land.lhs.true.267
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -497(%rbp)         # 1-byte Spill
	jne	.LBB2_91
# BB#90:                                # %land.rhs.269
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -497(%rbp)         # 1-byte Spill
.LBB2_91:                               # %land.end.273
	movb	-497(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.28, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movb	%al, -513(%rbp)         # 1-byte Spill
	je	.LBB2_93
# BB#92:                                # %land.rhs.278
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -513(%rbp)         # 1-byte Spill
.LBB2_93:                               # %land.end.282
	movb	-513(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.29, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-512(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_visible
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movb	%al, -529(%rbp)         # 1-byte Spill
	je	.LBB2_95
# BB#94:                                # %land.rhs.287
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -529(%rbp)         # 1-byte Spill
.LBB2_95:                               # %land.end.291
	movb	-529(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.30, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_visible
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movb	%al, -545(%rbp)         # 1-byte Spill
	je	.LBB2_97
# BB#96:                                # %land.rhs.296
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -545(%rbp)         # 1-byte Spill
.LBB2_97:                               # %land.end.300
	movb	-545(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.31, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-544(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_visible
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movb	%al, -561(%rbp)         # 1-byte Spill
	je	.LBB2_99
# BB#98:                                # %land.rhs.305
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -561(%rbp)         # 1-byte Spill
.LBB2_99:                               # %land.end.309
	movb	-561(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.32, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-560(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movb	%al, -577(%rbp)         # 1-byte Spill
	je	.LBB2_101
# BB#100:                               # %land.rhs.314
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -577(%rbp)         # 1-byte Spill
.LBB2_101:                              # %land.end.318
	movb	-577(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.33, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-576(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movb	%al, -593(%rbp)         # 1-byte Spill
	je	.LBB2_103
# BB#102:                               # %land.rhs.323
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -593(%rbp)         # 1-byte Spill
.LBB2_103:                              # %land.end.327
	movb	-593(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.34, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-592(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movb	%al, -609(%rbp)         # 1-byte Spill
	je	.LBB2_105
# BB#104:                               # %land.rhs.332
	cmpl	$0, -52(%rbp)
	setne	%al
	movb	%al, -609(%rbp)         # 1-byte Spill
.LBB2_105:                              # %land.end.334
	movb	-609(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.35, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-608(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movb	%al, -625(%rbp)         # 1-byte Spill
	je	.LBB2_109
# BB#106:                               # %land.lhs.true.339
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -80(%rbp)
	movb	%cl, -625(%rbp)         # 1-byte Spill
	jne	.LBB2_109
# BB#107:                               # %land.lhs.true.341
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -625(%rbp)         # 1-byte Spill
	jne	.LBB2_109
# BB#108:                               # %land.rhs.343
	cmpl	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -625(%rbp)         # 1-byte Spill
.LBB2_109:                              # %land.end.347
	movb	-625(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.36, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movb	%al, -641(%rbp)         # 1-byte Spill
	je	.LBB2_113
# BB#110:                               # %land.lhs.true.352
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -80(%rbp)
	movb	%cl, -641(%rbp)         # 1-byte Spill
	jne	.LBB2_113
# BB#111:                               # %land.lhs.true.354
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -641(%rbp)         # 1-byte Spill
	jne	.LBB2_113
# BB#112:                               # %land.rhs.356
	cmpl	$0, -56(%rbp)
	setne	%al
	movb	%al, -641(%rbp)         # 1-byte Spill
.LBB2_113:                              # %land.end.358
	movb	-641(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.37, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-640(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.38, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.38, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -64(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movb	%al, -657(%rbp)         # 1-byte Spill
	je	.LBB2_118
# BB#114:                               # %land.lhs.true.367
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -657(%rbp)         # 1-byte Spill
	jne	.LBB2_118
# BB#115:                               # %land.lhs.true.369
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -657(%rbp)         # 1-byte Spill
	jne	.LBB2_118
# BB#116:                               # %land.lhs.true.371
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -657(%rbp)         # 1-byte Spill
	jne	.LBB2_118
# BB#117:                               # %land.rhs.373
	cmpl	$0, -80(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -657(%rbp)         # 1-byte Spill
.LBB2_118:                              # %land.end.377
	movb	-657(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.39, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-656(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movb	%al, -673(%rbp)         # 1-byte Spill
	je	.LBB2_123
# BB#119:                               # %land.lhs.true.382
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -673(%rbp)         # 1-byte Spill
	jne	.LBB2_123
# BB#120:                               # %land.lhs.true.384
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -673(%rbp)         # 1-byte Spill
	jne	.LBB2_123
# BB#121:                               # %land.lhs.true.386
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -673(%rbp)         # 1-byte Spill
	je	.LBB2_123
# BB#122:                               # %land.rhs.388
	cmpl	$0, -80(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -673(%rbp)         # 1-byte Spill
.LBB2_123:                              # %land.end.392
	movb	-673(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.40, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-672(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movb	%al, -689(%rbp)         # 1-byte Spill
	je	.LBB2_127
# BB#124:                               # %land.lhs.true.397
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -689(%rbp)         # 1-byte Spill
	jne	.LBB2_127
# BB#125:                               # %land.lhs.true.399
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -689(%rbp)         # 1-byte Spill
	jne	.LBB2_127
# BB#126:                               # %land.rhs.401
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -689(%rbp)         # 1-byte Spill
.LBB2_127:                              # %land.end.403
	movb	-689(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.41, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movb	%al, -705(%rbp)         # 1-byte Spill
	je	.LBB2_131
# BB#128:                               # %land.lhs.true.408
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -705(%rbp)         # 1-byte Spill
	jne	.LBB2_131
# BB#129:                               # %land.lhs.true.410
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -705(%rbp)         # 1-byte Spill
	jne	.LBB2_131
# BB#130:                               # %land.rhs.412
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -705(%rbp)         # 1-byte Spill
.LBB2_131:                              # %land.end.414
	movb	-705(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.42, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-704(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movb	%al, -721(%rbp)         # 1-byte Spill
	je	.LBB2_135
# BB#132:                               # %land.lhs.true.419
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -721(%rbp)         # 1-byte Spill
	jne	.LBB2_135
# BB#133:                               # %land.lhs.true.421
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -721(%rbp)         # 1-byte Spill
	jne	.LBB2_135
# BB#134:                               # %land.rhs.423
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -721(%rbp)         # 1-byte Spill
.LBB2_135:                              # %land.end.425
	movb	-721(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.43, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-720(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movb	%al, -737(%rbp)         # 1-byte Spill
	je	.LBB2_139
# BB#136:                               # %land.lhs.true.430
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -737(%rbp)         # 1-byte Spill
	jne	.LBB2_139
# BB#137:                               # %land.lhs.true.432
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -737(%rbp)         # 1-byte Spill
	jne	.LBB2_139
# BB#138:                               # %land.rhs.434
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -737(%rbp)         # 1-byte Spill
.LBB2_139:                              # %land.end.436
	movb	-737(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.44, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-736(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movb	%al, -753(%rbp)         # 1-byte Spill
	je	.LBB2_141
# BB#140:                               # %land.rhs.441
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -753(%rbp)         # 1-byte Spill
.LBB2_141:                              # %land.end.444
	movb	-753(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.42, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-752(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movb	%al, -769(%rbp)         # 1-byte Spill
	je	.LBB2_143
# BB#142:                               # %land.rhs.449
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -769(%rbp)         # 1-byte Spill
.LBB2_143:                              # %land.end.452
	movb	-769(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.43, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-768(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movb	%al, -785(%rbp)         # 1-byte Spill
	je	.LBB2_145
# BB#144:                               # %land.rhs.457
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -785(%rbp)         # 1-byte Spill
.LBB2_145:                              # %land.end.462
	movb	-785(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.44, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-784(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movb	%al, -801(%rbp)         # 1-byte Spill
	je	.LBB2_149
# BB#146:                               # %land.lhs.true.467
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -801(%rbp)         # 1-byte Spill
	jne	.LBB2_149
# BB#147:                               # %land.lhs.true.469
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -801(%rbp)         # 1-byte Spill
	jne	.LBB2_149
# BB#148:                               # %land.rhs.471
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -801(%rbp)         # 1-byte Spill
.LBB2_149:                              # %land.end.473
	movb	-801(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.45, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-800(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movb	%al, -817(%rbp)         # 1-byte Spill
	je	.LBB2_153
# BB#150:                               # %land.lhs.true.478
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -817(%rbp)         # 1-byte Spill
	jne	.LBB2_153
# BB#151:                               # %land.lhs.true.480
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -817(%rbp)         # 1-byte Spill
	jne	.LBB2_153
# BB#152:                               # %land.rhs.482
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -817(%rbp)         # 1-byte Spill
.LBB2_153:                              # %land.end.484
	movb	-817(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.46, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-816(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movb	%al, -833(%rbp)         # 1-byte Spill
	je	.LBB2_157
# BB#154:                               # %land.lhs.true.489
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -833(%rbp)         # 1-byte Spill
	jne	.LBB2_157
# BB#155:                               # %land.lhs.true.491
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -833(%rbp)         # 1-byte Spill
	jne	.LBB2_157
# BB#156:                               # %land.rhs.493
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -833(%rbp)         # 1-byte Spill
.LBB2_157:                              # %land.end.495
	movb	-833(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.47, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-832(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movb	%al, -849(%rbp)         # 1-byte Spill
	je	.LBB2_161
# BB#158:                               # %land.lhs.true.500
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -849(%rbp)         # 1-byte Spill
	jne	.LBB2_161
# BB#159:                               # %land.lhs.true.502
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -849(%rbp)         # 1-byte Spill
	jne	.LBB2_161
# BB#160:                               # %land.rhs.504
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -849(%rbp)         # 1-byte Spill
.LBB2_161:                              # %land.end.506
	movb	-849(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.48, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movb	%al, -865(%rbp)         # 1-byte Spill
	je	.LBB2_164
# BB#162:                               # %land.lhs.true.511
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -865(%rbp)         # 1-byte Spill
	jne	.LBB2_164
# BB#163:                               # %land.rhs.513
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -865(%rbp)         # 1-byte Spill
.LBB2_164:                              # %land.end.517
	movb	-865(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.1, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-864(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movb	%al, -881(%rbp)         # 1-byte Spill
	je	.LBB2_167
# BB#165:                               # %land.lhs.true.522
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -881(%rbp)         # 1-byte Spill
	jne	.LBB2_167
# BB#166:                               # %land.rhs.524
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -881(%rbp)         # 1-byte Spill
.LBB2_167:                              # %land.end.528
	movb	-881(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.2, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-880(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movb	%al, -897(%rbp)         # 1-byte Spill
	je	.LBB2_170
# BB#168:                               # %land.lhs.true.533
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -897(%rbp)         # 1-byte Spill
	jne	.LBB2_170
# BB#169:                               # %land.rhs.535
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -897(%rbp)         # 1-byte Spill
.LBB2_170:                              # %land.end.539
	movb	-897(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-896(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movb	%al, -913(%rbp)         # 1-byte Spill
	je	.LBB2_173
# BB#171:                               # %land.lhs.true.544
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -913(%rbp)         # 1-byte Spill
	jne	.LBB2_173
# BB#172:                               # %land.rhs.546
	cmpl	$0, -48(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -913(%rbp)         # 1-byte Spill
.LBB2_173:                              # %land.end.550
	movb	-913(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.4, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-912(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$928, %rsp              # imm = 0x3A0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	layers_actions_update, .Lfunc_end2-layers_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"layers-action"
	.size	.L.str, 14

	.type	layers_actions,@object  # @layers_actions
	.section	.rodata,"a",@progbits
	.align	16
layers_actions:
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.55
	.quad	0
	.quad	.L.str.56
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.57
	.quad	0
	.quad	.L.str.58
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.59
	.quad	0
	.quad	.L.str.60
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.61
	.quad	0
	.quad	.L.str.62
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.5
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	0
	.quad	.L.str.74
	.quad	layers_text_tool_cmd_callback
	.quad	.L.str.72
	.quad	.L.str.6
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	0
	.quad	.L.str.77
	.quad	layers_edit_attributes_cmd_callback
	.quad	.L.str.78
	.quad	.L.str.7
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	layers_new_cmd_callback
	.quad	.L.str.83
	.quad	.L.str.9
	.quad	.L.str.79
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	layers_new_last_vals_cmd_callback
	.quad	.L.str.83
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.87
	.quad	0
	.quad	.L.str.88
	.quad	layers_new_from_visible_cmd_callback
	.quad	.L.str.89
	.quad	.L.str.13
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	0
	.quad	.L.str.92
	.quad	layers_new_group_cmd_callback
	.quad	.L.str.83
	.quad	.L.str.14
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	layers_duplicate_cmd_callback
	.quad	.L.str.97
	.quad	.L.str.15
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.85
	.quad	.L.str.100
	.quad	layers_delete_cmd_callback
	.quad	.L.str.101
	.quad	.L.str.20
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.85
	.quad	.L.str.104
	.quad	layers_raise_cmd_callback
	.quad	.L.str.105
	.quad	.L.str.21
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.85
	.quad	.L.str.108
	.quad	layers_raise_to_top_cmd_callback
	.quad	.L.str.109
	.quad	.L.str.22
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.85
	.quad	.L.str.112
	.quad	layers_lower_cmd_callback
	.quad	.L.str.113
	.quad	.L.str.23
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.85
	.quad	.L.str.116
	.quad	layers_lower_to_bottom_cmd_callback
	.quad	.L.str.117
	.quad	.L.str.24
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	layers_anchor_cmd_callback
	.quad	.L.str.122
	.quad	.L.str.25
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	0
	.quad	.L.str.125
	.quad	layers_merge_down_cmd_callback
	.quad	.L.str.126
	.quad	.L.str.26
	.quad	0
	.quad	.L.str.127
	.quad	0
	.quad	.L.str.128
	.quad	layers_merge_group_cmd_callback
	.quad	.L.str.129
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.130
	.quad	0
	.quad	.L.str.131
	.quad	image_merge_layers_cmd_callback
	.quad	.L.str.132
	.quad	.L.str.28
	.quad	0
	.quad	.L.str.133
	.quad	0
	.quad	.L.str.134
	.quad	image_flatten_image_cmd_callback
	.quad	.L.str.135
	.quad	.L.str.29
	.quad	.L.str.72
	.quad	.L.str.136
	.quad	0
	.quad	.L.str.137
	.quad	layers_text_discard_cmd_callback
	.quad	.L.str.138
	.quad	.L.str.30
	.quad	.L.str.72
	.quad	.L.str.139
	.quad	0
	.quad	.L.str.140
	.quad	layers_text_to_vectors_cmd_callback
	.quad	.L.str.141
	.quad	.L.str.31
	.quad	.L.str.72
	.quad	.L.str.142
	.quad	0
	.quad	.L.str.143
	.quad	layers_text_along_vectors_cmd_callback
	.quad	.L.str.144
	.quad	.L.str.32
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	0
	.quad	.L.str.147
	.quad	layers_resize_cmd_callback
	.quad	.L.str.148
	.quad	.L.str.33
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	0
	.quad	.L.str.151
	.quad	layers_resize_to_image_cmd_callback
	.quad	.L.str.152
	.quad	.L.str.34
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	0
	.quad	.L.str.155
	.quad	layers_scale_cmd_callback
	.quad	.L.str.156
	.quad	.L.str.35
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	0
	.quad	.L.str.159
	.quad	layers_crop_cmd_callback
	.quad	.L.str.160
	.quad	.L.str.39
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	0
	.quad	.L.str.163
	.quad	layers_mask_add_cmd_callback
	.quad	.L.str.164
	.quad	.L.str.36
	.quad	.L.str.67
	.quad	.L.str.165
	.quad	0
	.quad	.L.str.166
	.quad	layers_alpha_add_cmd_callback
	.quad	.L.str.167
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.168
	.quad	0
	.quad	.L.str.169
	.quad	layers_alpha_remove_cmd_callback
	.quad	.L.str.170
	.size	layers_actions, 2016

	.type	layers_toggle_actions,@object # @layers_toggle_actions
	.align	16
layers_toggle_actions:
	.quad	.L.str.38
	.quad	.L.str.67
	.quad	.L.str.171
	.quad	0
	.quad	.L.str.172
	.quad	layers_lock_alpha_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.173
	.quad	.L.str.42
	.quad	.L.str.75
	.quad	.L.str.174
	.quad	0
	.quad	.L.str.175
	.quad	layers_mask_edit_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.176
	.quad	.L.str.43
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	0
	.quad	0
	.quad	layers_mask_show_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.179
	.quad	.L.str.44
	.quad	0
	.quad	.L.str.180
	.quad	0
	.quad	.L.str.181
	.quad	layers_mask_disable_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.182
	.size	layers_toggle_actions, 256

	.type	layers_mask_apply_actions,@object # @layers_mask_apply_actions
	.align	16
layers_mask_apply_actions:
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.183
	.quad	0
	.quad	.L.str.184
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.185
	.quad	.L.str.41
	.quad	.L.str.98
	.quad	.L.str.186
	.quad	.L.str.85
	.quad	.L.str.187
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.188
	.size	layers_mask_apply_actions, 112

	.type	layers_mask_to_selection_actions,@object # @layers_mask_to_selection_actions
	.align	16
layers_mask_to_selection_actions:
	.quad	.L.str.45
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	0
	.quad	.L.str.191
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.192
	.quad	.L.str.46
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	0
	.quad	.L.str.195
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.196
	.quad	.L.str.47
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	0
	.quad	.L.str.199
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.200
	.quad	.L.str.48
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	0
	.quad	.L.str.203
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.204
	.size	layers_mask_to_selection_actions, 224

	.type	layers_alpha_to_selection_actions,@object # @layers_alpha_to_selection_actions
	.align	16
layers_alpha_to_selection_actions:
	.quad	.L.str.1
	.quad	.L.str.189
	.quad	.L.str.205
	.quad	0
	.quad	.L.str.206
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.207
	.quad	.L.str.2
	.quad	.L.str.193
	.quad	.L.str.208
	.quad	0
	.quad	.L.str.209
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.210
	.quad	.L.str.3
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	0
	.quad	.L.str.211
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.212
	.quad	.L.str.4
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	0
	.quad	.L.str.213
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.214
	.size	layers_alpha_to_selection_actions, 224

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"layers-alpha-selection-replace"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"layers-alpha-selection-add"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"layers-alpha-selection-subtract"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"layers-alpha-selection-intersect"
	.size	.L.str.4, 33

	.type	layers_select_actions,@object # @layers_select_actions
	.section	.rodata,"a",@progbits
	.align	16
layers_select_actions:
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	.L.str.221
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	.L.str.225
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	.L.str.229
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	.L.str.233
	.size	layers_select_actions, 224

	.type	layers_opacity_actions,@object # @layers_opacity_actions
	.align	16
layers_opacity_actions:
	.quad	.L.str.234
	.quad	.L.str.67
	.quad	.L.str.235
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.67
	.quad	.L.str.238
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	.L.str.236
	.quad	.L.str.239
	.quad	.L.str.67
	.quad	.L.str.240
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	.L.str.236
	.quad	.L.str.241
	.quad	.L.str.67
	.quad	.L.str.242
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	.L.str.236
	.quad	.L.str.243
	.quad	.L.str.67
	.quad	.L.str.244
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	.L.str.236
	.quad	.L.str.245
	.quad	.L.str.67
	.quad	.L.str.246
	.quad	0
	.quad	0
	.long	4294967288              # 0xfffffff8
	.long	0                       # 0x0
	.quad	.L.str.236
	.quad	.L.str.247
	.quad	.L.str.67
	.quad	.L.str.248
	.quad	0
	.quad	0
	.long	4294967287              # 0xfffffff7
	.long	0                       # 0x0
	.quad	.L.str.236
	.size	layers_opacity_actions, 392

	.type	layers_mode_actions,@object # @layers_mode_actions
	.align	16
layers_mode_actions:
	.quad	.L.str.249
	.quad	.L.str.70
	.quad	.L.str.250
	.quad	0
	.quad	0
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.70
	.quad	.L.str.253
	.quad	0
	.quad	0
	.long	4294967293              # 0xfffffffd
	.long	0                       # 0x0
	.quad	.L.str.251
	.quad	.L.str.254
	.quad	.L.str.70
	.quad	.L.str.255
	.quad	0
	.quad	0
	.long	4294967290              # 0xfffffffa
	.long	0                       # 0x0
	.quad	.L.str.251
	.quad	.L.str.256
	.quad	.L.str.70
	.quad	.L.str.257
	.quad	0
	.quad	0
	.long	4294967289              # 0xfffffff9
	.long	0                       # 0x0
	.quad	.L.str.251
	.size	layers_mode_actions, 224

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"layers-text-tool"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"layers-edit-attributes"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"layers-new"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"layers-action\004To _New Layer"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"layers-new-last-values"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"layers-action\004_New Layer..."
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"layers-action\004_New Layer"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"layers-new-from-visible"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"layers-new-group"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"layers-duplicate"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"layers-delete"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"layers-select-top"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"layers-select-bottom"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"layers-select-previous"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"layers-select-next"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"layers-raise"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"layers-raise-to-top"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"layers-lower"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"layers-lower-to-bottom"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"layers-anchor"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"layers-merge-down"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"layers-merge-group"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"layers-merge-layers"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"layers-flatten-image"
	.size	.L.str.28, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"layers-text-discard"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"layers-text-to-vectors"
	.size	.L.str.30, 23

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"layers-text-along-vectors"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"layers-resize"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"layers-resize-to-image"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"layers-scale"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"layers-crop"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"layers-alpha-add"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"layers-alpha-remove"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"layers-lock-alpha"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"layers-mask-add"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"layers-mask-apply"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"layers-mask-delete"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"layers-mask-edit"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"layers-mask-show"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"layers-mask-disable"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"layers-mask-selection-replace"
	.size	.L.str.45, 30

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"layers-mask-selection-add"
	.size	.L.str.46, 26

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"layers-mask-selection-subtract"
	.size	.L.str.47, 31

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"layers-mask-selection-intersect"
	.size	.L.str.48, 32

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"layers-popup"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-layers"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Layers Menu"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-layer-dialog"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"layers-menu"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Layer"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"layers-stack-menu"
	.size	.L.str.55, 18

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Stac_k"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"layers-mask-menu"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Mask"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"layers-transparency-menu"
	.size	.L.str.59, 25

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Tr_ansparency"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"layers-transform-menu"
	.size	.L.str.61, 22

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Transform"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"layers-properties-menu"
	.size	.L.str.63, 23

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gtk-properties"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"_Properties"
	.size	.L.str.65, 12

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"layers-opacity-menu"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-transparency"
	.size	.L.str.67, 18

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"_Opacity"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"layers-mode-menu"
	.size	.L.str.69, 17

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-tool-pencil"
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Layer _Mode"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-tool-text"
	.size	.L.str.72, 15

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Te_xt Tool"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Activate the text tool on this text layer"
	.size	.L.str.74, 42

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gtk-edit"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"_Edit Layer Attributes..."
	.size	.L.str.76, 26

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Edit the layer's name"
	.size	.L.str.77, 22

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-layer-edit"
	.size	.L.str.78, 16

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gtk-new"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"_New Layer..."
	.size	.L.str.80, 14

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"<primary><shift>N"
	.size	.L.str.81, 18

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Create a new layer and add it to the image"
	.size	.L.str.82, 43

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-layer-new"
	.size	.L.str.83, 15

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"_New Layer"
	.size	.L.str.84, 11

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.zero	1
	.size	.L.str.85, 1

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Create a new layer with last used values"
	.size	.L.str.86, 41

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"New from _Visible"
	.size	.L.str.87, 18

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Create a new layer from what is visible in this image"
	.size	.L.str.88, 54

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-layer-new-from-visible"
	.size	.L.str.89, 28

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gtk-directory"
	.size	.L.str.90, 14

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"New Layer _Group..."
	.size	.L.str.91, 20

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Create a new layer group and add it to the image"
	.size	.L.str.92, 49

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-duplicate"
	.size	.L.str.93, 15

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"D_uplicate Layer"
	.size	.L.str.94, 17

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"<primary><shift>D"
	.size	.L.str.95, 18

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Create a duplicate of the layer and add it to the image"
	.size	.L.str.96, 56

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-layer-duplicate"
	.size	.L.str.97, 21

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gtk-delete"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"_Delete Layer"
	.size	.L.str.99, 14

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Delete this layer"
	.size	.L.str.100, 18

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp-layer-delete"
	.size	.L.str.101, 18

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gtk-go-up"
	.size	.L.str.102, 10

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"_Raise Layer"
	.size	.L.str.103, 13

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Raise this layer one step in the layer stack"
	.size	.L.str.104, 45

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"gimp-layer-raise"
	.size	.L.str.105, 17

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gtk-goto-top"
	.size	.L.str.106, 13

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Layer to _Top"
	.size	.L.str.107, 14

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Move this layer to the top of the layer stack"
	.size	.L.str.108, 46

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-layer-raise-to-top"
	.size	.L.str.109, 24

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gtk-go-down"
	.size	.L.str.110, 12

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"_Lower Layer"
	.size	.L.str.111, 13

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Lower this layer one step in the layer stack"
	.size	.L.str.112, 45

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gimp-layer-lower"
	.size	.L.str.113, 17

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gtk-goto-bottom"
	.size	.L.str.114, 16

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Layer to _Bottom"
	.size	.L.str.115, 17

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Move this layer to the bottom of the layer stack"
	.size	.L.str.116, 49

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-layer-lower-to-bottom"
	.size	.L.str.117, 27

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"gimp-anchor"
	.size	.L.str.118, 12

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"_Anchor Layer"
	.size	.L.str.119, 14

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"<primary>H"
	.size	.L.str.120, 11

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Anchor the floating layer"
	.size	.L.str.121, 26

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"gimp-layer-anchor"
	.size	.L.str.122, 18

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-merge-down"
	.size	.L.str.123, 16

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Merge Do_wn"
	.size	.L.str.124, 12

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Merge this layer with the first visible layer below it"
	.size	.L.str.125, 55

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"gimp-layer-merge-down"
	.size	.L.str.126, 22

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Merge Layer Group"
	.size	.L.str.127, 18

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Merge the layer group's layers into one normal layer"
	.size	.L.str.128, 53

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"gimp-layer-merge-group"
	.size	.L.str.129, 23

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Merge _Visible Layers..."
	.size	.L.str.130, 25

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Merge all visible layers into one layer"
	.size	.L.str.131, 40

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-image-merge-layers"
	.size	.L.str.132, 24

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"_Flatten Image"
	.size	.L.str.133, 15

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Merge all layers into one and remove transparency"
	.size	.L.str.134, 50

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"gimp-image-flatten"
	.size	.L.str.135, 19

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"_Discard Text Information"
	.size	.L.str.136, 26

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Turn this text layer into a normal layer"
	.size	.L.str.137, 41

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"gimp-layer-text-discard"
	.size	.L.str.138, 24

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Text to _Path"
	.size	.L.str.139, 14

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Create a path from this text layer"
	.size	.L.str.140, 35

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"gimp-layer-text-to-path"
	.size	.L.str.141, 24

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Text alon_g Path"
	.size	.L.str.142, 17

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Warp this layer's text along the current path"
	.size	.L.str.143, 46

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-layer-text-along-path"
	.size	.L.str.144, 27

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-resize"
	.size	.L.str.145, 12

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Layer B_oundary Size..."
	.size	.L.str.146, 24

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Adjust the layer dimensions"
	.size	.L.str.147, 28

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"gimp-layer-resize"
	.size	.L.str.148, 18

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"gimp-layer-to-imagesize"
	.size	.L.str.149, 24

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Layer to _Image Size"
	.size	.L.str.150, 21

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Resize the layer to the size of the image"
	.size	.L.str.151, 42

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gimp-layer-resize-to-image"
	.size	.L.str.152, 27

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"gimp-scale"
	.size	.L.str.153, 11

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"_Scale Layer..."
	.size	.L.str.154, 16

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Change the size of the layer content"
	.size	.L.str.155, 37

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-layer-scale"
	.size	.L.str.156, 17

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"gimp-tool-crop"
	.size	.L.str.157, 15

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"_Crop to Selection"
	.size	.L.str.158, 19

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Crop the layer to the extents of the selection"
	.size	.L.str.159, 47

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"gimp-layer-crop"
	.size	.L.str.160, 16

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"gimp-layer-mask"
	.size	.L.str.161, 16

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Add La_yer Mask..."
	.size	.L.str.162, 19

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Add a mask that allows non-destructive editing of transparency"
	.size	.L.str.163, 63

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gimp-layer-mask-add"
	.size	.L.str.164, 20

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Add Alpha C_hannel"
	.size	.L.str.165, 19

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Add transparency information to the layer"
	.size	.L.str.166, 42

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"gimp-layer-alpha-add"
	.size	.L.str.167, 21

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"_Remove Alpha Channel"
	.size	.L.str.168, 22

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Remove transparency information from the layer"
	.size	.L.str.169, 47

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"gimp-layer-alpha-remove"
	.size	.L.str.170, 24

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Lock Alph_a Channel"
	.size	.L.str.171, 20

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Keep transparency information on this layer from being modified"
	.size	.L.str.172, 64

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"gimp-layer-lock-alpha"
	.size	.L.str.173, 22

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"_Edit Layer Mask"
	.size	.L.str.174, 17

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Work on the layer mask"
	.size	.L.str.175, 23

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"gimp-layer-mask-edit"
	.size	.L.str.176, 21

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"gimp-visible"
	.size	.L.str.177, 13

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"S_how Layer Mask"
	.size	.L.str.178, 17

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gimp-layer-mask-show"
	.size	.L.str.179, 21

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"_Disable Layer Mask"
	.size	.L.str.180, 20

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Dismiss the effect of the layer mask"
	.size	.L.str.181, 37

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"gimp-layer-mask-disable"
	.size	.L.str.182, 24

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Apply Layer _Mask"
	.size	.L.str.183, 18

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Apply the effect of the layer mask and remove it"
	.size	.L.str.184, 49

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"gimp-layer-mask-apply"
	.size	.L.str.185, 22

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Delete Layer Mas_k"
	.size	.L.str.186, 19

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Remove the layer mask and its effect"
	.size	.L.str.187, 37

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"gimp-layer-mask-delete"
	.size	.L.str.188, 23

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"gimp-selection-replace"
	.size	.L.str.189, 23

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"_Mask to Selection"
	.size	.L.str.190, 19

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Replace the selection with the layer mask"
	.size	.L.str.191, 42

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"gimp-layer-mask-selection-replace"
	.size	.L.str.192, 34

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"gimp-selection-add"
	.size	.L.str.193, 19

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"_Add to Selection"
	.size	.L.str.194, 18

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Add the layer mask to the current selection"
	.size	.L.str.195, 44

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"gimp-layer-mask-selection-add"
	.size	.L.str.196, 30

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"gimp-selection-subtract"
	.size	.L.str.197, 24

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"_Subtract from Selection"
	.size	.L.str.198, 25

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Subtract the layer mask from the current selection"
	.size	.L.str.199, 51

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"gimp-layer-mask-selection-subtract"
	.size	.L.str.200, 35

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"gimp-selection-intersect"
	.size	.L.str.201, 25

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"_Intersect with Selection"
	.size	.L.str.202, 26

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"Intersect the layer mask with the current selection"
	.size	.L.str.203, 52

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"gimp-layer-mask-selection-intersect"
	.size	.L.str.204, 36

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"Al_pha to Selection"
	.size	.L.str.205, 20

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Replace the selection with the layer's alpha channel"
	.size	.L.str.206, 53

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"gimp-layer-alpha-selection-replace"
	.size	.L.str.207, 35

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"A_dd to Selection"
	.size	.L.str.208, 18

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Add the layer's alpha channel to the current selection"
	.size	.L.str.209, 55

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"gimp-layer-alpha-selection-add"
	.size	.L.str.210, 31

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Subtract the layer's alpha channel from the current selection"
	.size	.L.str.211, 62

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"gimp-layer-alpha-selection-subtract"
	.size	.L.str.212, 36

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Intersect the layer's alpha channel with the current selection"
	.size	.L.str.213, 63

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"gimp-layer-alpha-selection-intersect"
	.size	.L.str.214, 37

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"\n"
	.size	.L.str.215, 2

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"Shortcut: "
	.size	.L.str.216, 11

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"-Click on thumbnail in Layers dockable"
	.size	.L.str.217, 39

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"Select _Top Layer"
	.size	.L.str.218, 18

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Home"
	.size	.L.str.219, 5

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"Select the topmost layer"
	.size	.L.str.220, 25

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"gimp-layer-top"
	.size	.L.str.221, 15

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"Select _Bottom Layer"
	.size	.L.str.222, 21

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"End"
	.size	.L.str.223, 4

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"Select the bottommost layer"
	.size	.L.str.224, 28

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"gimp-layer-bottom"
	.size	.L.str.225, 18

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"Select _Previous Layer"
	.size	.L.str.226, 23

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"Prior"
	.size	.L.str.227, 6

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"Select the layer above the current layer"
	.size	.L.str.228, 41

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"gimp-layer-previous"
	.size	.L.str.229, 20

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"Select _Next Layer"
	.size	.L.str.230, 19

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Next"
	.size	.L.str.231, 5

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"Select the layer below the current layer"
	.size	.L.str.232, 41

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"gimp-layer-next"
	.size	.L.str.233, 16

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"layers-opacity-set"
	.size	.L.str.234, 19

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"Set Opacity"
	.size	.L.str.235, 12

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"gimp-layer-opacity"
	.size	.L.str.236, 19

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"layers-opacity-transparent"
	.size	.L.str.237, 27

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"Completely Transparent"
	.size	.L.str.238, 23

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"layers-opacity-opaque"
	.size	.L.str.239, 22

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"Completely Opaque"
	.size	.L.str.240, 18

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"layers-opacity-decrease"
	.size	.L.str.241, 24

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"More Transparent"
	.size	.L.str.242, 17

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"layers-opacity-increase"
	.size	.L.str.243, 24

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"More Opaque"
	.size	.L.str.244, 12

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"layers-opacity-decrease-skip"
	.size	.L.str.245, 29

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"10% More Transparent"
	.size	.L.str.246, 21

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"layers-opacity-increase-skip"
	.size	.L.str.247, 29

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"10% More Opaque"
	.size	.L.str.248, 16

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"layers-mode-first"
	.size	.L.str.249, 18

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"First Layer Mode"
	.size	.L.str.250, 17

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"gimp-layer-mode"
	.size	.L.str.251, 16

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"layers-mode-last"
	.size	.L.str.252, 17

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"Last Layer Mode"
	.size	.L.str.253, 16

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"layers-mode-previous"
	.size	.L.str.254, 21

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"Previous Layer Mode"
	.size	.L.str.255, 20

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"layers-mode-next"
	.size	.L.str.256, 17

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"Next Layer Mode"
	.size	.L.str.257, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
