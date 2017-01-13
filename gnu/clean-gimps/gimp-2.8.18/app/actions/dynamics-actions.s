	.text
	.file	"dynamics-actions.bc"
	.globl	dynamics_actions_setup
	.align	16, 0x90
	.type	dynamics_actions_setup,@function
dynamics_actions_setup:                 # @dynamics_actions_setup
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
	movabsq	$dynamics_actions, %rdx
	movl	$6, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$dynamics_edit_actions, %rdx
	movl	$1, %ecx
	movabsq	$data_edit_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_string_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dynamics_actions_setup, .Lfunc_end0-dynamics_actions_setup
	.cfi_endproc

	.globl	dynamics_actions_update
	.align	16, 0x90
	.type	dynamics_actions_update,@function
dynamics_actions_update:                # @dynamics_actions_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_dynamics
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_data_get_filename
	movq	%rax, -48(%rbp)
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.7
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movb	%al, -65(%rbp)          # 1-byte Spill
	je	.LBB1_6
# BB#5:                                 # %land.rhs
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 304(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB1_6:                                # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.2, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movb	%al, -81(%rbp)          # 1-byte Spill
	je	.LBB1_8
# BB#7:                                 # %land.rhs.13
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB1_8:                                # %land.end.15
	movb	-81(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movb	%al, -97(%rbp)          # 1-byte Spill
	je	.LBB1_10
# BB#9:                                 # %land.rhs.20
	movq	-40(%rbp), %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB1_10:                               # %land.end.23
	movb	-97(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.4, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dynamics_actions_update, .Lfunc_end1-dynamics_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dynamics-action"
	.size	.L.str, 16

	.type	dynamics_actions,@object # @dynamics_actions
	.section	.rodata,"a",@progbits
	.align	16
dynamics_actions:
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	data_new_cmd_callback
	.quad	.L.str.14
	.quad	.L.str.2
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.17
	.quad	data_duplicate_cmd_callback
	.quad	.L.str.18
	.quad	.L.str.3
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.12
	.quad	.L.str.21
	.quad	data_copy_location_cmd_callback
	.quad	.L.str.22
	.quad	.L.str.4
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.12
	.quad	.L.str.25
	.quad	data_delete_cmd_callback
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.12
	.quad	.L.str.30
	.quad	data_refresh_cmd_callback
	.quad	.L.str.31
	.size	dynamics_actions, 336

	.type	dynamics_edit_actions,@object # @dynamics_edit_actions
	.align	16
dynamics_edit_actions:
	.quad	.L.str.1
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.size	dynamics_edit_actions, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"dynamics-edit"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"dynamics-duplicate"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dynamics-copy-location"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dynamics-delete"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dynamics-popup"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-dynamics"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Paint Dynamics Menu"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-dynamics-dialog"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dynamics-new"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-new"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_New Dynamics"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Create a new dynamics"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-dynamics-new"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-duplicate"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"D_uplicate Dynamics"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Duplicate this dynamics"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-dynamics-duplicate"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gtk-copy"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Copy Dynamics _Location"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Copy dynamics file location to clipboard"
	.size	.L.str.21, 41

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-dynamics-copy-location"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-delete"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Delete Dynamics"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Delete this dynamics"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-dynamics-delete"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dynamics-refresh"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-refresh"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Refresh Dynamics"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Refresh dynamics"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-dynamics-refresh"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-edit"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Edit Dynamics..."
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Edit dynamics"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-dynamics-editor"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-dynamics-edit"
	.size	.L.str.36, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
