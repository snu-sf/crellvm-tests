	.text
	.file	"config-actions.bc"
	.globl	config_actions_setup
	.align	16, 0x90
	.type	config_actions_setup,@function
config_actions_setup:                   # @config_actions_setup
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
	subq	$32, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$config_toggle_actions, %rdx
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	config_actions_use_gegl_notify
	movabsq	$.L.str.1, %rsi
	movabsq	$config_actions_use_gegl_notify, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	config_actions_setup, .Lfunc_end0-config_actions_setup
	.cfi_endproc

	.align	16, 0x90
	.type	config_actions_use_gegl_notify,@function
config_actions_use_gegl_notify:         # @config_actions_use_gegl_notify
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
	movabsq	$.L.str.6, %rax
	leaq	-28(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r9, %rcx
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.2, %rsi
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	gimp_action_group_set_action_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	config_actions_use_gegl_notify, .Lfunc_end1-config_actions_use_gegl_notify
	.cfi_endproc

	.globl	config_actions_update
	.align	16, 0x90
	.type	config_actions_update,@function
config_actions_update:                  # @config_actions_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	config_actions_update, .Lfunc_end2-config_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"config-action"
	.size	.L.str, 14

	.type	config_toggle_actions,@object # @config_toggle_actions
	.section	.rodata,"a",@progbits
	.align	16
config_toggle_actions:
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.4
	.quad	config_use_gegl_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.5
	.size	config_toggle_actions, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"notify::use-gegl"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"config-use-gegl"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Use _GEGL"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"If possible, use GEGL for image processing"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-config-use-gegl"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"use-gegl"
	.size	.L.str.6, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
