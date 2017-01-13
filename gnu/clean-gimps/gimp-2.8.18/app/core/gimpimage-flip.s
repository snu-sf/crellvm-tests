	.text
	.file	"gimpimage-flip.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_image_flip
	.align	16, 0x90
	.type	gimp_image_flip,@function
gimp_image_flip:                        # @gimp_image_flip
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
	movsd	%xmm0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_flip, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_97
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_flip, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_97
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -132(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -132(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_flip, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_97
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movl	-20(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	je	.LBB0_38
	jmp	.LBB0_98
.LBB0_98:                               # %do.end.67
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB0_39
	jmp	.LBB0_40
.LBB0_38:                               # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB0_41
.LBB0_39:                               # %sw.bb.69
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB0_41
.LBB0_40:                               # %sw.default
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_image_flip, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB0_97
.LBB0_41:                               # %sw.epilog
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movq	-8(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_image_get_layers
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	-196(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	callq	gimp_image_get_vectors
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movl	$3, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-200(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_image_get_channel_iter
	movq	%rax, -40(%rbp)
.LBB0_42:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_50
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	$1, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_flip
	cmpq	$0, -32(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.87
                                        #   in Loop: Header=BB0_42 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
	divsd	-56(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_45:                               # %if.end.89
                                        #   in Loop: Header=BB0_42 Depth=1
	jmp	.LBB0_46
.LBB0_46:                               # %for.inc
                                        #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_48
# BB#47:                                # %cond.true
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_49
.LBB0_48:                               # %cond.false
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_49
.LBB0_49:                               # %cond.end
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_42
.LBB0_50:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -40(%rbp)
.LBB0_51:                               # %for.cond.92
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_59
# BB#52:                                # %for.body.94
                                        #   in Loop: Header=BB0_51 Depth=1
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_flip
	cmpq	$0, -32(%rbp)
	je	.LBB0_54
# BB#53:                                # %if.then.99
                                        #   in Loop: Header=BB0_51 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
	divsd	-56(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_54:                               # %if.end.102
                                        #   in Loop: Header=BB0_51 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %for.inc.103
                                        #   in Loop: Header=BB0_51 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_57
# BB#56:                                # %cond.true.105
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_58
.LBB0_57:                               # %cond.false.107
                                        #   in Loop: Header=BB0_51 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_58
.LBB0_58:                               # %cond.end.108
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_51
.LBB0_59:                               # %for.end.110
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_item_flip
	cmpq	$0, -32(%rbp)
	je	.LBB0_61
# BB#60:                                # %if.then.115
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
	divsd	-56(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_61:                               # %if.end.118
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -40(%rbp)
.LBB0_62:                               # %for.cond.120
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_70
# BB#63:                                # %for.body.122
                                        #   in Loop: Header=BB0_62 Depth=1
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_flip
	cmpq	$0, -32(%rbp)
	je	.LBB0_65
# BB#64:                                # %if.then.127
                                        #   in Loop: Header=BB0_62 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
	divsd	-56(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB0_65:                               # %if.end.130
                                        #   in Loop: Header=BB0_62 Depth=1
	jmp	.LBB0_66
.LBB0_66:                               # %for.inc.131
                                        #   in Loop: Header=BB0_62 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_68
# BB#67:                                # %cond.true.133
                                        #   in Loop: Header=BB0_62 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB0_69
.LBB0_68:                               # %cond.false.135
                                        #   in Loop: Header=BB0_62 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB0_69
.LBB0_69:                               # %cond.end.136
                                        #   in Loop: Header=BB0_62 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_62
.LBB0_70:                               # %for.end.138
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_guides
	movq	%rax, -40(%rbp)
.LBB0_71:                               # %for.cond.140
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_85
# BB#72:                                # %for.body.142
                                        #   in Loop: Header=BB0_71 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_position
	movl	%eax, -172(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	je	.LBB0_73
	jmp	.LBB0_99
.LBB0_99:                               # %for.body.142
                                        #   in Loop: Header=BB0_71 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB0_76
	jmp	.LBB0_79
.LBB0_73:                               # %sw.bb.148
                                        #   in Loop: Header=BB0_71 Depth=1
	cmpl	$1, -20(%rbp)
	jne	.LBB0_75
# BB#74:                                # %if.then.151
                                        #   in Loop: Header=BB0_71 Depth=1
	movq	-8(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %ecx
	subl	-172(%rbp), %eax
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_move_guide
.LBB0_75:                               # %if.end.153
                                        #   in Loop: Header=BB0_71 Depth=1
	jmp	.LBB0_80
.LBB0_76:                               # %sw.bb.154
                                        #   in Loop: Header=BB0_71 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB0_78
# BB#77:                                # %if.then.157
                                        #   in Loop: Header=BB0_71 Depth=1
	movq	-8(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movl	$1, %ecx
	subl	-172(%rbp), %eax
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_move_guide
.LBB0_78:                               # %if.end.160
                                        #   in Loop: Header=BB0_71 Depth=1
	jmp	.LBB0_80
.LBB0_79:                               # %sw.default.161
                                        #   in Loop: Header=BB0_71 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               # %sw.epilog.162
                                        #   in Loop: Header=BB0_71 Depth=1
	jmp	.LBB0_81
.LBB0_81:                               # %for.inc.163
                                        #   in Loop: Header=BB0_71 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_83
# BB#82:                                # %cond.true.165
                                        #   in Loop: Header=BB0_71 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_84
.LBB0_83:                               # %cond.false.167
                                        #   in Loop: Header=BB0_71 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_84
.LBB0_84:                               # %cond.end.168
                                        #   in Loop: Header=BB0_71 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_71
.LBB0_85:                               # %for.end.170
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	%rax, -40(%rbp)
.LBB0_86:                               # %for.cond.172
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_96
# BB#87:                                # %for.body.174
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB0_89
# BB#88:                                # %if.then.179
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %r8d
	movq	-184(%rbp), %rsi
	subl	12(%rsi), %eax
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movl	-300(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_move_sample_point
.LBB0_89:                               # %if.end.182
                                        #   in Loop: Header=BB0_86 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB0_91
# BB#90:                                # %if.then.185
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movl	$1, %r8d
	movq	-184(%rbp), %rsi
	subl	8(%rsi), %eax
	movq	-184(%rbp), %rsi
	movl	12(%rsi), %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_move_sample_point
.LBB0_91:                               # %if.end.190
                                        #   in Loop: Header=BB0_86 Depth=1
	jmp	.LBB0_92
.LBB0_92:                               # %for.inc.191
                                        #   in Loop: Header=BB0_86 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_94
# BB#93:                                # %cond.true.193
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_95
.LBB0_94:                               # %cond.false.195
                                        #   in Loop: Header=BB0_86 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_95
.LBB0_95:                               # %cond.end.196
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_86
.LBB0_96:                               # %for.end.198
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_unset_busy
.LBB0_97:                               # %return
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_flip, .Lfunc_end0-gimp_image_flip
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_flip,@object # @__func__.gimp_image_flip
.L__func__.gimp_image_flip:
	.asciz	"gimp_image_flip"
	.size	.L__func__.gimp_image_flip, 16

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
	.asciz	"%s: unknown flip_type"
	.size	.L.str.4, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
