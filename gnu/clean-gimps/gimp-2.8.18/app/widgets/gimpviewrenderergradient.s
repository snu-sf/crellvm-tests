	.text
	.file	"gimpviewrenderergradient.bc"
	.globl	gimp_view_renderer_gradient_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_gradient_get_type,@function
gimp_view_renderer_gradient_get_type:   # @gimp_view_renderer_gradient_get_type
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
	movq	gimp_view_renderer_gradient_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_gradient_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_view_renderer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$200, %edx
	movabsq	$gimp_view_renderer_gradient_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_view_renderer_gradient_init, %rcx
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
	movabsq	$gimp_view_renderer_gradient_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_gradient_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_gradient_get_type, .Lfunc_end0-gimp_view_renderer_gradient_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_gradient_class_intern_init,@function
gimp_view_renderer_gradient_class_intern_init: # @gimp_view_renderer_gradient_class_intern_init
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
	movq	%rax, gimp_view_renderer_gradient_parent_class
	cmpl	$0, GimpViewRendererGradient_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererGradient_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_gradient_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_gradient_class_intern_init, .Lfunc_end1-gimp_view_renderer_gradient_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_gradient_init,@function
gimp_view_renderer_gradient_init:       # @gimp_view_renderer_gradient_init
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
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 152(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 168(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_gradient_init, .Lfunc_end2-gimp_view_renderer_gradient_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_view_renderer_gradient_set_offsets
	.align	16, 0x90
	.type	gimp_view_renderer_gradient_set_offsets,@function
gimp_view_renderer_gradient_set_offsets: # @gimp_view_renderer_gradient_set_offsets
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_view_renderer_gradient_get_type
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
	movabsq	$.L__func__.gimp_view_renderer_gradient_set_offsets, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_27
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_14
# BB#13:                                # %cond.true
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_14:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB3_16
# BB#15:                                # %cond.true.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB3_17
.LBB3_16:                               # %cond.false.14
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB3_17:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB3_18:                               # %cond.end.15
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_20
# BB#19:                                # %cond.true.18
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB3_24
.LBB3_20:                               # %cond.false.19
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_22
# BB#21:                                # %cond.true.21
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB3_23
.LBB3_22:                               # %cond.false.22
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB3_23:                               # %cond.end.23
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB3_24:                               # %cond.end.25
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	152(%rax), %xmm0
	jne	.LBB3_26
	jp	.LBB3_26
# BB#25:                                # %lor.lhs.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	160(%rax), %xmm0
	jne	.LBB3_26
	jp	.LBB3_26
	jmp	.LBB3_27
.LBB3_26:                               # %if.then.31
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 152(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_view_renderer_invalidate
.LBB3_27:                               # %if.end.36
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_gradient_set_offsets, .Lfunc_end3-gimp_view_renderer_gradient_set_offsets
	.cfi_endproc

	.globl	gimp_view_renderer_gradient_set_reverse
	.align	16, 0x90
	.type	gimp_view_renderer_gradient_set_reverse,@function
gimp_view_renderer_gradient_set_reverse: # @gimp_view_renderer_gradient_set_reverse
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_gradient_get_type
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
	movabsq	$.L__func__.gimp_view_renderer_gradient_set_reverse, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	168(%rcx), %eax
	je	.LBB4_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 168(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_view_renderer_invalidate
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_view_renderer_update
.LBB4_14:                               # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_gradient_set_reverse, .Lfunc_end4-gimp_view_renderer_gradient_set_reverse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_gradient_class_init,@function
gimp_view_renderer_gradient_class_init: # @gimp_view_renderer_gradient_class_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_view_renderer_gradient_render, %rsi
	movabsq	$gimp_view_renderer_gradient_invalidate, %rdi
	movabsq	$gimp_view_renderer_gradient_set_context, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 168(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_renderer_gradient_class_init, .Lfunc_end5-gimp_view_renderer_gradient_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_gradient_set_context,@function
gimp_view_renderer_gradient_set_context: # @gimp_view_renderer_gradient_set_context
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_gradient_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_view_renderer_gradient_fg_bg_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_3:                                # %if.end
	movq	gimp_view_renderer_gradient_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true.10
	movq	-24(%rbp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_view_renderer_gradient_fg_bg_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_view_renderer_gradient_fg_bg_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_gradient_fg_bg_changed
.LBB6_6:                                # %if.end.19
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_view_renderer_gradient_set_context, .Lfunc_end6-gimp_view_renderer_gradient_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_gradient_invalidate,@function
gimp_view_renderer_gradient_invalidate: # @gimp_view_renderer_gradient_invalidate
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
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_gradient_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_gradient_has_fg_bg_segments
	movl	%eax, -20(%rbp)
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movl	172(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB7_9
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_8
# BB#4:                                 # %if.then.9
	movq	-16(%rbp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.12
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_view_renderer_gradient_fg_bg_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_view_renderer_gradient_fg_bg_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_view_renderer_gradient_fg_bg_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB7_7:                                # %if.end.19
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.20
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 172(%rcx)
.LBB7_9:                                # %if.end.22
	movq	gimp_view_renderer_gradient_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_view_renderer_gradient_invalidate, .Lfunc_end7-gimp_view_renderer_gradient_invalidate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_gradient_render,@function
gimp_view_renderer_gradient_render:     # @gimp_view_renderer_gradient_render
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_gradient_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rsp
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	152(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movl	$0, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-120(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rdx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	callq	gimp_gradient_get_color_at
	leaq	-120(%rbp), %rdi
	leaq	-121(%rbp), %rsi
	leaq	-122(%rbp), %rdx
	leaq	-123(%rbp), %rcx
	leaq	-124(%rbp), %r8
	movq	%rax, -40(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	callq	gimp_rgba_get_uchar
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movzbl	-124(%rbp), %eax
	movzbl	-121(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -128(%rbp)
	movzbl	-124(%rbp), %eax
	movzbl	-122(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -132(%rbp)
	movzbl	-124(%rbp), %eax
	movzbl	-123(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shrl	$8, %eax
	addl	-136(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-132(%rbp), %eax
	shrl	$8, %eax
	addl	-132(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-128(%rbp), %eax
	shrl	$8, %eax
	addl	-128(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-124(%rbp), %dl
	movq	-56(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB8_8
# BB#7:                                 # %if.then
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	callq	cairo_image_surface_create
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
.LBB8_8:                                # %if.end
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_flush
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_image_surface_get_stride
	movl	%eax, -60(%rbp)
	movl	$0, -68(%rbp)
.LBB8_9:                                # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jge	.LBB8_12
# BB#10:                                # %for.body.49
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	callq	memcpy
# BB#11:                                # %for.inc.53
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB8_9
.LBB8_12:                               # %for.end.56
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_mark_dirty
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_view_renderer_gradient_render, .Lfunc_end8-gimp_view_renderer_gradient_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_gradient_fg_bg_changed,@function
gimp_view_renderer_gradient_fg_bg_changed: # @gimp_view_renderer_gradient_fg_bg_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_view_renderer_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_view_renderer_gradient_fg_bg_changed, .Lfunc_end9-gimp_view_renderer_gradient_fg_bg_changed
	.cfi_endproc

	.type	gimp_view_renderer_gradient_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_gradient_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_gradient_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_gradient_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererGradient"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_view_renderer_gradient_set_offsets,@object # @__func__.gimp_view_renderer_gradient_set_offsets
.L__func__.gimp_view_renderer_gradient_set_offsets:
	.asciz	"gimp_view_renderer_gradient_set_offsets"
	.size	.L__func__.gimp_view_renderer_gradient_set_offsets, 40

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_VIEW_RENDERER_GRADIENT (renderer)"
	.size	.L.str.2, 42

	.type	.L__func__.gimp_view_renderer_gradient_set_reverse,@object # @__func__.gimp_view_renderer_gradient_set_reverse
.L__func__.gimp_view_renderer_gradient_set_reverse:
	.asciz	"gimp_view_renderer_gradient_set_reverse"
	.size	.L__func__.gimp_view_renderer_gradient_set_reverse, 40

	.type	gimp_view_renderer_gradient_parent_class,@object # @gimp_view_renderer_gradient_parent_class
	.local	gimp_view_renderer_gradient_parent_class
	.comm	gimp_view_renderer_gradient_parent_class,8,8
	.type	GimpViewRendererGradient_private_offset,@object # @GimpViewRendererGradient_private_offset
	.local	GimpViewRendererGradient_private_offset
	.comm	GimpViewRendererGradient_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"foreground-changed"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"background-changed"
	.size	.L.str.4, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
