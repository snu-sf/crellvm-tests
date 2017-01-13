	.text
	.file	"help-actions.bc"
	.globl	help_actions_setup
	.align	16, 0x90
	.type	help_actions_setup,@function
help_actions_setup:                     # @help_actions_setup
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
	movabsq	$help_actions, %rdx
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	help_actions_setup, .Lfunc_end0-help_actions_setup
	.cfi_endproc

	.globl	help_actions_update
	.align	16, 0x90
	.type	help_actions_update,@function
help_actions_update:                    # @help_actions_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	help_actions_update, .Lfunc_end1-help_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"help-action"
	.size	.L.str, 12

	.type	help_actions,@object    # @help_actions
	.section	.rodata,"a",@progbits
	.align	16
help_actions:
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	help_help_cmd_callback
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.4
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	help_context_help_cmd_callback
	.quad	.L.str.12
	.size	help_actions, 168

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"help-menu"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"_Help"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help-help"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-help"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"F1"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Open the GIMP user manual"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-help"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"help-context-help"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Context Help"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"<shift>F1"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Show the help for a specific user interface item"
	.size	.L.str.11, 49

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-help-context"
	.size	.L.str.12, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
