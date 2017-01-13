	.text
	.file	"fonts-actions.bc"
	.globl	fonts_actions_setup
	.align	16, 0x90
	.type	fonts_actions_setup,@function
fonts_actions_setup:                    # @fonts_actions_setup
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
	movabsq	$fonts_actions, %rdx
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fonts_actions_setup, .Lfunc_end0-fonts_actions_setup
	.cfi_endproc

	.globl	fonts_actions_update
	.align	16, 0x90
	.type	fonts_actions_update,@function
fonts_actions_update:                   # @fonts_actions_update
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
	subq	$16, %rsp
	movabsq	$.L.str.1, %rax
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_action_group_set_action_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fonts_actions_update, .Lfunc_end1-fonts_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fonts-action"
	.size	.L.str, 13

	.type	fonts_actions,@object   # @fonts_actions
	.section	.rodata,"a",@progbits
	.align	16
fonts_actions:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.5
	.quad	.L.str.1
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	fonts_refresh_cmd_callback
	.quad	.L.str.10
	.size	fonts_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"fonts-refresh"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fonts-popup"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-select-font"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Fonts Menu"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-font-dialog"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-refresh"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Rescan Font List"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Rescan the installed fonts"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-font-refresh"
	.size	.L.str.10, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
