	.text
	.file	"gimppaintcore.bc"
	.globl	gimp_paint_core_get_type
	.align	16, 0x90
	.type	gimp_paint_core_get_type,@function
gimp_paint_core_get_type:               # @gimp_paint_core_get_type
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
	movq	gimp_paint_core_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_paint_core_get_type.g_define_type_id__volatile, %rax
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
	movl	$216, %edx
	movabsq	$gimp_paint_core_class_intern_init, %rdi
	movl	$352, %r8d              # imm = 0x160
	movabsq	$gimp_paint_core_init, %rcx
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
	movabsq	$gimp_paint_core_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_paint_core_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_core_get_type, .Lfunc_end0-gimp_paint_core_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_class_intern_init,@function
gimp_paint_core_class_intern_init:      # @gimp_paint_core_class_intern_init
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
	movq	%rax, gimp_paint_core_parent_class
	cmpl	$0, GimpPaintCore_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaintCore_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_paint_core_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paint_core_class_intern_init, .Lfunc_end1-gimp_paint_core_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_init,@function
gimp_paint_core_init:                   # @gimp_paint_core_init
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	global_core_ID, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, global_core_ID
	movq	-8(%rbp), %rdi
	movl	%eax, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 256(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 264(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 272(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 276(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 280(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 284(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 288(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 296(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 304(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 312(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 320(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 328(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 336(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paint_core_init, .Lfunc_end2-gimp_paint_core_init
	.cfi_endproc

	.globl	gimp_paint_core_paint
	.align	16, 0x90
	.type	gimp_paint_core_paint,@function
gimp_paint_core_paint:                  # @gimp_paint_core_paint
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_paint, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_45
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_paint, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_45
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_27
# BB#26:                                # %if.then.44
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_paint, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_45
.LBB3_28:                               # %if.end.46
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.47
	jmp	.LBB3_30
.LBB3_30:                               # %do.body.48
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_32
# BB#31:                                # %if.then.57
	movl	$0, -108(%rbp)
	jmp	.LBB3_37
.LBB3_32:                               # %if.else.58
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_35
# BB#33:                                # %land.lhs.true.61
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_35
# BB#34:                                # %if.then.65
	movl	$1, -108(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.66
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_36:                               # %if.end.68
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.69
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_39
# BB#38:                                # %if.then.72
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_paint, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_45
.LBB3_40:                               # %if.end.74
	jmp	.LBB3_41
.LBB3_41:                               # %do.end.75
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB3_45
# BB#42:                                # %if.then.79
	cmpl	$1, -28(%rbp)
	jne	.LBB3_44
# BB#43:                                # %if.then.81
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 240(%rax)
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 248(%rax)
.LBB3_44:                               # %if.end.86
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	addq	$112, %rcx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	*%rax
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
.LBB3_45:                               # %if.end.88
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paint_core_paint, .Lfunc_end3-gimp_paint_core_paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4526534890170089472    # double -1.0E+6
	.text
	.globl	gimp_paint_core_start
	.align	16, 0x90
	.type	gimp_paint_core_start,@function
gimp_paint_core_start:                  # @gimp_paint_core_start
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_start, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_start, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_27
# BB#26:                                # %if.then.44
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_start, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_28:                               # %if.end.46
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.47
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_32
# BB#31:                                # %if.then.57
	movl	$0, -124(%rbp)
	jmp	.LBB4_37
.LBB4_32:                               # %if.else.58
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_35
# BB#33:                                # %land.lhs.true.61
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_35
# BB#34:                                # %if.then.65
	movl	$1, -124(%rbp)
	jmp	.LBB4_36
.LBB4_35:                               # %if.else.66
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_36:                               # %if.end.68
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.69
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_39
# BB#38:                                # %if.then.72
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_start, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_40:                               # %if.end.74
	jmp	.LBB4_41
.LBB4_41:                               # %do.end.75
	jmp	.LBB4_42
.LBB4_42:                               # %do.body.76
	cmpq	$0, -40(%rbp)
	je	.LBB4_44
# BB#43:                                # %if.then.78
	jmp	.LBB4_45
.LBB4_44:                               # %if.else.79
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_start, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_45:                               # %if.end.80
	jmp	.LBB4_46
.LBB4_46:                               # %do.end.81
	jmp	.LBB4_47
.LBB4_47:                               # %do.body.82
	cmpq	$0, -48(%rbp)
	je	.LBB4_49
# BB#48:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_50
.LBB4_49:                               # %if.then.85
	jmp	.LBB4_51
.LBB4_50:                               # %if.else.86
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_start, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_51:                               # %if.end.87
	jmp	.LBB4_52
.LBB4_52:                               # %do.end.88
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB4_54
# BB#53:                                # %if.then.92
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	callq	g_array_free
	movq	-16(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB4_54:                               # %if.end.96
	movl	$1, %eax
	movl	$64, %edx
	movl	$2000, %ecx             # imm = 0x7D0
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_sized_new
	movl	$64, %ecx
	movl	%ecx, %r8d
	movq	-16(%rbp), %r9
	movq	%rax, 344(%r9)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %r9
	addq	$176, %r9
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r8, %rdx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	$112, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB4_56
# BB#55:                                # %if.then.102
	movl	$0, -4(%rbp)
	jmp	.LBB4_65
.LBB4_56:                               # %if.end.103
	movq	-16(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB4_58
# BB#57:                                # %if.then.105
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdi
	callq	tile_manager_unref
.LBB4_58:                               # %if.end.107
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-24(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-188(%rbp), %edi        # 4-byte Reload
	movl	-192(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-16(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB4_60
# BB#59:                                # %if.then.114
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	tile_manager_unref
.LBB4_60:                               # %if.end.116
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB4_62
# BB#61:                                # %if.then.119
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	tile_manager_width
	movq	-152(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movq	-152(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	tile_manager_bpp
	movl	-204(%rbp), %edi        # 4-byte Reload
	movl	-208(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-16(%rbp), %rcx
	movq	%rax, 304(%rcx)
.LBB4_62:                               # %if.end.133
	movq	-16(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB4_64
# BB#63:                                # %if.then.135
	movq	-16(%rbp), %rax
	movq	312(%rax), %rdi
	callq	tile_manager_unref
.LBB4_64:                               # %if.end.137
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	$1, %edx
	movl	-212(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	callq	tile_manager_new
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movq	-16(%rbp), %rax
	cvttsd2si	112(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 280(%rax)
	movq	-16(%rbp), %rax
	movl	%edx, 272(%rax)
	movq	-16(%rbp), %rax
	cvttsd2si	120(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 284(%rax)
	movq	-16(%rbp), %rax
	movl	%edx, 276(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 240(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_freeze
	movl	$1, -4(%rbp)
.LBB4_65:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_paint_core_start, .Lfunc_end4-gimp_paint_core_start
	.cfi_endproc

	.globl	gimp_paint_core_finish
	.align	16, 0x90
	.type	gimp_paint_core_finish,@function
gimp_paint_core_finish:                 # @gimp_paint_core_finish
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_finish, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_39
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_finish, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_39
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_27
# BB#26:                                # %if.then.44
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_finish, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_39
.LBB5_28:                               # %if.end.46
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.47
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB5_31
# BB#30:                                # %if.then.49
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	callq	g_array_free
	movq	-16(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB5_31:                               # %if.end.53
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	272(%rax), %ecx
	je	.LBB5_33
# BB#32:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	276(%rax), %ecx
	jne	.LBB5_34
.LBB5_33:                               # %if.then.59
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_thaw
	jmp	.LBB5_39
.LBB5_34:                               # %if.end.62
	cmpl	$0, -28(%rbp)
	je	.LBB5_36
# BB#35:                                # %if.then.64
	movl	$33, %esi
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	208(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	*%rcx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	272(%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	276(%rcx), %ecx
	movq	-16(%rbp), %r9
	movl	280(%r9), %r10d
	movq	-16(%rbp), %r9
	subl	272(%r9), %r10d
	movq	-16(%rbp), %r9
	movl	284(%r9), %r11d
	movq	-16(%rbp), %r9
	subl	276(%r9), %r11d
	movq	-16(%rbp), %r9
	movq	296(%r9), %r9
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movl	%r11d, %r9d
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$1, 8(%rsp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_push_undo
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB5_36:                               # %if.end.77
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB5_38
# BB#37:                                # %if.then.81
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB5_38:                               # %if.end.84
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_thaw
.LBB5_39:                               # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_paint_core_finish, .Lfunc_end5-gimp_paint_core_finish
	.cfi_endproc

	.globl	gimp_paint_core_cancel
	.align	16, 0x90
	.type	gimp_paint_core_cancel,@function
gimp_paint_core_cancel:                 # @gimp_paint_core_cancel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_cancel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_37
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_cancel, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_37
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.body.39
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_27
# BB#26:                                # %if.then.44
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_cancel, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_37
.LBB6_28:                               # %if.end.46
	jmp	.LBB6_29
.LBB6_29:                               # %do.end.47
	movq	-48(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	272(%rax), %ecx
	je	.LBB6_31
# BB#30:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	284(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	276(%rax), %ecx
	jne	.LBB6_32
.LBB6_31:                               # %if.then.50
	jmp	.LBB6_37
.LBB6_32:                               # %if.end.51
	movq	-48(%rbp), %rax
	movl	272(%rax), %edi
	movq	-48(%rbp), %rax
	movl	276(%rax), %esi
	movq	-48(%rbp), %rax
	movl	280(%rax), %ecx
	movq	-48(%rbp), %rax
	subl	272(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	284(%rax), %edx
	movq	-48(%rbp), %rax
	subl	276(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%edx, -144(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %r8
	leaq	-72(%rbp), %r9
	movl	-132(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-136(%rbp), %r10d       # 4-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movl	%r10d, %esi
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-188(%rbp), %ebx        # 4-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-200(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB6_34
# BB#33:                                # %if.then.67
	movq	-48(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_core_copy_valid_tiles
.LBB6_34:                               # %if.end.69
	movq	-48(%rbp), %rax
	movq	296(%rax), %rdi
	callq	tile_manager_unref
	movq	-48(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-48(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB6_36
# BB#35:                                # %if.then.73
	movq	-48(%rbp), %rax
	movq	304(%rax), %rdi
	callq	tile_manager_unref
	movq	-48(%rbp), %rax
	movq	$0, 304(%rax)
.LBB6_36:                               # %if.end.76
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	callq	gimp_drawable_update
	movq	-56(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_thaw
.LBB6_37:                               # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_paint_core_cancel, .Lfunc_end6-gimp_paint_core_cancel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_copy_valid_tiles,@function
gimp_paint_core_copy_valid_tiles:       # @gimp_paint_core_copy_valid_tiles
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -44(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB7_3:                                # %for.cond.1
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_8
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB7_3 Depth=2
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	tile_manager_map_tile
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
.LBB7_6:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=2
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	$64, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB7_3
.LBB7_8:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_9
.LBB7_9:                                # %for.inc.8
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$64, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB7_1
.LBB7_10:                               # %for.end.12
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_paint_core_copy_valid_tiles, .Lfunc_end7-gimp_paint_core_copy_valid_tiles
	.cfi_endproc

	.globl	gimp_paint_core_cleanup
	.align	16, 0x90
	.type	gimp_paint_core_cleanup,@function
gimp_paint_core_cleanup:                # @gimp_paint_core_cleanup
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
	callq	gimp_paint_core_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_cleanup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
.LBB8_14:                               # %if.end.15
	movq	-8(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB8_16
# BB#15:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
.LBB8_16:                               # %if.end.20
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB8_18
# BB#17:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rax
	movq	$0, 312(%rax)
.LBB8_18:                               # %if.end.25
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB8_20
# BB#19:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	callq	temp_buf_free
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
.LBB8_20:                               # %if.end.30
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB8_22
# BB#21:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	temp_buf_free
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
.LBB8_22:                               # %if.end.35
	movq	-8(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB8_24
# BB#23:                                # %if.then.37
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	temp_buf_free
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
.LBB8_24:                               # %if.end.40
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_paint_core_cleanup, .Lfunc_end8-gimp_paint_core_cleanup
	.cfi_endproc

	.globl	gimp_paint_core_interpolate
	.align	16, 0x90
	.type	gimp_paint_core_interpolate,@function
gimp_paint_core_interpolate:            # @gimp_paint_core_interpolate
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_interpolate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_47
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_interpolate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_47
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_27
# BB#26:                                # %if.then.44
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_interpolate, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_47
.LBB9_28:                               # %if.end.46
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.47
	jmp	.LBB9_30
.LBB9_30:                               # %do.body.48
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_32
# BB#31:                                # %if.then.57
	movl	$0, -108(%rbp)
	jmp	.LBB9_37
.LBB9_32:                               # %if.else.58
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_35
# BB#33:                                # %land.lhs.true.61
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_35
# BB#34:                                # %if.then.65
	movl	$1, -108(%rbp)
	jmp	.LBB9_36
.LBB9_35:                               # %if.else.66
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB9_36:                               # %if.end.68
	jmp	.LBB9_37
.LBB9_37:                               # %if.end.69
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.72
	jmp	.LBB9_40
.LBB9_39:                               # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_interpolate, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_47
.LBB9_40:                               # %if.end.74
	jmp	.LBB9_41
.LBB9_41:                               # %do.end.75
	jmp	.LBB9_42
.LBB9_42:                               # %do.body.76
	cmpq	$0, -32(%rbp)
	je	.LBB9_44
# BB#43:                                # %if.then.78
	jmp	.LBB9_45
.LBB9_44:                               # %if.else.79
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_interpolate, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_47
.LBB9_45:                               # %if.end.80
	jmp	.LBB9_46
.LBB9_46:                               # %do.end.81
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$112, %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	192(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	*%r8
.LBB9_47:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_paint_core_interpolate, .Lfunc_end9-gimp_paint_core_interpolate
	.cfi_endproc

	.globl	gimp_paint_core_set_current_coords
	.align	16, 0x90
	.type	gimp_paint_core_set_current_coords,@function
gimp_paint_core_set_current_coords:     # @gimp_paint_core_set_current_coords
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_set_current_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_set_current_coords, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$112, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB10_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_paint_core_set_current_coords, .Lfunc_end10-gimp_paint_core_set_current_coords
	.cfi_endproc

	.globl	gimp_paint_core_get_current_coords
	.align	16, 0x90
	.type	gimp_paint_core_get_current_coords,@function
gimp_paint_core_get_current_coords:     # @gimp_paint_core_get_current_coords
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_current_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_18
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_current_coords, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_18
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	movl	$64, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	addq	$112, %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB11_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_paint_core_get_current_coords, .Lfunc_end11-gimp_paint_core_get_current_coords
	.cfi_endproc

	.globl	gimp_paint_core_set_last_coords
	.align	16, 0x90
	.type	gimp_paint_core_set_last_coords,@function
gimp_paint_core_set_last_coords:        # @gimp_paint_core_set_last_coords
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_set_last_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_set_last_coords, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$176, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB12_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_paint_core_set_last_coords, .Lfunc_end12-gimp_paint_core_set_last_coords
	.cfi_endproc

	.globl	gimp_paint_core_get_last_coords
	.align	16, 0x90
	.type	gimp_paint_core_get_last_coords,@function
gimp_paint_core_get_last_coords:        # @gimp_paint_core_get_last_coords
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_last_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_18
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_last_coords, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_18
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	movl	$64, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB13_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_paint_core_get_last_coords, .Lfunc_end13-gimp_paint_core_get_last_coords
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_paint_core_round_line
	.align	16, 0x90
	.type	gimp_paint_core_round_line,@function
gimp_paint_core_round_line:             # @gimp_paint_core_round_line
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_round_line, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_28
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_round_line, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_28
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_paint_options_get_brush_mode
	cmpl	$0, %eax
	jne	.LBB14_26
# BB#25:                                # %if.then.41
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	176(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 176(%rax)
	movq	-8(%rbp), %rax
	movsd	184(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 184(%rax)
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 120(%rax)
.LBB14_26:                              # %if.end.61
	cmpl	$0, -20(%rbp)
	je	.LBB14_28
# BB#27:                                # %if.then.63
	movl	$12, %edx
	movq	-8(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	184(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movq	-8(%rbp), %rcx
	addq	$112, %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_constrain_line
.LBB14_28:                              # %if.end.72
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_paint_core_round_line, .Lfunc_end14-gimp_paint_core_round_line
	.cfi_endproc

	.globl	gimp_paint_core_get_paint_area
	.align	16, 0x90
	.type	gimp_paint_core_get_paint_area,@function
gimp_paint_core_get_paint_area:         # @gimp_paint_core_get_paint_area
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
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_paint_area, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_47
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_paint_area, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_47
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_27
# BB#26:                                # %if.then.44
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_paint_area, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_47
.LBB15_28:                              # %if.end.46
	jmp	.LBB15_29
.LBB15_29:                              # %do.end.47
	jmp	.LBB15_30
.LBB15_30:                              # %do.body.48
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB15_32
# BB#31:                                # %if.then.57
	movl	$0, -108(%rbp)
	jmp	.LBB15_37
.LBB15_32:                              # %if.else.58
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_35
# BB#33:                                # %land.lhs.true.61
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB15_35
# BB#34:                                # %if.then.65
	movl	$1, -108(%rbp)
	jmp	.LBB15_36
.LBB15_35:                              # %if.else.66
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB15_36:                              # %if.end.68
	jmp	.LBB15_37
.LBB15_37:                              # %if.end.69
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB15_39
# BB#38:                                # %if.then.72
	jmp	.LBB15_40
.LBB15_39:                              # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_paint_area, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_47
.LBB15_40:                              # %if.end.74
	jmp	.LBB15_41
.LBB15_41:                              # %do.end.75
	jmp	.LBB15_42
.LBB15_42:                              # %do.body.76
	cmpq	$0, -40(%rbp)
	je	.LBB15_44
# BB#43:                                # %if.then.78
	jmp	.LBB15_45
.LBB15_44:                              # %if.else.79
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_paint_area, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_47
.LBB15_45:                              # %if.end.80
	jmp	.LBB15_46
.LBB15_46:                              # %do.end.81
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB15_47:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_paint_core_get_paint_area, .Lfunc_end15-gimp_paint_core_get_paint_area
	.cfi_endproc

	.globl	gimp_paint_core_get_orig_image
	.align	16, 0x90
	.type	gimp_paint_core_get_orig_image,@function
gimp_paint_core_get_orig_image:         # @gimp_paint_core_get_orig_image
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp57:
	.cfi_offset %rbx, -48
.Ltmp58:
	.cfi_offset %r12, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -276(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -276(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_orig_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB16_42
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -300(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -300(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_orig_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB16_42
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	movq	-48(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB16_27
# BB#26:                                # %if.then.41
	jmp	.LBB16_28
.LBB16_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_orig_image, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB16_42
.LBB16_28:                              # %if.end.43
	jmp	.LBB16_29
.LBB16_29:                              # %do.end.44
	movq	-48(%rbp), %rax
	movq	320(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_bytes
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	temp_buf_resize
	movq	-48(%rbp), %rdi
	movq	%rax, 320(%rdi)
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -224(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %r10
	leaq	-72(%rbp), %r11
	movl	%eax, -228(%rbp)
	movl	-60(%rbp), %eax
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-224(%rbp), %ebx
	movl	-228(%rbp), %r14d
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	%r8d, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-348(%rbp), %r8d        # 4-byte Reload
	movl	-348(%rbp), %r9d        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	-344(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-336(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_rectangle_intersect
	movq	-56(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-356(%rbp), %ebx        # 4-byte Reload
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	movl	%ebx, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-200(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	320(%rax), %rsi
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	subl	12(%rax), %ecx
	movl	-64(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	subl	16(%rax), %edx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-364(%rbp), %ecx        # 4-byte Reload
	callq	pixel_region_init_temp_buf
	movl	$2, %edi
	leaq	-136(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -256(%rbp)
.LBB16_30:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_35 Depth 2
	cmpq	$0, -256(%rbp)
	je	.LBB16_41
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB16_30 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	296(%rcx), %rdi
	movl	-100(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	je	.LBB16_33
# BB#32:                                # %if.then.70
                                        #   in Loop: Header=BB16_30 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, -212(%rbp)
	movq	-48(%rbp), %rax
	movq	296(%rax), %rdi
	movl	-100(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -240(%rbp)
	jmp	.LBB16_34
.LBB16_33:                              # %if.else.78
                                        #   in Loop: Header=BB16_30 Depth=1
	movl	$0, -212(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB16_34:                              # %if.end.79
                                        #   in Loop: Header=BB16_30 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-92(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movl	%ecx, -220(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -216(%rbp)
.LBB16_35:                              # %while.cond
                                        #   Parent Loop BB16_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -216(%rbp)
	cmpl	$0, %eax
	je	.LBB16_37
# BB#36:                                # %while.body
                                        #   in Loop: Header=BB16_35 Depth=2
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %rsi
	movslq	-220(%rbp), %rdx
	callq	memcpy
	movl	-104(%rbp), %eax
	movq	-240(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -240(%rbp)
	movl	-168(%rbp), %eax
	movq	-248(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -248(%rbp)
	jmp	.LBB16_35
.LBB16_37:                              # %while.end
                                        #   in Loop: Header=BB16_30 Depth=1
	cmpl	$0, -212(%rbp)
	je	.LBB16_39
# BB#38:                                # %if.then.87
                                        #   in Loop: Header=BB16_30 Depth=1
	xorl	%esi, %esi
	movq	-208(%rbp), %rdi
	callq	tile_release
.LBB16_39:                              # %if.end.88
                                        #   in Loop: Header=BB16_30 Depth=1
	jmp	.LBB16_40
.LBB16_40:                              # %for.inc
                                        #   in Loop: Header=BB16_30 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -256(%rbp)
	jmp	.LBB16_30
.LBB16_41:                              # %for.end
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB16_42:                              # %return
	movq	-40(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_paint_core_get_orig_image, .Lfunc_end16-gimp_paint_core_get_orig_image
	.cfi_endproc

	.globl	gimp_paint_core_get_orig_proj
	.align	16, 0x90
	.type	gimp_paint_core_get_orig_proj,@function
gimp_paint_core_get_orig_proj:          # @gimp_paint_core_get_orig_proj
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$368, %rsp              # imm = 0x170
.Ltmp64:
	.cfi_offset %rbx, -48
.Ltmp65:
	.cfi_offset %r12, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -284(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -284(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -284(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_orig_proj, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB17_42
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -308(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -308(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_orig_proj, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB17_42
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.39
	movq	-48(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB17_27
# BB#26:                                # %if.then.41
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_get_orig_proj, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB17_42
.LBB17_28:                              # %if.end.43
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.44
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_pickable_get_bytes
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	temp_buf_resize
	movq	-48(%rbp), %rdi
	movq	%rax, 328(%rdi)
	movq	-56(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -232(%rbp)
	movq	-80(%rbp), %rdi
	callq	tile_manager_height
	xorl	%ecx, %ecx
	leaq	-60(%rbp), %rdi
	leaq	-64(%rbp), %r10
	leaq	-68(%rbp), %r11
	leaq	-72(%rbp), %rbx
	movl	%eax, -236(%rbp)
	movl	-60(%rbp), %eax
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %r8d
	movl	-232(%rbp), %r9d
	movl	-236(%rbp), %r14d
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-332(%rbp), %r8d        # 4-byte Reload
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%r9d, -336(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-336(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	-328(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	gimp_rectangle_intersect
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %r14d
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r14d, %r9d
	movl	$0, (%rsp)
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-208(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	328(%rsi), %rsi
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %r10
	movq	328(%r10), %r10
	subl	12(%r10), %eax
	movl	-64(%rbp), %ecx
	movq	-48(%rbp), %r10
	movq	328(%r10), %r10
	subl	16(%r10), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	%eax, %edx
	callq	pixel_region_init_temp_buf
	movl	$2, %edi
	leaq	-144(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -264(%rbp)
.LBB17_30:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_35 Depth 2
	cmpq	$0, -264(%rbp)
	je	.LBB17_41
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB17_30 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	304(%rcx), %rdi
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	je	.LBB17_33
# BB#32:                                # %if.then.66
                                        #   in Loop: Header=BB17_30 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, -220(%rbp)
	movq	-48(%rbp), %rax
	movq	304(%rax), %rdi
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -248(%rbp)
	jmp	.LBB17_34
.LBB17_33:                              # %if.else.74
                                        #   in Loop: Header=BB17_30 Depth=1
	movl	$0, -220(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB17_34:                              # %if.end.75
                                        #   in Loop: Header=BB17_30 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-100(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movl	%ecx, -228(%rbp)
	movl	-96(%rbp), %ecx
	movl	%ecx, -224(%rbp)
.LBB17_35:                              # %while.cond
                                        #   Parent Loop BB17_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -224(%rbp)
	cmpl	$0, %eax
	je	.LBB17_37
# BB#36:                                # %while.body
                                        #   in Loop: Header=BB17_35 Depth=2
	movq	-256(%rbp), %rdi
	movq	-248(%rbp), %rsi
	movslq	-228(%rbp), %rdx
	callq	memcpy
	movl	-112(%rbp), %eax
	movq	-248(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -248(%rbp)
	movl	-176(%rbp), %eax
	movq	-256(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -256(%rbp)
	jmp	.LBB17_35
.LBB17_37:                              # %while.end
                                        #   in Loop: Header=BB17_30 Depth=1
	cmpl	$0, -220(%rbp)
	je	.LBB17_39
# BB#38:                                # %if.then.83
                                        #   in Loop: Header=BB17_30 Depth=1
	xorl	%esi, %esi
	movq	-216(%rbp), %rdi
	callq	tile_release
.LBB17_39:                              # %if.end.84
                                        #   in Loop: Header=BB17_30 Depth=1
	jmp	.LBB17_40
.LBB17_40:                              # %for.inc
                                        #   in Loop: Header=BB17_30 Depth=1
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -264(%rbp)
	jmp	.LBB17_30
.LBB17_41:                              # %for.end
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB17_42:                              # %return
	movq	-40(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_paint_core_get_orig_proj, .Lfunc_end17-gimp_paint_core_get_orig_proj
	.cfi_endproc

	.globl	gimp_paint_core_paste
	.align	16, 0x90
	.type	gimp_paint_core_paste,@function
gimp_paint_core_paste:                  # @gimp_paint_core_paste
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp71:
	.cfi_offset %rbx, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	336(%rdx), %rdx
	movl	12(%rdx), %edx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %r8d
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r9d
	callq	gimp_paint_core_validate_undo_tiles
	movq	-32(%rbp), %rax
	cmpl	$0, 288(%rax)
	je	.LBB18_4
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %ecx
	addl	-164(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %r8d
	addl	-168(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r9d
	movq	-32(%rbp), %rax
	movq	304(%rax), %rdi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movq	-32(%rbp), %rsi
	movq	304(%rsi), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	xorl	%ecx, %ecx
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdi
	leaq	-180(%rbp), %r10
	leaq	-184(%rbp), %r11
	movl	-204(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-208(%rbp), %r8d        # 4-byte Reload
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	-216(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movl	-244(%rbp), %r9d        # 4-byte Reload
	movl	-220(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-240(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-232(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB18_3
# BB#2:                                 # %if.then.25
	movq	-32(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %ecx
	movl	-180(%rbp), %r8d
	movl	-184(%rbp), %r9d
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_core_validate_saved_proj_tiles
.LBB18_3:                               # %if.end
	jmp	.LBB18_4
.LBB18_4:                               # %if.end.28
	cmpl	$0, -72(%rbp)
	jne	.LBB18_8
# BB#5:                                 # %if.then.29
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	312(%rcx), %rax
	je	.LBB18_7
# BB#6:                                 # %if.then.31
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %esi
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r8d
	callq	gimp_paint_core_validate_canvas_tiles
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	paint_mask_to_canvas_tiles
.LBB18_7:                               # %if.end.40
	movq	-32(%rbp), %rdi
	callq	canvas_tiles_to_canvas_buf
	movq	-32(%rbp), %rdi
	movq	296(%rdi), %rdi
	movq	%rdi, -80(%rbp)
	jmp	.LBB18_9
.LBB18_8:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	paint_mask_to_canvas_buf
.LBB18_9:                               # %if.end.41
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	4(%rcx), %r8d
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-144(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %r8d
	movq	-80(%rbp), %r9
	movq	-32(%rbp), %r10
	movq	336(%r10), %r10
	movl	12(%r10), %eax
	movq	-32(%rbp), %r10
	movq	336(%r10), %r10
	movl	16(%r10), %r11d
	movq	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-32(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB18_11
# BB#10:                                # %cond.true
	movq	-32(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB18_12
.LBB18_11:                              # %cond.false
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB18_12:                              # %cond.end
	movl	-268(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-32(%rbp), %rcx
	movl	276(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB18_14
# BB#13:                                # %cond.true.61
	movq	-32(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false.63
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
.LBB18_15:                              # %cond.end.66
	movl	-272(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 276(%rcx)
	movq	-32(%rbp), %rcx
	movl	280(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	12(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	addl	4(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB18_17
# BB#16:                                # %cond.true.75
	movq	-32(%rbp), %rax
	movl	280(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB18_18
.LBB18_17:                              # %cond.false.77
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	addl	4(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB18_18:                              # %cond.end.83
	movl	-276(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-32(%rbp), %rcx
	movl	284(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	addl	8(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB18_20
# BB#19:                                # %cond.true.92
	movq	-32(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB18_21
.LBB18_20:                              # %cond.false.94
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
.LBB18_21:                              # %cond.end.100
	movl	-280(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 284(%rcx)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	12(%rcx), %esi
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	4(%rcx), %ecx
	movq	-32(%rbp), %r8
	movq	336(%r8), %r8
	movl	8(%r8), %r8d
	callq	gimp_drawable_update
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_paint_core_paste, .Lfunc_end18-gimp_paint_core_paste
	.cfi_endproc

	.globl	gimp_paint_core_validate_undo_tiles
	.align	16, 0x90
	.type	gimp_paint_core_validate_undo_tiles,@function
gimp_paint_core_validate_undo_tiles:    # @gimp_paint_core_validate_undo_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_undo_tiles, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_39
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB19_20
.LBB19_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB19_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB19_19:                              # %if.end.31
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.35
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_undo_tiles, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_39
.LBB19_23:                              # %if.end.37
	jmp	.LBB19_24
.LBB19_24:                              # %do.end.38
	jmp	.LBB19_25
.LBB19_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB19_27
# BB#26:                                # %if.then.41
	jmp	.LBB19_28
.LBB19_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_undo_tiles, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_39
.LBB19_28:                              # %if.end.43
	jmp	.LBB19_29
.LBB19_29:                              # %do.end.44
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB19_30:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_32 Depth 2
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB19_39
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB19_30 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB19_32:                              # %for.cond.46
                                        #   Parent Loop BB19_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB19_37
# BB#33:                                # %for.body.49
                                        #   in Loop: Header=BB19_32 Depth=2
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	296(%rcx), %rdi
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	jne	.LBB19_35
# BB#34:                                # %if.then.55
                                        #   in Loop: Header=BB19_32 Depth=2
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	callq	tile_manager_get_tile
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-104(%rbp), %rcx
	callq	tile_manager_map_tile
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	callq	tile_release
.LBB19_35:                              # %if.end.60
                                        #   in Loop: Header=BB19_32 Depth=2
	jmp	.LBB19_36
.LBB19_36:                              # %for.inc
                                        #   in Loop: Header=BB19_32 Depth=2
	movl	$64, %eax
	movl	-40(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB19_32
.LBB19_37:                              # %for.end
                                        #   in Loop: Header=BB19_30 Depth=1
	jmp	.LBB19_38
.LBB19_38:                              # %for.inc.62
                                        #   in Loop: Header=BB19_30 Depth=1
	movl	$64, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB19_30
.LBB19_39:                              # %for.end.66
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_paint_core_validate_undo_tiles, .Lfunc_end19-gimp_paint_core_validate_undo_tiles
	.cfi_endproc

	.globl	gimp_paint_core_validate_saved_proj_tiles
	.align	16, 0x90
	.type	gimp_paint_core_validate_saved_proj_tiles,@function
gimp_paint_core_validate_saved_proj_tiles: # @gimp_paint_core_validate_saved_proj_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_saved_proj_tiles, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_39
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB20_19:                              # %if.end.31
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.35
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_saved_proj_tiles, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_39
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.39
	movq	-8(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB20_27
# BB#26:                                # %if.then.41
	jmp	.LBB20_28
.LBB20_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_saved_proj_tiles, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_39
.LBB20_28:                              # %if.end.43
	jmp	.LBB20_29
.LBB20_29:                              # %do.end.44
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB20_30:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_32 Depth 2
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB20_39
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB20_30 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB20_32:                              # %for.cond.46
                                        #   Parent Loop BB20_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB20_37
# BB#33:                                # %for.body.49
                                        #   in Loop: Header=BB20_32 Depth=2
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	304(%rcx), %rdi
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	jne	.LBB20_35
# BB#34:                                # %if.then.55
                                        #   in Loop: Header=BB20_32 Depth=2
	movq	-16(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	callq	tile_manager_get_tile
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-104(%rbp), %rcx
	callq	tile_manager_map_tile
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	callq	tile_release
.LBB20_35:                              # %if.end.60
                                        #   in Loop: Header=BB20_32 Depth=2
	jmp	.LBB20_36
.LBB20_36:                              # %for.inc
                                        #   in Loop: Header=BB20_32 Depth=2
	movl	$64, %eax
	movl	-40(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB20_32
.LBB20_37:                              # %for.end
                                        #   in Loop: Header=BB20_30 Depth=1
	jmp	.LBB20_38
.LBB20_38:                              # %for.inc.62
                                        #   in Loop: Header=BB20_30 Depth=1
	movl	$64, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB20_30
.LBB20_39:                              # %for.end.66
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_paint_core_validate_saved_proj_tiles, .Lfunc_end20-gimp_paint_core_validate_saved_proj_tiles
	.cfi_endproc

	.globl	gimp_paint_core_validate_canvas_tiles
	.align	16, 0x90
	.type	gimp_paint_core_validate_canvas_tiles,@function
gimp_paint_core_validate_canvas_tiles:  # @gimp_paint_core_validate_canvas_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_paint_core_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_canvas_tiles, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_27
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_core_validate_canvas_tiles, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_27
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB21_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_20 Depth 2
	movl	-28(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_27
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB21_18 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB21_20:                              # %for.cond.18
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_25
# BB#21:                                # %for.body.21
                                        #   in Loop: Header=BB21_20 Depth=2
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	312(%rcx), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	jne	.LBB21_23
# BB#22:                                # %if.then.27
                                        #   in Loop: Header=BB21_20 Depth=2
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movq	312(%rcx), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	tile_data_pointer
	movq	-64(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	tile_size
	movl	$1, %esi
	xorl	%ecx, %ecx
	movslq	%eax, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	callq	memset
	movq	-64(%rbp), %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	callq	tile_release
.LBB21_23:                              # %if.end.32
                                        #   in Loop: Header=BB21_20 Depth=2
	jmp	.LBB21_24
.LBB21_24:                              # %for.inc
                                        #   in Loop: Header=BB21_20 Depth=2
	movl	$64, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB21_20
.LBB21_25:                              # %for.end
                                        #   in Loop: Header=BB21_18 Depth=1
	jmp	.LBB21_26
.LBB21_26:                              # %for.inc.34
                                        #   in Loop: Header=BB21_18 Depth=1
	movl	$64, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB21_18
.LBB21_27:                              # %for.end.38
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_paint_core_validate_canvas_tiles, .Lfunc_end21-gimp_paint_core_validate_canvas_tiles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	paint_mask_to_canvas_tiles,@function
paint_mask_to_canvas_tiles:             # @paint_mask_to_canvas_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rdi
	movq	336(%rsi), %rsi
	movl	12(%rsi), %edx
	movl	16(%rsi), %ecx
	movl	4(%rsi), %r8d
	movl	8(%rsi), %r9d
	movq	%rsp, %rsi
	movl	$1, (%rsi)
	leaq	-88(%rbp), %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rdi
	movl	%edi, %ecx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	callq	gimp_airbrush_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB22_7
.LBB22_2:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_5
# BB#3:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB22_5
# BB#4:                                 # %if.then.7
	movl	$1, -108(%rbp)
	jmp	.LBB22_6
.LBB22_5:                               # %if.else.8
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB22_6:                               # %if.end
	jmp	.LBB22_7
.LBB22_7:                               # %if.end.10
	leaq	-88(%rbp), %rdi
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %ecx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	-132(%rbp), %edx        # 4-byte Reload
	callq	combine_mask_and_region
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	paint_mask_to_canvas_tiles, .Lfunc_end22-paint_mask_to_canvas_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	canvas_tiles_to_canvas_buf,@function
canvas_tiles_to_canvas_buf:             # @canvas_tiles_to_canvas_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	-72(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rsi
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movl	4(%rdi), %r8d
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movl	8(%rdi), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movq	312(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %r9d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r10d
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-72(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movl	$255, %edx
	callq	apply_mask_to_region
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	canvas_tiles_to_canvas_buf, .Lfunc_end23-canvas_tiles_to_canvas_buf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	paint_mask_to_canvas_buf,@function
paint_mask_to_canvas_buf:               # @paint_mask_to_canvas_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	336(%rsi), %rsi
	movl	4(%rsi), %r8d
	movl	8(%rsi), %r9d
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	pixel_region_init_temp_buf
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI24_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %edx
	callq	apply_mask_to_region
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	paint_mask_to_canvas_buf, .Lfunc_end24-paint_mask_to_canvas_buf
	.cfi_endproc

	.globl	gimp_paint_core_replace
	.align	16, 0x90
	.type	gimp_paint_core_replace,@function
gimp_paint_core_replace:                # @gimp_paint_core_replace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB25_2
# BB#1:                                 # %if.then
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %r8d
	callq	gimp_paint_core_paste
	jmp	.LBB25_20
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r9d
	callq	gimp_paint_core_validate_undo_tiles
	cmpl	$0, -44(%rbp)
	jne	.LBB25_6
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	312(%rcx), %rax
	je	.LBB25_5
# BB#4:                                 # %if.then.6
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %esi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r8d
	callq	gimp_paint_core_validate_canvas_tiles
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	paint_mask_to_canvas_tiles
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	312(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %r9d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r10d
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
.LBB25_5:                               # %if.end.24
	jmp	.LBB25_7
.LBB25_6:                               # %if.else
	jmp	.LBB25_7
.LBB25_7:                               # %if.end.25
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	4(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-112(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %r10
	movq	336(%r10), %r10
	movl	12(%r10), %r9d
	movq	-8(%rbp), %r10
	movq	336(%r10), %r10
	movl	16(%r10), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_replace_region
	movq	-8(%rbp), %rcx
	movl	272(%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB25_9
# BB#8:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB25_10
.LBB25_9:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB25_10:                              # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-8(%rbp), %rcx
	movl	276(%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB25_12
# BB#11:                                # %cond.true.45
	movq	-8(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB25_13
.LBB25_12:                              # %cond.false.47
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB25_13:                              # %cond.end.50
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 276(%rcx)
	movq	-8(%rbp), %rcx
	movl	280(%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	12(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	addl	4(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB25_15
# BB#14:                                # %cond.true.58
	movq	-8(%rbp), %rax
	movl	280(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB25_16
.LBB25_15:                              # %cond.false.60
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	addl	4(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB25_16:                              # %cond.end.66
	movl	-128(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-8(%rbp), %rcx
	movl	284(%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	addl	8(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB25_18
# BB#17:                                # %cond.true.75
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB25_19
.LBB25_18:                              # %cond.false.77
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
.LBB25_19:                              # %cond.end.83
	movl	-132(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 284(%rcx)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	12(%rcx), %esi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	4(%rcx), %ecx
	movq	-8(%rbp), %r8
	movq	336(%r8), %r8
	movl	8(%r8), %r8d
	callq	gimp_drawable_update
.LBB25_20:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_paint_core_replace, .Lfunc_end25-gimp_paint_core_replace
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4607182418800017408     # double 1
.LCPI26_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI26_2:
	.quad	4611686018427387904     # double 2
.LCPI26_3:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_paint_core_smooth_coords
	.align	16, 0x90
	.type	gimp_paint_core_smooth_coords,@function
gimp_paint_core_smooth_coords:          # @gimp_paint_core_smooth_coords
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	432(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	344(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, 344(%rdx)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_20
.LBB26_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB26_20
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB26_20
# BB#4:                                 # %if.then.4
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	8(%rax), %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-40(%rbp), %rsi
	cmpl	$2, 8(%rsi)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jae	.LBB26_6
# BB#5:                                 # %if.then.7
	jmp	.LBB26_20
.LBB26_6:                               # %if.end.8
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	8(%rax), %ecx
	jae	.LBB26_8
# BB#7:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB26_9
.LBB26_8:                               # %cond.false
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB26_9:                               # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB26_10
	jp	.LBB26_10
	jmp	.LBB26_11
.LBB26_10:                              # %if.then.16
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI26_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movq	-32(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
.LBB26_11:                              # %if.end.20
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB26_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB26_17
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB26_12 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB26_14
	jp	.LBB26_14
	jmp	.LBB26_15
.LBB26_14:                              # %if.then.25
                                        #   in Loop: Header=BB26_12 Depth=1
	movsd	.LCPI26_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI26_3, %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rax
	mulsd	48(%rax), %xmm1
	addsd	-80(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movd	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	mulsd	-80(%rbp), %xmm2
	mulsd	-72(%rbp), %xmm0
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	callq	exp
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
.LBB26_15:                              # %if.end.33
                                        #   in Loop: Header=BB26_12 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	mulsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-24(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB26_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB26_12
.LBB26_17:                              # %for.end
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB26_18
	jp	.LBB26_18
	jmp	.LBB26_19
.LBB26_18:                              # %if.then.44
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
.LBB26_19:                              # %if.end.49
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.50
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_paint_core_smooth_coords, .Lfunc_end26-gimp_paint_core_smooth_coords
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_class_init,@function
gimp_paint_core_class_init:             # @gimp_paint_core_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
.Ltmp101:
	.cfi_offset %rbx, -48
.Ltmp102:
	.cfi_offset %r12, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.13, %rdi
	movabsq	$gimp_paint_core_real_push_undo, %rsi
	movabsq	$gimp_paint_core_real_get_paint_area, %rcx
	movabsq	$gimp_paint_core_real_interpolate, %rdx
	movabsq	$gimp_paint_core_real_post_paint, %r8
	movabsq	$gimp_paint_core_real_paint, %r9
	movabsq	$gimp_paint_core_real_pre_paint, %r10
	movabsq	$gimp_paint_core_real_start, %r11
	movabsq	$gimp_paint_core_get_property, %rbx
	movabsq	$gimp_paint_core_set_property, %r14
	movabsq	$gimp_paint_core_finalize, %r15
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%r15, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 160(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 168(%rax)
	movq	-40(%rbp), %rax
	movq	%r9, 176(%rax)
	movq	-40(%rbp), %rax
	movq	%r8, 184(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, 200(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	xorl	%r12d, %r12d
	movl	%r12d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_paint_core_class_init, .Lfunc_end27-gimp_paint_core_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_finalize,@function
gimp_paint_core_finalize:               # @gimp_paint_core_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_paint_core_cleanup
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	callq	g_array_free
	movq	-16(%rbp), %rdi
	movq	$0, 344(%rdi)
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB28_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_core_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_paint_core_finalize, .Lfunc_end28-gimp_paint_core_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_set_property,@function
gimp_paint_core_set_property:           # @gimp_paint_core_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB29_2
	jmp	.LBB29_1
.LBB29_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB29_5
.LBB29_2:                               # %sw.default
	jmp	.LBB29_3
.LBB29_3:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$206, %edx
	movabsq	$.L.str.16, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB29_5
.LBB29_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_paint_core_set_property, .Lfunc_end29-gimp_paint_core_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_get_property,@function
gimp_paint_core_get_property:           # @gimp_paint_core_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB30_2
	jmp	.LBB30_1
.LBB30_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB30_5
.LBB30_2:                               # %sw.default
	jmp	.LBB30_3
.LBB30_3:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$226, %edx
	movabsq	$.L.str.16, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB30_5
.LBB30_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_paint_core_get_property, .Lfunc_end30-gimp_paint_core_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_start,@function
gimp_paint_core_real_start:             # @gimp_paint_core_real_start
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_paint_core_real_start, .Lfunc_end31-gimp_paint_core_real_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_pre_paint,@function
gimp_paint_core_real_pre_paint:         # @gimp_paint_core_real_pre_paint
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_paint_core_real_pre_paint, .Lfunc_end32-gimp_paint_core_real_pre_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_paint,@function
gimp_paint_core_real_paint:             # @gimp_paint_core_real_paint
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_paint_core_real_paint, .Lfunc_end33-gimp_paint_core_real_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_post_paint,@function
gimp_paint_core_real_post_paint:        # @gimp_paint_core_real_post_paint
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_paint_core_real_post_paint, .Lfunc_end34-gimp_paint_core_real_post_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_interpolate,@function
gimp_paint_core_real_interpolate:       # @gimp_paint_core_real_interpolate
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
	subq	$48, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_paint_core_paint
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	addq	$176, %rsi
	movq	-8(%rbp), %rdi
	addq	$112, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_paint_core_real_interpolate, .Lfunc_end35-gimp_paint_core_real_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_get_paint_area,@function
gimp_paint_core_real_get_paint_area:    # @gimp_paint_core_real_get_paint_area
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_paint_core_real_get_paint_area, .Lfunc_end36-gimp_paint_core_real_get_paint_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_core_real_push_undo,@function
gimp_paint_core_real_push_undo:         # @gimp_paint_core_real_push_undo
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_undo_get_type
	movl	$75, %edx
	xorl	%r8d, %r8d
	movabsq	$.L.str.17, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_paint_core_real_push_undo, .Lfunc_end37-gimp_paint_core_real_push_undo
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB38_2
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
.LBB38_2:                               # %entry
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
.Lfunc_end38:
	.size	g_warning, .Lfunc_end38-g_warning
	.cfi_endproc

	.type	gimp_paint_core_get_type.g_define_type_id__volatile,@object # @gimp_paint_core_get_type.g_define_type_id__volatile
	.local	gimp_paint_core_get_type.g_define_type_id__volatile
	.comm	gimp_paint_core_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaintCore"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Paint"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_paint_core_paint,@object # @__func__.gimp_paint_core_paint
.L__func__.gimp_paint_core_paint:
	.asciz	"gimp_paint_core_paint"
	.size	.L__func__.gimp_paint_core_paint, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PAINT_CORE (core)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PAINT_OPTIONS (paint_options)"
	.size	.L.str.5, 38

	.type	.L__func__.gimp_paint_core_start,@object # @__func__.gimp_paint_core_start
.L__func__.gimp_paint_core_start:
	.asciz	"gimp_paint_core_start"
	.size	.L__func__.gimp_paint_core_start, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"coords != NULL"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.7, 32

	.type	.L__func__.gimp_paint_core_finish,@object # @__func__.gimp_paint_core_finish
.L__func__.gimp_paint_core_finish:
	.asciz	"gimp_paint_core_finish"
	.size	.L__func__.gimp_paint_core_finish, 23

	.type	.L__func__.gimp_paint_core_cancel,@object # @__func__.gimp_paint_core_cancel
.L__func__.gimp_paint_core_cancel:
	.asciz	"gimp_paint_core_cancel"
	.size	.L__func__.gimp_paint_core_cancel, 23

	.type	.L__func__.gimp_paint_core_cleanup,@object # @__func__.gimp_paint_core_cleanup
.L__func__.gimp_paint_core_cleanup:
	.asciz	"gimp_paint_core_cleanup"
	.size	.L__func__.gimp_paint_core_cleanup, 24

	.type	.L__func__.gimp_paint_core_interpolate,@object # @__func__.gimp_paint_core_interpolate
.L__func__.gimp_paint_core_interpolate:
	.asciz	"gimp_paint_core_interpolate"
	.size	.L__func__.gimp_paint_core_interpolate, 28

	.type	.L__func__.gimp_paint_core_set_current_coords,@object # @__func__.gimp_paint_core_set_current_coords
.L__func__.gimp_paint_core_set_current_coords:
	.asciz	"gimp_paint_core_set_current_coords"
	.size	.L__func__.gimp_paint_core_set_current_coords, 35

	.type	.L__func__.gimp_paint_core_get_current_coords,@object # @__func__.gimp_paint_core_get_current_coords
.L__func__.gimp_paint_core_get_current_coords:
	.asciz	"gimp_paint_core_get_current_coords"
	.size	.L__func__.gimp_paint_core_get_current_coords, 35

	.type	.L__func__.gimp_paint_core_set_last_coords,@object # @__func__.gimp_paint_core_set_last_coords
.L__func__.gimp_paint_core_set_last_coords:
	.asciz	"gimp_paint_core_set_last_coords"
	.size	.L__func__.gimp_paint_core_set_last_coords, 32

	.type	.L__func__.gimp_paint_core_get_last_coords,@object # @__func__.gimp_paint_core_get_last_coords
.L__func__.gimp_paint_core_get_last_coords:
	.asciz	"gimp_paint_core_get_last_coords"
	.size	.L__func__.gimp_paint_core_get_last_coords, 32

	.type	.L__func__.gimp_paint_core_round_line,@object # @__func__.gimp_paint_core_round_line
.L__func__.gimp_paint_core_round_line:
	.asciz	"gimp_paint_core_round_line"
	.size	.L__func__.gimp_paint_core_round_line, 27

	.type	.L__func__.gimp_paint_core_get_paint_area,@object # @__func__.gimp_paint_core_get_paint_area
.L__func__.gimp_paint_core_get_paint_area:
	.asciz	"gimp_paint_core_get_paint_area"
	.size	.L__func__.gimp_paint_core_get_paint_area, 31

	.type	.L__func__.gimp_paint_core_get_orig_image,@object # @__func__.gimp_paint_core_get_orig_image
.L__func__.gimp_paint_core_get_orig_image:
	.asciz	"gimp_paint_core_get_orig_image"
	.size	.L__func__.gimp_paint_core_get_orig_image, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"core->undo_tiles != NULL"
	.size	.L.str.8, 25

	.type	.L__func__.gimp_paint_core_get_orig_proj,@object # @__func__.gimp_paint_core_get_orig_proj
.L__func__.gimp_paint_core_get_orig_proj:
	.asciz	"gimp_paint_core_get_orig_proj"
	.size	.L__func__.gimp_paint_core_get_orig_proj, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_PICKABLE (pickable)"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"core->saved_proj_tiles != NULL"
	.size	.L.str.10, 31

	.type	.L__func__.gimp_paint_core_validate_undo_tiles,@object # @__func__.gimp_paint_core_validate_undo_tiles
.L__func__.gimp_paint_core_validate_undo_tiles:
	.asciz	"gimp_paint_core_validate_undo_tiles"
	.size	.L__func__.gimp_paint_core_validate_undo_tiles, 36

	.type	.L__func__.gimp_paint_core_validate_saved_proj_tiles,@object # @__func__.gimp_paint_core_validate_saved_proj_tiles
.L__func__.gimp_paint_core_validate_saved_proj_tiles:
	.asciz	"gimp_paint_core_validate_saved_proj_tiles"
	.size	.L__func__.gimp_paint_core_validate_saved_proj_tiles, 42

	.type	.L__func__.gimp_paint_core_validate_canvas_tiles,@object # @__func__.gimp_paint_core_validate_canvas_tiles
.L__func__.gimp_paint_core_validate_canvas_tiles:
	.asciz	"gimp_paint_core_validate_canvas_tiles"
	.size	.L__func__.gimp_paint_core_validate_canvas_tiles, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"core->canvas_tiles != NULL"
	.size	.L.str.11, 27

	.type	gimp_paint_core_parent_class,@object # @gimp_paint_core_parent_class
	.local	gimp_paint_core_parent_class
	.comm	gimp_paint_core_parent_class,8,8
	.type	GimpPaintCore_private_offset,@object # @GimpPaintCore_private_offset
	.local	GimpPaintCore_private_offset
	.comm	GimpPaintCore_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-desc"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Paint"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimppaintcore.c"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"paint-core"
	.size	.L.str.17, 11

	.type	global_core_ID,@object  # @global_core_ID
	.data
	.align	4
global_core_ID:
	.long	1                       # 0x1
	.size	global_core_ID, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
