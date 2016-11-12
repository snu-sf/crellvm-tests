	.text
	.file	"patterns-actions.bc"
	.globl	patterns_actions_setup
	.align	16, 0x90
	.type	patterns_actions_setup,@function
patterns_actions_setup:                 # @patterns_actions_setup
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
	movabsq	$patterns_actions, %rdx
	movl	$7, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$patterns_edit_actions, %rdx
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
	.size	patterns_actions_setup, .Lfunc_end0-patterns_actions_setup
	.cfi_endproc

	.globl	patterns_actions_update
	.align	16, 0x90
	.type	patterns_actions_update,@function
patterns_actions_update:                # @patterns_actions_update
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_sel_count
	cmpl	$1, %eax
	jle	.LBB1_3
# BB#2:                                 # %if.then.3
	movq	$0, -32(%rbp)
.LBB1_3:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.5
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
.LBB1_5:                                # %if.end.9
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.10
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB1_8
# BB#7:                                 # %land.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.1, %rsi
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
	je	.LBB1_10
# BB#9:                                 # %land.rhs.14
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB1_10:                               # %land.end.16
	movb	-81(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.2, %rsi
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
	je	.LBB1_12
# BB#11:                                # %land.rhs.21
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 304(%rax)
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB1_12:                               # %land.end.23
	movb	-97(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movb	%al, -113(%rbp)         # 1-byte Spill
	je	.LBB1_14
# BB#13:                                # %land.rhs.28
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB1_14:                               # %land.end.30
	movb	-113(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.4, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movb	%al, -129(%rbp)         # 1-byte Spill
	je	.LBB1_16
# BB#15:                                # %land.rhs.35
	movq	-40(%rbp), %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -129(%rbp)         # 1-byte Spill
.LBB1_16:                               # %land.end.38
	movb	-129(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.5, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	patterns_actions_update, .Lfunc_end1-patterns_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"patterns-action"
	.size	.L.str, 16

	.type	patterns_actions,@object # @patterns_actions
	.section	.rodata,"a",@progbits
	.align	16
patterns_actions:
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.9
	.quad	.L.str.2
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	data_open_as_image_cmd_callback
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.12
	.quad	.L.str.18
	.quad	data_new_cmd_callback
	.quad	.L.str.19
	.quad	.L.str.3
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.22
	.quad	data_duplicate_cmd_callback
	.quad	.L.str.23
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.12
	.quad	.L.str.26
	.quad	data_copy_location_cmd_callback
	.quad	.L.str.27
	.quad	.L.str.5
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.12
	.quad	.L.str.30
	.quad	data_delete_cmd_callback
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.12
	.quad	.L.str.35
	.quad	data_refresh_cmd_callback
	.quad	.L.str.36
	.size	patterns_actions, 392

	.type	patterns_edit_actions,@object # @patterns_edit_actions
	.align	16
patterns_edit_actions:
	.quad	.L.str.1
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.size	patterns_edit_actions, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"patterns-edit"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"patterns-open-as-image"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"patterns-duplicate"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"patterns-copy-location"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"patterns-delete"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"patterns-popup"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Patterns Menu"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-pattern-dialog"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-open"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Open Pattern as Image"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Open this pattern as an image"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-pattern-open-as-image"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"patterns-new"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-new"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_New Pattern"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Create a new pattern"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-pattern-new"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-duplicate"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"D_uplicate Pattern"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Duplicate this pattern"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-pattern-duplicate"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-copy"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Copy Pattern _Location"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Copy pattern file location to clipboard"
	.size	.L.str.26, 40

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-pattern-copy-location"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-delete"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Delete Pattern"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Delete this pattern"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-pattern-delete"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"patterns-refresh"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-refresh"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Refresh Patterns"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Refresh patterns"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-pattern-refresh"
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-edit"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Edit Pattern..."
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Edit pattern"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-pattern-editor"
	.size	.L.str.40, 20

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-pattern-edit"
	.size	.L.str.41, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
