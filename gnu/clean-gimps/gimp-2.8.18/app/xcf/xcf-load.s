	.text
	.file	"xcf-load.bc"
	.globl	xcf_load_image
	.align	16, 0x90
	.type	xcf_load_image,@function
xcf_load_image:                         # @xcf_load_image
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
	subq	$368, %rsp              # imm = 0x170
	leaq	-60(%rbp), %rax
	movl	$1, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	xcf_read_int32
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-68(%rbp), %rsi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-24(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -68(%rbp)
	jl	.LBB0_4
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, -68(%rbp)
	jg	.LBB0_4
# BB#2:                                 # %lor.lhs.false.10
	cmpl	$0, -60(%rbp)
	jle	.LBB0_4
# BB#3:                                 # %lor.lhs.false.12
	cmpl	$0, -64(%rbp)
	jg	.LBB0_5
.LBB0_4:                                # %if.then
	jmp	.LBB0_77
.LBB0_5:                                # %if.end
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	callq	gimp_create_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_disable
	movl	%eax, -164(%rbp)        # 4-byte Spill
# BB#6:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_8
# BB#7:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB0_8:                                # %if.end.18
	jmp	.LBB0_9
.LBB0_9:                                # %do.end
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	xcf_load_image_props
	cmpl	$0, %eax
	jne	.LBB0_11
# BB#10:                                # %if.then.21
	jmp	.LBB0_77
.LBB0_11:                               # %if.end.22
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_grid_parasite_name
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_parasite_find
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_15
# BB#12:                                # %if.then.28
	movq	-48(%rbp), %rdi
	callq	gimp_grid_from_parasite
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.31
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_parasite_name
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_parasite_list_remove
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_set_grid
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_14:                               # %if.end.37
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.38
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.39
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_18
# BB#17:                                # %if.then.42
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB0_18:                               # %if.end.44
	jmp	.LBB0_19
.LBB0_19:                               # %do.end.45
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB0_20:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_43 Depth 2
	cmpl	$0, -84(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_21
	jmp	.LBB0_64
.LBB0_21:                               # %while.body
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               # %while.body.49
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movq	$0, -120(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-24(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -56(%rbp)
	jne	.LBB0_24
# BB#23:                                # %if.then.55
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_42
.LBB0_24:                               # %if.end.56
                                        #   in Loop: Header=BB0_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then.60
	jmp	.LBB0_74
.LBB0_26:                               # %if.end.61
                                        #   in Loop: Header=BB0_22 Depth=2
	leaq	-120(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	xcf_load_layer
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.64
	jmp	.LBB0_74
.LBB0_28:                               # %if.end.65
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
# BB#29:                                # %do.body.66
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_31
# BB#30:                                # %if.then.69
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB0_31:                               # %if.end.71
                                        #   in Loop: Header=BB0_22 Depth=2
	jmp	.LBB0_32
.LBB0_32:                               # %do.end.72
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	72(%rcx), %rax
	je	.LBB0_39
# BB#33:                                # %if.then.74
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB0_37
# BB#34:                                # %if.then.77
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB0_36
# BB#35:                                # %if.then.80
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	movl	-148(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -148(%rbp)
	movslq	-148(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB0_36:                               # %if.end.83
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_stack_get_parent_by_path
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB0_38
.LBB0_37:                               # %if.else
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	$0, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB0_38:                               # %if.end.92
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_container_get_n_children
	xorl	%r8d, %r8d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_layer
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_39:                               # %if.end.95
                                        #   in Loop: Header=BB0_22 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB0_41
# BB#40:                                # %if.then.98
	jmp	.LBB0_74
.LBB0_41:                               # %if.end.99
                                        #   in Loop: Header=BB0_22 Depth=2
	jmp	.LBB0_22
.LBB0_42:                               # %while.end
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_43
.LBB0_43:                               # %while.body.101
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-24(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -56(%rbp)
	jne	.LBB0_45
# BB#44:                                # %if.then.108
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_58
.LBB0_45:                               # %if.end.109
                                        #   in Loop: Header=BB0_43 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB0_47
# BB#46:                                # %if.then.113
	jmp	.LBB0_74
.LBB0_47:                               # %if.end.114
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	xcf_load_channel
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB0_49
# BB#48:                                # %if.then.117
	jmp	.LBB0_74
.LBB0_49:                               # %if.end.118
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
# BB#50:                                # %do.body.120
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_52
# BB#51:                                # %if.then.123
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB0_52:                               # %if.end.125
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_53
.LBB0_53:                               # %do.end.126
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-160(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_image_get_mask
	movq	-272(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB0_55
# BB#54:                                # %if.then.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_image_get_channels
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_channel
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB0_55:                               # %if.end.134
                                        #   in Loop: Header=BB0_43 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB0_57
# BB#56:                                # %if.then.137
	jmp	.LBB0_74
.LBB0_57:                               # %if.end.138
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_43
.LBB0_58:                               # %while.end.139
                                        #   in Loop: Header=BB0_20 Depth=1
	movb	$1, %al
	cmpl	$0, -72(%rbp)
	movb	%al, -293(%rbp)         # 1-byte Spill
	jg	.LBB0_61
# BB#59:                                # %lor.lhs.false.142
                                        #   in Loop: Header=BB0_20 Depth=1
	movb	$1, %al
	cmpl	$0, -80(%rbp)
	movb	%al, -293(%rbp)         # 1-byte Spill
	jne	.LBB0_61
# BB#60:                                # %lor.rhs
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-24(%rbp), %rdi
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	callq	xcf_find_layer_offset_table
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -293(%rbp)         # 1-byte Spill
.LBB0_61:                               # %lor.end
                                        #   in Loop: Header=BB0_20 Depth=1
	movb	-293(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB0_63
# BB#62:                                # %if.then.149
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$1, -80(%rbp)
.LBB0_63:                               # %if.end.150
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_20
.LBB0_64:                               # %while.end.151
	movq	-40(%rbp), %rdi
	callq	xcf_load_add_masks
	movq	-24(%rbp), %rdi
	cmpq	$0, 72(%rdi)
	je	.LBB0_67
# BB#65:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_67
# BB#66:                                # %if.then.155
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	callq	floating_sel_attach
.LBB0_67:                               # %if.end.158
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB0_69
# BB#68:                                # %if.then.160
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB0_69:                               # %if.end.163
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB0_71
# BB#70:                                # %if.then.165
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_image_set_active_channel
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB0_71:                               # %if.end.168
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gimp_image_set_filename
	movq	-24(%rbp), %rax
	cmpl	$0, 40(%rax)
	jbe	.LBB0_73
# BB#72:                                # %if.then.171
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	40(%rax), %esi
	callq	gimp_image_set_tattoo_state
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB0_73:                               # %if.end.174
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_enable
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB0_80
.LBB0_74:                               # %error.176
	cmpl	$0, -72(%rbp)
	jne	.LBB0_76
# BB#75:                                # %if.then.179
	jmp	.LBB0_77
.LBB0_76:                               # %if.end.180
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	movq	-40(%rbp), %rdi
	callq	xcf_load_add_masks
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_enable
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB0_80
.LBB0_77:                               # %hard_error
	movq	-32(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.1, %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	-356(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	cmpq	$0, -40(%rbp)
	je	.LBB0_79
# BB#78:                                # %if.then.188
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_79:                               # %if.end.189
	movq	$0, -8(%rbp)
.LBB0_80:                               # %return
	movq	-8(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_load_image, .Lfunc_end0-xcf_load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI1_1:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI1_2:
	.quad	4679240012837945344     # double 65536
	.text
	.align	16, 0x90
	.type	xcf_load_image_props,@function
xcf_load_image_props:                   # @xcf_load_image_props
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
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB1_1:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_68 Depth 2
                                        #     Child Loop BB1_80 Depth 2
                                        #     Child Loop BB1_49 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_11 Depth 2
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	xcf_load_prop
	cmpl	$0, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB1_94
.LBB1_3:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$27, %rdx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	ja	.LBB1_90
# BB#95:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_4:                                # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB1_94
.LBB1_5:                                # %sw.bb.1
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jbe	.LBB1_7
# BB#6:                                 # %if.then.3
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.3, %rcx
	movl	$768, %r8d              # imm = 0x300
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB1_94
.LBB1_7:                                # %if.end.5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB1_15
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	-1008(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	24(%rax), %r8d
	addl	-36(%rbp), %r8d
	movl	%r8d, %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB1_94
.LBB1_10:                               # %if.end.17
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -820(%rbp)
.LBB1_11:                               # %for.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-820(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB1_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-820(%rbp), %eax
	movb	%al, %cl
	imull	$3, -820(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movb	%cl, -816(%rbp,%rdx)
	movl	-820(%rbp), %eax
	movb	%al, %cl
	imull	$3, -820(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%cl, -816(%rbp,%rdx)
	movl	-820(%rbp), %eax
	movb	%al, %cl
	imull	$3, -820(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movb	%cl, -816(%rbp,%rdx)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-820(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -820(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-816(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	imull	$3, -36(%rbp), %edx
	callq	xcf_read_int8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
.LBB1_16:                               # %if.end.35
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.39
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	leaq	-816(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gimp_image_set_colormap
.LBB1_18:                               # %if.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_93
.LBB1_19:                               # %sw.bb.42
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-821(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movzbl	-821(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB1_24
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	-821(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB1_24
# BB#21:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	-821(%rbp), %eax
	cmpl	$2, %eax
	je	.LBB1_24
# BB#22:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	-821(%rbp), %eax
	cmpl	$3, %eax
	je	.LBB1_24
# BB#23:                                # %if.then.61
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.5, %rcx
	movzbl	-821(%rbp), %r8d
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB1_94
.LBB1_24:                               # %if.end.66
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	-821(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 96(%rcx)
	jmp	.LBB1_93
.LBB1_25:                               # %sw.bb.69
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gimp_image_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$5, %ecx
	movq	%rax, -832(%rbp)
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, -848(%rbp)
	movl	$0, -844(%rbp)
.LBB1_26:                               # %for.cond.73
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-844(%rbp), %eax
	cmpl	-848(%rbp), %eax
	jge	.LBB1_35
# BB#27:                                # %for.body.76
                                        #   in Loop: Header=BB1_26 Depth=2
	leaq	-836(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-837(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -836(%rbp)
	jge	.LBB1_29
# BB#28:                                # %if.then.87
                                        #   in Loop: Header=BB1_26 Depth=2
	jmp	.LBB1_34
.LBB1_29:                               # %if.end.88
                                        #   in Loop: Header=BB1_26 Depth=2
	movsbl	-837(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	movl	%ecx, -1032(%rbp)       # 4-byte Spill
	je	.LBB1_30
	jmp	.LBB1_96
.LBB1_96:                               # %if.end.88
                                        #   in Loop: Header=BB1_26 Depth=2
	movl	-1028(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_32
.LBB1_30:                               # %sw.bb.90
                                        #   in Loop: Header=BB1_26 Depth=2
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movl	-836(%rbp), %esi
	callq	gimp_image_add_hguide
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB1_33
.LBB1_31:                               # %sw.bb.92
                                        #   in Loop: Header=BB1_26 Depth=2
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movl	-836(%rbp), %esi
	callq	gimp_image_add_vguide
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB1_33
.LBB1_32:                               # %sw.default
                                        #   in Loop: Header=BB1_26 Depth=2
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.6, %rcx
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	jmp	.LBB1_34
.LBB1_33:                               # %sw.epilog
                                        #   in Loop: Header=BB1_26 Depth=2
	jmp	.LBB1_34
.LBB1_34:                               # %for.inc.97
                                        #   in Loop: Header=BB1_26 Depth=2
	movl	-844(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -844(%rbp)
	jmp	.LBB1_26
.LBB1_35:                               # %for.end.99
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-832(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_list_reverse
	movq	-832(%rbp), %rdi
	movq	%rax, 152(%rdi)
	jmp	.LBB1_93
.LBB1_36:                               # %sw.bb.102
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, -864(%rbp)
	movl	$0, -860(%rbp)
.LBB1_37:                               # %for.cond.105
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-860(%rbp), %eax
	cmpl	-864(%rbp), %eax
	jge	.LBB1_40
# BB#38:                                # %for.body.108
                                        #   in Loop: Header=BB1_37 Depth=2
	leaq	-852(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-856(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-24(%rbp), %rdi
	movl	-852(%rbp), %esi
	movl	-856(%rbp), %edx
	callq	gimp_image_add_sample_point_at_pos
	movq	%rax, -1072(%rbp)       # 8-byte Spill
# BB#39:                                # %for.inc.118
                                        #   in Loop: Header=BB1_37 Depth=2
	movl	-860(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -860(%rbp)
	jmp	.LBB1_37
.LBB1_40:                               # %for.end.120
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_93
.LBB1_41:                               # %sw.bb.121
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-868(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_float
	leaq	-872(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_float
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cvtss2sd	-868(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB1_45
# BB#42:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_1 Depth=1
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-868(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_45
# BB#43:                                # %lor.lhs.false.136
                                        #   in Loop: Header=BB1_1 Depth=1
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-872(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB1_45
# BB#44:                                # %lor.lhs.false.140
                                        #   in Loop: Header=BB1_1 Depth=1
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-872(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_46
.LBB1_45:                               # %if.then.144
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	296(%rcx), %rcx
	movq	%rcx, -880(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.7, %rcx
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-880(%rbp), %rdi
	callq	gimp_template_get_resolution_x
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -868(%rbp)
	movq	-880(%rbp), %rdi
	callq	gimp_template_get_resolution_y
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -872(%rbp)
.LBB1_46:                               # %if.end.153
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	cvtss2sd	-868(%rbp), %xmm0
	cvtss2sd	-872(%rbp), %xmm1
	callq	gimp_image_set_resolution
	jmp	.LBB1_93
.LBB1_47:                               # %sw.bb.156
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB1_93
.LBB1_48:                               # %sw.bb.161
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -888(%rbp)
.LBB1_49:                               # %while.cond.164
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-888(%rbp), %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB1_53
# BB#50:                                # %while.body.170
                                        #   in Loop: Header=BB1_49 Depth=2
	movq	-16(%rbp), %rdi
	callq	xcf_load_parasite
	movq	%rax, -896(%rbp)
	cmpq	$0, -896(%rbp)
	jne	.LBB1_52
# BB#51:                                # %if.then.173
	movl	$0, -4(%rbp)
	jmp	.LBB1_94
.LBB1_52:                               # %if.end.174
                                        #   in Loop: Header=BB1_49 Depth=2
	movq	-24(%rbp), %rdi
	movq	-896(%rbp), %rsi
	callq	gimp_image_parasite_attach
	movq	-896(%rbp), %rdi
	callq	gimp_parasite_free
	jmp	.LBB1_49
.LBB1_53:                               # %while.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-888(%rbp), %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	je	.LBB1_55
# BB#54:                                # %if.then.181
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.8, %rcx
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
.LBB1_55:                               # %if.end.185
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_93
.LBB1_56:                               # %sw.bb.186
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-900(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -900(%rbp)
	jbe	.LBB1_58
# BB#57:                                # %lor.lhs.false.193
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-900(%rbp), %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units
	movl	-1092(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB1_59
.LBB1_58:                               # %if.then.197
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.9, %rcx
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movl	$1, -900(%rbp)
.LBB1_59:                               # %if.end.201
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	-900(%rbp), %esi
	callq	gimp_image_set_unit
	jmp	.LBB1_93
.LBB1_60:                               # %sw.bb.202
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_old_paths
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jmp	.LBB1_93
.LBB1_61:                               # %sw.bb.204
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-948(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_float
	leaq	-952(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movl	$5, %edx
	leaq	-944(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_string
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movl	$0, -964(%rbp)
.LBB1_62:                               # %for.cond.220
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -964(%rbp)
	jge	.LBB1_67
# BB#63:                                # %for.body.223
                                        #   in Loop: Header=BB1_62 Depth=2
	movslq	-964(%rbp), %rax
	cmpq	$0, -944(%rbp,%rax,8)
	jne	.LBB1_65
# BB#64:                                # %if.then.228
                                        #   in Loop: Header=BB1_62 Depth=2
	movabsq	$.L.str.10, %rdi
	callq	g_strdup
	movslq	-964(%rbp), %rdi
	movq	%rax, -944(%rbp,%rdi,8)
.LBB1_65:                               # %if.end.232
                                        #   in Loop: Header=BB1_62 Depth=2
	jmp	.LBB1_66
.LBB1_66:                               # %for.inc.233
                                        #   in Loop: Header=BB1_62 Depth=2
	movl	-964(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -964(%rbp)
	jmp	.LBB1_62
.LBB1_67:                               # %for.end.235
                                        #   in Loop: Header=BB1_1 Depth=1
	callq	gimp_unit_get_number_of_units
	movl	%eax, -960(%rbp)
	callq	gimp_unit_get_number_of_built_in_units
	movl	%eax, -956(%rbp)
.LBB1_68:                               # %for.cond.238
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-956(%rbp), %eax
	cmpl	-960(%rbp), %eax
	jae	.LBB1_77
# BB#69:                                # %for.body.241
                                        #   in Loop: Header=BB1_68 Depth=2
	movl	-956(%rbp), %edi
	callq	gimp_unit_get_factor
	xorps	%xmm1, %xmm1
	cvtss2sd	-948(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_71
# BB#70:                                # %cond.true
                                        #   in Loop: Header=BB1_68 Depth=2
	movl	-956(%rbp), %edi
	callq	gimp_unit_get_factor
	cvtss2sd	-948(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -1120(%rbp)      # 8-byte Spill
	jmp	.LBB1_72
.LBB1_71:                               # %cond.false
                                        #   in Loop: Header=BB1_68 Depth=2
	movl	-956(%rbp), %edi
	callq	gimp_unit_get_factor
	cvtss2sd	-948(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -1120(%rbp)      # 8-byte Spill
.LBB1_72:                               # %cond.end
                                        #   in Loop: Header=BB1_68 Depth=2
	movsd	-1120(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_75
# BB#73:                                # %land.lhs.true.256
                                        #   in Loop: Header=BB1_68 Depth=2
	movq	-944(%rbp), %rdi
	movl	-956(%rbp), %eax
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_identifier
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_75
# BB#74:                                # %if.then.262
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_77
.LBB1_75:                               # %if.end.263
                                        #   in Loop: Header=BB1_68 Depth=2
	jmp	.LBB1_76
.LBB1_76:                               # %for.inc.264
                                        #   in Loop: Header=BB1_68 Depth=2
	movl	-956(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -956(%rbp)
	jmp	.LBB1_68
.LBB1_77:                               # %for.end.266
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-956(%rbp), %eax
	cmpl	-960(%rbp), %eax
	jne	.LBB1_79
# BB#78:                                # %if.then.269
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-944(%rbp), %rdi
	cvtss2sd	-948(%rbp), %xmm0
	movl	-952(%rbp), %esi
	movq	-936(%rbp), %rdx
	movq	-928(%rbp), %rcx
	movq	-920(%rbp), %r8
	movq	-912(%rbp), %r9
	callq	gimp_unit_new
	movl	%eax, -956(%rbp)
.LBB1_79:                               # %if.end.277
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	-956(%rbp), %esi
	callq	gimp_image_set_unit
	movl	$0, -964(%rbp)
.LBB1_80:                               # %for.cond.278
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -964(%rbp)
	jge	.LBB1_83
# BB#81:                                # %for.body.281
                                        #   in Loop: Header=BB1_80 Depth=2
	movslq	-964(%rbp), %rax
	movq	-944(%rbp,%rax,8), %rdi
	callq	g_free
# BB#82:                                # %for.inc.284
                                        #   in Loop: Header=BB1_80 Depth=2
	movl	-964(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -964(%rbp)
	jmp	.LBB1_80
.LBB1_83:                               # %for.end.286
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_93
.LBB1_84:                               # %sw.bb.287
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -968(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_vectors
	cmpl	$0, %eax
	je	.LBB1_88
# BB#85:                                # %if.then.292
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-968(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	24(%rcx), %eax
	je	.LBB1_87
# BB#86:                                # %if.then.297
                                        #   in Loop: Header=BB1_1 Depth=1
	movabsq	$.L.str.11, %rdi
	movl	-968(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	24(%rcx), %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_printerr
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-16(%rbp), %rdi
	movl	-968(%rbp), %esi
	addl	-32(%rbp), %esi
	callq	xcf_seek_pos
	movl	%eax, -1132(%rbp)       # 4-byte Spill
.LBB1_87:                               # %if.end.303
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_89
.LBB1_88:                               # %if.else.304
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movl	-968(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, %esi
	callq	xcf_seek_pos
	movl	%eax, -1136(%rbp)       # 4-byte Spill
.LBB1_89:                               # %if.end.307
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_93
.LBB1_90:                               # %sw.default.308
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	callq	xcf_skip_unknown_prop
	cmpl	$0, %eax
	jne	.LBB1_92
# BB#91:                                # %if.then.312
	movl	$0, -4(%rbp)
	jmp	.LBB1_94
.LBB1_92:                               # %if.end.313
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_93
.LBB1_93:                               # %sw.epilog.314
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_94:                               # %return
	movl	-4(%rbp), %eax
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xcf_load_image_props, .Lfunc_end1-xcf_load_image_props
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_19
	.quad	.LBB1_25
	.quad	.LBB1_41
	.quad	.LBB1_47
	.quad	.LBB1_48
	.quad	.LBB1_56
	.quad	.LBB1_60
	.quad	.LBB1_61
	.quad	.LBB1_84
	.quad	.LBB1_90
	.quad	.LBB1_36

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	xcf_load_layer,@function
xcf_load_layer:                         # @xcf_load_layer
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
	subq	$224, %rsp
	leaq	-88(%rbp), %rax
	movl	$1, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %r8d
	movq	-16(%rbp), %rdx
	cmpl	80(%rdx), %r8d
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movl	%r8d, -100(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	xcf_read_int32
	leaq	-92(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -88(%rbp)
	jle	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -92(%rbp)
	jg	.LBB2_3
.LBB2_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB2_42
.LBB2_3:                                # %if.end
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_string
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-24(%rbp), %rdi
	movl	-88(%rbp), %esi
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %ecx
	movq	-112(%rbp), %r8
	callq	gimp_layer_new
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	jne	.LBB2_5
# BB#4:                                 # %if.then.19
	movq	$0, -8(%rbp)
	jmp	.LBB2_42
.LBB2_5:                                # %if.end.20
	leaq	-40(%rbp), %rdx
	leaq	-60(%rbp), %r8
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %rax
	leaq	-84(%rbp), %rcx
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	-32(%rbp), %r11
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	xcf_load_layer_props
	cmpl	$0, %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then.23
	jmp	.LBB2_41
.LBB2_7:                                # %if.end.24
	jmp	.LBB2_8
.LBB2_8:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_10
# BB#9:                                 # %if.then.26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB2_10:                               # %if.end.28
	jmp	.LBB2_11
.LBB2_11:                               # %do.end
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-40(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-40(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -76(%rbp)
	callq	gimp_text_layer_xcf_load_hack
	cmpl	$0, %eax
	je	.LBB2_17
# BB#12:                                # %if.then.35
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_text_layer_set_xcf_flags
	cmpl	$0, -72(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.39
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB2_14:                               # %if.end.41
	cmpl	$0, -76(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.43
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB2_16:                               # %if.end.45
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.46
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-40(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB2_27
# BB#18:                                # %if.then.59
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB2_20
# BB#19:                                # %if.then.62
	jmp	.LBB2_41
.LBB2_20:                               # %if.end.63
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xcf_load_hierarchy
	cmpl	$0, %eax
	jne	.LBB2_22
# BB#21:                                # %if.then.69
	jmp	.LBB2_41
.LBB2_22:                               # %if.end.70
	jmp	.LBB2_23
.LBB2_23:                               # %do.body.71
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_25
# BB#24:                                # %if.then.74
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB2_25:                               # %if.end.76
	jmp	.LBB2_26
.LBB2_26:                               # %do.end.77
	jmp	.LBB2_28
.LBB2_27:                               # %if.else
	movl	-80(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -116(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-116(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_viewable_set_expanded
.LBB2_28:                               # %if.end.80
	cmpl	$0, -56(%rbp)
	je	.LBB2_38
# BB#29:                                # %if.then.83
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB2_31
# BB#30:                                # %if.then.86
	jmp	.LBB2_41
.LBB2_31:                               # %if.end.87
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_layer_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_33
# BB#32:                                # %if.then.90
	jmp	.LBB2_41
.LBB2_33:                               # %if.end.91
	jmp	.LBB2_34
.LBB2_34:                               # %do.body.92
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_36
# BB#35:                                # %if.then.95
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB2_36:                               # %if.end.97
	jmp	.LBB2_37
.LBB2_37:                               # %do.end.98
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_layer_mask_set_apply
	movq	-48(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	gimp_layer_mask_set_edit
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_mask_set_show
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_object_ref_sink
	movabsq	$.L.str.2, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB2_38:                               # %if.end.101
	cmpl	$0, -100(%rbp)
	je	.LBB2_40
# BB#39:                                # %if.then.103
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, 64(%rsi)
.LBB2_40:                               # %if.end.106
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_42
.LBB2_41:                               # %error
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
.LBB2_42:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xcf_load_layer, .Lfunc_end2-xcf_load_layer
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_channel,@function
xcf_load_channel:                       # @xcf_load_channel
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
	leaq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	.Lxcf_load_channel.color, %rsi
	movq	%rsi, -88(%rbp)
	movq	.Lxcf_load_channel.color+8, %rsi
	movq	%rsi, -80(%rbp)
	movq	.Lxcf_load_channel.color+16, %rsi
	movq	%rsi, -72(%rbp)
	movq	.Lxcf_load_channel.color+24, %rsi
	movq	%rsi, -64(%rbp)
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	movq	-16(%rbp), %rsi
	cmpl	80(%rsi), %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -40(%rbp)
	jle	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -44(%rbp)
	jg	.LBB3_3
.LBB3_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_3:                                # %if.end
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_string
	leaq	-88(%rbp), %r8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	gimp_channel_new
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	jne	.LBB3_5
# BB#4:                                 # %if.then.15
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_5:                                # %if.end.16
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_channel_props
	cmpl	$0, %eax
	jne	.LBB3_7
# BB#6:                                 # %if.then.19
	jmp	.LBB3_22
.LBB3_7:                                # %if.end.20
	jmp	.LBB3_8
.LBB3_8:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB3_10:                               # %if.end.24
	jmp	.LBB3_11
.LBB3_11:                               # %do.end
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB3_13
# BB#12:                                # %if.then.31
	jmp	.LBB3_22
.LBB3_13:                               # %if.end.32
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xcf_load_hierarchy
	cmpl	$0, %eax
	jne	.LBB3_15
# BB#14:                                # %if.then.38
	jmp	.LBB3_22
.LBB3_15:                               # %if.end.39
	jmp	.LBB3_16
.LBB3_16:                               # %do.body.40
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_18
# BB#17:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB3_18:                               # %if.end.45
	jmp	.LBB3_19
.LBB3_19:                               # %do.end.46
	cmpl	$0, -48(%rbp)
	je	.LBB3_21
# BB#20:                                # %if.then.48
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, 64(%rsi)
.LBB3_21:                               # %if.end.51
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_23
.LBB3_22:                               # %error
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
.LBB3_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xcf_load_channel, .Lfunc_end3-xcf_load_channel
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_find_layer_offset_table,@function
xcf_find_layer_offset_table:            # @xcf_find_layer_offset_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	$4, %ecx
	movl	%ecx, %r8d
	leaq	-29(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	callq	memset
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	xcf_seek_pos
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-25(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int8
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_18
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_1
.LBB4_5:                                # %while.end
	movb	-25(%rbp), %al
	movb	%al, -29(%rbp)
	movl	$1, -40(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -40(%rbp)
	jge	.LBB4_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int8
	cmpl	$0, %eax
	jne	.LBB4_9
# BB#8:                                 # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB4_18
.LBB4_9:                                # %if.end.13
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	-25(%rbp), %al
	movslq	-40(%rbp), %rcx
	movb	%al, -29(%rbp,%rcx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_6
.LBB4_11:                               # %for.end
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB4_12:                               # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -40(%rbp)
	jge	.LBB4_17
# BB#13:                                # %for.body.19
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-36(%rbp), %eax
	shll	$8, %eax
	movslq	-40(%rbp), %rcx
	movzbl	-29(%rbp,%rcx), %edx
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rsi
	subq	$4, %rsi
	movslq	-40(%rbp), %rdi
	addq	%rdi, %rsi
	addq	$12, %rsi
	cmpq	%rsi, %rcx
	jl	.LBB4_15
# BB#14:                                # %if.then.28
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movl	$0, 24(%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	subq	$4, %rcx
	movslq	-40(%rbp), %rsi
	addq	%rsi, %rcx
	movl	%ecx, %eax
	movl	%eax, %esi
	callq	xcf_seek_pos
	movl	$1, -4(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB4_18
.LBB4_15:                               # %if.end.34
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %for.inc.35
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB4_12
.LBB4_17:                               # %for.end.37
	movl	$0, -4(%rbp)
.LBB4_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xcf_find_layer_offset_table, .Lfunc_end4-xcf_find_layer_offset_table
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_add_masks,@function
xcf_load_add_masks:                     # @xcf_load_add_masks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_layer_add_mask
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movq	-16(%rbp), %rdi
	callq	g_list_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xcf_load_add_masks, .Lfunc_end5-xcf_load_add_masks
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_prop,@function
xcf_load_prop:                          # @xcf_load_prop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	callq	xcf_read_int32
	cmpl	$4, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$4, %ecx
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	xcf_read_int32
	cmpl	$4, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$4, %ecx
	movl	%ecx, 24(%rax)
	movl	$1, -4(%rbp)
.LBB6_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	xcf_load_prop, .Lfunc_end6-xcf_load_prop
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_parasite,@function
xcf_load_parasite:                      # @xcf_load_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_string
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	cmpq	$268435456, %rsi        # imm = 0x10000000
	jle	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	movl	$268435456, %eax        # imm = 0x10000000
	movl	%eax, %esi
	movb	$0, %al
	callq	g_warning
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	xcf_read_int8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	gimp_parasite_new
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xcf_load_parasite, .Lfunc_end7-xcf_load_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_old_paths,@function
xcf_load_old_paths:                     # @xcf_load_old_paths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-20(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-8(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	jbe	.LBB8_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xcf_load_old_path
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movl	-24(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_container_get_child_by_index
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB8_5:                                # %if.end
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xcf_load_old_paths, .Lfunc_end8-xcf_load_old_paths
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_vectors,@function
xcf_load_vectors:                       # @xcf_load_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-28(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$1, -28(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.15, %rcx
	movl	-28(%rbp), %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB9_10
.LBB9_2:                                # %if.end
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	jbe	.LBB9_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_vector
	cmpl	$0, %eax
	jne	.LBB9_6
# BB#5:                                 # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB9_10
.LBB9_6:                                # %if.end.13
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_7:                                # %while.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_vectors
	movl	-32(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_container_get_child_by_index
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.19
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB9_9:                                # %if.end.21
	movl	$1, -4(%rbp)
.LBB9_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xcf_load_vectors, .Lfunc_end9-xcf_load_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_skip_unknown_prop,@function
xcf_skip_unknown_prop:                  # @xcf_skip_unknown_prop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jbe	.LBB10_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_12
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %ecx
	cmpq	-24(%rbp), %rcx
	jae	.LBB10_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB10_7:                               # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	-48(%rbp), %rsi
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movl	-52(%rbp), %edx
	callq	xcf_read_int8
	movl	$16, %ecx
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	-52(%rbp), %ecx
	jae	.LBB10_9
# BB#8:                                 # %cond.true.6
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false.7
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_10:                              # %cond.end.8
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -24(%rbp)
	jmp	.LBB10_1
.LBB10_11:                              # %while.end
	movl	$1, -4(%rbp)
.LBB10_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	xcf_skip_unknown_prop, .Lfunc_end10-xcf_skip_unknown_prop
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB11_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.13, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_old_path,@function
xcf_load_old_path:                      # @xcf_load_old_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_string
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-37(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int8
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$2, -52(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB12_8
.LBB12_2:                               # %if.else
	cmpl	$3, -52(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.26
	leaq	-84(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB12_7
.LBB12_4:                               # %if.else.36
	cmpl	$1, -52(%rbp)
	je	.LBB12_6
# BB#5:                                 # %if.then.38
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_20
.LBB12_6:                               # %if.end
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.39
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.40
	cmpl	$0, -48(%rbp)
	jne	.LBB12_10
# BB#9:                                 # %if.then.42
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB12_20
.LBB12_10:                              # %if.end.43
	movl	$24, %eax
	movl	%eax, %esi
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc0_n
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB12_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB12_17
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB12_11 Depth=1
	cmpl	$1, -52(%rbp)
	jne	.LBB12_14
# BB#13:                                # %if.then.49
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-76(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-88(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-92(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cvtsi2sdl	-88(%rbp), %xmm0
	movslq	-76(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-72(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
	cvtsi2sdl	-92(%rbp), %xmm0
	movslq	-76(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-72(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
	jmp	.LBB12_15
.LBB12_14:                              # %if.else.70
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-76(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_float
	leaq	-100(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_float
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cvtss2sd	-96(%rbp), %xmm0
	movslq	-76(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-72(%rbp), %rsi
	movsd	%xmm0, 8(%rsi)
	cvtss2sd	-100(%rbp), %xmm0
	movslq	-76(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-72(%rbp), %rsi
	movsd	%xmm0, 16(%rsi)
.LBB12_15:                              # %if.end.96
                                        #   in Loop: Header=BB12_11 Depth=1
	jmp	.LBB12_16
.LBB12_16:                              # %for.inc
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_11
.LBB12_17:                              # %for.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_vectors_compat_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_linked
	cmpl	$0, -56(%rbp)
	je	.LBB12_19
# BB#18:                                # %if.then.100
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-56(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_tattoo
.LBB12_19:                              # %if.end.103
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_vectors
	movl	$1, -4(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB12_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xcf_load_old_path, .Lfunc_end12-xcf_load_old_path
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_vector,@function
xcf_load_vector:                        # @xcf_load_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_string
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_vectors_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-40(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_linked
	cmpl	$0, -36(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_tattoo
.LBB13_2:                               # %if.end
	movl	$0, -68(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB13_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	xcf_load_parasite
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_6
# BB#5:                                 # %if.then.30
	movl	$0, -4(%rbp)
	jmp	.LBB13_23
.LBB13_6:                               # %if.end.31
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_attach
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_free
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB13_3
.LBB13_8:                               # %for.end
	movl	$0, -68(%rbp)
.LBB13_9:                               # %for.cond.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_17 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB13_22
# BB#10:                                # %for.body.36
                                        #   in Loop: Header=BB13_9 Depth=1
	movaps	.Lxcf_load_vector.coords+16(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	.Lxcf_load_vector.coords(%rip), %xmm0
	movaps	%xmm0, -144(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -192(%rbp)
	movq	$0, -176(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -272(%rbp)
	movq	$0, -208(%rbp)
	callq	gimp_anchor_get_type
	leaq	-192(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_init
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	leaq	-84(%rbp), %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	addl	%eax, %ecx
	movl	%ecx, 24(%rsi)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	leaq	-88(%rbp), %rsi
	movl	-324(%rbp), %edx        # 4-byte Reload
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	addl	%eax, %ecx
	movl	%ecx, 24(%rsi)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	leaq	-92(%rbp), %rsi
	movl	-324(%rbp), %edx        # 4-byte Reload
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	addl	%eax, %ecx
	movl	%ecx, 24(%rsi)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	leaq	-96(%rbp), %rsi
	movl	-324(%rbp), %edx        # 4-byte Reload
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	addl	%eax, %ecx
	movl	%ecx, 24(%rsi)
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jne	.LBB13_12
	jmp	.LBB13_11
.LBB13_11:                              # %sw.bb
                                        #   in Loop: Header=BB13_9 Depth=1
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -280(%rbp)
	jmp	.LBB13_13
.LBB13_12:                              # %sw.default
                                        #   in Loop: Header=BB13_9 Depth=1
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	movl	-92(%rbp), %r8d
	shll	$2, %r8d
	imull	-96(%rbp), %r8d
	addl	%r8d, %ecx
	movl	%ecx, %esi
	callq	xcf_seek_pos
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB13_21
.LBB13_13:                              # %sw.epilog
                                        #   in Loop: Header=BB13_9 Depth=1
	cmpl	$2, -92(%rbp)
	jb	.LBB13_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_9 Depth=1
	cmpl	$6, -92(%rbp)
	jbe	.LBB13_16
.LBB13_15:                              # %if.then.62
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB13_23
.LBB13_16:                              # %if.end.63
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-96(%rbp), %edi
	callq	g_value_array_new
	movq	%rax, -168(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -156(%rbp)
.LBB13_17:                              # %for.cond.65
                                        #   Parent Loop BB13_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jae	.LBB13_20
# BB#18:                                # %for.body.67
                                        #   in Loop: Header=BB13_17 Depth=2
	leaq	-100(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-144(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	-92(%rbp), %edx
	callq	xcf_read_float
	leaq	-192(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	movl	-100(%rbp), %eax
	movl	%eax, -208(%rbp)
	cvtss2sd	-144(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	cvtss2sd	-140(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	cvtss2sd	-136(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	cvtss2sd	-132(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	cvtss2sd	-128(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	cvtss2sd	-124(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)
	callq	g_value_set_boxed
	leaq	-192(%rbp), %rsi
	movq	-168(%rbp), %rdi
	callq	g_value_array_append
	movq	%rax, -344(%rbp)        # 8-byte Spill
# BB#19:                                # %for.inc.93
                                        #   in Loop: Header=BB13_17 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB13_17
.LBB13_20:                              # %for.end.95
                                        #   in Loop: Header=BB13_9 Depth=1
	leaq	-192(%rbp), %rdi
	callq	g_value_unset
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-280(%rbp), %rdi
	movl	-88(%rbp), %edx
	movq	-168(%rbp), %r8
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-168(%rbp), %rdi
	callq	g_value_array_free
.LBB13_21:                              # %for.inc.97
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB13_9
.LBB13_22:                              # %for.end.99
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_vectors
	movl	$1, -4(%rbp)
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB13_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xcf_load_vector, .Lfunc_end13-xcf_load_vector
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	xcf_load_layer_props,@function
xcf_load_layer_props:                   # @xcf_load_layer_props
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r11, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
.LBB14_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_39 Depth 2
                                        #     Child Loop BB14_23 Depth 2
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	xcf_load_prop
	cmpl	$0, %eax
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_49
.LBB14_3:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$31, %rdx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	ja	.LBB14_45
# BB#50:                                # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_4:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB14_49
.LBB14_5:                               # %sw.bb.1
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	jmp	.LBB14_48
.LBB14_6:                               # %sw.bb.2
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rcx
	addl	24(%rcx), %eax
	movl	%eax, 24(%rcx)
	jmp	.LBB14_48
.LBB14_7:                               # %sw.bb.4
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-92(%rbp), %rax
	movl	$1, %edx
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %edx
	addl	%eax, %edx
	movl	%edx, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	-204(%rbp), %esi        # 4-byte Reload
	callq	gimp_layer_set_opacity
	jmp	.LBB14_48
.LBB14_8:                               # %sw.bb.9
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	jmp	.LBB14_48
.LBB14_9:                               # %sw.bb.16
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-100(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_linked
	jmp	.LBB14_48
.LBB14_10:                              # %sw.bb.23
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-104(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_can_lock_content
	cmpl	$0, %eax
	je	.LBB14_12
# BB#11:                                # %if.then.32
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_lock_content
.LBB14_12:                              # %if.end.35
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_48
.LBB14_13:                              # %sw.bb.36
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-108(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	gimp_layer_can_lock_alpha
	cmpl	$0, %eax
	je	.LBB14_15
# BB#14:                                # %if.then.43
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_layer_set_lock_alpha
.LBB14_15:                              # %if.end.44
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_48
.LBB14_16:                              # %sw.bb.45
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB14_48
.LBB14_17:                              # %sw.bb.50
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB14_48
.LBB14_18:                              # %sw.bb.55
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB14_48
.LBB14_19:                              # %sw.bb.60
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	leaq	-116(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-112(%rbp), %esi
	movl	-116(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	jmp	.LBB14_48
.LBB14_20:                              # %sw.bb.71
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-120(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-120(%rbp), %esi
	callq	gimp_layer_set_mode
	jmp	.LBB14_48
.LBB14_21:                              # %sw.bb.76
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	-124(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-124(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_tattoo
	jmp	.LBB14_48
.LBB14_22:                              # %sw.bb.83
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -136(%rbp)
.LBB14_23:                              # %while.cond.86
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-136(%rbp), %rax
	movl	-88(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB14_27
# BB#24:                                # %while.body.91
                                        #   in Loop: Header=BB14_23 Depth=2
	movq	-16(%rbp), %rdi
	callq	xcf_load_parasite
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB14_26
# BB#25:                                # %if.then.94
	movl	$0, -4(%rbp)
	jmp	.LBB14_49
.LBB14_26:                              # %if.end.95
                                        #   in Loop: Header=BB14_23 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_attach
	movq	-144(%rbp), %rdi
	callq	gimp_parasite_free
	jmp	.LBB14_23
.LBB14_27:                              # %while.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-136(%rbp), %rax
	movl	-88(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	je	.LBB14_29
# BB#28:                                # %if.then.104
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.20, %rcx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
.LBB14_29:                              # %if.end.106
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_48
.LBB14_30:                              # %sw.bb.107
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB14_48
.LBB14_31:                              # %sw.bb.112
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -156(%rbp)
	cmpl	$0, -156(%rbp)
	je	.LBB14_33
# BB#32:                                # %if.then.117
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB14_33:                              # %if.end.119
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB14_35
# BB#34:                                # %if.then.123
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB14_35:                              # %if.end.125
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_group_layer_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movq	-152(%rbp), %rsi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movl	-308(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_object_unref
	movq	-152(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	cmpl	$0, -156(%rbp)
	je	.LBB14_37
# BB#36:                                # %if.then.137
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB14_37:                              # %if.end.139
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_48
.LBB14_38:                              # %sw.bb.140
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -168(%rbp)
	movq	$0, -176(%rbp)
.LBB14_39:                              # %while.cond.144
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-168(%rbp), %rax
	movl	-88(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB14_43
# BB#40:                                # %while.body.151
                                        #   in Loop: Header=BB14_39 Depth=2
	leaq	-180(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	cmpl	$4, %eax
	je	.LBB14_42
# BB#41:                                # %if.then.156
	movq	-176(%rbp), %rdi
	callq	g_list_free
	movl	$0, -4(%rbp)
	jmp	.LBB14_49
.LBB14_42:                              # %if.end.157
                                        #   in Loop: Header=BB14_39 Depth=2
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$4, %ecx
	movl	%ecx, 24(%rax)
	movq	-176(%rbp), %rdi
	movl	-180(%rbp), %ecx
	movl	%ecx, %esi
	callq	g_list_append
	movq	%rax, -176(%rbp)
	jmp	.LBB14_39
.LBB14_43:                              # %while.end.162
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-176(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB14_48
.LBB14_44:                              # %sw.bb.163
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	jmp	.LBB14_48
.LBB14_45:                              # %sw.default
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-88(%rbp), %eax
	movl	%eax, %esi
	callq	xcf_skip_unknown_prop
	cmpl	$0, %eax
	jne	.LBB14_47
# BB#46:                                # %if.then.171
	movl	$0, -4(%rbp)
	jmp	.LBB14_49
.LBB14_47:                              # %if.end.172
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_48
.LBB14_48:                              # %sw.epilog
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_1
.LBB14_49:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end14:
	.size	xcf_load_layer_props, .Lfunc_end14-xcf_load_layer_props
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_4
	.quad	.LBB14_45
	.quad	.LBB14_5
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_20
	.quad	.LBB14_8
	.quad	.LBB14_9
	.quad	.LBB14_13
	.quad	.LBB14_16
	.quad	.LBB14_17
	.quad	.LBB14_18
	.quad	.LBB14_45
	.quad	.LBB14_19
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_21
	.quad	.LBB14_22
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_45
	.quad	.LBB14_30
	.quad	.LBB14_45
	.quad	.LBB14_10
	.quad	.LBB14_31
	.quad	.LBB14_38
	.quad	.LBB14_44

	.text
	.align	16, 0x90
	.type	xcf_load_hierarchy,@function
xcf_load_hierarchy:                     # @xcf_load_hierarchy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	tile_manager_width
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB15_3
# BB#1:                                 # %lor.lhs.false
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB15_3
# BB#2:                                 # %lor.lhs.false.12
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	tile_manager_bpp
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB15_4
.LBB15_3:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_9
.LBB15_4:                               # %if.end
	leaq	-28(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB15_6
# BB#5:                                 # %if.then.20
	movl	$0, -4(%rbp)
	jmp	.LBB15_9
.LBB15_6:                               # %if.end.21
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_level
	cmpl	$0, %eax
	jne	.LBB15_8
# BB#7:                                 # %if.then.24
	movl	$0, -4(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %if.end.25
	movl	$1, -4(%rbp)
.LBB15_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xcf_load_hierarchy, .Lfunc_end15-xcf_load_hierarchy
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_layer_mask,@function
xcf_load_layer_mask:                    # @xcf_load_layer_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	.Lxcf_load_layer_mask.color, %rsi
	movq	%rsi, -96(%rbp)
	movq	.Lxcf_load_layer_mask.color+8, %rsi
	movq	%rsi, -88(%rbp)
	movq	.Lxcf_load_layer_mask.color+16, %rsi
	movq	%rsi, -80(%rbp)
	movq	.Lxcf_load_layer_mask.color+24, %rsi
	movq	%rsi, -72(%rbp)
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %ecx
	movq	-16(%rbp), %rsi
	cmpl	80(%rsi), %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-52(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -48(%rbp)
	jle	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	jg	.LBB16_3
.LBB16_2:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB16_23
.LBB16_3:                               # %if.end
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_string
	leaq	-96(%rbp), %r8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	-64(%rbp), %rcx
	callq	gimp_layer_mask_new
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	jne	.LBB16_5
# BB#4:                                 # %if.then.15
	movq	$0, -8(%rbp)
	jmp	.LBB16_23
.LBB16_5:                               # %if.end.16
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xcf_load_channel_props
	cmpl	$0, %eax
	jne	.LBB16_7
# BB#6:                                 # %if.then.21
	jmp	.LBB16_22
.LBB16_7:                               # %if.end.22
	jmp	.LBB16_8
.LBB16_8:                               # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_10
# BB#9:                                 # %if.then.24
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB16_10:                              # %if.end.26
	jmp	.LBB16_11
.LBB16_11:                              # %do.end
	leaq	-44(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB16_13
# BB#12:                                # %if.then.33
	jmp	.LBB16_22
.LBB16_13:                              # %if.end.34
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xcf_load_hierarchy
	cmpl	$0, %eax
	jne	.LBB16_15
# BB#14:                                # %if.then.40
	jmp	.LBB16_22
.LBB16_15:                              # %if.end.41
	jmp	.LBB16_16
.LBB16_16:                              # %do.body.42
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_18
# BB#17:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_progress_pulse
.LBB16_18:                              # %if.end.47
	jmp	.LBB16_19
.LBB16_19:                              # %do.end.48
	cmpl	$0, -56(%rbp)
	je	.LBB16_21
# BB#20:                                # %if.then.50
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, 64(%rsi)
.LBB16_21:                              # %if.end.53
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_23
.LBB16_22:                              # %error
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
.LBB16_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	xcf_load_layer_mask, .Lfunc_end16-xcf_load_layer_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4672484613396889600     # double 24576
	.text
	.align	16, 0x90
	.type	xcf_load_level,@function
xcf_load_level:                         # @xcf_load_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	-44(%rbp), %rax
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, %rsi
	callq	xcf_read_int32
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	addl	24(%rdi), %eax
	movl	%eax, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	tile_manager_width
	movl	-76(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB17_3
.LBB17_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB17_39
.LBB17_3:                               # %if.end
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -32(%rbp)
	jne	.LBB17_5
# BB#4:                                 # %if.then.13
	movl	$1, -4(%rbp)
	jmp	.LBB17_39
.LBB17_5:                               # %if.end.14
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	20(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB17_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jae	.LBB17_36
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$0, -56(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB17_9
# BB#8:                                 # %if.then.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.21, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movl	$0, -4(%rbp)
	jmp	.LBB17_39
.LBB17_9:                               # %if.end.19
                                        #   in Loop: Header=BB17_6 Depth=1
	leaq	-36(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	cmpl	$0, -36(%rbp)
	jne	.LBB17_11
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -36(%rbp)
.LBB17_11:                              # %if.end.29
                                        #   in Loop: Header=BB17_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB17_13
# BB#12:                                # %if.then.31
	movl	$0, -4(%rbp)
	jmp	.LBB17_39
.LBB17_13:                              # %if.end.32
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	$1, %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	tile_manager_get
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	subq	$3, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	ja	.LBB17_22
# BB#40:                                # %if.end.32
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_14:                              # %sw.bb
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	xcf_load_tile
	cmpl	$0, %eax
	jne	.LBB17_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$1, -56(%rbp)
.LBB17_16:                              # %if.end.37
                                        #   in Loop: Header=BB17_6 Depth=1
	jmp	.LBB17_23
.LBB17_17:                              # %sw.bb.38
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edx
	callq	xcf_load_tile_rle
	cmpl	$0, %eax
	jne	.LBB17_19
# BB#18:                                # %if.then.41
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$1, -56(%rbp)
.LBB17_19:                              # %if.end.42
                                        #   in Loop: Header=BB17_6 Depth=1
	jmp	.LBB17_23
.LBB17_20:                              # %sw.bb.43
                                        #   in Loop: Header=BB17_6 Depth=1
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$1, -56(%rbp)
	jmp	.LBB17_23
.LBB17_21:                              # %sw.bb.44
                                        #   in Loop: Header=BB17_6 Depth=1
	movabsq	$.L.str.23, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$1, -56(%rbp)
	jmp	.LBB17_23
.LBB17_22:                              # %sw.default
                                        #   in Loop: Header=BB17_6 Depth=1
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$1, -56(%rbp)
.LBB17_23:                              # %sw.epilog
                                        #   in Loop: Header=BB17_6 Depth=1
	cmpl	$0, -56(%rbp)
	je	.LBB17_25
# BB#24:                                # %if.then.46
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	tile_release
	movl	$0, -4(%rbp)
	jmp	.LBB17_39
.LBB17_25:                              # %if.end.47
                                        #   in Loop: Header=BB17_6 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB17_32
# BB#26:                                # %if.then.50
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-64(%rbp), %rdi
	callq	tile_lock
	movq	-72(%rbp), %rdi
	callq	tile_ewidth
	movq	-64(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	tile_ewidth
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB17_31
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-72(%rbp), %rdi
	callq	tile_eheight
	movq	-64(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	tile_eheight
	movl	-112(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB17_31
# BB#28:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-72(%rbp), %rdi
	callq	tile_bpp
	movq	-64(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	tile_bpp
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB17_31
# BB#29:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB17_6 Depth=1
	xorl	%eax, %eax
	movq	-72(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movl	%edx, %esi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	tile_data_pointer
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	tile_size
	movslq	%eax, %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB17_31
# BB#30:                                # %if.then.72
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdx
	callq	tile_manager_map
.LBB17_31:                              # %if.end.73
                                        #   in Loop: Header=BB17_6 Depth=1
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	tile_release
.LBB17_32:                              # %if.end.74
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	tile_release
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %eax
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	callq	tile_manager_get
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	xcf_seek_pos
	cmpl	$0, %eax
	jne	.LBB17_34
# BB#33:                                # %if.then.78
	movl	$0, -4(%rbp)
	jmp	.LBB17_39
.LBB17_34:                              # %if.end.79
                                        #   in Loop: Header=BB17_6 Depth=1
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
# BB#35:                                # %for.inc
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_6
.LBB17_36:                              # %for.end
	cmpl	$0, -32(%rbp)
	je	.LBB17_38
# BB#37:                                # %if.then.86
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.25, %rcx
	movl	-32(%rbp), %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB17_39
.LBB17_38:                              # %if.end.90
	movl	$1, -4(%rbp)
.LBB17_39:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	xcf_load_level, .Lfunc_end17-xcf_load_level
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_14
	.quad	.LBB17_17
	.quad	.LBB17_20
	.quad	.LBB17_21

	.text
	.align	16, 0x90
	.type	xcf_load_tile,@function
xcf_load_tile:                          # @xcf_load_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	tile_size
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	xcf_read_int8
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	xcf_load_tile, .Lfunc_end18-xcf_load_tile
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_load_tile_rle,@function
xcf_load_tile_rle:                      # @xcf_load_tile_rle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB19_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB19_41
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	tile_bpp
	movl	%eax, -60(%rbp)
	movslq	-28(%rbp), %rdi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -72(%rbp)
	movl	-72(%rbp), %r8d
	movq	-16(%rbp), %rax
	addl	24(%rax), %r8d
	movl	%r8d, 24(%rax)
	movl	-72(%rbp), %r8d
	subl	$1, %r8d
	movslq	%r8d, %rax
	addq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -64(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_5 Depth 2
                                        #       Child Loop BB19_18 Depth 3
                                        #       Child Loop BB19_30 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB19_37
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movslq	-64(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_ewidth
	movq	-24(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	tile_eheight
	movl	-100(%rbp), %edx        # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB19_5:                               # %while.cond
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_18 Depth 3
                                        #       Child Loop BB19_30 Depth 3
	cmpl	$0, -48(%rbp)
	jle	.LBB19_35
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jbe	.LBB19_8
# BB#7:                                 # %if.then.14
	jmp	.LBB19_38
.LBB19_8:                               # %if.end.15
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	movzbl	-41(%rbp), %esi
	movl	%esi, -56(%rbp)
	cmpl	$128, -56(%rbp)
	jl	.LBB19_21
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB19_5 Depth=2
	movl	$255, %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
	cmpl	$128, -56(%rbp)
	jne	.LBB19_13
# BB#10:                                # %if.then.24
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.LBB19_12
# BB#11:                                # %if.then.27
	jmp	.LBB19_38
.LBB19_12:                              # %if.end.28
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
.LBB19_13:                              # %if.end.34
                                        #   in Loop: Header=BB19_5 Depth=2
	movl	-56(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jge	.LBB19_15
# BB#14:                                # %if.then.39
	jmp	.LBB19_38
.LBB19_15:                              # %if.end.40
                                        #   in Loop: Header=BB19_5 Depth=2
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	addq	-80(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jbe	.LBB19_17
# BB#16:                                # %if.then.46
	jmp	.LBB19_38
.LBB19_17:                              # %if.end.47
                                        #   in Loop: Header=BB19_5 Depth=2
	jmp	.LBB19_18
.LBB19_18:                              # %while.cond.48
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %eax
	jle	.LBB19_20
# BB#19:                                # %while.body.51
                                        #   in Loop: Header=BB19_18 Depth=3
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movl	-60(%rbp), %esi
	movq	-40(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_18
.LBB19_20:                              # %while.end
                                        #   in Loop: Header=BB19_5 Depth=2
	jmp	.LBB19_34
.LBB19_21:                              # %if.else
                                        #   in Loop: Header=BB19_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	cmpl	$128, -56(%rbp)
	jne	.LBB19_25
# BB#22:                                # %if.then.58
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.LBB19_24
# BB#23:                                # %if.then.61
	jmp	.LBB19_38
.LBB19_24:                              # %if.end.62
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
.LBB19_25:                              # %if.end.69
                                        #   in Loop: Header=BB19_5 Depth=2
	movl	-56(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jge	.LBB19_27
# BB#26:                                # %if.then.74
	jmp	.LBB19_38
.LBB19_27:                              # %if.end.75
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jbe	.LBB19_29
# BB#28:                                # %if.then.78
	jmp	.LBB19_38
.LBB19_29:                              # %if.end.79
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movb	%dl, -41(%rbp)
	movl	$0, -68(%rbp)
.LBB19_30:                              # %for.cond.81
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB19_33
# BB#31:                                # %for.body.84
                                        #   in Loop: Header=BB19_30 Depth=3
	movb	-41(%rbp), %al
	movq	-40(%rbp), %rcx
	movb	%al, (%rcx)
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rcx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -40(%rbp)
# BB#32:                                # %for.inc
                                        #   in Loop: Header=BB19_30 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB19_30
.LBB19_33:                              # %for.end
                                        #   in Loop: Header=BB19_5 Depth=2
	jmp	.LBB19_34
.LBB19_34:                              # %if.end.87
                                        #   in Loop: Header=BB19_5 Depth=2
	jmp	.LBB19_5
.LBB19_35:                              # %while.end.88
                                        #   in Loop: Header=BB19_3 Depth=1
	jmp	.LBB19_36
.LBB19_36:                              # %for.inc.89
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB19_3
.LBB19_37:                              # %for.end.91
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
	jmp	.LBB19_41
.LBB19_38:                              # %bogus_rle
	cmpq	$0, -88(%rbp)
	je	.LBB19_40
# BB#39:                                # %if.then.92
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB19_40:                              # %if.end.93
	movl	$0, -4(%rbp)
.LBB19_41:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	xcf_load_tile_rle, .Lfunc_end19-xcf_load_tile_rle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	xcf_load_channel_props,@function
xcf_load_channel_props:                 # @xcf_load_channel_props
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB20_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_17 Depth 2
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	xcf_load_prop
	cmpl	$0, %eax
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_28
.LBB20_3:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB20_4
	jmp	.LBB20_29
.LBB20_29:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB20_5
	jmp	.LBB20_30
.LBB20_30:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB20_6
	jmp	.LBB20_31
.LBB20_31:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB20_9
	jmp	.LBB20_32
.LBB20_32:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB20_10
	jmp	.LBB20_33
.LBB20_33:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB20_11
	jmp	.LBB20_34
.LBB20_34:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$14, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB20_13
	jmp	.LBB20_35
.LBB20_35:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB20_14
	jmp	.LBB20_36
.LBB20_36:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$20, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB20_15
	jmp	.LBB20_37
.LBB20_37:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$21, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB20_16
	jmp	.LBB20_38
.LBB20_38:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$28, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB20_12
	jmp	.LBB20_24
.LBB20_4:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB20_28
.LBB20_5:                               # %sw.bb.1
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB20_27
.LBB20_6:                               # %sw.bb.2
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB20_8
# BB#7:                                 # %if.then.4
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB20_8:                               # %if.end.6
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_selection_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_take_mask
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	tile_manager_unref
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 8(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 140(%rax)
	jmp	.LBB20_27
.LBB20_9:                               # %sw.bb.28
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%esi, %esi
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	-52(%rbp), %rax
	movl	$1, %edx
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	movl	24(%rsi), %edx
	addl	%eax, %edx
	movl	%edx, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	-220(%rbp), %esi        # 4-byte Reload
	callq	gimp_channel_set_opacity
	jmp	.LBB20_27
.LBB20_10:                              # %sw.bb.30
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	cmpl	$0, -56(%rbp)
	movl	%edx, %r8d
	cmovnel	%ecx, %r8d
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	gimp_item_set_visible
	jmp	.LBB20_27
.LBB20_11:                              # %sw.bb.38
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-60(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	cmpl	$0, -60(%rbp)
	movl	%edx, %r8d
	cmovnel	%ecx, %r8d
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	gimp_item_set_linked
	jmp	.LBB20_27
.LBB20_12:                              # %sw.bb.47
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	cmpl	$0, -64(%rbp)
	movl	%edx, %r8d
	cmovnel	%ecx, %r8d
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	gimp_item_set_lock_content
	jmp	.LBB20_27
.LBB20_13:                              # %sw.bb.56
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-68(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_channel_set_show_masked
	jmp	.LBB20_27
.LBB20_14:                              # %sw.bb.61
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$3, %edx
	leaq	-71(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int8
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	addq	$40, %rsi
	movb	-71(%rbp), %cl
	movb	-70(%rbp), %r8b
	movq	%rsi, %rdi
	movzbl	%cl, %esi
	movzbl	%r8b, %edx
	movzbl	-69(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	jmp	.LBB20_27
.LBB20_15:                              # %sw.bb.68
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-76(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xcf_read_int32
	movq	-16(%rbp), %rsi
	addl	24(%rsi), %eax
	movl	%eax, 24(%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_tattoo
	jmp	.LBB20_27
.LBB20_16:                              # %sw.bb.75
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -88(%rbp)
.LBB20_17:                              # %while.cond.78
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-88(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB20_21
# BB#18:                                # %while.body.84
                                        #   in Loop: Header=BB20_17 Depth=2
	movq	-16(%rbp), %rdi
	callq	xcf_load_parasite
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB20_20
# BB#19:                                # %if.then.87
	movl	$0, -4(%rbp)
	jmp	.LBB20_28
.LBB20_20:                              # %if.end.88
                                        #   in Loop: Header=BB20_17 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_attach
	movq	-96(%rbp), %rdi
	callq	gimp_parasite_free
	jmp	.LBB20_17
.LBB20_21:                              # %while.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	subq	-88(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	je	.LBB20_23
# BB#22:                                # %if.then.97
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.26, %rcx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
.LBB20_23:                              # %if.end.99
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_27
.LBB20_24:                              # %sw.default
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	callq	xcf_skip_unknown_prop
	cmpl	$0, %eax
	jne	.LBB20_26
# BB#25:                                # %if.then.103
	movl	$0, -4(%rbp)
	jmp	.LBB20_28
.LBB20_26:                              # %if.end.104
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_27
.LBB20_27:                              # %sw.epilog
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_1
.LBB20_28:                              # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end20:
	.size	xcf_load_channel_props, .Lfunc_end20-xcf_load_channel_props
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"This XCF file is corrupt!  I have loaded as much of it as I can, but it is incomplete."
	.size	.L.str, 87

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"This XCF file is corrupt!  I could not even salvage any partial image data from it."
	.size	.L.str.1, 84

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-layer-mask"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Maximum colormap size (%d) exceeded"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"XCF warning: version 0 of XCF file format\ndid not save indexed colormaps correctly.\nSubstituting grayscale map."
	.size	.L.str.4, 112

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown compression type: %d"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Guide orientation out of range in XCF file"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Warning, resolution out of range in XCF file"
	.size	.L.str.7, 45

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error while loading an image's parasites"
	.size	.L.str.8, 41

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Warning, unit out of range in XCF file, falling back to inches"
	.size	.L.str.9, 63

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Mismatch in PROP_VECTORS size: skipping %d bytes.\n"
	.size	.L.str.11, 51

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Maximum parasite data length (%ld bytes) exceeded. Possibly corrupt XCF file."
	.size	.L.str.12, 78

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Gimp-XCF"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unknown path type. Possibly corrupt XCF file"
	.size	.L.str.14, 45

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Unknown vectors version: %d (skipping)"
	.size	.L.str.15, 39

	.type	.Lxcf_load_vector.coords,@object # @xcf_load_vector.coords
	.section	.rodata,"a",@progbits
	.align	16
.Lxcf_load_vector.coords:
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1056964608              # float 5.000000e-01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.size	.Lxcf_load_vector.coords, 32

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"skipping unknown stroke type\n"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"bad number of axes in stroke description\n"
	.size	.L.str.17, 42

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"closed"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"control-points"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Error while loading a layer's parasites"
	.size	.L.str.20, 40

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"not enough tiles found in level"
	.size	.L.str.21, 32

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"xcf: zlib compression unimplemented"
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"xcf: fractal compression unimplemented"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"xcf: unknown compression"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"encountered garbage after reading level: %d"
	.size	.L.str.25, 44

	.type	.Lxcf_load_layer_mask.color,@object # @xcf_load_layer_mask.color
	.section	.rodata,"a",@progbits
	.align	8
.Lxcf_load_layer_mask.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lxcf_load_layer_mask.color, 32

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"Error while loading a channel's parasites"
	.size	.L.str.26, 42

	.type	.Lxcf_load_channel.color,@object # @xcf_load_channel.color
	.section	.rodata,"a",@progbits
	.align	8
.Lxcf_load_channel.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lxcf_load_channel.color, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
