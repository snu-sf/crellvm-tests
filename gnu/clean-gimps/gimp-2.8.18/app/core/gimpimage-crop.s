	.text
	.file	"gimpimage-crop.bc"
	.globl	gimp_image_crop
	.align	16, 0x90
	.type	gimp_image_crop,@function
gimp_image_crop:                        # @gimp_image_crop
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
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_131
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_131
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpl	$0, -36(%rbp)
	je	.LBB0_27
# BB#26:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_layer
	cmpq	$0, %rax
	je	.LBB0_28
.LBB0_27:                               # %if.then.43
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_131
.LBB0_29:                               # %if.end.45
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.46
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$1, -44(%rbp)
	jl	.LBB0_32
# BB#31:                                # %lor.lhs.false.51
	cmpl	$1, -48(%rbp)
	jge	.LBB0_33
.LBB0_32:                               # %if.then.53
	jmp	.LBB0_131
.LBB0_33:                               # %if.end.54
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	cmpl	$0, -36(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.56
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-20(%rbp), %ecx
	movl	-116(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -116(%rbp)
	movl	-24(%rbp), %ecx
	movl	-120(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_resize
	jmp	.LBB0_130
.LBB0_35:                               # %if.else.67
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	cmpl	$0, -40(%rbp)
	je	.LBB0_37
# BB#36:                                # %if.then.71
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$5, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB0_38
.LBB0_37:                               # %if.else.74
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$2, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_38:                               # %if.end.77
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	callq	gimp_image_undo_push_image_size
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %r8d
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channel_iter
	movq	%rax, -128(%rbp)
.LBB0_39:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_45
# BB#40:                                # %for.body
                                        #   in Loop: Header=BB0_39 Depth=1
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -136(%rbp)
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	%eax, %r8d
	subl	-20(%rbp), %r8d
	subl	-24(%rbp), %eax
	movl	%eax, %r9d
	callq	gimp_item_resize
# BB#41:                                # %for.inc
                                        #   in Loop: Header=BB0_39 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_43
# BB#42:                                # %cond.true
                                        #   in Loop: Header=BB0_39 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB0_44
.LBB0_43:                               # %cond.false
                                        #   in Loop: Header=BB0_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB0_44
.LBB0_44:                               # %cond.end
                                        #   in Loop: Header=BB0_39 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB0_39
.LBB0_45:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -128(%rbp)
.LBB0_46:                               # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_52
# BB#47:                                # %for.body.88
                                        #   in Loop: Header=BB0_46 Depth=1
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	%eax, %r8d
	subl	-20(%rbp), %r8d
	subl	-24(%rbp), %eax
	movl	%eax, %r9d
	callq	gimp_item_resize
# BB#48:                                # %for.inc.94
                                        #   in Loop: Header=BB0_46 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_50
# BB#49:                                # %cond.true.96
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
.LBB0_50:                               # %cond.false.98
                                        #   in Loop: Header=BB0_46 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
.LBB0_51:                               # %cond.end.99
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB0_46
.LBB0_52:                               # %for.end.101
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %r8d
	movl	%ecx, %r9d
	subl	-20(%rbp), %r9d
	subl	-24(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-300(%rbp), %r9d        # 4-byte Reload
	callq	gimp_item_resize
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -128(%rbp)
.LBB0_53:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_88
# BB#54:                                # %while.body
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB0_56
# BB#55:                                # %cond.true.113
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB0_57
.LBB0_56:                               # %cond.false.115
                                        #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB0_57
.LBB0_57:                               # %cond.end.116
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rdi
	movl	%edx, %esi
	subl	-20(%rbp), %esi
	subl	-24(%rbp), %edx
	callq	gimp_item_translate
	cmpl	$0, -40(%rbp)
	je	.LBB0_87
# BB#58:                                # %if.then.121
                                        #   in Loop: Header=BB0_53 Depth=1
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-156(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-316(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_60
# BB#59:                                # %cond.true.132
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB0_64
.LBB0_60:                               # %cond.false.134
                                        #   in Loop: Header=BB0_53 Depth=1
	cmpl	$0, -156(%rbp)
	jge	.LBB0_62
# BB#61:                                # %cond.true.136
                                        #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB0_63
.LBB0_62:                               # %cond.false.137
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB0_63:                               # %cond.end.138
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB0_64:                               # %cond.end.140
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)
	movl	-160(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-328(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_66
# BB#65:                                # %cond.true.144
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB0_70
.LBB0_66:                               # %cond.false.146
                                        #   in Loop: Header=BB0_53 Depth=1
	cmpl	$0, -160(%rbp)
	jge	.LBB0_68
# BB#67:                                # %cond.true.148
                                        #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB0_69
.LBB0_68:                               # %cond.false.149
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB0_69:                               # %cond.end.150
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB0_70:                               # %cond.end.152
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_width
	addl	-156(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-340(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_72
# BB#71:                                # %cond.true.157
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB0_76
.LBB0_72:                               # %cond.false.159
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_width
	addl	-156(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_74
# BB#73:                                # %cond.true.163
                                        #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB0_75
.LBB0_74:                               # %cond.false.164
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_width
	addl	-156(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB0_75:                               # %cond.end.167
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB0_76:                               # %cond.end.169
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_height
	addl	-160(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-352(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB0_78
# BB#77:                                # %cond.true.175
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB0_82
.LBB0_78:                               # %cond.false.177
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_height
	addl	-160(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_80
# BB#79:                                # %cond.true.181
                                        #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB0_81
.LBB0_80:                               # %cond.false.182
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_height
	addl	-160(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB0_81:                               # %cond.end.185
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB0_82:                               # %cond.end.187
                                        #   in Loop: Header=BB0_53 Depth=1
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	-172(%rbp), %eax
	subl	-164(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-176(%rbp), %eax
	subl	-168(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB0_85
# BB#83:                                # %land.lhs.true.192
                                        #   in Loop: Header=BB0_53 Depth=1
	cmpl	$0, -48(%rbp)
	jle	.LBB0_85
# BB#84:                                # %if.then.194
                                        #   in Loop: Header=BB0_53 Depth=1
	xorl	%eax, %eax
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-164(%rbp), %r8d
	subl	-156(%rbp), %r8d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	movl	-168(%rbp), %r8d
	subl	-160(%rbp), %r8d
	subl	%r8d, %eax
	movl	%r9d, %r8d
	movl	%eax, %r9d
	callq	gimp_item_resize
	jmp	.LBB0_86
.LBB0_85:                               # %if.else.199
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	-8(%rbp), %rdi
	movq	-152(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
.LBB0_86:                               # %if.end.202
                                        #   in Loop: Header=BB0_53 Depth=1
	jmp	.LBB0_87
.LBB0_87:                               # %if.end.203
                                        #   in Loop: Header=BB0_53 Depth=1
	jmp	.LBB0_53
.LBB0_88:                               # %while.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -128(%rbp)
.LBB0_89:                               # %while.cond.205
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_111
# BB#90:                                # %while.body.207
                                        #   in Loop: Header=BB0_89 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -188(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -192(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB0_92
# BB#91:                                # %cond.true.214
                                        #   in Loop: Header=BB0_89 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB0_93
.LBB0_92:                               # %cond.false.216
                                        #   in Loop: Header=BB0_89 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB0_93
.LBB0_93:                               # %cond.end.217
                                        #   in Loop: Header=BB0_89 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	je	.LBB0_94
	jmp	.LBB0_132
.LBB0_132:                              # %cond.end.217
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-388(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	je	.LBB0_99
	jmp	.LBB0_104
.LBB0_94:                               # %sw.bb
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-192(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB0_96
# BB#95:                                # %lor.lhs.false.221
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-192(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB0_97
.LBB0_96:                               # %if.then.223
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	$1, -188(%rbp)
	jmp	.LBB0_98
.LBB0_97:                               # %if.else.224
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-24(%rbp), %eax
	movl	-192(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -192(%rbp)
.LBB0_98:                               # %if.end.226
                                        #   in Loop: Header=BB0_89 Depth=1
	jmp	.LBB0_105
.LBB0_99:                               # %sw.bb.227
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-192(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_101
# BB#100:                               # %lor.lhs.false.229
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-192(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB0_102
.LBB0_101:                              # %if.then.231
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	$1, -188(%rbp)
	jmp	.LBB0_103
.LBB0_102:                              # %if.else.232
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-20(%rbp), %eax
	movl	-192(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -192(%rbp)
.LBB0_103:                              # %if.end.234
                                        #   in Loop: Header=BB0_89 Depth=1
	jmp	.LBB0_105
.LBB0_104:                              # %sw.default
                                        #   in Loop: Header=BB0_89 Depth=1
	jmp	.LBB0_105
.LBB0_105:                              # %sw.epilog
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	$0, -188(%rbp)
	je	.LBB0_107
# BB#106:                               # %if.then.236
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	gimp_image_remove_guide
	jmp	.LBB0_110
.LBB0_107:                              # %if.else.237
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	-192(%rbp), %eax
	movq	-184(%rbp), %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gimp_guide_get_position
	movl	-396(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB0_109
# BB#108:                               # %if.then.240
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-192(%rbp), %edx
	callq	gimp_image_move_guide
.LBB0_109:                              # %if.end.241
                                        #   in Loop: Header=BB0_89 Depth=1
	jmp	.LBB0_110
.LBB0_110:                              # %if.end.242
                                        #   in Loop: Header=BB0_89 Depth=1
	jmp	.LBB0_89
.LBB0_111:                              # %while.end.243
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -128(%rbp)
.LBB0_112:                              # %while.cond.245
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_129
# BB#113:                               # %while.body.247
                                        #   in Loop: Header=BB0_112 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	$0, -204(%rbp)
	movq	-200(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -208(%rbp)
	movq	-200(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -212(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB0_115
# BB#114:                               # %cond.true.254
                                        #   in Loop: Header=BB0_112 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB0_116
.LBB0_115:                              # %cond.false.256
                                        #   in Loop: Header=BB0_112 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB0_116
.LBB0_116:                              # %cond.end.257
                                        #   in Loop: Header=BB0_112 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movl	-24(%rbp), %ecx
	movl	-212(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -212(%rbp)
	movq	-200(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jl	.LBB0_118
# BB#117:                               # %lor.lhs.false.262
                                        #   in Loop: Header=BB0_112 Depth=1
	movq	-200(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jle	.LBB0_119
.LBB0_118:                              # %if.then.265
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	$1, -204(%rbp)
.LBB0_119:                              # %if.end.266
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	-20(%rbp), %eax
	movl	-208(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -208(%rbp)
	movq	-200(%rbp), %rdx
	movl	8(%rdx), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_121
# BB#120:                               # %lor.lhs.false.270
                                        #   in Loop: Header=BB0_112 Depth=1
	movq	-200(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB0_122
.LBB0_121:                              # %if.then.273
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	$1, -204(%rbp)
.LBB0_122:                              # %if.end.274
                                        #   in Loop: Header=BB0_112 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_124
# BB#123:                               # %if.then.276
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	gimp_image_remove_sample_point
	jmp	.LBB0_128
.LBB0_124:                              # %if.else.277
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	-208(%rbp), %eax
	movq	-200(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB0_126
# BB#125:                               # %lor.lhs.false.280
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	-212(%rbp), %eax
	movq	-200(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB0_127
.LBB0_126:                              # %if.then.283
                                        #   in Loop: Header=BB0_112 Depth=1
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-208(%rbp), %edx
	movl	-212(%rbp), %ecx
	callq	gimp_image_move_sample_point
.LBB0_127:                              # %if.end.284
                                        #   in Loop: Header=BB0_112 Depth=1
	jmp	.LBB0_128
.LBB0_128:                              # %if.end.285
                                        #   in Loop: Header=BB0_112 Depth=1
	jmp	.LBB0_112
.LBB0_129:                              # %while.end.286
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%edx, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-424(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_invalidate
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	subl	-20(%rbp), %ecx
	subl	-24(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-428(%rbp), %ecx        # 4-byte Reload
	callq	gimp_image_size_changed_detailed
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB0_130:                              # %if.end.293
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
.LBB0_131:                              # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_crop, .Lfunc_end0-gimp_image_crop
	.cfi_endproc

	.globl	gimp_image_crop_auto_shrink
	.align	16, 0x90
	.type	gimp_image_crop_auto_shrink,@function
gimp_image_crop_auto_shrink:            # @gimp_image_crop_auto_shrink
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	xorl	%r14d, %r14d
	movl	$4, %r15d
	movl	%r15d, %r12d
	leaq	-140(%rbp), %r13
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	%r13, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	memset
	movq	$0, -216(%rbp)
	movl	$0, -248(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop_auto_shrink, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB1_120
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.2
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -264(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.3
	movl	$0, -268(%rbp)
	jmp	.LBB1_13
.LBB1_8:                                # %if.else.4
	movq	-256(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-264(%rbp), %rax
	jne	.LBB1_11
# BB#10:                                # %if.then.8
	movl	$1, -268(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.9
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -268(%rbp)
.LBB1_12:                               # %if.end.11
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.12
	movl	-268(%rbp), %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -272(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.14
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop_auto_shrink, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB1_120
.LBB1_16:                               # %if.end.16
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.17
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.18
	cmpq	$0, -88(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.20
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop_auto_shrink, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB1_120
.LBB1_21:                               # %if.end.22
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.23
	jmp	.LBB1_23
.LBB1_23:                               # %do.body.24
	cmpq	$0, -96(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.26
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.27
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop_auto_shrink, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB1_120
.LBB1_26:                               # %if.end.28
	jmp	.LBB1_27
.LBB1_27:                               # %do.end.29
	jmp	.LBB1_28
.LBB1_28:                               # %do.body.30
	cmpq	$0, -104(%rbp)
	je	.LBB1_30
# BB#29:                                # %if.then.32
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.33
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop_auto_shrink, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB1_120
.LBB1_31:                               # %if.end.34
	jmp	.LBB1_32
.LBB1_32:                               # %do.end.35
	jmp	.LBB1_33
.LBB1_33:                               # %do.body.36
	cmpq	$0, -112(%rbp)
	je	.LBB1_35
# BB#34:                                # %if.then.38
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.39
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_crop_auto_shrink, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -44(%rbp)
	jmp	.LBB1_120
.LBB1_36:                               # %if.end.40
	jmp	.LBB1_37
.LBB1_37:                               # %do.end.41
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	cmpl	$0, -76(%rbp)
	je	.LBB1_41
# BB#38:                                # %if.then.43
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB1_40
# BB#39:                                # %if.then.46
	jmp	.LBB1_119
.LBB1_40:                               # %if.end.47
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.50
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
.LBB1_42:                               # %if.end.54
	movq	-128(%rbp), %rdi
	callq	gimp_pickable_flush
	movq	-128(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -228(%rbp)
	cmpl	$1, -228(%rbp)
	jne	.LBB1_44
# BB#43:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB1_57
.LBB1_44:                               # %cond.false
	cmpl	$0, -228(%rbp)
	jne	.LBB1_46
# BB#45:                                # %cond.true.58
	movl	$3, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB1_56
.LBB1_46:                               # %cond.false.59
	cmpl	$3, -228(%rbp)
	jne	.LBB1_48
# BB#47:                                # %cond.true.61
	movl	$2, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB1_55
.LBB1_48:                               # %cond.false.62
	cmpl	$2, -228(%rbp)
	jne	.LBB1_50
# BB#49:                                # %cond.true.64
	movl	$1, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB1_54
.LBB1_50:                               # %cond.false.65
	cmpl	$5, -228(%rbp)
	jne	.LBB1_52
# BB#51:                                # %cond.true.67
	movl	$2, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB1_53
.LBB1_52:                               # %cond.false.68
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -228(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB1_53:                               # %cond.end
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB1_54:                               # %cond.end.71
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB1_55:                               # %cond.end.73
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB1_56:                               # %cond.end.75
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB1_57:                               # %cond.end.77
	movl	-292(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -232(%rbp)
	cmpl	$1, -228(%rbp)
	movb	%cl, -309(%rbp)         # 1-byte Spill
	je	.LBB1_60
# BB#58:                                # %lor.lhs.false
	movb	$1, %al
	cmpl	$3, -228(%rbp)
	movb	%al, -309(%rbp)         # 1-byte Spill
	je	.LBB1_60
# BB#59:                                # %lor.rhs
	cmpl	$5, -228(%rbp)
	sete	%al
	movb	%al, -309(%rbp)         # 1-byte Spill
.LBB1_60:                               # %lor.end
	movb	-309(%rbp), %al         # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, -144(%rbp)
	movq	-128(%rbp), %rdi
	movl	-232(%rbp), %esi
	movl	-60(%rbp), %r8d
	movl	-68(%rbp), %edx
	decl	%edx
	movl	-64(%rbp), %r9d
	movl	-72(%rbp), %r10d
	decl	%r10d
	movq	%rsp, %r11
	movl	%r10d, 8(%r11)
	movl	%r9d, (%r11)
	leaq	-140(%rbp), %r11
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%r11, %rcx
	movl	-316(%rbp), %r9d        # 4-byte Reload
	callq	gimp_image_crop_guess_bgcolor
	movl	%eax, %edx
	subl	$1, %eax
	movl	%edx, -320(%rbp)        # 4-byte Spill
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB1_61
	jmp	.LBB1_121
.LBB1_121:                              # %lor.end
	movl	-320(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	je	.LBB1_62
	jmp	.LBB1_63
.LBB1_61:                               # %sw.bb
	movabsq	$gimp_image_crop_colors_alpha, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB1_64
.LBB1_62:                               # %sw.bb.84
	movabsq	$gimp_image_crop_colors_equal, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB1_64
.LBB1_63:                               # %sw.default
	jmp	.LBB1_119
.LBB1_64:                               # %sw.epilog
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -224(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	leaq	-208(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-220(%rbp), %r8d
	movl	-224(%rbp), %r9d
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-332(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	-220(%rbp), %ecx
	cmpl	-224(%rbp), %ecx
	jle	.LBB1_66
# BB#65:                                # %cond.true.89
	movl	-220(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB1_67
.LBB1_66:                               # %cond.false.90
	movl	-224(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB1_67:                               # %cond.end.91
	movl	-340(%rbp), %eax        # 4-byte Reload
	imull	-232(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -216(%rbp)
	movl	$0, -244(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -240(%rbp)
.LBB1_68:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_72 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-240(%rbp), %eax
	cmpl	-72(%rbp), %eax
	movb	%cl, -341(%rbp)         # 1-byte Spill
	jge	.LBB1_70
# BB#69:                                # %land.rhs
                                        #   in Loop: Header=BB1_68 Depth=1
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -341(%rbp)         # 1-byte Spill
.LBB1_70:                               # %land.end
                                        #   in Loop: Header=BB1_68 Depth=1
	movb	-341(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_71
	jmp	.LBB1_79
.LBB1_71:                               # %for.body
                                        #   in Loop: Header=BB1_68 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-60(%rbp), %esi
	movl	-240(%rbp), %edx
	movl	-220(%rbp), %ecx
	movq	-216(%rbp), %r8
	callq	pixel_region_get_row
	movl	$0, -236(%rbp)
.LBB1_72:                               # %for.cond.97
                                        #   Parent Loop BB1_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-236(%rbp), %eax
	cmpl	-220(%rbp), %eax
	movb	%cl, -342(%rbp)         # 1-byte Spill
	jge	.LBB1_74
# BB#73:                                # %land.rhs.100
                                        #   in Loop: Header=BB1_72 Depth=2
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -342(%rbp)         # 1-byte Spill
.LBB1_74:                               # %land.end.103
                                        #   in Loop: Header=BB1_72 Depth=2
	movb	-342(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_75
	jmp	.LBB1_77
.LBB1_75:                               # %for.body.104
                                        #   in Loop: Header=BB1_72 Depth=2
	leaq	-140(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	-236(%rbp), %edx
	imull	-232(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movl	-232(%rbp), %edx
	movq	%rcx, %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -244(%rbp)
# BB#76:                                # %for.inc
                                        #   in Loop: Header=BB1_72 Depth=2
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB1_72
.LBB1_77:                               # %for.end
                                        #   in Loop: Header=BB1_68 Depth=1
	jmp	.LBB1_78
.LBB1_78:                               # %for.inc.110
                                        #   in Loop: Header=BB1_68 Depth=1
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB1_68
.LBB1_79:                               # %for.end.112
	movl	-240(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB1_82
# BB#80:                                # %land.lhs.true.115
	cmpl	$0, -244(%rbp)
	jne	.LBB1_82
# BB#81:                                # %if.then.117
	jmp	.LBB1_119
.LBB1_82:                               # %if.end.118
	movl	-240(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	$0, -244(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -240(%rbp)
.LBB1_83:                               # %for.cond.120
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_87 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-240(%rbp), %eax
	cmpl	-64(%rbp), %eax
	movb	%cl, -343(%rbp)         # 1-byte Spill
	jle	.LBB1_85
# BB#84:                                # %land.rhs.123
                                        #   in Loop: Header=BB1_83 Depth=1
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -343(%rbp)         # 1-byte Spill
.LBB1_85:                               # %land.end.127
                                        #   in Loop: Header=BB1_83 Depth=1
	movb	-343(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_86
	jmp	.LBB1_94
.LBB1_86:                               # %for.body.128
                                        #   in Loop: Header=BB1_83 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-60(%rbp), %esi
	movl	-240(%rbp), %eax
	subl	$1, %eax
	movl	-220(%rbp), %ecx
	movq	-216(%rbp), %r8
	movl	%eax, %edx
	callq	pixel_region_get_row
	movl	$0, -236(%rbp)
.LBB1_87:                               # %for.cond.130
                                        #   Parent Loop BB1_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-236(%rbp), %eax
	cmpl	-220(%rbp), %eax
	movb	%cl, -344(%rbp)         # 1-byte Spill
	jge	.LBB1_89
# BB#88:                                # %land.rhs.133
                                        #   in Loop: Header=BB1_87 Depth=2
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -344(%rbp)         # 1-byte Spill
.LBB1_89:                               # %land.end.137
                                        #   in Loop: Header=BB1_87 Depth=2
	movb	-344(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_90
	jmp	.LBB1_92
.LBB1_90:                               # %for.body.138
                                        #   in Loop: Header=BB1_87 Depth=2
	leaq	-140(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	-236(%rbp), %edx
	imull	-232(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movl	-232(%rbp), %edx
	movq	%rcx, %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -244(%rbp)
# BB#91:                                # %for.inc.147
                                        #   in Loop: Header=BB1_87 Depth=2
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB1_87
.LBB1_92:                               # %for.end.149
                                        #   in Loop: Header=BB1_83 Depth=1
	jmp	.LBB1_93
.LBB1_93:                               # %for.inc.150
                                        #   in Loop: Header=BB1_83 Depth=1
	movl	-240(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB1_83
.LBB1_94:                               # %for.end.151
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	$0, -244(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -236(%rbp)
.LBB1_95:                               # %for.cond.153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_99 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-236(%rbp), %eax
	cmpl	-68(%rbp), %eax
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jge	.LBB1_97
# BB#96:                                # %land.rhs.156
                                        #   in Loop: Header=BB1_95 Depth=1
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -345(%rbp)         # 1-byte Spill
.LBB1_97:                               # %land.end.160
                                        #   in Loop: Header=BB1_95 Depth=1
	movb	-345(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_98
	jmp	.LBB1_106
.LBB1_98:                               # %for.body.161
                                        #   in Loop: Header=BB1_95 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-236(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-224(%rbp), %ecx
	movq	-216(%rbp), %r8
	callq	pixel_region_get_col
	movl	$0, -240(%rbp)
.LBB1_99:                               # %for.cond.162
                                        #   Parent Loop BB1_95 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-240(%rbp), %eax
	cmpl	-224(%rbp), %eax
	movb	%cl, -346(%rbp)         # 1-byte Spill
	jge	.LBB1_101
# BB#100:                               # %land.rhs.165
                                        #   in Loop: Header=BB1_99 Depth=2
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -346(%rbp)         # 1-byte Spill
.LBB1_101:                              # %land.end.169
                                        #   in Loop: Header=BB1_99 Depth=2
	movb	-346(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_102
	jmp	.LBB1_104
.LBB1_102:                              # %for.body.170
                                        #   in Loop: Header=BB1_99 Depth=2
	leaq	-140(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	-240(%rbp), %edx
	imull	-232(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movl	-232(%rbp), %edx
	movq	%rcx, %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -244(%rbp)
# BB#103:                               # %for.inc.179
                                        #   in Loop: Header=BB1_99 Depth=2
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB1_99
.LBB1_104:                              # %for.end.181
                                        #   in Loop: Header=BB1_95 Depth=1
	jmp	.LBB1_105
.LBB1_105:                              # %for.inc.182
                                        #   in Loop: Header=BB1_95 Depth=1
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB1_95
.LBB1_106:                              # %for.end.184
	movl	-236(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -244(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -236(%rbp)
.LBB1_107:                              # %for.cond.186
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_111 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-236(%rbp), %eax
	cmpl	-60(%rbp), %eax
	movb	%cl, -347(%rbp)         # 1-byte Spill
	jle	.LBB1_109
# BB#108:                               # %land.rhs.189
                                        #   in Loop: Header=BB1_107 Depth=1
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -347(%rbp)         # 1-byte Spill
.LBB1_109:                              # %land.end.193
                                        #   in Loop: Header=BB1_107 Depth=1
	movb	-347(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_110
	jmp	.LBB1_118
.LBB1_110:                              # %for.body.194
                                        #   in Loop: Header=BB1_107 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-236(%rbp), %eax
	subl	$1, %eax
	movl	-64(%rbp), %edx
	movl	-224(%rbp), %ecx
	movq	-216(%rbp), %r8
	movl	%eax, %esi
	callq	pixel_region_get_col
	movl	$0, -240(%rbp)
.LBB1_111:                              # %for.cond.196
                                        #   Parent Loop BB1_107 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-240(%rbp), %eax
	cmpl	-224(%rbp), %eax
	movb	%cl, -348(%rbp)         # 1-byte Spill
	jge	.LBB1_113
# BB#112:                               # %land.rhs.199
                                        #   in Loop: Header=BB1_111 Depth=2
	cmpl	$0, -244(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -348(%rbp)         # 1-byte Spill
.LBB1_113:                              # %land.end.203
                                        #   in Loop: Header=BB1_111 Depth=2
	movb	-348(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_114
	jmp	.LBB1_116
.LBB1_114:                              # %for.body.204
                                        #   in Loop: Header=BB1_111 Depth=2
	leaq	-140(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	-216(%rbp), %rcx
	movl	-240(%rbp), %edx
	imull	-232(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movl	-232(%rbp), %edx
	movq	%rcx, %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -244(%rbp)
# BB#115:                               # %for.inc.213
                                        #   in Loop: Header=BB1_111 Depth=2
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB1_111
.LBB1_116:                              # %for.end.215
                                        #   in Loop: Header=BB1_107 Depth=1
	jmp	.LBB1_117
.LBB1_117:                              # %for.inc.216
                                        #   in Loop: Header=BB1_107 Depth=1
	movl	-236(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB1_107
.LBB1_118:                              # %for.end.218
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-68(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-72(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -248(%rbp)
.LBB1_119:                              # %FINISH
	movq	-216(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_unset_busy
	movl	-248(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB1_120:                              # %return
	movl	-44(%rbp), %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_crop_auto_shrink, .Lfunc_end1-gimp_image_crop_auto_shrink
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_crop_guess_bgcolor,@function
gimp_image_crop_guess_bgcolor:          # @gimp_image_crop_guess_bgcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	je	.LBB2_8
# BB#5:                                 # %lor.lhs.false
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	je	.LBB2_8
# BB#6:                                 # %lor.lhs.false.4
	leaq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %lor.lhs.false.8
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	jne	.LBB2_9
.LBB2_8:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_27
.LBB2_9:                                # %if.end
	cmpl	$0, -24(%rbp)
	je	.LBB2_20
# BB#10:                                # %if.then.13
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	movslq	-72(%rbp), %rcx
	movzbl	-52(%rbp,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB2_12
# BB#11:                                # %land.lhs.true
	movslq	-72(%rbp), %rax
	movzbl	-56(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_18
.LBB2_12:                               # %lor.lhs.false.23
	movslq	-72(%rbp), %rax
	movzbl	-52(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_14
# BB#13:                                # %land.lhs.true.29
	movslq	-72(%rbp), %rax
	movzbl	-60(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_18
.LBB2_14:                               # %lor.lhs.false.35
	movslq	-72(%rbp), %rax
	movzbl	-56(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_16
# BB#15:                                # %land.lhs.true.41
	movslq	-72(%rbp), %rax
	movzbl	-64(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_18
.LBB2_16:                               # %lor.lhs.false.47
	movslq	-72(%rbp), %rax
	movzbl	-60(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_19
# BB#17:                                # %land.lhs.true.53
	movslq	-72(%rbp), %rax
	movzbl	-64(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_19
.LBB2_18:                               # %if.then.59
	movl	$1, -4(%rbp)
	jmp	.LBB2_27
.LBB2_19:                               # %if.end.60
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.61
	leaq	-56(%rbp), %rsi
	leaq	-52(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	gimp_image_crop_colors_equal
	cmpl	$0, %eax
	jne	.LBB2_22
# BB#21:                                # %lor.lhs.false.66
	leaq	-60(%rbp), %rsi
	leaq	-52(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	gimp_image_crop_colors_equal
	cmpl	$0, %eax
	je	.LBB2_23
.LBB2_22:                               # %if.then.71
	leaq	-52(%rbp), %rax
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$2, -4(%rbp)
	jmp	.LBB2_27
.LBB2_23:                               # %if.end.73
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	gimp_image_crop_colors_equal
	cmpl	$0, %eax
	jne	.LBB2_25
# BB#24:                                # %lor.lhs.false.78
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	gimp_image_crop_colors_equal
	cmpl	$0, %eax
	je	.LBB2_26
.LBB2_25:                               # %if.then.83
	leaq	-64(%rbp), %rax
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$2, -4(%rbp)
	jmp	.LBB2_27
.LBB2_26:                               # %if.end.85
	movl	$0, -4(%rbp)
.LBB2_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_crop_guess_bgcolor, .Lfunc_end2-gimp_image_crop_guess_bgcolor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_crop_colors_alpha,@function
gimp_image_crop_colors_alpha:           # @gimp_image_crop_colors_alpha
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$0, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_crop_colors_alpha, .Lfunc_end3-gimp_image_crop_colors_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_crop_colors_equal,@function
gimp_image_crop_colors_equal:           # @gimp_image_crop_colors_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_7
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	movl	$1, -4(%rbp)
.LBB4_7:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_crop_colors_equal, .Lfunc_end4-gimp_image_crop_colors_equal
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_crop,@object # @__func__.gimp_image_crop
.L__func__.gimp_image_crop:
	.asciz	"gimp_image_crop"
	.size	.L__func__.gimp_image_crop, 16

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
	.asciz	"active_layer_only == FALSE || gimp_image_get_active_layer (image)"
	.size	.L.str.3, 66

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Crop Image"
	.size	.L.str.4, 21

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

	.type	.L__func__.gimp_image_crop_auto_shrink,@object # @__func__.gimp_image_crop_auto_shrink
.L__func__.gimp_image_crop_auto_shrink:
	.asciz	"gimp_image_crop_auto_shrink"
	.size	.L__func__.gimp_image_crop_auto_shrink, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image != NULL"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"shrunk_x1 != NULL"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"shrunk_y1 != NULL"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"shrunk_x2 != NULL"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"shrunk_y2 != NULL"
	.size	.L.str.12, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
