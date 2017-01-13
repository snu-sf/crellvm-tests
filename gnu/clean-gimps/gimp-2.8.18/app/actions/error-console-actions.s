	.text
	.file	"error-console-actions.bc"
	.globl	error_console_actions_setup
	.align	16, 0x90
	.type	error_console_actions_setup,@function
error_console_actions_setup:            # @error_console_actions_setup
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
	movabsq	$error_console_actions, %rdx
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$error_console_save_actions, %rdx
	movl	$2, %ecx
	movabsq	$error_console_save_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	error_console_actions_setup, .Lfunc_end0-error_console_actions_setup
	.cfi_endproc

	.globl	error_console_actions_update
	.align	16, 0x90
	.type	error_console_actions_update,@function
error_console_actions_update:           # @error_console_actions_update
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_error_console_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	gtk_text_buffer_get_selection_bounds
	movabsq	$.L.str.1, %rsi
	movl	$1, %edx
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	error_console_actions_update, .Lfunc_end1-error_console_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error-console-action"
	.size	.L.str, 21

	.type	error_console_actions,@object # @error_console_actions
	.section	.rodata,"a",@progbits
	.align	16
error_console_actions:
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.8
	.quad	.L.str.1
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	error_console_clear_cmd_callback
	.quad	.L.str.13
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.14
	.quad	.L.str.11
	.quad	.L.str.15
	.quad	error_console_select_all_cmd_callback
	.quad	.L.str.16
	.size	error_console_actions, 168

	.type	error_console_save_actions,@object # @error_console_save_actions
	.align	16
error_console_save_actions:
	.quad	.L.str.3
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.11
	.quad	.L.str.19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.20
	.quad	.L.str.4
	.quad	.L.str.17
	.quad	.L.str.21
	.quad	.L.str.11
	.quad	.L.str.22
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.20
	.size	error_console_save_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"error-console-clear"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"error-console-select-all"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error-console-save-all"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error-console-save-selection"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"error-console-popup"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-warning"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Error Console Menu"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-errors-dialog"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-clear"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Clear"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.zero	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Clear error console"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-errors-clear"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Select _All"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Select all error messages"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-errors-select-all"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-save-as"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Save Error Log to File..."
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Write all error messages to a file"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-errors-save"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Save S_election to File..."
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Write the selected error messages to a file"
	.size	.L.str.22, 44


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
