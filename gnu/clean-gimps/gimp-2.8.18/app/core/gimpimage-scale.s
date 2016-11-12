	.text
	.file	"gimpimage-scale.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_scale
	.align	16, 0x90
	.type	gimp_image_scale,@function
gimp_image_scale:                       # @gimp_image_scale
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
	subq	$432, %rsp              # imm = 0x1B0
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movl	$0, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_scale, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_84
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB0_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -16(%rbp)
	jle	.LBB0_16
# BB#15:                                # %if.then.15
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_scale, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_84
.LBB0_17:                               # %if.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.18
	jmp	.LBB0_19
.LBB0_19:                               # %do.body.19
	cmpq	$0, -32(%rbp)
	je	.LBB0_28
# BB#20:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_22
# BB#21:                                # %if.then.29
	movl	$0, -156(%rbp)
	jmp	.LBB0_27
.LBB0_22:                               # %if.else.30
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_25
# BB#23:                                # %land.lhs.true.33
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_25
# BB#24:                                # %if.then.37
	movl	$1, -156(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.38
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_26:                               # %if.end.40
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.41
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_29
.LBB0_28:                               # %if.then.44
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_scale, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_84
.LBB0_30:                               # %if.end.46
	jmp	.LBB0_31
.LBB0_31:                               # %do.end.47
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-32(%rbp), %rdi
	callq	gimp_sub_progress_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channel_list
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_list
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_list_length
	movq	-56(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	g_list_length
	movl	-212(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	callq	g_list_length
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	-216(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -108(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%eax, -80(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-80(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-76(%rbp), %eax
	subl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	subl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	%eax, %edx
	callq	gimp_image_undo_push_image_size
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	movq	-56(%rbp), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_32:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_38
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-112(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -112(%rbp)
	movl	-108(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_sub_progress_set_step
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r9d
	movq	-40(%rbp), %rax
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_scale
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_36
# BB#35:                                # %cond.true
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB0_37
.LBB0_36:                               # %cond.false
                                        #   in Loop: Header=BB0_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB0_37
.LBB0_37:                               # %cond.end
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB0_32
.LBB0_38:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_39:                               # %for.cond.75
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_45
# BB#40:                                # %for.body.77
                                        #   in Loop: Header=BB0_39 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-112(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -112(%rbp)
	movl	-108(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_sub_progress_set_step
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r9d
	movq	-40(%rbp), %rax
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_scale
# BB#41:                                # %for.inc.84
                                        #   in Loop: Header=BB0_39 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_43
# BB#42:                                # %cond.true.86
                                        #   in Loop: Header=BB0_39 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_44
.LBB0_43:                               # %cond.false.88
                                        #   in Loop: Header=BB0_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_44
.LBB0_44:                               # %cond.end.89
                                        #   in Loop: Header=BB0_39 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB0_39
.LBB0_45:                               # %for.end.91
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-112(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -112(%rbp)
	movl	-108(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_sub_progress_set_step
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r9d
	movq	-40(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_scale
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_46:                               # %for.cond.98
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_56
# BB#47:                                # %for.body.100
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-112(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -112(%rbp)
	movl	-108(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_sub_progress_set_step
	movq	-184(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB0_49
# BB#48:                                # %if.then.111
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_group_layer_suspend_resize
	jmp	.LBB0_52
.LBB0_49:                               # %if.end.114
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-184(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	gimp_item_scale_by_factors
	cmpl	$0, %eax
	jne	.LBB0_51
# BB#50:                                # %if.then.117
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
.LBB0_51:                               # %if.end.120
                                        #   in Loop: Header=BB0_46 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %for.inc.121
                                        #   in Loop: Header=BB0_46 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_54
# BB#53:                                # %cond.true.123
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB0_55
.LBB0_54:                               # %cond.false.125
                                        #   in Loop: Header=BB0_46 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB0_55
.LBB0_55:                               # %cond.end.126
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB0_46
.LBB0_56:                               # %for.end.128
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_57:                               # %for.cond.129
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_65
# BB#58:                                # %for.body.131
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB0_60
# BB#59:                                # %if.then.135
                                        #   in Loop: Header=BB0_57 Depth=1
	xorl	%esi, %esi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_group_layer_resume_resize
.LBB0_60:                               # %if.end.137
                                        #   in Loop: Header=BB0_57 Depth=1
	jmp	.LBB0_61
.LBB0_61:                               # %for.inc.138
                                        #   in Loop: Header=BB0_57 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_63
# BB#62:                                # %cond.true.140
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB0_64
.LBB0_63:                               # %cond.false.142
                                        #   in Loop: Header=BB0_57 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB0_64
.LBB0_64:                               # %cond.end.143
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB0_57
.LBB0_65:                               # %for.end.145
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -72(%rbp)
.LBB0_66:                               # %for.cond.147
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_76
# BB#67:                                # %for.body.149
                                        #   in Loop: Header=BB0_66 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_position
	movl	%eax, -196(%rbp)
	movq	-192(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	je	.LBB0_68
	jmp	.LBB0_85
.LBB0_85:                               # %for.body.149
                                        #   in Loop: Header=BB0_66 Depth=1
	movl	-380(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	je	.LBB0_69
	jmp	.LBB0_70
.LBB0_68:                               # %sw.bb
                                        #   in Loop: Header=BB0_66 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movl	-196(%rbp), %eax
	imull	-16(%rbp), %eax
	cltd
	idivl	-80(%rbp)
	movl	%eax, %edx
	callq	gimp_image_move_guide
	jmp	.LBB0_71
.LBB0_69:                               # %sw.bb.156
                                        #   in Loop: Header=BB0_66 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movl	-196(%rbp), %eax
	imull	-12(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	movl	%eax, %edx
	callq	gimp_image_move_guide
	jmp	.LBB0_71
.LBB0_70:                               # %sw.default
                                        #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_71
.LBB0_71:                               # %sw.epilog
                                        #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_72
.LBB0_72:                               # %for.inc.159
                                        #   in Loop: Header=BB0_66 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_74
# BB#73:                                # %cond.true.161
                                        #   in Loop: Header=BB0_66 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB0_75
.LBB0_74:                               # %cond.false.163
                                        #   in Loop: Header=BB0_66 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB0_75
.LBB0_75:                               # %cond.end.164
                                        #   in Loop: Header=BB0_66 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB0_66
.LBB0_76:                               # %for.end.166
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -72(%rbp)
.LBB0_77:                               # %for.cond.168
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_83
# BB#78:                                # %for.body.170
                                        #   in Loop: Header=BB0_77 Depth=1
	movl	$1, %r8d
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movq	-208(%rbp), %rax
	movl	8(%rax), %ecx
	imull	-12(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	-76(%rbp)
	movq	-208(%rbp), %r9
	movl	12(%r9), %ecx
	imull	-16(%rbp), %ecx
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-80(%rbp)
	movl	-396(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	gimp_image_move_sample_point
# BB#79:                                # %for.inc.177
                                        #   in Loop: Header=BB0_77 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_81
# BB#80:                                # %cond.true.179
                                        #   in Loop: Header=BB0_77 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB0_82
.LBB0_81:                               # %cond.false.181
                                        #   in Loop: Header=BB0_77 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB0_82
.LBB0_82:                               # %cond.end.182
                                        #   in Loop: Header=BB0_77 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB0_77
.LBB0_83:                               # %for.end.184
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-48(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	g_list_free
	movq	-56(%rbp), %rdi
	callq	g_list_free
	movq	-64(%rbp), %rdi
	callq	g_list_free
	movq	-40(%rbp), %rdi
	callq	g_object_unref
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	subl	-84(%rbp), %ecx
	subl	-88(%rbp), %eax
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -416(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-416(%rbp), %ecx        # 4-byte Reload
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
.LBB0_84:                               # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_scale, .Lfunc_end0-gimp_image_scale
	.cfi_endproc

	.globl	gimp_image_scale_check
	.align	16, 0x90
	.type	gimp_image_scale_check,@function
gimp_image_scale_check:                 # @gimp_image_scale_check
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_scale_check, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB1_47
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_scale_check, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB1_47
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movl	$3, %esi
	movl	$1, %edx
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB1_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -160(%rbp)
	movq	-152(%rbp), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -168(%rbp)
	movq	-152(%rbp), %rdi
	cvttsd2si	-160(%rbp), %esi
	cvttsd2si	-168(%rbp), %edx
	callq	gimp_drawable_estimate_memsize
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rdi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	callq	gimp_drawable_estimate_memsize
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %cond.false
                                        #   in Loop: Header=BB1_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_23:                               # %cond.end
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB1_18
.LBB1_24:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	movq	-16(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-252(%rbp), %edi        # 4-byte Reload
	movl	-256(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_projection_estimate_memsize
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	%eax, %edi
	callq	gimp_projection_estimate_memsize
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
# BB#25:                                # %do.body.59
	movl	gimp_log_flags, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.61
	movl	$128, %edi
	movabsq	$.L__func__.gimp_image_scale_check, %rsi
	movl	$327, %edx              # imm = 0x147
	movabsq	$.L.str.8, %rcx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB1_27:                               # %if.end.62
	jmp	.LBB1_28
.LBB1_28:                               # %do.end.63
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	subq	-96(%rbp), %rax
	subq	-104(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#29:                                # %do.body.75
	movl	gimp_log_flags, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB1_31
# BB#30:                                # %if.then.78
	movl	$128, %edi
	movabsq	$.L__func__.gimp_image_scale_check, %rsi
	movl	$341, %edx              # imm = 0x155
	movabsq	$.L.str.9, %rcx
	movq	-72(%rbp), %rax
	subq	-96(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	-120(%rbp), %r9
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB1_31:                               # %if.end.81
	jmp	.LBB1_32
.LBB1_32:                               # %do.end.82
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB1_35
# BB#33:                                # %land.lhs.true.85
	movq	-120(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB1_35
# BB#34:                                # %if.then.88
	movl	$2, -4(%rbp)
	jmp	.LBB1_47
.LBB1_35:                               # %if.end.89
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB1_36:                               # %for.cond.91
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_46
# BB#37:                                # %for.body.93
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB1_39
# BB#38:                                # %if.then.100
                                        #   in Loop: Header=BB1_36 Depth=1
	jmp	.LBB1_42
.LBB1_39:                               # %if.end.101
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	-176(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_item_check_scaling
	cmpl	$0, %eax
	jne	.LBB1_41
# BB#40:                                # %if.then.104
	movq	-56(%rbp), %rdi
	callq	g_list_free
	movl	$1, -4(%rbp)
	jmp	.LBB1_47
.LBB1_41:                               # %if.end.105
                                        #   in Loop: Header=BB1_36 Depth=1
	jmp	.LBB1_42
.LBB1_42:                               # %for.inc.106
                                        #   in Loop: Header=BB1_36 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_44
# BB#43:                                # %cond.true.108
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB1_45
.LBB1_44:                               # %cond.false.110
                                        #   in Loop: Header=BB1_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB1_45
.LBB1_45:                               # %cond.end.111
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB1_36
.LBB1_46:                               # %for.end.113
	movq	-56(%rbp), %rdi
	callq	g_list_free
	movl	$0, -4(%rbp)
.LBB1_47:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_scale_check, .Lfunc_end1-gimp_image_scale_check
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_scale,@object # @__func__.gimp_image_scale
.L__func__.gimp_image_scale:
	.asciz	"gimp_image_scale"
	.size	.L__func__.gimp_image_scale, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"new_width > 0 && new_height > 0"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Scale Image"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"width"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"height"
	.size	.L.str.6, 7

	.type	.L__func__.gimp_image_scale_check,@object # @__func__.gimp_image_scale_check
.L__func__.gimp_image_scale_check:
	.asciz	"gimp_image_scale_check"
	.size	.L__func__.gimp_image_scale_check, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"new_memsize != NULL"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"scalable_size = %li  scaled_size = %li"
	.size	.L.str.8, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"old_size = %li  new_size = %li"
	.size	.L.str.9, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
