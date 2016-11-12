	.text
	.file	"gimpbrushtool.bc"
	.globl	gimp_brush_tool_get_type
	.align	16, 0x90
	.type	gimp_brush_tool_get_type,@function
gimp_brush_tool_get_type:               # @gimp_brush_tool_get_type
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
	movq	gimp_brush_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_paint_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %edx              # imm = 0x130
	movabsq	$gimp_brush_tool_class_intern_init, %rdi
	movl	$360, %r8d              # imm = 0x168
	movabsq	$gimp_brush_tool_init, %rcx
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
	movabsq	$gimp_brush_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_tool_get_type, .Lfunc_end0-gimp_brush_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_class_intern_init,@function
gimp_brush_tool_class_intern_init:      # @gimp_brush_tool_class_intern_init
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
	movq	%rax, gimp_brush_tool_parent_class
	cmpl	$0, GimpBrushTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_tool_class_intern_init, .Lfunc_end1-gimp_brush_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_init,@function
gimp_brush_tool_init:                   # @gimp_brush_tool_init
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
	movabsq	$.L.str.13, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_2
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_3
	movabsq	$.L.str.15, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_4
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_object_1
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$1, 336(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 340(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 344(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 352(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_tool_init, .Lfunc_end2-gimp_brush_tool_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4611686018427387904     # double 2
.LCPI3_1:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	gimp_brush_tool_create_outline
	.align	16, 0x90
	.type	gimp_brush_tool_create_outline,@function
gimp_brush_tool_create_outline:         # @gimp_brush_tool_create_outline
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_brush_tool_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_tool_create_outline, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_display_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_tool_create_outline, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	cmpl	$0, 340(%rax)
	jne	.LBB3_26
# BB#25:                                # %if.then.40
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_26:                               # %if.end.41
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB3_28
# BB#27:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	jne	.LBB3_29
.LBB3_28:                               # %if.then.54
	movq	$0, -8(%rbp)
	jmp	.LBB3_38
.LBB3_29:                               # %if.end.55
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	384(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_31
# BB#30:                                # %if.then.57
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	352(%rax), %rdi
	movq	-48(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	408(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	392(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	400(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_boundary
	movq	%rax, -72(%rbp)
.LBB3_31:                               # %if.end.61
	cmpq	$0, -72(%rbp)
	je	.LBB3_37
# BB#32:                                # %land.lhs.true.63
	cvtsi2sdl	-76(%rbp), %xmm0
	movq	-64(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	cmpl	$4, %ecx
	jle	.LBB3_37
# BB#33:                                # %land.lhs.true.68
	cvtsi2sdl	-80(%rbp), %xmm0
	movq	-64(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	cmpl	$4, %ecx
	jle	.LBB3_37
# BB#34:                                # %if.then.75
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtsi2sdl	-80(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_paint_options_get_brush_mode
	cmpl	$0, %eax
	jne	.LBB3_36
# BB#35:                                # %if.then.83
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-32(%rbp), %xmm1
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	rint
	movsd	%xmm0, -32(%rbp)
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	callq	rint
	movsd	%xmm0, -40(%rbp)
.LBB3_36:                               # %if.end.87
	xorl	%edx, %edx
	movl	$2, %ecx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_canvas_path_new
	movq	%rax, -8(%rbp)
	jmp	.LBB3_38
.LBB3_37:                               # %if.end.89
	movq	$0, -8(%rbp)
.LBB3_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_tool_create_outline, .Lfunc_end3-gimp_brush_tool_create_outline
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_class_init,@function
gimp_brush_tool_class_init:             # @gimp_brush_tool_class_init
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
	movabsq	$gimp_brush_tool_draw, %rsi
	movabsq	$gimp_brush_tool_options_notify, %rdi
	movabsq	$gimp_brush_tool_cursor_update, %rcx
	movabsq	$gimp_brush_tool_oper_update, %rdx
	movabsq	$gimp_brush_tool_motion, %r8
	movabsq	$gimp_brush_tool_constructed, %r9
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 256(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 272(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_tool_class_init, .Lfunc_end4-gimp_brush_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_constructed,@function
gimp_brush_tool_constructed:            # @gimp_brush_tool_constructed
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	gimp_brush_tool_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.11
	movl	$0, -60(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.14
	movl	$1, -60(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.15
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_9:                                # %if.end.17
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.18
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.20
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$135, %edx
	movabsq	$.L__func__.gimp_brush_tool_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.22
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_brush_tool_notify_brush, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	472(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 336(%rax)
	movq	-40(%rbp), %rax
	movl	468(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 340(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_brush_tool_notify_brush, %rcx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_options
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_brush_tool_brush_changed, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_brush_tool_set_brush, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -168(%rbp)        # 8-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_tool_constructed, .Lfunc_end5-gimp_brush_tool_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_motion,@function
gimp_brush_tool_motion:                 # @gimp_brush_tool_motion
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	gimp_brush_tool_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 344(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 352(%rax)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_tool_motion, .Lfunc_end6-gimp_brush_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_oper_update,@function
gimp_brush_tool_oper_update:            # @gimp_brush_tool_oper_update
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	gimp_brush_tool_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	jne	.LBB7_6
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB7_6
# BB#2:                                 # %land.lhs.true.17
	cmpl	$0, -24(%rbp)
	je	.LBB7_6
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 344(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 352(%rax)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_brush
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_brush_core_set_brush
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_dynamics
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_brush_core_set_dynamics
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 220(%rax)
	je	.LBB7_5
# BB#4:                                 # %if.then.28
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_brush_core_eval_transform_dynamics
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.29
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_tool_oper_update, .Lfunc_end7-gimp_brush_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_cursor_update,@function
gimp_brush_tool_cursor_update:          # @gimp_brush_tool_cursor_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_brush_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	328(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	jne	.LBB8_9
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB8_3
# BB#2:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	jne	.LBB8_4
.LBB8_3:                                # %if.then.11
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_control_get_cursor
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_tool_control_get_tool_cursor
	movl	$1, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_tool_set_cursor
	jmp	.LBB8_10
.LBB8_4:                                # %if.else
	movq	-40(%rbp), %rax
	cmpl	$0, 336(%rax)
	jne	.LBB8_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_cursor_modifier
	cmpl	$1, %eax
	je	.LBB8_7
# BB#6:                                 # %if.then.18
	movl	$1024, %edx             # imm = 0x400
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_set_cursor
	jmp	.LBB8_10
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.19
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.20
	movq	gimp_brush_tool_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
.LBB8_10:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_tool_cursor_update, .Lfunc_end8-gimp_brush_tool_cursor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_options_notify,@function
gimp_brush_tool_options_notify:         # @gimp_brush_tool_options_notify
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	gimp_brush_tool_parent_class, %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %lor.lhs.false.6
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_4
.LBB9_3:                                # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	352(%rdi), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name
.LBB9_4:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_tool_options_notify, .Lfunc_end9-gimp_brush_tool_options_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_draw,@function
gimp_brush_tool_draw:                   # @gimp_brush_tool_draw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_brush_tool_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_tool_is_enabled
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_7
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	movq	-16(%rbp), %rax
	movsd	344(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	352(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_brush_tool_create_outline
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 336(%rax)
	jne	.LBB10_5
# BB#4:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	movl	$4, %esi
	xorl	%edx, %edx
	movl	$7, %ecx
	movq	-16(%rbp), %rdi
	movsd	344(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	352(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gimp_canvas_handle_new
	movq	%rax, -24(%rbp)
.LBB10_5:                               # %if.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB10_7
# BB#6:                                 # %if.then.18
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_draw_tool_add_item
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
.LBB10_7:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_tool_draw, .Lfunc_end10-gimp_brush_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_notify_brush,@function
gimp_brush_tool_notify_brush:           # @gimp_brush_tool_notify_brush
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	movl	472(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 336(%rax)
	movq	-8(%rbp), %rax
	movl	468(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 340(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_tool_notify_brush, .Lfunc_end11-gimp_brush_tool_notify_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_brush_changed,@function
gimp_brush_tool_brush_changed:          # @gimp_brush_tool_brush_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_brush_core_set_brush
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_tool_brush_changed, .Lfunc_end12-gimp_brush_tool_brush_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tool_set_brush,@function
gimp_brush_tool_set_brush:              # @gimp_brush_tool_set_brush
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 220(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	addq	$112, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	gimp_brush_core_eval_transform_dynamics
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_tool_set_brush, .Lfunc_end13-gimp_brush_tool_set_brush
	.cfi_endproc

	.type	gimp_brush_tool_get_type.g_define_type_id__volatile,@object # @gimp_brush_tool_get_type.g_define_type_id__volatile
	.local	gimp_brush_tool_get_type.g_define_type_id__volatile
	.comm	gimp_brush_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_brush_tool_create_outline,@object # @__func__.gimp_brush_tool_create_outline
.L__func__.gimp_brush_tool_create_outline:
	.asciz	"gimp_brush_tool_create_outline"
	.size	.L__func__.gimp_brush_tool_create_outline, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_BRUSH_TOOL (brush_tool)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.3, 26

	.type	gimp_brush_tool_parent_class,@object # @gimp_brush_tool_parent_class
	.local	gimp_brush_tool_parent_class
	.comm	gimp_brush_tool_parent_class,8,8
	.type	GimpBrushTool_private_offset,@object # @GimpBrushTool_private_offset
	.local	GimpBrushTool_private_offset
	.comm	GimpBrushTool_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpbrushtool.c"
	.size	.L.str.4, 16

	.type	.L__func__.gimp_brush_tool_constructed,@object # @__func__.gimp_brush_tool_constructed
.L__func__.gimp_brush_tool_constructed:
	.asciz	"gimp_brush_tool_constructed"
	.size	.L__func__.gimp_brush_tool_constructed, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_BRUSH_CORE (paint_tool->core)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify::show-paint-tool-cursor"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"notify::show-brush-outline"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"brush-changed"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"set-brush"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"brush-size"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"brush-angle"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"brush-aspect-ratio"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tools/tools-paint-brush-size-set"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"context/context-brush-aspect-set"
	.size	.L.str.14, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"context/context-brush-angle-set"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"context/context-brush-select-set"
	.size	.L.str.16, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
