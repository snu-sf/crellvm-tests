	.text
	.file	"tool-options-menu.bc"
	.globl	tool_options_menu_setup
	.align	16, 0x90
	.type	tool_options_menu_setup,@function
tool_options_menu_setup:                # @tool_options_menu_setup
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
	subq	$48, %rsp
	movabsq	$.L.str, %rax
	movabsq	$tool_options_menu_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str, %rsi
	movabsq	$tool_options_menu_update_after, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_options_menu_setup, .Lfunc_end0-tool_options_menu_setup
	.cfi_endproc

	.align	16, 0x90
	.type	tool_options_menu_update,@function
tool_options_menu_update:               # @tool_options_menu_update
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_ui_manager_remove_ui
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_ensure_update
.LBB1_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tool_options_menu_update, .Lfunc_end1-tool_options_menu_update
	.cfi_endproc

	.align	16, 0x90
	.type	tool_options_menu_update_after,@function
tool_options_menu_update_after:         # @tool_options_menu_update_after
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	callq	gimp_get_user_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 136(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_new_merge_id
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r8
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	136(%rax), %r9
	callq	tool_options_menu_update_presets
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	136(%rax), %r9
	callq	tool_options_menu_update_presets
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r8
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	136(%rax), %r9
	callq	tool_options_menu_update_presets
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r8
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	136(%rax), %r9
	callq	tool_options_menu_update_presets
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_ui_manager_ensure_update
.LBB2_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tool_options_menu_update_after, .Lfunc_end2-tool_options_menu_update_after
	.cfi_endproc

	.align	16, 0x90
	.type	tool_options_menu_update_presets,@function
tool_options_menu_update_presets:       # @tool_options_menu_update_presets
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.10, %rdi
	movq	-40(%rbp), %rsi
	movl	-56(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.11, %rdi
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %r9d
	xorl	%ecx, %ecx
	movl	-12(%rbp), %esi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %r8
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gtk_ui_manager_add_ui
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tool_options_menu_update_presets, .Lfunc_end3-tool_options_menu_update_presets
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"update"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tool-options-merge-id"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Save"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"save"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Restore"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"restore"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Edit"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"edit"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Delete"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"delete"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tool-options-%s-preset-%03d"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s/%s"
	.size	.L.str.11, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
