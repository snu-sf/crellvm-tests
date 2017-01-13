	.text
	.file	"image-actions.bc"
	.globl	image_actions_setup
	.align	16, 0x90
	.type	image_actions_setup,@function
image_actions_setup:                    # @image_actions_setup
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
	movabsq	$.L.str, %rsi
	movabsq	$image_actions, %rdx
	movl	$23, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str.1, %rsi
	movabsq	$image_convert_actions, %rdx
	movl	$3, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movabsq	$image_convert_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str, %rsi
	movabsq	$image_flip_actions, %rdx
	movl	$2, %ecx
	movabsq	$image_flip_cmd_callback, %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$image_rotate_actions, %rdx
	movl	$3, %ecx
	movabsq	$image_rotate_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	movabsq	$.L.str.4, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_actions_setup, .Lfunc_end0-image_actions_setup
	.cfi_endproc

	.globl	image_actions_update
	.align	16, 0x90
	.type	image_actions_update,@function
image_actions_update:                   # @image_actions_update
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_19
.LBB1_19:                               # %if.then
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_20
.LBB1_20:                               # %if.then
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_5
.LBB1_2:                                # %sw.bb
	movabsq	$.L.str.5, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_5
.LBB1_3:                                # %sw.bb.2
	movabsq	$.L.str.6, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %sw.bb.3
	movabsq	$.L.str.7, %rax
	movq	%rax, -56(%rbp)
.LBB1_5:                                # %sw.epilog
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_action_group_set_action_active
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_is_flat
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -40(%rbp)
.LBB1_6:                                # %if.end
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB1_8
# BB#7:                                 # %land.rhs
	cmpl	$0, -40(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB1_8:                                # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.7, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB1_10
# BB#9:                                 # %land.rhs.44
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB1_10:                               # %land.end.46
	movb	-105(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.12, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movb	%al, -121(%rbp)         # 1-byte Spill
	je	.LBB1_12
# BB#11:                                # %land.rhs.55
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB1_12:                               # %land.end.57
	movb	-121(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.15, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movb	%al, -137(%rbp)         # 1-byte Spill
	je	.LBB1_15
# BB#13:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jne	.LBB1_15
# BB#14:                                # %land.rhs.65
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB1_15:                               # %land.end.67
	movb	-137(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.17, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movb	%al, -153(%rbp)         # 1-byte Spill
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.72
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jne	.LBB1_18
# BB#17:                                # %land.rhs.74
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB1_18:                               # %land.end.76
	movb	-153(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.18, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_actions_update, .Lfunc_end1-image_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image-action"
	.size	.L.str, 13

	.type	image_actions,@object   # @image_actions
	.section	.rodata,"a",@progbits
	.align	16
image_actions:
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	0
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.23
	.quad	.L.str.25
	.quad	0
	.quad	.L.str.26
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.28
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.30
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.31
	.quad	0
	.quad	.L.str.32
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.33
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.36
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.38
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.39
	.quad	0
	.quad	.L.str.40
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.41
	.quad	0
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	image_new_cmd_callback
	.quad	.L.str.48
	.quad	.L.str.10
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	image_resize_cmd_callback
	.quad	.L.str.52
	.quad	.L.str.11
	.quad	0
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	image_resize_to_layers_cmd_callback
	.quad	.L.str.55
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.quad	image_resize_to_selection_cmd_callback
	.quad	.L.str.58
	.quad	.L.str.13
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	0
	.quad	.L.str.61
	.quad	image_print_size_cmd_callback
	.quad	.L.str.62
	.quad	.L.str.14
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	0
	.quad	.L.str.65
	.quad	image_scale_cmd_callback
	.quad	.L.str.66
	.quad	.L.str.15
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	0
	.quad	.L.str.69
	.quad	image_crop_cmd_callback
	.quad	.L.str.70
	.quad	.L.str.16
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	image_duplicate_cmd_callback
	.quad	.L.str.75
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	image_merge_layers_cmd_callback
	.quad	.L.str.79
	.quad	.L.str.18
	.quad	0
	.quad	.L.str.80
	.quad	0
	.quad	.L.str.81
	.quad	image_flatten_image_cmd_callback
	.quad	.L.str.82
	.quad	.L.str.19
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	0
	.quad	.L.str.85
	.quad	image_configure_grid_cmd_callback
	.quad	.L.str.86
	.quad	.L.str.20
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	image_properties_cmd_callback
	.quad	.L.str.91
	.size	image_actions, 1288

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"image-convert-action"
	.size	.L.str.1, 21

	.type	image_convert_actions,@object # @image_convert_actions
	.section	.rodata,"a",@progbits
	.align	16
image_convert_actions:
	.quad	.L.str.5
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	0
	.quad	.L.str.94
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.95
	.quad	.L.str.6
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	0
	.quad	.L.str.98
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.99
	.quad	.L.str.7
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	0
	.quad	.L.str.102
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.103
	.size	image_convert_actions, 168

	.type	image_flip_actions,@object # @image_flip_actions
	.align	16
image_flip_actions:
	.quad	.L.str.8
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	0
	.quad	.L.str.106
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.107
	.quad	.L.str.9
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	0
	.quad	.L.str.110
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.111
	.size	image_flip_actions, 112

	.type	image_rotate_actions,@object # @image_rotate_actions
	.align	16
image_rotate_actions:
	.quad	.L.str.2
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	0
	.quad	.L.str.114
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.115
	.quad	.L.str.3
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	0
	.quad	.L.str.118
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.119
	.quad	.L.str.4
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	0
	.quad	.L.str.122
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.123
	.size	image_rotate_actions, 168

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image-rotate-90"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image-rotate-180"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image-rotate-270"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image-convert-rgb"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image-convert-grayscale"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"image-convert-indexed"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image-flip-horizontal"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"image-flip-vertical"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image-resize"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"image-resize-to-layers"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"image-resize-to-selection"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"image-print-size"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"image-scale"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"image-crop"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"image-duplicate"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"image-merge-layers"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image-flatten"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"image-configure-grid"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image-properties"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"image-menubar"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Image Menu"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-image-window"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"image-popup"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"image-menu"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Image"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"image-mode-menu"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Mode"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"image-transform-menu"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Transform"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"image-guides-menu"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Guides"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"colors-menu"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Colors"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"colors-info-menu"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"I_nfo"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"colors-auto-menu"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Auto"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"colors-map-menu"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Map"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"colors-components-menu"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"C_omponents"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"image-new"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-new"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_New..."
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"<primary>N"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Create a new image"
	.size	.L.str.47, 19

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-file-new"
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-resize"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Can_vas Size..."
	.size	.L.str.50, 16

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Adjust the image dimensions"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-image-resize"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Fit Canvas to L_ayers"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Resize the image to enclose all layers"
	.size	.L.str.54, 39

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-image-resize-to-layers"
	.size	.L.str.55, 28

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"F_it Canvas to Selection"
	.size	.L.str.56, 25

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Resize the image to the extents of the selection"
	.size	.L.str.57, 49

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-image-resize-to-selection"
	.size	.L.str.58, 31

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-print-resolution"
	.size	.L.str.59, 22

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_Print Size..."
	.size	.L.str.60, 15

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Adjust the print resolution"
	.size	.L.str.61, 28

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-image-print-size"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-scale"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"_Scale Image..."
	.size	.L.str.64, 16

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Change the size of the image content"
	.size	.L.str.65, 37

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-image-scale"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-tool-crop"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"_Crop to Selection"
	.size	.L.str.68, 19

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Crop the image to the extents of the selection"
	.size	.L.str.69, 47

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-image-crop"
	.size	.L.str.70, 16

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-duplicate"
	.size	.L.str.71, 15

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"_Duplicate"
	.size	.L.str.72, 11

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"<primary>D"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Create a duplicate of this image"
	.size	.L.str.74, 33

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-image-duplicate"
	.size	.L.str.75, 21

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Merge Visible _Layers..."
	.size	.L.str.76, 25

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"<primary>M"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Merge all visible layers into one layer"
	.size	.L.str.78, 40

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-image-merge-layers"
	.size	.L.str.79, 24

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"_Flatten Image"
	.size	.L.str.80, 15

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Merge all layers into one and remove transparency"
	.size	.L.str.81, 50

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-image-flatten"
	.size	.L.str.82, 19

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-grid"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Configure G_rid..."
	.size	.L.str.84, 19

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Configure the grid for this image"
	.size	.L.str.85, 34

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-image-grid"
	.size	.L.str.86, 16

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gtk-info"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Image Pr_operties"
	.size	.L.str.88, 18

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"<alt>Return"
	.size	.L.str.89, 12

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Display information about this image"
	.size	.L.str.90, 37

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gimp-image-properties"
	.size	.L.str.91, 22

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-convert-rgb"
	.size	.L.str.92, 17

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"_RGB"
	.size	.L.str.93, 5

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Convert the image to the RGB colorspace"
	.size	.L.str.94, 40

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-image-convert-rgb"
	.size	.L.str.95, 23

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gimp-convert-grayscale"
	.size	.L.str.96, 23

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"_Grayscale"
	.size	.L.str.97, 11

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Convert the image to grayscale"
	.size	.L.str.98, 31

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-image-convert-grayscale"
	.size	.L.str.99, 29

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-convert-indexed"
	.size	.L.str.100, 21

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"_Indexed..."
	.size	.L.str.101, 12

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Convert the image to indexed colors"
	.size	.L.str.102, 36

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-image-convert-indexed"
	.size	.L.str.103, 27

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-flip-horizontal"
	.size	.L.str.104, 21

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Flip _Horizontally"
	.size	.L.str.105, 19

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Flip image horizontally"
	.size	.L.str.106, 24

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-image-flip-horizontal"
	.size	.L.str.107, 27

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-flip-vertical"
	.size	.L.str.108, 19

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Flip _Vertically"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Flip image vertically"
	.size	.L.str.110, 22

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-image-flip-vertical"
	.size	.L.str.111, 25

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-rotate-90"
	.size	.L.str.112, 15

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Rotate 90\302\260 _clockwise"
	.size	.L.str.113, 23

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Rotate the image 90 degrees to the right"
	.size	.L.str.114, 41

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"gimp-image-rotate-90"
	.size	.L.str.115, 21

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-rotate-180"
	.size	.L.str.116, 16

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Rotate _180\302\260"
	.size	.L.str.117, 14

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Turn the image upside-down"
	.size	.L.str.118, 27

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-image-rotate-180"
	.size	.L.str.119, 22

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-rotate-270"
	.size	.L.str.120, 16

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Rotate 90\302\260 counter-clock_wise"
	.size	.L.str.121, 31

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Rotate the image 90 degrees to the left"
	.size	.L.str.122, 40

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-image-rotate-270"
	.size	.L.str.123, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
