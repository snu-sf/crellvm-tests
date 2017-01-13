	.text
	.file	"gimpgradient.bc"
	.globl	gimp_gradient_get_type
	.align	16, 0x90
	.type	gimp_gradient_get_type,@function
gimp_gradient_get_type:                 # @gimp_gradient_get_type
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
	movq	gimp_gradient_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_gradient_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_data_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$312, %edx              # imm = 0x138
	movabsq	$gimp_gradient_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_gradient_init, %rcx
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
	callq	gimp_tagged_interface_get_type
	movabsq	$gimp_gradient_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_gradient_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_gradient_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradient_get_type, .Lfunc_end0-gimp_gradient_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_class_intern_init,@function
gimp_gradient_class_intern_init:        # @gimp_gradient_class_intern_init
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
	movq	%rax, gimp_gradient_parent_class
	cmpl	$0, GimpGradient_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGradient_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_gradient_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradient_class_intern_init, .Lfunc_end1-gimp_gradient_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_init,@function
gimp_gradient_init:                     # @gimp_gradient_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_gradient_init, .Lfunc_end2-gimp_gradient_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_tagged_iface_init,@function
gimp_gradient_tagged_iface_init:        # @gimp_gradient_tagged_iface_init
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
	movabsq	$gimp_gradient_get_checksum, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gradient_tagged_iface_init, .Lfunc_end3-gimp_gradient_tagged_iface_init
	.cfi_endproc

	.globl	gimp_gradient_new
	.align	16, 0x90
	.type	gimp_gradient_new,@function
gimp_gradient_new:                      # @gimp_gradient_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_11
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_8
# BB#7:                                 # %if.then.4
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_11
.LBB4_9:                                # %if.end.6
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.7
	callq	gimp_gradient_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_segment_new
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gradient_new, .Lfunc_end4-gimp_gradient_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_gradient_segment_new
	.align	16, 0x90
	.type	gimp_gradient_segment_new,@function
gimp_gradient_segment_new:              # @gimp_gradient_segment_new
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
	movl	$128, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm2, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movq	-8(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_gradient_segment_new, .Lfunc_end5-gimp_gradient_segment_new
	.cfi_endproc

	.globl	gimp_gradient_get_standard
	.align	16, 0x90
	.type	gimp_gradient_get_standard,@function
gimp_gradient_get_standard:             # @gimp_gradient_get_standard
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, gimp_gradient_get_standard.standard_gradient
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_new
	movq	%rax, gimp_gradient_get_standard.standard_gradient
	movq	gimp_gradient_get_standard.standard_gradient, %rdi
	callq	gimp_data_clean
	movabsq	$.L.str.6, %rsi
	movq	gimp_gradient_get_standard.standard_gradient, %rdi
	callq	gimp_data_make_internal
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_gradient_get_standard.standard_gradient, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_gradient_get_standard.standard_gradient, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB6_2:                                # %if.end
	movq	gimp_gradient_get_standard.standard_gradient, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_gradient_get_standard, .Lfunc_end6-gimp_gradient_get_standard
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI7_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_gradient_get_color_at
	.align	16, 0x90
	.type	gimp_gradient_get_color_at,@function
gimp_gradient_get_color_at:             # @gimp_gradient_get_color_at
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
	subq	$368, %rsp              # imm = 0x170
	xorps	%xmm1, %xmm1
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_get_color_at, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_81
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -220(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -220(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_get_color_at, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_81
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.39
	cmpq	$0, -56(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.41
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_get_color_at, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_81
.LBB7_28:                               # %if.end.43
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.44
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_31
# BB#30:                                # %cond.true
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB7_35
.LBB7_31:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB7_33
# BB#32:                                # %cond.true.47
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB7_34
.LBB7_33:                               # %cond.false.48
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB7_34:                               # %cond.end
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB7_35:                               # %cond.end.49
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB7_37
# BB#36:                                # %if.then.52
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB7_37:                               # %if.end.53
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_segment_at_internal
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -72(%rbp)
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB7_39
# BB#38:                                # %if.then.57
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB7_40
.LBB7_39:                               # %if.else.58
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	(%rax), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	(%rax), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB7_40:                               # %if.end.65
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	ja	.LBB7_46
# BB#82:                                # %if.end.65
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_41:                               # %sw.bb
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_linear_factor
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_47
.LBB7_42:                               # %sw.bb.67
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_curved_factor
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_47
.LBB7_43:                               # %sw.bb.69
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_sine_factor
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_47
.LBB7_44:                               # %sw.bb.71
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_sphere_increasing_factor
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_47
.LBB7_45:                               # %sw.bb.73
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_sphere_decreasing_factor
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB7_47
.LBB7_46:                               # %sw.default
	movabsq	$.L.str.10, %rdi
	movabsq	$.L__func__.gimp_gradient_get_color_at, %rsi
	movq	-32(%rbp), %rax
	movl	104(%rax), %edx
	movb	$0, %al
	callq	g_warning
.LBB7_47:                               # %sw.epilog
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	je	.LBB7_48
	jmp	.LBB7_83
.LBB7_83:                               # %sw.epilog
	movl	-324(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jb	.LBB7_49
	jmp	.LBB7_84
.LBB7_84:                               # %sw.epilog
	movl	-324(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jb	.LBB7_52
	jmp	.LBB7_55
.LBB7_48:                               # %sw.bb.76
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	40(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB7_55
.LBB7_49:                               # %sw.bb.78
	leaq	-112(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_foreground
	movq	-32(%rbp), %rsi
	cmpl	$2, 24(%rsi)
	jne	.LBB7_51
# BB#50:                                # %if.then.81
	leaq	-112(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB7_51:                               # %if.end.82
	jmp	.LBB7_55
.LBB7_52:                               # %sw.bb.83
	leaq	-112(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_background
	movq	-32(%rbp), %rsi
	cmpl	$4, 24(%rsi)
	jne	.LBB7_54
# BB#53:                                # %if.then.86
	leaq	-112(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB7_54:                               # %if.end.87
	jmp	.LBB7_55
.LBB7_55:                               # %sw.epilog.88
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	je	.LBB7_56
	jmp	.LBB7_85
.LBB7_85:                               # %sw.epilog.88
	movl	-336(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jb	.LBB7_57
	jmp	.LBB7_86
.LBB7_86:                               # %sw.epilog.88
	movl	-336(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jb	.LBB7_60
	jmp	.LBB7_63
.LBB7_56:                               # %sw.bb.89
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	80(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	88(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	96(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB7_63
.LBB7_57:                               # %sw.bb.91
	leaq	-144(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_foreground
	movq	-32(%rbp), %rsi
	cmpl	$2, 64(%rsi)
	jne	.LBB7_59
# BB#58:                                # %if.then.94
	leaq	-144(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB7_59:                               # %if.end.95
	jmp	.LBB7_63
.LBB7_60:                               # %sw.bb.96
	leaq	-144(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_background
	movq	-32(%rbp), %rsi
	cmpl	$4, 64(%rsi)
	jne	.LBB7_62
# BB#61:                                # %if.then.99
	leaq	-144(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB7_62:                               # %if.end.100
	jmp	.LBB7_63
.LBB7_63:                               # %sw.epilog.101
	movq	-32(%rbp), %rax
	cmpl	$0, 108(%rax)
	jne	.LBB7_65
# BB#64:                                # %if.then.104
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-96(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	jmp	.LBB7_80
.LBB7_65:                               # %if.else.121
	leaq	-112(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	leaq	-144(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-32(%rbp), %rsi
	movl	108(%rsi), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	je	.LBB7_66
	jmp	.LBB7_87
.LBB7_87:                               # %if.else.121
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	je	.LBB7_72
	jmp	.LBB7_78
.LBB7_66:                               # %sw.bb.137
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_68
# BB#67:                                # %if.then.140
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-256(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-256(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	jmp	.LBB7_71
.LBB7_68:                               # %if.else.147
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-288(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	-64(%rbp), %xmm2
	addsd	-256(%rbp), %xmm2
	movsd	%xmm2, -256(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_70
# BB#69:                                # %if.then.157
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -256(%rbp)
.LBB7_70:                               # %if.end.160
	jmp	.LBB7_71
.LBB7_71:                               # %if.end.161
	jmp	.LBB7_79
.LBB7_72:                               # %sw.bb.162
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_74
# BB#73:                                # %if.then.166
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-288(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -256(%rbp)
	jmp	.LBB7_77
.LBB7_74:                               # %if.else.173
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-288(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-256(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -256(%rbp)
	ucomisd	-256(%rbp), %xmm0
	jbe	.LBB7_76
# BB#75:                                # %if.then.183
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-256(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
.LBB7_76:                               # %if.end.186
	jmp	.LBB7_77
.LBB7_77:                               # %if.end.187
	jmp	.LBB7_79
.LBB7_78:                               # %sw.default.188
	movabsq	$.L.str.11, %rdi
	movabsq	$.L__func__.gimp_gradient_get_color_at, %rsi
	movq	-32(%rbp), %rax
	movl	108(%rax), %edx
	movb	$0, %al
	callq	g_warning
.LBB7_79:                               # %sw.epilog.190
	leaq	-256(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	gimp_hsv_to_rgb
.LBB7_80:                               # %if.end.191
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-56(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-152(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_81:                               # %return
	movq	-8(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_gradient_get_color_at, .Lfunc_end7-gimp_gradient_get_color_at
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_41
	.quad	.LBB7_42
	.quad	.LBB7_43
	.quad	.LBB7_44
	.quad	.LBB7_45

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_gradient_get_segment_at_internal,@function
gimp_gradient_get_segment_at_internal:  # @gimp_gradient_get_segment_at_internal
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
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_2
# BB#1:                                 # %cond.true
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB8_6
.LBB8_2:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB8_4
# BB#3:                                 # %cond.true.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false.3
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB8_5:                                # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB8_6:                                # %cond.end.4
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB8_8:                                # %if.end
	jmp	.LBB8_9
.LBB8_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_17
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB8_9 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jb	.LBB8_15
# BB#11:                                # %if.then.8
                                        #   in Loop: Header=BB8_9 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_13
# BB#12:                                # %if.then.10
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_18
.LBB8_13:                               # %if.else
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#14:                                # %if.end.11
                                        #   in Loop: Header=BB8_9 Depth=1
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.12
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB8_16:                               # %if.end.13
                                        #   in Loop: Header=BB8_9 Depth=1
	jmp	.LBB8_9
.LBB8_17:                               # %while.end
	movabsq	$.L.str.20, %rdi
	movabsq	$.L__func__.gimp_gradient_get_segment_at_internal, %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_warning
	movq	$0, -8(%rbp)
.LBB8_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_gradient_get_segment_at_internal, .Lfunc_end8-gimp_gradient_get_segment_at_internal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_gradient_calc_linear_factor,@function
gimp_gradient_calc_linear_factor:       # @gimp_gradient_calc_linear_factor
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_4
# BB#1:                                 # %if.then
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB9_3
# BB#2:                                 # %if.then.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_7
.LBB9_3:                                # %if.else
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_7
.LBB9_4:                                # %if.else.3
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -24(%rbp)
	subsd	-16(%rbp), %xmm1
	movsd	%xmm1, -16(%rbp)
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB9_6
# BB#5:                                 # %if.then.6
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.7
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	divsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB9_7:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_gradient_calc_linear_factor, .Lfunc_end9-gimp_gradient_calc_linear_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI10_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_gradient_calc_curved_factor,@function
gimp_gradient_calc_curved_factor:       # @gimp_gradient_calc_curved_factor
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
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	ucomisd	-8(%rbp), %xmm2
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB10_2:                               # %if.end
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	log
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pow
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_gradient_calc_curved_factor, .Lfunc_end10-gimp_gradient_calc_curved_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4611686018427387904     # double 2
.LCPI11_1:
	.quad	4607182418800017408     # double 1
.LCPI11_2:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI11_3:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	gimp_gradient_calc_sine_factor,@function
gimp_gradient_calc_sine_factor:         # @gimp_gradient_calc_sine_factor
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_linear_factor
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_3, %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	mulsd	-16(%rbp), %xmm4
	addsd	%xmm4, %xmm3
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -24(%rbp)        # 8-byte Spill
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_gradient_calc_sine_factor, .Lfunc_end11-gimp_gradient_calc_sine_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_gradient_calc_sphere_increasing_factor,@function
gimp_gradient_calc_sphere_increasing_factor: # @gimp_gradient_calc_sphere_increasing_factor
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
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_linear_factor
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sqrt
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_gradient_calc_sphere_increasing_factor, .Lfunc_end12-gimp_gradient_calc_sphere_increasing_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_gradient_calc_sphere_decreasing_factor,@function
gimp_gradient_calc_sphere_decreasing_factor: # @gimp_gradient_calc_sphere_decreasing_factor
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
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_calc_linear_factor
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_gradient_calc_sphere_decreasing_factor, .Lfunc_end13-gimp_gradient_calc_sphere_decreasing_factor
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.globl	gimp_gradient_get_segment_at
	.align	16, 0x90
	.type	gimp_gradient_get_segment_at,@function
gimp_gradient_get_segment_at:           # @gimp_gradient_get_segment_at
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_get_segment_at, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_segment_at_internal
	movq	%rax, -8(%rbp)
.LBB15_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_gradient_get_segment_at, .Lfunc_end15-gimp_gradient_get_segment_at
	.cfi_endproc

	.globl	gimp_gradient_has_fg_bg_segments
	.align	16, 0x90
	.type	gimp_gradient_has_fg_bg_segments,@function
gimp_gradient_has_fg_bg_segments:       # @gimp_gradient_has_fg_bg_segments
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_has_fg_bg_segments, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_20
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB16_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB16_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB16_17
.LBB16_16:                              # %if.then.14
	movl	$1, -4(%rbp)
	jmp	.LBB16_20
.LBB16_17:                              # %if.end.15
                                        #   in Loop: Header=BB16_13 Depth=1
	jmp	.LBB16_18
.LBB16_18:                              # %for.inc
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_13
.LBB16_19:                              # %for.end
	movl	$0, -4(%rbp)
.LBB16_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_gradient_has_fg_bg_segments, .Lfunc_end16-gimp_gradient_has_fg_bg_segments
	.cfi_endproc

	.globl	gimp_gradient_flatten
	.align	16, 0x90
	.type	gimp_gradient_flatten,@function
gimp_gradient_flatten:                  # @gimp_gradient_flatten
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_flatten, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_45
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_flatten, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_45
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_duplicate
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB17_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB17_44
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB17_27
	jmp	.LBB17_46
.LBB17_46:                              # %for.body
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jb	.LBB17_28
	jmp	.LBB17_47
.LBB17_47:                              # %for.body
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jb	.LBB17_31
	jmp	.LBB17_34
.LBB17_27:                              # %sw.bb
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_34
.LBB17_28:                              # %sw.bb.45
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	gimp_context_get_foreground
	movq	-40(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	.LBB17_30
# BB#29:                                # %if.then.48
                                        #   in Loop: Header=BB17_25 Depth=1
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
.LBB17_30:                              # %if.end.50
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_34
.LBB17_31:                              # %sw.bb.51
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	gimp_context_get_background
	movq	-40(%rbp), %rax
	cmpl	$4, 24(%rax)
	jne	.LBB17_33
# BB#32:                                # %if.then.55
                                        #   in Loop: Header=BB17_25 Depth=1
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
.LBB17_33:                              # %if.end.57
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_34
.LBB17_34:                              # %sw.epilog
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-40(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	je	.LBB17_35
	jmp	.LBB17_48
.LBB17_48:                              # %sw.epilog
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jb	.LBB17_36
	jmp	.LBB17_49
.LBB17_49:                              # %sw.epilog
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jb	.LBB17_39
	jmp	.LBB17_42
.LBB17_35:                              # %sw.bb.59
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_42
.LBB17_36:                              # %sw.bb.60
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	gimp_context_get_foreground
	movq	-40(%rbp), %rax
	cmpl	$2, 64(%rax)
	jne	.LBB17_38
# BB#37:                                # %if.then.63
                                        #   in Loop: Header=BB17_25 Depth=1
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
.LBB17_38:                              # %if.end.65
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_42
.LBB17_39:                              # %sw.bb.66
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	gimp_context_get_background
	movq	-40(%rbp), %rax
	cmpl	$4, 64(%rax)
	jne	.LBB17_41
# BB#40:                                # %if.then.70
                                        #   in Loop: Header=BB17_25 Depth=1
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
.LBB17_41:                              # %if.end.72
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_42
.LBB17_42:                              # %sw.epilog.73
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-40(%rbp), %rax
	movl	$0, 64(%rax)
# BB#43:                                # %for.inc
                                        #   in Loop: Header=BB17_25 Depth=1
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB17_25
.LBB17_44:                              # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_45:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_gradient_flatten, .Lfunc_end17-gimp_gradient_flatten
	.cfi_endproc

	.globl	gimp_gradient_segment_free
	.align	16, 0x90
	.type	gimp_gradient_segment_free,@function
gimp_gradient_segment_free:             # @gimp_gradient_segment_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_free, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_7
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.body.1
	movl	$128, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB18_7:                               # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_gradient_segment_free, .Lfunc_end18-gimp_gradient_segment_free
	.cfi_endproc

	.globl	gimp_gradient_segments_free
	.align	16, 0x90
	.type	gimp_gradient_segments_free,@function
gimp_gradient_segments_free:            # @gimp_gradient_segments_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segments_free, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	jmp	.LBB19_6
.LBB19_6:                               # %do.body.1
	movl	$128, %eax
	movl	%eax, %edi
	movl	$120, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free_chain_with_offset
.LBB19_7:                               # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_gradient_segments_free, .Lfunc_end19-gimp_gradient_segments_free
	.cfi_endproc

	.globl	gimp_gradient_segment_get_last
	.align	16, 0x90
	.type	gimp_gradient_segment_get_last,@function
gimp_gradient_segment_get_last:         # @gimp_gradient_segment_get_last
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB20_6
.LBB20_2:                               # %if.end
	jmp	.LBB20_3
.LBB20_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB20_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB20_3
.LBB20_5:                               # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_6:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_gradient_segment_get_last, .Lfunc_end20-gimp_gradient_segment_get_last
	.cfi_endproc

	.globl	gimp_gradient_segment_get_first
	.align	16, 0x90
	.type	gimp_gradient_segment_get_first,@function
gimp_gradient_segment_get_first:        # @gimp_gradient_segment_get_first
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB21_6
.LBB21_2:                               # %if.end
	jmp	.LBB21_3
.LBB21_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB21_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB21_3
.LBB21_5:                               # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_6:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_gradient_segment_get_first, .Lfunc_end21-gimp_gradient_segment_get_first
	.cfi_endproc

	.globl	gimp_gradient_segment_get_nth
	.align	16, 0x90
	.type	gimp_gradient_segment_get_nth,@function
gimp_gradient_segment_get_nth:          # @gimp_gradient_segment_get_nth
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	jl	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_nth, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_15
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB22_7
# BB#6:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB22_15
.LBB22_7:                               # %if.end.2
	jmp	.LBB22_8
.LBB22_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB22_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB22_10:                              # %land.end
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_11
	jmp	.LBB22_12
.LBB22_11:                              # %while.body
                                        #   in Loop: Header=BB22_8 Depth=1
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB22_8
.LBB22_12:                              # %while.end
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB22_14
# BB#13:                                # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_15
.LBB22_14:                              # %if.end.7
	movq	$0, -8(%rbp)
.LBB22_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_gradient_segment_get_nth, .Lfunc_end22-gimp_gradient_segment_get_nth
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_gradient_segment_split_midpoint
	.align	16, 0x90
	.type	gimp_gradient_segment_split_midpoint,@function
gimp_gradient_segment_split_midpoint:   # @gimp_gradient_segment_split_midpoint
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_midpoint, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_42
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB23_19:                              # %if.end.31
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.35
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_midpoint, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_42
.LBB23_23:                              # %if.end.37
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.38
	jmp	.LBB23_25
.LBB23_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB23_27
# BB#26:                                # %if.then.41
	jmp	.LBB23_28
.LBB23_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_midpoint, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_42
.LBB23_28:                              # %if.end.43
	jmp	.LBB23_29
.LBB23_29:                              # %do.end.44
	jmp	.LBB23_30
.LBB23_30:                              # %do.body.45
	cmpq	$0, -32(%rbp)
	je	.LBB23_32
# BB#31:                                # %if.then.47
	jmp	.LBB23_33
.LBB23_32:                              # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_midpoint, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_42
.LBB23_33:                              # %if.end.49
	jmp	.LBB23_34
.LBB23_34:                              # %do.end.50
	jmp	.LBB23_35
.LBB23_35:                              # %do.body.51
	cmpq	$0, -40(%rbp)
	je	.LBB23_37
# BB#36:                                # %if.then.53
	jmp	.LBB23_38
.LBB23_37:                              # %if.else.54
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_midpoint, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_42
.LBB23_38:                              # %if.end.55
	jmp	.LBB23_39
.LBB23_39:                              # %do.end.56
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	xorl	%ecx, %ecx
	leaq	-72(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	gimp_gradient_get_color_at
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_gradient_segment_new
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-80(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB23_41
# BB#40:                                # %if.then.65
	movq	-80(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, 112(%rcx)
.LBB23_41:                              # %if.end.68
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rsi
	movq	%rsi, 72(%rax)
	movq	80(%rdx), %rsi
	movq	%rsi, 80(%rax)
	movq	88(%rdx), %rsi
	movq	%rsi, 88(%rax)
	movq	96(%rdx), %rdx
	movq	%rdx, 96(%rax)
	movq	-80(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rsi, 32(%rdx)
	movq	-64(%rbp), %rsi
	movq	%rsi, 40(%rdx)
	movq	-56(%rbp), %rsi
	movq	%rsi, 48(%rdx)
	movq	-48(%rbp), %rsi
	movq	%rsi, 56(%rdx)
	movq	32(%rdx), %rsi
	movq	%rsi, 72(%rax)
	movq	40(%rdx), %rsi
	movq	%rsi, 80(%rax)
	movq	48(%rdx), %rsi
	movq	%rsi, 88(%rax)
	movq	56(%rdx), %rdx
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 104(%rax)
	movq	-24(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB23_42:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_gradient_segment_split_midpoint, .Lfunc_end23-gimp_gradient_segment_split_midpoint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_gradient_segment_split_uniform
	.align	16, 0x90
	.type	gimp_gradient_segment_split_uniform,@function
gimp_gradient_segment_split_uniform:    # @gimp_gradient_segment_split_uniform
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.8
	movl	$1, -108(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.9
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.11
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.14
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_uniform, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_53
.LBB24_11:                              # %if.end.16
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.17
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB24_15
# BB#14:                                # %if.then.26
	movl	$0, -132(%rbp)
	jmp	.LBB24_20
.LBB24_15:                              # %if.else.27
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_18
# BB#16:                                # %land.lhs.true.30
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB24_18
# BB#17:                                # %if.then.34
	movl	$1, -132(%rbp)
	jmp	.LBB24_19
.LBB24_18:                              # %if.else.35
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB24_19:                              # %if.end.37
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.38
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB24_22
# BB#21:                                # %if.then.41
	jmp	.LBB24_23
.LBB24_22:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_uniform, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_53
.LBB24_23:                              # %if.end.43
	jmp	.LBB24_24
.LBB24_24:                              # %do.end.44
	jmp	.LBB24_25
.LBB24_25:                              # %do.body.45
	cmpq	$0, -24(%rbp)
	je	.LBB24_27
# BB#26:                                # %if.then.47
	jmp	.LBB24_28
.LBB24_27:                              # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_uniform, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_53
.LBB24_28:                              # %if.end.49
	jmp	.LBB24_29
.LBB24_29:                              # %do.end.50
	jmp	.LBB24_30
.LBB24_30:                              # %do.body.51
	cmpq	$0, -40(%rbp)
	je	.LBB24_32
# BB#31:                                # %if.then.53
	jmp	.LBB24_33
.LBB24_32:                              # %if.else.54
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_uniform, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_53
.LBB24_33:                              # %if.end.55
	jmp	.LBB24_34
.LBB24_34:                              # %do.end.56
	jmp	.LBB24_35
.LBB24_35:                              # %do.body.57
	cmpq	$0, -48(%rbp)
	je	.LBB24_37
# BB#36:                                # %if.then.59
	jmp	.LBB24_38
.LBB24_37:                              # %if.else.60
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_split_uniform, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_53
.LBB24_38:                              # %if.end.61
	jmp	.LBB24_39
.LBB24_39:                              # %do.end.62
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB24_40:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB24_47
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB24_40 Depth=1
	callq	gimp_gradient_segment_new
	movq	%rax, -56(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB24_43
# BB#42:                                # %if.then.70
                                        #   in Loop: Header=BB24_40 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB24_43:                              # %if.end.71
                                        #   in Loop: Header=BB24_40 Depth=1
	xorl	%ecx, %ecx
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	cvtsi2sdl	-84(%rbp), %xmm2
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movl	-84(%rbp), %edx
	addl	$1, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %r8
	callq	gimp_gradient_get_color_at
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %r8
	movsd	16(%r8), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %r8
	addq	$72, %r8
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_color_at
	movq	-24(%rbp), %rdx
	movl	104(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, 104(%rdx)
	movq	-24(%rbp), %rdx
	movl	108(%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, 108(%rdx)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rdx, 112(%rsi)
	movq	-56(%rbp), %rdx
	movq	$0, 120(%rdx)
	cmpq	$0, -64(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	je	.LBB24_45
# BB#44:                                # %if.then.93
                                        #   in Loop: Header=BB24_40 Depth=1
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB24_45:                              # %if.end.95
                                        #   in Loop: Header=BB24_40 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB24_40 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB24_40
.LBB24_47:                              # %for.end
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, 32(%rax)
	movq	40(%rdx), %rsi
	movq	%rsi, 40(%rax)
	movq	48(%rdx), %rsi
	movq	%rsi, 48(%rax)
	movq	56(%rdx), %rdx
	movq	%rdx, 56(%rax)
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rsi
	movq	%rsi, 72(%rax)
	movq	80(%rdx), %rsi
	movq	%rsi, 80(%rax)
	movq	88(%rdx), %rsi
	movq	%rsi, 88(%rax)
	movq	96(%rdx), %rdx
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB24_49
# BB#48:                                # %if.then.114
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB24_50
.LBB24_49:                              # %if.else.117
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB24_50:                              # %if.end.118
	movq	-24(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB24_52
# BB#51:                                # %if.then.121
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, 112(%rcx)
.LBB24_52:                              # %if.end.124
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi
	callq	gimp_gradient_segment_free
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB24_53:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_gradient_segment_split_uniform, .Lfunc_end24-gimp_gradient_segment_split_uniform
	.cfi_endproc

	.globl	gimp_gradient_segment_get_left_color
	.align	16, 0x90
	.type	gimp_gradient_segment_get_left_color,@function
gimp_gradient_segment_get_left_color:   # @gimp_gradient_segment_get_left_color
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_23
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_color, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_23
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	jmp	.LBB25_18
.LBB25_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB25_20
# BB#19:                                # %if.then.19
	jmp	.LBB25_21
.LBB25_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_color, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_23
.LBB25_21:                              # %if.end.21
	jmp	.LBB25_22
.LBB25_22:                              # %do.end.22
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	40(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	48(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	56(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB25_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_gradient_segment_get_left_color, .Lfunc_end25-gimp_gradient_segment_get_left_color
	.cfi_endproc

	.globl	gimp_gradient_segment_set_left_color
	.align	16, 0x90
	.type	gimp_gradient_segment_set_left_color,@function
gimp_gradient_segment_set_left_color:   # @gimp_gradient_segment_set_left_color
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_23
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB26_15
# BB#14:                                # %if.then.13
	jmp	.LBB26_16
.LBB26_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_color, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_23
.LBB26_16:                              # %if.end.15
	jmp	.LBB26_17
.LBB26_17:                              # %do.end.16
	jmp	.LBB26_18
.LBB26_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB26_20
# BB#19:                                # %if.then.19
	jmp	.LBB26_21
.LBB26_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_color, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_23
.LBB26_21:                              # %if.end.21
	jmp	.LBB26_22
.LBB26_22:                              # %do.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB26_23:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_gradient_segment_set_left_color, .Lfunc_end26-gimp_gradient_segment_set_left_color
	.cfi_endproc

	.globl	gimp_gradient_segment_range_blend
	.align	16, 0x90
	.type	gimp_gradient_segment_range_blend,@function
gimp_gradient_segment_range_blend:      # @gimp_gradient_segment_range_blend
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
	subq	$160, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_blend, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_27
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB27_15
# BB#14:                                # %if.then.13
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_blend, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_27
.LBB27_16:                              # %if.end.15
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -24(%rbp)
	jne	.LBB27_19
# BB#18:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB27_19:                              # %if.end.22
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	16(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	24(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB27_20:                              # %do.body.36
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB27_22
# BB#21:                                # %if.then.38
                                        #   in Loop: Header=BB27_20 Depth=1
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 88(%rax)
.LBB27_22:                              # %if.end.88
                                        #   in Loop: Header=BB27_20 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB27_24
# BB#23:                                # %if.then.90
                                        #   in Loop: Header=BB27_20 Depth=1
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 96(%rax)
.LBB27_24:                              # %if.end.109
                                        #   in Loop: Header=BB27_20 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -104(%rbp)
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB27_20 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB27_20
# BB#26:                                # %do.end.111
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB27_27:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_gradient_segment_range_blend, .Lfunc_end27-gimp_gradient_segment_range_blend
	.cfi_endproc

	.globl	gimp_gradient_segment_get_right_color
	.align	16, 0x90
	.type	gimp_gradient_segment_get_right_color,@function
gimp_gradient_segment_get_right_color:  # @gimp_gradient_segment_get_right_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
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
	movabsq	$.L__func__.gimp_gradient_segment_get_right_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_23
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB28_15
# BB#14:                                # %if.then.13
	jmp	.LBB28_16
.LBB28_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_right_color, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_23
.LBB28_16:                              # %if.end.15
	jmp	.LBB28_17
.LBB28_17:                              # %do.end.16
	jmp	.LBB28_18
.LBB28_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB28_20
# BB#19:                                # %if.then.19
	jmp	.LBB28_21
.LBB28_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_right_color, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_23
.LBB28_21:                              # %if.end.21
	jmp	.LBB28_22
.LBB28_22:                              # %do.end.22
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	80(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	88(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	96(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB28_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_gradient_segment_get_right_color, .Lfunc_end28-gimp_gradient_segment_get_right_color
	.cfi_endproc

	.globl	gimp_gradient_segment_set_right_color
	.align	16, 0x90
	.type	gimp_gradient_segment_set_right_color,@function
gimp_gradient_segment_set_right_color:  # @gimp_gradient_segment_set_right_color
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_23
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	jmp	.LBB29_13
.LBB29_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB29_15
# BB#14:                                # %if.then.13
	jmp	.LBB29_16
.LBB29_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_color, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_23
.LBB29_16:                              # %if.end.15
	jmp	.LBB29_17
.LBB29_17:                              # %do.end.16
	jmp	.LBB29_18
.LBB29_18:                              # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB29_20
# BB#19:                                # %if.then.19
	jmp	.LBB29_21
.LBB29_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_color, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_23
.LBB29_21:                              # %if.end.21
	jmp	.LBB29_22
.LBB29_22:                              # %do.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %r8
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_gradient_segment_range_blend
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB29_23:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_gradient_segment_set_right_color, .Lfunc_end29-gimp_gradient_segment_set_right_color
	.cfi_endproc

	.globl	gimp_gradient_segment_get_left_color_type
	.align	16, 0x90
	.type	gimp_gradient_segment_get_left_color_type,@function
gimp_gradient_segment_get_left_color_type: # @gimp_gradient_segment_get_left_color_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_color_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_18
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	jmp	.LBB30_13
.LBB30_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB30_15
# BB#14:                                # %if.then.13
	jmp	.LBB30_16
.LBB30_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_color_type, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_18
.LBB30_16:                              # %if.end.15
	jmp	.LBB30_17
.LBB30_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB30_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_gradient_segment_get_left_color_type, .Lfunc_end30-gimp_gradient_segment_get_left_color_type
	.cfi_endproc

	.globl	gimp_gradient_segment_set_left_color_type
	.align	16, 0x90
	.type	gimp_gradient_segment_set_left_color_type,@function
gimp_gradient_segment_set_left_color_type: # @gimp_gradient_segment_set_left_color_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_color_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_18
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	jmp	.LBB31_13
.LBB31_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB31_15
# BB#14:                                # %if.then.13
	jmp	.LBB31_16
.LBB31_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_color_type, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_18
.LBB31_16:                              # %if.end.15
	jmp	.LBB31_17
.LBB31_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB31_18:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_gradient_segment_set_left_color_type, .Lfunc_end31-gimp_gradient_segment_set_left_color_type
	.cfi_endproc

	.globl	gimp_gradient_segment_get_right_color_type
	.align	16, 0x90
	.type	gimp_gradient_segment_get_right_color_type,@function
gimp_gradient_segment_get_right_color_type: # @gimp_gradient_segment_get_right_color_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_right_color_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_18
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB32_15
# BB#14:                                # %if.then.13
	jmp	.LBB32_16
.LBB32_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_right_color_type, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_18
.LBB32_16:                              # %if.end.15
	jmp	.LBB32_17
.LBB32_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB32_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_gradient_segment_get_right_color_type, .Lfunc_end32-gimp_gradient_segment_get_right_color_type
	.cfi_endproc

	.globl	gimp_gradient_segment_set_right_color_type
	.align	16, 0x90
	.type	gimp_gradient_segment_set_right_color_type,@function
gimp_gradient_segment_set_right_color_type: # @gimp_gradient_segment_set_right_color_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_color_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_18
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	jmp	.LBB33_13
.LBB33_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB33_15
# BB#14:                                # %if.then.13
	jmp	.LBB33_16
.LBB33_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_color_type, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_18
.LBB33_16:                              # %if.end.15
	jmp	.LBB33_17
.LBB33_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB33_18:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_gradient_segment_set_right_color_type, .Lfunc_end33-gimp_gradient_segment_set_right_color_type
	.cfi_endproc

	.globl	gimp_gradient_segment_get_left_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_get_left_pos,@function
gimp_gradient_segment_get_left_pos:     # @gimp_gradient_segment_get_left_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_pos, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB34_18
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	jmp	.LBB34_13
.LBB34_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB34_15
# BB#14:                                # %if.then.13
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_left_pos, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB34_18
.LBB34_16:                              # %if.end.15
	jmp	.LBB34_17
.LBB34_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB34_18:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_gradient_segment_get_left_pos, .Lfunc_end34-gimp_gradient_segment_get_left_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4457293557087583675     # double 1.0E-10
	.text
	.globl	gimp_gradient_segment_set_left_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_set_left_pos,@function
gimp_gradient_segment_set_left_pos:     # @gimp_gradient_segment_set_left_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_pos, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB35_27
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	jmp	.LBB35_13
.LBB35_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB35_15
# BB#14:                                # %if.then.13
	jmp	.LBB35_16
.LBB35_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_left_pos, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB35_27
.LBB35_16:                              # %if.end.15
	jmp	.LBB35_17
.LBB35_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB35_19
# BB#18:                                # %if.then.18
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB35_26
.LBB35_19:                              # %if.else.19
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB35_21
# BB#20:                                # %cond.true
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB35_25
.LBB35_21:                              # %cond.false
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	addsd	8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_23
# BB#22:                                # %cond.true.28
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB35_24
.LBB35_23:                              # %cond.false.32
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB35_24:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB35_25:                              # %cond.end.33
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movsd	%xmm0, 16(%rax)
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB35_26:                              # %if.end.38
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB35_27:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_gradient_segment_set_left_pos, .Lfunc_end35-gimp_gradient_segment_set_left_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_get_right_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_get_right_pos,@function
gimp_gradient_segment_get_right_pos:    # @gimp_gradient_segment_get_right_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_right_pos, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB36_18
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	jmp	.LBB36_13
.LBB36_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB36_15
# BB#14:                                # %if.then.13
	jmp	.LBB36_16
.LBB36_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_right_pos, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB36_18
.LBB36_16:                              # %if.end.15
	jmp	.LBB36_17
.LBB36_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB36_18:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_gradient_segment_get_right_pos, .Lfunc_end36-gimp_gradient_segment_get_right_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI37_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_gradient_segment_set_right_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_set_right_pos,@function
gimp_gradient_segment_set_right_pos:    # @gimp_gradient_segment_set_right_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_pos, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB37_27
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	jmp	.LBB37_13
.LBB37_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB37_15
# BB#14:                                # %if.then.13
	jmp	.LBB37_16
.LBB37_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_right_pos, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB37_27
.LBB37_16:                              # %if.end.15
	jmp	.LBB37_17
.LBB37_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	cmpq	$0, 120(%rax)
	jne	.LBB37_19
# BB#18:                                # %if.then.18
	movsd	.LCPI37_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB37_26
.LBB37_19:                              # %if.else.19
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB37_21
# BB#20:                                # %cond.true
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB37_25
.LBB37_21:                              # %cond.false
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	8(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB37_23
# BB#22:                                # %cond.true.29
	movsd	.LCPI37_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB37_24
.LBB37_23:                              # %cond.false.32
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB37_24:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB37_25:                              # %cond.end.33
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movsd	%xmm0, (%rax)
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB37_26:                              # %if.end.38
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB37_27:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_gradient_segment_set_right_pos, .Lfunc_end37-gimp_gradient_segment_set_right_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_get_middle_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_get_middle_pos,@function
gimp_gradient_segment_get_middle_pos:   # @gimp_gradient_segment_get_middle_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_middle_pos, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB38_18
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	jmp	.LBB38_13
.LBB38_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB38_15
# BB#14:                                # %if.then.13
	jmp	.LBB38_16
.LBB38_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_middle_pos, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB38_18
.LBB38_16:                              # %if.end.15
	jmp	.LBB38_17
.LBB38_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB38_18:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_gradient_segment_get_middle_pos, .Lfunc_end38-gimp_gradient_segment_get_middle_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4457293557087583675     # double 1.0E-10
	.text
	.globl	gimp_gradient_segment_set_middle_pos
	.align	16, 0x90
	.type	gimp_gradient_segment_set_middle_pos,@function
gimp_gradient_segment_set_middle_pos:   # @gimp_gradient_segment_set_middle_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_middle_pos, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB39_24
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	jmp	.LBB39_13
.LBB39_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB39_15
# BB#14:                                # %if.then.13
	jmp	.LBB39_16
.LBB39_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_set_middle_pos, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB39_24
.LBB39_16:                              # %if.end.15
	jmp	.LBB39_17
.LBB39_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB39_19
# BB#18:                                # %cond.true
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB39_23
.LBB39_19:                              # %cond.false
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB39_21
# BB#20:                                # %cond.true.23
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB39_22
.LBB39_21:                              # %cond.false.26
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB39_22:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB39_23:                              # %cond.end.27
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB39_24:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_gradient_segment_set_middle_pos, .Lfunc_end39-gimp_gradient_segment_set_middle_pos
	.cfi_endproc

	.globl	gimp_gradient_segment_get_blending_function
	.align	16, 0x90
	.type	gimp_gradient_segment_get_blending_function,@function
gimp_gradient_segment_get_blending_function: # @gimp_gradient_segment_get_blending_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_blending_function, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB40_13
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB40_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_gradient_segment_get_blending_function, .Lfunc_end40-gimp_gradient_segment_get_blending_function
	.cfi_endproc

	.globl	gimp_gradient_segment_get_coloring_type
	.align	16, 0x90
	.type	gimp_gradient_segment_get_coloring_type,@function
gimp_gradient_segment_get_coloring_type: # @gimp_gradient_segment_get_coloring_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_get_coloring_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB41_13
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	movq	-24(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB41_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_gradient_segment_get_coloring_type, .Lfunc_end41-gimp_gradient_segment_get_coloring_type
	.cfi_endproc

	.globl	gimp_gradient_segment_range_compress
	.align	16, 0x90
	.type	gimp_gradient_segment_range_compress,@function
gimp_gradient_segment_range_compress:   # @gimp_gradient_segment_range_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_compress, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB42_27
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	jmp	.LBB42_13
.LBB42_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB42_15
# BB#14:                                # %if.then.13
	jmp	.LBB42_16
.LBB42_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_compress, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB42_27
.LBB42_16:                              # %if.end.15
	jmp	.LBB42_17
.LBB42_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -24(%rbp)
	jne	.LBB42_19
# BB#18:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB42_19:                              # %if.end.22
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB42_20:                              # %do.body.24
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB42_22
# BB#21:                                # %if.then.26
                                        #   in Loop: Header=BB42_20 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB42_22:                              # %if.end.30
                                        #   in Loop: Header=BB42_20 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-72(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB42_24
# BB#23:                                # %if.then.36
                                        #   in Loop: Header=BB42_20 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB42_24:                              # %if.end.42
                                        #   in Loop: Header=BB42_20 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -72(%rbp)
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB42_20 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB42_20
# BB#26:                                # %do.end.45
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB42_27:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_gradient_segment_range_compress, .Lfunc_end42-gimp_gradient_segment_range_compress
	.cfi_endproc

	.globl	gimp_gradient_segment_range_set_blending_function
	.align	16, 0x90
	.type	gimp_gradient_segment_range_set_blending_function,@function
gimp_gradient_segment_range_set_blending_function: # @gimp_gradient_segment_range_set_blending_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB43_8
.LBB43_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB43_7:                               # %if.end
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.8
	jmp	.LBB43_11
.LBB43_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_set_blending_function, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB43_20
.LBB43_11:                              # %if.end.10
	jmp	.LBB43_12
.LBB43_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB43_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB43_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB43_13 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB43_15:                              # %land.end
                                        #   in Loop: Header=BB43_13 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB43_16
	jmp	.LBB43_19
.LBB43_16:                              # %while.body
                                        #   in Loop: Header=BB43_13 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB43_18
# BB#17:                                # %if.then.16
                                        #   in Loop: Header=BB43_13 Depth=1
	movl	$1, -44(%rbp)
.LBB43_18:                              # %if.end.17
                                        #   in Loop: Header=BB43_13 Depth=1
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 104(%rcx)
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB43_13
.LBB43_19:                              # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB43_20:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_gradient_segment_range_set_blending_function, .Lfunc_end43-gimp_gradient_segment_range_set_blending_function
	.cfi_endproc

	.globl	gimp_gradient_segment_range_set_coloring_type
	.align	16, 0x90
	.type	gimp_gradient_segment_range_set_coloring_type,@function
gimp_gradient_segment_range_set_coloring_type: # @gimp_gradient_segment_range_set_coloring_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB44_8
.LBB44_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.8
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_set_coloring_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB44_20
.LBB44_11:                              # %if.end.10
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB44_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB44_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB44_13 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB44_15:                              # %land.end
                                        #   in Loop: Header=BB44_13 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_16
	jmp	.LBB44_19
.LBB44_16:                              # %while.body
                                        #   in Loop: Header=BB44_13 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB44_18
# BB#17:                                # %if.then.16
                                        #   in Loop: Header=BB44_13 Depth=1
	movl	$1, -44(%rbp)
.LBB44_18:                              # %if.end.17
                                        #   in Loop: Header=BB44_13 Depth=1
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 108(%rcx)
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB44_13
.LBB44_19:                              # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB44_20:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_gradient_segment_range_set_coloring_type, .Lfunc_end44-gimp_gradient_segment_range_set_coloring_type
	.cfi_endproc

	.globl	gimp_gradient_segment_range_flip
	.align	16, 0x90
	.type	gimp_gradient_segment_range_flip,@function
gimp_gradient_segment_range_flip:       # @gimp_gradient_segment_range_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.10
	movl	$1, -132(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.11
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.13
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.16
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_flip, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_43
.LBB45_11:                              # %if.end.18
	jmp	.LBB45_12
.LBB45_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -24(%rbp)
	jne	.LBB45_14
# BB#13:                                # %if.then.22
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB45_14:                              # %if.end.24
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -80(%rbp)
.LBB45_15:                              # %do.body.27
                                        # =>This Inner Loop Header: Depth=1
	callq	gimp_gradient_segment_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB45_17
# BB#16:                                # %if.then.30
                                        #   in Loop: Header=BB45_15 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB45_18
.LBB45_17:                              # %if.else.32
                                        #   in Loop: Header=BB45_15 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movq	-48(%rbp), %rax
	subsd	16(%rax), %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB45_18:                              # %if.end.35
                                        #   in Loop: Header=BB45_15 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-48(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movups	72(%rdx), %xmm0
	movups	88(%rdx), %xmm1
	movups	%xmm1, 48(%rax)
	movups	%xmm0, 32(%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movups	32(%rdx), %xmm0
	movups	48(%rdx), %xmm1
	movups	%xmm1, 88(%rax)
	movups	%xmm0, 72(%rax)
	movq	-48(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, %esi
	subl	$3, %esi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%esi, -152(%rbp)        # 4-byte Spill
	je	.LBB45_19
	jmp	.LBB45_44
.LBB45_44:                              # %if.end.35
                                        #   in Loop: Header=BB45_15 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB45_20
	jmp	.LBB45_21
.LBB45_19:                              # %sw.bb
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movl	$4, 104(%rax)
	jmp	.LBB45_22
.LBB45_20:                              # %sw.bb.48
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movl	$3, 104(%rax)
	jmp	.LBB45_22
.LBB45_21:                              # %sw.default
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-48(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 104(%rax)
.LBB45_22:                              # %sw.epilog
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-48(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	je	.LBB45_23
	jmp	.LBB45_45
.LBB45_45:                              # %sw.epilog
                                        #   in Loop: Header=BB45_15 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB45_24
	jmp	.LBB45_25
.LBB45_23:                              # %sw.bb.52
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movl	$2, 108(%rax)
	jmp	.LBB45_26
.LBB45_24:                              # %sw.bb.54
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movl	$1, 108(%rax)
	jmp	.LBB45_26
.LBB45_25:                              # %sw.default.56
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-48(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 108(%rax)
.LBB45_26:                              # %sw.epilog.59
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-64(%rbp), %rax
	movq	$0, 120(%rax)
	cmpq	$0, -72(%rbp)
	je	.LBB45_28
# BB#27:                                # %if.then.62
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB45_28:                              # %if.end.64
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)
# BB#29:                                # %do.cond
                                        #   in Loop: Header=BB45_15 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB45_15
# BB#30:                                # %do.end.67
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB45_31:                              # %do.body.71
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_gradient_segment_free
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#32:                                # %do.cond.73
                                        #   in Loop: Header=BB45_31 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB45_31
# BB#33:                                # %do.end.75
	cmpq	$0, -88(%rbp)
	je	.LBB45_35
# BB#34:                                # %if.then.77
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB45_36
.LBB45_35:                              # %if.else.79
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB45_36:                              # %if.end.80
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 120(%rcx)
	cmpq	$0, -96(%rbp)
	je	.LBB45_38
# BB#37:                                # %if.then.84
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB45_38:                              # %if.end.86
	cmpq	$0, -32(%rbp)
	je	.LBB45_40
# BB#39:                                # %if.then.88
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB45_40:                              # %if.end.89
	cmpq	$0, -40(%rbp)
	je	.LBB45_42
# BB#41:                                # %if.then.91
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB45_42:                              # %if.end.92
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB45_43:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_gradient_segment_range_flip, .Lfunc_end45-gimp_gradient_segment_range_flip
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI46_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_gradient_segment_range_replicate
	.align	16, 0x90
	.type	gimp_gradient_segment_range_replicate,@function
gimp_gradient_segment_range_replicate:  # @gimp_gradient_segment_range_replicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -172(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.11
	movl	$1, -172(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.12
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.14
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.17
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.18
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_replicate, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_41
.LBB46_11:                              # %if.end.19
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB46_14
# BB#13:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB46_14:                              # %if.end.23
	cmpl	$2, -28(%rbp)
	jge	.LBB46_16
# BB#15:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB46_41
.LBB46_16:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI46_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -148(%rbp)
.LBB46_17:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_19 Depth 2
	movl	-148(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB46_28
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB46_17 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-148(%rbp), %xmm1
	mulsd	-88(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB46_19:                              # %do.body.33
                                        #   Parent Loop BB46_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	gimp_gradient_segment_new
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB46_21
# BB#20:                                # %if.then.37
                                        #   in Loop: Header=BB46_19 Depth=2
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB46_22
.LBB46_21:                              # %if.else.39
                                        #   in Loop: Header=BB46_19 Depth=2
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB46_22:                              # %if.end.45
                                        #   in Loop: Header=BB46_19 Depth=2
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-120(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-120(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, 32(%rax)
	movq	40(%rdx), %rsi
	movq	%rsi, 40(%rax)
	movq	48(%rdx), %rsi
	movq	%rsi, 48(%rax)
	movq	56(%rdx), %rdx
	movq	%rdx, 56(%rax)
	movq	-120(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	72(%rdx), %rsi
	movq	%rsi, 72(%rax)
	movq	80(%rdx), %rsi
	movq	%rsi, 80(%rax)
	movq	88(%rdx), %rsi
	movq	%rsi, 88(%rax)
	movq	96(%rdx), %rdx
	movq	%rdx, 96(%rax)
	movq	-120(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 104(%rax)
	movq	-120(%rbp), %rax
	movl	108(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 108(%rax)
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-104(%rbp), %rax
	movq	$0, 120(%rax)
	cmpq	$0, -96(%rbp)
	je	.LBB46_24
# BB#23:                                # %if.then.63
                                        #   in Loop: Header=BB46_19 Depth=2
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB46_24:                              # %if.end.65
                                        #   in Loop: Header=BB46_19 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -120(%rbp)
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB46_19 Depth=2
	movq	-128(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB46_19
# BB#26:                                # %do.end.69
                                        #   in Loop: Header=BB46_17 Depth=1
	jmp	.LBB46_27
.LBB46_27:                              # %for.inc
                                        #   in Loop: Header=BB46_17 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB46_17
.LBB46_28:                              # %for.end
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB46_29:                              # %do.body.73
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_gradient_segment_free
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
# BB#30:                                # %do.cond.75
                                        #   in Loop: Header=BB46_29 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB46_29
# BB#31:                                # %do.end.78
	cmpq	$0, -136(%rbp)
	je	.LBB46_33
# BB#32:                                # %if.then.80
	movq	-112(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB46_34
.LBB46_33:                              # %if.else.82
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB46_34:                              # %if.end.83
	movq	-136(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-144(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 120(%rcx)
	cmpq	$0, -144(%rbp)
	je	.LBB46_36
# BB#35:                                # %if.then.87
	movq	-104(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB46_36:                              # %if.end.89
	cmpq	$0, -40(%rbp)
	je	.LBB46_38
# BB#37:                                # %if.then.91
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB46_38:                              # %if.end.92
	cmpq	$0, -48(%rbp)
	je	.LBB46_40
# BB#39:                                # %if.then.94
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB46_40:                              # %if.end.95
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB46_41:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_gradient_segment_range_replicate, .Lfunc_end46-gimp_gradient_segment_range_replicate
	.cfi_endproc

	.globl	gimp_gradient_segment_range_split_midpoint
	.align	16, 0x90
	.type	gimp_gradient_segment_range_split_midpoint,@function
gimp_gradient_segment_range_split_midpoint: # @gimp_gradient_segment_range_split_midpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_split_midpoint, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_34
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	jmp	.LBB47_13
.LBB47_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB47_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB47_20
.LBB47_15:                              # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB47_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB47_19
.LBB47_18:                              # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB47_19:                              # %if.end.31
	jmp	.LBB47_20
.LBB47_20:                              # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB47_22
# BB#21:                                # %if.then.35
	jmp	.LBB47_23
.LBB47_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_split_midpoint, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_34
.LBB47_23:                              # %if.end.37
	jmp	.LBB47_24
.LBB47_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -32(%rbp)
	jne	.LBB47_26
# BB#25:                                # %if.then.42
	movq	-24(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -32(%rbp)
.LBB47_26:                              # %if.end.44
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB47_27:                              # %do.body.45
                                        # =>This Inner Loop Header: Depth=1
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_gradient_segment_split_midpoint
	movq	-72(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -56(%rbp)
# BB#28:                                # %do.cond
                                        #   in Loop: Header=BB47_27 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_27
# BB#29:                                # %do.end.47
	cmpq	$0, -40(%rbp)
	je	.LBB47_31
# BB#30:                                # %if.then.49
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB47_31:                              # %if.end.50
	cmpq	$0, -48(%rbp)
	je	.LBB47_33
# BB#32:                                # %if.then.52
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB47_33:                              # %if.end.53
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB47_34:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_gradient_segment_range_split_midpoint, .Lfunc_end47-gimp_gradient_segment_range_split_midpoint
	.cfi_endproc

	.globl	gimp_gradient_segment_range_split_uniform
	.align	16, 0x90
	.type	gimp_gradient_segment_range_split_uniform,@function
gimp_gradient_segment_range_split_uniform: # @gimp_gradient_segment_range_split_uniform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB48_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB48_8
.LBB48_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB48_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB48_7
.LBB48_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB48_7:                               # %if.end
	jmp	.LBB48_8
.LBB48_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB48_10
# BB#9:                                 # %if.then.8
	jmp	.LBB48_11
.LBB48_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_split_uniform, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB48_38
.LBB48_11:                              # %if.end.10
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
	jmp	.LBB48_13
.LBB48_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB48_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB48_20
.LBB48_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB48_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB48_19
.LBB48_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB48_19:                              # %if.end.31
	jmp	.LBB48_20
.LBB48_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB48_22
# BB#21:                                # %if.then.35
	jmp	.LBB48_23
.LBB48_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_split_uniform, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB48_38
.LBB48_23:                              # %if.end.37
	jmp	.LBB48_24
.LBB48_24:                              # %do.end.38
	cmpq	$0, -32(%rbp)
	jne	.LBB48_26
# BB#25:                                # %if.then.40
	movq	-24(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -32(%rbp)
.LBB48_26:                              # %if.end.42
	cmpl	$2, -36(%rbp)
	jge	.LBB48_28
# BB#27:                                # %if.then.44
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB48_38
.LBB48_28:                              # %if.end.45
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -96(%rbp)
.LBB48_29:                              # %do.body.48
                                        # =>This Inner Loop Header: Depth=1
	leaq	-80(%rbp), %r8
	leaq	-88(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	gimp_gradient_segment_split_uniform
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB48_31
# BB#30:                                # %if.then.50
                                        #   in Loop: Header=BB48_29 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB48_31:                              # %if.end.51
                                        #   in Loop: Header=BB48_29 Depth=1
	movq	-88(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -64(%rbp)
# BB#32:                                # %do.cond
                                        #   in Loop: Header=BB48_29 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB48_29
# BB#33:                                # %do.end.53
	cmpq	$0, -48(%rbp)
	je	.LBB48_35
# BB#34:                                # %if.then.55
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB48_35:                              # %if.end.56
	cmpq	$0, -56(%rbp)
	je	.LBB48_37
# BB#36:                                # %if.then.58
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB48_37:                              # %if.end.59
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB48_38:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_gradient_segment_range_split_uniform, .Lfunc_end48-gimp_gradient_segment_range_split_uniform
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI49_0:
	.quad	4611686018427387904     # double 2
.LCPI49_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_gradient_segment_range_delete
	.align	16, 0x90
	.type	gimp_gradient_segment_range_delete,@function
gimp_gradient_segment_range_delete:     # @gimp_gradient_segment_range_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB49_8
.LBB49_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB49_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB49_7
.LBB49_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB49_7:                               # %if.end
	jmp	.LBB49_8
.LBB49_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB49_10
# BB#9:                                 # %if.then.8
	jmp	.LBB49_11
.LBB49_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_delete, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB49_51
.LBB49_11:                              # %if.end.10
	jmp	.LBB49_12
.LBB49_12:                              # %do.end
	cmpq	$0, -24(%rbp)
	jne	.LBB49_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB49_14:                              # %if.end.14
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB49_17
# BB#15:                                # %land.lhs.true.17
	cmpq	$0, -56(%rbp)
	jne	.LBB49_17
# BB#16:                                # %if.then.19
	jmp	.LBB49_47
.LBB49_17:                              # %if.end.20
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI49_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB49_19
# BB#18:                                # %if.then.24
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB49_22
.LBB49_19:                              # %if.else.25
	cmpq	$0, -56(%rbp)
	jne	.LBB49_21
# BB#20:                                # %if.then.27
	movsd	.LCPI49_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB49_21:                              # %if.end.28
	jmp	.LBB49_22
.LBB49_22:                              # %if.end.29
	cmpq	$0, -48(%rbp)
	je	.LBB49_24
# BB#23:                                # %if.then.31
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
.LBB49_24:                              # %if.end.33
	cmpq	$0, -56(%rbp)
	je	.LBB49_26
# BB#25:                                # %if.then.35
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
.LBB49_26:                              # %if.end.37
	cmpq	$0, -48(%rbp)
	je	.LBB49_28
# BB#27:                                # %if.then.39
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB49_28:                              # %if.end.41
	cmpq	$0, -56(%rbp)
	je	.LBB49_30
# BB#29:                                # %if.then.43
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB49_30:                              # %if.end.45
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB49_31:                              # %do.body.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_gradient_segment_free
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
# BB#32:                                # %do.cond
                                        #   in Loop: Header=BB49_31 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB49_31
# BB#33:                                # %do.end.49
	cmpq	$0, -56(%rbp)
	je	.LBB49_39
# BB#34:                                # %if.then.51
	cmpq	$0, -32(%rbp)
	je	.LBB49_36
# BB#35:                                # %if.then.53
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_36:                              # %if.end.54
	cmpq	$0, -40(%rbp)
	je	.LBB49_38
# BB#37:                                # %if.then.56
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_38:                              # %if.end.57
	jmp	.LBB49_44
.LBB49_39:                              # %if.else.58
	cmpq	$0, -32(%rbp)
	je	.LBB49_41
# BB#40:                                # %if.then.60
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_41:                              # %if.end.61
	cmpq	$0, -40(%rbp)
	je	.LBB49_43
# BB#42:                                # %if.then.63
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_43:                              # %if.end.64
	jmp	.LBB49_44
.LBB49_44:                              # %if.end.65
	cmpq	$0, -48(%rbp)
	jne	.LBB49_46
# BB#45:                                # %if.then.67
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB49_46:                              # %if.end.68
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	jmp	.LBB49_51
.LBB49_47:                              # %premature_return
	cmpq	$0, -32(%rbp)
	je	.LBB49_49
# BB#48:                                # %if.then.72
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_49:                              # %if.end.73
	cmpq	$0, -40(%rbp)
	je	.LBB49_51
# BB#50:                                # %if.then.75
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB49_51:                              # %if.end.76
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_gradient_segment_range_delete, .Lfunc_end49-gimp_gradient_segment_range_delete
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_gradient_segment_range_recenter_handles
	.align	16, 0x90
	.type	gimp_gradient_segment_range_recenter_handles,@function
gimp_gradient_segment_range_recenter_handles: # @gimp_gradient_segment_range_recenter_handles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB50_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB50_8
.LBB50_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB50_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB50_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB50_7
.LBB50_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB50_7:                               # %if.end
	jmp	.LBB50_8
.LBB50_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB50_10
# BB#9:                                 # %if.then.8
	jmp	.LBB50_11
.LBB50_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_recenter_handles, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB50_18
.LBB50_11:                              # %if.end.10
	jmp	.LBB50_12
.LBB50_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -24(%rbp)
	jne	.LBB50_14
# BB#13:                                # %if.then.14
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB50_14:                              # %if.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB50_15:                              # %do.body.17
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI50_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#16:                                # %do.cond
                                        #   in Loop: Header=BB50_15 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB50_15
# BB#17:                                # %do.end.19
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB50_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_gradient_segment_range_recenter_handles, .Lfunc_end50-gimp_gradient_segment_range_recenter_handles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_gradient_segment_range_redistribute_handles
	.align	16, 0x90
	.type	gimp_gradient_segment_range_redistribute_handles,@function
gimp_gradient_segment_range_redistribute_handles: # @gimp_gradient_segment_range_redistribute_handles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB51_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB51_8
.LBB51_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB51_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB51_7
.LBB51_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB51_7:                               # %if.end
	jmp	.LBB51_8
.LBB51_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB51_10
# BB#9:                                 # %if.then.8
	jmp	.LBB51_11
.LBB51_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_redistribute_handles, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_22
.LBB51_11:                              # %if.end.10
	jmp	.LBB51_12
.LBB51_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -24(%rbp)
	jne	.LBB51_14
# BB#13:                                # %if.then.14
	movq	-16(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -24(%rbp)
.LBB51_14:                              # %if.end.16
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB51_15:                              # %do.body.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -32(%rbp)
# BB#16:                                # %do.cond
                                        #   in Loop: Header=BB51_15 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB51_15
# BB#17:                                # %do.end.19
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -72(%rbp)
.LBB51_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB51_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB51_18 Depth=1
	movsd	.LCPI51_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm2
	mulsd	-64(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-72(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	-64(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	16(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB51_18 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB51_18
.LBB51_21:                              # %for.end
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB51_22:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_gradient_segment_range_redistribute_handles, .Lfunc_end51-gimp_gradient_segment_range_redistribute_handles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI52_1:
	.quad	4461797156714954171     # double 2.0000000000000001E-10
	.text
	.globl	gimp_gradient_segment_range_move
	.align	16, 0x90
	.type	gimp_gradient_segment_range_move,@function
gimp_gradient_segment_range_move:       # @gimp_gradient_segment_range_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB52_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB52_8
.LBB52_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB52_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB52_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB52_7
.LBB52_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB52_7:                               # %if.end
	jmp	.LBB52_8
.LBB52_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB52_10
# BB#9:                                 # %if.then.8
	jmp	.LBB52_11
.LBB52_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_gradient_segment_range_move, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB52_66
.LBB52_11:                              # %if.end.10
	jmp	.LBB52_12
.LBB52_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	cmpq	$0, -32(%rbp)
	jne	.LBB52_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -32(%rbp)
.LBB52_14:                              # %if.end.16
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -68(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 120(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -72(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB52_22
# BB#15:                                # %if.then.21
	cmpl	$0, -68(%rbp)
	jne	.LBB52_17
# BB#16:                                # %if.then.23
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB52_18
.LBB52_17:                              # %if.else.25
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB52_18:                              # %if.end.27
	cmpl	$0, -72(%rbp)
	jne	.LBB52_20
# BB#19:                                # %if.then.29
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB52_21
.LBB52_20:                              # %if.else.32
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB52_21:                              # %if.end.34
	jmp	.LBB52_29
.LBB52_22:                              # %if.else.35
	cmpl	$0, -68(%rbp)
	jne	.LBB52_24
# BB#23:                                # %if.then.37
	movsd	.LCPI52_1, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB52_25
.LBB52_24:                              # %if.else.41
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB52_25:                              # %if.end.44
	cmpl	$0, -72(%rbp)
	jne	.LBB52_27
# BB#26:                                # %if.then.46
	movsd	.LCPI52_1, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB52_28
.LBB52_27:                              # %if.else.50
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB52_28:                              # %if.end.53
	jmp	.LBB52_29
.LBB52_29:                              # %if.end.54
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB52_38
# BB#30:                                # %if.then.57
	cmpl	$0, -68(%rbp)
	jne	.LBB52_34
# BB#31:                                # %if.then.59
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB52_33
# BB#32:                                # %if.then.64
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB52_33:                              # %if.end.67
	jmp	.LBB52_37
.LBB52_34:                              # %if.else.68
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB52_36
# BB#35:                                # %if.then.73
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB52_36:                              # %if.end.76
	jmp	.LBB52_37
.LBB52_37:                              # %if.end.77
	jmp	.LBB52_46
.LBB52_38:                              # %if.else.78
	cmpl	$0, -72(%rbp)
	jne	.LBB52_42
# BB#39:                                # %if.then.80
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB52_41
# BB#40:                                # %if.then.85
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	16(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB52_41:                              # %if.end.88
	jmp	.LBB52_45
.LBB52_42:                              # %if.else.89
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB52_44
# BB#43:                                # %if.then.94
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB52_44:                              # %if.end.97
	jmp	.LBB52_45
.LBB52_45:                              # %if.end.98
	jmp	.LBB52_46
.LBB52_46:                              # %if.end.99
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB52_47:                              # %do.body.100
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB52_49
# BB#48:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB52_47 Depth=1
	cmpl	$0, -68(%rbp)
	jne	.LBB52_50
.LBB52_49:                              # %if.then.105
                                        #   in Loop: Header=BB52_47 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
.LBB52_50:                              # %if.end.108
                                        #   in Loop: Header=BB52_47 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB52_52
# BB#51:                                # %land.lhs.true.113
                                        #   in Loop: Header=BB52_47 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB52_53
.LBB52_52:                              # %if.then.115
                                        #   in Loop: Header=BB52_47 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
.LBB52_53:                              # %if.end.118
                                        #   in Loop: Header=BB52_47 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)
# BB#54:                                # %do.cond
                                        #   in Loop: Header=BB52_47 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB52_47
# BB#55:                                # %do.end.122
	cmpl	$0, -68(%rbp)
	jne	.LBB52_60
# BB#56:                                # %if.then.124
	cmpl	$0, -44(%rbp)
	jne	.LBB52_58
# BB#57:                                # %if.then.126
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB52_59
.LBB52_58:                              # %if.else.130
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	112(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
.LBB52_59:                              # %if.end.136
	jmp	.LBB52_60
.LBB52_60:                              # %if.end.137
	cmpl	$0, -72(%rbp)
	jne	.LBB52_65
# BB#61:                                # %if.then.139
	cmpl	$0, -44(%rbp)
	jne	.LBB52_63
# BB#62:                                # %if.then.141
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB52_64
.LBB52_63:                              # %if.else.145
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	120(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_gradient_segment_range_compress
.LBB52_64:                              # %if.end.151
	jmp	.LBB52_65
.LBB52_65:                              # %if.end.152
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB52_66:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_gradient_segment_range_move, .Lfunc_end52-gimp_gradient_segment_range_move
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_class_init,@function
gimp_gradient_class_init:               # @gimp_gradient_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp162:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_gradient_duplicate, %rsi
	movabsq	$gimp_gradient_get_extension, %rdi
	movabsq	$gimp_gradient_save, %rcx
	movabsq	$gimp_gradient_get_new_preview, %rdx
	movabsq	$gimp_gradient_get_popup_size, %r8
	movabsq	$gimp_gradient_get_preview_size, %r9
	movabsq	$.L.str.18, %r10
	movabsq	$gimp_gradient_get_memsize, %r11
	movabsq	$gimp_gradient_finalize, %rbx
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 152(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 160(%rax)
	movq	-40(%rbp), %rax
	movq	%r9, 200(%rax)
	movq	-40(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 288(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 296(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 304(%rax)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_gradient_class_init, .Lfunc_end53-gimp_gradient_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_finalize,@function
gimp_gradient_finalize:                 # @gimp_gradient_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_gradient_segments_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB54_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_gradient_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_gradient_finalize, .Lfunc_end54-gimp_gradient_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_get_memsize,@function
gimp_gradient_get_memsize:              # @gimp_gradient_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB55_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB55_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	%rax, -40(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB55_1
.LBB55_4:                               # %for.end
	movq	-40(%rbp), %rax
	movq	gimp_gradient_parent_class, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_gradient_get_memsize, .Lfunc_end55-gimp_gradient_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_get_preview_size,@function
gimp_gradient_get_preview_size:         # @gimp_gradient_get_preview_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	movl	$2, %eax
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
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_gradient_get_preview_size, .Lfunc_end56-gimp_gradient_get_preview_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_get_popup_size,@function
gimp_gradient_get_popup_size:           # @gimp_gradient_get_popup_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpl	$128, -20(%rbp)
	jl	.LBB57_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$32, -24(%rbp)
	jge	.LBB57_3
.LBB57_2:                               # %if.then
	movq	-40(%rbp), %rax
	movl	$128, (%rax)
	movq	-48(%rbp), %rax
	movl	$32, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB57_4
.LBB57_3:                               # %if.end
	movl	$0, -4(%rbp)
.LBB57_4:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_gradient_get_popup_size, .Lfunc_end57-gimp_gradient_get_popup_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI58_0:
	.quad	4607182418800017408     # double 1
.LCPI58_1:
	.quad	4602678819172646912     # double 0.5
.LCPI58_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_gradient_get_new_preview,@function
gimp_gradient_get_new_preview:          # @gimp_gradient_get_new_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	.LCPI58_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	-20(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB58_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB58_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%ecx, %ecx
	leaq	-128(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_color_at
	movsd	.LCPI58_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI58_2, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -40(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-128(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %r9b
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%r9b, (%rax)
	movaps	%xmm1, %xmm2
	mulsd	-120(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %r9b
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%r9b, (%rax)
	movaps	%xmm1, %xmm2
	mulsd	-112(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %r9b
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%r9b, (%rax)
	mulsd	-104(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %r9b
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%r9b, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB58_1
.LBB58_4:                               # %for.end
	movl	$4, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -56(%rbp)
	movl	$0, -80(%rbp)
.LBB58_5:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB58_8
# BB#6:                                 # %for.body.30
                                        #   in Loop: Header=BB58_5 Depth=1
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-80(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
# BB#7:                                 # %for.inc.35
                                        #   in Loop: Header=BB58_5 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB58_5
.LBB58_8:                               # %for.end.37
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_gradient_get_new_preview, .Lfunc_end58-gimp_gradient_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_get_extension,@function
gimp_gradient_get_extension:            # @gimp_gradient_get_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.19, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_gradient_get_extension, .Lfunc_end59-gimp_gradient_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_duplicate,@function
gimp_gradient_duplicate:                # @gimp_gradient_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_gradient_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
.LBB60_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB60_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB60_1 Depth=1
	callq	gimp_gradient_segment_new
	movl	$128, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-40(%rbp), %rax
	movq	$0, 120(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB60_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB60_5
.LBB60_4:                               # %if.else
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB60_5:                               # %if.end
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB60_1
.LBB60_6:                               # %while.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_gradient_duplicate, .Lfunc_end60-gimp_gradient_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_get_checksum,@function
gimp_gradient_get_checksum:             # @gimp_gradient_get_checksum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB61_5
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	g_checksum_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB61_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB61_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB61_2 Depth=1
	movl	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$32, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$32, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$32, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$72, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$104, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$108, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB61_2
.LBB61_4:                               # %while.end
	movq	-32(%rbp), %rdi
	callq	g_checksum_get_string
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_checksum_free
.LBB61_5:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_gradient_get_checksum, .Lfunc_end61-gimp_gradient_get_checksum
	.cfi_endproc

	.type	gimp_gradient_get_type.g_define_type_id__volatile,@object # @gimp_gradient_get_type.g_define_type_id__volatile
	.local	gimp_gradient_get_type.g_define_type_id__volatile
	.comm	gimp_gradient_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGradient"
	.size	.L.str, 13

	.type	gimp_gradient_get_type.g_implement_interface_info,@object # @gimp_gradient_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_gradient_get_type.g_implement_interface_info:
	.quad	gimp_gradient_tagged_iface_init
	.quad	0
	.quad	0
	.size	gimp_gradient_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_gradient_new,@object # @__func__.gimp_gradient_new
.L__func__.gimp_gradient_new:
	.asciz	"gimp_gradient_new"
	.size	.L__func__.gimp_gradient_new, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"*name != '\\0'"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	gimp_gradient_get_standard.standard_gradient,@object # @gimp_gradient_get_standard.standard_gradient
	.local	gimp_gradient_get_standard.standard_gradient
	.comm	gimp_gradient_get_standard.standard_gradient,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Standard"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-gradient-standard"
	.size	.L.str.6, 23

	.type	.L__func__.gimp_gradient_get_color_at,@object # @__func__.gimp_gradient_get_color_at
.L__func__.gimp_gradient_get_color_at:
	.asciz	"gimp_gradient_get_color_at"
	.size	.L__func__.gimp_gradient_get_color_at, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_GRADIENT (gradient)"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"color != NULL"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s: Unknown gradient type %d."
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s: Unknown coloring mode %d"
	.size	.L.str.11, 29

	.type	.L__func__.gimp_gradient_get_segment_at,@object # @__func__.gimp_gradient_get_segment_at
.L__func__.gimp_gradient_get_segment_at:
	.asciz	"gimp_gradient_get_segment_at"
	.size	.L__func__.gimp_gradient_get_segment_at, 29

	.type	.L__func__.gimp_gradient_has_fg_bg_segments,@object # @__func__.gimp_gradient_has_fg_bg_segments
.L__func__.gimp_gradient_has_fg_bg_segments:
	.asciz	"gimp_gradient_has_fg_bg_segments"
	.size	.L__func__.gimp_gradient_has_fg_bg_segments, 33

	.type	.L__func__.gimp_gradient_flatten,@object # @__func__.gimp_gradient_flatten
.L__func__.gimp_gradient_flatten:
	.asciz	"gimp_gradient_flatten"
	.size	.L__func__.gimp_gradient_flatten, 22

	.type	.L__func__.gimp_gradient_segment_free,@object # @__func__.gimp_gradient_segment_free
.L__func__.gimp_gradient_segment_free:
	.asciz	"gimp_gradient_segment_free"
	.size	.L__func__.gimp_gradient_segment_free, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"seg != NULL"
	.size	.L.str.12, 12

	.type	.L__func__.gimp_gradient_segments_free,@object # @__func__.gimp_gradient_segments_free
.L__func__.gimp_gradient_segments_free:
	.asciz	"gimp_gradient_segments_free"
	.size	.L__func__.gimp_gradient_segments_free, 28

	.type	.L__func__.gimp_gradient_segment_get_nth,@object # @__func__.gimp_gradient_segment_get_nth
.L__func__.gimp_gradient_segment_get_nth:
	.asciz	"gimp_gradient_segment_get_nth"
	.size	.L__func__.gimp_gradient_segment_get_nth, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"index >= 0"
	.size	.L.str.13, 11

	.type	.L__func__.gimp_gradient_segment_split_midpoint,@object # @__func__.gimp_gradient_segment_split_midpoint
.L__func__.gimp_gradient_segment_split_midpoint:
	.asciz	"gimp_gradient_segment_split_midpoint"
	.size	.L__func__.gimp_gradient_segment_split_midpoint, 37

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"lseg != NULL"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"newl != NULL"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"newr != NULL"
	.size	.L.str.16, 13

	.type	.L__func__.gimp_gradient_segment_split_uniform,@object # @__func__.gimp_gradient_segment_split_uniform
.L__func__.gimp_gradient_segment_split_uniform:
	.asciz	"gimp_gradient_segment_split_uniform"
	.size	.L__func__.gimp_gradient_segment_split_uniform, 36

	.type	.L__func__.gimp_gradient_segment_get_left_color,@object # @__func__.gimp_gradient_segment_get_left_color
.L__func__.gimp_gradient_segment_get_left_color:
	.asciz	"gimp_gradient_segment_get_left_color"
	.size	.L__func__.gimp_gradient_segment_get_left_color, 37

	.type	.L__func__.gimp_gradient_segment_set_left_color,@object # @__func__.gimp_gradient_segment_set_left_color
.L__func__.gimp_gradient_segment_set_left_color:
	.asciz	"gimp_gradient_segment_set_left_color"
	.size	.L__func__.gimp_gradient_segment_set_left_color, 37

	.type	.L__func__.gimp_gradient_segment_get_right_color,@object # @__func__.gimp_gradient_segment_get_right_color
.L__func__.gimp_gradient_segment_get_right_color:
	.asciz	"gimp_gradient_segment_get_right_color"
	.size	.L__func__.gimp_gradient_segment_get_right_color, 38

	.type	.L__func__.gimp_gradient_segment_set_right_color,@object # @__func__.gimp_gradient_segment_set_right_color
.L__func__.gimp_gradient_segment_set_right_color:
	.asciz	"gimp_gradient_segment_set_right_color"
	.size	.L__func__.gimp_gradient_segment_set_right_color, 38

	.type	.L__func__.gimp_gradient_segment_get_left_color_type,@object # @__func__.gimp_gradient_segment_get_left_color_type
.L__func__.gimp_gradient_segment_get_left_color_type:
	.asciz	"gimp_gradient_segment_get_left_color_type"
	.size	.L__func__.gimp_gradient_segment_get_left_color_type, 42

	.type	.L__func__.gimp_gradient_segment_set_left_color_type,@object # @__func__.gimp_gradient_segment_set_left_color_type
.L__func__.gimp_gradient_segment_set_left_color_type:
	.asciz	"gimp_gradient_segment_set_left_color_type"
	.size	.L__func__.gimp_gradient_segment_set_left_color_type, 42

	.type	.L__func__.gimp_gradient_segment_get_right_color_type,@object # @__func__.gimp_gradient_segment_get_right_color_type
.L__func__.gimp_gradient_segment_get_right_color_type:
	.asciz	"gimp_gradient_segment_get_right_color_type"
	.size	.L__func__.gimp_gradient_segment_get_right_color_type, 43

	.type	.L__func__.gimp_gradient_segment_set_right_color_type,@object # @__func__.gimp_gradient_segment_set_right_color_type
.L__func__.gimp_gradient_segment_set_right_color_type:
	.asciz	"gimp_gradient_segment_set_right_color_type"
	.size	.L__func__.gimp_gradient_segment_set_right_color_type, 43

	.type	.L__func__.gimp_gradient_segment_get_left_pos,@object # @__func__.gimp_gradient_segment_get_left_pos
.L__func__.gimp_gradient_segment_get_left_pos:
	.asciz	"gimp_gradient_segment_get_left_pos"
	.size	.L__func__.gimp_gradient_segment_get_left_pos, 35

	.type	.L__func__.gimp_gradient_segment_set_left_pos,@object # @__func__.gimp_gradient_segment_set_left_pos
.L__func__.gimp_gradient_segment_set_left_pos:
	.asciz	"gimp_gradient_segment_set_left_pos"
	.size	.L__func__.gimp_gradient_segment_set_left_pos, 35

	.type	.L__func__.gimp_gradient_segment_get_right_pos,@object # @__func__.gimp_gradient_segment_get_right_pos
.L__func__.gimp_gradient_segment_get_right_pos:
	.asciz	"gimp_gradient_segment_get_right_pos"
	.size	.L__func__.gimp_gradient_segment_get_right_pos, 36

	.type	.L__func__.gimp_gradient_segment_set_right_pos,@object # @__func__.gimp_gradient_segment_set_right_pos
.L__func__.gimp_gradient_segment_set_right_pos:
	.asciz	"gimp_gradient_segment_set_right_pos"
	.size	.L__func__.gimp_gradient_segment_set_right_pos, 36

	.type	.L__func__.gimp_gradient_segment_get_middle_pos,@object # @__func__.gimp_gradient_segment_get_middle_pos
.L__func__.gimp_gradient_segment_get_middle_pos:
	.asciz	"gimp_gradient_segment_get_middle_pos"
	.size	.L__func__.gimp_gradient_segment_get_middle_pos, 37

	.type	.L__func__.gimp_gradient_segment_set_middle_pos,@object # @__func__.gimp_gradient_segment_set_middle_pos
.L__func__.gimp_gradient_segment_set_middle_pos:
	.asciz	"gimp_gradient_segment_set_middle_pos"
	.size	.L__func__.gimp_gradient_segment_set_middle_pos, 37

	.type	.L__func__.gimp_gradient_segment_get_blending_function,@object # @__func__.gimp_gradient_segment_get_blending_function
.L__func__.gimp_gradient_segment_get_blending_function:
	.asciz	"gimp_gradient_segment_get_blending_function"
	.size	.L__func__.gimp_gradient_segment_get_blending_function, 44

	.type	.L__func__.gimp_gradient_segment_get_coloring_type,@object # @__func__.gimp_gradient_segment_get_coloring_type
.L__func__.gimp_gradient_segment_get_coloring_type:
	.asciz	"gimp_gradient_segment_get_coloring_type"
	.size	.L__func__.gimp_gradient_segment_get_coloring_type, 40

	.type	.L__func__.gimp_gradient_segment_range_compress,@object # @__func__.gimp_gradient_segment_range_compress
.L__func__.gimp_gradient_segment_range_compress:
	.asciz	"gimp_gradient_segment_range_compress"
	.size	.L__func__.gimp_gradient_segment_range_compress, 37

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"range_l != NULL"
	.size	.L.str.17, 16

	.type	.L__func__.gimp_gradient_segment_range_blend,@object # @__func__.gimp_gradient_segment_range_blend
.L__func__.gimp_gradient_segment_range_blend:
	.asciz	"gimp_gradient_segment_range_blend"
	.size	.L__func__.gimp_gradient_segment_range_blend, 34

	.type	.L__func__.gimp_gradient_segment_range_set_blending_function,@object # @__func__.gimp_gradient_segment_range_set_blending_function
.L__func__.gimp_gradient_segment_range_set_blending_function:
	.asciz	"gimp_gradient_segment_range_set_blending_function"
	.size	.L__func__.gimp_gradient_segment_range_set_blending_function, 50

	.type	.L__func__.gimp_gradient_segment_range_set_coloring_type,@object # @__func__.gimp_gradient_segment_range_set_coloring_type
.L__func__.gimp_gradient_segment_range_set_coloring_type:
	.asciz	"gimp_gradient_segment_range_set_coloring_type"
	.size	.L__func__.gimp_gradient_segment_range_set_coloring_type, 46

	.type	.L__func__.gimp_gradient_segment_range_flip,@object # @__func__.gimp_gradient_segment_range_flip
.L__func__.gimp_gradient_segment_range_flip:
	.asciz	"gimp_gradient_segment_range_flip"
	.size	.L__func__.gimp_gradient_segment_range_flip, 33

	.type	.L__func__.gimp_gradient_segment_range_replicate,@object # @__func__.gimp_gradient_segment_range_replicate
.L__func__.gimp_gradient_segment_range_replicate:
	.asciz	"gimp_gradient_segment_range_replicate"
	.size	.L__func__.gimp_gradient_segment_range_replicate, 38

	.type	.L__func__.gimp_gradient_segment_range_split_midpoint,@object # @__func__.gimp_gradient_segment_range_split_midpoint
.L__func__.gimp_gradient_segment_range_split_midpoint:
	.asciz	"gimp_gradient_segment_range_split_midpoint"
	.size	.L__func__.gimp_gradient_segment_range_split_midpoint, 43

	.type	.L__func__.gimp_gradient_segment_range_split_uniform,@object # @__func__.gimp_gradient_segment_range_split_uniform
.L__func__.gimp_gradient_segment_range_split_uniform:
	.asciz	"gimp_gradient_segment_range_split_uniform"
	.size	.L__func__.gimp_gradient_segment_range_split_uniform, 42

	.type	.L__func__.gimp_gradient_segment_range_delete,@object # @__func__.gimp_gradient_segment_range_delete
.L__func__.gimp_gradient_segment_range_delete:
	.asciz	"gimp_gradient_segment_range_delete"
	.size	.L__func__.gimp_gradient_segment_range_delete, 35

	.type	.L__func__.gimp_gradient_segment_range_recenter_handles,@object # @__func__.gimp_gradient_segment_range_recenter_handles
.L__func__.gimp_gradient_segment_range_recenter_handles:
	.asciz	"gimp_gradient_segment_range_recenter_handles"
	.size	.L__func__.gimp_gradient_segment_range_recenter_handles, 45

	.type	.L__func__.gimp_gradient_segment_range_redistribute_handles,@object # @__func__.gimp_gradient_segment_range_redistribute_handles
.L__func__.gimp_gradient_segment_range_redistribute_handles:
	.asciz	"gimp_gradient_segment_range_redistribute_handles"
	.size	.L__func__.gimp_gradient_segment_range_redistribute_handles, 49

	.type	.L__func__.gimp_gradient_segment_range_move,@object # @__func__.gimp_gradient_segment_range_move
.L__func__.gimp_gradient_segment_range_move:
	.asciz	"gimp_gradient_segment_range_move"
	.size	.L__func__.gimp_gradient_segment_range_move, 33

	.type	gimp_gradient_parent_class,@object # @gimp_gradient_parent_class
	.local	gimp_gradient_parent_class
	.comm	gimp_gradient_parent_class,8,8
	.type	GimpGradient_private_offset,@object # @GimpGradient_private_offset
	.local	GimpGradient_private_offset
	.comm	GimpGradient_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-gradient"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	".ggr"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s: no matching segment for position %0.15f"
	.size	.L.str.20, 44

	.type	.L__func__.gimp_gradient_get_segment_at_internal,@object # @__func__.gimp_gradient_get_segment_at_internal
.L__func__.gimp_gradient_get_segment_at_internal:
	.asciz	"gimp_gradient_get_segment_at_internal"
	.size	.L__func__.gimp_gradient_get_segment_at_internal, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
