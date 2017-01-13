	.text
	.file	"tool-options-actions.bc"
	.globl	tool_options_actions_setup
	.align	16, 0x90
	.type	tool_options_actions_setup,@function
tool_options_actions_setup:             # @tool_options_actions_setup
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
	movabsq	$tool_options_actions, %rdx
	movl	$8, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str.1, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_hide_empty
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_hide_empty
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_hide_empty
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_options_actions_setup, .Lfunc_end0-tool_options_actions_setup
	.cfi_endproc

	.globl	tool_options_actions_update
	.align	16, 0x90
	.type	tool_options_actions_update,@function
tool_options_actions_update:            # @tool_options_actions_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_tool
	movabsq	$.L.str.4, %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 136(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 136(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 136(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 136(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.5, %rsi
	movabsq	$tool_options_save_preset_cmd_callback, %rax
	movabsq	$.L.str.6, %rcx
	movl	$1, %r9d
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	136(%r8), %r8
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	$0, (%rsp)
	callq	tool_options_actions_update_presets
	movabsq	$.L.str.7, %rsi
	movabsq	$tool_options_restore_preset_cmd_callback, %rax
	movabsq	$.L.str.8, %rcx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	136(%rdx), %r8
	movq	%rax, %rdx
	movl	$0, (%rsp)
	callq	tool_options_actions_update_presets
	movabsq	$.L.str.9, %rsi
	movabsq	$tool_options_edit_preset_cmd_callback, %rax
	movabsq	$.L.str.10, %rcx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	136(%rdx), %r8
	movq	%rax, %rdx
	movl	$0, (%rsp)
	callq	tool_options_actions_update_presets
	movabsq	$.L.str.11, %rsi
	movabsq	$tool_options_delete_preset_cmd_callback, %rax
	movabsq	$.L.str.12, %rcx
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	136(%rdx), %r8
	movq	%rax, %rdx
	movl	$1, (%rsp)
	movl	%r10d, -40(%rbp)        # 4-byte Spill
	callq	tool_options_actions_update_presets
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tool_options_actions_update, .Lfunc_end1-tool_options_actions_update
	.cfi_endproc

	.align	16, 0x90
	.type	tool_options_actions_update_presets,@function
tool_options_actions_update_presets:    # @tool_options_actions_update_presets
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
	subq	$240, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.37, %rdi
	movq	-16(%rbp), %rsi
	movl	-64(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpq	$0, -80(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_5
.LBB2_3:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_action_group_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_group_remove_action
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB2_1
.LBB2_5:                                # %for.end
	cmpq	$0, -40(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end.9
	cmpl	$0, -60(%rbp)
	jle	.LBB2_20
# BB#8:                                 # %if.then.10
	movabsq	$.L.str.19, %rax
	movq	$0, -136(%rbp)
	movq	$0, -120(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -64(%rbp)
.LBB2_9:                                # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB2_19
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB2_9 Depth=1
	movabsq	$.L.str.37, %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rsi
	movl	-64(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-136(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, -128(%rbp)
	movl	-64(%rbp), %r8d
	movl	%r8d, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r8
	callq	gimp_action_group_add_enum_actions
	cmpl	$0, -44(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.27
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
.LBB2_12:                               # %if.end.33
                                        #   in Loop: Header=BB2_9 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.35
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
.LBB2_14:                               # %if.end.42
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-136(%rbp), %rdi
	callq	g_free
# BB#15:                                # %for.inc.44
                                        #   in Loop: Header=BB2_9 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB2_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false
                                        #   in Loop: Header=BB2_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_18:                               # %cond.end
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB2_9
.LBB2_19:                               # %for.end.47
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.48
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tool_options_actions_update_presets, .Lfunc_end2-tool_options_actions_update_presets
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tool-options-action"
	.size	.L.str, 20

	.type	tool_options_actions,@object # @tool_options_actions
	.section	.rodata,"a",@progbits
	.align	16
tool_options_actions:
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.16
	.quad	.L.str.4
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.1
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	.L.str.8
	.quad	.L.str.2
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.10
	.quad	.L.str.3
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	.L.str.12
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.19
	.quad	0
	.quad	tool_options_save_new_preset_cmd_callback
	.quad	.L.str.6
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.19
	.quad	.L.str.32
	.quad	tool_options_reset_cmd_callback
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.30
	.quad	.L.str.35
	.quad	.L.str.19
	.quad	.L.str.36
	.quad	tool_options_reset_all_cmd_callback
	.quad	.L.str.33
	.size	tool_options_actions, 448

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"tool-options-restore-preset-menu"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tool-options-edit-preset-menu"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tool-options-delete-preset-menu"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tool-options-save-preset-menu"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tool-options-save-preset"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-options-save"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tool-options-restore-preset"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-tool-options-restore"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tool-options-edit-preset"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-tool-options-edit"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tool-options-delete-preset"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-tool-options-delete"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tool-options-popup"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-tool-options"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Tool Options Menu"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-tool-options-dialog"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-save"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Save Tool Preset"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-revert-to-saved"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Restore Tool Preset"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-edit"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"E_dit Tool Preset"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-delete"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_Delete Tool Preset"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tool-options-save-new-preset"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-new"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_New Tool Preset..."
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tool-options-reset"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-reset"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"R_eset Tool Options"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Reset to default values"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-tool-options-reset"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"tool-options-reset-all"
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Reset _all Tool Options"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Reset all tool options"
	.size	.L.str.36, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s-%03d"
	.size	.L.str.37, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
