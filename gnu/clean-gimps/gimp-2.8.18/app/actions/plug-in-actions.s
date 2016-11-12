	.text
	.file	"plug-in-actions.bc"
	.globl	plug_in_actions_setup
	.align	16, 0x90
	.type	plug_in_actions_setup,@function
plug_in_actions_setup:                  # @plug_in_actions_setup
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
	subq	$160, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$plug_in_actions, %rdx
	movl	$20, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	376(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$plug_in_repeat_actions, %rdx
	movl	$2, %ecx
	movabsq	$plug_in_repeat_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_manager_get_menu_branches
	movq	%rax, -32(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %r8
	callq	plug_in_actions_menu_branch_added
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	movabsq	$.L.str.1, %rsi
	movabsq	$plug_in_actions_menu_branch_added, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_8:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_16
# BB#9:                                 # %for.body.5
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB0_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	plug_in_actions_register_procedure
.LBB0_11:                               # %if.end
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %for.inc.11
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_14
# BB#13:                                # %cond.true.13
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               # %cond.false.15
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_15
.LBB0_15:                               # %cond.end.16
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_16:                               # %for.end.18
	movabsq	$.L.str.2, %rsi
	movabsq	$plug_in_actions_register_procedure, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	520(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.3, %rsi
	movabsq	$plug_in_actions_unregister_procedure, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	520(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_manager_history_size
	movl	$56, %r8d
	movl	%r8d, %esi
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
.LBB0_17:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_20
# BB#18:                                # %for.body.29
                                        #   in Loop: Header=BB0_17 Depth=1
	movabsq	$.L.str.4, %rdi
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.5, %rcx
	movslq	-40(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	%rcx, 16(%rax)
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	%rdi, 48(%rax)
# BB#19:                                # %for.inc.43
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               # %for.end.44
	movabsq	$plug_in_history_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	%rax, %rcx
	callq	gimp_action_group_add_plug_in_actions
	movl	$0, -40(%rbp)
.LBB0_21:                               # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_24
# BB#22:                                # %for.body.48
                                        #   in Loop: Header=BB0_21 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_set_action_visible
	movslq	-40(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
# BB#23:                                # %for.inc.55
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               # %for.end.57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movabsq	$.L.str.7, %rsi
	movabsq	$plug_in_actions_history_changed, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	plug_in_actions_history_changed
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_actions_setup, .Lfunc_end0-plug_in_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_menu_branch_added,@function
plug_in_actions_menu_branch_added:      # @plug_in_actions_menu_branch_added
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%r9, %rdx
	callq	gimp_plug_in_manager_get_locale_domain
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	dgettext
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	dgettext
	movabsq	$.L.str.62, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.62, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	plug_in_actions_check_translation
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	plug_in_actions_build_path
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	plug_in_actions_build_path
.LBB1_3:                                # %if.end
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plug_in_actions_menu_branch_added, .Lfunc_end1-plug_in_actions_menu_branch_added
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_register_procedure,@function
plug_in_actions_register_procedure:     # @plug_in_actions_register_procedure
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_7
.LBB2_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_13
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movabsq	$plug_in_actions_menu_path_added, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-56(%rbp), %rcx
	cmpq	$0, 152(%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB2_10
# BB#9:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB2_12
.LBB2_10:                               # %land.lhs.true.15
	movq	-56(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB2_12
# BB#11:                                # %if.then.17
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	plug_in_actions_add_proc
.LBB2_12:                               # %if.end.18
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.19
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plug_in_actions_register_procedure, .Lfunc_end2-plug_in_actions_register_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_unregister_procedure,@function
plug_in_actions_unregister_procedure:   # @plug_in_actions_unregister_procedure
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_15
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$plug_in_actions_menu_path_added, %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-56(%rbp), %rdi
	cmpq	$0, 152(%rdi)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB3_10
# BB#9:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB3_14
.LBB3_10:                               # %land.lhs.true.15
	movq	-56(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB3_14
# BB#11:                                # %if.then.17
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_get_action
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.24
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_remove_action
.LBB3_13:                               # %if.end.27
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.28
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.29
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plug_in_actions_unregister_procedure, .Lfunc_end3-plug_in_actions_unregister_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_history_changed,@function
plug_in_actions_history_changed:        # @plug_in_actions_history_changed
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
	subq	$336, %rsp              # imm = 0x150
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_plug_in_manager_history_nth
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movl	$0, -100(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_get_action
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.7
	movq	-72(%rbp), %rdi
	callq	gtk_action_get_sensitive
	movl	%eax, -100(%rbp)
.LBB4_3:                                # %if.end
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.71, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.8, %rsi
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.9, %rsi
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.8, %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	gimp_action_group_set_action_sensitive
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movabsq	$.L.str.72, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rsi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.73, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
.LBB4_5:                                # %if.end.15
	movl	$0, -60(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_plug_in_manager_history_length
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB4_14
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movabsq	$.L.str.4, %rdi
	movl	$0, -140(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_plug_in_manager_history_nth
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_9
# BB#8:                                 # %if.then.26
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_locale_domain
	movq	-56(%rbp), %rdi
	movq	152(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext
	movq	%rax, -128(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.30
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -128(%rbp)
.LBB4_10:                               # %if.end.32
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_action_group_get_action
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.38
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-120(%rbp), %rdi
	callq	gtk_action_get_sensitive
	movl	%eax, -140(%rbp)
.LBB4_12:                               # %if.end.40
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rbp), %rax
	movl	-140(%rbp), %r8d
	movq	-56(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_stock_id
	movq	-56(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_blurb
	movabsq	$.L.str.74, %rsi
	movl	$1, %edx
	movabsq	$.L.str.75, %rcx
	movabsq	$.L.str.76, %r9
	movabsq	$.L.str.77, %rdi
	movabsq	$.L.str.78, %r10
	movabsq	$.L.str.79, %r11
	xorl	%r8d, %r8d
	movl	%r8d, %ebx
	movq	-232(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movq	-248(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	-272(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-256(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	-264(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%rbx, -280(%rbp)        # 8-byte Spill
	callq	g_object_set
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_6
.LBB4_14:                               # %for.end
	jmp	.LBB4_15
.LBB4_15:                               # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_plug_in_manager_history_size
	movl	-284(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB4_18
# BB#16:                                # %for.body.46
                                        #   in Loop: Header=BB4_15 Depth=1
	movabsq	$.L.str.4, %rdi
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.74, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.76, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	-152(%rbp), %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movb	$0, %al
	callq	g_object_set
# BB#17:                                # %for.inc.54
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_15
.LBB4_18:                               # %for.end.56
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	plug_in_actions_history_changed, .Lfunc_end4-plug_in_actions_history_changed
	.cfi_endproc

	.globl	plug_in_actions_update
	.align	16, 0x90
	.type	plug_in_actions_update,@function
plug_in_actions_update:                 # @plug_in_actions_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	376(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
.LBB5_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 152(%rax)
	jne	.LBB5_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB5_9
.LBB5_6:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB5_9
# BB#7:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$0, 200(%rax)
	je	.LBB5_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_plug_in_procedure_get_sensitive
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movl	-68(%rbp), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_action_group_set_action_sensitive
.LBB5_9:                                # %if.end.12
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %cond.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB5_3
.LBB5_14:                               # %for.end
	movq	-32(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB5_17
# BB#15:                                # %land.lhs.true.15
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_get_sensitive
	cmpl	$0, %eax
	je	.LBB5_17
# BB#16:                                # %if.then.20
	movabsq	$.L.str.8, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	jmp	.LBB5_18
.LBB5_17:                               # %if.else
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
.LBB5_18:                               # %if.end.21
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB5_19:                               # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_22
# BB#20:                                # %for.body.25
                                        #   in Loop: Header=BB5_19 Depth=1
	movabsq	$.L.str.4, %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_plug_in_procedure_get_sensitive
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-92(%rbp), %edx
	callq	gimp_action_group_set_action_sensitive
	movq	-88(%rbp), %rdi
	callq	g_free
# BB#21:                                # %for.inc.31
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end.33
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plug_in_actions_update, .Lfunc_end5-plug_in_actions_update
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_check_translation,@function
plug_in_actions_check_translation:      # @plug_in_actions_check_translation
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
	movl	$62, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strchr
	movl	$62, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_4
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	je	.LBB6_4
# BB#2:                                 # %lor.lhs.false.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB6_4
# BB#3:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB6_5
.LBB6_4:                                # %if.then
	movabsq	$.L.str.63, %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB6_23
.LBB6_5:                                # %if.end
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB6_7
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB6_10
.LBB6_7:                                # %lor.lhs.false.19
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_9
# BB#8:                                 # %land.lhs.true.23
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_10
.LBB6_9:                                # %if.then.27
	movabsq	$.L.str.64, %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB6_23
.LBB6_10:                               # %if.end.28
	jmp	.LBB6_11
.LBB6_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB6_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB6_11 Depth=1
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB6_13:                               # %land.end
                                        #   in Loop: Header=BB6_11 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_14
	jmp	.LBB6_19
.LBB6_14:                               # %while.body
                                        #   in Loop: Header=BB6_11 Depth=1
	movl	$47, %esi
	movq	-32(%rbp), %rdi
	callq	strchr
	movl	$47, %esi
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.34
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB6_16:                               # %if.end.36
                                        #   in Loop: Header=BB6_11 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_18
# BB#17:                                # %if.then.38
                                        #   in Loop: Header=BB6_11 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB6_18:                               # %if.end.40
                                        #   in Loop: Header=BB6_11 Depth=1
	jmp	.LBB6_11
.LBB6_19:                               # %while.end
	cmpq	$0, -32(%rbp)
	jne	.LBB6_21
# BB#20:                                # %lor.lhs.false.42
	cmpq	$0, -40(%rbp)
	je	.LBB6_22
.LBB6_21:                               # %if.then.44
	movabsq	$.L.str.65, %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB6_23
.LBB6_22:                               # %if.end.45
	movl	$1, -4(%rbp)
.LBB6_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	plug_in_actions_check_translation, .Lfunc_end6-plug_in_actions_check_translation
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_build_path,@function
plug_in_actions_build_path:             # @plug_in_actions_build_path
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	g_hash_table_new_full
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movabsq	$g_hash_table_destroy, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_strip_uline
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movl	$47, %esi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	strrchr
	movl	$47, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	strrchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB7_6
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -64(%rbp)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true.10
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_hash_table_lookup
	cmpq	$0, %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	%rcx, %rdx
	callq	gtk_action_new
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_add_action
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert
	movq	-56(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-64(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	plug_in_actions_build_path
.LBB7_6:                                # %if.end.19
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	plug_in_actions_build_path, .Lfunc_end7-plug_in_actions_build_path
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_menu_path_added,@function
plug_in_actions_menu_path_added:        # @plug_in_actions_menu_path_added
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_locale_domain
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	dgettext
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	plug_in_actions_check_translation
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	plug_in_actions_build_path
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	plug_in_actions_build_path
.LBB8_3:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plug_in_actions_menu_path_added, .Lfunc_end8-plug_in_actions_menu_path_added
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_actions_add_proc,@function
plug_in_actions_add_proc:               # @plug_in_actions_add_proc
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_locale_domain
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rsi
	callq	dgettext
	movq	%rax, -88(%rbp)
	jmp	.LBB9_10
.LBB9_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	dgettext
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	plug_in_actions_check_translation
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %if.then.8
	movq	-104(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -104(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else.10
	movq	-96(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -104(%rbp)
.LBB9_5:                                # %if.end
	movl	$47, %esi
	movq	-96(%rbp), %rdi
	callq	strrchr
	movl	$47, %esi
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	strrchr
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB9_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -120(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.16
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.17
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.68, %rdi
	movq	-96(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_30
.LBB9_9:                                # %if.end.19
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.20
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_stock_id
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_blurb
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_help_id
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	movabsq	$plug_in_run_cmd_callback, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	gimp_action_group_add_plug_in_actions
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB9_22
# BB#11:                                # %if.then.29
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB9_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB9_21
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	dgettext
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	plug_in_actions_check_translation
	cmpl	$0, %eax
	je	.LBB9_15
# BB#14:                                # %if.then.36
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdx
	callq	plug_in_actions_build_path
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.37
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	plug_in_actions_build_path
.LBB9_16:                               # %if.end.38
                                        #   in Loop: Header=BB9_12 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               # %for.inc
                                        #   in Loop: Header=BB9_12 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB9_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_20
.LBB9_19:                               # %cond.false
                                        #   in Loop: Header=BB9_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_20
.LBB9_20:                               # %cond.end
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB9_12
.LBB9_21:                               # %for.end
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.40
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	plug_in_actions_build_path
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB9_23:                               # %if.end.41
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	jne	.LBB9_25
# BB#24:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB9_30
.LBB9_25:                               # %land.lhs.true.46
	movq	-16(%rbp), %rax
	cmpl	$0, 220(%rax)
	jne	.LBB9_30
# BB#26:                                # %land.lhs.true.48
	movq	-16(%rbp), %rax
	cmpl	$0, 200(%rax)
	je	.LBB9_30
# BB#27:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -160(%rbp)
	movq	$0, -168(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB9_29
# BB#28:                                # %if.then.54
	movq	-160(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -168(%rbp)
.LBB9_29:                               # %if.end.56
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	gimp_plug_in_procedure_get_sensitive
	movl	%eax, -172(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movl	-172(%rbp), %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_action_group_set_action_sensitive
.LBB9_30:                               # %if.end.59
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	plug_in_actions_add_proc, .Lfunc_end9-plug_in_actions_add_proc
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB10_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB10_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.69, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"plug-in-action"
	.size	.L.str, 15

	.type	plug_in_actions,@object # @plug_in_actions
	.section	.rodata,"a",@progbits
	.align	16
plug_in_actions:
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.20
	.quad	0
	.quad	.L.str.21
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.22
	.quad	0
	.quad	.L.str.23
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.26
	.quad	0
	.quad	.L.str.27
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.28
	.quad	0
	.quad	.L.str.29
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.31
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.32
	.quad	0
	.quad	.L.str.33
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.34
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
	.quad	0
	.quad	.L.str.39
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.41
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.42
	.quad	0
	.quad	.L.str.43
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.44
	.quad	0
	.quad	.L.str.45
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.46
	.quad	0
	.quad	.L.str.47
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	plug_in_reset_all_cmd_callback
	.quad	.L.str.52
	.size	plug_in_actions, 1120

	.type	plug_in_repeat_actions,@object # @plug_in_repeat_actions
	.align	16
plug_in_repeat_actions:
	.quad	.L.str.8
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.57
	.quad	.L.str.9
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.6
	.size	plug_in_repeat_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"menu-branch-added"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"register-procedure"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"unregister-procedure"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"plug-in-recent-%02d"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-filter-reshow"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"history-changed"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-repeat"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"plug-in-reshow"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-menu"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Filte_rs"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-recent-menu"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Recently Used"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-blur-menu"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Blur"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-noise-menu"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Noise"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-edge-detect-menu"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Edge-De_tect"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plug-in-enhance-menu"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"En_hance"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plug-in-combine-menu"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"C_ombine"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plug-in-generic-menu"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_Generic"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-light-shadow-menu"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Light and Shadow"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plug-in-distorts-menu"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Distorts"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-artistic-menu"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Artistic"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"plug-in-decor-menu"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Decor"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"plug-in-map-menu"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Map"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"plug-in-render-menu"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Render"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"plug-in-render-clouds-menu"
	.size	.L.str.38, 27

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Clouds"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"plug-in-render-nature-menu"
	.size	.L.str.40, 27

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Nature"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"plug-in-render-pattern-menu"
	.size	.L.str.42, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Pattern"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"plug-in-web-menu"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Web"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"plug-in-animation-menu"
	.size	.L.str.46, 23

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"An_imation"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"plug-in-reset-all"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-reset"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Reset all _Filters"
	.size	.L.str.50, 19

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Reset all plug-ins to their default settings"
	.size	.L.str.51, 45

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-filter-reset-all"
	.size	.L.str.52, 22

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gtk-execute"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Re_peat Last"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"<primary>F"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Rerun the last used plug-in using the same settings"
	.size	.L.str.56, 52

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-filter-repeat"
	.size	.L.str.57, 19

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-reshow-filter"
	.size	.L.str.58, 19

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"R_e-Show Last"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"<primary><shift>F"
	.size	.L.str.60, 18

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Show the last used plug-in dialog again"
	.size	.L.str.61, 40

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/"
	.size	.L.str.62, 2

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"bad translation \"%s\"\nfor menu path   \"%s\"\n(<Prefix> must not be translated)\n\n"
	.size	.L.str.63, 78

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"bad translation \"%s\"\nfor menu path   \"%s\"\n(<Prefix> must be followed by either nothing or '/')\n\n"
	.size	.L.str.64, 97

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"bad translation \"%s\"\nfor menu path   \"%s\"\n(number of '/' must be the same)\n\n"
	.size	.L.str.65, 77

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"plug-in-path-table"
	.size	.L.str.66, 19

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"menu-path-added"
	.size	.L.str.67, 16

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"bad menu path for procedure \"%s\": \"%s\""
	.size	.L.str.68, 39

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Gimp-Actions"
	.size	.L.str.69, 13

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Re_peat \"%s\""
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"R_e-Show \"%s\""
	.size	.L.str.71, 14

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Repeat Last"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Re-Show Last"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"visible"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"sensitive"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"procedure"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"label"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"stock-id"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"tooltip"
	.size	.L.str.79, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
