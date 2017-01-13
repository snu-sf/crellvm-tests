	.text
	.file	"gimpeditselectiontool.bc"
	.globl	gimp_edit_selection_tool_get_type
	.align	16, 0x90
	.type	gimp_edit_selection_tool_get_type,@function
gimp_edit_selection_tool_get_type:      # @gimp_edit_selection_tool_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_edit_selection_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_edit_selection_tool_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_draw_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_edit_selection_tool_class_intern_init, %rdi
	movl	$400, %r8d              # imm = 0x190
	movabsq	$gimp_edit_selection_tool_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_edit_selection_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_edit_selection_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_edit_selection_tool_get_type, .Lfunc_end0-gimp_edit_selection_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_class_intern_init,@function
gimp_edit_selection_tool_class_intern_init: # @gimp_edit_selection_tool_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_edit_selection_tool_parent_class
	cmpl	$0, GimpEditSelectionTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpEditSelectionTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_edit_selection_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_edit_selection_tool_class_intern_init, .Lfunc_end1-gimp_edit_selection_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_init,@function
gimp_edit_selection_tool_init:          # @gimp_edit_selection_tool_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_motion_mode
	movq	-8(%rbp), %rax
	movl	$1, 352(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_edit_selection_tool_init, .Lfunc_end2-gimp_edit_selection_tool_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
.LCPI3_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_edit_selection_tool_start
	.align	16, 0x90
	.type	gimp_edit_selection_tool_start,@function
gimp_edit_selection_tool_start:         # @gimp_edit_selection_tool_start
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
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	callq	gimp_edit_selection_tool_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movl	-32(%rbp), %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, 356(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	cmpl	$4, -28(%rbp)
	je	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$5, -28(%rbp)
	jne	.LBB3_4
.LBB3_2:                                # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB3_4
# BB#3:                                 # %if.then
	movl	$7, -28(%rbp)
.LBB3_4:                                # %if.end
	cmpl	$6, -28(%rbp)
	jne	.LBB3_8
# BB#5:                                 # %if.then.10
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.14
	movl	$7, -28(%rbp)
.LBB3_7:                                # %if.end.15
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.16
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 328(%rcx)
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_edit_selection_tool_get_active_item
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_edit_selection_tool_start_undo_group
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, 248(%rax)
	movq	-40(%rbp), %rax
	movl	%r8d, 264(%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, 252(%rax)
	movq	-40(%rbp), %rax
	movl	%r8d, 268(%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 368(%rax)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 376(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.29
	movl	$0, -132(%rbp)
	jmp	.LBB3_15
.LBB3_10:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_13
# BB#11:                                # %land.lhs.true.31
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_13
# BB#12:                                # %if.then.35
	movl	$1, -132(%rbp)
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.36
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_14:                               # %if.end.38
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.39
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.41
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	jmp	.LBB3_18
.LBB3_17:                               # %if.else.44
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -80(%rbp)
.LBB3_18:                               # %if.end.46
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$272, %rax              # imm = 0x110
	movq	-40(%rbp), %rcx
	addq	$276, %rcx              # imm = 0x114
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-304(%rbp), %r8         # 8-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_channel_boundary
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movslq	272(%rdx), %rdx
	imulq	$20, %rdx, %rdx
	movl	%edx, %r9d
	movq	%rcx, %rdi
	movl	%r9d, %esi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	g_memdup
	movq	-40(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rcx
	movslq	276(%rcx), %rcx
	imulq	$20, %rcx, %rcx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	-40(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-40(%rbp), %rax
	cmpl	$0, 328(%rax)
	jne	.LBB3_20
# BB#19:                                # %if.then.62
	movq	-40(%rbp), %rax
	movl	$0, 296(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 300(%rax)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-40(%rbp), %rdi
	movl	%eax, 304(%rdi)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-40(%rbp), %rdi
	movl	%eax, 308(%rdi)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.65
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$296, %rax              # imm = 0x128
	movq	-40(%rbp), %rcx
	addq	$300, %rcx              # imm = 0x12C
	movq	-40(%rbp), %rdx
	addq	$304, %rdx              # imm = 0x130
	movq	-40(%rbp), %rsi
	addq	$308, %rsi              # imm = 0x134
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-320(%rbp), %r8         # 8-byte Reload
	callq	gimp_item_mask_bounds
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB3_21:                               # %if.end.71
	movq	-40(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm0
	cvtsi2sdl	252(%rax), %xmm1
	movq	%rax, %rdi
	callq	gimp_edit_selection_tool_calc_coords
	movq	-40(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	subq	$7, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	ja	.LBB3_68
# BB#79:                                # %if.end.71
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_22:                               # %sw.bb
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	movl	-84(%rbp), %r9d
	addl	-140(%rbp), %r9d
	movl	%r9d, -140(%rbp)
	movl	-88(%rbp), %r9d
	addl	-144(%rbp), %r9d
	movl	%r9d, -144(%rbp)
	movl	-84(%rbp), %r9d
	addl	-148(%rbp), %r9d
	movl	%r9d, -148(%rbp)
	movl	-88(%rbp), %r9d
	addl	-152(%rbp), %r9d
	movl	%r9d, -152(%rbp)
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB3_68
.LBB3_23:                               # %sw.bb.91
	movq	-40(%rbp), %rax
	movl	296(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movq	-40(%rbp), %rax
	movl	300(%rax), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movq	-40(%rbp), %rax
	movl	304(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movq	-40(%rbp), %rax
	movl	308(%rax), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	jmp	.LBB3_68
.LBB3_24:                               # %sw.bb.100
	movl	-84(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-140(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-368(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	movl	-144(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-372(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -152(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB3_45
# BB#25:                                # %if.then.107
	movl	$1, %esi
	movl	$4, %edx
	movq	-64(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB3_26:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -168(%rbp)
	je	.LBB3_44
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB3_26 Depth=1
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-180(%rbp), %ecx
	movq	-176(%rbp), %rdi
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-376(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -188(%rbp)
	movl	-184(%rbp), %eax
	movq	-176(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-380(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -192(%rbp)
	movl	-140(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB3_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB3_30
.LBB3_29:                               # %cond.false
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB3_30:                               # %cond.end
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-144(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB3_32
# BB#31:                                # %cond.true.126
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-144(%rbp), %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB3_33
.LBB3_32:                               # %cond.false.127
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-184(%rbp), %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB3_33:                               # %cond.end.128
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	-148(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jle	.LBB3_35
# BB#34:                                # %cond.true.132
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB3_36
.LBB3_35:                               # %cond.false.133
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB3_36:                               # %cond.end.134
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	movl	-152(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jle	.LBB3_38
# BB#37:                                # %cond.true.138
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false.139
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-192(%rbp), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB3_39:                               # %cond.end.140
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
# BB#40:                                # %for.inc
                                        #   in Loop: Header=BB3_26 Depth=1
	cmpq	$0, -168(%rbp)
	je	.LBB3_42
# BB#41:                                # %cond.true.143
                                        #   in Loop: Header=BB3_26 Depth=1
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB3_43
.LBB3_42:                               # %cond.false.144
                                        #   in Loop: Header=BB3_26 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB3_43
.LBB3_43:                               # %cond.end.145
                                        #   in Loop: Header=BB3_26 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	jmp	.LBB3_26
.LBB3_44:                               # %for.end
	movq	-160(%rbp), %rdi
	callq	g_list_free
.LBB3_45:                               # %if.end.147
	jmp	.LBB3_68
.LBB3_46:                               # %sw.bb.148
	movq	-72(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	leaq	-216(%rbp), %rcx
	leaq	-224(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_vectors_bounds
	movq	-72(%rbp), %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB3_67
# BB#47:                                # %if.then.158
	movl	$4, %eax
	movq	-64(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_image_item_list_get_list
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB3_48:                               # %for.cond.165
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -240(%rbp)
	je	.LBB3_66
# BB#49:                                # %for.body.167
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-256(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	leaq	-280(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_vectors_bounds
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jbe	.LBB3_51
# BB#50:                                # %cond.true.184
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	jmp	.LBB3_52
.LBB3_51:                               # %cond.false.185
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
.LBB3_52:                               # %cond.end.186
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-448(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_54
# BB#53:                                # %cond.true.190
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	jmp	.LBB3_55
.LBB3_54:                               # %cond.false.191
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
.LBB3_55:                               # %cond.end.192
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-456(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-272(%rbp), %xmm0
	jbe	.LBB3_57
# BB#56:                                # %cond.true.196
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	jmp	.LBB3_58
.LBB3_57:                               # %cond.false.197
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
.LBB3_58:                               # %cond.end.198
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-464(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-280(%rbp), %xmm0
	jbe	.LBB3_60
# BB#59:                                # %cond.true.202
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	jmp	.LBB3_61
.LBB3_60:                               # %cond.false.203
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
.LBB3_61:                               # %cond.end.204
                                        #   in Loop: Header=BB3_48 Depth=1
	movsd	-472(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
# BB#62:                                # %for.inc.206
                                        #   in Loop: Header=BB3_48 Depth=1
	cmpq	$0, -240(%rbp)
	je	.LBB3_64
# BB#63:                                # %cond.true.208
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB3_65
.LBB3_64:                               # %cond.false.210
                                        #   in Loop: Header=BB3_48 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB3_65
.LBB3_65:                               # %cond.end.211
                                        #   in Loop: Header=BB3_48 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -240(%rbp)
	jmp	.LBB3_48
.LBB3_66:                               # %for.end.213
	jmp	.LBB3_67
.LBB3_67:                               # %if.end.214
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -144(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -148(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -152(%rbp)
.LBB3_68:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	cvtsi2sdl	-140(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm0
	cvttsd2si	%xmm0, %esi
	cvtsi2sdl	-144(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	-148(%rbp), %ecx
	subl	-140(%rbp), %ecx
	movl	-152(%rbp), %r8d
	subl	-144(%rbp), %r8d
	callq	gimp_tool_control_set_snap_offsets
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movl	-140(%rbp), %ecx
	addl	-148(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, 312(%rax)
	movl	-144(%rbp), %ecx
	addl	-152(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, 320(%rax)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB3_73
# BB#69:                                # %if.then.244
	movq	-40(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	movl	%edx, -496(%rbp)        # 4-byte Spill
	jb	.LBB3_70
	jmp	.LBB3_82
.LBB3_82:                               # %if.then.244
	movl	-492(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jne	.LBB3_71
	jmp	.LBB3_70
.LBB3_70:                               # %sw.bb.246
	movl	$5, %esi
	movl	$4, %edx
	movq	-64(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	-40(%rbp), %rdi
	movq	%rax, 336(%rdi)
	movq	-40(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gimp_image_item_list_filter
	movl	$2, %esi
	movl	$4, %edx
	movq	-40(%rbp), %rdi
	movq	%rax, 336(%rdi)
	movq	-64(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	-40(%rbp), %rdi
	movq	%rax, 344(%rdi)
	movq	-40(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gimp_image_item_list_filter
	movq	-40(%rbp), %rdi
	movq	%rax, 344(%rdi)
	jmp	.LBB3_72
.LBB3_71:                               # %sw.default
	jmp	.LBB3_72
.LBB3_72:                               # %sw.epilog.255
	jmp	.LBB3_78
.LBB3_73:                               # %if.else.256
	movq	-40(%rbp), %rax
	movl	328(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -504(%rbp)        # 4-byte Spill
	je	.LBB3_74
	jmp	.LBB3_80
.LBB3_80:                               # %if.else.256
	movl	-504(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$3, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jb	.LBB3_75
	jmp	.LBB3_81
.LBB3_81:                               # %if.else.256
	movl	-504(%rbp), %eax        # 4-byte Reload
	addl	$-6, %eax
	subl	$1, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	ja	.LBB3_76
	jmp	.LBB3_74
.LBB3_74:                               # %sw.bb.258
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_append
	movq	-40(%rbp), %rcx
	movq	%rax, 336(%rcx)
	jmp	.LBB3_77
.LBB3_75:                               # %sw.bb.261
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_append
	movq	-40(%rbp), %rcx
	movq	%rax, 344(%rcx)
	jmp	.LBB3_77
.LBB3_76:                               # %sw.default.264
	jmp	.LBB3_77
.LBB3_77:                               # %sw.epilog.265
	jmp	.LBB3_78
.LBB3_78:                               # %if.end.266
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	tool_manager_push_tool
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_selection_pause
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movabsq	$.L.str.2, %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	gettext
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.3, %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movl	-532(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_tool_push_status_coords
	movq	-40(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_edit_selection_tool_start, .Lfunc_end3-gimp_edit_selection_tool_start
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_46
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_23
	.quad	.LBB3_23
	.quad	.LBB3_24
	.quad	.LBB3_24

	.text
	.align	16, 0x90
	.type	gimp_edit_selection_tool_get_active_item,@function
gimp_edit_selection_tool_get_active_item: # @gimp_edit_selection_tool_get_active_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	328(%rsi), %eax
	testl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_6
.LBB4_6:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_7
.LBB4_7:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_4
.LBB4_1:                                # %sw.bb
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %sw.bb.3
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	jmp	.LBB4_5
.LBB4_3:                                # %sw.bb.7
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %sw.default
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB4_5:                                # %sw.epilog
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_edit_selection_tool_get_active_item, .Lfunc_end4-gimp_edit_selection_tool_get_active_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_start_undo_group,@function
gimp_edit_selection_tool_start_undo_group: # @gimp_edit_selection_tool_start_undo_group
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
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_edit_selection_tool_get_active_item
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%edx, -40(%rbp)         # 4-byte Spill
	jb	.LBB5_1
	jmp	.LBB5_7
.LBB5_7:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB5_2
	jmp	.LBB5_8
.LBB5_8:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_9
.LBB5_9:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_3
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	456(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_5
.LBB5_2:                                # %sw.bb.1
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -32(%rbp)
	jmp	.LBB5_5
.LBB5_3:                                # %sw.default
	jmp	.LBB5_4
.LBB5_4:                                # %do.body
	movabsq	$.L.str.8, %rdi
	movl	$8, %esi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movl	$986, %r8d              # imm = 0x3DA
	movabsq	$.L__func__.gimp_edit_selection_tool_start_undo_group, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB5_6
.LBB5_5:                                # %sw.epilog
	movl	$20, %eax
	movl	$16, %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	cmpl	$3, 328(%rdx)
	cmovel	%ecx, %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	callq	gimp_image_undo_group_start
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB5_6:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_edit_selection_tool_start_undo_group, .Lfunc_end5-gimp_edit_selection_tool_start_undo_group
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_calc_coords,@function
gimp_edit_selection_tool_calc_coords:   # @gimp_edit_selection_tool_calc_coords
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	248(%rdi), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	cvtsi2sdl	252(%rdi), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	296(%rdi), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	300(%rdi), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rdi
	movl	296(%rdi), %ecx
	movq	-8(%rbp), %rdi
	subl	248(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 264(%rdi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rdi
	movl	300(%rdi), %ecx
	movq	-8(%rbp), %rdi
	subl	252(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 268(%rdi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_edit_selection_tool_calc_coords, .Lfunc_end6-gimp_edit_selection_tool_calc_coords
	.cfi_endproc

	.globl	gimp_edit_selection_tool_key_press
	.align	16, 0x90
	.type	gimp_edit_selection_tool_key_press,@function
gimp_edit_selection_tool_key_press:     # @gimp_edit_selection_tool_key_press
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, -28(%rbp)
	jmp	.LBB7_6
.LBB7_2:                                # %if.else
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-32(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB7_4
# BB#3:                                 # %if.then.4
	movl	$2, -28(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.5
	movl	$0, -28(%rbp)
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_edit_selection_tool_translate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_edit_selection_tool_key_press, .Lfunc_end7-gimp_edit_selection_tool_key_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4627730092099895296     # double 25
	.text
	.globl	gimp_edit_selection_tool_translate
	.align	16, 0x90
	.type	gimp_edit_selection_tool_translate,@function
gimp_edit_selection_tool_translate:     # @gimp_edit_selection_tool_translate
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$368, %rsp              # imm = 0x170
.Ltmp27:
	.cfi_offset %rbx, -48
.Ltmp28:
	.cfi_offset %r12, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$1, -92(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$3, -116(%rbp)
	movl	$16, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$65361, 28(%rax)        # imm = 0xFF51
	je	.LBB8_5
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpl	$65363, 28(%rax)        # imm = 0xFF53
	je	.LBB8_5
# BB#2:                                 # %land.lhs.true.3
	movq	-56(%rbp), %rax
	cmpl	$65362, 28(%rax)        # imm = 0xFF52
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true.6
	movq	-56(%rbp), %rax
	cmpl	$65364, 28(%rax)        # imm = 0xFF54
	je	.LBB8_5
# BB#4:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_68
.LBB8_5:                                # %if.end
	movq	-72(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_1, %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -132(%rbp)
	cvtsi2sdl	-132(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_7
# BB#6:                                 # %cond.true
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	cvtsi2sdl	-132(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB8_8:                                # %cond.end
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$65361, %eax            # imm = 0xFF51
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$65363, %edx            # imm = 0xFF53
	movl	$1, %esi
	xorl	%edi, %edi
	cvttsd2si	%xmm0, %r8d
	movl	%r8d, -132(%rbp)
	movq	-56(%rbp), %r9
	movq	-56(%rbp), %r10
	movl	24(%r10), %r8d
	orl	$1, %r8d
	imull	$4294967295, -132(%rbp), %r11d # imm = 0xFFFFFFFF
	movq	-56(%rbp), %r10
	movl	24(%r10), %ebx
	andl	$-2, %ebx
	movq	-56(%rbp), %r10
	movl	24(%r10), %r14d
	orl	$1, %r14d
	movl	-132(%rbp), %r15d
	shll	$0, %r15d
	movq	-56(%rbp), %r10
	movl	24(%r10), %r12d
	andl	$-2, %r12d
	movl	%edi, -196(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movl	%esi, -200(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	%eax, %r8d
	movl	%ebx, %r9d
	movl	$-1, (%rsp)
	movl	$65363, 8(%rsp)         # imm = 0xFF53
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	$65363, 32(%rsp)        # imm = 0xFF53
	movl	%r12d, 40(%rsp)
	movl	$1, 48(%rsp)
	movl	$0, 56(%rsp)
	movb	$0, %al
	callq	process_event_queue_keys
	movl	$65362, %ecx            # imm = 0xFF52
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$65364, %esi            # imm = 0xFF54
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %r10
	movl	24(%r10), %eax
	orl	$1, %eax
	imull	$4294967295, -132(%rbp), %r11d # imm = 0xFFFFFFFF
	movq	-56(%rbp), %r10
	movl	24(%r10), %ebx
	andl	$-2, %ebx
	movq	-56(%rbp), %r10
	movl	24(%r10), %r14d
	orl	$1, %r14d
	movl	-132(%rbp), %r15d
	shll	$0, %r15d
	movq	-56(%rbp), %r10
	movl	24(%r10), %r12d
	andl	$-2, %r12d
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	%edx, -216(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -224(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$-1, (%rsp)
	movl	$65364, 8(%rsp)         # imm = 0xFF54
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	$65364, 32(%rsp)        # imm = 0xFF54
	movl	%r12d, 40(%rsp)
	movl	$1, 48(%rsp)
	movl	$0, 56(%rsp)
	movb	$0, %al
	callq	process_event_queue_keys
	movl	%eax, -80(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB8_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$0, -80(%rbp)
	je	.LBB8_40
.LBB8_10:                               # %if.then.38
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB8_13
	jmp	.LBB8_69
.LBB8_69:                               # %if.then.38
	movl	-232(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB8_11
	jmp	.LBB8_70
.LBB8_70:                               # %if.then.38
	movl	-232(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB8_12
	jmp	.LBB8_39
.LBB8_11:                               # %sw.bb
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	$3, -116(%rbp)
	movl	$16, -120(%rbp)
	jmp	.LBB8_39
.LBB8_12:                               # %sw.bb.42
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$20, -120(%rbp)
	jmp	.LBB8_39
.LBB8_13:                               # %sw.bb.46
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB8_38
# BB#14:                                # %if.then.50
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB8_16
# BB#15:                                # %if.then.53
	movl	$0, -156(%rbp)
	jmp	.LBB8_21
.LBB8_16:                               # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_19
# BB#17:                                # %land.lhs.true.55
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB8_19
# BB#18:                                # %if.then.59
	movl	$1, -156(%rbp)
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.60
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB8_20:                               # %if.end.62
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.63
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB8_23
# BB#22:                                # %if.then.65
	movl	$2, -116(%rbp)
	jmp	.LBB8_37
.LBB8_23:                               # %if.else.66
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB8_25
# BB#24:                                # %if.then.75
	movl	$0, -180(%rbp)
	jmp	.LBB8_30
.LBB8_25:                               # %if.else.76
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_28
# BB#26:                                # %land.lhs.true.79
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB8_28
# BB#27:                                # %if.then.84
	movl	$1, -180(%rbp)
	jmp	.LBB8_29
.LBB8_28:                               # %if.else.85
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB8_29:                               # %if.end.87
	jmp	.LBB8_30
.LBB8_30:                               # %if.end.88
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB8_32
# BB#31:                                # %if.then.91
	movl	$1, -116(%rbp)
	jmp	.LBB8_36
.LBB8_32:                               # %if.else.92
	movq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB8_34
# BB#33:                                # %if.then.97
	movl	$7, -116(%rbp)
	jmp	.LBB8_35
.LBB8_34:                               # %if.else.98
	movl	$6, -116(%rbp)
.LBB8_35:                               # %if.end.99
	jmp	.LBB8_36
.LBB8_36:                               # %if.end.100
	jmp	.LBB8_37
.LBB8_37:                               # %if.end.101
	movl	$20, -120(%rbp)
.LBB8_38:                               # %if.end.102
	jmp	.LBB8_39
.LBB8_39:                               # %sw.epilog
	jmp	.LBB8_40
.LBB8_40:                               # %if.end.103
	cmpq	$0, -112(%rbp)
	jne	.LBB8_42
# BB#41:                                # %if.then.105
	movl	$1, -36(%rbp)
	jmp	.LBB8_68
.LBB8_42:                               # %if.end.106
	movl	-116(%rbp), %eax
	subl	$7, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jne	.LBB8_44
	jmp	.LBB8_43
.LBB8_43:                               # %sw.bb.107
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -128(%rbp)
	jmp	.LBB8_45
.LBB8_44:                               # %sw.default
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	456(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB8_45:                               # %sw.epilog.110
	movq	-104(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	-120(%rbp), %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB8_50
# BB#46:                                # %land.lhs.true.114
	movl	$80, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_50
# BB#47:                                # %land.lhs.true.119
	movl	$80, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-112(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_50
# BB#48:                                # %land.lhs.true.124
	movl	$80, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	-116(%rbp), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rax
	jne	.LBB8_50
# BB#49:                                # %if.then.130
	movl	$0, -92(%rbp)
.LBB8_50:                               # %if.end.131
	cmpl	$0, -92(%rbp)
	je	.LBB8_56
# BB#51:                                # %if.then.133
	movq	-104(%rbp), %rdi
	movl	-120(%rbp), %esi
	movq	-128(%rbp), %rdx
	callq	gimp_image_undo_group_start
	cmpl	$0, %eax
	je	.LBB8_55
# BB#52:                                # %if.then.136
	movq	-104(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	-120(%rbp), %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB8_54
# BB#53:                                # %if.then.140
	movl	$80, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	-112(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movl	-116(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB8_54:                               # %if.end.145
	jmp	.LBB8_55
.LBB8_55:                               # %if.end.146
	jmp	.LBB8_56
.LBB8_56:                               # %if.end.147
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$7, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	ja	.LBB8_64
# BB#71:                                # %if.end.147
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_57:                               # %sw.bb.148
	movq	-112(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	gimp_item_translate
	jmp	.LBB8_64
.LBB8_58:                               # %sw.bb.149
	jmp	.LBB8_64
.LBB8_59:                               # %sw.bb.150
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB8_61
# BB#60:                                # %if.then.153
	movq	-112(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	gimp_item_linked_translate
	jmp	.LBB8_62
.LBB8_61:                               # %if.else.154
	movq	-112(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	gimp_item_translate
.LBB8_62:                               # %if.end.155
	jmp	.LBB8_64
.LBB8_63:                               # %sw.bb.156
	movq	-112(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	gimp_item_translate
.LBB8_64:                               # %sw.epilog.157
	cmpl	$0, -92(%rbp)
	je	.LBB8_66
# BB#65:                                # %if.then.159
	movq	-104(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB8_67
.LBB8_66:                               # %if.else.161
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_undo_refresh_preview
.LBB8_67:                               # %if.end.163
	movq	-104(%rbp), %rdi
	callq	gimp_image_flush
	movl	$1, -36(%rbp)
.LBB8_68:                               # %return
	movl	-36(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_edit_selection_tool_translate, .Lfunc_end8-gimp_edit_selection_tool_translate
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_59
	.quad	.LBB8_59
	.quad	.LBB8_57
	.quad	.LBB8_57
	.quad	.LBB8_58
	.quad	.LBB8_58
	.quad	.LBB8_59
	.quad	.LBB8_63

	.text
	.align	16, 0x90
	.type	process_event_queue_keys,@function
process_event_queue_keys:               # @process_event_queue_keys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$1168, %rsp             # imm = 0x490
	testb	%al, %al
	movaps	%xmm7, -896(%rbp)       # 16-byte Spill
	movaps	%xmm6, -912(%rbp)       # 16-byte Spill
	movaps	%xmm5, -928(%rbp)       # 16-byte Spill
	movaps	%xmm4, -944(%rbp)       # 16-byte Spill
	movaps	%xmm3, -960(%rbp)       # 16-byte Spill
	movaps	%xmm2, -976(%rbp)       # 16-byte Spill
	movaps	%xmm1, -992(%rbp)       # 16-byte Spill
	movaps	%xmm0, -1008(%rbp)      # 16-byte Spill
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%r9, -1024(%rbp)        # 8-byte Spill
	movq	%r8, -1032(%rbp)        # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	movq	%rsi, -1056(%rbp)       # 8-byte Spill
	je	.LBB9_61
# BB#60:                                # %entry
	movaps	-1008(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -832(%rbp)
	movaps	-992(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -816(%rbp)
	movaps	-976(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -800(%rbp)
	movaps	-960(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -784(%rbp)
	movaps	-944(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -768(%rbp)
	movaps	-928(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -752(%rbp)
	movaps	-912(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -736(%rbp)
	movaps	-896(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -720(%rbp)
.LBB9_61:                               # %entry
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -840(%rbp)
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -848(%rbp)
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -856(%rbp)
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -864(%rbp)
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -872(%rbp)
	movq	-1016(%rbp), %r8        # 8-byte Reload
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -676(%rbp)
	movl	$0, -680(%rbp)
	movl	$0, -684(%rbp)
	movl	$0, -688(%rbp)
	leaq	-880(%rbp), %r8
	movq	%r8, 16(%r9)
	leaq	16(%rbp), %r8
	movq	%r8, 8(%r9)
	movl	$48, 4(%r9)
	movl	$8, (%r9)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$50, -680(%rbp)
	movb	%cl, -1057(%rbp)        # 1-byte Spill
	jge	.LBB9_6
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	ja	.LBB9_4
# BB#3:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1072(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
.LBB9_5:                                # %vaarg.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-680(%rbp), %rax
	movl	%ecx, -256(%rbp,%rax,4)
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -1057(%rbp)        # 1-byte Spill
.LBB9_6:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-1057(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_7
	jmp	.LBB9_14
.LBB9_7:                                # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	movl	%ecx, -1100(%rbp)       # 4-byte Spill
	ja	.LBB9_9
# BB#8:                                 # %vaarg.in_reg.8
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-1100(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1096(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %vaarg.in_mem.10
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
.LBB9_10:                               # %vaarg.end.14
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-1112(%rbp), %rax       # 8-byte Reload
	leaq	-32(%rbp), %rcx
	movl	(%rax), %edx
	movslq	-680(%rbp), %rax
	movl	%edx, -464(%rbp,%rax,4)
	movl	-32(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	movl	%edx, -1124(%rbp)       # 4-byte Spill
	ja	.LBB9_12
# BB#11:                                # %vaarg.in_reg.22
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-1124(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1120(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %vaarg.in_mem.24
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1136(%rbp)       # 8-byte Spill
.LBB9_13:                               # %vaarg.end.28
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-680(%rbp), %rax
	movl	%ecx, -672(%rbp,%rax,4)
	movl	-680(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -680(%rbp)
	jmp	.LBB9_1
.LBB9_14:                               # %while.end
	leaq	-32(%rbp), %rax
	movl	$0, -676(%rbp)
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB9_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-676(%rbp), %eax
	cmpl	-680(%rbp), %eax
	jge	.LBB9_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movslq	-676(%rbp), %rax
	cmpl	-256(%rbp,%rax,4), %ecx
	jne	.LBB9_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movslq	-676(%rbp), %rax
	andl	-464(%rbp,%rax,4), %ecx
	movslq	-676(%rbp), %rax
	cmpl	-464(%rbp,%rax,4), %ecx
	jne	.LBB9_19
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB9_15 Depth=1
	movslq	-676(%rbp), %rax
	movl	-672(%rbp,%rax,4), %ecx
	addl	-684(%rbp), %ecx
	movl	%ecx, -684(%rbp)
.LBB9_19:                               # %if.end
                                        #   in Loop: Header=BB9_15 Depth=1
	jmp	.LBB9_20
.LBB9_20:                               # %for.inc
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	-676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)
	jmp	.LBB9_15
.LBB9_21:                               # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_get_event_widget
	movq	%rax, -696(%rbp)
.LBB9_22:                               # %while.cond.46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_30 Depth 2
	callq	gdk_events_pending
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -1145(%rbp)        # 1-byte Spill
	jle	.LBB9_24
# BB#23:                                # %land.rhs.49
                                        #   in Loop: Header=BB9_22 Depth=1
	cmpl	$0, -688(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -1145(%rbp)        # 1-byte Spill
.LBB9_24:                               # %land.end.50
                                        #   in Loop: Header=BB9_22 Depth=1
	movb	-1145(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_25
	jmp	.LBB9_52
.LBB9_25:                               # %while.body.51
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	$0, -700(%rbp)
	callq	gdk_event_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_27
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-696(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gtk_get_event_widget
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB9_28
.LBB9_27:                               # %if.then.56
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	$1, -688(%rbp)
	jmp	.LBB9_45
.LBB9_28:                               # %if.else
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$8, (%rax)
	jne	.LBB9_39
# BB#29:                                # %if.then.58
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	$0, -676(%rbp)
.LBB9_30:                               # %for.cond.59
                                        #   Parent Loop BB9_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-676(%rbp), %eax
	cmpl	-680(%rbp), %eax
	jge	.LBB9_36
# BB#31:                                # %for.body.61
                                        #   in Loop: Header=BB9_30 Depth=2
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	movslq	-676(%rbp), %rax
	cmpl	-256(%rbp,%rax,4), %ecx
	jne	.LBB9_34
# BB#32:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB9_30 Depth=2
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	movslq	-676(%rbp), %rax
	andl	-464(%rbp,%rax,4), %ecx
	movslq	-676(%rbp), %rax
	cmpl	-464(%rbp,%rax,4), %ecx
	jne	.LBB9_34
# BB#33:                                # %if.then.75
                                        #   in Loop: Header=BB9_30 Depth=2
	movl	$1, -700(%rbp)
	movslq	-676(%rbp), %rax
	movl	-672(%rbp,%rax,4), %ecx
	addl	-684(%rbp), %ecx
	movl	%ecx, -684(%rbp)
.LBB9_34:                               # %if.end.79
                                        #   in Loop: Header=BB9_30 Depth=2
	jmp	.LBB9_35
.LBB9_35:                               # %for.inc.80
                                        #   in Loop: Header=BB9_30 Depth=2
	movl	-676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -676(%rbp)
	jmp	.LBB9_30
.LBB9_36:                               # %for.end.82
                                        #   in Loop: Header=BB9_22 Depth=1
	cmpl	$0, -700(%rbp)
	jne	.LBB9_38
# BB#37:                                # %if.then.84
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	$1, -688(%rbp)
.LBB9_38:                               # %if.end.85
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_44
.LBB9_39:                               # %if.else.86
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$9, (%rax)
	je	.LBB9_43
# BB#40:                                # %land.lhs.true.90
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$3, (%rax)
	je	.LBB9_43
# BB#41:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$2, (%rax)
	je	.LBB9_43
# BB#42:                                # %if.then.98
                                        #   in Loop: Header=BB9_22 Depth=1
	movl	$0, -688(%rbp)
.LBB9_43:                               # %if.end.99
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_44
.LBB9_44:                               # %if.end.100
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_45
.LBB9_45:                               # %if.end.101
                                        #   in Loop: Header=BB9_22 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB9_47
# BB#46:                                # %if.then.103
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_51
.LBB9_47:                               # %if.else.104
                                        #   in Loop: Header=BB9_22 Depth=1
	cmpl	$0, -700(%rbp)
	jne	.LBB9_49
# BB#48:                                # %if.then.106
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	jmp	.LBB9_50
.LBB9_49:                               # %if.else.108
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-40(%rbp), %rdi
	callq	gdk_event_free
.LBB9_50:                               # %if.end.109
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_51
.LBB9_51:                               # %if.end.110
                                        #   in Loop: Header=BB9_22 Depth=1
	jmp	.LBB9_22
.LBB9_52:                               # %while.end.111
	movq	-48(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB9_53:                               # %for.cond.113
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB9_59
# BB#54:                                # %for.body.115
                                        #   in Loop: Header=BB9_53 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gdk_event_put
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gdk_event_free
# BB#55:                                # %for.inc.117
                                        #   in Loop: Header=BB9_53 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB9_57
# BB#56:                                # %cond.true
                                        #   in Loop: Header=BB9_53 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB9_58
.LBB9_57:                               # %cond.false
                                        #   in Loop: Header=BB9_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB9_58
.LBB9_58:                               # %cond.end
                                        #   in Loop: Header=BB9_53 Depth=1
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB9_53
.LBB9_59:                               # %for.end.119
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movl	-684(%rbp), %eax
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end9:
	.size	process_event_queue_keys, .Lfunc_end9-process_event_queue_keys
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_class_init,@function
gimp_edit_selection_tool_class_init:    # @gimp_edit_selection_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_edit_selection_tool_draw, %rsi
	movabsq	$gimp_edit_selection_tool_active_modifier_key, %rdi
	movabsq	$gimp_edit_selection_tool_motion, %rcx
	movabsq	$gimp_edit_selection_tool_button_release, %rdx
	movabsq	$gimp_edit_selection_tool_finalize, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 240(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_edit_selection_tool_class_init, .Lfunc_end10-gimp_edit_selection_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_finalize,@function
gimp_edit_selection_tool_finalize:      # @gimp_edit_selection_tool_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_edit_selection_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 272(%rax)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 276(%rax)
.LBB11_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB11_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	336(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 336(%rax)
.LBB11_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB11_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 344(%rax)
.LBB11_8:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_edit_selection_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_edit_selection_tool_finalize, .Lfunc_end11-gimp_edit_selection_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_button_release,@function
gimp_edit_selection_tool_button_release: # @gimp_edit_selection_tool_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_edit_selection_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_halt
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_pop_tool
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_edit_selection_tool_calc_coords
	movl	$1, %r8d
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	344(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	256(%rax), %edx
	movq	-48(%rbp), %rax
	movl	260(%rax), %ecx
	callq	gimp_image_item_list_translate
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	cmpl	$1, -28(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_image_flush
	movq	-48(%rbp), %rdi
	cmpl	$0, 356(%rdi)
	je	.LBB12_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	cmpq	$0, %rax
	je	.LBB12_5
# BB#4:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_button_release_active
.LBB12_5:                               # %if.end.13
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_edit_selection_tool_button_release, .Lfunc_end12-gimp_edit_selection_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_motion,@function
gimp_edit_selection_tool_motion:        # @gimp_edit_selection_tool_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_edit_selection_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 384(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 392(%rax)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_edit_selection_tool_update_motion
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_edit_selection_tool_motion, .Lfunc_end13-gimp_edit_selection_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_active_modifier_key,@function
gimp_edit_selection_tool_active_modifier_key: # @gimp_edit_selection_tool_active_modifier_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_edit_selection_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_get_constrain_behavior_mask
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-52(%rbp), %r9d         # 4-byte Reload
	andl	%eax, %r9d
	cmpl	$0, %r9d
	cmovnel	%edx, %ecx
	movq	-40(%rbp), %rsi
	movl	%ecx, 360(%rsi)
	movl	-20(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	392(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	gimp_edit_selection_tool_update_motion
.LBB14_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_edit_selection_tool_active_modifier_key, .Lfunc_end14-gimp_edit_selection_tool_active_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_edit_selection_tool_draw,@function
gimp_edit_selection_tool_draw:          # @gimp_edit_selection_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_edit_selection_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_edit_selection_tool_get_active_item
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$7, %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	ja	.LBB15_60
# BB#61:                                # %entry
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rdx
	cmpl	$3, 328(%rdx)
	jne	.LBB15_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.9
	movq	-64(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	movl	%eax, -44(%rbp)
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %if.end.11
	cmpl	$0, -44(%rbp)
	jne	.LBB15_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB15_8
# BB#7:                                 # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	280(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	272(%rdx), %edx
	movq	-16(%rbp), %r8
	movl	256(%r8), %eax
	addl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %r8
	movl	260(%r8), %eax
	addl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	gimp_draw_tool_add_boundary
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB15_8:                               # %if.end.19
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB15_10
# BB#9:                                 # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	288(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	276(%rdx), %edx
	movq	-16(%rbp), %r8
	movl	256(%r8), %eax
	addl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %r8
	movl	260(%r8), %eax
	addl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	gimp_draw_tool_add_boundary
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB15_13
.LBB15_10:                              # %if.else
	movq	-16(%rbp), %rax
	cmpl	$3, 328(%rax)
	je	.LBB15_12
# BB#11:                                # %if.then.33
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	256(%rax), %ecx
	addl	-48(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	addl	-52(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-40(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm2
	movq	-40(%rbp), %rdi
	movsd	%xmm2, -296(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm3
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-296(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB15_12:                              # %if.end.45
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.46
	jmp	.LBB15_60
.LBB15_14:                              # %sw.bb.47
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_offset
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	296(%rdx), %eax
	addl	-68(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %rdx
	movl	300(%rdx), %eax
	addl	-72(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-16(%rbp), %rdx
	movl	304(%rdx), %eax
	movq	-16(%rbp), %rdx
	subl	296(%rdx), %eax
	cvtsi2sdl	%eax, %xmm2
	movq	-16(%rbp), %rdx
	movl	308(%rdx), %eax
	movq	-16(%rbp), %rdx
	subl	300(%rdx), %eax
	cvtsi2sdl	%eax, %xmm3
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB15_60
.LBB15_15:                              # %sw.bb.60
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-316(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movl	-80(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-320(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB15_36
# BB#16:                                # %if.then.71
	movl	$1, %esi
	movl	$4, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_image_item_list_get_list
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB15_17:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB15_35
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB15_17 Depth=1
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-116(%rbp), %ecx
	movq	-112(%rbp), %rdi
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-324(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	movl	-120(%rbp), %eax
	movq	-112(%rbp), %rdi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-328(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB15_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB15_21
.LBB15_20:                              # %cond.false
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB15_21:                              # %cond.end
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB15_23
# BB#22:                                # %cond.true.83
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB15_24
.LBB15_23:                              # %cond.false.84
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB15_24:                              # %cond.end.85
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jle	.LBB15_26
# BB#25:                                # %cond.true.89
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB15_27
.LBB15_26:                              # %cond.false.90
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB15_27:                              # %cond.end.91
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB15_29
# BB#28:                                # %cond.true.95
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB15_30
.LBB15_29:                              # %cond.false.96
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB15_30:                              # %cond.end.97
                                        #   in Loop: Header=BB15_17 Depth=1
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB15_17 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB15_33
# BB#32:                                # %cond.true.100
                                        #   in Loop: Header=BB15_17 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB15_34
.LBB15_33:                              # %cond.false.101
                                        #   in Loop: Header=BB15_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB15_34
.LBB15_34:                              # %cond.end.102
                                        #   in Loop: Header=BB15_17 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB15_17
.LBB15_35:                              # %for.end
	movq	-96(%rbp), %rdi
	callq	g_list_free
.LBB15_36:                              # %if.end.104
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-76(%rbp), %xmm0
	cvtsi2sdl	-80(%rbp), %xmm1
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB15_60
.LBB15_37:                              # %sw.bb.112
	movq	-40(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_vectors_bounds
	movq	-40(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB15_58
# BB#38:                                # %if.then.122
	movl	$4, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_image_item_list_get_list
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_image_item_list_filter
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB15_39:                              # %for.cond.127
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB15_57
# BB#40:                                # %for.body.129
                                        #   in Loop: Header=BB15_39 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	leaq	-216(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_vectors_bounds
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jbe	.LBB15_42
# BB#41:                                # %cond.true.141
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB15_43
.LBB15_42:                              # %cond.false.142
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
.LBB15_43:                              # %cond.end.143
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_45
# BB#44:                                # %cond.true.147
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	jmp	.LBB15_46
.LBB15_45:                              # %cond.false.148
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
.LBB15_46:                              # %cond.end.149
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-208(%rbp), %xmm0
	jbe	.LBB15_48
# BB#47:                                # %cond.true.153
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	jmp	.LBB15_49
.LBB15_48:                              # %cond.false.154
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
.LBB15_49:                              # %cond.end.155
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-416(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-216(%rbp), %xmm0
	jbe	.LBB15_51
# BB#50:                                # %cond.true.159
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	jmp	.LBB15_52
.LBB15_51:                              # %cond.false.160
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
.LBB15_52:                              # %cond.end.161
                                        #   in Loop: Header=BB15_39 Depth=1
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
# BB#53:                                # %for.inc.163
                                        #   in Loop: Header=BB15_39 Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB15_55
# BB#54:                                # %cond.true.165
                                        #   in Loop: Header=BB15_39 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB15_56
.LBB15_55:                              # %cond.false.167
                                        #   in Loop: Header=BB15_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB15_56
.LBB15_56:                              # %cond.end.168
                                        #   in Loop: Header=BB15_39 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	jmp	.LBB15_39
.LBB15_57:                              # %for.end.170
	movq	-168(%rbp), %rdi
	callq	g_list_free
.LBB15_58:                              # %if.end.171
	xorl	%esi, %esi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%esi, -436(%rbp)        # 4-byte Spill
	callq	floor
	movsd	%xmm0, -136(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, -144(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -152(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, -160(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-136(%rbp), %xmm2
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-144(%rbp), %xmm3
	movl	-436(%rbp), %esi        # 4-byte Reload
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB15_60
.LBB15_59:                              # %sw.bb.179
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	280(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movl	272(%rdx), %edx
	movq	-16(%rbp), %r8
	cvtsi2sdl	256(%r8), %xmm0
	movq	-16(%rbp), %r8
	cvtsi2sdl	260(%r8), %xmm1
	callq	gimp_draw_tool_add_boundary
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB15_60:                              # %sw.epilog
	movl	$4, %esi
	movl	$7, %eax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movsd	312(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	cvtsi2sdl	256(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	320(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rcx
	cvtsi2sdl	260(%rcx), %xmm2
	addsd	%xmm2, %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	gimp_edit_selection_tool_parent_class, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_edit_selection_tool_draw, .Lfunc_end15-gimp_edit_selection_tool_draw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_37
	.quad	.LBB15_1
	.quad	.LBB15_1
	.quad	.LBB15_1
	.quad	.LBB15_14
	.quad	.LBB15_14
	.quad	.LBB15_15
	.quad	.LBB15_59

	.text
	.align	16, 0x90
	.type	gimp_edit_selection_tool_update_motion,@function
gimp_edit_selection_tool_update_motion: # @gimp_edit_selection_tool_update_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	callq	gdk_flush
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_edit_selection_tool_get_active_item
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rax
	cmpl	$0, 360(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$4, %edx
	movq	-8(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	376(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_constrain_line
.LBB16_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_edit_selection_tool_calc_coords
	movq	-8(%rbp), %rdi
	movl	264(%rdi), %eax
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rdi
	movl	268(%rdi), %eax
	movl	%eax, -96(%rbp)
	movq	-8(%rbp), %rdi
	movl	248(%rdi), %eax
	cmpl	-92(%rbp), %eax
	jne	.LBB16_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	cmpl	-96(%rbp), %ecx
	je	.LBB16_12
.LBB16_4:                               # %if.then.13
	movq	$0, -112(%rbp)
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	248(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	252(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	256(%rcx), %edx
	addl	%eax, %edx
	movl	%edx, 256(%rcx)
	movl	-104(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	260(%rcx), %edx
	addl	%eax, %edx
	movl	%edx, 260(%rcx)
	movq	-8(%rbp), %rcx
	movl	328(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	subq	$7, %rsi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	ja	.LBB16_11
# BB#14:                                # %if.then.13
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_5:                               # %sw.bb
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 248(%rcx)
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 252(%rcx)
.LBB16_6:                               # %sw.bb.21
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rsi
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	352(%rax), %r8d
	callq	gimp_image_item_list_translate
	jmp	.LBB16_11
.LBB16_7:                               # %sw.bb.22
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	xorl	%ecx, %ecx
	leaq	-112(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpl	$4, 328(%rdi)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rax, %rdx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-188(%rbp), %r8d        # 4-byte Reload
	movl	-188(%rbp), %r9d        # 4-byte Reload
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_selection_float
	cmpq	$0, %rax
	jne	.LBB16_9
# BB#8:                                 # %if.then.34
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-112(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-112(%rbp), %rdi
	callq	g_clear_error
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB16_13
.LBB16_9:                               # %if.end.37
	movq	-8(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	248(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 248(%rax)
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	252(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 252(%rax)
	movq	-8(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	304(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 304(%rax)
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	308(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 308(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 296(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 300(%rax)
	movq	-8(%rbp), %rax
	movl	$7, 328(%rax)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_edit_selection_tool_get_active_item
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 336(%rsi)
.LBB16_10:                              # %sw.bb.52
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rsi
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	352(%rax), %r8d
	callq	gimp_image_item_list_translate
.LBB16_11:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movl	$0, 352(%rax)
.LBB16_12:                              # %if.end.56
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, %rdi
	callq	gimp_projection_flush
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movabsq	$.L.str.2, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-8(%rbp), %rsi
	cvtsi2sdl	256(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	cvtsi2sdl	260(%rsi), %xmm1
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	-220(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_tool_push_status_coords
	movq	-40(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB16_13:                              # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_edit_selection_tool_update_motion, .Lfunc_end16-gimp_edit_selection_tool_update_motion
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_5
	.quad	.LBB16_5
	.quad	.LBB16_5
	.quad	.LBB16_5
	.quad	.LBB16_7
	.quad	.LBB16_7
	.quad	.LBB16_6
	.quad	.LBB16_10

	.type	gimp_edit_selection_tool_get_type.g_define_type_id__volatile,@object # @gimp_edit_selection_tool_get_type.g_define_type_id__volatile
	.local	gimp_edit_selection_tool_get_type.g_define_type_id__volatile
	.comm	gimp_edit_selection_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpEditSelectionTool"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tool-info"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Move: "
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	", "
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Move Floating Selection"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"edit-selection-tool"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"edit-selection-item"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"edit-selection-type"
	.size	.L.str.7, 20

	.type	gimp_edit_selection_tool_parent_class,@object # @gimp_edit_selection_tool_parent_class
	.local	gimp_edit_selection_tool_parent_class
	.comm	gimp_edit_selection_tool_parent_class,8,8
	.type	GimpEditSelectionTool_private_offset,@object # @GimpEditSelectionTool_private_offset
	.local	GimpEditSelectionTool_private_offset
	.comm	GimpEditSelectionTool_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Tools"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpeditselectiontool.c"
	.size	.L.str.10, 24

	.type	.L__func__.gimp_edit_selection_tool_start_undo_group,@object # @__func__.gimp_edit_selection_tool_start_undo_group
.L__func__.gimp_edit_selection_tool_start_undo_group:
	.asciz	"gimp_edit_selection_tool_start_undo_group"
	.size	.L__func__.gimp_edit_selection_tool_start_undo_group, 42


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
