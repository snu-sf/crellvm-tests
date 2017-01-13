	.text
	.file	"gimpcolorscale.bc"
	.globl	gimp_color_scale_get_type
	.align	16, 0x90
	.type	gimp_color_scale_get_type,@function
gimp_color_scale_get_type:              # @gimp_color_scale_get_type
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
	movq	gimp_color_scale_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_scale_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_scale_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$880, %edx              # imm = 0x370
	leaq	gimp_color_scale_class_intern_init(%rip), %rdi
	movl	$296, %r8d              # imm = 0x128
	leaq	gimp_color_scale_init(%rip), %rcx
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
	leaq	gimp_color_scale_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_scale_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_scale_get_type, .Lfunc_end0-gimp_color_scale_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_class_intern_init,@function
gimp_color_scale_class_intern_init:     # @gimp_color_scale_class_intern_init
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
	movq	%rax, gimp_color_scale_parent_class(%rip)
	cmpl	$0, GimpColorScale_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorScale_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_scale_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_scale_class_intern_init, .Lfunc_end1-gimp_color_scale_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_scale_init,@function
gimp_color_scale_init:                  # @gimp_color_scale_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_range_set_slider_size_fixed@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_range_set_flippable@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scale_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value@PLT
	movq	-8(%rbp), %rax
	movl	$2, 200(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 292(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	-8(%rbp), %rdi
	addq	$240, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	gimp_rgb_to_hsv@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_scale_init, .Lfunc_end2-gimp_color_scale_init
	.cfi_endproc

	.globl	gimp_color_scale_new
	.align	16, 0x90
	.type	gimp_color_scale_new,@function
gimp_color_scale_new:                   # @gimp_color_scale_new
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	callq	gimp_color_scale_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rcx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpl	$0, -4(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_range_set_flippable@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_scale_new, .Lfunc_end3-gimp_color_scale_new
	.cfi_endproc

	.globl	gimp_color_scale_set_channel
	.align	16, 0x90
	.type	gimp_color_scale_set_channel,@function
gimp_color_scale_set_channel:           # @gimp_color_scale_set_channel
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_scale_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_color_scale_set_channel(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	200(%rcx), %eax
	je	.LBB4_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 200(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 292(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB4_14:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_scale_set_channel, .Lfunc_end4-gimp_color_scale_set_channel
	.cfi_endproc

	.globl	gimp_color_scale_set_color
	.align	16, 0x90
	.type	gimp_color_scale_set_color,@function
gimp_color_scale_set_color:             # @gimp_color_scale_set_color
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_scale_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_color_scale_set_color(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_color_scale_set_color(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_23
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.19
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.20
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_color_scale_set_color(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.21
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 208(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 216(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 224(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 232(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 240(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 248(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 256(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 264(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 292(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB5_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_scale_set_color, .Lfunc_end5-gimp_color_scale_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_class_init,@function
gimp_color_scale_class_init:            # @gimp_color_scale_class_init
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_color_scale_expose(%rip), %rsi
	leaq	gimp_color_scale_button_release(%rip), %rdi
	leaq	gimp_color_scale_button_press(%rip), %rcx
	leaq	gimp_color_scale_state_changed(%rip), %rdx
	leaq	gimp_color_scale_size_allocate(%rip), %r8
	leaq	gimp_color_scale_set_property(%rip), %r9
	leaq	gimp_color_scale_get_property(%rip), %r10
	leaq	gimp_color_scale_finalize(%rip), %r11
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 248(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 392(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_channel_get_type@PLT
	leaq	.L.str.2(%rip), %rdi
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$2, %r8d
	movl	$231, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_scale_class_init, .Lfunc_end6-gimp_color_scale_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_finalize,@function
gimp_color_scale_finalize:              # @gimp_color_scale_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 288(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_scale_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_scale_finalize, .Lfunc_end7-gimp_color_scale_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_get_property,@function
gimp_color_scale_get_property:          # @gimp_color_scale_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	200(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$168, %edx
	leaq	.L.str.9(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_scale_get_property, .Lfunc_end8-gimp_color_scale_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_set_property,@function
gimp_color_scale_set_property:          # @gimp_color_scale_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_scale_set_channel@PLT
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$188, %edx
	leaq	.L.str.9(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_scale_set_property, .Lfunc_end9-gimp_color_scale_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_size_allocate,@function
gimp_color_scale_size_allocate:         # @gimp_color_scale_size_allocate
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_can_focus@PLT
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	leaq	.L.str.11(%rip), %rsi
	leaq	-52(%rbp), %rdx
	leaq	.L.str.12(%rip), %rcx
	leaq	-68(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$0, -68(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movl	-68(%rbp), %r10d
	addl	-52(%rbp), %r10d
	movl	%r10d, -52(%rbp)
.LBB10_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jge	.LBB10_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB10_5:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	-52(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_range_set_min_slider_size@PLT
	movq	gimp_color_scale_parent_class(%rip), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 248(%rax)
	je	.LBB10_7
# BB#6:                                 # %if.then.10
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB10_7:                               # %if.end.14
	movq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	gtk_range_get_range_rect@PLT
	movl	-40(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %edx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB10_8
	jmp	.LBB10_14
.LBB10_14:                              # %if.end.14
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB10_9
	jmp	.LBB10_10
.LBB10_8:                               # %sw.bb
	movq	-32(%rbp), %rdi
	callq	gtk_range_get_min_slider_size@PLT
	subl	$1, %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movl	-64(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB10_10
.LBB10_9:                               # %sw.bb.30
	movl	-60(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_range_get_min_slider_size@PLT
	subl	$1, %eax
	movl	-64(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -64(%rbp)
.LBB10_10:                              # %sw.epilog
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jne	.LBB10_12
# BB#11:                                # %lor.lhs.false
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	284(%rcx), %eax
	je	.LBB10_13
.LBB10_12:                              # %if.then.39
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 284(%rcx)
	movq	-24(%rbp), %rcx
	movl	280(%rcx), %eax
	shll	$2, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 288(%rcx)
	movq	-24(%rbp), %rcx
	movq	272(%rcx), %rdi
	callq	g_free@PLT
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	288(%rcx), %eax
	movq	-24(%rbp), %rcx
	imull	284(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 272(%rcx)
	movq	-24(%rbp), %rax
	movl	$1, 292(%rax)
.LBB10_13:                              # %if.end.49
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_scale_size_allocate, .Lfunc_end10-gimp_color_scale_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_state_changed,@function
gimp_color_scale_state_changed:         # @gimp_color_scale_state_changed
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state@PLT
	cmpl	$4, %eax
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -12(%rbp)
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, 292(%rax)
.LBB11_3:                               # %if.end
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 256(%rax)
	je	.LBB11_5
# BB#4:                                 # %if.then.6
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB11_5:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_scale_state_changed, .Lfunc_end11-gimp_color_scale_state_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_button_press,@function
gimp_color_scale_button_press:          # @gimp_color_scale_button_press
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_copy@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, 52(%rax)
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gdk_event_free@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB12_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_scale_button_press, .Lfunc_end12-gimp_color_scale_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_scale_button_release,@function
gimp_color_scale_button_release:        # @gimp_color_scale_button_release
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_copy@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, 52(%rax)
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	352(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gdk_event_free@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	gimp_color_scale_parent_class(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	352(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_scale_button_release, .Lfunc_end13-gimp_color_scale_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_color_scale_expose,@function
gimp_color_scale_expose:                # @gimp_color_scale_expose
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp46:
	.cfi_offset %rbx, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_color_scale_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_is_sensitive@PLT
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-136(%rbp), %rdi
	movl	%eax, -84(%rbp)
	callq	memset@PLT
	movl	$0, -148(%rbp)
	movq	-56(%rbp), %rdx
	cmpq	$0, 272(%rdx)
	je	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	jne	.LBB14_3
.LBB14_2:                               # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB14_30
.LBB14_3:                               # %if.end
	leaq	-104(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-80(%rbp), %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-184(%rbp), %rdi
	cvtsi2sdl	-104(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	callq	cairo_translate@PLT
	movq	-184(%rbp), %rdi
	callq	cairo_clip@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	-152(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_can_focus@PLT
	cmpl	$0, %eax
	je	.LBB14_5
# BB#4:                                 # %if.then.15
	leaq	.L.str.11(%rip), %rsi
	leaq	-148(%rbp), %rdx
	leaq	.L.str.12(%rip), %rcx
	leaq	-188(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$0, -188(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movl	-188(%rbp), %r10d
	addl	-148(%rbp), %r10d
	movl	%r10d, -148(%rbp)
.LBB14_5:                               # %if.end.16
	leaq	-120(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_range_get_range_rect@PLT
	leaq	-156(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	callq	gtk_range_get_slider_range@PLT
	movl	-120(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-116(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-112(%rbp), %eax
	movl	-148(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -172(%rbp)
	movl	-108(%rbp), %eax
	movl	-148(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -176(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_range_get_min_slider_size@PLT
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -160(%rbp)
	movq	-56(%rbp), %rsi
	cmpl	$0, 292(%rsi)
	je	.LBB14_9
# BB#6:                                 # %if.then.25
	movq	-56(%rbp), %rdi
	callq	gimp_color_scale_render
	cmpl	$0, -84(%rbp)
	jne	.LBB14_8
# BB#7:                                 # %if.then.27
	movq	-56(%rbp), %rdi
	callq	gimp_color_scale_render_stipple
.LBB14_8:                               # %if.end.28
	movq	-56(%rbp), %rax
	movl	$0, 292(%rax)
.LBB14_9:                               # %if.end.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	sete	%cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	leal	1(%rdx,%rdx,2), %edx
	movq	-48(%rbp), %r8
	addq	$20, %r8
	movq	-40(%rbp), %r9
	movl	-164(%rbp), %eax
	movl	-104(%rbp), %r10d
	movl	-100(%rbp), %r11d
	addl	%r10d, %eax
	movl	-168(%rbp), %r10d
	addl	%r11d, %r10d
	movl	-172(%rbp), %r11d
	movl	-176(%rbp), %ebx
	movq	%rsp, %r14
	movl	%ebx, 32(%r14)
	movl	%r11d, 24(%r14)
	movl	%r10d, 16(%r14)
	movl	%eax, 8(%r14)
	leaq	.L.str.13(%rip), %r15
	movq	%r15, (%r14)
	movl	$1, %eax
	movl	%eax, %ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gtk_paint_box@PLT
	movq	-56(%rbp), %rsi
	movq	272(%rsi), %rdi
	movl	280(%rsi), %edx
	movl	284(%rsi), %ecx
	movl	288(%rsi), %r8d
	movl	-212(%rbp), %esi        # 4-byte Reload
	callq	cairo_image_surface_create_for_data@PLT
	movq	%rax, -144(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	je	.LBB14_10
	jmp	.LBB14_31
.LBB14_31:                              # %if.end.30
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB14_11
	jmp	.LBB14_12
.LBB14_10:                              # %sw.bb
	movq	-184(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-164(%rbp), %eax
	addl	-152(%rbp), %eax
	addl	-160(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-168(%rbp), %eax
	addl	-152(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_set_source_surface@PLT
	jmp	.LBB14_12
.LBB14_11:                              # %sw.bb.50
	movq	-184(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-164(%rbp), %eax
	addl	-152(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-168(%rbp), %eax
	addl	-152(%rbp), %eax
	addl	-160(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_set_source_surface@PLT
.LBB14_12:                              # %sw.epilog
	movq	-144(%rbp), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-184(%rbp), %rdi
	callq	cairo_paint@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_has_focus@PLT
	cmpl	$0, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.59
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_state@PLT
	leaq	.L.str.13(%rip), %r9
	movq	-48(%rbp), %rsi
	addq	$20, %rsi
	movq	-40(%rbp), %r8
	movl	-120(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-116(%rbp), %edx
	addl	-100(%rbp), %edx
	movl	-112(%rbp), %r10d
	movl	-108(%rbp), %r11d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movq	-256(%rbp), %r14        # 8-byte Reload
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movq	%r14, %rcx
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	callq	gtk_paint_focus@PLT
.LBB14_14:                              # %if.end.70
	movq	-64(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	je	.LBB14_15
	jmp	.LBB14_32
.LBB14_32:                              # %if.end.70
	movl	-276(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	je	.LBB14_16
	jmp	.LBB14_17
.LBB14_15:                              # %sw.bb.74
	movl	-156(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-168(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-160(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	movl	-176(%rbp), %eax
	movl	-152(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB14_17
.LBB14_16:                              # %sw.bb.84
	movl	-164(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-172(%rbp), %eax
	movl	-152(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -128(%rbp)
	movl	-160(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
.LBB14_17:                              # %sw.epilog.94
	movq	-40(%rbp), %rdi
	callq	gtk_widget_is_sensitive@PLT
	cmpl	$0, %eax
	je	.LBB14_19
# BB#18:                                # %if.then.97
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color@PLT
	jmp	.LBB14_20
.LBB14_19:                              # %if.else
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$204, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color@PLT
.LBB14_20:                              # %if.end.98
	movq	-64(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	je	.LBB14_21
	jmp	.LBB14_33
.LBB14_33:                              # %if.end.98
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB14_22
	jmp	.LBB14_23
.LBB14_21:                              # %sw.bb.102
	movq	-184(%rbp), %rdi
	cvtsi2sdl	-136(%rbp), %xmm0
	cvtsi2sdl	-132(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-132(%rbp), %xmm1
	callq	cairo_line_to@PLT
	movl	$2, %eax
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-300(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movl	-132(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-304(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to@PLT
	jmp	.LBB14_23
.LBB14_22:                              # %sw.bb.124
	movq	-184(%rbp), %rdi
	cvtsi2sdl	-136(%rbp), %xmm0
	cvtsi2sdl	-132(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-184(%rbp), %rdi
	cvtsi2sdl	-136(%rbp), %xmm0
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$2, %eax
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-316(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-320(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to@PLT
.LBB14_23:                              # %sw.epilog.146
	movq	-184(%rbp), %rdi
	callq	cairo_close_path@PLT
	movq	-184(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_is_sensitive@PLT
	cmpl	$0, %eax
	je	.LBB14_25
# BB#24:                                # %if.then.149
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$516, %rax              # imm = 0x204
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color@PLT
	jmp	.LBB14_26
.LBB14_25:                              # %if.else.150
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rax
	addq	$144, %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color@PLT
.LBB14_26:                              # %if.end.152
	movq	-64(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	je	.LBB14_27
	jmp	.LBB14_34
.LBB14_34:                              # %if.end.152
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB14_28
	jmp	.LBB14_29
.LBB14_27:                              # %sw.bb.156
	movq	-184(%rbp), %rdi
	cvtsi2sdl	-136(%rbp), %xmm0
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to@PLT
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
	movl	$2, %eax
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-340(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm0, %xmm1
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -344(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-344(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to@PLT
	jmp	.LBB14_29
.LBB14_28:                              # %sw.bb.184
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-132(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-132(%rbp), %eax
	addl	-124(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to@PLT
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$2, %eax
	movq	-184(%rbp), %rdi
	movl	-136(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	-124(%rbp), %edx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-356(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	-132(%rbp), %eax
	movl	-124(%rbp), %ecx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-360(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to@PLT
.LBB14_29:                              # %sw.epilog.212
	movq	-184(%rbp), %rdi
	callq	cairo_close_path@PLT
	movq	-184(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-184(%rbp), %rdi
	callq	cairo_destroy@PLT
	movl	$0, -28(%rbp)
.LBB14_30:                              # %return
	movl	-28(%rbp), %eax
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_scale_expose, .Lfunc_end14-gimp_color_scale_expose
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
	leaq	.L.str.3(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_scale_render,@function
gimp_color_scale_render:                # @gimp_color_scale_render
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_46
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$6, 200(%rax)
	jne	.LBB16_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	gimp_color_scale_render_alpha
	jmp	.LBB16_46
.LBB16_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movups	208(%rax), %xmm0
	movups	224(%rax), %xmm1
	movaps	%xmm1, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rax
	movups	240(%rax), %xmm0
	movups	256(%rax), %xmm1
	movaps	%xmm1, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	200(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$6, %rdx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	ja	.LBB16_12
# BB#47:                                # %if.end.5
	leaq	.LJTI16_0(%rip), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB16_5:                               # %sw.bb
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_12
.LBB16_6:                               # %sw.bb.9
	leaq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_12
.LBB16_7:                               # %sw.bb.10
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_12
.LBB16_8:                               # %sw.bb.11
	leaq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_12
.LBB16_9:                               # %sw.bb.12
	leaq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_12
.LBB16_10:                              # %sw.bb.13
	leaq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB16_12
.LBB16_11:                              # %sw.bb.14
	leaq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -96(%rbp)
.LBB16_12:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movl	200(%rax), %ecx
	subl	$2, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	ja	.LBB16_14
	jmp	.LBB16_13
.LBB16_13:                              # %sw.bb.16
	movl	$1, -100(%rbp)
	jmp	.LBB16_15
.LBB16_14:                              # %sw.default
	jmp	.LBB16_15
.LBB16_15:                              # %sw.epilog.17
	movq	-16(%rbp), %rdi
	callq	should_invert
	movl	%eax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	je	.LBB16_16
	jmp	.LBB16_48
.LBB16_48:                              # %sw.epilog.17
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB16_31
	jmp	.LBB16_46
.LBB16_16:                              # %sw.bb.22
	movl	$0, -84(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB16_17:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jae	.LBB16_26
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB16_17 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-8(%rbp), %rcx
	movl	280(%rcx), %eax
	decl	%eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB16_20
# BB#19:                                # %if.then.29
                                        #   in Loop: Header=BB16_17 Depth=1
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
.LBB16_20:                              # %if.end.31
                                        #   in Loop: Header=BB16_17 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	cmpl	$0, -100(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.33
                                        #   in Loop: Header=BB16_17 Depth=1
	leaq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	gimp_hsv_to_rgb@PLT
.LBB16_22:                              # %if.end.34
                                        #   in Loop: Header=BB16_17 Depth=1
	leaq	-48(%rbp), %rdi
	leaq	-129(%rbp), %rsi
	leaq	-130(%rbp), %rdx
	leaq	-131(%rbp), %rcx
	callq	gimp_rgb_get_uchar@PLT
# BB#23:                                # %do.body
                                        #   in Loop: Header=BB16_17 Depth=1
	movb	-131(%rbp), %al
	movq	-120(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-130(%rbp), %al
	movq	-120(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-129(%rbp), %al
	movq	-120(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB16_17 Depth=1
	jmp	.LBB16_25
.LBB16_25:                              # %for.inc
                                        #   in Loop: Header=BB16_17 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-120(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB16_17
.LBB16_26:                              # %for.end
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	288(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movl	$1, -88(%rbp)
.LBB16_27:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jae	.LBB16_30
# BB#28:                                # %for.body.41
                                        #   in Loop: Header=BB16_27 Depth=1
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, %edx
	callq	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
# BB#29:                                # %for.inc.47
                                        #   in Loop: Header=BB16_27 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB16_27
.LBB16_30:                              # %for.end.49
	jmp	.LBB16_46
.LBB16_31:                              # %sw.bb.50
	movl	$0, -88(%rbp)
.LBB16_32:                              # %for.cond.51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_38 Depth 2
	movl	-88(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jae	.LBB16_45
# BB#33:                                # %for.body.55
                                        #   in Loop: Header=BB16_32 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-8(%rbp), %rcx
	movl	284(%rcx), %eax
	decl	%eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB16_35
# BB#34:                                # %if.then.66
                                        #   in Loop: Header=BB16_32 Depth=1
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
.LBB16_35:                              # %if.end.68
                                        #   in Loop: Header=BB16_32 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	cmpl	$0, -100(%rbp)
	je	.LBB16_37
# BB#36:                                # %if.then.70
                                        #   in Loop: Header=BB16_32 Depth=1
	leaq	-80(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	gimp_hsv_to_rgb@PLT
.LBB16_37:                              # %if.end.71
                                        #   in Loop: Header=BB16_32 Depth=1
	leaq	-48(%rbp), %rdi
	leaq	-145(%rbp), %rsi
	leaq	-146(%rbp), %rdx
	leaq	-147(%rbp), %rcx
	callq	gimp_rgb_get_uchar@PLT
	movl	$0, -84(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -120(%rbp)
.LBB16_38:                              # %for.cond.72
                                        #   Parent Loop BB16_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jae	.LBB16_43
# BB#39:                                # %for.body.76
                                        #   in Loop: Header=BB16_38 Depth=2
	jmp	.LBB16_40
.LBB16_40:                              # %do.body.77
                                        #   in Loop: Header=BB16_38 Depth=2
	movb	-147(%rbp), %al
	movq	-120(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-146(%rbp), %al
	movq	-120(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-145(%rbp), %al
	movq	-120(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#41:                                # %do.end.81
                                        #   in Loop: Header=BB16_38 Depth=2
	jmp	.LBB16_42
.LBB16_42:                              # %for.inc.82
                                        #   in Loop: Header=BB16_38 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-120(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB16_38
.LBB16_43:                              # %for.end.85
                                        #   in Loop: Header=BB16_32 Depth=1
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
# BB#44:                                # %for.inc.89
                                        #   in Loop: Header=BB16_32 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB16_32
.LBB16_45:                              # %for.end.91
	jmp	.LBB16_46
.LBB16_46:                              # %sw.epilog.92
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_scale_render, .Lfunc_end16-gimp_color_scale_render
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI16_0:
	.long	.LBB16_5-.LJTI16_0
	.long	.LBB16_6-.LJTI16_0
	.long	.LBB16_7-.LJTI16_0
	.long	.LBB16_8-.LJTI16_0
	.long	.LBB16_9-.LJTI16_0
	.long	.LBB16_10-.LJTI16_0
	.long	.LBB16_11-.LJTI16_0

	.text
	.align	16, 0x90
	.type	gimp_color_scale_render_stipple,@function
gimp_color_scale_render_stipple:        # @gimp_color_scale_render_stipple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -24(%rbp)
	movl	.Lgimp_color_scale_render_stipple.insensitive(%rip), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_12
.LBB17_2:                               # %if.end
	jmp	.LBB17_3
.LBB17_3:                               # %do.body
	movq	-24(%rbp), %rax
	movzwl	140(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -36(%rbp)
	movq	-24(%rbp), %rax
	movzwl	138(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -35(%rbp)
	movq	-24(%rbp), %rax
	movzwl	136(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -34(%rbp)
# BB#4:                                 # %do.end
	movl	$0, -44(%rbp)
.LBB17_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jae	.LBB17_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	andl	$1, %ecx
	shll	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
.LBB17_7:                               # %for.cond.20
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	280(%rcx), %edx
	movl	-44(%rbp), %esi
	andl	$1, %esi
	subl	%esi, %edx
	cmpl	%edx, %eax
	jae	.LBB17_10
# BB#8:                                 # %for.body.24
                                        #   in Loop: Header=BB17_7 Depth=2
	movb	-36(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-35(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-34(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, 2(%rcx)
	movb	-33(%rbp), %al
	movq	-56(%rbp), %rcx
	movb	%al, 3(%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB17_7 Depth=2
	movl	-40(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
	movq	-56(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB17_7
.LBB17_10:                              # %for.end
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_11
.LBB17_11:                              # %for.inc.34
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rcx
	movl	288(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB17_5
.LBB17_12:                              # %for.end.37
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_scale_render_stipple, .Lfunc_end17-gimp_color_scale_render_stipple
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI18_2:
	.quad	4643211180634609287     # double 255.999
.LCPI18_3:
	.quad	4600877379321698714     # double 0.40000000000000002
	.text
	.align	16, 0x90
	.type	gimp_color_scale_render_alpha,@function
gimp_color_scale_render_alpha:          # @gimp_color_scale_render_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	%rax, %rdi
	callq	should_invert
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rsi, -80(%rbp)
	movq	-8(%rbp), %rsi
	movups	208(%rsi), %xmm0
	movups	224(%rsi), %xmm1
	movaps	%xmm1, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	je	.LBB18_1
	jmp	.LBB18_46
.LBB18_46:                              # %entry
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB18_27
	jmp	.LBB18_45
.LBB18_1:                               # %sw.bb
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$4, 284(%rax)
	jbe	.LBB18_3
# BB#2:                                 # %cond.true
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	288(%rcx), %edx
	shll	$2, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB18_4
.LBB18_3:                               # %cond.false
	movq	-104(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB18_4:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	movl	$0, -68(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB18_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jae	.LBB18_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-68(%rbp), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB18_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB18_8:                               # %if.end
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-8(%rbp), %rcx
	movl	280(%rcx), %eax
	decl	%eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB18_5 Depth=1
	movsd	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB18_10:                              # %if.end.14
                                        #   in Loop: Header=BB18_5 Depth=1
	jmp	.LBB18_11
.LBB18_11:                              # %do.body
                                        #   in Loop: Header=BB18_5 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -96(%rbp)
# BB#13:                                # %do.body.32
                                        #   in Loop: Header=BB18_5 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_3(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#14:                                # %do.end.54
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB18_5
.LBB18_16:                              # %for.end
	movl	$0, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB18_17:                              # %for.cond.56
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jae	.LBB18_26
# BB#18:                                # %for.body.60
                                        #   in Loop: Header=BB18_17 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB18_20
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_17 Depth=1
	cmpl	$4, -72(%rbp)
	jne	.LBB18_21
.LBB18_20:                              # %if.then.65
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_25
.LBB18_21:                              # %if.end.66
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	-72(%rbp), %eax
	shrl	$2, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB18_23
# BB#22:                                # %if.then.69
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-88(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, %edx
	callq	memcpy@PLT
	jmp	.LBB18_24
.LBB18_23:                              # %if.else
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, %edx
	callq	memcpy@PLT
.LBB18_24:                              # %if.end.74
                                        #   in Loop: Header=BB18_17 Depth=1
	jmp	.LBB18_25
.LBB18_25:                              # %for.inc.75
                                        #   in Loop: Header=BB18_17 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rcx
	movl	288(%rcx), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	jmp	.LBB18_17
.LBB18_26:                              # %for.end.80
	jmp	.LBB18_45
.LBB18_27:                              # %sw.bb.81
	movl	.Lgimp_color_scale_render_alpha.light(%rip), %eax
	movl	%eax, -124(%rbp)
	movl	.Lgimp_color_scale_render_alpha.dark(%rip), %eax
	movl	%eax, -128(%rbp)
	movl	$0, -72(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -88(%rbp)
.LBB18_28:                              # %for.cond.84
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_36 Depth 2
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	284(%rcx), %eax
	jae	.LBB18_44
# BB#29:                                # %for.body.88
                                        #   in Loop: Header=BB18_28 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-8(%rbp), %rcx
	movl	284(%rcx), %eax
	decl	%eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_31
# BB#30:                                # %if.then.95
                                        #   in Loop: Header=BB18_28 Depth=1
	movsd	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB18_31:                              # %if.end.97
                                        #   in Loop: Header=BB18_28 Depth=1
	jmp	.LBB18_32
.LBB18_32:                              # %do.body.98
                                        #   in Loop: Header=BB18_28 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -124(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -123(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -122(%rbp)
# BB#33:                                # %do.end.120
                                        #   in Loop: Header=BB18_28 Depth=1
	jmp	.LBB18_34
.LBB18_34:                              # %do.body.121
                                        #   in Loop: Header=BB18_28 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_3(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -128(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -127(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -126(%rbp)
# BB#35:                                # %do.end.143
                                        #   in Loop: Header=BB18_28 Depth=1
	movl	$0, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB18_36:                              # %for.cond.144
                                        #   Parent Loop BB18_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	280(%rcx), %eax
	jae	.LBB18_42
# BB#37:                                # %for.body.148
                                        #   in Loop: Header=BB18_36 Depth=2
	movl	-68(%rbp), %eax
	shrl	$2, %eax
	movl	-72(%rbp), %ecx
	shrl	$2, %ecx
	xorl	%ecx, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB18_39
# BB#38:                                # %if.then.153
                                        #   in Loop: Header=BB18_36 Depth=2
	movb	-124(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-123(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-122(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, 2(%rcx)
	movb	-121(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, 3(%rcx)
	jmp	.LBB18_40
.LBB18_39:                              # %if.else.162
                                        #   in Loop: Header=BB18_36 Depth=2
	movb	-128(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-127(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-126(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, 2(%rcx)
	movb	-125(%rbp), %al
	movq	-96(%rbp), %rcx
	movb	%al, 3(%rcx)
.LBB18_40:                              # %if.end.171
                                        #   in Loop: Header=BB18_36 Depth=2
	jmp	.LBB18_41
.LBB18_41:                              # %for.inc.172
                                        #   in Loop: Header=BB18_36 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-96(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB18_36
.LBB18_42:                              # %for.end.175
                                        #   in Loop: Header=BB18_28 Depth=1
	jmp	.LBB18_43
.LBB18_43:                              # %for.inc.176
                                        #   in Loop: Header=BB18_28 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rcx
	movl	288(%rcx), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	jmp	.LBB18_28
.LBB18_44:                              # %for.end.181
	jmp	.LBB18_45
.LBB18_45:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_scale_render_alpha, .Lfunc_end18-gimp_color_scale_render_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	should_invert,@function
should_invert:                          # @should_invert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_range_get_inverted@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_range_get_flippable@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_orientable_get_orientation@PLT
	cmpl	$0, %eax
	jne	.LBB19_11
# BB#1:                                 # %if.then
	cmpl	$0, -20(%rbp)
	je	.LBB19_3
# BB#2:                                 # %land.lhs.true
	movb	$1, %al
	cmpl	$0, -24(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
	je	.LBB19_10
.LBB19_3:                               # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true.7
	cmpl	$0, -24(%rbp)
	je	.LBB19_6
# BB#5:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_direction@PLT
	movb	$1, %cl
	cmpl	$1, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB19_10
.LBB19_6:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB19_9
# BB#7:                                 # %land.lhs.true.15
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB19_9
# BB#8:                                 # %land.rhs
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$2, %eax
	sete	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB19_9:                               # %land.end
	movb	-49(%rbp), %al          # 1-byte Reload
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB19_10:                              # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB19_12
.LBB19_11:                              # %if.else
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB19_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	should_invert, .Lfunc_end19-should_invert
	.cfi_endproc

	.type	gimp_color_scale_get_type.g_define_type_id__volatile,@object # @gimp_color_scale_get_type.g_define_type_id__volatile
	.local	gimp_color_scale_get_type.g_define_type_id__volatile
	.comm	gimp_color_scale_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorScale"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"orientation"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"channel"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"LibGimpWidgets"
	.size	.L.str.3, 15

	.type	.L__func__.gimp_color_scale_set_channel,@object # @__func__.gimp_color_scale_set_channel
.L__func__.gimp_color_scale_set_channel:
	.asciz	"gimp_color_scale_set_channel"
	.size	.L__func__.gimp_color_scale_set_channel, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_COLOR_SCALE (scale)"
	.size	.L.str.4, 28

	.type	.L__func__.gimp_color_scale_set_color,@object # @__func__.gimp_color_scale_set_color
.L__func__.gimp_color_scale_set_color:
	.asciz	"gimp_color_scale_set_color"
	.size	.L__func__.gimp_color_scale_set_color, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rgb != NULL"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"hsv != NULL"
	.size	.L.str.6, 12

	.type	gimp_color_scale_parent_class,@object # @gimp_color_scale_parent_class
	.local	gimp_color_scale_parent_class
	.comm	gimp_color_scale_parent_class,8,8
	.type	GimpColorScale_private_offset,@object # @GimpColorScale_private_offset
	.local	GimpColorScale_private_offset
	.comm	GimpColorScale_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcolorscale.c"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"trough-border"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"focus-line-width"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"focus-padding"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"trough"
	.size	.L.str.13, 7

	.type	.Lgimp_color_scale_render_alpha.light,@object # @gimp_color_scale_render_alpha.light
	.section	.rodata.cst4,"aM",@progbits,4
.Lgimp_color_scale_render_alpha.light:
	.zero	4,255
	.size	.Lgimp_color_scale_render_alpha.light, 4

	.type	.Lgimp_color_scale_render_alpha.dark,@object # @gimp_color_scale_render_alpha.dark
.Lgimp_color_scale_render_alpha.dark:
	.zero	4,255
	.size	.Lgimp_color_scale_render_alpha.dark, 4

	.type	.Lgimp_color_scale_render_stipple.insensitive,@object # @gimp_color_scale_render_stipple.insensitive
.Lgimp_color_scale_render_stipple.insensitive:
	.zero	4,255
	.size	.Lgimp_color_scale_render_stipple.insensitive, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
