	.text
	.file	"gimpcolorarea.bc"
	.globl	gimp_color_area_get_type
	.align	16, 0x90
	.type	gimp_color_area_get_type,@function
gimp_color_area_get_type:               # @gimp_color_area_get_type
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
	movq	gimp_color_area_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_area_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_drawing_area_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$792, %edx              # imm = 0x318
	leaq	gimp_color_area_class_intern_init(%rip), %rdi
	movl	$168, %r8d
	leaq	gimp_color_area_init(%rip), %rcx
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
	leaq	gimp_color_area_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_area_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_area_get_type, .Lfunc_end0-gimp_color_area_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_class_intern_init,@function
gimp_color_area_class_intern_init:      # @gimp_color_area_class_intern_init
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
	movq	%rax, gimp_color_area_parent_class(%rip)
	cmpl	$0, GimpColorArea_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorArea_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_area_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_area_class_intern_init, .Lfunc_end1-gimp_color_area_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_init,@function
gimp_color_area_init:                   # @gimp_color_area_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 116(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movb	160(%rdi), %al
	andb	$-2, %al
	movb	%al, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	target(%rip), %rdx
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_area_init, .Lfunc_end2-gimp_color_area_init
	.cfi_endproc

	.globl	gimp_color_area_new
	.align	16, 0x90
	.type	gimp_color_area_new,@function
gimp_color_area_new:                    # @gimp_color_area_new
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	callq	gimp_color_area_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.3(%rip), %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r10d
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_area_new, .Lfunc_end3-gimp_color_area_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.text
	.globl	gimp_color_area_set_color
	.align	16, 0x90
	.type	gimp_color_area_set_color,@function
gimp_color_area_set_color:              # @gimp_color_area_set_color
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_area_get_type@PLT
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_set_color(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_set_color(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	addq	$128, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgba_distance@PLT
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_19
# BB#18:                                # %if.then.20
	jmp	.LBB4_20
.LBB4_19:                               # %if.end.21
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 128(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 152(%rax)
	movq	-8(%rbp), %rax
	movb	160(%rax), %sil
	andb	$-3, %sil
	orb	$2, %sil
	movb	%sil, 160(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_color_area_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB4_20:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_area_set_color, .Lfunc_end4-gimp_color_area_set_color
	.cfi_endproc

	.globl	gimp_color_area_get_color
	.align	16, 0x90
	.type	gimp_color_area_get_color,@function
gimp_color_area_get_color:              # @gimp_color_area_get_color
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_area_get_type@PLT
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_get_color(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_get_color(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	136(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	144(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	152(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB5_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_area_get_color, .Lfunc_end5-gimp_color_area_get_color
	.cfi_endproc

	.globl	gimp_color_area_has_alpha
	.align	16, 0x90
	.type	gimp_color_area_has_alpha,@function
gimp_color_area_has_alpha:              # @gimp_color_area_has_alpha
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_area_get_type@PLT
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_has_alpha(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 124(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_area_has_alpha, .Lfunc_end6-gimp_color_area_has_alpha
	.cfi_endproc

	.globl	gimp_color_area_set_type
	.align	16, 0x90
	.type	gimp_color_area_set_type,@function
gimp_color_area_set_type:               # @gimp_color_area_set_type
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
	callq	gimp_color_area_get_type@PLT
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_set_type(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_14
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	124(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB7_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
	movq	-8(%rbp), %rcx
	movb	160(%rcx), %dl
	andb	$-3, %dl
	orb	$2, %dl
	movb	%dl, 160(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB7_14:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_area_set_type, .Lfunc_end7-gimp_color_area_set_type
	.cfi_endproc

	.globl	gimp_color_area_set_draw_border
	.align	16, 0x90
	.type	gimp_color_area_set_draw_border,@function
gimp_color_area_set_draw_border:        # @gimp_color_area_set_draw_border
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
	callq	gimp_color_area_get_type@PLT
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_color_area_set_draw_border(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_14
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movb	160(%rdx), %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	cmpl	-12(%rbp), %eax
	je	.LBB8_14
# BB#13:                                # %if.then.14
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movb	%al, %dl
	movb	160(%rcx), %sil
	andb	$1, %dl
	andb	$-2, %sil
	orb	%dl, %sil
	movb	%sil, 160(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB8_14:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_area_set_draw_border, .Lfunc_end8-gimp_color_area_set_draw_border
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_area_class_init,@function
gimp_color_area_class_init:             # @gimp_color_area_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	$1, %edx
	movl	$752, %ecx              # imm = 0x2F0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	gimp_color_area_drag_data_get(%rip), %rsi
	leaq	gimp_color_area_drag_data_received(%rip), %r8
	leaq	gimp_color_area_drag_end(%rip), %r9
	leaq	gimp_color_area_drag_begin(%rip), %r10
	leaq	gimp_color_area_expose(%rip), %r11
	leaq	gimp_color_area_state_changed(%rip), %rbx
	leaq	gimp_color_area_size_allocate(%rip), %r14
	leaq	gimp_color_area_finalize(%rip), %r15
	leaq	gimp_color_area_set_property(%rip), %r12
	leaq	gimp_color_area_get_property(%rip), %r13
	movl	%eax, gimp_color_area_signals(%rip)
	movq	-56(%rbp), %rax
	movq	%r13, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 248(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 256(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 392(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 568(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 576(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 624(%rax)
	movq	-64(%rbp), %rax
	movq	%rsi, 584(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 752(%rax)
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	leaq	.L.str.1(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	leaq	-96(%rbp), %r8
	movl	$231, %r9d
	movq	-56(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb@PLT
	movl	$1, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_color_area_type_get_type@PLT
	leaq	.L.str.2(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$2, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gdk_modifier_type_get_type@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$234, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_flags@PLT
	movl	$3, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean@PLT
	movl	$4, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_area_class_init, .Lfunc_end9-gimp_color_area_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_get_property,@function
gimp_color_area_get_property:           # @gimp_color_area_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_8
.LBB10_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_9
.LBB10_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_4
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed@PLT
	jmp	.LBB10_7
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	124(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB10_7
.LBB10_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movb	160(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB10_7
.LBB10_4:                               # %sw.default
	jmp	.LBB10_5
.LBB10_5:                               # %do.body
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
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	$257, %edx              # imm = 0x101
	leaq	.L.str.11(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB10_7
.LBB10_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_area_get_property, .Lfunc_end10-gimp_color_area_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_set_property,@function
gimp_color_area_set_property:           # @gimp_color_area_set_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB11_7
# BB#11:                                # %entry
	leaq	.LJTI11_0(%rip), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB11_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boxed@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_area_set_color@PLT
	jmp	.LBB11_10
.LBB11_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_area_set_type@PLT
	jmp	.LBB11_10
.LBB11_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_flags@PLT
	andl	$1792, %eax             # imm = 0x700
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB11_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	target(%rip), %rdx
	movl	$1, %ecx
	movl	$6, %r8d
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_drag_source_set@PLT
.LBB11_5:                               # %if.end
	jmp	.LBB11_10
.LBB11_6:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_area_set_draw_border@PLT
	jmp	.LBB11_10
.LBB11_7:                               # %sw.default
	jmp	.LBB11_8
.LBB11_8:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	$297, %edx              # imm = 0x129
	leaq	.L.str.11(%rip), %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB11_10
.LBB11_10:                              # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_area_set_property, .Lfunc_end11-gimp_color_area_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI11_0:
	.long	.LBB11_1-.LJTI11_0
	.long	.LBB11_2-.LJTI11_0
	.long	.LBB11_3-.LJTI11_0
	.long	.LBB11_6-.LJTI11_0

	.text
	.align	16, 0x90
	.type	gimp_color_area_finalize,@function
gimp_color_area_finalize:               # @gimp_color_area_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_area_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_area_finalize, .Lfunc_end12-gimp_color_area_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_size_allocate,@function
gimp_color_area_size_allocate:          # @gimp_color_area_size_allocate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_color_area_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 248(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	gimp_color_area_parent_class(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	112(%rax), %ecx
	jne	.LBB13_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	116(%rax), %ecx
	je	.LBB13_5
.LBB13_4:                               # %if.then.10
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 116(%rax)
	movq	-24(%rbp), %rax
	movl	112(%rax), %ecx
	shll	$2, %ecx
	addl	$4, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 120(%rax)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free@PLT
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	116(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 104(%rsi)
	movq	-24(%rbp), %rax
	movb	160(%rax), %dl
	andb	$-3, %dl
	orb	$2, %dl
	movb	%dl, 160(%rax)
.LBB13_5:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_area_size_allocate, .Lfunc_end13-gimp_color_area_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_state_changed,@function
gimp_color_area_state_changed:          # @gimp_color_area_state_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state@PLT
	cmpl	$4, %eax
	je	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -12(%rbp)
	jne	.LBB14_3
.LBB14_2:                               # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movb	160(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 160(%rax)
.LBB14_3:                               # %if.end
	movq	gimp_color_area_parent_class(%rip), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 256(%rax)
	je	.LBB14_5
# BB#4:                                 # %if.then.6
	movq	gimp_color_area_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	256(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB14_5:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_area_state_changed, .Lfunc_end14-gimp_color_area_state_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
.LCPI15_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_area_expose,@function
gimp_color_area_expose:                 # @gimp_color_area_expose
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	jne	.LBB15_3
.LBB15_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.end
	movq	-32(%rbp), %rax
	movb	160(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB15_5
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	gimp_color_area_render
.LBB15_5:                               # %if.end.7
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_clip@PLT
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	112(%rax), %edx
	movq	-32(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	120(%rax), %r8d
	callq	cairo_image_surface_create_for_data@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface@PLT
	movq	-56(%rbp), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_paint@PLT
	movq	-32(%rbp), %rax
	movb	160(%rax), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	cmpl	$0, %ecx
	je	.LBB15_7
# BB#6:                                 # %if.then.16
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cairo_set_line_width@PLT
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state@PLT
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	leaq	(%rdi,%rdi,2), %rdi
	leaq	24(%rcx,%rdi,4), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gdk_cairo_set_source_color@PLT
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	112(%rcx), %eax
	movl	116(%rcx), %edx
	decl	%eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm2
	decl	%edx
	movl	%edx, %ecx
	cvtsi2sdq	%rcx, %xmm3
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle@PLT
	movq	-48(%rbp), %rdi
	callq	cairo_stroke@PLT
.LBB15_7:                               # %if.end.22
	movq	-48(%rbp), %rdi
	callq	cairo_destroy@PLT
	movl	$0, -4(%rbp)
.LBB15_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_area_expose, .Lfunc_end15-gimp_color_area_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_drag_begin,@function
gimp_color_area_drag_begin:             # @gimp_color_area_drag_begin
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
	subq	$144, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	gtk_window_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$13, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_type_hint@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_realize@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rdi
	xorl	%edx, %edx
	movl	124(%rax), %esi
	callq	gimp_color_area_new@PLT
	movl	$32, %ecx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.13(%rip), %rsi
	movq	gtk_widget_destroy@GOTPCREL(%rip), %rdi
	movq	-56(%rbp), %r8
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full@PLT
	movl	$4294967288, %r9d       # imm = 0xFFFFFFF8
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_drag_set_icon_widget@PLT
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_area_drag_begin, .Lfunc_end16-gimp_color_area_drag_begin
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_drag_end,@function
gimp_color_area_drag_end:               # @gimp_color_area_drag_end
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.13(%rip), %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_area_drag_end, .Lfunc_end17-gimp_color_area_drag_end
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	gimp_color_area_drag_data_received,@function
gimp_color_area_drag_data_received:     # @gimp_color_area_drag_data_received
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
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length@PLT
	cmpl	$8, %eax
	jne	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format@PLT
	cmpl	$16, %eax
	je	.LBB18_3
.LBB18_2:                               # %if.then
	leaq	.L.str.14(%rip), %rdi
	leaq	.L__func__.gimp_color_area_drag_data_received(%rip), %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB18_4
.LBB18_3:                               # %if.end
	leaq	-88(%rbp), %rdi
	movsd	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	gtk_selection_data_get_data@PLT
	movq	%rax, -56(%rbp)
	movzwl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movzwl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm1, %xmm2
	movzwl	4(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	divsd	%xmm1, %xmm3
	movzwl	6(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-120(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
	leaq	-88(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_color_area_set_color@PLT
.LBB18_4:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_area_drag_data_received, .Lfunc_end18-gimp_color_area_drag_data_received
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	gimp_color_area_drag_data_get,@function
gimp_color_area_drag_data_get:          # @gimp_color_area_drag_data_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %r9w
	movw	%r9w, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %r9w
	movw	%r9w, -46(%rbp)
	movq	-40(%rbp), %rax
	movsd	144(%rax), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %r9w
	movw	%r9w, -44(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movw	$-1, -42(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movq	-40(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movw	%dx, -42(%rbp)
.LBB19_3:                               # %if.end
	leaq	.L.str.12(%rip), %rdi
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gdk_atom_intern@PLT
	movl	$16, %edx
	movl	$8, %r8d
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	gtk_selection_data_set@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_area_drag_data_get, .Lfunc_end19-gimp_color_area_drag_data_get
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
	leaq	.L.str.4(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_area_render,@function
gimp_color_area_render:                 # @gimp_color_area_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp71:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 104(%rdi)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_is_sensitive@PLT
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-16(%rbp), %rdi
	movl	124(%rdi), %edx
	movq	-16(%rbp), %rdi
	movq	104(%rdi), %rcx
	movq	-16(%rbp), %rdi
	movl	112(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movl	116(%rdi), %r9d
	movq	-16(%rbp), %rdi
	movl	120(%rdi), %eax
	movq	-16(%rbp), %rdi
	addq	$128, %rdi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%eax, (%rsp)
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_color_area_render_buf
	movq	-16(%rbp), %rcx
	movb	160(%rcx), %bl
	andb	$-3, %bl
	movb	%bl, 160(%rcx)
.LBB21_3:                               # %return
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_color_area_render, .Lfunc_end21-gimp_color_area_render
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
.LCPI22_1:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI22_2:
	.quad	4643211180634609287     # double 255.999
.LCPI22_3:
	.quad	4600877379321698714     # double 0.40000000000000002
	.text
	.align	16, 0x90
	.type	gimp_color_area_render_buf,@function
gimp_color_area_render_buf:             # @gimp_color_area_render_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
	movl	-16(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	je	.LBB22_1
	jmp	.LBB22_54
.LBB22_54:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB22_2
	jmp	.LBB22_55
.LBB22_55:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB22_3
	jmp	.LBB22_4
.LBB22_1:                               # %sw.bb
	movl	$0, -68(%rbp)
	jmp	.LBB22_4
.LBB22_2:                               # %sw.bb.1
	movl	$4, -68(%rbp)
	jmp	.LBB22_4
.LBB22_3:                               # %sw.bb.2
	movl	$8, -68(%rbp)
.LBB22_4:                               # %sw.epilog
	leaq	-77(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar@PLT
	movq	-56(%rbp), %rax
	movzwl	136(%rax), %r8d
	sarl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -80(%rbp)
	movq	-56(%rbp), %rax
	movzwl	138(%rax), %r8d
	sarl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -79(%rbp)
	movq	-56(%rbp), %rax
	movzwl	140(%rax), %r8d
	sarl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -78(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB22_7
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, -68(%rbp)
	je	.LBB22_7
# BB#6:                                 # %lor.lhs.false.21
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_24
	jp	.LBB22_24
.LBB22_7:                               # %if.then
	movl	$0, -64(%rbp)
.LBB22_8:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_10 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB22_23
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB22_8 Depth=1
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -60(%rbp)
.LBB22_10:                              # %for.cond.27
                                        #   Parent Loop BB22_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB22_21
# BB#11:                                # %for.body.30
                                        #   in Loop: Header=BB22_10 Depth=2
	cmpl	$0, -12(%rbp)
	je	.LBB22_16
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_10 Depth=2
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB22_16
# BB#13:                                # %if.then.33
                                        #   in Loop: Header=BB22_10 Depth=2
	jmp	.LBB22_14
.LBB22_14:                              # %do.body
                                        #   in Loop: Header=BB22_10 Depth=2
	movb	-78(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-79(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-80(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#15:                                # %do.end
                                        #   in Loop: Header=BB22_10 Depth=2
	jmp	.LBB22_19
.LBB22_16:                              # %if.else
                                        #   in Loop: Header=BB22_10 Depth=2
	jmp	.LBB22_17
.LBB22_17:                              # %do.body.40
                                        #   in Loop: Header=BB22_10 Depth=2
	movb	-75(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-76(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-77(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#18:                                # %do.end.47
                                        #   in Loop: Header=BB22_10 Depth=2
	jmp	.LBB22_19
.LBB22_19:                              # %if.end
                                        #   in Loop: Header=BB22_10 Depth=2
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB22_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB22_10
.LBB22_21:                              # %for.end
                                        #   in Loop: Header=BB22_8 Depth=1
	jmp	.LBB22_22
.LBB22_22:                              # %for.inc.49
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB22_8
.LBB22_23:                              # %for.end.51
	jmp	.LBB22_53
.LBB22_24:                              # %if.end.52
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI22_1(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LCPI22_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -71(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	24(%rax), %xmm3         # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -70(%rbp)
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rax), %xmm3         # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -69(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI22_3(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -74(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -73(%rbp)
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -72(%rbp)
	movl	$0, -64(%rbp)
.LBB22_25:                              # %for.cond.97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_27 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jae	.LBB22_53
# BB#26:                                # %for.body.100
                                        #   in Loop: Header=BB22_25 Depth=1
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -60(%rbp)
.LBB22_27:                              # %for.cond.104
                                        #   Parent Loop BB22_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB22_51
# BB#28:                                # %for.body.107
                                        #   in Loop: Header=BB22_27 Depth=2
	movl	-28(%rbp), %eax
	subl	-60(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-64(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jbe	.LBB22_32
# BB#29:                                # %if.then.113
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_30
.LBB22_30:                              # %do.body.114
                                        #   in Loop: Header=BB22_27 Depth=2
	movb	-75(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-76(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-77(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#31:                                # %do.end.121
                                        #   in Loop: Header=BB22_27 Depth=2
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB22_50
.LBB22_32:                              # %if.end.123
                                        #   in Loop: Header=BB22_27 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	movl	-60(%rbp), %edx
	subl	%edx, %eax
	movl	-32(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm1
	cvtsi2sdq	%rcx, %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-60(%rbp), %eax
	xorl	%edx, %edx
	divl	-68(%rbp)
	movl	-64(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	divl	-68(%rbp)
	movl	-124(%rbp), %edi        # 4-byte Reload
	xorl	%eax, %edi
	andl	$1, %edi
	cmpl	$0, %edi
	je	.LBB22_41
# BB#33:                                # %if.then.133
                                        #   in Loop: Header=BB22_27 Depth=2
	cvttsd2si	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB22_37
# BB#34:                                # %if.then.136
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_35
.LBB22_35:                              # %do.body.137
                                        #   in Loop: Header=BB22_27 Depth=2
	movb	-69(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-70(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-71(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#36:                                # %do.end.144
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_40
.LBB22_37:                              # %if.else.145
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_38
.LBB22_38:                              # %do.body.146
                                        #   in Loop: Header=BB22_27 Depth=2
	movzbl	-69(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-75(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movaps	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	-70(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movaps	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movzbl	-71(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-77(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#39:                                # %do.end.177
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_40
.LBB22_40:                              # %if.end.178
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_49
.LBB22_41:                              # %if.else.179
                                        #   in Loop: Header=BB22_27 Depth=2
	cvttsd2si	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB22_45
# BB#42:                                # %if.then.182
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_43
.LBB22_43:                              # %do.body.183
                                        #   in Loop: Header=BB22_27 Depth=2
	movb	-72(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-73(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-74(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#44:                                # %do.end.190
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_48
.LBB22_45:                              # %if.else.191
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_46
.LBB22_46:                              # %do.body.192
                                        #   in Loop: Header=BB22_27 Depth=2
	movzbl	-72(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-75(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movaps	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	-73(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movaps	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movzbl	-74(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-77(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movb	%cl, 2(%rdx)
# BB#47:                                # %do.end.223
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_48
.LBB22_48:                              # %if.end.224
                                        #   in Loop: Header=BB22_27 Depth=2
	jmp	.LBB22_49
.LBB22_49:                              # %if.end.225
                                        #   in Loop: Header=BB22_27 Depth=2
	movq	-88(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -88(%rbp)
.LBB22_50:                              # %for.inc.227
                                        #   in Loop: Header=BB22_27 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB22_27
.LBB22_51:                              # %for.end.229
                                        #   in Loop: Header=BB22_25 Depth=1
	jmp	.LBB22_52
.LBB22_52:                              # %for.inc.230
                                        #   in Loop: Header=BB22_25 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB22_25
.LBB22_53:                              # %for.end.232
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_color_area_render_buf, .Lfunc_end22-gimp_color_area_render_buf
	.cfi_endproc

	.type	gimp_color_area_get_type.g_define_type_id__volatile,@object # @gimp_color_area_get_type.g_define_type_id__volatile
	.local	gimp_color_area_get_type.g_define_type_id__volatile
	.comm	gimp_color_area_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorArea"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"color"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"type"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drag-mask"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"LibGimpWidgets"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_color_area_set_color,@object # @__func__.gimp_color_area_set_color
.L__func__.gimp_color_area_set_color:
	.asciz	"gimp_color_area_set_color"
	.size	.L__func__.gimp_color_area_set_color, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_COLOR_AREA (area)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color != NULL"
	.size	.L.str.6, 14

	.type	gimp_color_area_signals,@object # @gimp_color_area_signals
	.local	gimp_color_area_signals
	.comm	gimp_color_area_signals,4,4
	.type	.L__func__.gimp_color_area_get_color,@object # @__func__.gimp_color_area_get_color
.L__func__.gimp_color_area_get_color:
	.asciz	"gimp_color_area_get_color"
	.size	.L__func__.gimp_color_area_get_color, 26

	.type	.L__func__.gimp_color_area_has_alpha,@object # @__func__.gimp_color_area_has_alpha
.L__func__.gimp_color_area_has_alpha:
	.asciz	"gimp_color_area_has_alpha"
	.size	.L__func__.gimp_color_area_has_alpha, 26

	.type	.L__func__.gimp_color_area_set_type,@object # @__func__.gimp_color_area_set_type
.L__func__.gimp_color_area_set_type:
	.asciz	"gimp_color_area_set_type"
	.size	.L__func__.gimp_color_area_set_type, 25

	.type	.L__func__.gimp_color_area_set_draw_border,@object # @__func__.gimp_color_area_set_draw_border
.L__func__.gimp_color_area_set_draw_border:
	.asciz	"gimp_color_area_set_draw_border"
	.size	.L__func__.gimp_color_area_set_draw_border, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"draw-border"
	.size	.L.str.7, 12

	.type	gimp_color_area_parent_class,@object # @gimp_color_area_parent_class
	.local	gimp_color_area_parent_class
	.comm	gimp_color_area_parent_class,8,8
	.type	GimpColorArea_private_offset,@object # @GimpColorArea_private_offset
	.local	GimpColorArea_private_offset
	.comm	GimpColorArea_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color-changed"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcolorarea.c"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	target,@object          # @target
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
target:
	.quad	.L.str.12
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	target, 16

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"application/x-color"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-color-area-drag-window"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: received invalid color data"
	.size	.L.str.14, 32

	.type	.L__func__.gimp_color_area_drag_data_received,@object # @__func__.gimp_color_area_drag_data_received
.L__func__.gimp_color_area_drag_data_received:
	.asciz	"gimp_color_area_drag_data_received"
	.size	.L__func__.gimp_color_area_drag_data_received, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
