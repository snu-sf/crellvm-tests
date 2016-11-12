	.text
	.file	"buffers-actions.bc"
	.globl	buffers_actions_setup
	.align	16, 0x90
	.type	buffers_actions_setup,@function
buffers_actions_setup:                  # @buffers_actions_setup
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
	movabsq	$buffers_actions, %rdx
	movl	$5, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	buffers_actions_setup, .Lfunc_end0-buffers_actions_setup
	.cfi_endproc

	.globl	buffers_actions_update
	.align	16, 0x90
	.type	buffers_actions_update,@function
buffers_actions_update:                 # @buffers_actions_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_buffer
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
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
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	buffers_actions_update, .Lfunc_end1-buffers_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"buffers-action"
	.size	.L.str, 15

	.type	buffers_actions,@object # @buffers_actions
	.section	.rodata,"a",@progbits
	.align	16
buffers_actions:
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.8
	.quad	.L.str.1
	.quad	.L.str.6
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	buffers_paste_cmd_callback
	.quad	.L.str.12
	.quad	.L.str.2
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.15
	.quad	buffers_paste_into_cmd_callback
	.quad	.L.str.16
	.quad	.L.str.3
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.19
	.quad	buffers_paste_as_new_cmd_callback
	.quad	.L.str.20
	.quad	.L.str.4
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.10
	.quad	.L.str.23
	.quad	buffers_delete_cmd_callback
	.quad	.L.str.24
	.size	buffers_actions, 280

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"buffers-paste"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"buffers-paste-into"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"buffers-paste-as-new"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"buffers-delete"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"buffers-popup"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-paste"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Buffers Menu"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-buffer-dialog"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Paste Buffer"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Paste the selected buffer"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-buffer-paste"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-paste-into"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Paste Buffer _Into"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Paste the selected buffer into the selection"
	.size	.L.str.15, 45

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-buffer-paste-into"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-paste-as-new"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Paste Buffer as _New"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Paste the selected buffer as a new image"
	.size	.L.str.19, 41

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-buffer-paste-as-new"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-delete"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Delete Buffer"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Delete the selected buffer"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-buffer-delete"
	.size	.L.str.24, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
