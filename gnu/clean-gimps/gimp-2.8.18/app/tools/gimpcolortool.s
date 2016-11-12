	.text
	.file	"gimpcolortool.bc"
	.globl	gimp_color_tool_get_type
	.align	16, 0x90
	.type	gimp_color_tool_get_type,@function
gimp_color_tool_get_type:               # @gimp_color_tool_get_type
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
	movq	gimp_color_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_tool_get_type.g_define_type_id__volatile, %rax
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
	movl	$304, %edx              # imm = 0x130
	movabsq	$gimp_color_tool_class_intern_init, %rdi
	movl	$296, %r8d              # imm = 0x128
	movabsq	$gimp_color_tool_init, %rcx
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
	movabsq	$gimp_color_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_tool_get_type, .Lfunc_end0-gimp_color_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_class_intern_init,@function
gimp_color_tool_class_intern_init:      # @gimp_color_tool_class_intern_init
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
	movq	%rax, gimp_color_tool_parent_class
	cmpl	$0, GimpColorTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_tool_class_intern_init, .Lfunc_end1-gimp_color_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_init,@function
gimp_color_tool_init:                   # @gimp_color_tool_init
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
	movabsq	$.L.str.18, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_action_value_2
	movq	-8(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 260(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movl	$-2147483648, 284(%rax) # imm = 0xFFFFFFFF80000000
	movq	-8(%rbp), %rax
	movl	$-2147483648, 288(%rax) # imm = 0xFFFFFFFF80000000
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_tool_init, .Lfunc_end2-gimp_color_tool_init
	.cfi_endproc

	.globl	gimp_color_tool_enable
	.align	16, 0x90
	.type	gimp_color_tool_enable,@function
gimp_color_tool_enable:                 # @gimp_color_tool_enable
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_enable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_29
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_options_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_enable, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_29
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB3_26
# BB#25:                                # %if.then.43
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_29
.LBB3_26:                               # %if.end.44
	movq	-8(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB3_28
# BB#27:                                # %if.then.47
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_28:                               # %if.end.49
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	%rax, 264(%rdi)
	movq	-8(%rbp), %rax
	movl	$1, 248(%rax)
.LBB3_29:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_tool_enable, .Lfunc_end3-gimp_color_tool_enable
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.globl	gimp_color_tool_disable
	.align	16, 0x90
	.type	gimp_color_tool_disable,@function
gimp_color_tool_disable:                # @gimp_color_tool_disable
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_tool_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_disable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_17
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB5_14
# BB#13:                                # %if.then.15
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB5_17
.LBB5_14:                               # %if.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB5_16
# BB#15:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 264(%rax)
.LBB5_16:                               # %if.end.21
	movq	-8(%rbp), %rax
	movl	$0, 248(%rax)
.LBB5_17:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_tool_disable, .Lfunc_end5-gimp_color_tool_disable
	.cfi_endproc

	.globl	gimp_color_tool_is_enabled
	.align	16, 0x90
	.type	gimp_color_tool_is_enabled,@function
gimp_color_tool_is_enabled:             # @gimp_color_tool_is_enabled
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	248(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_tool_is_enabled, .Lfunc_end6-gimp_color_tool_is_enabled
	.cfi_endproc

	.globl	gimp_color_tool_start_sample_point
	.align	16, 0x90
	.type	gimp_color_tool_start_sample_point,@function
gimp_color_tool_start_sample_point:     # @gimp_color_tool_start_sample_point
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_tool_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_start_sample_point, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_27
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_start_sample_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_27
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_selection_pause
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_activate
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB7_26
# BB#25:                                # %if.then.48
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB7_26:                               # %if.end.51
	movl	$1025, %edx             # imm = 0x401
	movl	$21, %ecx
	movl	$5, %r8d
	movq	-24(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-24(%rbp), %rax
	movl	$-2147483648, 284(%rax) # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rax
	movl	$-2147483648, 288(%rax) # imm = 0xFFFFFFFF80000000
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tool_set_cursor
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB7_27:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_tool_start_sample_point, .Lfunc_end7-gimp_color_tool_start_sample_point
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_class_init,@function
gimp_color_tool_class_init:             # @gimp_color_tool_class_init
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_pick_state_get_type
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_type_get_type
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_rgb_get_type
	movabsq	$.L.str.8, %rdi
	movl	$1, %edx
	movl	$296, %ecx              # imm = 0x128
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__ENUM_ENUM_BOXED_INT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$4, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	orq	$1, %rax
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-120(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	$24, 48(%rsp)
	movb	$0, %al
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_color_tool_real_picked, %rsi
	movabsq	$gimp_color_tool_real_pick, %rdi
	movabsq	$gimp_color_tool_draw, %r8
	movabsq	$gimp_color_tool_cursor_update, %r9
	movabsq	$gimp_color_tool_oper_update, %r10
	movabsq	$gimp_color_tool_motion, %rbx
	movabsq	$gimp_color_tool_button_release, %r14
	movabsq	$gimp_color_tool_button_press, %r15
	movabsq	$gimp_color_tool_finalize, %r12
	movl	%eax, gimp_color_tool_signals
	movq	-56(%rbp), %r13
	movq	%r12, 48(%r13)
	movq	-64(%rbp), %r12
	movq	%r15, 192(%r12)
	movq	-64(%rbp), %r15
	movq	%r14, 200(%r15)
	movq	-64(%rbp), %r14
	movq	%rbx, 208(%r14)
	movq	-64(%rbp), %rbx
	movq	%r10, 248(%rbx)
	movq	-64(%rbp), %r10
	movq	%r9, 256(%r10)
	movq	-72(%rbp), %r9
	movq	%r8, 280(%r9)
	movq	-48(%rbp), %r8
	movq	%rdi, 288(%r8)
	movq	-48(%rbp), %rdi
	movq	%rsi, 296(%rdi)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_tool_class_init, .Lfunc_end8-gimp_color_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_finalize,@function
gimp_color_tool_finalize:               # @gimp_color_tool_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 264(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_tool_finalize, .Lfunc_end9-gimp_color_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_button_press,@function
gimp_color_tool_button_press:           # @gimp_color_tool_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	gimp_color_tool_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	movq	-48(%rbp), %rax
	cmpl	$0, 248(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_7
.LBB10_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB10_6
# BB#3:                                 # %if.then.6
	movl	$1, %esi
	movq	-48(%rbp), %rax
	movl	$1, 280(%rax)
	movq	-48(%rbp), %rax
	movq	272(%rax), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 284(%rax)
	movq	-48(%rbp), %rax
	movq	272(%rax), %rax
	movl	12(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 288(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_selection_pause
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB10_5
# BB#4:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB10_5:                               # %if.end.16
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movabsq	$.L.str.9, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-48(%rbp), %rsi
	cvtsi2sdl	284(%rsi), %xmm0
	movq	-48(%rbp), %rsi
	cvtsi2sdl	288(%rsi), %xmm1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_tool_push_status_coords
	jmp	.LBB10_7
.LBB10_6:                               # %if.else
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %edx
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	callq	gimp_color_tool_pick
.LBB10_7:                               # %if.end.33
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_tool_button_press, .Lfunc_end10-gimp_color_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_button_release,@function
gimp_color_tool_button_release:         # @gimp_color_tool_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	gimp_color_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	movq	-48(%rbp), %rax
	cmpl	$0, 248(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_20
.LBB11_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB11_19
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tool_pop_status
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	gimp_tool_control_set_scroll_lock
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
	cmpl	$1, -28(%rbp)
	jne	.LBB11_5
# BB#4:                                 # %if.then.10
	movq	-48(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-48(%rbp), %rax
	movl	$-2147483648, 284(%rax) # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rax
	movl	$-2147483648, 288(%rax) # imm = 0xFFFFFFFF80000000
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	jmp	.LBB11_20
.LBB11_5:                               # %if.end.12
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	movq	-48(%rbp), %rcx
	movl	284(%rcx), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB11_9
# BB#6:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	284(%rax), %ecx
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jg	.LBB11_9
# BB#7:                                 # %lor.lhs.false.17
	movq	-48(%rbp), %rax
	movl	288(%rax), %ecx
	cmpl	-72(%rbp), %ecx
	jl	.LBB11_9
# BB#8:                                 # %lor.lhs.false.20
	movq	-48(%rbp), %rax
	movl	288(%rax), %ecx
	movl	-72(%rbp), %edx
	addl	-80(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB11_12
.LBB11_9:                               # %if.then.25
	movq	-48(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB11_11
# BB#10:                                # %if.then.27
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	272(%rax), %rsi
	callq	gimp_image_remove_sample_point
	movq	-48(%rbp), %rax
	movq	$0, 272(%rax)
.LBB11_11:                              # %if.end.30
	jmp	.LBB11_16
.LBB11_12:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.33
	movl	$1, %r8d
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	272(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	284(%rax), %edx
	movq	-48(%rbp), %rax
	movl	288(%rax), %ecx
	callq	gimp_image_move_sample_point
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.37
	movl	$1, %ecx
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	284(%rax), %esi
	movq	-48(%rbp), %rax
	movl	288(%rax), %edx
	callq	gimp_image_add_sample_point_at_pos
	movq	-48(%rbp), %rdi
	movq	%rax, 272(%rdi)
.LBB11_15:                              # %if.end.42
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.43
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_selection_resume
	movq	-64(%rbp), %rdi
	callq	gimp_image_flush
	movq	-48(%rbp), %rdi
	movl	$0, 280(%rdi)
	movq	-48(%rbp), %rdi
	movl	$-2147483648, 284(%rdi) # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rdi
	movl	$-2147483648, 288(%rdi) # imm = 0xFFFFFFFF80000000
	movq	-48(%rbp), %rdi
	cmpq	$0, 272(%rdi)
	je	.LBB11_18
# BB#17:                                # %if.then.49
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
.LBB11_18:                              # %if.end.52
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.53
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB11_20:                              # %if.end.56
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_tool_button_release, .Lfunc_end11-gimp_color_tool_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_motion,@function
gimp_color_tool_motion:                 # @gimp_color_tool_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 248(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_25
.LBB12_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB12_24
# BB#3:                                 # %if.then.4
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy
	cmpl	$0, -52(%rbp)
	jl	.LBB12_7
# BB#4:                                 # %lor.lhs.false
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	296(%rcx), %eax
	jg	.LBB12_7
# BB#5:                                 # %lor.lhs.false.8
	cmpl	$0, -56(%rbp)
	jl	.LBB12_7
# BB#6:                                 # %lor.lhs.false.10
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	300(%rcx), %eax
	jle	.LBB12_8
.LBB12_7:                               # %if.then.12
	movq	-40(%rbp), %rax
	movl	$-2147483648, 284(%rax) # imm = 0xFFFFFFFF80000000
	movq	-40(%rbp), %rax
	movl	$-2147483648, 288(%rax) # imm = 0xFFFFFFFF80000000
	movl	$1, -60(%rbp)
	jmp	.LBB12_14
.LBB12_8:                               # %if.else
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %edi
	movq	-40(%rbp), %rax
	movl	%edi, 284(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %edi
	movq	-40(%rbp), %rax
	movl	%edi, 288(%rax)
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	gimp_display_shell_untransform_viewport
	movq	-40(%rbp), %rax
	movl	284(%rax), %r9d
	cmpl	-64(%rbp), %r9d
	jl	.LBB12_12
# BB#9:                                 # %lor.lhs.false.25
	movq	-40(%rbp), %rax
	movl	284(%rax), %ecx
	movl	-64(%rbp), %edx
	addl	-72(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jg	.LBB12_12
# BB#10:                                # %lor.lhs.false.29
	movq	-40(%rbp), %rax
	movl	288(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jl	.LBB12_12
# BB#11:                                # %lor.lhs.false.33
	movq	-40(%rbp), %rax
	movl	288(%rax), %ecx
	movl	-68(%rbp), %edx
	addl	-76(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB12_13
.LBB12_12:                              # %if.then.39
	movl	$1, -60(%rbp)
.LBB12_13:                              # %if.end.40
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.41
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	cmpl	$0, -60(%rbp)
	je	.LBB12_19
# BB#15:                                # %if.then.45
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	cmpq	$0, 272(%rax)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	je	.LBB12_17
# BB#16:                                # %cond.true
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB12_18
.LBB12_17:                              # %cond.false
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB12_18:                              # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_tool_push_status
	jmp	.LBB12_23
.LBB12_19:                              # %if.else.49
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movq	-40(%rbp), %rsi
	cmpq	$0, 272(%rsi)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB12_21
# BB#20:                                # %cond.true.53
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB12_22
.LBB12_21:                              # %cond.false.55
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB12_22:                              # %cond.end.57
	movq	-192(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.10, %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-40(%rbp), %rdx
	cvtsi2sdl	284(%rdx), %xmm0
	movq	-40(%rbp), %rdx
	cvtsi2sdl	288(%rdx), %xmm1
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movl	-180(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_tool_push_status_coords
.LBB12_23:                              # %if.end.63
	jmp	.LBB12_25
.LBB12_24:                              # %if.else.64
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %edx
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	callq	gimp_color_tool_pick
.LBB12_25:                              # %if.end.77
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_tool_motion, .Lfunc_end12-gimp_color_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_oper_update,@function
gimp_color_tool_oper_update:            # @gimp_color_tool_oper_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 248(%rax)
	je	.LBB13_4
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_get_show_sample_points
	cmpl	$0, %eax
	je	.LBB13_4
# BB#2:                                 # %land.lhs.true.6
	cmpl	$0, -24(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm2
	movq	-48(%rbp), %rax
	divsd	200(%rax), %xmm2
	cvtsi2sdl	-68(%rbp), %xmm3
	movq	-48(%rbp), %rax
	divsd	208(%rax), %xmm3
	callq	gimp_image_find_sample_point
	movq	%rax, -64(%rbp)
.LBB13_4:                               # %if.end
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB13_11
# BB#5:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-80(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB13_8
# BB#6:                                 # %land.lhs.true.19
	movq	-80(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB13_8
# BB#7:                                 # %if.then.23
	movq	-80(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB13_8:                               # %if.end.24
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 272(%rcx)
	movq	-80(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	jne	.LBB13_10
# BB#9:                                 # %if.then.28
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_draw_tool_start
.LBB13_10:                              # %if.end.29
	movq	-80(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB13_11:                              # %if.end.30
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_tool_oper_update, .Lfunc_end13-gimp_color_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_cursor_update,@function
gimp_color_tool_cursor_update:          # @gimp_color_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 248(%rax)
	je	.LBB14_12
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB14_3
# BB#2:                                 # %if.then.4
	movl	$1025, %edx             # imm = 0x401
	movl	$21, %ecx
	movl	$5, %r8d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_set_cursor
	jmp	.LBB14_11
.LBB14_3:                               # %if.else
	xorl	%ecx, %ecx
	movl	$1, -52(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	368(%rax), %edx
	callq	gimp_image_coords_in_active_pickable
	cmpl	$0, %eax
	je	.LBB14_10
# BB#4:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB14_9
# BB#14:                                # %if.then.7
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_5:                               # %sw.bb
	movl	$0, -52(%rbp)
	jmp	.LBB14_9
.LBB14_6:                               # %sw.bb.8
	movl	$9, -52(%rbp)
	jmp	.LBB14_9
.LBB14_7:                               # %sw.bb.9
	movl	$10, -52(%rbp)
	jmp	.LBB14_9
.LBB14_8:                               # %sw.bb.10
	movl	$2, -52(%rbp)
.LBB14_9:                               # %sw.epilog
	jmp	.LBB14_10
.LBB14_10:                              # %if.end
	movl	$1031, %edx             # imm = 0x407
	movl	$21, %ecx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %r8d
	callq	gimp_tool_set_cursor
.LBB14_11:                              # %if.end.11
	jmp	.LBB14_13
.LBB14_12:                              # %if.end.12
	movq	gimp_color_tool_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
.LBB14_13:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_tool_cursor_update, .Lfunc_end14-gimp_color_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_5
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_8

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_color_tool_draw,@function
gimp_color_tool_draw:                   # @gimp_color_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 248(%rax)
	je	.LBB15_13
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB15_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movq	-16(%rbp), %rdi
	movq	272(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	g_list_index
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	272(%rsi), %rsi
	movl	8(%rsi), %esi
	movq	-16(%rbp), %rcx
	movq	272(%rcx), %rcx
	movl	12(%rcx), %edx
	movl	-36(%rbp), %ecx
	callq	gimp_draw_tool_add_sample_point
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_canvas_item_set_highlight
.LBB15_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB15_8
# BB#4:                                 # %if.then.12
	movq	-16(%rbp), %rax
	cmpl	$-2147483648, 284(%rax) # imm = 0xFFFFFFFF80000000
	je	.LBB15_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$-2147483648, 288(%rax) # imm = 0xFFFFFFFF80000000
	je	.LBB15_7
# BB#6:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	284(%rax), %esi
	movq	-16(%rbp), %rax
	movl	288(%rax), %edx
	callq	gimp_draw_tool_add_crosshair
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB15_7:                               # %if.end.18
	jmp	.LBB15_12
.LBB15_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	cmpl	$0, 372(%rax)
	je	.LBB15_11
# BB#9:                                 # %land.lhs.true.20
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB15_11
# BB#10:                                # %if.then.25
	xorl	%esi, %esi
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movsd	376(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvtsi2sdl	252(%rax), %xmm2
	subsd	-48(%rbp), %xmm2
	movq	-16(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm3
	subsd	-48(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	mulsd	-48(%rbp), %xmm4
	addsd	%xmm0, %xmm4
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movaps	%xmm4, %xmm2
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_draw_tool_add_rectangle
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB15_11:                              # %if.end.33
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.34
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.35
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_tool_draw, .Lfunc_end15-gimp_color_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_real_pick,@function
gimp_color_tool_real_pick:              # @gimp_color_tool_real_pick
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_real_pick, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_11
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	jmp	.LBB16_6
.LBB16_6:                               # %do.body.4
	movq	-56(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB16_8
# BB#7:                                 # %if.then.6
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.7
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_tool_real_pick, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_11
.LBB16_9:                               # %if.end.8
	jmp	.LBB16_10
.LBB16_10:                              # %do.end.9
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	368(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	372(%rax), %r9d
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %r10
	movq	-48(%rbp), %r11
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	gimp_image_pick_color
	movl	%eax, -4(%rbp)
.LBB16_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_tool_real_pick, .Lfunc_end16-gimp_color_tool_real_pick
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_tool_real_picked,@function
gimp_color_tool_real_picked:            # @gimp_color_tool_real_picked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_tool_get_options
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, 260(%rax)
	je	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$2, 260(%rax)
	jne	.LBB17_12
.LBB17_2:                               # %if.then
	cmpl	$4, -16(%rbp)
	je	.LBB17_4
# BB#3:                                 # %lor.lhs.false.8
	cmpl	$5, -16(%rbp)
	jne	.LBB17_7
.LBB17_4:                               # %if.then.10
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB17_6
# BB#5:                                 # %if.then.13
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_colormap_editor_set_index
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB17_6:                               # %if.end
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.20
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB17_11
# BB#8:                                 # %if.then.24
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_palette_editor_get_index
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.33
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_palette_editor_set_index
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB17_10:                              # %if.end.35
	jmp	.LBB17_11
.LBB17_11:                              # %if.end.36
	jmp	.LBB17_12
.LBB17_12:                              # %if.end.37
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	ja	.LBB17_23
# BB#24:                                # %if.end.37
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_13:                              # %sw.bb
	jmp	.LBB17_23
.LBB17_14:                              # %sw.bb.39
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_set_foreground
	jmp	.LBB17_23
.LBB17_15:                              # %sw.bb.40
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_set_background
	jmp	.LBB17_23
.LBB17_16:                              # %sw.bb.41
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.17, %r8
	movq	-96(%rbp), %rcx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB17_22
# BB#17:                                # %if.then.55
	cmpl	$1, -12(%rbp)
	jne	.LBB17_19
# BB#18:                                # %if.then.57
	movq	-104(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dockable_blink_cancel
.LBB17_19:                              # %if.end.60
	movq	-104(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_editor_get_data
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB17_21
# BB#20:                                # %if.then.68
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_palette
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_data_editor_set_data
.LBB17_21:                              # %if.end.74
	movq	-112(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_palette_editor_pick_color
.LBB17_22:                              # %if.end.77
	jmp	.LBB17_23
.LBB17_23:                              # %sw.epilog
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_tool_real_picked, .Lfunc_end17-gimp_color_tool_real_picked
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_13
	.quad	.LBB17_14
	.quad	.LBB17_15
	.quad	.LBB17_16

	.text
	.align	16, 0x90
	.type	gimp_color_tool_pick,@function
gimp_color_tool_pick:                   # @gimp_color_tool_pick
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, 288(%rdi)
	je	.LBB18_3
# BB#1:                                 # %land.lhs.true
	leaq	-36(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_3
# BB#2:                                 # %if.then
	xorl	%edx, %edx
	leaq	-72(%rbp), %r9
	movq	-8(%rbp), %rax
	movl	gimp_color_tool_signals, %esi
	movl	-12(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-76(%rbp), %edi
	movl	%edi, -80(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-80(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_signal_emit
.LBB18_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_tool_pick, .Lfunc_end18-gimp_color_tool_pick
	.cfi_endproc

	.type	gimp_color_tool_get_type.g_define_type_id__volatile,@object # @gimp_color_tool_get_type.g_define_type_id__volatile
	.local	gimp_color_tool_get_type.g_define_type_id__volatile
	.comm	gimp_color_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorTool"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_color_tool_enable,@object # @__func__.gimp_color_tool_enable
.L__func__.gimp_color_tool_enable:
	.asciz	"gimp_color_tool_enable"
	.size	.L__func__.gimp_color_tool_enable, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_TOOL (color_tool)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_OPTIONS (options)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Trying to enable GimpColorTool while it is active."
	.size	.L.str.4, 51

	.type	.L__func__.gimp_color_tool_disable,@object # @__func__.gimp_color_tool_disable
.L__func__.gimp_color_tool_disable:
	.asciz	"gimp_color_tool_disable"
	.size	.L__func__.gimp_color_tool_disable, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Trying to disable GimpColorTool while it is active."
	.size	.L.str.5, 52

	.type	.L__func__.gimp_color_tool_start_sample_point,@object # @__func__.gimp_color_tool_start_sample_point
.L__func__.gimp_color_tool_start_sample_point:
	.asciz	"gimp_color_tool_start_sample_point"
	.size	.L__func__.gimp_color_tool_start_sample_point, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_COLOR_TOOL (tool)"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.7, 26

	.type	gimp_color_tool_parent_class,@object # @gimp_color_tool_parent_class
	.local	gimp_color_tool_parent_class
	.comm	gimp_color_tool_parent_class,8,8
	.type	GimpColorTool_private_offset,@object # @GimpColorTool_private_offset
	.local	GimpColorTool_private_offset
	.comm	GimpColorTool_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"picked"
	.size	.L.str.8, 7

	.type	gimp_color_tool_signals,@object # @gimp_color_tool_signals
	.local	gimp_color_tool_signals
	.comm	gimp_color_tool_signals,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Move Sample Point: "
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	", "
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Remove Sample Point"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Cancel Sample Point"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Add Sample Point: "
	.size	.L.str.13, 19

	.type	.L__func__.gimp_color_tool_real_pick,@object # @__func__.gimp_color_tool_real_pick
.L__func__.gimp_color_tool_real_pick:
	.asciz	"gimp_color_tool_real_pick"
	.size	.L__func__.gimp_color_tool_real_pick, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tool->display != NULL"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tool->drawable != NULL"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-indexed-palette"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-palette-editor"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tools/tools-color-average-radius-set"
	.size	.L.str.18, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
