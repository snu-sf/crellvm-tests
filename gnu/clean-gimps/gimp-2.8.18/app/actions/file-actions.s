	.text
	.file	"file-actions.bc"
	.globl	file_actions_setup
	.align	16, 0x90
	.type	file_actions_setup,@function
file_actions_setup:                     # @file_actions_setup
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
	subq	$144, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$file_actions, %rdx
	movl	$10, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$file_save_actions, %rdx
	movl	$7, %ecx
	movabsq	$file_save_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$56, %ecx
	movl	%ecx, %esi
	movl	616(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.2, %rdi
	movslq	-24(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	%rdi, 8(%rax)
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-24(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movl	-24(%rbp), %esi
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movl	%esi, 40(%rax)
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movl	$0, 44(%rax)
	cmpl	$9, -24(%rbp)
	jge	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.3, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movslq	-24(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB0_8
.LBB0_4:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$9, -24(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.26
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.4, %rax
	movslq	-24(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.30
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.5, %rax
	movslq	-24(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.34
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_10:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$file_open_recent_cmd_callback, %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movl	$0, -24(%rbp)
.LBB0_11:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_16
# BB#12:                                # %for.body.38
                                        #   in Loop: Header=BB0_11 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_set_action_visible
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_action_group_set_action_always_show_image
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-24(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	movslq	-24(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	g_free
	cmpl	$9, -24(%rbp)
	jge	.LBB0_14
# BB#13:                                # %if.then.58
                                        #   in Loop: Header=BB0_11 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
.LBB0_14:                               # %if.end.62
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %for.inc.63
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_11
.LBB0_16:                               # %for.end.65
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movabsq	$.L.str.7, %rsi
	movabsq	$file_actions_last_opened_update, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	544(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_object
	movabsq	$.L.str.8, %rsi
	movabsq	$file_actions_last_opened_update, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	544(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.9, %rsi
	movabsq	$file_actions_last_opened_reorder, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	544(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	544(%rcx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	file_actions_last_opened_update
	movabsq	$.L.str.7, %rsi
	movabsq	$file_actions_close_all_update, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.8, %rsi
	movabsq	$file_actions_close_all_update, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	384(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	416(%rcx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	file_actions_close_all_update
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_actions_setup, .Lfunc_end0-file_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	file_actions_last_opened_update,@function
file_actions_last_opened_update:        # @file_actions_last_opened_update
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	616(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB1_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	jge	.LBB1_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_action_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rax
	movq	-72(%rbp), %rsi
	cmpq	%rsi, %rax
	je	.LBB1_5
# BB#4:                                 # %if.then.12
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_display_name
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_escape_uline
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rcx
	movabsq	$.L.str.89, %r9
	movl	$1, %edx
	movabsq	$.L.str.90, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-56(%rbp), %r10
	movq	-104(%rbp), %r11
	movq	-88(%rbp), %r8
	movq	-72(%rbp), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%r11, %rdx
	movl	$1, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.89, %r9
	xorl	%eax, %eax
	movabsq	$.L.str.90, %rdx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movl	$0, (%rsp)
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
.LBB1_7:                                # %if.end.17
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_free
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_1
.LBB1_9:                                # %for.end
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_actions_last_opened_update, .Lfunc_end1-file_actions_last_opened_update
	.cfi_endproc

	.align	16, 0x90
	.type	file_actions_last_opened_reorder,@function
file_actions_last_opened_reorder:       # @file_actions_last_opened_reorder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	file_actions_last_opened_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_actions_last_opened_reorder, .Lfunc_end2-file_actions_last_opened_reorder
	.cfi_endproc

	.align	16, 0x90
	.type	file_actions_close_all_update,@function
file_actions_close_all_update:          # @file_actions_close_all_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	416(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -40(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB3_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB3_3
# BB#2:                                 # %if.then.7
	movl	$0, -40(%rbp)
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.8
	movabsq	$.L.str.21, %rsi
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_actions_close_all_update, .Lfunc_end3-file_actions_close_all_update
	.cfi_endproc

	.globl	file_actions_update
	.align	16, 0x90
	.type	file_actions_update,@function
file_actions_update:                    # @file_actions_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -56(%rbp)
.LBB4_2:                                # %if.end
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB4_4
# BB#3:                                 # %land.rhs
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_plug_in_manager_uri_has_exporter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB4_4:                                # %land.end
	movb	-81(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.10, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movb	%al, -97(%rbp)          # 1-byte Spill
	je	.LBB4_8
# BB#5:                                 # %land.rhs.13
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_uri
	movb	$1, %cl
	cmpq	$0, %rax
	movb	%cl, -98(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#6:                                 # %lor.rhs
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -98(%rbp)          # 1-byte Spill
.LBB4_7:                                # %lor.end
	movb	-98(%rbp), %al          # 1-byte Reload
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB4_8:                                # %land.end.17
	movb	-97(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.13, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
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
	cmpq	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.35
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	file_actions_create_label
	movabsq	$.L.str.14, %rsi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_14
.LBB4_10:                               # %if.else
	cmpl	$0, -60(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.39
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	file_actions_create_label
	movabsq	$.L.str.15, %rsi
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.43
	movabsq	$.L.str.20, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_label
.LBB4_13:                               # %if.end.45
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.46
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_actions_update, .Lfunc_end4-file_actions_update
	.cfi_endproc

	.align	16, 0x90
	.type	file_actions_create_label,@function
file_actions_create_label:              # @file_actions_create_label
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_escape_uline
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_actions_create_label, .Lfunc_end5-file_actions_create_label
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"file-action"
	.size	.L.str, 12

	.type	file_actions,@object    # @file_actions
	.section	.rodata,"a",@progbits
	.align	16
file_actions:
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
	.quad	.L.str.2
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.30
	.quad	file_open_cmd_callback
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	file_open_as_layers_cmd_callback
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.41
	.quad	file_open_location_cmd_callback
	.quad	.L.str.42
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.43
	.quad	0
	.quad	.L.str.44
	.quad	file_create_template_cmd_callback
	.quad	.L.str.45
	.quad	.L.str.13
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	0
	.quad	.L.str.48
	.quad	file_revert_cmd_callback
	.quad	.L.str.49
	.quad	.L.str.21
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	file_close_all_cmd_callback
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	file_quit_cmd_callback
	.quad	.L.str.60
	.size	file_actions, 560

	.type	file_save_actions,@object # @file_save_actions
	.align	16
file_save_actions:
	.quad	.L.str.10
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.65
	.quad	.L.str.11
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.70
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.71
	.quad	0
	.quad	.L.str.72
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	0
	.quad	.L.str.75
	.quad	0
	.quad	.L.str.76
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.65
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.20
	.quad	.L.str.77
	.quad	.L.str.78
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.79
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.80
	.quad	.L.str.5
	.quad	.L.str.81
	.long	6                       # 0x6
	.long	0                       # 0x0
	.quad	.L.str.82
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.long	4                       # 0x4
	.long	0                       # 0x0
	.quad	.L.str.86
	.size	file_save_actions, 392

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"file-open-recent-%02d"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-open"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<primary>%d"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<primary>0"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"context"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"add"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"remove"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"reorder"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file-save"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file-save-as"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file-save-a-copy"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-revert"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file-export-to"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"file-overwrite"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"file-export"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"file-create-template"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Export to %s"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Over_write %s"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Export"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file-close-all"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file-menu"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_File"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"file-create-menu"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Crea_te"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-open-recent-menu"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Open _Recent"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"file-open"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Open..."
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Open an image file"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-file-open"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"file-open-as-layers"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-layer"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Op_en as Layers..."
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<primary><alt>O"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Open an image file as layers"
	.size	.L.str.36, 29

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-file-open-as-layer"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"file-open-location"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-web"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Open _Location..."
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Open an image file from a specified location"
	.size	.L.str.41, 45

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-file-open-location"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Create Template..."
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Create a new template from this image"
	.size	.L.str.44, 38

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-file-save-as-template"
	.size	.L.str.45, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gtk-revert-to-saved"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Re_vert"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Reload the image file from disk"
	.size	.L.str.48, 32

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-file-revert"
	.size	.L.str.49, 17

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gtk-close"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Close all"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"<primary><shift>W"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Close all opened images"
	.size	.L.str.53, 24

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-file-close-all"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"file-quit"
	.size	.L.str.55, 10

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gtk-quit"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_Quit"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"<primary>Q"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Quit the GNU Image Manipulation Program"
	.size	.L.str.59, 40

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-file-quit"
	.size	.L.str.60, 15

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gtk-save"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Save"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"<primary>S"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Save this image"
	.size	.L.str.64, 16

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-file-save"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gtk-save-as"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Save _As..."
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"<primary><shift>S"
	.size	.L.str.68, 18

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Save this image with a different name"
	.size	.L.str.69, 38

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-file-save-as"
	.size	.L.str.70, 18

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Save a Cop_y..."
	.size	.L.str.71, 16

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Save a copy of this image, without affecting the source file (if any) or the current state of the image"
	.size	.L.str.72, 104

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-file-save-a-copy"
	.size	.L.str.73, 22

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"file-save-and-close"
	.size	.L.str.74, 20

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Save and Close..."
	.size	.L.str.75, 18

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Save this image and close its window"
	.size	.L.str.76, 37

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"<primary>E"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Export the image again"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-file-export-to"
	.size	.L.str.79, 20

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Over_write"
	.size	.L.str.80, 11

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Export the image back to the imported file in the import format"
	.size	.L.str.81, 64

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-file-overwrite"
	.size	.L.str.82, 20

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Export As..."
	.size	.L.str.83, 13

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"<primary><shift>E"
	.size	.L.str.84, 18

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Export the image to various file formats such as PNG or JPEG"
	.size	.L.str.85, 61

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-file-export"
	.size	.L.str.86, 17

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"label"
	.size	.L.str.87, 6

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"tooltip"
	.size	.L.str.88, 8

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"visible"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"viewable"
	.size	.L.str.90, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
