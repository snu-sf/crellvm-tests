	.text
	.file	"dockable-actions.bc"
	.globl	dockable_actions_setup
	.align	16, 0x90
	.type	dockable_actions_setup,@function
dockable_actions_setup:                 # @dockable_actions_setup
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
	subq	$64, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$dockable_actions, %rdx
	movl	$7, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$dockable_toggle_actions, %rdx
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str.1, %rsi
	movabsq	$dialogs_dockable_actions, %rdx
	movabsq	$dockable_add_tab_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movl	n_dialogs_dockable_actions, %ecx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_string_actions
	movabsq	$.L.str.2, %rsi
	movabsq	$dockable_view_size_actions, %rdx
	movl	$9, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$32, %r9d
	movabsq	$dockable_view_size_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str.3, %rsi
	movabsq	$dockable_tab_style_actions, %rdx
	movl	$6, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$9, %r9d
	movabsq	$dockable_tab_style_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str, %rsi
	movabsq	$dockable_view_type_actions, %rdx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$dockable_toggle_view_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_radio_actions
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dockable_actions_setup, .Lfunc_end0-dockable_actions_setup
	.cfi_endproc

	.globl	dockable_actions_update
	.align	16, 0x90
	.type	dockable_actions_update,@function
dockable_actions_update:                # @dockable_actions_update
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-1, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	callq	gimp_dockbook_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then.4
	movl	$1, -124(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.5
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.7
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -132(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-132(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	movq	%rax, -24(%rbp)
	jmp	.LBB1_20
.LBB1_9:                                # %if.else.19
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.28
	movl	$0, -156(%rbp)
	jmp	.LBB1_16
.LBB1_11:                               # %if.else.29
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_14
# BB#12:                                # %land.lhs.true.32
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB1_14
# BB#13:                                # %if.then.36
	movl	$1, -156(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.37
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB1_15:                               # %if.end.39
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.40
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -32(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.47
	jmp	.LBB1_90
.LBB1_19:                               # %if.end.48
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.49
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_dockbook_get_dock
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_from_widget
	cmpq	$0, -56(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	je	.LBB1_33
# BB#21:                                # %if.then.60
	movq	$0, -176(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movabsq	$.L.str.4, %rsi
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	strstr
	movq	%rax, -176(%rbp)
	cmpq	$0, %rax
	je	.LBB1_23
# BB#22:                                # %if.then.67
	movl	$1, -68(%rbp)
	jmp	.LBB1_26
.LBB1_23:                               # %if.else.68
	movabsq	$.L.str.5, %rsi
	movq	-168(%rbp), %rdi
	callq	strstr
	movq	%rax, -176(%rbp)
	cmpq	$0, %rax
	je	.LBB1_25
# BB#24:                                # %if.then.71
	movl	$0, -68(%rbp)
.LBB1_25:                               # %if.end.72
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.73
	cmpq	$0, -176(%rbp)
	je	.LBB1_32
# BB#27:                                # %if.then.75
	movq	-176(%rbp), %rax
	movl	.L.str.5, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_entry
	cmpq	$0, %rax
	je	.LBB1_29
# BB#28:                                # %if.then.79
	movl	$1, -72(%rbp)
.LBB1_29:                               # %if.end.80
	movq	-176(%rbp), %rax
	movl	.L.str.4, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_entry
	cmpq	$0, %rax
	je	.LBB1_31
# BB#30:                                # %if.then.84
	movl	$1, -76(%rbp)
.LBB1_31:                               # %if.end.85
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.86
	movq	-168(%rbp), %rdi
	callq	g_free
.LBB1_33:                               # %if.end.87
	movq	-24(%rbp), %rdi
	callq	gimp_container_view_get_by_dockable
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_35
# BB#34:                                # %if.then.90
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -84(%rbp)
.LBB1_35:                               # %if.end.92
	movq	-24(%rbp), %rdi
	callq	gimp_dockable_get_tab_style
	movl	%eax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_n_pages
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, %rdi
	callq	g_list_length
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_dockable_is_locked
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, -80(%rbp)
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movb	%dl, -257(%rbp)         # 1-byte Spill
	jne	.LBB1_39
# BB#36:                                # %land.rhs
	movb	$1, %al
	cmpl	$1, -92(%rbp)
	movb	%al, -258(%rbp)         # 1-byte Spill
	jg	.LBB1_38
# BB#37:                                # %lor.rhs
	cmpl	$1, -96(%rbp)
	setg	%al
	movb	%al, -258(%rbp)         # 1-byte Spill
.LBB1_38:                               # %lor.end
	movb	-258(%rbp), %al         # 1-byte Reload
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB1_39:                               # %land.end
	movb	-257(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.6, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -80(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$-1, -84(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	cmpl	$-1, -84(%rbp)
	je	.LBB1_67
# BB#40:                                # %if.then.112
	cmpl	$192, -84(%rbp)
	jb	.LBB1_42
# BB#41:                                # %if.then.115
	movabsq	$.L.str.9, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_66
.LBB1_42:                               # %if.else.116
	cmpl	$128, -84(%rbp)
	jb	.LBB1_44
# BB#43:                                # %if.then.119
	movabsq	$.L.str.10, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_65
.LBB1_44:                               # %if.else.120
	cmpl	$96, -84(%rbp)
	jb	.LBB1_46
# BB#45:                                # %if.then.123
	movabsq	$.L.str.11, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_64
.LBB1_46:                               # %if.else.124
	cmpl	$64, -84(%rbp)
	jb	.LBB1_48
# BB#47:                                # %if.then.127
	movabsq	$.L.str.12, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_63
.LBB1_48:                               # %if.else.128
	cmpl	$48, -84(%rbp)
	jb	.LBB1_50
# BB#49:                                # %if.then.131
	movabsq	$.L.str.13, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_62
.LBB1_50:                               # %if.else.132
	cmpl	$32, -84(%rbp)
	jb	.LBB1_52
# BB#51:                                # %if.then.135
	movabsq	$.L.str.14, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_61
.LBB1_52:                               # %if.else.136
	cmpl	$24, -84(%rbp)
	jb	.LBB1_54
# BB#53:                                # %if.then.139
	movabsq	$.L.str.15, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_60
.LBB1_54:                               # %if.else.140
	cmpl	$16, -84(%rbp)
	jb	.LBB1_56
# BB#55:                                # %if.then.143
	movabsq	$.L.str.16, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_59
.LBB1_56:                               # %if.else.144
	cmpl	$12, -84(%rbp)
	jb	.LBB1_58
# BB#57:                                # %if.then.147
	movabsq	$.L.str.17, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_58:                               # %if.end.148
	jmp	.LBB1_59
.LBB1_59:                               # %if.end.149
	jmp	.LBB1_60
.LBB1_60:                               # %if.end.150
	jmp	.LBB1_61
.LBB1_61:                               # %if.end.151
	jmp	.LBB1_62
.LBB1_62:                               # %if.end.152
	jmp	.LBB1_63
.LBB1_63:                               # %if.end.153
	jmp	.LBB1_64
.LBB1_64:                               # %if.end.154
	jmp	.LBB1_65
.LBB1_65:                               # %if.end.155
	jmp	.LBB1_66
.LBB1_66:                               # %if.end.156
	jmp	.LBB1_67
.LBB1_67:                               # %if.end.157
	cmpl	$0, -88(%rbp)
	jne	.LBB1_69
# BB#68:                                # %if.then.160
	movabsq	$.L.str.18, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_84
.LBB1_69:                               # %if.else.161
	cmpl	$1, -88(%rbp)
	jne	.LBB1_71
# BB#70:                                # %if.then.164
	movabsq	$.L.str.19, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_83
.LBB1_71:                               # %if.else.165
	cmpl	$2, -88(%rbp)
	jne	.LBB1_73
# BB#72:                                # %if.then.168
	movabsq	$.L.str.20, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_82
.LBB1_73:                               # %if.else.169
	cmpl	$4, -88(%rbp)
	jne	.LBB1_75
# BB#74:                                # %if.then.172
	movabsq	$.L.str.21, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_81
.LBB1_75:                               # %if.else.173
	cmpl	$6, -88(%rbp)
	jne	.LBB1_77
# BB#76:                                # %if.then.176
	movabsq	$.L.str.22, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_80
.LBB1_77:                               # %if.else.177
	cmpl	$9, -88(%rbp)
	jne	.LBB1_79
# BB#78:                                # %if.then.180
	movabsq	$.L.str.23, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_79:                               # %if.end.181
	jmp	.LBB1_80
.LBB1_80:                               # %if.end.182
	jmp	.LBB1_81
.LBB1_81:                               # %if.end.183
	jmp	.LBB1_82
.LBB1_82:                               # %if.end.184
	jmp	.LBB1_83
.LBB1_83:                               # %if.end.185
	jmp	.LBB1_84
.LBB1_84:                               # %if.end.186
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movabsq	$.L.str.19, %rsi
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$-1, -68(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.25, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$-1, -68(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	cmpl	$-1, -68(%rbp)
	je	.LBB1_89
# BB#85:                                # %if.then.205
	cmpl	$0, -68(%rbp)
	jne	.LBB1_87
# BB#86:                                # %if.then.208
	movabsq	$.L.str.25, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_88
.LBB1_87:                               # %if.else.209
	movabsq	$.L.str.24, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_88:                               # %if.end.210
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.25, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -72(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
.LBB1_89:                               # %if.end.215
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_docked_has_button_bar
	movabsq	$.L.str.26, %rsi
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_visible
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_docked_get_show_button_bar
	movabsq	$.L.str.26, %rsi
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
.LBB1_90:                               # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dockable_actions_update, .Lfunc_end1-dockable_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dockable-action"
	.size	.L.str, 16

	.type	dockable_actions,@object # @dockable_actions
	.section	.rodata,"a",@progbits
	.align	16
dockable_actions:
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.28
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.36
	.quad	0
	.quad	.L.str.37
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.32
	.quad	0
	.quad	dockable_close_tab_cmd_callback
	.quad	.L.str.41
	.quad	.L.str.6
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.32
	.quad	0
	.quad	dockable_detach_tab_cmd_callback
	.quad	.L.str.44
	.size	dockable_actions, 392

	.type	dockable_toggle_actions,@object # @dockable_toggle_actions
	.align	16
dockable_toggle_actions:
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.45
	.quad	0
	.quad	.L.str.46
	.quad	dockable_lock_tab_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.47
	.quad	.L.str.26
	.quad	0
	.quad	.L.str.48
	.quad	0
	.quad	0
	.quad	dockable_show_button_bar_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.49
	.size	dockable_toggle_actions, 128

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"dialogs-action"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"preview-size"
	.size	.L.str.2, 13

	.type	dockable_view_size_actions,@object # @dockable_view_size_actions
	.section	.rodata,"a",@progbits
	.align	16
dockable_view_size_actions:
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.50
	.quad	0
	.quad	0
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.52
	.quad	0
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.53
	.quad	0
	.quad	0
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	0
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.55
	.quad	0
	.quad	0
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.56
	.quad	0
	.quad	0
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.11
	.quad	0
	.quad	.L.str.57
	.quad	0
	.quad	0
	.long	96                      # 0x60
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.58
	.quad	0
	.quad	0
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.51
	.quad	.L.str.9
	.quad	0
	.quad	.L.str.59
	.quad	0
	.quad	0
	.long	192                     # 0xc0
	.zero	4
	.quad	.L.str.51
	.size	dockable_view_size_actions, 504

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"tab-style"
	.size	.L.str.3, 10

	.type	dockable_tab_style_actions,@object # @dockable_tab_style_actions
	.section	.rodata,"a",@progbits
	.align	16
dockable_tab_style_actions:
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.60
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.62
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.20
	.quad	0
	.quad	.L.str.63
	.quad	0
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.64
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.22
	.quad	0
	.quad	.L.str.65
	.quad	0
	.quad	0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.23
	.quad	0
	.quad	.L.str.66
	.quad	0
	.quad	0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.61
	.size	dockable_tab_style_actions, 336

	.type	dockable_view_type_actions,@object # @dockable_view_type_actions
	.align	16
dockable_view_type_actions:
	.quad	.L.str.25
	.quad	0
	.quad	.L.str.67
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.68
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.69
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.size	dockable_view_type_actions, 112

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"grid"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"list"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dockable-detach-tab"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dockable-lock-tab"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dockable-preview-size-menu"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dockable-preview-size-gigantic"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dockable-preview-size-enormous"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"dockable-preview-size-huge"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dockable-preview-size-extra-large"
	.size	.L.str.12, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dockable-preview-size-large"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dockable-preview-size-medium"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dockable-preview-size-small"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dockable-preview-size-extra-small"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dockable-preview-size-tiny"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"dockable-tab-style-icon"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"dockable-tab-style-preview"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"dockable-tab-style-name"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"dockable-tab-style-icon-name"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dockable-tab-style-preview-name"
	.size	.L.str.22, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"dockable-tab-style-automatic"
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"dockable-view-type-grid"
	.size	.L.str.24, 24

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"dockable-view-type-list"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"dockable-show-button-bar"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dockable-popup"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Dialogs Menu"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-dock"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"dockable-menu"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-missing-image"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.zero	1
	.size	.L.str.32, 1

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"dockable-add-tab-menu"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Add Tab"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Preview Size"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"dockable-tab-style-menu"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Tab Style"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"dockable-close-tab"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-close"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Close Tab"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-dock-tab-close"
	.size	.L.str.41, 20

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-convert"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Detach Tab"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-dock-tab-detach"
	.size	.L.str.44, 21

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Loc_k Tab to Dock"
	.size	.L.str.45, 18

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Protect this tab from being dragged with the mouse pointer"
	.size	.L.str.46, 59

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-dock-tab-lock"
	.size	.L.str.47, 19

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Show _Button Bar"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-dock-show-button-bar"
	.size	.L.str.49, 26

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Tiny"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-dock-preview-size"
	.size	.L.str.51, 23

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"E_xtra Small"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"_Small"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Medium"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Large"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Ex_tra Large"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_Huge"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Enormous"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Gigantic"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_Icon"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-dock-tab-style"
	.size	.L.str.61, 20

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Current _Status"
	.size	.L.str.62, 16

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"_Text"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"I_con & Text"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"St_atus & Text"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Automatic"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"View as _List"
	.size	.L.str.67, 14

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-dock-view-as-list"
	.size	.L.str.68, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"View as _Grid"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-dock-view-as-grid"
	.size	.L.str.70, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
