	.text
	.file	"gimpimage-rotate.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_image_rotate
	.align	16, 0x90
	.type	gimp_image_rotate,@function
gimp_image_rotate:                      # @gimp_image_rotate
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
	subq	$352, %rsp              # imm = 0x160
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_rotate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_92
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -148(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -148(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_rotate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_92
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -172(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -172(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_rotate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_92
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -88(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdl	-88(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movq	-8(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_get_layers
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	-236(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	-240(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edi
	movl	%eax, %edx
	leal	1(%rdx,%rdi), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	$80, %eax
	movl	%eax, %esi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$4, %esi
	callq	gimp_image_undo_group_start
	movl	-20(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	je	.LBB0_38
	jmp	.LBB0_93
.LBB0_93:                               # %do.end.67
	movl	-248(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB0_39
	jmp	.LBB0_94
.LBB0_94:                               # %do.end.67
	movl	-248(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jne	.LBB0_40
	jmp	.LBB0_38
.LBB0_38:                               # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -80(%rbp)
	movl	$1, -100(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	$2, %ecx
	subl	-76(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	$2, %ecx
	subl	-80(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -96(%rbp)
	jmp	.LBB0_42
.LBB0_39:                               # %sw.bb.90
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -80(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LBB0_42
.LBB0_40:                               # %sw.default
	jmp	.LBB0_41
.LBB0_41:                               # %do.body.93
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$111, %edx
	movabsq	$.L__func__.gimp_image_rotate, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB0_42:                               # %sw.epilog
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channel_iter
	movq	%rax, -40(%rbp)
.LBB0_43:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_51
# BB#44:                                # %for.body
                                        #   in Loop: Header=BB0_43 Depth=1
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_item_rotate
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_offset
	cmpq	$0, -32(%rbp)
	je	.LBB0_46
# BB#45:                                # %if.then.99
                                        #   in Loop: Header=BB0_43 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
	divsd	-64(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_46:                               # %if.end.101
                                        #   in Loop: Header=BB0_43 Depth=1
	jmp	.LBB0_47
.LBB0_47:                               # %for.inc
                                        #   in Loop: Header=BB0_43 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_49
# BB#48:                                # %cond.true
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB0_50
.LBB0_49:                               # %cond.false
                                        #   in Loop: Header=BB0_43 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB0_50
.LBB0_50:                               # %cond.end
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_43
.LBB0_51:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -40(%rbp)
.LBB0_52:                               # %for.cond.104
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_60
# BB#53:                                # %for.body.106
                                        #   in Loop: Header=BB0_52 Depth=1
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_item_rotate
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_offset
	movq	-192(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	gimp_item_set_size
	movq	-192(%rbp), %rdi
	movl	-76(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	$2, %ecx
	movl	-276(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-80(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	$2, %esi
	movl	-284(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	-280(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_item_translate
	cmpq	$0, -32(%rbp)
	je	.LBB0_55
# BB#54:                                # %if.then.117
                                        #   in Loop: Header=BB0_52 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
	divsd	-64(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_55:                               # %if.end.120
                                        #   in Loop: Header=BB0_52 Depth=1
	jmp	.LBB0_56
.LBB0_56:                               # %for.inc.121
                                        #   in Loop: Header=BB0_52 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_58
# BB#57:                                # %cond.true.123
                                        #   in Loop: Header=BB0_52 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB0_59
.LBB0_58:                               # %cond.false.125
                                        #   in Loop: Header=BB0_52 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB0_59
.LBB0_59:                               # %cond.end.126
                                        #   in Loop: Header=BB0_52 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_52
.LBB0_60:                               # %for.end.128
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_item_rotate
	movq	-200(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_offset
	cmpq	$0, -32(%rbp)
	je	.LBB0_62
# BB#61:                                # %if.then.136
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
	divsd	-64(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_62:                               # %if.end.139
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -40(%rbp)
.LBB0_63:                               # %for.cond.141
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_71
# BB#64:                                # %for.body.143
                                        #   in Loop: Header=BB0_63 Depth=1
	leaq	-212(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	gimp_item_get_offset
	xorl	%ecx, %ecx
	movq	-208(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_item_rotate
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-208(%rbp), %rdx
	movl	-212(%rbp), %ecx
	movl	-216(%rbp), %r8d
	callq	gimp_image_rotate_item_offset
	cmpq	$0, -32(%rbp)
	je	.LBB0_66
# BB#65:                                # %if.then.150
                                        #   in Loop: Header=BB0_63 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
	divsd	-64(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_66:                               # %if.end.153
                                        #   in Loop: Header=BB0_63 Depth=1
	jmp	.LBB0_67
.LBB0_67:                               # %for.inc.154
                                        #   in Loop: Header=BB0_63 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_69
# BB#68:                                # %cond.true.156
                                        #   in Loop: Header=BB0_63 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_70
.LBB0_69:                               # %cond.false.158
                                        #   in Loop: Header=BB0_63 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_70
.LBB0_70:                               # %cond.end.159
                                        #   in Loop: Header=BB0_63 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_63
.LBB0_71:                               # %for.end.161
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_image_rotate_guides
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_image_rotate_sample_points
	cmpl	$0, -100(%rbp)
	je	.LBB0_75
# BB#72:                                # %if.then.163
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_image_undo_push_image_size
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	leaq	-224(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_resolution
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-232(%rbp), %xmm0
	jne	.LBB0_73
	jp	.LBB0_73
	jmp	.LBB0_74
.LBB0_73:                               # %if.then.169
	movq	-8(%rbp), %rdi
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
.LBB0_74:                               # %if.end.170
	jmp	.LBB0_75
.LBB0_75:                               # %if.end.171
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -40(%rbp)
.LBB0_76:                               # %for.cond.173
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_82
# BB#77:                                # %for.body.175
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_image_guide_moved
# BB#78:                                # %for.inc.177
                                        #   in Loop: Header=BB0_76 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_80
# BB#79:                                # %cond.true.179
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_81
.LBB0_80:                               # %cond.false.181
                                        #   in Loop: Header=BB0_76 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_81
.LBB0_81:                               # %cond.end.182
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_76
.LBB0_82:                               # %for.end.184
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -40(%rbp)
.LBB0_83:                               # %for.cond.186
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_89
# BB#84:                                # %for.body.188
                                        #   in Loop: Header=BB0_83 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_image_sample_point_moved
# BB#85:                                # %for.inc.190
                                        #   in Loop: Header=BB0_83 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_87
# BB#86:                                # %cond.true.192
                                        #   in Loop: Header=BB0_83 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_88
.LBB0_87:                               # %cond.false.194
                                        #   in Loop: Header=BB0_83 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_88
.LBB0_88:                               # %cond.end.195
                                        #   in Loop: Header=BB0_83 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_83
.LBB0_89:                               # %for.end.197
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	cmpl	$0, -100(%rbp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
	je	.LBB0_91
# BB#90:                                # %if.then.200
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	subl	-92(%rbp), %ecx
	subl	-96(%rbp), %eax
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -352(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-352(%rbp), %ecx        # 4-byte Reload
	callq	gimp_image_size_changed_detailed
.LBB0_91:                               # %if.end.203
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
.LBB0_92:                               # %return
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_rotate, .Lfunc_end0-gimp_image_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_rotate_item_offset,@function
gimp_image_rotate_item_offset:          # @gimp_image_rotate_item_offset
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_8
.LBB1_8:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_9
.LBB1_9:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_4
.LBB1_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	subl	-32(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_item_get_width
	movl	-56(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb.3
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	subl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	movl	-60(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %sw.bb.8
	jmp	.LBB1_7
.LBB1_4:                                # %sw.epilog
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-28(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, -40(%rbp)
	je	.LBB1_7
.LBB1_6:                                # %if.then
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_item_translate
.LBB1_7:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_rotate_item_offset, .Lfunc_end1-gimp_image_rotate_item_offset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_rotate_guides,@function
gimp_image_rotate_guides:               # @gimp_image_rotate_guides
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -24(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB2_3
	jmp	.LBB2_24
.LBB2_24:                               # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB2_8
	jmp	.LBB2_25
.LBB2_25:                               # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB2_13
	jmp	.LBB2_18
.LBB2_3:                                # %sw.bb
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB2_4
	jmp	.LBB2_28
.LBB2_28:                               # %sw.bb
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB2_5
	jmp	.LBB2_6
.LBB2_4:                                # %sw.bb.3
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_push_guide
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_guide_set_orientation
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_height
	subl	-40(%rbp), %eax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_guide_set_position
	jmp	.LBB2_7
.LBB2_5:                                # %sw.bb.6
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_push_guide
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_guide_set_orientation
	jmp	.LBB2_7
.LBB2_6:                                # %sw.default
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                # %sw.epilog
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_18
.LBB2_8:                                # %sw.bb.8
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB2_9
	jmp	.LBB2_27
.LBB2_27:                               # %sw.bb.8
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB2_10
	jmp	.LBB2_11
.LBB2_9:                                # %sw.bb.9
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %ecx
	subl	-40(%rbp), %eax
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_move_guide
	jmp	.LBB2_12
.LBB2_10:                               # %sw.bb.12
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movl	$1, %ecx
	subl	-40(%rbp), %eax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_move_guide
	jmp	.LBB2_12
.LBB2_11:                               # %sw.default.15
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               # %sw.epilog.16
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_18
.LBB2_13:                               # %sw.bb.17
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB2_14
	jmp	.LBB2_26
.LBB2_26:                               # %sw.bb.17
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB2_15
	jmp	.LBB2_16
.LBB2_14:                               # %sw.bb.18
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_push_guide
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_guide_set_orientation
	jmp	.LBB2_17
.LBB2_15:                               # %sw.bb.20
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_push_guide
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_guide_set_orientation
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	subl	-40(%rbp), %eax
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_guide_set_position
	jmp	.LBB2_17
.LBB2_16:                               # %sw.default.24
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_17
.LBB2_17:                               # %sw.epilog.25
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_18
.LBB2_18:                               # %sw.epilog.26
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_19
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_22:                               # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_23:                               # %for.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_rotate_guides, .Lfunc_end2-gimp_image_rotate_guides
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_rotate_sample_points,@function
gimp_image_rotate_sample_points:        # @gimp_image_rotate_sample_points
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -24(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB3_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdx
	callq	gimp_image_undo_push_sample_point
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -40(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB3_3
	jmp	.LBB3_12
.LBB3_12:                               # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB3_4
	jmp	.LBB3_13
.LBB3_13:                               # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB3_5
	jmp	.LBB3_6
.LBB3_3:                                # %sw.bb
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	subl	-40(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB3_6
.LBB3_4:                                # %sw.bb.5
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	subl	-36(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	subl	-40(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB3_6
.LBB3_5:                                # %sw.bb.12
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	subl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB3_6:                                # %sw.epilog
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB3_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_10
.LBB3_10:                               # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB3_1
.LBB3_11:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_rotate_sample_points, .Lfunc_end3-gimp_image_rotate_sample_points
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_rotate,@object # @__func__.gimp_image_rotate
.L__func__.gimp_image_rotate:
	.asciz	"gimp_image_rotate"
	.size	.L__func__.gimp_image_rotate, 18

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
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpimage-rotate.c"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"width"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"height"
	.size	.L.str.6, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
