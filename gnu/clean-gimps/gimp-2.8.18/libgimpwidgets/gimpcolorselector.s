	.text
	.file	"gimpcolorselector.bc"
	.globl	gimp_color_selector_get_type
	.align	16, 0x90
	.type	gimp_color_selector_get_type,@function
gimp_color_selector_get_type:           # @gimp_color_selector_get_type
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
	movq	gimp_color_selector_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_selector_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$936, %edx              # imm = 0x3A8
	leaq	gimp_color_selector_class_intern_init(%rip), %rdi
	movl	$216, %r8d
	leaq	gimp_color_selector_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_color_selector_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_selector_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_selector_get_type, .Lfunc_end0-gimp_color_selector_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_class_intern_init,@function
gimp_color_selector_class_intern_init:  # @gimp_color_selector_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_selector_parent_class(%rip)
	cmpl	$0, GimpColorSelector_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorSelector_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_selector_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_selector_class_intern_init, .Lfunc_end1-gimp_color_selector_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_selector_init,@function
gimp_color_selector_init:               # @gimp_color_selector_init
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
	movl	$1, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 132(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	-8(%rbp), %rdi
	addq	$176, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	gimp_rgb_to_hsv@PLT
	movq	-8(%rbp), %rax
	movl	$0, 208(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_selector_init, .Lfunc_end2-gimp_color_selector_init
	.cfi_endproc

	.globl	gimp_color_selector_new
	.align	16, 0x90
	.type	gimp_color_selector_new,@function
gimp_color_selector_new:                # @gimp_color_selector_new
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_16
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_new(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_16
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.9
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_new(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_16
.LBB3_14:                               # %if.end.11
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_color_selector_set_color@PLT
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_color_selector_set_channel@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB3_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_selector_new, .Lfunc_end3-gimp_color_selector_new
	.cfi_endproc

	.globl	gimp_color_selector_set_color
	.align	16, 0x90
	.type	gimp_color_selector_set_color,@function
gimp_color_selector_set_color:          # @gimp_color_selector_set_color
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_color(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_25
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_color(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_25
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 160(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 168(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 192(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 200(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 872(%rax)
	je	.LBB4_24
# BB#23:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	872(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB4_24:                               # %if.end.29
	movq	-8(%rbp), %rdi
	callq	gimp_color_selector_color_changed@PLT
.LBB4_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_selector_set_color, .Lfunc_end4-gimp_color_selector_set_color
	.cfi_endproc

	.globl	gimp_color_selector_set_channel
	.align	16, 0x90
	.type	gimp_color_selector_set_channel,@function
gimp_color_selector_set_channel:        # @gimp_color_selector_set_channel
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selector_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_channel(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_16
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	208(%rcx), %eax
	je	.LBB5_16
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, 880(%rcx)
	je	.LBB5_15
# BB#14:                                # %if.then.18
	movq	-48(%rbp), %rax
	movq	880(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB5_15:                               # %if.end.20
	movq	-8(%rbp), %rdi
	callq	gimp_color_selector_channel_changed@PLT
.LBB5_16:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_selector_set_channel, .Lfunc_end5-gimp_color_selector_set_channel
	.cfi_endproc

	.globl	gimp_color_selector_set_toggles_visible
	.align	16, 0x90
	.type	gimp_color_selector_set_toggles_visible,@function
gimp_color_selector_set_toggles_visible: # @gimp_color_selector_set_toggles_visible
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_toggles_visible(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB6_16
# BB#13:                                # %if.then.12
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 128(%rdx)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	cmpq	$0, 848(%rdx)
	je	.LBB6_15
# BB#14:                                # %if.then.18
	movq	-48(%rbp), %rax
	movq	848(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB6_15:                               # %if.end.20
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_selector_set_toggles_visible, .Lfunc_end6-gimp_color_selector_set_toggles_visible
	.cfi_endproc

	.globl	gimp_color_selector_set_toggles_sensitive
	.align	16, 0x90
	.type	gimp_color_selector_set_toggles_sensitive,@function
gimp_color_selector_set_toggles_sensitive: # @gimp_color_selector_set_toggles_sensitive
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_toggles_sensitive(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_16
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB7_16
# BB#13:                                # %if.then.12
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 132(%rdx)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	cmpq	$0, 856(%rdx)
	je	.LBB7_15
# BB#14:                                # %if.then.18
	movq	-48(%rbp), %rax
	movq	856(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB7_15:                               # %if.end.20
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_selector_set_toggles_sensitive, .Lfunc_end7-gimp_color_selector_set_toggles_sensitive
	.cfi_endproc

	.globl	gimp_color_selector_set_show_alpha
	.align	16, 0x90
	.type	gimp_color_selector_set_show_alpha,@function
gimp_color_selector_set_show_alpha:     # @gimp_color_selector_set_show_alpha
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_show_alpha(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_16
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	136(%rcx), %eax
	je	.LBB8_16
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 136(%rdx)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	cmpq	$0, 864(%rdx)
	je	.LBB8_15
# BB#14:                                # %if.then.19
	movq	-48(%rbp), %rax
	movq	864(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB8_15:                               # %if.end.21
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_selector_set_show_alpha, .Lfunc_end8-gimp_color_selector_set_show_alpha
	.cfi_endproc

	.globl	gimp_color_selector_color_changed
	.align	16, 0x90
	.type	gimp_color_selector_color_changed,@function
gimp_color_selector_color_changed:      # @gimp_color_selector_color_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_color_changed(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	selector_signals(%rip), %esi
	movq	-8(%rbp), %rcx
	addq	$144, %rcx
	movq	-8(%rbp), %rdi
	addq	$176, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB9_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_selector_color_changed, .Lfunc_end9-gimp_color_selector_color_changed
	.cfi_endproc

	.globl	gimp_color_selector_channel_changed
	.align	16, 0x90
	.type	gimp_color_selector_channel_changed,@function
gimp_color_selector_channel_changed:    # @gimp_color_selector_channel_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_channel_changed(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	selector_signals+4(%rip), %esi
	movq	-8(%rbp), %rcx
	movl	208(%rcx), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB10_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_selector_channel_changed, .Lfunc_end10-gimp_color_selector_channel_changed
	.cfi_endproc

	.globl	gimp_color_selector_set_config
	.align	16, 0x90
	.type	gimp_color_selector_set_config,@function
gimp_color_selector_set_config:         # @gimp_color_selector_set_config
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_selector_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_config(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_27
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_config_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB11_21
.LBB11_16:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB11_20:                              # %if.end.32
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_23
.LBB11_22:                              # %if.then.36
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.37
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selector_set_config(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_27
.LBB11_24:                              # %if.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 904(%rax)
	je	.LBB11_27
# BB#26:                                # %if.then.42
	movq	-24(%rbp), %rax
	movq	904(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB11_27:                              # %if.end.44
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_selector_set_config, .Lfunc_end11-gimp_color_selector_set_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_class_init,@function
gimp_color_selector_class_init:         # @gimp_color_selector_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.7(%rip), %rdi
	movl	$1, %edx
	movl	$888, %ecx              # imm = 0x378
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	_gimp_widgets_marshal_VOID__POINTER_POINTER@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$68, %r11d
	movl	%r11d, %ebx
	leaq	gimp_color_selector_dispose(%rip), %r14
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 40(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$68, 24(%rsp)
	movq	$68, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	$1, %edx
	movl	$896, %ecx              # imm = 0x380
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	g_cclosure_marshal_VOID__INT@GOTPCREL(%rip), %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$24, %r11d
	movl	%r11d, %r10d
	movl	%eax, selector_signals(%rip)
	movq	-24(%rbp), %rbx
	movq	(%rbx), %rbx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$24, 24(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	.L.str.9(%rip), %rdi
	movl	%eax, selector_signals+4(%rip)
	movq	-24(%rbp), %r8
	movq	%rdi, 824(%r8)
	movq	-24(%rbp), %rdi
	movq	$0, 832(%rdi)
	movq	-24(%rbp), %rdi
	movq	%rsi, 840(%rdi)
	movq	-24(%rbp), %rsi
	movq	$0, 848(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 856(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 864(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 872(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 880(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 888(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 896(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 904(%rsi)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_selector_class_init, .Lfunc_end12-gimp_color_selector_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_dispose,@function
gimp_color_selector_dispose:            # @gimp_color_selector_dispose
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_config@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_color_selector_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_selector_dispose, .Lfunc_end13-gimp_color_selector_dispose
	.cfi_endproc

	.type	gimp_color_selector_get_type.g_define_type_id__volatile,@object # @gimp_color_selector_get_type.g_define_type_id__volatile
	.local	gimp_color_selector_get_type.g_define_type_id__volatile
	.comm	gimp_color_selector_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorSelector"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_selector_new,@object # @__func__.gimp_color_selector_new
.L__func__.gimp_color_selector_new:
	.asciz	"gimp_color_selector_new"
	.size	.L__func__.gimp_color_selector_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (selector_type, GIMP_TYPE_COLOR_SELECTOR)"
	.size	.L.str.2, 54

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rgb != NULL"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"hsv != NULL"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_color_selector_set_toggles_visible,@object # @__func__.gimp_color_selector_set_toggles_visible
.L__func__.gimp_color_selector_set_toggles_visible:
	.asciz	"gimp_color_selector_set_toggles_visible"
	.size	.L__func__.gimp_color_selector_set_toggles_visible, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_COLOR_SELECTOR (selector)"
	.size	.L.str.5, 34

	.type	.L__func__.gimp_color_selector_set_toggles_sensitive,@object # @__func__.gimp_color_selector_set_toggles_sensitive
.L__func__.gimp_color_selector_set_toggles_sensitive:
	.asciz	"gimp_color_selector_set_toggles_sensitive"
	.size	.L__func__.gimp_color_selector_set_toggles_sensitive, 42

	.type	.L__func__.gimp_color_selector_set_show_alpha,@object # @__func__.gimp_color_selector_set_show_alpha
.L__func__.gimp_color_selector_set_show_alpha:
	.asciz	"gimp_color_selector_set_show_alpha"
	.size	.L__func__.gimp_color_selector_set_show_alpha, 35

	.type	.L__func__.gimp_color_selector_set_color,@object # @__func__.gimp_color_selector_set_color
.L__func__.gimp_color_selector_set_color:
	.asciz	"gimp_color_selector_set_color"
	.size	.L__func__.gimp_color_selector_set_color, 30

	.type	.L__func__.gimp_color_selector_set_channel,@object # @__func__.gimp_color_selector_set_channel
.L__func__.gimp_color_selector_set_channel:
	.asciz	"gimp_color_selector_set_channel"
	.size	.L__func__.gimp_color_selector_set_channel, 32

	.type	.L__func__.gimp_color_selector_color_changed,@object # @__func__.gimp_color_selector_color_changed
.L__func__.gimp_color_selector_color_changed:
	.asciz	"gimp_color_selector_color_changed"
	.size	.L__func__.gimp_color_selector_color_changed, 34

	.type	selector_signals,@object # @selector_signals
	.local	selector_signals
	.comm	selector_signals,8,4
	.type	.L__func__.gimp_color_selector_channel_changed,@object # @__func__.gimp_color_selector_channel_changed
.L__func__.gimp_color_selector_channel_changed:
	.asciz	"gimp_color_selector_channel_changed"
	.size	.L__func__.gimp_color_selector_channel_changed, 36

	.type	.L__func__.gimp_color_selector_set_config,@object # @__func__.gimp_color_selector_set_config
.L__func__.gimp_color_selector_set_config:
	.asciz	"gimp_color_selector_set_config"
	.size	.L__func__.gimp_color_selector_set_config, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"config == NULL || GIMP_IS_COLOR_CONFIG (config)"
	.size	.L.str.6, 48

	.type	gimp_color_selector_parent_class,@object # @gimp_color_selector_parent_class
	.local	gimp_color_selector_parent_class
	.comm	gimp_color_selector_parent_class,8,8
	.type	GimpColorSelector_private_offset,@object # @GimpColorSelector_private_offset
	.local	GimpColorSelector_private_offset
	.comm	GimpColorSelector_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color-changed"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"channel-changed"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unnamed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-select-color"
	.size	.L.str.10, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
