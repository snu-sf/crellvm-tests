	.text
	.file	"gimpimage-resize.bc"
	.globl	gimp_image_resize
	.align	16, 0x90
	.type	gimp_image_resize,@function
gimp_image_resize:                      # @gimp_image_resize
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
	subq	$64, %rsp
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-40(%rbp), %rax
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	callq	gimp_image_resize_with_layers
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_resize, .Lfunc_end0-gimp_image_resize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_resize_with_layers
	.align	16, 0x90
	.type	gimp_image_resize_with_layers,@function
gimp_image_resize_with_layers:          # @gimp_image_resize_with_layers
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
	subq	$368, %rsp              # imm = 0x170
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_with_layers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_123
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -132(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -132(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_with_layers, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_123
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	cmpl	$0, -20(%rbp)
	jle	.LBB1_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$0, -24(%rbp)
	jle	.LBB1_28
# BB#27:                                # %if.then.43
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_with_layers, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_123
.LBB1_29:                               # %if.end.45
	jmp	.LBB1_30
.LBB1_30:                               # %do.end.46
	jmp	.LBB1_31
.LBB1_31:                               # %do.body.47
	cmpq	$0, -48(%rbp)
	je	.LBB1_40
# BB#32:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.57
	movl	$0, -156(%rbp)
	jmp	.LBB1_39
.LBB1_34:                               # %if.else.58
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true.61
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB1_37
# BB#36:                                # %if.then.65
	movl	$1, -156(%rbp)
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.66
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB1_38:                               # %if.end.68
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.69
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB1_41
.LBB1_40:                               # %if.then.72
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_with_layers, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_123
.LBB1_42:                               # %if.end.74
	jmp	.LBB1_43
.LBB1_43:                               # %do.end.75
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-8(%rbp), %rdi
	movl	$80, %ecx
	movl	%ecx, %esi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rdi
	movl	$.L.str.5, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_dpgettext
	movl	$2, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	$1, %esi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_image_item_list_get_list
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movq	-8(%rbp), %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_image_get_channels
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	-256(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	-260(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	callq	g_list_length
	movl	-264(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edi
	movl	%eax, %r8d
	leal	1(%r8,%rdi), %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movl	%ecx, %eax
	subl	-28(%rbp), %eax
	subl	-32(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %edx
	callq	gimp_image_undo_push_image_size
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channel_iter
	movq	%rax, -56(%rbp)
.LBB1_44:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_52
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	gimp_item_resize
	cmpq	$0, -48(%rbp)
	je	.LBB1_47
# BB#46:                                # %if.then.98
                                        #   in Loop: Header=BB1_44 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	divsd	-72(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_47:                               # %if.end.99
                                        #   in Loop: Header=BB1_44 Depth=1
	jmp	.LBB1_48
.LBB1_48:                               # %for.inc
                                        #   in Loop: Header=BB1_44 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_50
# BB#49:                                # %cond.true
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB1_51
.LBB1_50:                               # %cond.false
                                        #   in Loop: Header=BB1_44 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB1_51
.LBB1_51:                               # %cond.end
                                        #   in Loop: Header=BB1_44 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_44
.LBB1_52:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -56(%rbp)
.LBB1_53:                               # %for.cond.102
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_61
# BB#54:                                # %for.body.104
                                        #   in Loop: Header=BB1_53 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	gimp_item_resize
	cmpq	$0, -48(%rbp)
	je	.LBB1_56
# BB#55:                                # %if.then.109
                                        #   in Loop: Header=BB1_53 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	divsd	-72(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_56:                               # %if.end.112
                                        #   in Loop: Header=BB1_53 Depth=1
	jmp	.LBB1_57
.LBB1_57:                               # %for.inc.113
                                        #   in Loop: Header=BB1_53 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_59
# BB#58:                                # %cond.true.115
                                        #   in Loop: Header=BB1_53 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB1_60
.LBB1_59:                               # %cond.false.117
                                        #   in Loop: Header=BB1_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB1_60
.LBB1_60:                               # %cond.end.118
                                        #   in Loop: Header=BB1_53 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_53
.LBB1_61:                               # %for.end.120
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_resize
	cmpq	$0, -48(%rbp)
	je	.LBB1_63
# BB#62:                                # %if.then.125
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	divsd	-72(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_63:                               # %if.end.128
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -56(%rbp)
.LBB1_64:                               # %for.cond.130
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_72
# BB#65:                                # %for.body.132
                                        #   in Loop: Header=BB1_64 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_item_translate
	cmpq	$0, -48(%rbp)
	je	.LBB1_67
# BB#66:                                # %if.then.137
                                        #   in Loop: Header=BB1_64 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	divsd	-72(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_67:                               # %if.end.140
                                        #   in Loop: Header=BB1_64 Depth=1
	jmp	.LBB1_68
.LBB1_68:                               # %for.inc.141
                                        #   in Loop: Header=BB1_64 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_70
# BB#69:                                # %cond.true.143
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_71
.LBB1_70:                               # %cond.false.145
                                        #   in Loop: Header=BB1_64 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_71
.LBB1_71:                               # %cond.end.146
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_64
.LBB1_72:                               # %for.end.148
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_73:                               # %for.cond.149
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_83
# BB#74:                                # %for.body.151
                                        #   in Loop: Header=BB1_73 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB1_76
# BB#75:                                # %if.then.161
                                        #   in Loop: Header=BB1_73 Depth=1
	jmp	.LBB1_79
.LBB1_76:                               # %if.end.162
                                        #   in Loop: Header=BB1_73 Depth=1
	leaq	-196(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-192(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-192(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	callq	gimp_item_resize
	cmpq	$0, -48(%rbp)
	je	.LBB1_78
# BB#77:                                # %if.then.164
                                        #   in Loop: Header=BB1_73 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	divsd	-72(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_78:                               # %if.end.167
                                        #   in Loop: Header=BB1_73 Depth=1
	jmp	.LBB1_79
.LBB1_79:                               # %for.inc.168
                                        #   in Loop: Header=BB1_73 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_81
# BB#80:                                # %cond.true.170
                                        #   in Loop: Header=BB1_73 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB1_82
.LBB1_81:                               # %cond.false.172
                                        #   in Loop: Header=BB1_73 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB1_82
.LBB1_82:                               # %cond.end.173
                                        #   in Loop: Header=BB1_73 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_73
.LBB1_83:                               # %for.end.175
	movq	-64(%rbp), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -56(%rbp)
.LBB1_84:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_104
# BB#85:                                # %while.body
                                        #   in Loop: Header=BB1_84 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -212(%rbp)
	movq	-208(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -216(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_87
# BB#86:                                # %cond.true.184
                                        #   in Loop: Header=BB1_84 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB1_88
.LBB1_87:                               # %cond.false.186
                                        #   in Loop: Header=BB1_84 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB1_88
.LBB1_88:                               # %cond.end.187
                                        #   in Loop: Header=BB1_84 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-208(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	je	.LBB1_89
	jmp	.LBB1_124
.LBB1_124:                              # %cond.end.187
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB1_93
	jmp	.LBB1_97
.LBB1_89:                               # %sw.bb
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	-32(%rbp), %eax
	addl	-216(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	jl	.LBB1_91
# BB#90:                                # %lor.lhs.false.193
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	-216(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB1_92
.LBB1_91:                               # %if.then.196
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	$1, -212(%rbp)
.LBB1_92:                               # %if.end.197
                                        #   in Loop: Header=BB1_84 Depth=1
	jmp	.LBB1_98
.LBB1_93:                               # %sw.bb.198
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	-28(%rbp), %eax
	addl	-216(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	jl	.LBB1_95
# BB#94:                                # %lor.lhs.false.202
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	-216(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB1_96
.LBB1_95:                               # %if.then.205
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	$1, -212(%rbp)
.LBB1_96:                               # %if.end.206
                                        #   in Loop: Header=BB1_84 Depth=1
	jmp	.LBB1_98
.LBB1_97:                               # %sw.default
                                        #   in Loop: Header=BB1_84 Depth=1
	jmp	.LBB1_98
.LBB1_98:                               # %sw.epilog
                                        #   in Loop: Header=BB1_84 Depth=1
	cmpl	$0, -212(%rbp)
	je	.LBB1_100
# BB#99:                                # %if.then.208
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	gimp_image_remove_guide
	jmp	.LBB1_103
.LBB1_100:                              # %if.else.209
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	-216(%rbp), %eax
	movq	-208(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_guide_get_position
	movl	-340(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB1_102
# BB#101:                               # %if.then.213
                                        #   in Loop: Header=BB1_84 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-216(%rbp), %edx
	callq	gimp_image_move_guide
.LBB1_102:                              # %if.end.214
                                        #   in Loop: Header=BB1_84 Depth=1
	jmp	.LBB1_103
.LBB1_103:                              # %if.end.215
                                        #   in Loop: Header=BB1_84 Depth=1
	jmp	.LBB1_84
.LBB1_104:                              # %while.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -56(%rbp)
.LBB1_105:                              # %while.cond.217
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_122
# BB#106:                               # %while.body.219
                                        #   in Loop: Header=BB1_105 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movl	$0, -228(%rbp)
	movq	-224(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -232(%rbp)
	movq	-224(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -236(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_108
# BB#107:                               # %cond.true.226
                                        #   in Loop: Header=BB1_105 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB1_109
.LBB1_108:                              # %cond.false.228
                                        #   in Loop: Header=BB1_105 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB1_109
.LBB1_109:                              # %cond.end.229
                                        #   in Loop: Header=BB1_105 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	-32(%rbp), %ecx
	addl	-236(%rbp), %ecx
	movl	%ecx, -236(%rbp)
	movq	-224(%rbp), %rax
	cmpl	$0, 12(%rax)
	jl	.LBB1_111
# BB#110:                               # %lor.lhs.false.235
                                        #   in Loop: Header=BB1_105 Depth=1
	movq	-224(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB1_112
.LBB1_111:                              # %if.then.239
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	$1, -228(%rbp)
.LBB1_112:                              # %if.end.240
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	-28(%rbp), %eax
	addl	-232(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-224(%rbp), %rcx
	cmpl	$0, 8(%rcx)
	jl	.LBB1_114
# BB#113:                               # %lor.lhs.false.245
                                        #   in Loop: Header=BB1_105 Depth=1
	movq	-224(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB1_115
.LBB1_114:                              # %if.then.249
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	$1, -228(%rbp)
.LBB1_115:                              # %if.end.250
                                        #   in Loop: Header=BB1_105 Depth=1
	cmpl	$0, -228(%rbp)
	je	.LBB1_117
# BB#116:                               # %if.then.252
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	gimp_image_remove_sample_point
	jmp	.LBB1_121
.LBB1_117:                              # %if.else.253
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	-232(%rbp), %eax
	movq	-224(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB1_119
# BB#118:                               # %lor.lhs.false.257
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	-236(%rbp), %eax
	movq	-224(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB1_120
.LBB1_119:                              # %if.then.261
                                        #   in Loop: Header=BB1_105 Depth=1
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movl	-232(%rbp), %edx
	movl	-236(%rbp), %ecx
	callq	gimp_image_move_sample_point
.LBB1_120:                              # %if.end.262
                                        #   in Loop: Header=BB1_105 Depth=1
	jmp	.LBB1_121
.LBB1_121:                              # %if.end.263
                                        #   in Loop: Header=BB1_105 Depth=1
	jmp	.LBB1_105
.LBB1_122:                              # %while.end.264
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gimp_image_size_changed_detailed
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
.LBB1_123:                              # %return
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_resize_with_layers, .Lfunc_end1-gimp_image_resize_with_layers
	.cfi_endproc

	.globl	gimp_image_resize_to_layers
	.align	16, 0x90
	.type	gimp_image_resize_to_layers,@function
gimp_image_resize_to_layers:            # @gimp_image_resize_to_layers
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_to_layers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_to_layers, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	cmpq	$0, -64(%rbp)
	je	.LBB2_34
# BB#26:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB2_28
# BB#27:                                # %if.then.49
	movl	$0, -164(%rbp)
	jmp	.LBB2_33
.LBB2_28:                               # %if.else.50
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_31
# BB#29:                                # %land.lhs.true.53
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB2_31
# BB#30:                                # %if.then.57
	movl	$1, -164(%rbp)
	jmp	.LBB2_32
.LBB2_31:                               # %if.else.58
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB2_32:                               # %if.end.60
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.61
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB2_35
.LBB2_34:                               # %if.then.64
	jmp	.LBB2_36
.LBB2_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_resize_to_layers, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_36:                               # %if.end.66
	jmp	.LBB2_37
.LBB2_37:                               # %do.end.67
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_39
# BB#38:                                # %if.then.70
	jmp	.LBB2_50
.LBB2_39:                               # %if.end.71
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_offset_x
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_offset_y
	movl	%eax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -92(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -96(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB2_41
# BB#40:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB2_42
.LBB2_41:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB2_42
.LBB2_42:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB2_43:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB2_49
# BB#44:                                # %for.body
                                        #   in Loop: Header=BB2_43 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	%edi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%edx, -192(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_x
	movq	-80(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	movq	-80(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-80(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-84(%rbp), %rdi
	leaq	-88(%rbp), %r8
	leaq	-92(%rbp), %r9
	leaq	-96(%rbp), %r10
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-188(%rbp), %esi        # 4-byte Reload
	movl	-192(%rbp), %edx        # 4-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	-196(%rbp), %r11d       # 4-byte Reload
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	-200(%rbp), %ebx        # 4-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-204(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-216(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-224(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-232(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_union
# BB#45:                                # %for.inc
                                        #   in Loop: Header=BB2_43 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB2_47
# BB#46:                                # %cond.true.84
                                        #   in Loop: Header=BB2_43 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false.86
                                        #   in Loop: Header=BB2_43 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB2_48
.LBB2_48:                               # %cond.end.87
                                        #   in Loop: Header=BB2_43 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB2_43
.LBB2_49:                               # %for.end
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %ecx
	movl	%eax, %r8d
	subl	-84(%rbp), %r8d
	subl	-88(%rbp), %eax
	movq	-64(%rbp), %r9
	movq	%r9, -248(%rbp)         # 8-byte Spill
	movl	%eax, %r9d
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_resize
.LBB2_50:                               # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_resize_to_layers, .Lfunc_end2-gimp_image_resize_to_layers
	.cfi_endproc

	.globl	gimp_image_resize_to_selection
	.align	16, 0x90
	.type	gimp_image_resize_to_selection,@function
gimp_image_resize_to_selection:         # @gimp_image_resize_to_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-48(%rbp), %rdi
	callq	gimp_channel_bounds
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-60(%rbp), %r10d
	subl	-52(%rbp), %r10d
	movl	-64(%rbp), %r11d
	subl	-56(%rbp), %r11d
	movl	%r9d, %ebx
	subl	-52(%rbp), %ebx
	subl	-56(%rbp), %r9d
	movq	-40(%rbp), %rcx
	movl	%r10d, %edx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%ebx, %r8d
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_resize
.LBB3_3:                                # %return
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_resize_to_selection, .Lfunc_end3-gimp_image_resize_to_selection
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_resize_with_layers,@object # @__func__.gimp_image_resize_with_layers
.L__func__.gimp_image_resize_with_layers:
	.asciz	"gimp_image_resize_with_layers"
	.size	.L__func__.gimp_image_resize_with_layers, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"new_width > 0 && new_height > 0"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.4, 48

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-type\004Resize Image"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"width"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"height"
	.size	.L.str.7, 7

	.type	.L__func__.gimp_image_resize_to_layers,@object # @__func__.gimp_image_resize_to_layers
.L__func__.gimp_image_resize_to_layers:
	.asciz	"gimp_image_resize_to_layers"
	.size	.L__func__.gimp_image_resize_to_layers, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
