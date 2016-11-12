	.text
	.file	"gimpviewable.bc"
	.globl	gimp_viewable_get_type
	.align	16, 0x90
	.type	gimp_viewable_get_type,@function
gimp_viewable_get_type:                 # @gimp_viewable_get_type
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
	movq	gimp_viewable_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_viewable_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_viewable_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_viewable_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_viewable_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_viewable_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_viewable_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_viewable_get_type, .Lfunc_end0-gimp_viewable_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_class_intern_init,@function
gimp_viewable_class_intern_init:        # @gimp_viewable_class_intern_init
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
	movq	%rax, gimp_viewable_parent_class
	cmpl	$0, GimpViewable_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewable_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_viewable_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_viewable_class_intern_init, .Lfunc_end1-gimp_viewable_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_init,@function
gimp_viewable_init:                     # @gimp_viewable_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_viewable_init, .Lfunc_end2-gimp_viewable_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_config_iface_init,@function
gimp_viewable_config_iface_init:        # @gimp_viewable_config_iface_init
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
	movabsq	$gimp_viewable_serialize_property, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_viewable_config_iface_init, .Lfunc_end3-gimp_viewable_config_iface_init
	.cfi_endproc

	.globl	gimp_viewable_invalidate_preview
	.align	16, 0x90
	.type	gimp_viewable_invalidate_preview,@function
gimp_viewable_invalidate_preview:       # @gimp_viewable_invalidate_preview
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_invalidate_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB4_14
# BB#13:                                # %if.then.14
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	viewable_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_viewable_invalidate_preview, .Lfunc_end4-gimp_viewable_invalidate_preview
	.cfi_endproc

	.globl	gimp_viewable_size_changed
	.align	16, 0x90
	.type	gimp_viewable_size_changed,@function
gimp_viewable_size_changed:             # @gimp_viewable_size_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_size_changed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	viewable_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_viewable_size_changed, .Lfunc_end5-gimp_viewable_size_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_viewable_calc_preview_size
	.align	16, 0x90
	.type	gimp_viewable_calc_preview_size,@function
gimp_viewable_calc_preview_size:        # @gimp_viewable_calc_preview_size
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
	subq	$96, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	-4(%rbp), %ecx
	cmpl	-8(%rbp), %ecx
	jle	.LBB6_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-4(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
.LBB6_3:                                # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jne	.LBB6_5
	jp	.LBB6_5
	jmp	.LBB6_6
.LBB6_5:                                # %if.then.7
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB6_6:                                # %if.end.9
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	cmpl	$1, -12(%rbp)
	jge	.LBB6_8
# BB#7:                                 # %if.then.19
	movl	$1, -12(%rbp)
.LBB6_8:                                # %if.end.20
	cmpl	$1, -16(%rbp)
	jge	.LBB6_10
# BB#9:                                 # %if.then.23
	movl	$1, -16(%rbp)
.LBB6_10:                               # %if.end.24
	cmpq	$0, -48(%rbp)
	je	.LBB6_12
# BB#11:                                # %if.then.26
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB6_12:                               # %if.end.27
	cmpq	$0, -56(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.29
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB6_14:                               # %if.end.30
	cmpq	$0, -64(%rbp)
	je	.LBB6_18
# BB#15:                                # %if.then.32
	movb	$1, %al
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%al, -81(%rbp)          # 1-byte Spill
	ja	.LBB6_17
# BB#16:                                # %lor.rhs
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB6_17:                               # %lor.end
	movb	-81(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-64(%rbp), %rdx
	movl	%ecx, (%rdx)
.LBB6_18:                               # %if.end.37
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_viewable_calc_preview_size, .Lfunc_end6-gimp_viewable_calc_preview_size
	.cfi_endproc

	.globl	gimp_viewable_get_size
	.align	16, 0x90
	.type	gimp_viewable_get_size,@function
gimp_viewable_get_size:                 # @gimp_viewable_get_size
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.4
	movl	$1, -76(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.5
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.7
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.11
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB7_14
# BB#13:                                # %if.then.14
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -44(%rbp)
.LBB7_14:                               # %if.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.19
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_16:                               # %if.end.20
	cmpq	$0, -32(%rbp)
	je	.LBB7_18
# BB#17:                                # %if.then.22
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_18:                               # %if.end.23
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_viewable_get_size, .Lfunc_end7-gimp_viewable_get_size
	.cfi_endproc

	.globl	gimp_viewable_get_preview_size
	.align	16, 0x90
	.type	gimp_viewable_get_preview_size,@function
gimp_viewable_get_preview_size:         # @gimp_viewable_get_preview_size
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_27
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview_size, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_27
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	leaq	-44(%rbp), %r8
	leaq	-48(%rbp), %r9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	*%rax
	cmpl	$2048, -44(%rbp)        # imm = 0x800
	jge	.LBB8_19
# BB#18:                                # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB8_20
.LBB8_19:                               # %cond.false
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB8_20
.LBB8_20:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$2048, -48(%rbp)        # imm = 0x800
	jge	.LBB8_22
# BB#21:                                # %cond.true.20
	movl	-48(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_23
.LBB8_22:                               # %cond.false.21
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB8_23
.LBB8_23:                               # %cond.end.22
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_25
# BB#24:                                # %if.then.25
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB8_25:                               # %if.end.26
	cmpq	$0, -40(%rbp)
	je	.LBB8_27
# BB#26:                                # %if.then.28
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB8_27:                               # %if.end.29
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_viewable_get_preview_size, .Lfunc_end8-gimp_viewable_get_preview_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4679240012837945344     # double 65536
	.text
	.globl	gimp_viewable_get_popup_size
	.align	16, 0x90
	.type	gimp_viewable_get_popup_size,@function
gimp_viewable_get_popup_size:           # @gimp_viewable_get_popup_size
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_popup_size, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_32
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB9_31
# BB#13:                                # %if.then.14
	cmpl	$1, -52(%rbp)
	jge	.LBB9_15
# BB#14:                                # %if.then.16
	movl	$1, -52(%rbp)
.LBB9_15:                               # %if.end.17
	cmpl	$1, -56(%rbp)
	jge	.LBB9_17
# BB#16:                                # %if.then.19
	movl	$1, -56(%rbp)
.LBB9_17:                               # %if.end.20
	cmpl	$512, -52(%rbp)         # imm = 0x200
	jg	.LBB9_19
# BB#18:                                # %lor.lhs.false
	cmpl	$512, -56(%rbp)         # imm = 0x200
	jle	.LBB9_20
.LBB9_19:                               # %if.then.23
	movl	$512, %eax              # imm = 0x200
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-52(%rbp), %r9
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %edx
	movl	-28(%rbp), %r8d
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movl	%eax, %edx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
.LBB9_20:                               # %if.end.24
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jle	.LBB9_22
# BB#21:                                # %if.then.26
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -88(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
.LBB9_22:                               # %if.end.38
	cmpl	$1, -52(%rbp)
	jge	.LBB9_24
# BB#23:                                # %if.then.41
	movl	$1, -52(%rbp)
.LBB9_24:                               # %if.end.42
	cmpl	$1, -56(%rbp)
	jge	.LBB9_26
# BB#25:                                # %if.then.45
	movl	$1, -56(%rbp)
.LBB9_26:                               # %if.end.46
	cmpq	$0, -40(%rbp)
	je	.LBB9_28
# BB#27:                                # %if.then.48
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_28:                               # %if.end.49
	cmpq	$0, -48(%rbp)
	je	.LBB9_30
# BB#29:                                # %if.then.51
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_30:                               # %if.end.52
	movl	$1, -4(%rbp)
	jmp	.LBB9_32
.LBB9_31:                               # %if.end.53
	movl	$0, -4(%rbp)
.LBB9_32:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_viewable_get_popup_size, .Lfunc_end9-gimp_viewable_get_popup_size
	.cfi_endproc

	.globl	gimp_viewable_get_preview
	.align	16, 0x90
	.type	gimp_viewable_get_preview,@function
gimp_viewable_get_preview:              # @gimp_viewable_get_preview
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_49
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB10_21
.LBB10_16:                              # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB10_20
.LBB10_19:                              # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_20:                              # %if.end.32
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB10_23
.LBB10_22:                              # %if.then.36
	jmp	.LBB10_24
.LBB10_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_49
.LBB10_24:                              # %if.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.end.39
	jmp	.LBB10_26
.LBB10_26:                              # %do.body.40
	cmpl	$0, -28(%rbp)
	jle	.LBB10_28
# BB#27:                                # %if.then.42
	jmp	.LBB10_29
.LBB10_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_49
.LBB10_29:                              # %if.end.44
	jmp	.LBB10_30
.LBB10_30:                              # %do.end.45
	jmp	.LBB10_31
.LBB10_31:                              # %do.body.46
	cmpl	$0, -32(%rbp)
	jle	.LBB10_33
# BB#32:                                # %if.then.48
	jmp	.LBB10_34
.LBB10_33:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_49
.LBB10_34:                              # %if.end.50
	jmp	.LBB10_35
.LBB10_35:                              # %do.end.51
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_37
# BB#36:                                # %if.then.55
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_viewable_get_preview, %rsi
	movb	$0, %al
	callq	g_warning
.LBB10_37:                              # %if.end.56
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB10_39
# BB#38:                                # %if.then.59
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB10_39:                              # %if.end.62
	cmpq	$0, -56(%rbp)
	je	.LBB10_41
# BB#40:                                # %if.then.64
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_49
.LBB10_41:                              # %if.end.65
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_46
# BB#42:                                # %if.then.67
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB10_45
# BB#43:                                # %land.lhs.true.71
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB10_45
# BB#44:                                # %if.then.75
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_49
.LBB10_45:                              # %if.end.77
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	temp_buf_free
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
.LBB10_46:                              # %if.end.80
	movq	-48(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB10_48
# BB#47:                                # %if.then.82
	movq	-48(%rbp), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB10_48:                              # %if.end.85
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_49:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_viewable_get_preview, .Lfunc_end10-gimp_viewable_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.globl	gimp_viewable_get_new_preview
	.align	16, 0x90
	.type	gimp_viewable_get_new_preview,@function
gimp_viewable_get_new_preview:          # @gimp_viewable_get_new_preview
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_46
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_20:                              # %if.end.32
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_23
.LBB12_22:                              # %if.then.36
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_preview, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_46
.LBB12_24:                              # %if.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.39
	jmp	.LBB12_26
.LBB12_26:                              # %do.body.40
	cmpl	$0, -28(%rbp)
	jle	.LBB12_28
# BB#27:                                # %if.then.42
	jmp	.LBB12_29
.LBB12_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_preview, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_46
.LBB12_29:                              # %if.end.44
	jmp	.LBB12_30
.LBB12_30:                              # %do.end.45
	jmp	.LBB12_31
.LBB12_31:                              # %do.body.46
	cmpl	$0, -32(%rbp)
	jle	.LBB12_33
# BB#32:                                # %if.then.48
	jmp	.LBB12_34
.LBB12_33:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_preview, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_46
.LBB12_34:                              # %if.end.50
	jmp	.LBB12_35
.LBB12_35:                              # %do.end.51
	cmpq	$0, -24(%rbp)
	jne	.LBB12_37
# BB#36:                                # %if.then.53
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_preview, %rsi
	movb	$0, %al
	callq	g_warning
.LBB12_37:                              # %if.end.54
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB12_39
# BB#38:                                # %if.then.57
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB12_39:                              # %if.end.60
	cmpq	$0, -48(%rbp)
	je	.LBB12_41
# BB#40:                                # %if.then.62
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_46
.LBB12_41:                              # %if.end.63
	movq	-40(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB12_43
# BB#42:                                # %if.then.65
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB12_43:                              # %if.end.68
	cmpq	$0, -48(%rbp)
	je	.LBB12_45
# BB#44:                                # %if.then.70
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	temp_buf_copy
	movq	%rax, -8(%rbp)
	jmp	.LBB12_46
.LBB12_45:                              # %if.end.72
	movq	$0, -8(%rbp)
.LBB12_46:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_viewable_get_new_preview, .Lfunc_end12-gimp_viewable_get_new_preview
	.cfi_endproc

	.globl	gimp_viewable_get_dummy_preview
	.align	16, 0x90
	.type	gimp_viewable_get_dummy_preview,@function
gimp_viewable_get_dummy_preview:        # @gimp_viewable_get_dummy_preview
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jle	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_preview, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.17
	cmpl	$0, -24(%rbp)
	jle	.LBB13_20
# BB#19:                                # %if.then.19
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_preview, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_21:                              # %if.end.21
	jmp	.LBB13_22
.LBB13_22:                              # %do.end.22
	jmp	.LBB13_23
.LBB13_23:                              # %do.body.23
	cmpl	$3, -28(%rbp)
	je	.LBB13_25
# BB#24:                                # %lor.lhs.false
	cmpl	$4, -28(%rbp)
	jne	.LBB13_26
.LBB13_25:                              # %if.then.26
	jmp	.LBB13_27
.LBB13_26:                              # %if.else.27
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_preview, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_27:                              # %if.end.28
	jmp	.LBB13_28
.LBB13_28:                              # %do.end.29
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	gimp_viewable_get_dummy_pixbuf
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -64(%rbp)
.LBB13_29:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB13_31
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB13_29 Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	callq	memcpy
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movl	-20(%rbp), %eax
	imull	-28(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB13_29
.LBB13_31:                              # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_32:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_viewable_get_dummy_preview, .Lfunc_end13-gimp_viewable_get_dummy_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_viewable_get_dummy_pixbuf
	.align	16, 0x90
	.type	gimp_viewable_get_dummy_pixbuf,@function
gimp_viewable_get_dummy_pixbuf:         # @gimp_viewable_get_dummy_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_pixbuf, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_46
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jle	.LBB14_15
# BB#14:                                # %if.then.13
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_pixbuf, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_46
.LBB14_16:                              # %if.end.15
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.16
	jmp	.LBB14_18
.LBB14_18:                              # %do.body.17
	cmpl	$0, -24(%rbp)
	jle	.LBB14_20
# BB#19:                                # %if.then.19
	jmp	.LBB14_21
.LBB14_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_pixbuf, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_46
.LBB14_21:                              # %if.end.21
	jmp	.LBB14_22
.LBB14_22:                              # %do.end.22
	jmp	.LBB14_23
.LBB14_23:                              # %do.body.23
	cmpl	$3, -28(%rbp)
	je	.LBB14_25
# BB#24:                                # %lor.lhs.false
	cmpl	$4, -28(%rbp)
	jne	.LBB14_26
.LBB14_25:                              # %if.then.26
	jmp	.LBB14_27
.LBB14_26:                              # %if.else.27
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_pixbuf, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_46
.LBB14_27:                              # %if.end.28
	jmp	.LBB14_28
.LBB14_28:                              # %do.end.29
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movabsq	$stock_question_64, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	gdk_pixbuf_new_from_inline
	movq	%rax, -40(%rbp)
# BB#29:                                # %do.body.31
	cmpq	$0, -40(%rbp)
	je	.LBB14_31
# BB#30:                                # %if.then.33
	jmp	.LBB14_32
.LBB14_31:                              # %if.else.34
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_dummy_pixbuf, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_46
.LBB14_32:                              # %if.end.35
	jmp	.LBB14_33
.LBB14_33:                              # %do.end.36
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -64(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB14_35
# BB#34:                                # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB14_36
.LBB14_35:                              # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB14_36:                              # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jle	.LBB14_38
# BB#37:                                # %cond.true.42
	movl	-60(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB14_39
.LBB14_38:                              # %cond.false.43
	movl	-64(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB14_39:                              # %cond.end.44
	movl	-108(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB14_41
# BB#40:                                # %cond.true.49
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB14_42
.LBB14_41:                              # %cond.false.50
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB14_42
.LBB14_42:                              # %cond.end.51
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edi, %edi
	movl	$8, %edx
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%edi, -128(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -60(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -64(%rbp)
	cmpl	$4, -28(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-128(%rbp), %edi        # 4-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	callq	gdk_pixbuf_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_fill
	cmpl	$0, -60(%rbp)
	je	.LBB14_45
# BB#43:                                # %land.lhs.true.64
	cmpl	$0, -64(%rbp)
	je	.LBB14_45
# BB#44:                                # %if.then.66
	movl	$2, %eax
	movl	$255, %ecx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	subl	-60(%rbp), %edx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-132(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movl	-24(%rbp), %r9d
	subl	-64(%rbp), %r9d
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-20(%rbp), %r10d
	subl	-60(%rbp), %r10d
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	cltd
	movl	-132(%rbp), %r10d       # 4-byte Reload
	idivl	%r10d
	cvtsi2sdl	%eax, %xmm0
	movl	-24(%rbp), %eax
	subl	-64(%rbp), %eax
	cltd
	idivl	%r10d
	cvtsi2sdl	%eax, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edx
	movl	-140(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	$2, (%rsp)
	movl	$255, 8(%rsp)
	callq	gdk_pixbuf_composite
.LBB14_45:                              # %if.end.76
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_46:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_viewable_get_dummy_pixbuf, .Lfunc_end14-gimp_viewable_get_dummy_pixbuf
	.cfi_endproc

	.globl	gimp_viewable_get_pixbuf
	.align	16, 0x90
	.type	gimp_viewable_get_pixbuf,@function
gimp_viewable_get_pixbuf:               # @gimp_viewable_get_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_pixbuf, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_49
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB15_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB15_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB15_21
.LBB15_16:                              # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB15_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB15_20
.LBB15_19:                              # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB15_20:                              # %if.end.32
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB15_23
.LBB15_22:                              # %if.then.36
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_pixbuf, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_49
.LBB15_24:                              # %if.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.end.39
	jmp	.LBB15_26
.LBB15_26:                              # %do.body.40
	cmpl	$0, -28(%rbp)
	jle	.LBB15_28
# BB#27:                                # %if.then.42
	jmp	.LBB15_29
.LBB15_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_pixbuf, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_49
.LBB15_29:                              # %if.end.44
	jmp	.LBB15_30
.LBB15_30:                              # %do.end.45
	jmp	.LBB15_31
.LBB15_31:                              # %do.body.46
	cmpl	$0, -32(%rbp)
	jle	.LBB15_33
# BB#32:                                # %if.then.48
	jmp	.LBB15_34
.LBB15_33:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_pixbuf, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_49
.LBB15_34:                              # %if.end.50
	jmp	.LBB15_35
.LBB15_35:                              # %do.end.51
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_37
# BB#36:                                # %if.then.55
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_viewable_get_pixbuf, %rsi
	movb	$0, %al
	callq	g_warning
.LBB15_37:                              # %if.end.56
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB15_39
# BB#38:                                # %if.then.59
	movq	-48(%rbp), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB15_39:                              # %if.end.62
	cmpq	$0, -56(%rbp)
	je	.LBB15_41
# BB#40:                                # %if.then.64
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_41:                              # %if.end.65
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_46
# BB#42:                                # %if.then.67
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gdk_pixbuf_get_width
	cmpl	-28(%rbp), %eax
	jne	.LBB15_45
# BB#43:                                # %land.lhs.true.71
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gdk_pixbuf_get_height
	cmpl	-32(%rbp), %eax
	jne	.LBB15_45
# BB#44:                                # %if.then.75
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_49
.LBB15_45:                              # %if.end.77
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
.LBB15_46:                              # %if.end.80
	movq	-48(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB15_48
# BB#47:                                # %if.then.82
	movq	-48(%rbp), %rax
	movq	240(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB15_48:                              # %if.end.85
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_49:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_viewable_get_pixbuf, .Lfunc_end15-gimp_viewable_get_pixbuf
	.cfi_endproc

	.globl	gimp_viewable_get_new_pixbuf
	.align	16, 0x90
	.type	gimp_viewable_get_new_pixbuf,@function
gimp_viewable_get_new_pixbuf:           # @gimp_viewable_get_new_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_pixbuf, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_46
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB16_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB16_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB16_21
.LBB16_16:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB16_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB16_20
.LBB16_19:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB16_20:                              # %if.end.32
	jmp	.LBB16_21
.LBB16_21:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB16_23
.LBB16_22:                              # %if.then.36
	jmp	.LBB16_24
.LBB16_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_pixbuf, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_46
.LBB16_24:                              # %if.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.end.39
	jmp	.LBB16_26
.LBB16_26:                              # %do.body.40
	cmpl	$0, -28(%rbp)
	jle	.LBB16_28
# BB#27:                                # %if.then.42
	jmp	.LBB16_29
.LBB16_28:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_pixbuf, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_46
.LBB16_29:                              # %if.end.44
	jmp	.LBB16_30
.LBB16_30:                              # %do.end.45
	jmp	.LBB16_31
.LBB16_31:                              # %do.body.46
	cmpl	$0, -32(%rbp)
	jle	.LBB16_33
# BB#32:                                # %if.then.48
	jmp	.LBB16_34
.LBB16_33:                              # %if.else.49
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_pixbuf, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_46
.LBB16_34:                              # %if.end.50
	jmp	.LBB16_35
.LBB16_35:                              # %do.end.51
	cmpq	$0, -24(%rbp)
	jne	.LBB16_37
# BB#36:                                # %if.then.53
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_viewable_get_new_pixbuf, %rsi
	movb	$0, %al
	callq	g_warning
.LBB16_37:                              # %if.end.54
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB16_39
# BB#38:                                # %if.then.57
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB16_39:                              # %if.end.60
	cmpq	$0, -48(%rbp)
	je	.LBB16_41
# BB#40:                                # %if.then.62
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_46
.LBB16_41:                              # %if.end.63
	movq	-40(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB16_43
# BB#42:                                # %if.then.65
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB16_43:                              # %if.end.68
	cmpq	$0, -48(%rbp)
	je	.LBB16_45
# BB#44:                                # %if.then.70
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_copy
	movq	%rax, -8(%rbp)
	jmp	.LBB16_46
.LBB16_45:                              # %if.end.72
	movq	$0, -8(%rbp)
.LBB16_46:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_viewable_get_new_pixbuf, .Lfunc_end16-gimp_viewable_get_new_pixbuf
	.cfi_endproc

	.globl	gimp_viewable_get_description
	.align	16, 0x90
	.type	gimp_viewable_get_description,@function
gimp_viewable_get_description:          # @gimp_viewable_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_description, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_15
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.12
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB17_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB17_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_viewable_get_description, .Lfunc_end17-gimp_viewable_get_description
	.cfi_endproc

	.globl	gimp_viewable_get_stock_id
	.align	16, 0x90
	.type	gimp_viewable_get_stock_id,@function
gimp_viewable_get_stock_id:             # @gimp_viewable_get_stock_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_stock_id, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_15
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_15
.LBB18_14:                              # %if.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB18_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_viewable_get_stock_id, .Lfunc_end18-gimp_viewable_get_stock_id
	.cfi_endproc

	.globl	gimp_viewable_set_stock_id
	.align	16, 0x90
	.type	gimp_viewable_set_stock_id,@function
gimp_viewable_set_stock_id:             # @gimp_viewable_set_stock_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_set_stock_id, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_18
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB19_17
# BB#13:                                # %if.then.17
	movq	-32(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB19_15
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	160(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB19_16
.LBB19_15:                              # %if.then.22
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB19_16:                              # %if.end.25
	jmp	.LBB19_17
.LBB19_17:                              # %if.end.26
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB19_18:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_viewable_set_stock_id, .Lfunc_end19-gimp_viewable_set_stock_id
	.cfi_endproc

	.globl	gimp_viewable_preview_freeze
	.align	16, 0x90
	.type	gimp_viewable_preview_freeze,@function
gimp_viewable_preview_freeze:           # @gimp_viewable_preview_freeze
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_preview_freeze, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_14
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB20_14
# BB#13:                                # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB20_14:                              # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_viewable_preview_freeze, .Lfunc_end20-gimp_viewable_preview_freeze
	.cfi_endproc

	.globl	gimp_viewable_preview_thaw
	.align	16, 0x90
	.type	gimp_viewable_preview_thaw,@function
gimp_viewable_preview_thaw:             # @gimp_viewable_preview_thaw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_preview_thaw, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_19
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jle	.LBB21_15
# BB#14:                                # %if.then.15
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_preview_thaw, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_19
.LBB21_16:                              # %if.end.17
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.18
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB21_19
# BB#18:                                # %if.then.22
	movq	-8(%rbp), %rdi
	callq	gimp_viewable_invalidate_preview
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB21_19:                              # %if.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_viewable_preview_thaw, .Lfunc_end21-gimp_viewable_preview_thaw
	.cfi_endproc

	.globl	gimp_viewable_preview_is_frozen
	.align	16, 0x90
	.type	gimp_viewable_preview_is_frozen,@function
gimp_viewable_preview_is_frozen:        # @gimp_viewable_preview_is_frozen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_preview_is_frozen, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	cmpl	$0, 8(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB22_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_viewable_preview_is_frozen, .Lfunc_end22-gimp_viewable_preview_is_frozen
	.cfi_endproc

	.globl	gimp_viewable_get_parent
	.align	16, 0x90
	.type	gimp_viewable_get_parent,@function
gimp_viewable_get_parent:               # @gimp_viewable_get_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_parent, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB23_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_viewable_get_parent, .Lfunc_end23-gimp_viewable_get_parent
	.cfi_endproc

	.globl	gimp_viewable_set_parent
	.align	16, 0x90
	.type	gimp_viewable_set_parent,@function
gimp_viewable_set_parent:               # @gimp_viewable_set_parent
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_set_parent, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_26
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB24_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB24_21
.LBB24_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB24_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB24_20
.LBB24_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB24_20:                              # %if.end.32
	jmp	.LBB24_21
.LBB24_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB24_23
.LBB24_22:                              # %if.then.36
	jmp	.LBB24_24
.LBB24_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_set_parent, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_26
.LBB24_24:                              # %if.end.38
	jmp	.LBB24_25
.LBB24_25:                              # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 16(%rax)
.LBB24_26:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_viewable_set_parent, .Lfunc_end24-gimp_viewable_set_parent
	.cfi_endproc

	.globl	gimp_viewable_get_children
	.align	16, 0x90
	.type	gimp_viewable_get_children,@function
gimp_viewable_get_children:             # @gimp_viewable_get_children
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_children, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB25_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_viewable_get_children, .Lfunc_end25-gimp_viewable_get_children
	.cfi_endproc

	.globl	gimp_viewable_get_expanded
	.align	16, 0x90
	.type	gimp_viewable_get_expanded,@function
gimp_viewable_get_expanded:             # @gimp_viewable_get_expanded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_get_expanded, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_15
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 272(%rax)
	je	.LBB26_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_15
.LBB26_14:                              # %if.end.17
	movl	$0, -4(%rbp)
.LBB26_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_viewable_get_expanded, .Lfunc_end26-gimp_viewable_get_expanded
	.cfi_endproc

	.globl	gimp_viewable_set_expanded
	.align	16, 0x90
	.type	gimp_viewable_set_expanded,@function
gimp_viewable_set_expanded:             # @gimp_viewable_set_expanded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_set_expanded, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_14
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 264(%rax)
	je	.LBB27_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB27_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_viewable_set_expanded, .Lfunc_end27-gimp_viewable_set_expanded
	.cfi_endproc

	.globl	gimp_viewable_is_ancestor
	.align	16, 0x90
	.type	gimp_viewable_is_ancestor,@function
gimp_viewable_is_ancestor:              # @gimp_viewable_is_ancestor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_is_ancestor, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_30
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB28_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB28_20
.LBB28_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB28_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB28_19
.LBB28_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB28_19:                              # %if.end.31
	jmp	.LBB28_20
.LBB28_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB28_22
# BB#21:                                # %if.then.35
	jmp	.LBB28_23
.LBB28_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_is_ancestor, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_30
.LBB28_23:                              # %if.end.37
	jmp	.LBB28_24
.LBB28_24:                              # %do.end.38
	jmp	.LBB28_25
.LBB28_25:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB28_29
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB28_25 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB28_28
# BB#27:                                # %if.then.43
	movl	$1, -4(%rbp)
	jmp	.LBB28_30
.LBB28_28:                              # %if.end.44
                                        #   in Loop: Header=BB28_25 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB28_25
.LBB28_29:                              # %while.end
	movl	$0, -4(%rbp)
.LBB28_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_viewable_is_ancestor, .Lfunc_end28-gimp_viewable_is_ancestor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_class_init,@function
gimp_viewable_class_init:               # @gimp_viewable_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.16, %rdi
	movl	$1, %edx
	movl	$176, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.17, %rdi
	movl	$1, %edx
	movl	$184, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, viewable_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_viewable_real_get_children, %r9
	movabsq	$gimp_viewable_real_get_description, %r10
	movabsq	$gimp_viewable_real_get_new_pixbuf, %r11
	movabsq	$gimp_viewable_real_get_popup_size, %r14
	movabsq	$gimp_viewable_real_get_preview_size, %r15
	movabsq	$gimp_viewable_real_invalidate_preview, %r12
	movabsq	$.L.str.19, %r13
	movabsq	$.L.str.18, %rcx
	movabsq	$gimp_viewable_get_memsize, %rdx
	movabsq	$gimp_viewable_set_property, %rbx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movabsq	$gimp_viewable_get_property, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movabsq	$gimp_viewable_finalize, %rcx
	movl	%eax, viewable_signals+4
	movq	-56(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-48(%rbp), %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 168(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 176(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 200(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 208(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 232(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 240(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 248(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 256(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$225, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_viewable_class_init, .Lfunc_end29-gimp_viewable_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_finalize,@function
gimp_viewable_finalize:                 # @gimp_viewable_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB30_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB30_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB30_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB30_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB30_6:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_viewable_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_viewable_finalize, .Lfunc_end30-gimp_viewable_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_get_property,@function
gimp_viewable_get_property:             # @gimp_viewable_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB31_1
	jmp	.LBB31_7
.LBB31_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB31_2
	jmp	.LBB31_3
.LBB31_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_string
	jmp	.LBB31_6
.LBB31_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_viewable_preview_is_frozen
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_boolean
	jmp	.LBB31_6
.LBB31_3:                               # %sw.default
	jmp	.LBB31_4
.LBB31_4:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$265, %edx              # imm = 0x109
	movabsq	$.L.str.22, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB31_6
.LBB31_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_viewable_get_property, .Lfunc_end31-gimp_viewable_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_set_property,@function
gimp_viewable_set_property:             # @gimp_viewable_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB32_1
	jmp	.LBB32_7
.LBB32_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB32_2
	jmp	.LBB32_3
.LBB32_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_set_stock_id
	jmp	.LBB32_6
.LBB32_2:                               # %sw.bb.3
	jmp	.LBB32_3
.LBB32_3:                               # %sw.default
	jmp	.LBB32_4
.LBB32_4:                               # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$242, %edx
	movabsq	$.L.str.22, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB32_6
.LBB32_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_viewable_set_property, .Lfunc_end32-gimp_viewable_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_get_memsize,@function
gimp_viewable_get_memsize:              # @gimp_viewable_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	temp_buf_get_memsize
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_g_object_get_memsize
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gdk_pixbuf_get_height
	movslq	%eax, %rcx
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gdk_pixbuf_get_rowstride
	movslq	%eax, %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	imulq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rsi, %rcx
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rcx
	movq	%rcx, (%rsi)
.LBB33_2:                               # %if.end
	movq	gimp_viewable_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_viewable_get_memsize, .Lfunc_end33-gimp_viewable_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_real_invalidate_preview,@function
gimp_viewable_real_invalidate_preview:  # @gimp_viewable_real_invalidate_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB34_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB34_4:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_viewable_real_invalidate_preview, .Lfunc_end34-gimp_viewable_real_invalidate_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_real_get_preview_size,@function
gimp_viewable_real_get_preview_size:    # @gimp_viewable_real_get_preview_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, (%rdi)
	movl	-12(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, (%rdi)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_viewable_real_get_preview_size, .Lfunc_end35-gimp_viewable_real_get_preview_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_real_get_popup_size,@function
gimp_viewable_real_get_popup_size:      # @gimp_viewable_real_get_popup_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-52(%rbp), %rax
	leaq	-56(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	callq	gimp_viewable_get_size
	cmpl	$0, %eax
	je	.LBB36_5
# BB#1:                                 # %if.then
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB36_3
# BB#2:                                 # %lor.lhs.false
	movl	-56(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB36_4
.LBB36_3:                               # %if.then.2
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB36_6
.LBB36_4:                               # %if.end
	jmp	.LBB36_5
.LBB36_5:                               # %if.end.3
	movl	$0, -4(%rbp)
.LBB36_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_viewable_real_get_popup_size, .Lfunc_end36-gimp_viewable_real_get_popup_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_real_get_new_pixbuf,@function
gimp_viewable_real_get_new_pixbuf:      # @gimp_viewable_real_get_new_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_viewable_get_preview
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB37_7
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$1, -60(%rbp)
	je	.LBB37_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$2, -60(%rbp)
	jne	.LBB37_4
.LBB37_3:                               # %if.then.7
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	$3, %ecx
	movl	$4, %edx
	cmpl	$2, -60(%rbp)
	cmovel	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	temp_buf_copy
	movq	-48(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB37_4:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-52(%rbp), %ecx
	imull	-56(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	g_memdup
	xorl	%esi, %esi
	movl	$8, %ecx
	movabsq	$g_free, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	cmpl	$4, -60(%rbp)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	-52(%rbp), %r10d
	movl	-56(%rbp), %r9d
	movl	-52(%rbp), %r11d
	imull	-60(%rbp), %r11d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movl	%r10d, %r8d
	movl	%r11d, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gdk_pixbuf_new_from_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB37_6
# BB#5:                                 # %if.then.18
	movq	-48(%rbp), %rdi
	callq	temp_buf_free
.LBB37_6:                               # %if.end.19
	jmp	.LBB37_7
.LBB37_7:                               # %if.end.20
	movq	-40(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_viewable_real_get_new_pixbuf, .Lfunc_end37-gimp_viewable_real_get_new_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_real_get_description,@function
gimp_viewable_real_get_description:     # @gimp_viewable_real_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_viewable_real_get_description, .Lfunc_end38-gimp_viewable_real_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_real_get_children,@function
gimp_viewable_real_get_children:        # @gimp_viewable_real_get_children
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_viewable_real_get_children, .Lfunc_end39-gimp_viewable_real_get_children
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_serialize_property,@function
gimp_viewable_serialize_property:       # @gimp_viewable_serialize_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %r9d
	subl	$1, %r9d
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	jne	.LBB40_4
	jmp	.LBB40_1
.LBB40_1:                               # %sw.bb
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_config_writer_open
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_config_writer_string
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB40_3:                               # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB40_6
.LBB40_4:                               # %sw.default
	jmp	.LBB40_5
.LBB40_5:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB40_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_viewable_serialize_property, .Lfunc_end40-gimp_viewable_serialize_property
	.cfi_endproc

	.type	gimp_viewable_get_type.g_define_type_id__volatile,@object # @gimp_viewable_get_type.g_define_type_id__volatile
	.local	gimp_viewable_get_type.g_define_type_id__volatile
	.comm	gimp_viewable_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewable"
	.size	.L.str, 13

	.type	gimp_viewable_get_type.g_implement_interface_info,@object # @gimp_viewable_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_viewable_get_type.g_implement_interface_info:
	.quad	gimp_viewable_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_viewable_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_viewable_invalidate_preview,@object # @__func__.gimp_viewable_invalidate_preview
.L__func__.gimp_viewable_invalidate_preview:
	.asciz	"gimp_viewable_invalidate_preview"
	.size	.L__func__.gimp_viewable_invalidate_preview, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.2, 28

	.type	viewable_signals,@object # @viewable_signals
	.local	viewable_signals
	.comm	viewable_signals,8,4
	.type	.L__func__.gimp_viewable_size_changed,@object # @__func__.gimp_viewable_size_changed
.L__func__.gimp_viewable_size_changed:
	.asciz	"gimp_viewable_size_changed"
	.size	.L__func__.gimp_viewable_size_changed, 27

	.type	.L__func__.gimp_viewable_get_size,@object # @__func__.gimp_viewable_get_size
.L__func__.gimp_viewable_get_size:
	.asciz	"gimp_viewable_get_size"
	.size	.L__func__.gimp_viewable_get_size, 23

	.type	.L__func__.gimp_viewable_get_preview_size,@object # @__func__.gimp_viewable_get_preview_size
.L__func__.gimp_viewable_get_preview_size:
	.asciz	"gimp_viewable_get_preview_size"
	.size	.L__func__.gimp_viewable_get_preview_size, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"size > 0"
	.size	.L.str.3, 9

	.type	.L__func__.gimp_viewable_get_popup_size,@object # @__func__.gimp_viewable_get_popup_size
.L__func__.gimp_viewable_get_popup_size:
	.asciz	"gimp_viewable_get_popup_size"
	.size	.L__func__.gimp_viewable_get_popup_size, 29

	.type	.L__func__.gimp_viewable_get_preview,@object # @__func__.gimp_viewable_get_preview
.L__func__.gimp_viewable_get_preview:
	.asciz	"gimp_viewable_get_preview"
	.size	.L__func__.gimp_viewable_get_preview, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"width > 0"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"height > 0"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: context is NULL"
	.size	.L.str.7, 20

	.type	.L__func__.gimp_viewable_get_new_preview,@object # @__func__.gimp_viewable_get_new_preview
.L__func__.gimp_viewable_get_new_preview:
	.asciz	"gimp_viewable_get_new_preview"
	.size	.L__func__.gimp_viewable_get_new_preview, 30

	.type	.L__func__.gimp_viewable_get_dummy_preview,@object # @__func__.gimp_viewable_get_dummy_preview
.L__func__.gimp_viewable_get_dummy_preview:
	.asciz	"gimp_viewable_get_dummy_preview"
	.size	.L__func__.gimp_viewable_get_dummy_preview, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bpp == 3 || bpp == 4"
	.size	.L.str.8, 21

	.type	.L__func__.gimp_viewable_get_pixbuf,@object # @__func__.gimp_viewable_get_pixbuf
.L__func__.gimp_viewable_get_pixbuf:
	.asciz	"gimp_viewable_get_pixbuf"
	.size	.L__func__.gimp_viewable_get_pixbuf, 25

	.type	.L__func__.gimp_viewable_get_new_pixbuf,@object # @__func__.gimp_viewable_get_new_pixbuf
.L__func__.gimp_viewable_get_new_pixbuf:
	.asciz	"gimp_viewable_get_new_pixbuf"
	.size	.L__func__.gimp_viewable_get_new_pixbuf, 29

	.type	.L__func__.gimp_viewable_get_dummy_pixbuf,@object # @__func__.gimp_viewable_get_dummy_pixbuf
.L__func__.gimp_viewable_get_dummy_pixbuf:
	.asciz	"gimp_viewable_get_dummy_pixbuf"
	.size	.L__func__.gimp_viewable_get_dummy_pixbuf, 31

	.type	stock_question_64,@object # @stock_question_64
	.section	.rodata,"a",@progbits
	.align	4
stock_question_64:
	.asciz	"GdkP\000\000@\030\001\001\000\002\000\000\001\000\000\000\000@\000\000\000@\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000$I\211\034!L\210k$O\214\261%P\215\315$N\213\344\"L\211\365\"L\211\370\"M\212\356$O\214\331%P\215\300$N\213\226\036H\205C@@\200\004\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 J\212\030$K\210\201$N\213\333%O\214\363?i\243\366]\204\270\377j\217\301\377v\231\311\377\200\242\317\377\202\244\321\377{\236\314\377p\225\305\377f\214\275\377Qz\260\376/Y\224\357\"M\211\363%O\213\262\"J\206L\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000+@\200\f\"L\211\206#M\212\362Fo\246\371k\220\301\377\206\247\322\377\221\257\326\377\221\257\326\377\222\260\327\377\222\260\327\377\222\260\327\377\222\260\327\377\222\260\327\377\222\260\327\377\222\260\327\377\221\257\326\377\216\255\325\377{\236\314\377[\202\266\377/X\224\360#M\213\323\037K\210:\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\"L\213a\"L\211\356?i\242\365x\234\311\377\220\256\325\377\220\257\325\377\221\257\326\377\222\260\327\377\222\260\327\377\222\261\327\377\222\261\327\377\217\256\326\377\215\255\326\377\221\260\327\377\222\261\327\377\222\261\327\377\222\261\327\377\222\260\327\377\221\257\326\377\221\257\326\377\212\252\323\377^\206\272\377'Q\216\361%N\214\272 J\212\030\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000@@\200\004\"N\212\235-X\222\361o\224\303\377\216\254\324\377\220\256\325\377\220\257\325\377\221\257\326\377\213\253\324\377{\240\317\377l\225\311\377e\220\310\377`\214\306\377_\214\306\377_\214\306\377_\214\306\377c\217\310\377h\222\311\377u\233\315\377\205\247\323\377\221\257\327\377\222\260\327\377\221\257\326\377\220\257\325\377\205\246\320\377Nw\257\373$M\212\352\036K\2073\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\036K\207\021$O\212\3119d\236\364\202\243\316\377\217\255\324\377\220\256\325\377\220\257\325\377\205\246\322\377i\222\310\377]\212\304\377^\213\305\377^\213\305\377_\214\306\377`\215\307\377`\215\307\377`\215\307\377`\215\307\377`\215\307\377_\214\306\377_\214\306\377^\213\305\377a\215\305\377w\235\315\377\220\256\326\377\221\257\326\377\220\257\325\377\216\255\324\377a\210\274\377$N\213\361\"J\207Y\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000'N\211\r\"M\212\336Ir\252\371\207\247\320\377\216\255\323\377\220\256\325\377\211\251\323\377l\225\310\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377_\214\306\377`\215\307\377a\216\310\377a\216\310\377a\216\310\377a\216\310\377a\216\310\377a\216\310\377`\215\307\377_\214\306\377^\213\305\377]\212\304\377a\215\305\377|\240\316\377\220\257\325\377\220\256\325\377\217\255\324\377p\224\305\377(S\216\362!M\207d\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\200\200\002#N\212\276Fo\247\370\213\252\322\377\216\255\323\377\217\255\324\377\177\242\317\377]\211\302\377[\210\302\377]\212\304\377^\213\305\377_\214\306\377`\215\307\377a\216\310\377a\216\310\377b\217\311\377b\217\311\377c\220\312\377b\217\311\377b\217\311\377b\217\311\377a\216\310\377`\215\307\377_\214\306\377^\213\305\377]\212\304\377\\\211\303\377l\224\310\377\216\255\324\377\220\256\325\377\216\255\323\377s\227\306\377%O\213\362\036I\206;\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000#L\212\2204_\232\363\206\246\317\377\216\254\323\377\216\255\323\377u\233\312\377[\207\301\377[\210\302\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377`\215\307\377a\216\310\377b\217\311\377c\220\312\377d\221\313\377d\221\313\377d\221\313\377c\220\312\377c\220\312\377b\217\311\377a\216\310\377`\215\307\377_\214\306\377^\213\305\377]\212\304\377[\210\302\377c\216\304\377\211\251\322\377\217\255\324\377\216\255\323\377d\213\274\377$M\212\355\"M\210\036\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 J\207H)S\217\361|\236\312\377\215\253\322\377\216\254\323\377w\233\312\377Y\206\300\377Z\207\301\377[\210\302\377\\\211\303\377^\213\305\377_\214\306\377`\215\307\377a\216\310\377b\217\311\377c\220\312\377d\221\313\377e\222\314\377e\222\314\377e\222\314\377d\221\313\377d\221\313\377c\220\312\377b\217\311\377a\216\310\377_\214\306\377^\213\305\377]\212\304\377\\\211\303\377Z\207\301\377a\214\303\377\213\252\323\377\216\255\323\377\215\253\322\377S{\261\375#M\212\324\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\200\200\002#N\212\337a\210\271\377\214\253\321\377\215\253\322\377\177\241\315\377Y\205\277\377Y\206\300\377Z\207\301\377[\210\302\377]\212\304\377^\213\305\377_\214\306\377`\215\307\377b\217\311\377c\220\312\377v\235\320\377\220\260\330\377\240\273\336\377\256\305\342\377\250\301\340\377\227\265\333\377\205\250\325\377e\222\313\377b\217\311\377a\216\310\377`\215\307\377_\214\306\377]\212\304\377\\\211\303\377[\210\302\377Z\207\301\377g\220\305\377\216\254\323\377\216\254\323\377\207\247\320\377/X\223\361!H\207U\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000#J\207`3\\\230\361\207\246\317\377\214\253\321\377\211\250\320\377[\207\300\377X\205\277\377Y\206\300\377Z\207\301\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377r\231\314\377\267\311\340\377\336\345\355\377\364\364\364\377\365\365\365\377\367\367\367\377\370\370\370\377\371\371\371\377\371\371\371\377\370\370\370\377\346\353\362\377\243\274\334\377f\222\312\377`\215\307\377_\214\306\377]\212\304\377\\\211\303\377[\210\302\377Z\207\301\377X\205\277\377s\230\311\377\216\254\323\377\215\253\322\377f\213\275\377#N\212\345@@\200\004\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000$I\222\007#L\211\352i\216\276\377\214\252\321\377\214\253\321\377n\224\306\377W\204\276\377X\205\277\377Y\206\300\377Z\207\301\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377\211\251\323\377\360\360\360\377\362\362\362\377\364\364\364\377\366\366\366\377\370\370\370\377\372\372\372\377\372\372\372\377\372\372\372\377\371\371\371\377\370\370\370\377\366\366\366\377\310\325\347\377a\216\307\377_\214\306\377^\213\305\377\\\211\303\377[\210\302\377Z\207\301\377X\205\277\377Z\206\277\377\210\250\321\377\215\253\322\377\210\247\317\3777a\232\363!I\211l\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\037L\207Q1[\227\360\210\247\317\377\214\252\321\377\205\245\316\377V\203\275\377V\203\275\377X\205\277\377Y\206\300\377Z\207\301\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377\211\251\323\377\361\361\361\377\363\363\363\377\365\365\365\377\367\367\367\377\371\371\371\377\373\373\373\377\374\374\374\377\374\374\374\377\372\372\372\377\370\370\370\377\366\366\366\377\364\364\364\377\246\276\334\377_\214\306\377]\212\304\377\\\211\303\377[\210\302\377Z\207\301\377X\205\277\377W\204\276\377m\224\306\377\215\253\322\377\214\252\321\377i\215\275\377#N\212\337\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000$M\213\254Sz\257\377\212\250\317\377\214\252\321\377k\222\304\377U\202\274\377V\203\275\377X\205\277\377Y\206\300\377Z\207\301\377[\210\302\377]\212\304\377^\213\305\377_\214\306\377\210\251\322\377\361\361\361\377\363\363\363\377\336\345\356\377\273\316\345\377\241\274\336\377\237\273\336\377\310\330\354\377\374\374\375\377\373\373\373\377\371\371\371\377\367\367\367\377\365\365\365\377\323\334\351\377^\213\305\377]\212\304\377\\\211\303\377[\210\302\377Y\206\300\377X\205\277\377W\204\276\377W\203\275\377\206\246\317\377\214\252\321\377\201\242\314\377%O\213\362 H\207 \377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000U\252\003\"L\211\362q\225\304\377\212\250\317\377\212\251\320\377Y\204\275\377U\202\274\377V\203\275\377W\204\276\377Y\206\300\377Z\207\301\377[\210\302\377\\\211\303\377]\212\304\377_\214\306\377\210\251\322\377\323\334\350\377\217\256\326\377d\220\312\377d\221\313\377d\221\313\377d\221\313\377d\221\313\377\313\331\355\377\373\373\373\377\371\371\371\377\367\367\367\377\365\365\365\377\355\356\360\377`\214\306\377]\212\304\377\\\211\303\377Z\207\301\377Y\206\300\377X\205\277\377W\204\276\377U\202\274\377t\231\310\377\214\252\321\377\213\251\320\377>g\240\367\"J\212q\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000!K\206=+T\220\357\206\245\315\377\212\250\317\377}\237\313\377S\200\272\377U\202\274\377V\203\275\377W\204\276\377X\205\277\377Y\206\300\377[\210\302\377\\\211\303\377]\212\304\377^\213\305\377b\216\307\377`\215\307\377a\216\310\377b\217\311\377b\217\311\377c\220\312\377c\220\312\377c\220\312\377\247\300\340\377\373\373\373\377\371\371\371\377\367\367\367\377\365\365\365\377\347\352\357\377]\212\304\377\\\211\303\377[\210\302\377Z\207\301\377Y\206\300\377X\205\277\377V\203\275\377U\202\274\377b\213\301\377\214\252\321\377\212\250\317\377_\205\267\377$N\213\316\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 I\210i>h\240\370\211\247\316\377\212\250\317\377m\223\304\377S\200\272\377T\201\273\377U\202\274\377W\204\276\377X\205\277\377Y\206\300\377Z\207\301\377[\210\302\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377`\215\307\377a\216\310\377a\216\310\377b\217\311\377b\217\311\377f\222\312\377\335\346\361\377\372\372\372\377\370\370\370\377\366\366\366\377\364\364\364\377\306\324\345\377]\212\304\377\\\211\303\377[\210\302\377Y\206\300\377X\205\277\377W\204\276\377V\203\275\377U\202\274\377U\201\273\377\211\250\317\377\212\250\317\377t\227\305\377\"M\210\363\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 L\211\206Ks\251\377\211\247\316\377\212\250\317\377e\215\300\377S\200\272\377T\201\273\377U\202\274\377V\203\275\377W\204\276\377X\205\277\377Y\206\300\377Z\207\301\377[\210\302\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377`\215\307\377`\215\307\377a\216\310\377c\217\311\377\305\324\351\377\372\372\372\377\371\371\371\377\367\367\367\377\366\366\366\377\364\364\364\377\224\260\325\377\\\211\303\377[\210\302\377Z\207\301\377Y\206\300\377X\205\277\377W\204\276\377U\202\274\377T\201\273\377S\200\272\377\203\243\315\377\212\250\317\377|\236\311\377\"K\210\367@@\200\004\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000#M\212\250U|\260\377\211\247\316\377\212\250\317\377_\211\276\377R\177\271\377S\200\272\377T\201\273\377U\202\274\377W\204\276\377X\205\277\377Y\206\300\377Z\207\301\377[\210\302\377\\\211\303\377\\\211\303\377]\212\304\377^\213\305\377_\214\306\377_\214\306\377c\217\307\377\314\331\352\377\371\371\371\377\370\370\370\377\370\370\370\377\366\366\366\377\365\365\365\377\263\306\337\377\\\211\303\377[\210\302\377Z\207\301\377Y\206\300\377X\205\277\377W\204\276\377V\203\275\377U\202\274\377T\201\273\377S\200\272\377|\236\312\377\212\250\317\377\201\241\313\377%P\213\360\034L\204\033\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000$N\213\305`\204\267\377\210\246\315\377\211\247\316\377X\203\272\377R\177\271\377S\200\272\377T\201\273\377U\202\274\377V\203\275\377W\204\276\377X\205\277\377Y\206\300\377Z\207\301\377[\210\302\377[\210\302\377\\\211\303\377]\212\304\377]\212\304\377_\214\305\377\303\322\346\377\367\367\367\377\367\367\367\377\367\367\367\377\366\366\366\377\365\365\365\377\306\324\345\377^\212\304\377[\210\302\377Z\207\301\377Y\206\300\377X\205\277\377W\204\276\377V\203\275\377U\202\274\377T\201\273\377S\200\272\377R\177\271\377v\231\307\377\212\250\317\377\207\246\315\377*U\221\355\"J\2114\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000$N\213\305^\204\266\377\210\246\315\377\211\247\316\377X\203\272\377Q~\270\377R\177\271\377S\200\272\377T\201\273\377U\202\274\377V\203\275\377W\204\276\377X\205\277\377Y\206\300\377Z\207\301\377Z\207\301\377[\210\302\377\\\211\303\377\\\211\303\377\260\304\336\377\364\364\364\377\365\365\365\377\366\366\366\377\366\366\366\377\365\365\365\377\275\315\342\377]\212\303\377[\210\302\377Z\207\301\377Y\206\300\377X\205\277\377X\205\277\377W\204\276\377V\203\275\377U\202\274\377T\201\273\377S\200\272\377Q~\270\377u\231\306\377\211\247\316\377\206\245\315\377)T\220\355\"J\2114\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000#M\212\250U|\257\377\210\246\315\377\210\246\315\377]\207\274\377P}\267\377Q~\270\377R\177\271\377S\200\272\377T\201\273\377U\202\274\377V\203\275\377W\204\276\377X\205\277\377Y\206\300\377Y\206\300\377Z\207\301\377[\210\302\377_\213\303\377\356\357\361\377\363\363\363\377\364\364\364\377\364\364\364\377\364\364\364\377\310\325\345\377]\212\303\377Z\207\301\377Z\207\301\377Y\206\300\377X\205\277\377X\205\277\377W\204\276\377V\203\275\377U\202\274\377T\201\273\377S\200\272\377R\177\271\377Q~\270\377{\235\311\377\211\247\316\377\200\240\312\377%P\214\360\034L\204\033\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 L\211\206Iq\247\377\207\245\314\377\210\246\315\377d\213\277\377P}\267\377Q~\270\377R\177\271\377S\200\272\377T\201\273\377T\201\273\377U\202\274\377V\203\275\377W\204\276\377X\205\277\377X\205\277\377Y\206\300\377Y\206\300\377|\237\314\377\361\361\361\377\362\362\362\377\363\363\363\377\363\363\363\377\363\363\363\377z\236\313\377Z\207\301\377Y\206\300\377Y\206\300\377X\205\277\377W\204\276\377W\204\276\377V\203\275\377U\202\274\377T\201\273\377S\200\272\377R\177\271\377Q~\270\377P}\267\377\201\241\313\377\210\246\315\377z\233\307\377\"K\210\367@@\200\004\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 I\210i>f\237\370\207\245\314\377\210\246\315\377j\220\301\377O|\266\377P}\267\377Q~\270\377R\177\271\377S\200\272\377T\201\273\377T\201\273\377U\202\274\377V\203\275\377W\204\276\377W\204\276\377X\205\277\377X\205\277\377v\232\311\377\270\311\336\377\270\311\337\377\270\311\337\377\270\311\337\377\270\311\337\377a\214\303\377X\205\277\377X\205\277\377W\204\276\377W\204\276\377V\203\275\377V\203\275\377U\202\274\377T\201\273\377S\200\272\377R\177\271\377Q~\270\377P}\267\377P}\266\377\206\245\315\377\210\246\315\377q\224\302\377\"L\210\363\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000!K\206=*T\220\357\202\241\312\377\207\245\314\377y\233\307\377N{\265\377O|\266\377P}\267\377Q~\270\377R\177\271\377S\200\272\377S\200\272\377T\201\273\377U\202\274\377U\202\274\377V\203\275\377W\204\276\377W\204\276\377W\204\276\377X\205\277\377X\205\277\377X\205\277\377X\205\277\377X\205\277\377W\204\276\377W\204\276\377W\204\276\377V\203\275\377V\203\275\377U\202\274\377T\201\273\377T\201\273\377S\200\272\377R\177\271\377Q~\270\377P}\267\377P}\267\377]\206\274\377\210\246\315\377\210\246\315\377]\202\265\377$N\213\316\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000 @@\b\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000U\252\003\"L\210\362m\221\277\377\206\244\313\377\206\245\314\377Q}\266\377N{\265\377O|\266\377P}\267\377Q~\270\377R\177\271\377R\177\271\377S\200\272\377T\201\273\377T\201\273\377U\202\274\377U\202\274\377V\203\275\377o\224\305\377\247\274\327\377\247\274\327\377\250\275\330\377\250\275\330\377\250\275\330\377]\210\277\377V\203\275\377V\203\275\377U\202\274\377U\202\274\377T\201\273\377S\200\272\377S\200\272\377R\177\271\377Q~\270\377P}\267\377P}\267\377O|\266\377n\223\302\377\210\246\315\377\207\245\314\377<e\237\367\"J\212q\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000/68m/46\223\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\"M\213\254Pw\254\377\206\244\313\377\206\244\313\377b\212\275\377Mz\264\377N{\265\377O|\266\377P}\267\377Q~\270\377Q~\270\377R\177\271\377S\200\272\377S\200\272\377T\201\273\377T\201\273\377U\202\274\377\204\243\313\377\354\354\354\377\355\355\355\377\355\355\355\377\355\355\355\377\355\355\355\377c\214\301\377U\202\274\377T\201\273\377T\201\273\377S\200\272\377S\200\272\377R\177\271\377R\177\271\377Q~\270\377P}\267\377O|\266\377O|\266\377O|\265\377\200\240\311\377\207\245\314\377|\235\307\377#O\213\362 H\207 \377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000088 .46\365.46\372\000\000\000\002\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\037L\207Q/Z\225\360\203\242\312\377\206\244\313\377\177\237\310\377Mz\264\377Mz\264\377N{\265\377O|\266\377P}\267\377P}\267\377Q~\270\377R\177\271\377R\177\271\377S\200\272\377S\200\272\377S\200\272\377\203\242\312\377\352\352\352\377\353\353\353\377\354\354\354\377\354\354\354\377\354\354\354\377b\213\300\377R}\266\377S\200\272\377S\200\272\377R\177\271\377R\177\271\377Q~\270\377Q~\270\377P}\267\377O|\266\377N{\265\377N{\265\377c\213\275\377\207\245\314\377\206\244\313\377c\207\270\377\"N\212\337\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000.46\227562\371046\371333\017\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000$I\222\007#L\211\352c\210\271\377\206\244\313\377\206\244\313\377d\213\275\377Ly\263\377Mz\264\377N{\265\377O|\266\377O|\266\377P}\267\377P}\267\377Q~\270\377Q~\270\377R\177\271\377R\177\271\377\201\240\310\377\351\351\351\377\352\352\352\377\352\352\352\377\352\352\352\377\352\352\352\377a\212\277\377B^\200\377Oz\257\377R\177\271\377Q~\270\377Q~\270\377P}\267\377P}\267\377O|\266\377N{\265\377Mz\264\377O|\265\377\201\240\311\377\206\244\313\377\202\241\311\3773]\227\363!I\211l\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000036K056\366OKB\377157\365,55\035\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\"K\207b0Z\225\361\200\237\310\377\206\244\313\377\201\241\311\377O{\264\377Ly\263\377Mz\264\377Mz\264\377N{\265\377O|\266\377O|\266\377P}\267\377P}\267\377Q~\270\377Q~\270\377\200\237\307\377\350\350\350\377\350\350\350\377\351\351\351\377\351\351\351\377\351\351\351\377_\210\275\377?Vr\377<Oe\377P}\267\377P}\267\377P}\267\377O|\266\377N{\265\377N{\265\377Mz\264\377Ly\263\377h\216\277\377\206\244\313\377\206\244\313\377`\205\266\377\"M\211\346@@\200\004\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\0000550.46\364LKC\377VRH\377267\361.44,\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\200\200\002\"L\212\340Z\201\263\377\205\243\312\377\206\244\313\377u\230\304\377Ly\262\377Ly\263\377Ly\263\377Mz\264\377N{\265\377N{\265\377O|\266\377O|\266\377O|\266\377P}\267\377i\216\277\377\240\265\320\377\241\266\321\377\241\266\321\377\241\266\321\377\241\266\321\377W\202\271\377>Tl\377.46\377Dd\214\377O|\266\377N{\265\377N{\265\377Mz\264\377Mz\264\377Ly\263\377[\204\271\377\206\244\313\377\206\244\313\377\177\236\307\377,V\221\361 H\210X\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000.66!056\354KJB\376TOD\377UQF\377367\360,55:\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\037H\206J(P\217\361t\227\302\377\205\243\312\377\205\243\312\377k\220\277\377Kx\262\377Kx\262\377Ly\263\377Ly\263\377Mz\264\377Mz\264\377N{\265\377N{\265\377N{\265\377O|\266\377O|\266\377O|\266\377O|\266\377O|\266\377O|\266\377O|\266\377<Ph\377GIC\37729<\377Gm\233\377Mz\264\377Mz\264\377Ly\263\377Ly\263\377S~\266\377\201\241\311\377\206\244\313\377\204\243\312\377Nt\252\375#L\211\326\000\000\377\001\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000/68h/56\364JJD\373ZUJ\377FA4\377UQF\377597\357-44I\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\"L\212\2202\\\226\363|\235\306\377\204\242\311\377\205\243\312\377j\217\277\377Kx\261\377Kx\262\377Kx\262\377Ly\263\377Ly\263\377Mz\264\377Mz\264\377Mz\264\377Mz\264\377N{\265\377N{\265\377N{\265\377N{\265\377N{\265\377N{\265\377;Oc\377_^T\377kh^\3774;?\377@^\200\377Ly\263\377Kx\262\377T~\265\377~\236\307\377\205\243\312\377\205\243\312\377\\\202\264\377\"L\211\355\"M\210\036\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000333\005-36Z066\3308<<\363ZWM\377\\WJ\377KF8\377GA4\377VQE\377798\361.47X\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\200\200\002\"M\211\276?h\240\370\201\240\307\377\204\242\311\377\204\242\311\377s\226\302\377Nz\263\377Jw\261\377Kx\262\377Kx\262\377Kx\262\377Ly\263\377Ly\263\377Ly\263\377Ly\263\377Ly\263\377Ly\263\377Ly\263\377Ly\263\377Ly\263\377:L_\377caW\377\177xh\377yug\377BGG\3778FT\377W|\252\377\202\241\311\377\205\243\312\377\204\242\311\377k\215\271\377>^\210\365p|\207\220\210\213\204O\204\216\204\033\377\377\377\000000\020.48N057\224057\355<A=\361XUK\377gaS\377YSE\377NH9\377KF8\377HC6\377WRF\377;=9\364.36d\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000'N\211\r!M\211\336Cl\243\371}\235\306\377\204\242\311\377\204\242\311\377|\235\306\377\\\205\270\377Iv\260\377Jw\261\377Jw\261\377Jw\261\377Kx\262\377Kx\262\377Kx\262\377Kx\262\377Kx\262\377Kx\262\377Kx\262\377Kx\262\3779J[\377heZ\377vo\\\377um[\377\206\177n\377_^U\3776=?\377AIQ\377Xi|\377ds\203\377\206\212\207\377\230\231\227\372\266\266\264\376\305\305\305\377KKK\377/0/\370/45\370ADA\360TTK\375fbU\377lfX\377`[K\377VPA\377RL=\377OJ;\377MG9\377JE7\377VRF\3778;:\361/55V\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\036K\207\021\"M\212\3115^\231\364u\226\301\377\204\242\311\377\204\242\311\377\204\242\311\377w\230\303\377W\201\266\377Iv\260\377Iv\260\377Iv\260\377Jw\261\377Jw\261\377Jw\261\377Jw\261\377Jw\261\377Jw\261\377Jw\261\3778HX\377mi^\377\200}p\377\207\210\177\377}~{\377HGC\377uob\377soa\377ppi\377\220\221\214\377\323\323\320\377\337\337\335\377\375\375\375\377\377\377\377\377\334\335\335\377\021\023\024\377<<7\377tm]\377lfU\377d^M\377\\UD\377YSB\377VP@\377SM>\377QK<\377NH:\377KF8\377XSG\3776:9\357.26B\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\b\r\r\033\023 H\203\246)T\216\363c\210\267\377\201\240\307\377\204\242\311\377\204\242\311\377\204\242\311\377}\235\306\377j\217\276\377Y\201\266\377?b\220\377!5N\377!5P\377,Gj\377Eo\246\377Lx\261\377R}\263\377=KV\377\203\203{\377\234\234\230\377\225\225\223\377\377\377\377\377\226\227\227\377\021\021\021\377\202{k\377\212\214\207\377\314\314\310\377\343\343\340\377\207\207\206\377\342\342\342\377\377\377\377\377\264\267\267\377(-.\377\b\b\b\377nj]\377b\\I\377`YG\377]VE\377ZTC\377XQA\377UO?\377RL=\377OI;\377LG8\377YUH\377388\361-39-\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\001\000\000\000\t\000\000\000\022\000\000\000\033\000\000\000#\033:k|!K\206\3616a\230\370k\215\274\377\203\241\310\377\203\241\310\377\203\241\310\377\204\242\311\3779GW\377\017\021\023\377378\37779;\377%')\377\t\n\f\377J[q\377\203\241\310\377[gq\377\217\221\214\377\353\353\351\377[[[\377\213\214\215\377PTU\377\006\006\006\377~}v\377\235\237\230\377\327\327\321\377\340\340\334\377\243\243\241\377\036\037\037\377^ce\377068\377!&'\377\036\036\036\377\202\202x\377d]J\377aZH\377^XF\377[UD\377XRB\377VP?\377SM=\377PJ;\377NH:\377ZVI\377056\365333\031\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\006\000\000\000\017\000\000\000\027\000\000\000 \000\000\000(\000\000\0001\b\013\027C\032<o\245!K\207\366<f\234\373^\203\264\377w\230\302\377]r\216\377\017\021\023\377\216\222\222\377\336\337\337\377\254\257\260\377^df\377QUU\377\027\032\034\3775BR\377gnt\377\255\256\252\377\356\356\354\377\300\300\277\377\017\017\017\377\b\b\b\377VVV\377\213\214\206\377\255\256\247\377\322\322\314\377\331\331\325\377\336\336\332\377\036\036\036\377\026\027\030\377\030\032\033\377\013\013\013\377}~z\377\210\212\203\377e^K\377b[I\377_XF\377\\UD\377YSB\377VP@\377SM>\377PK<\377PJ;\377YTG\377.46\375333\005\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\005\000\000\000\016\000\000\000\027\000\000\000\037\000\000\000(\000\000\0001\000\000\0009\000\000\000B\b\024$[\0329h\252!I\202\350\"L\210\370\024#6\375:>?\377\350\351\351\377\377\377\377\377\377\377\377\377fnp\377CJL\377KPR\377\023\026\027\377?BB\377\243\244\237\377\356\356\354\377\356\356\354\377\350\350\346\377\322\322\320\377\323\323\321\377\213\214\205\377\244\245\237\377\313\313\305\377\322\322\314\377\327\327\322\377\327\327\322\377\223\223\220\377hhe\377\271\271\265\377\272\273\265\377\207\207\177\377e^K\377b[I\377_XG\377\\VD\377YSB\377VP@\377TN>\377QK<\377RL?\377TPD\377/46\364\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\007\000\000\000\020\000\000\000\030\000\000\000 \000\000\000(\000\000\0001\000\000\0008\000\000\000@\000\000\000G\000\000\000O\n\023$i\004\007\f\357OST\377\367\367\367\377\377\377\377\377\377\377\377\377\203\212\214\377<DG\3775;=\3779=?\377\021\021\020\377\213\214\207\377\325\326\323\377\356\356\354\377\356\356\354\377\352\352\350\377\232\233\226\377\207\204v\377\221\221\213\377\304\304\274\377\311\311\303\377\316\316\307\377\320\320\312\377\320\320\312\377\316\316\310\377\313\313\304\377\244\245\237\377}{o\377e^K\377b[I\377_XG\377\\VD\377YSB\377VP@\377SM>\377QK<\377UOA\377JH@\377066\301\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\002\000\000\000\n\000\000\000\024\000\000\000\033\000\000\000\"\000\000\000)\000\000\000/\000\000\0006\000\000\000<\000\000\000B\001\002\002\317=@A\377\263\266\267\377\377\377\377\377\347\350\351\377PY\\\377<DG\377-46\377-23\377\031\032\032\377BA:\377\213\214\206\377\240\241\233\377\252\252\246\377\217\220\212\377\210\206z\377\177v^\377\211\210\177\377\244\245\237\377\300\300\270\377\304\304\274\377\306\306\277\377\306\306\277\377\305\305\275\377\267\267\260\377\211\213\204\377jeS\377d]J\377a[H\377_XF\377\\UD\377YSB\377VP@\377SM>\377PJ;\377WSE\377??;\366.35t\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\001\000\000\000\004\000\000\000\013\000\000\000\024\000\000\000\033\000\000\000 \000\000\000%\000\000\000*\000\000\000\232#&&\374NSV\377]cf\377FOQ\377@HK\3776>@\377*02\377\036\"$\377#&&\377\006\006\005\377tmX\377{wf\377}zk\377{ua\377yqZ\377zqZ\377{u`\377\211\212\202\377\231\232\223\377\261\261\251\377\273\273\262\377\265\265\256\377\244\245\235\377\211\212\205\377toa\377f_L\377c\\J\377`ZH\377^WE\377[TC\377XRA\377UO?\377RL=\377PJ;\377ZUH\377267\361.382\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\001\000\000\000\003\000\000\000\006\000\000\000\n\000\000\0003\002\003\003\366FJK\3775<>\3773;=\3773:<\377-35\377#(*\377\027\032\034\377\035 !\377\007\006\006\377e_L\377qjT\377skU\377tlV\377umW\377vnW\377umW\377unY\377\201\177r\377\210\211\202\377\210\212\205\377\210\211\203\377\203\201x\377mgV\377g`L\377d]J\377b[H\377_XG\377\\VD\377ZSB\377WQ@\377TN>\377QK<\377RM>\377TOD\377/46\364\000\000\000\002\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\002\002\002\246\030\033\034\3729>?\377(-.\377%+,\377!&'\377\031\035\036\377\024\027\030\377\030\033\034\377\007\007\006\377^XE\377ngR\377phS\377qiT\377qjT\377rjT\377rjT\377qiT\377phS\377ogR\377nfR\377kdP\377ibN\377g`L\377e^K\377GB5\377KE7\377]WE\377[TC\377XRA\377UO?\377SM=\377PJ;\377VQC\377CC=\373/45\255\000\000\000\001\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\030\001\001\001\346\027\031\031\374(+-\377\033\037 \377\025\030\031\377\024\027\030\377\024\027\030\377\022\025\026\377\004\004\003\377ibN\377kcO\377ldP\377meQ\377mfQ\377nfQ\377nfQ\377mfQ\377leP\377kdO\377jbN\377haM\377f_L\377d]J\377b[I\377TM>\377\024\023\017\377?;/\377YRB\377VP@\377TN>\377QK<\377QK<\377VQD\377/67\367\030\034 ?\000\000\000\023\000\000\000\006\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\036\001\001\001\350\f\016\016\370\032\035\035\377\030\033\034\377\024\027\030\377\024\027\030\377\n\013\n\377)'\037\377f_L\377g`M\377haM\377ibN\377jbN\377jbN\377jbN\377ibN\377haN\377g`M\377f_L\377d]J\377SM>\377<8-\377\"\037\031\377\017\016\013\377\007\007\006\377\034\032\025\377WP@\377TN>\377RL=\377OI;\377UPB\377AA<\373)/0\272\000\000\000/\000\000\000\"\000\000\000\026\000\000\000\b\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\026\000\002\002\235\001\001\001\365\005\005\006\362\b\t\n\375\004\004\004\377\034\033\030\377mgW\377c\\J\377c\\J\377d]J\377e^K\377f^K\377f_L\377f_K\377e^K\377b[I\377YRB\377NH9\377A=1\377@;/\377B=1\377GB5\377OH:\377VP@\377>:.\377TN>\377RL=\377OJ;\377SN?\377PMA\377.45\370\020\020\023_\000\000\000;\000\000\000.\000\000\000 \000\000\000\023\000\000\000\003\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000!\000\000\000Y\000\000\000{ !!\241178\367]\\P\377rl\\\377jcS\377b[I\377aZH\377b[H\377b[I\377b[H\377a[H\377_XG\377`YG\377_XG\377^WF\377\\VE\377[UC\377YSB\377XQA\377VO?\377SM>\377RL<\377OJ;\377QL>\377RNB\377155\371\037\"$\236\000\000\000Q\000\000\000C\000\000\0005\000\000\000'\000\000\000\031\000\000\000\n\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\007\000\000\000\025\000\000\000#\000\000\0001\027\034\034f.45\355=@=\367]ZO\377oiZ\377hcR\377aZI\377^WF\377^WE\377]WE\377]VE\377\\VD\377[UD\377ZTC\377YSB\377XQA\377VP@\377TN>\377SM=\377QK<\377PJ;\377TNA\377TOC\377367\371 $%\270\000\000\000a\000\000\000S\000\000\000E\000\000\0007\000\000\000)\000\000\000\033\000\000\000\013\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\004\000\000\000\022\000\000\000 \000\000\000.\000\000\000;\003\003\003L\034 !\221-33\346399\370PPH\376icT\377g`R\377aZK\377]WF\377ZTC\377XRB\377XQA\377WP@\377UO?\377TN>\377SM=\377QK<\377PK=\377SM>\377WQD\377IG>\377055\372#((\306\000\000\000j\000\000\000]\000\000\000O\000\000\000A\000\000\0004\000\000\000&\000\000\000\030\000\000\000\005\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\013\000\000\000\030\000\000\000&\000\000\0003\000\000\000@\000\000\000M\000\000\000Z\023\026\026\211)-.\326/56\373FF@\374TSI\377^YL\377d_Q\377c]O\377_ZK\377[UF\377YSE\377YSD\377WRD\377XSF\377WRD\377KH@\3778:7\372,23\361\024\026\027\232\000\000\000l\000\000\000_\000\000\000S\000\000\000F\000\000\0009\000\000\000,\000\000\000\036\000\000\000\016\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\f\000\000\000\032\000\000\000&\000\000\0002\000\000\000?\000\000\000J\000\000\000V\000\000\000a\n\f\f|!%&\274)//\340.34\366.45\375488\370>?<\372HGA\377JHA\377FE>\377@A<\3768:7\371/46\374+01\351\036\"\"\264\002\002\002s\000\000\000e\000\000\000[\000\000\000O\000\000\000D\000\000\0008\000\000\000,\000\000\000\037\000\000\000\f\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\007\000\000\000\025\000\000\000!\000\000\000,\000\000\0007\000\000\000A\000\000\000K\000\000\000T\000\000\000\\\000\000\000d\000\000\000k\004\006\006w\021\023\025\223\033\035\037\255$((\310&+-\324!'(\306\037#$\267\031\034\036\244\t\t\tx\000\000\000g\000\000\000`\000\000\000X\000\000\000O\000\000\000E\000\000\000;\000\000\0001\000\000\000&\000\000\000\027\000\000\000\004\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\001\000\000\000\b\000\000\000\025\000\000\000 \000\000\000)\000\000\0002\000\000\000:\000\000\000A\000\000\000H\000\000\000M\000\000\000R\000\000\000V\000\000\000X\000\000\000Z\000\000\000Z\000\000\000Y\000\000\000W\000\000\000T\000\000\000P\000\000\000J\000\000\000D\000\000\000=\000\000\0005\000\000\000-\000\000\000$\000\000\000\026\000\000\000\t\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\002\000\000\000\t\000\000\000\024\000\000\000\036\000\000\000%\000\000\000*\000\000\000/\000\000\0003\000\000\0006\000\000\0008\000\000\000:\000\000\000:\000\000\0009\000\000\0007\000\000\0005\000\000\0001\000\000\000-\000\000\000'\000\000\000 \000\000\000\022\000\000\000\b\000\000\000\001\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\000\000\000\002\000\000\000\004\000\000\000\007\000\000\000\013\000\000\000\016\000\000\000\021\000\000\000\024\000\000\000\023\000\000\000\020\000\000\000\r\000\000\000\n\000\000\000\007\000\000\000\004\000\000\000\002\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000\377\377\377\000"
	.size	stock_question_64, 16409

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"icon != NULL"
	.size	.L.str.9, 13

	.type	.L__func__.gimp_viewable_get_description,@object # @__func__.gimp_viewable_get_description
.L__func__.gimp_viewable_get_description:
	.asciz	"gimp_viewable_get_description"
	.size	.L__func__.gimp_viewable_get_description, 30

	.type	.L__func__.gimp_viewable_get_stock_id,@object # @__func__.gimp_viewable_get_stock_id
.L__func__.gimp_viewable_get_stock_id:
	.asciz	"gimp_viewable_get_stock_id"
	.size	.L__func__.gimp_viewable_get_stock_id, 27

	.type	.L__func__.gimp_viewable_set_stock_id,@object # @__func__.gimp_viewable_set_stock_id
.L__func__.gimp_viewable_set_stock_id:
	.asciz	"gimp_viewable_set_stock_id"
	.size	.L__func__.gimp_viewable_set_stock_id, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stock-id"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_viewable_preview_freeze,@object # @__func__.gimp_viewable_preview_freeze
.L__func__.gimp_viewable_preview_freeze:
	.asciz	"gimp_viewable_preview_freeze"
	.size	.L__func__.gimp_viewable_preview_freeze, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"frozen"
	.size	.L.str.11, 7

	.type	.L__func__.gimp_viewable_preview_thaw,@object # @__func__.gimp_viewable_preview_thaw
.L__func__.gimp_viewable_preview_thaw:
	.asciz	"gimp_viewable_preview_thaw"
	.size	.L__func__.gimp_viewable_preview_thaw, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"private->freeze_count > 0"
	.size	.L.str.12, 26

	.type	.L__func__.gimp_viewable_preview_is_frozen,@object # @__func__.gimp_viewable_preview_is_frozen
.L__func__.gimp_viewable_preview_is_frozen:
	.asciz	"gimp_viewable_preview_is_frozen"
	.size	.L__func__.gimp_viewable_preview_is_frozen, 32

	.type	.L__func__.gimp_viewable_get_parent,@object # @__func__.gimp_viewable_get_parent
.L__func__.gimp_viewable_get_parent:
	.asciz	"gimp_viewable_get_parent"
	.size	.L__func__.gimp_viewable_get_parent, 25

	.type	.L__func__.gimp_viewable_set_parent,@object # @__func__.gimp_viewable_set_parent
.L__func__.gimp_viewable_set_parent:
	.asciz	"gimp_viewable_set_parent"
	.size	.L__func__.gimp_viewable_set_parent, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"parent == NULL || GIMP_IS_VIEWABLE (parent)"
	.size	.L.str.13, 44

	.type	.L__func__.gimp_viewable_get_children,@object # @__func__.gimp_viewable_get_children
.L__func__.gimp_viewable_get_children:
	.asciz	"gimp_viewable_get_children"
	.size	.L__func__.gimp_viewable_get_children, 27

	.type	.L__func__.gimp_viewable_get_expanded,@object # @__func__.gimp_viewable_get_expanded
.L__func__.gimp_viewable_get_expanded:
	.asciz	"gimp_viewable_get_expanded"
	.size	.L__func__.gimp_viewable_get_expanded, 27

	.type	.L__func__.gimp_viewable_set_expanded,@object # @__func__.gimp_viewable_set_expanded
.L__func__.gimp_viewable_set_expanded:
	.asciz	"gimp_viewable_set_expanded"
	.size	.L__func__.gimp_viewable_set_expanded, 27

	.type	.L__func__.gimp_viewable_is_ancestor,@object # @__func__.gimp_viewable_is_ancestor
.L__func__.gimp_viewable_is_ancestor:
	.asciz	"gimp_viewable_is_ancestor"
	.size	.L__func__.gimp_viewable_is_ancestor, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_VIEWABLE (ancestor)"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_VIEWABLE (descendant)"
	.size	.L.str.15, 30

	.type	gimp_viewable_parent_class,@object # @gimp_viewable_parent_class
	.local	gimp_viewable_parent_class
	.comm	gimp_viewable_parent_class,8,8
	.type	GimpViewable_private_offset,@object # @GimpViewable_private_offset
	.local	GimpViewable_private_offset
	.comm	GimpViewable_private_offset,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"invalidate-preview"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"size-changed"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-question"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"name-changed"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimpviewable.c"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
