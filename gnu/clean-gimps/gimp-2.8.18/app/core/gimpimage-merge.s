	.text
	.file	"gimpimage-merge.bc"
	.globl	gimp_image_merge_visible_layers
	.align	16, 0x90
	.type	gimp_image_merge_visible_layers,@function
gimp_image_merge_visible_layers:        # @gimp_image_merge_visible_layers
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_visible_layers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_70
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_visible_layers, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_70
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	cmpl	$0, -32(%rbp)
	je	.LBB0_41
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB0_37
# BB#26:                                # %land.lhs.true.44
	movq	-128(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB0_37
# BB#27:                                # %if.then.47
	movq	-128(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_29
# BB#28:                                # %if.then.58
	movl	$0, -156(%rbp)
	jmp	.LBB0_34
.LBB0_29:                               # %if.else.59
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_32
# BB#30:                                # %land.lhs.true.62
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_32
# BB#31:                                # %if.then.66
	movl	$1, -156(%rbp)
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.67
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_33:                               # %if.end.69
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.70
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_36
# BB#35:                                # %if.then.73
	movq	-136(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
.LBB0_36:                               # %if.end.76
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.77
	cmpq	$0, -128(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.79
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_container
	movq	%rax, -48(%rbp)
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.83
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -48(%rbp)
.LBB0_40:                               # %if.end.85
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.86
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -48(%rbp)
.LBB0_42:                               # %if.end.88
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -56(%rbp)
.LBB0_43:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_56
# BB#44:                                # %for.body
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB0_46
# BB#45:                                # %if.then.96
                                        #   in Loop: Header=BB0_43 Depth=1
	jmp	.LBB0_52
.LBB0_46:                               # %if.end.97
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB0_48
# BB#47:                                # %if.then.102
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-64(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movq	%rax, -64(%rbp)
	jmp	.LBB0_51
.LBB0_48:                               # %if.else.104
                                        #   in Loop: Header=BB0_43 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB0_50
# BB#49:                                # %if.then.106
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-72(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movq	%rax, -72(%rbp)
.LBB0_50:                               # %if.end.108
                                        #   in Loop: Header=BB0_43 Depth=1
	jmp	.LBB0_51
.LBB0_51:                               # %if.end.109
                                        #   in Loop: Header=BB0_43 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %for.inc
                                        #   in Loop: Header=BB0_43 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_54
# BB#53:                                # %cond.true
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_55
.LBB0_54:                               # %cond.false
                                        #   in Loop: Header=BB0_43 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_55
.LBB0_55:                               # %cond.end
                                        #   in Loop: Header=BB0_43 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB0_43
.LBB0_56:                               # %for.end
	cmpq	$0, -64(%rbp)
	je	.LBB0_69
# BB#57:                                # %if.then.112
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.3, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$8, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-16(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB0_59
# BB#58:                                # %if.then.119
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, %rdi
	callq	floating_sel_anchor
.LBB0_59:                               # %if.end.121
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	callq	gimp_image_merge_layers
	movq	%rax, -176(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_slist_free
	cmpq	$0, -72(%rbp)
	je	.LBB0_68
# BB#60:                                # %if.then.124
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB0_61:                               # %for.cond.127
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB0_67
# BB#62:                                # %for.body.129
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	gimp_image_remove_layer
# BB#63:                                # %for.inc.131
                                        #   in Loop: Header=BB0_61 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB0_65
# BB#64:                                # %cond.true.133
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB0_66
.LBB0_65:                               # %cond.false.135
                                        #   in Loop: Header=BB0_61 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB0_66
.LBB0_66:                               # %cond.end.136
                                        #   in Loop: Header=BB0_61 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	jmp	.LBB0_61
.LBB0_67:                               # %for.end.138
	movq	-72(%rbp), %rdi
	callq	g_slist_free
.LBB0_68:                               # %if.end.139
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_unset_busy
	movq	-176(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB0_70
.LBB0_69:                               # %if.end.142
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -8(%rbp)
.LBB0_70:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_merge_visible_layers, .Lfunc_end0-gimp_image_merge_visible_layers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	gimp_image_merge_layers,@function
gimp_image_merge_layers:                # @gimp_image_merge_layers
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
	subq	$1216, %rsp             # imm = 0x4C0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -368(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -372(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-360(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -372(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-360(%rbp), %rdi
	movq	-368(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -372(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-372(%rbp), %eax
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_layers, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_144
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -392(%rbp)
	cmpq	$0, -384(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -396(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-384(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-392(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -396(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -396(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-396(%rbp), %eax
	movl	%eax, -400(%rbp)
	cmpl	$0, -400(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_layers, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_144
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	movq	$0, -288(%rbp)
	movl	$0, -316(%rbp)
	movl	$0, -312(%rbp)
	movl	$0, -324(%rbp)
	movl	$0, -320(%rbp)
	movq	$0, -296(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_layer_get_parent
	movq	%rax, -352(%rbp)
	movl	$0, -308(%rbp)
.LBB1_25:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_75
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-328(%rbp), %rsi
	leaq	-332(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-44(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$2, %r8d
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	%r8d, -472(%rbp)        # 4-byte Spill
	jb	.LBB1_27
	jmp	.LBB1_145
.LBB1_145:                              # %while.body
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	je	.LBB1_65
	jmp	.LBB1_146
.LBB1_146:                              # %while.body
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	je	.LBB1_68
	jmp	.LBB1_71
.LBB1_27:                               # %sw.bb
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$0, -308(%rbp)
	jne	.LBB1_29
# BB#28:                                # %if.then.45
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-328(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-332(%rbp), %eax
	movl	%eax, -316(%rbp)
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-484(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -320(%rbp)
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -500(%rbp)        # 4-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-500(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -324(%rbp)
	jmp	.LBB1_38
.LBB1_29:                               # %if.else.53
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-328(%rbp), %eax
	cmpl	-312(%rbp), %eax
	jge	.LBB1_31
# BB#30:                                # %if.then.55
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-328(%rbp), %eax
	movl	%eax, -312(%rbp)
.LBB1_31:                               # %if.end.56
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-332(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jge	.LBB1_33
# BB#32:                                # %if.then.58
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -316(%rbp)
.LBB1_33:                               # %if.end.59
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -516(%rbp)        # 4-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-516(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	-320(%rbp), %edx
	jle	.LBB1_35
# BB#34:                                # %if.then.65
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -532(%rbp)        # 4-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-532(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -320(%rbp)
.LBB1_35:                               # %if.end.70
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -548(%rbp)        # 4-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-548(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	-324(%rbp), %edx
	jle	.LBB1_37
# BB#36:                                # %if.then.76
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -564(%rbp)        # 4-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-564(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -324(%rbp)
.LBB1_37:                               # %if.end.81
                                        #   in Loop: Header=BB1_25 Depth=1
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.82
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$1, -44(%rbp)
	jne	.LBB1_64
# BB#39:                                # %if.then.84
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-312(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-580(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB1_41
# BB#40:                                # %cond.true
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB1_45
.LBB1_41:                               # %cond.false
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$0, -312(%rbp)
	jge	.LBB1_43
# BB#42:                                # %cond.true.89
                                        #   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB1_44
.LBB1_43:                               # %cond.false.90
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-312(%rbp), %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB1_44:                               # %cond.end
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB1_45:                               # %cond.end.91
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-584(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)
	movl	-316(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -592(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-592(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB1_47
# BB#46:                                # %cond.true.95
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB1_51
.LBB1_47:                               # %cond.false.97
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$0, -316(%rbp)
	jge	.LBB1_49
# BB#48:                                # %cond.true.99
                                        #   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB1_50
.LBB1_49:                               # %cond.false.100
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-316(%rbp), %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB1_50:                               # %cond.end.101
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB1_51:                               # %cond.end.103
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)
	movl	-320(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -604(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-604(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB1_53
# BB#52:                                # %cond.true.107
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -608(%rbp)        # 4-byte Spill
	jmp	.LBB1_57
.LBB1_53:                               # %cond.false.109
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$0, -320(%rbp)
	jge	.LBB1_55
# BB#54:                                # %cond.true.111
                                        #   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
	jmp	.LBB1_56
.LBB1_55:                               # %cond.false.112
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-320(%rbp), %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB1_56:                               # %cond.end.113
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB1_57:                               # %cond.end.115
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)
	movl	-324(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -616(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-616(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB1_59
# BB#58:                                # %cond.true.119
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB1_63
.LBB1_59:                               # %cond.false.121
                                        #   in Loop: Header=BB1_25 Depth=1
	cmpl	$0, -324(%rbp)
	jge	.LBB1_61
# BB#60:                                # %cond.true.123
                                        #   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB1_62
.LBB1_61:                               # %cond.false.124
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-324(%rbp), %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB1_62:                               # %cond.end.125
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB1_63:                               # %cond.end.127
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)
.LBB1_64:                               # %if.end.129
                                        #   in Loop: Header=BB1_25 Depth=1
	jmp	.LBB1_71
.LBB1_65:                               # %sw.bb.130
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_67
# BB#66:                                # %if.then.132
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-328(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-332(%rbp), %eax
	movl	%eax, -316(%rbp)
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-628(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -320(%rbp)
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -644(%rbp)        # 4-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-644(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -324(%rbp)
.LBB1_67:                               # %if.end.141
                                        #   in Loop: Header=BB1_25 Depth=1
	jmp	.LBB1_71
.LBB1_68:                               # %sw.bb.142
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_70
# BB#69:                                # %if.then.145
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	$0, -312(%rbp)
	movl	$0, -316(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -320(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -324(%rbp)
.LBB1_70:                               # %if.end.148
                                        #   in Loop: Header=BB1_25 Depth=1
	jmp	.LBB1_71
.LBB1_71:                               # %sw.epilog
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
	movq	-64(%rbp), %rdi
	movq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_prepend
	movq	%rax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_73
# BB#72:                                # %cond.true.151
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB1_74
.LBB1_73:                               # %cond.false.153
                                        #   in Loop: Header=BB1_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB1_74
.LBB1_74:                               # %cond.end.154
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB1_25
.LBB1_75:                               # %while.end
	movl	-320(%rbp), %eax
	subl	-312(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB1_77
# BB#76:                                # %lor.lhs.false
	movl	-324(%rbp), %eax
	subl	-316(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB1_78
.LBB1_77:                               # %if.then.159
	movq	$0, -8(%rbp)
	jmp	.LBB1_144
.LBB1_78:                               # %if.end.160
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -344(%rbp)
	cmpl	$3, -44(%rbp)
	je	.LBB1_80
# BB#79:                                # %lor.lhs.false.164
	movq	-288(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$4, %eax
	jne	.LBB1_89
.LBB1_80:                               # %if.then.169
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-408(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$0, %eax
	jne	.LBB1_82
# BB#81:                                # %cond.true.174
	xorl	%eax, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB1_86
.LBB1_82:                               # %cond.false.175
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$1, %eax
	jne	.LBB1_84
# BB#83:                                # %cond.true.178
	movl	$2, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	jmp	.LBB1_85
.LBB1_84:                               # %cond.false.179
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$4, %edx
	cmpl	$2, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -680(%rbp)        # 4-byte Spill
.LBB1_85:                               # %cond.end.183
	movl	-680(%rbp), %eax        # 4-byte Reload
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB1_86:                               # %cond.end.185
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	%eax, -404(%rbp)
	movq	-16(%rbp), %rdi
	movl	-320(%rbp), %eax
	subl	-312(%rbp), %eax
	movl	-324(%rbp), %ecx
	subl	-316(%rbp), %ecx
	movl	-404(%rbp), %edx
	movq	-288(%rbp), %rsi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%edx, -692(%rbp)        # 4-byte Spill
	movl	%eax, -696(%rbp)        # 4-byte Spill
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	callq	gimp_object_get_name
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movl	-696(%rbp), %esi        # 4-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movl	-692(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	gimp_layer_new
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.LBB1_88
# BB#87:                                # %if.then.192
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.gimp_image_merge_layers, %rsi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_144
.LBB1_88:                               # %if.end.193
	movq	-280(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-312(%rbp), %esi
	movl	-316(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	leaq	-408(%rbp), %rcx
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	-728(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
	movq	-280(%rbp), %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	-320(%rbp), %r9d
	subl	-312(%rbp), %r9d
	movl	-324(%rbp), %r10d
	subl	-316(%rbp), %r10d
	movq	%rax, %rsi
	movl	%edx, -748(%rbp)        # 4-byte Spill
	movl	-748(%rbp), %ecx        # 4-byte Reload
	movl	%r8d, -752(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	leaq	-408(%rbp), %rsi
	callq	color_region
	movl	$0, -336(%rbp)
	jmp	.LBB1_92
.LBB1_89:                               # %if.else.205
	movq	-16(%rbp), %rdi
	movl	-320(%rbp), %eax
	subl	-312(%rbp), %eax
	movl	-324(%rbp), %ecx
	subl	-316(%rbp), %ecx
	movq	-288(%rbp), %rdx
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movl	%eax, -764(%rbp)        # 4-byte Spill
	movl	%ecx, -768(%rbp)        # 4-byte Spill
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type_with_alpha
	movabsq	$.L.str.20, %r8
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movl	-764(%rbp), %esi        # 4-byte Reload
	movl	-768(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_layer_new
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.LBB1_91
# BB#90:                                # %if.then.213
	movabsq	$.L.str.21, %rdi
	movabsq	$.L__func__.gimp_image_merge_layers, %rsi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_144
.LBB1_91:                               # %if.end.214
	movq	-280(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-312(%rbp), %esi
	movl	-316(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movq	-280(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	-320(%rbp), %r8d
	subl	-312(%rbp), %r8d
	movl	-324(%rbp), %r9d
	subl	-316(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -796(%rbp)        # 4-byte Spill
	movl	-796(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -800(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	callq	clear_region
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_n_children
	movq	-24(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movl	%eax, -804(%rbp)        # 4-byte Spill
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rsi, -824(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	-804(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -336(%rbp)
.LBB1_92:                               # %if.end.228
	movq	-288(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-296(%rbp), %rsi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	movq	%rsi, -848(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_item_set_tattoo
	movq	-296(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_parasites
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rdi
	callq	gimp_parasite_list_copy
	movq	%rax, -304(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-304(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_set_parasites
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB1_93:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB1_134
# BB#94:                                # %for.body
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	.Lgimp_image_merge_layers.active, %rax
	movq	%rax, -448(%rbp)
	movq	.Lgimp_image_merge_layers.active+8, %rax
	movq	%rax, -440(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	gimp_image_merge_layers_get_operation
	movl	%eax, -412(%rbp)
	cmpl	$-1, -412(%rbp)
	jne	.LBB1_96
# BB#95:                                # %if.then.251
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-288(%rbp), %rdi
	callq	gimp_layer_add_alpha
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	gimp_image_merge_layers_get_operation
	movl	%eax, -412(%rbp)
.LBB1_96:                               # %if.end.253
                                        #   in Loop: Header=BB1_93 Depth=1
	cmpl	$-1, -412(%rbp)
	jne	.LBB1_98
# BB#97:                                # %if.then.255
	movabsq	$.L.str.22, %rdi
	movabsq	$.L__func__.gimp_image_merge_layers, %rsi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_144
.LBB1_98:                               # %if.end.256
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-288(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-328(%rbp), %rsi
	leaq	-332(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-328(%rbp), %ecx
	cmpl	-320(%rbp), %ecx
	jle	.LBB1_100
# BB#99:                                # %cond.true.260
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-320(%rbp), %eax
	movl	%eax, -876(%rbp)        # 4-byte Spill
	jmp	.LBB1_104
.LBB1_100:                              # %cond.false.261
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-328(%rbp), %eax
	cmpl	-312(%rbp), %eax
	jge	.LBB1_102
# BB#101:                               # %cond.true.263
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-312(%rbp), %eax
	movl	%eax, -880(%rbp)        # 4-byte Spill
	jmp	.LBB1_103
.LBB1_102:                              # %cond.false.264
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-328(%rbp), %eax
	movl	%eax, -880(%rbp)        # 4-byte Spill
.LBB1_103:                              # %cond.end.265
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-880(%rbp), %eax        # 4-byte Reload
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB1_104:                              # %cond.end.267
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	%eax, -420(%rbp)
	movl	-332(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jle	.LBB1_106
# BB#105:                               # %cond.true.270
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-324(%rbp), %eax
	movl	%eax, -884(%rbp)        # 4-byte Spill
	jmp	.LBB1_110
.LBB1_106:                              # %cond.false.271
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-332(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jge	.LBB1_108
# BB#107:                               # %cond.true.273
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-316(%rbp), %eax
	movl	%eax, -888(%rbp)        # 4-byte Spill
	jmp	.LBB1_109
.LBB1_108:                              # %cond.false.274
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-332(%rbp), %eax
	movl	%eax, -888(%rbp)        # 4-byte Spill
.LBB1_109:                              # %cond.end.275
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-888(%rbp), %eax        # 4-byte Reload
	movl	%eax, -884(%rbp)        # 4-byte Spill
.LBB1_110:                              # %cond.end.277
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-884(%rbp), %eax        # 4-byte Reload
	movl	%eax, -424(%rbp)
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -892(%rbp)        # 4-byte Spill
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-892(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	-320(%rbp), %edx
	jle	.LBB1_112
# BB#111:                               # %cond.true.284
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-320(%rbp), %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
	jmp	.LBB1_116
.LBB1_112:                              # %cond.false.285
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -912(%rbp)        # 4-byte Spill
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-912(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	-312(%rbp), %edx
	jge	.LBB1_114
# BB#113:                               # %cond.true.291
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-312(%rbp), %eax
	movl	%eax, -924(%rbp)        # 4-byte Spill
	jmp	.LBB1_115
.LBB1_114:                              # %cond.false.292
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-328(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -928(%rbp)        # 4-byte Spill
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-928(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -924(%rbp)        # 4-byte Spill
.LBB1_115:                              # %cond.end.297
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-924(%rbp), %eax        # 4-byte Reload
	movl	%eax, -908(%rbp)        # 4-byte Spill
.LBB1_116:                              # %cond.end.299
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-908(%rbp), %eax        # 4-byte Reload
	movl	%eax, -428(%rbp)
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -940(%rbp)        # 4-byte Spill
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-940(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	-324(%rbp), %edx
	jle	.LBB1_118
# BB#117:                               # %cond.true.306
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-324(%rbp), %eax
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB1_122
.LBB1_118:                              # %cond.false.307
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -960(%rbp)        # 4-byte Spill
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-960(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	-316(%rbp), %edx
	jge	.LBB1_120
# BB#119:                               # %cond.true.313
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-316(%rbp), %eax
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB1_121
.LBB1_120:                              # %cond.false.314
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-332(%rbp), %eax
	movq	-288(%rbp), %rcx
	movl	%eax, -976(%rbp)        # 4-byte Spill
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-976(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -972(%rbp)        # 4-byte Spill
.LBB1_121:                              # %cond.end.319
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-972(%rbp), %eax        # 4-byte Reload
	movl	%eax, -956(%rbp)        # 4-byte Spill
.LBB1_122:                              # %cond.end.321
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	-956(%rbp), %eax        # 4-byte Reload
	movl	%eax, -432(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	movl	$1, %edx
	movl	-420(%rbp), %r8d
	subl	-312(%rbp), %r8d
	movl	-424(%rbp), %r9d
	subl	-316(%rbp), %r9d
	movl	-428(%rbp), %r10d
	subl	-420(%rbp), %r10d
	movl	-432(%rbp), %r11d
	subl	-424(%rbp), %r11d
	movq	%rax, %rsi
	movl	%edx, -996(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-288(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-420(%rbp), %edx
	subl	-328(%rbp), %edx
	movl	-424(%rbp), %r8d
	subl	-332(%rbp), %r8d
	movl	-428(%rbp), %r9d
	subl	-420(%rbp), %r9d
	movl	-432(%rbp), %r10d
	subl	-424(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-288(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB1_125
# BB#123:                               # %land.lhs.true.339
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-288(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	je	.LBB1_125
# BB#124:                               # %if.then.343
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-288(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-264(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rsi
	movl	-420(%rbp), %edx
	subl	-328(%rbp), %edx
	movl	-424(%rbp), %r8d
	subl	-332(%rbp), %r8d
	movl	-428(%rbp), %r9d
	subl	-420(%rbp), %r9d
	movl	-432(%rbp), %r10d
	subl	-424(%rbp), %r10d
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-264(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.LBB1_126
.LBB1_125:                              # %if.else.353
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	$0, -272(%rbp)
.LBB1_126:                              # %if.end.354
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-288(%rbp), %rdi
	callq	gimp_layer_get_mode
	movl	%eax, -416(%rbp)
	movq	-288(%rbp), %rdi
	cmpq	-296(%rbp), %rdi
	jne	.LBB1_129
# BB#127:                               # %land.lhs.true.357
                                        #   in Loop: Header=BB1_93 Depth=1
	cmpl	$1, -416(%rbp)
	je	.LBB1_129
# BB#128:                               # %if.then.359
                                        #   in Loop: Header=BB1_93 Depth=1
	movl	$0, -416(%rbp)
.LBB1_129:                              # %if.end.360
                                        #   in Loop: Header=BB1_93 Depth=1
	leaq	-136(%rbp), %rax
	leaq	-200(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-448(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movq	-288(%rbp), %rdi
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	movq	%rsi, -1048(%rbp)       # 8-byte Spill
	movq	%r8, -1056(%rbp)        # 8-byte Spill
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	callq	gimp_layer_get_opacity
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %r9d
	movl	-416(%rbp), %r10d
	movl	-412(%rbp), %r11d
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	movq	-1056(%rbp), %r8        # 8-byte Reload
	movl	%r10d, (%rsp)
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	combine_regions
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-16(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	gimp_image_remove_layer
# BB#130:                               # %for.inc
                                        #   in Loop: Header=BB1_93 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB1_132
# BB#131:                               # %cond.true.364
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB1_133
.LBB1_132:                              # %cond.false.366
                                        #   in Loop: Header=BB1_93 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB1_133
.LBB1_133:                              # %cond.end.367
                                        #   in Loop: Header=BB1_93 Depth=1
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB1_93
.LBB1_134:                              # %for.end
	movq	-64(%rbp), %rdi
	callq	g_slist_free
	movq	-280(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-344(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	movq	-280(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	cmpl	$3, -44(%rbp)
	jne	.LBB1_142
# BB#135:                               # %if.then.375
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -56(%rbp)
.LBB1_136:                              # %while.cond.377
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_141
# BB#137:                               # %while.body.379
                                        #   in Loop: Header=BB1_136 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_139
# BB#138:                               # %cond.true.382
                                        #   in Loop: Header=BB1_136 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB1_140
.LBB1_139:                              # %cond.false.384
                                        #   in Loop: Header=BB1_136 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB1_140
.LBB1_140:                              # %cond.end.385
                                        #   in Loop: Header=BB1_136 Depth=1
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	gimp_image_remove_layer
	jmp	.LBB1_136
.LBB1_141:                              # %while.end.387
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movq	-352(%rbp), %rdx
	movl	-336(%rbp), %ecx
	callq	gimp_image_add_layer
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jmp	.LBB1_143
.LBB1_142:                              # %if.else.389
	movq	-16(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movq	-352(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	movq	%rsi, -1136(%rbp)       # 8-byte Spill
	callq	gimp_container_get_n_children
	movl	$1, %r8d
	subl	-336(%rbp), %eax
	addl	$1, %eax
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_layer
	movl	%eax, -1140(%rbp)       # 4-byte Spill
.LBB1_143:                              # %if.end.394
	movq	-280(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-280(%rbp), %rsi
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	movq	%rsi, -1168(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-280(%rbp), %rsi
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	movq	%rsi, -1184(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-1172(%rbp), %ecx       # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	movq	-280(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB1_144:                              # %return
	movq	-8(%rbp), %rax
	addq	$1216, %rsp             # imm = 0x4C0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_merge_layers, .Lfunc_end1-gimp_image_merge_layers
	.cfi_endproc

	.globl	gimp_image_flatten
	.align	16, 0x90
	.type	gimp_image_flatten,@function
gimp_image_flatten:                     # @gimp_image_flatten
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_flatten, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_46
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_flatten, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_46
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB2_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_28
.LBB2_27:                               # %if.then.42
	jmp	.LBB2_29
.LBB2_28:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_flatten, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_46
.LBB2_29:                               # %if.end.44
	jmp	.LBB2_30
.LBB2_30:                               # %do.end.45
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -40(%rbp)
.LBB2_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_41
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB2_31 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB2_34
# BB#33:                                # %if.then.50
                                        #   in Loop: Header=BB2_31 Depth=1
	jmp	.LBB2_37
.LBB2_34:                               # %if.end.51
                                        #   in Loop: Header=BB2_31 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB2_36
# BB#35:                                # %if.then.56
                                        #   in Loop: Header=BB2_31 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movq	%rax, -48(%rbp)
.LBB2_36:                               # %if.end.58
                                        #   in Loop: Header=BB2_31 Depth=1
	jmp	.LBB2_37
.LBB2_37:                               # %for.inc
                                        #   in Loop: Header=BB2_31 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_39
# BB#38:                                # %cond.true
                                        #   in Loop: Header=BB2_31 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB2_40
.LBB2_39:                               # %cond.false
                                        #   in Loop: Header=BB2_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB2_40
.LBB2_40:                               # %cond.end
                                        #   in Loop: Header=BB2_31 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB2_31
.LBB2_41:                               # %for.end
	cmpq	$0, -48(%rbp)
	je	.LBB2_45
# BB#42:                                # %if.then.61
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$8, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-16(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB2_44
# BB#43:                                # %if.then.66
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, %rdi
	callq	floating_sel_anchor
.LBB2_44:                               # %if.end.68
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_layers
	movl	$3, %r8d
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_merge_layers
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_slist_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_alpha_changed
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_unset_busy
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB2_46
.LBB2_45:                               # %if.end.73
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
.LBB2_46:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_flatten, .Lfunc_end2-gimp_image_flatten
	.cfi_endproc

	.globl	gimp_image_merge_down
	.align	16, 0x90
	.type	gimp_image_merge_down,@function
gimp_image_merge_down:                  # @gimp_image_merge_down
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_down, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_down, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_27
# BB#26:                                # %if.then.44
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_down, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_28:                               # %if.end.46
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.47
	jmp	.LBB3_30
.LBB3_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_32
# BB#31:                                # %if.then.57
	movl	$0, -148(%rbp)
	jmp	.LBB3_37
.LBB3_32:                               # %if.else.58
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_35
# BB#33:                                # %land.lhs.true.61
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_35
# BB#34:                                # %if.then.65
	movl	$1, -148(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.66
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_36:                               # %if.end.68
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.69
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_39
# BB#38:                                # %if.then.72
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_down, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_40:                               # %if.end.74
	jmp	.LBB3_41
.LBB3_41:                               # %do.end.75
	jmp	.LBB3_42
.LBB3_42:                               # %do.body.76
	cmpq	$0, -48(%rbp)
	je	.LBB3_44
# BB#43:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_45
.LBB3_44:                               # %if.then.79
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.80
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_down, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_46:                               # %if.end.81
	jmp	.LBB3_47
.LBB3_47:                               # %do.end.82
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_container_iter
	movq	%rax, -64(%rbp)
.LBB3_48:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB3_56
# BB#49:                                # %for.body
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_51
# BB#50:                                # %if.then.88
	jmp	.LBB3_56
.LBB3_51:                               # %if.end.89
                                        #   in Loop: Header=BB3_48 Depth=1
	jmp	.LBB3_52
.LBB3_52:                               # %for.inc
                                        #   in Loop: Header=BB3_48 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB3_54
# BB#53:                                # %cond.true
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_55
.LBB3_54:                               # %cond.false
                                        #   in Loop: Header=BB3_48 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_55
.LBB3_55:                               # %cond.end
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB3_48
.LBB3_56:                               # %for.end
	cmpq	$0, -64(%rbp)
	je	.LBB3_58
# BB#57:                                # %cond.true.92
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_59
.LBB3_58:                               # %cond.false.94
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_59
.LBB3_59:                               # %cond.end.95
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB3_60:                               # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB3_72
# BB#61:                                # %for.body.99
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB3_67
# BB#62:                                # %if.then.105
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB3_64
# BB#63:                                # %if.then.110
	movabsq	$.L.str.9, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_64:                               # %if.end.112
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB3_66
# BB#65:                                # %if.then.117
	movabsq	$.L.str.10, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_66:                               # %if.end.119
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_append
	movq	%rax, -80(%rbp)
	jmp	.LBB3_72
.LBB3_67:                               # %if.end.121
                                        #   in Loop: Header=BB3_60 Depth=1
	jmp	.LBB3_68
.LBB3_68:                               # %for.inc.122
                                        #   in Loop: Header=BB3_60 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB3_70
# BB#69:                                # %cond.true.124
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_71
.LBB3_70:                               # %cond.false.126
                                        #   in Loop: Header=BB3_60 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_71
.LBB3_71:                               # %cond.end.127
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB3_60
.LBB3_72:                               # %for.end.129
	cmpq	$0, -80(%rbp)
	jne	.LBB3_74
# BB#73:                                # %if.then.131
	movabsq	$.L.str.11, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB3_75
.LBB3_74:                               # %if.end.133
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$8, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_container
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_merge_layers
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_slist_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_unset_busy
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB3_75:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_merge_down, .Lfunc_end3-gimp_image_merge_down
	.cfi_endproc

	.globl	gimp_image_merge_group_layer
	.align	16, 0x90
	.type	gimp_image_merge_group_layer,@function
gimp_image_merge_group_layer:           # @gimp_image_merge_group_layer
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_group_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_35
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_group_layer, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_35
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_27
# BB#26:                                # %if.then.44
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_group_layer, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_35
.LBB4_28:                               # %if.end.46
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.47
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.48
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB4_32
# BB#31:                                # %if.then.53
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.54
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_group_layer, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_35
.LBB4_33:                               # %if.end.55
	jmp	.LBB4_34
.LBB4_34:                               # %do.end.56
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$8, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-24(%rbp), %rcx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_parent
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_duplicate
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	gimp_image_add_layer
	movq	-16(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB4_35:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_merge_group_layer, .Lfunc_end4-gimp_image_merge_group_layer
	.cfi_endproc

	.globl	gimp_image_merge_visible_vectors
	.align	16, 0x90
	.type	gimp_image_merge_visible_vectors,@function
gimp_image_merge_visible_vectors:       # @gimp_image_merge_visible_vectors
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_visible_vectors, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_41
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.14
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_merge_visible_vectors, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_41
.LBB5_17:                               # %if.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -32(%rbp)
.LBB5_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_27
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB5_22
# BB#21:                                # %if.then.24
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
.LBB5_22:                               # %if.end.26
                                        #   in Loop: Header=BB5_19 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc
                                        #   in Loop: Header=BB5_19 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_26
.LBB5_25:                               # %cond.false
                                        #   in Loop: Header=BB5_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_26
.LBB5_26:                               # %cond.end
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_19
.LBB5_27:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_40
# BB#28:                                # %land.lhs.true.30
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_40
# BB#29:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.17, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$9, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_duplicate
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_remove_vectors
	cmpq	$0, -40(%rbp)
	je	.LBB5_31
# BB#30:                                # %cond.true.54
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB5_32
.LBB5_31:                               # %cond.false.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB5_32
.LBB5_32:                               # %cond.end.57
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB5_33:                               # %for.cond.59
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_39
# BB#34:                                # %for.body.61
                                        #   in Loop: Header=BB5_33 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_vectors_add_strokes
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_remove_vectors
# BB#35:                                # %for.inc.63
                                        #   in Loop: Header=BB5_33 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_37
# BB#36:                                # %cond.true.65
                                        #   in Loop: Header=BB5_33 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_37:                               # %cond.false.67
                                        #   in Loop: Header=BB5_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_38:                               # %cond.end.68
                                        #   in Loop: Header=BB5_33 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_33
.LBB5_39:                               # %for.end.70
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	movq	-40(%rbp), %rdi
	callq	g_list_free
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-92(%rbp), %ecx
	callq	gimp_image_add_vectors
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_unset_busy
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-80(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB5_41
.LBB5_40:                               # %if.else.76
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.18, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
.LBB5_41:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_merge_visible_vectors, .Lfunc_end5-gimp_image_merge_visible_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_merge_layers_get_operation,@function
gimp_image_merge_layers_get_operation:  # @gimp_image_merge_layers_get_operation
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	gimp_image_get_combination_mode
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_merge_layers_get_operation, .Lfunc_end7-gimp_image_merge_layers_get_operation
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_merge_visible_layers,@object # @__func__.gimp_image_merge_visible_layers
.L__func__.gimp_image_merge_visible_layers:
	.asciz	"gimp_image_merge_visible_layers"
	.size	.L__func__.gimp_image_merge_visible_layers, 32

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
	.asciz	"undo-type\004Merge Visible Layers"
	.size	.L.str.3, 31

	.type	.L__func__.gimp_image_flatten,@object # @__func__.gimp_image_flatten
.L__func__.gimp_image_flatten:
	.asciz	"gimp_image_flatten"
	.size	.L__func__.gimp_image_flatten, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"undo-type\004Flatten Image"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Cannot flatten an image without any visible layer."
	.size	.L.str.6, 51

	.type	.L__func__.gimp_image_merge_down,@object # @__func__.gimp_image_merge_down
.L__func__.gimp_image_merge_down:
	.asciz	"gimp_image_merge_down"
	.size	.L__func__.gimp_image_merge_down, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_LAYER (current_layer)"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (current_layer))"
	.size	.L.str.8, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cannot merge down to a layer group."
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The layer to merge down to is locked."
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"There is no visible layer to merge down to."
	.size	.L.str.11, 44

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Merge Down"
	.size	.L.str.12, 21

	.type	.L__func__.gimp_image_merge_group_layer,@object # @__func__.gimp_image_merge_group_layer
.L__func__.gimp_image_merge_group_layer:
	.asciz	"gimp_image_merge_group_layer"
	.size	.L__func__.gimp_image_merge_group_layer, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_GROUP_LAYER (group)"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (group))"
	.size	.L.str.14, 42

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp_item_get_image (GIMP_ITEM (group)) == image"
	.size	.L.str.15, 49

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Merge Layer Group"
	.size	.L.str.16, 28

	.type	.L__func__.gimp_image_merge_visible_vectors,@object # @__func__.gimp_image_merge_visible_vectors
.L__func__.gimp_image_merge_visible_vectors:
	.asciz	"gimp_image_merge_visible_vectors"
	.size	.L__func__.gimp_image_merge_visible_vectors, 33

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"undo-type\004Merge Visible Paths"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Not enough visible paths for a merge. There must be at least two."
	.size	.L.str.18, 66

	.type	.L__func__.gimp_image_merge_layers,@object # @__func__.gimp_image_merge_layers
.L__func__.gimp_image_merge_layers:
	.asciz	"gimp_image_merge_layers"
	.size	.L__func__.gimp_image_merge_layers, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: could not allocate merge layer."
	.size	.L.str.19, 36

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"merged layer"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: could not allocate merge layer"
	.size	.L.str.21, 35

	.type	.Lgimp_image_merge_layers.active,@object # @gimp_image_merge_layers.active
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lgimp_image_merge_layers.active:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	.Lgimp_image_merge_layers.active, 16

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"%s: attempting to merge incompatible layers."
	.size	.L.str.22, 45


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
