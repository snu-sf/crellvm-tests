	.text
	.file	"gimpperspectiveclone.bc"
	.globl	gimp_perspective_clone_get_type
	.align	16, 0x90
	.type	gimp_perspective_clone_get_type,@function
gimp_perspective_clone_get_type:        # @gimp_perspective_clone_get_type
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
	movq	gimp_perspective_clone_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_perspective_clone_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_clone_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$264, %edx              # imm = 0x108
	movabsq	$gimp_perspective_clone_class_intern_init, %rdi
	movl	$6736, %r8d             # imm = 0x1A50
	movabsq	$gimp_perspective_clone_init, %rcx
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
	movabsq	$gimp_perspective_clone_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_perspective_clone_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_perspective_clone_get_type, .Lfunc_end0-gimp_perspective_clone_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_class_intern_init,@function
gimp_perspective_clone_class_intern_init: # @gimp_perspective_clone_class_intern_init
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
	movq	%rax, gimp_perspective_clone_parent_class
	cmpl	$0, GimpPerspectiveClone_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPerspectiveClone_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_perspective_clone_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_perspective_clone_class_intern_init, .Lfunc_end1-gimp_perspective_clone_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_init,@function
gimp_perspective_clone_init:            # @gimp_perspective_clone_init
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6552(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6560(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6568(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6576(%rdi)
	movq	-8(%rbp), %rdi
	addq	$6584, %rdi             # imm = 0x19B8
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	addq	$6656, %rdi             # imm = 0x1A00
	callq	gimp_matrix3_identity
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_perspective_clone_init, .Lfunc_end2-gimp_perspective_clone_init
	.cfi_endproc

	.globl	gimp_perspective_clone_register
	.align	16, 0x90
	.type	gimp_perspective_clone_register,@function
gimp_perspective_clone_register:        # @gimp_perspective_clone_register
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_perspective_clone_register, .Lfunc_end3-gimp_perspective_clone_register
	.cfi_endproc

	.globl	gimp_perspective_clone_set_transform
	.align	16, 0x90
	.type	gimp_perspective_clone_set_transform,@function
gimp_perspective_clone_set_transform:   # @gimp_perspective_clone_set_transform
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
	callq	gimp_perspective_clone_get_type
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
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_perspective_clone_set_transform, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
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
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_perspective_clone_set_transform, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movl	$72, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$6584, %rdx             # imm = 0x19B8
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rcx
	addq	$6656, %rcx             # imm = 0x1A00
	movq	-8(%rbp), %rdx
	addq	$6584, %rdx             # imm = 0x19B8
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rcx
	addq	$6656, %rcx             # imm = 0x1A00
	movq	%rcx, %rdi
	callq	gimp_matrix3_invert
.LBB4_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_perspective_clone_set_transform, .Lfunc_end4-gimp_perspective_clone_set_transform
	.cfi_endproc

	.globl	gimp_perspective_clone_get_source_point
	.align	16, 0x90
	.type	gimp_perspective_clone_get_source_point,@function
gimp_perspective_clone_get_source_point: # @gimp_perspective_clone_get_source_point
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_perspective_clone_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_perspective_clone_get_source_point, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_perspective_clone_get_source_point, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.19
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.20
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_perspective_clone_get_source_point, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.21
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.22
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$6656, %rax             # imm = 0x1A00
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	movq	-8(%rbp), %rax
	movsd	6552(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	6568(%rax), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rax
	movsd	6560(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	6576(%rax), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	addq	$6584, %rax             # imm = 0x19B8
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
.LBB5_23:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_perspective_clone_get_source_point, .Lfunc_end5-gimp_perspective_clone_get_source_point
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_class_init,@function
gimp_perspective_clone_class_init:      # @gimp_perspective_clone_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_perspective_clone_get_source, %rsi
	movabsq	$gimp_perspective_clone_paint, %rdi
	movabsq	$gimp_perspective_clone_start, %rcx
	movabsq	$gimp_perspective_clone_finalize, %rdx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 248(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_perspective_clone_class_init, .Lfunc_end6-gimp_perspective_clone_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_finalize,@function
gimp_perspective_clone_finalize:        # @gimp_perspective_clone_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 6728(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	6728(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 6728(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_perspective_clone_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_perspective_clone_finalize, .Lfunc_end7-gimp_perspective_clone_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_start,@function
gimp_perspective_clone_start:           # @gimp_perspective_clone_start
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	gimp_perspective_clone_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	movq	-56(%rbp), %rax
	cmpl	$0, 6480(%rax)
	jne	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.end.11
	movl	$1, -4(%rbp)
.LBB8_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_perspective_clone_start, .Lfunc_end8-gimp_perspective_clone_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_paint,@function
gimp_perspective_clone_paint:           # @gimp_perspective_clone_paint
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %r8d
	testl	%r8d, %r8d
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_22
.LBB9_22:                               # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB9_7
	jmp	.LBB9_23
.LBB9_23:                               # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB9_19
	jmp	.LBB9_20
.LBB9_1:                                # %sw.bb
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-32(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 6496(%rcx)
	movq	-32(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 6504(%rcx)
	movq	-56(%rbp), %rcx
	addq	$6656, %rcx             # imm = 0x1A00
	movq	-48(%rbp), %rdx
	movsd	6496(%rdx), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdx
	movsd	6504(%rdx), %xmm1       # xmm1 = mem[0],zero
	movq	-56(%rbp), %rdx
	addq	$6552, %rdx             # imm = 0x1998
	movq	-56(%rbp), %rsi
	addq	$6560, %rsi             # imm = 0x19A0
	movq	%rcx, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	gimp_matrix3_transform_point
	movq	-48(%rbp), %rcx
	movl	$1, 6544(%rcx)
	jmp	.LBB9_6
.LBB9_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpl	$0, 472(%rax)
	jne	.LBB9_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movsd	6496(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6512(%rax)
	movq	-48(%rbp), %rax
	movsd	6504(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6520(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 6544(%rax)
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.12
	jmp	.LBB9_21
.LBB9_7:                                # %sw.bb.13
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB9_9
# BB#8:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6496(%rax)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6504(%rax)
	movq	-56(%rbp), %rax
	addq	$6656, %rax             # imm = 0x1A00
	movq	-48(%rbp), %rcx
	movsd	6496(%rcx), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	6504(%rcx), %xmm1       # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	addq	$6552, %rcx             # imm = 0x1998
	movq	-56(%rbp), %rdx
	addq	$6560, %rdx             # imm = 0x19A0
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-48(%rbp), %rax
	movl	$1, 6544(%rax)
	jmp	.LBB9_18
.LBB9_9:                                # %if.else.27
	movq	-32(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$2, 472(%rax)
	jne	.LBB9_11
# BB#10:                                # %if.then.34
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6528(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6536(%rax)
	jmp	.LBB9_17
.LBB9_11:                               # %if.else.35
	movq	-64(%rbp), %rax
	cmpl	$3, 472(%rax)
	jne	.LBB9_13
# BB#12:                                # %if.then.39
	movq	-48(%rbp), %rax
	movsd	6496(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6528(%rax)
	movq	-48(%rbp), %rax
	movsd	6504(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6536(%rax)
	jmp	.LBB9_16
.LBB9_13:                               # %if.else.47
	movq	-48(%rbp), %rax
	cmpl	$0, 6544(%rax)
	je	.LBB9_15
# BB#14:                                # %if.then.50
	movq	-48(%rbp), %rax
	movsd	6496(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6528(%rax)
	movq	-48(%rbp), %rax
	movsd	6504(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6536(%rax)
	movq	-56(%rbp), %rax
	addq	$6656, %rax             # imm = 0x1A00
	cvtsi2sdl	-68(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	movq	-56(%rbp), %rcx
	addq	$6568, %rcx             # imm = 0x19A8
	movq	-56(%rbp), %rdx
	addq	$6576, %rdx             # imm = 0x19B0
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_matrix3_transform_point
	movq	-48(%rbp), %rax
	movl	$0, 6544(%rax)
.LBB9_15:                               # %if.end.63
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.64
	jmp	.LBB9_17
.LBB9_17:                               # %if.end.65
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_source_core_motion
.LBB9_18:                               # %if.end.66
	jmp	.LBB9_21
.LBB9_19:                               # %sw.bb.67
	jmp	.LBB9_21
.LBB9_20:                               # %sw.default
	jmp	.LBB9_21
.LBB9_21:                               # %sw.epilog
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_perspective_clone_paint, .Lfunc_end9-gimp_perspective_clone_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_get_source,@function
gimp_perspective_clone_get_source:      # @gimp_perspective_clone_get_source
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1000, %rsp             # imm = 0x3E8
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movq	24(%rbp), %r14
	movq	16(%rbp), %r15
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movq	%r15, -96(%rbp)
	movq	%r14, -104(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	%rax, -168(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -176(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -180(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	leaq	-208(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	-96(%rbp), %rax
	movl	12(%rax), %r8d
	movl	%r8d, -184(%rbp)
	movq	-96(%rbp), %rax
	movl	16(%rax), %r8d
	movl	%r8d, -188(%rbp)
	movq	-96(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-96(%rbp), %rax
	addl	4(%rax), %r8d
	movl	%r8d, -192(%rbp)
	movq	-96(%rbp), %rax
	movl	16(%rax), %r8d
	movq	-96(%rbp), %rax
	addl	8(%rax), %r8d
	movl	%r8d, -196(%rbp)
	movq	-144(%rbp), %rdi
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-188(%rbp), %xmm1
	callq	gimp_perspective_clone_get_source_point
	leaq	-224(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	movq	-144(%rbp), %rdi
	cvtsi2sdl	-184(%rbp), %xmm0
	cvtsi2sdl	-196(%rbp), %xmm1
	callq	gimp_perspective_clone_get_source_point
	leaq	-240(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	-144(%rbp), %rdi
	cvtsi2sdl	-192(%rbp), %xmm0
	cvtsi2sdl	-188(%rbp), %xmm1
	callq	gimp_perspective_clone_get_source_point
	leaq	-256(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movq	-144(%rbp), %rdi
	cvtsi2sdl	-192(%rbp), %xmm0
	cvtsi2sdl	-196(%rbp), %xmm1
	callq	gimp_perspective_clone_get_source_point
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_2
# BB#1:                                 # %cond.true
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
.LBB10_3:                               # %cond.end
	movsd	-552(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	jbe	.LBB10_5
# BB#4:                                 # %cond.true.25
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.26
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
.LBB10_6:                               # %cond.end.27
	movsd	-568(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-560(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_11
# BB#7:                                 # %cond.true.31
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_9
# BB#8:                                 # %cond.true.34
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false.35
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
.LBB10_10:                              # %cond.end.36
	movsd	-576(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	jmp	.LBB10_15
.LBB10_11:                              # %cond.false.38
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_13
# BB#12:                                # %cond.true.41
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	jmp	.LBB10_14
.LBB10_13:                              # %cond.false.42
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
.LBB10_14:                              # %cond.end.43
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
.LBB10_15:                              # %cond.end.45
	movsd	-584(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -268(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_17
# BB#16:                                # %cond.true.51
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %cond.false.52
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
.LBB10_18:                              # %cond.end.53
	movsd	-600(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	jbe	.LBB10_20
# BB#19:                                # %cond.true.57
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	jmp	.LBB10_21
.LBB10_20:                              # %cond.false.58
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
.LBB10_21:                              # %cond.end.59
	movsd	-616(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_26
# BB#22:                                # %cond.true.63
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_24
# BB#23:                                # %cond.true.66
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	jmp	.LBB10_25
.LBB10_24:                              # %cond.false.67
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
.LBB10_25:                              # %cond.end.68
	movsd	-624(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	jmp	.LBB10_30
.LBB10_26:                              # %cond.false.70
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_28
# BB#27:                                # %cond.true.73
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
	jmp	.LBB10_29
.LBB10_28:                              # %cond.false.74
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
.LBB10_29:                              # %cond.end.75
	movsd	-640(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
.LBB10_30:                              # %cond.end.77
	movsd	-632(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -272(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB10_32
# BB#31:                                # %cond.true.83
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	jmp	.LBB10_33
.LBB10_32:                              # %cond.false.84
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
.LBB10_33:                              # %cond.end.85
	movsd	-648(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	-256(%rbp), %xmm1
	movsd	%xmm0, -656(%rbp)       # 8-byte Spill
	jbe	.LBB10_35
# BB#34:                                # %cond.true.89
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	jmp	.LBB10_36
.LBB10_35:                              # %cond.false.90
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
.LBB10_36:                              # %cond.end.91
	movsd	-664(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-656(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_41
# BB#37:                                # %cond.true.95
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB10_39
# BB#38:                                # %cond.true.98
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	jmp	.LBB10_40
.LBB10_39:                              # %cond.false.99
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
.LBB10_40:                              # %cond.end.100
	movsd	-672(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
	jmp	.LBB10_45
.LBB10_41:                              # %cond.false.102
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-256(%rbp), %xmm0
	jbe	.LBB10_43
# BB#42:                                # %cond.true.105
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	jmp	.LBB10_44
.LBB10_43:                              # %cond.false.106
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
.LBB10_44:                              # %cond.end.107
	movsd	-688(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
.LBB10_45:                              # %cond.end.109
	movsd	-680(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -276(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-232(%rbp), %xmm0
	jbe	.LBB10_47
# BB#46:                                # %cond.true.115
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -696(%rbp)       # 8-byte Spill
	jmp	.LBB10_48
.LBB10_47:                              # %cond.false.116
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -696(%rbp)       # 8-byte Spill
.LBB10_48:                              # %cond.end.117
	movsd	-696(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	-264(%rbp), %xmm1
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	jbe	.LBB10_50
# BB#49:                                # %cond.true.121
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	jmp	.LBB10_51
.LBB10_50:                              # %cond.false.122
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
.LBB10_51:                              # %cond.end.123
	movsd	-712(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-704(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_56
# BB#52:                                # %cond.true.127
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-232(%rbp), %xmm0
	jbe	.LBB10_54
# BB#53:                                # %cond.true.130
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	jmp	.LBB10_55
.LBB10_54:                              # %cond.false.131
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
.LBB10_55:                              # %cond.end.132
	movsd	-720(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	jmp	.LBB10_60
.LBB10_56:                              # %cond.false.134
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-264(%rbp), %xmm0
	jbe	.LBB10_58
# BB#57:                                # %cond.true.137
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	jmp	.LBB10_59
.LBB10_58:                              # %cond.false.138
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
.LBB10_59:                              # %cond.end.139
	movsd	-736(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
.LBB10_60:                              # %cond.end.141
	movsd	-728(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -280(%rbp)
	movl	-268(%rbp), %eax
	subl	$1, %eax
	movq	-288(%rbp), %rdi
	movl	%eax, -740(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-740(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_62
# BB#61:                                # %cond.true.148
	movq	-288(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jmp	.LBB10_66
.LBB10_62:                              # %cond.false.150
	movl	-268(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB10_64
# BB#63:                                # %cond.true.154
	xorl	%eax, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB10_65
.LBB10_64:                              # %cond.false.155
	movl	-268(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB10_65:                              # %cond.end.157
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	%eax, -744(%rbp)        # 4-byte Spill
.LBB10_66:                              # %cond.end.159
	movl	-744(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	subl	$1, %eax
	movq	-288(%rbp), %rdi
	movl	%eax, -752(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	-752(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_68
# BB#67:                                # %cond.true.165
	movq	-288(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB10_72
.LBB10_68:                              # %cond.false.167
	movl	-272(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB10_70
# BB#69:                                # %cond.true.171
	xorl	%eax, %eax
	movl	%eax, -760(%rbp)        # 4-byte Spill
	jmp	.LBB10_71
.LBB10_70:                              # %cond.false.172
	movl	-272(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -760(%rbp)        # 4-byte Spill
.LBB10_71:                              # %cond.end.174
	movl	-760(%rbp), %eax        # 4-byte Reload
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB10_72:                              # %cond.end.176
	movl	-756(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movq	-288(%rbp), %rdi
	movl	%eax, -764(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-764(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_74
# BB#73:                                # %cond.true.182
	movq	-288(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB10_78
.LBB10_74:                              # %cond.false.184
	movl	-276(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB10_76
# BB#75:                                # %cond.true.188
	xorl	%eax, %eax
	movl	%eax, -772(%rbp)        # 4-byte Spill
	jmp	.LBB10_77
.LBB10_76:                              # %cond.false.189
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -772(%rbp)        # 4-byte Spill
.LBB10_77:                              # %cond.end.191
	movl	-772(%rbp), %eax        # 4-byte Reload
	movl	%eax, -768(%rbp)        # 4-byte Spill
.LBB10_78:                              # %cond.end.193
	movl	-768(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movq	-288(%rbp), %rdi
	movl	%eax, -776(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	-776(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_80
# BB#79:                                # %cond.true.199
	movq	-288(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -780(%rbp)        # 4-byte Spill
	jmp	.LBB10_84
.LBB10_80:                              # %cond.false.201
	movl	-280(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB10_82
# BB#81:                                # %cond.true.205
	xorl	%eax, %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB10_83
.LBB10_82:                              # %cond.false.206
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
.LBB10_83:                              # %cond.end.208
	movl	-784(%rbp), %eax        # 4-byte Reload
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB10_84:                              # %cond.end.210
	movl	-780(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)
	movl	-276(%rbp), %eax
	subl	-268(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB10_86
# BB#85:                                # %lor.lhs.false
	movl	-280(%rbp), %eax
	subl	-272(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB10_87
.LBB10_86:                              # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_175
.LBB10_87:                              # %if.end
	movq	-160(%rbp), %rax
	cmpl	$0, 476(%rax)
	je	.LBB10_89
# BB#88:                                # %land.lhs.true
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB10_91
.LBB10_89:                              # %lor.lhs.false.218
	movq	-160(%rbp), %rax
	cmpl	$0, 476(%rax)
	jne	.LBB10_92
# BB#90:                                # %land.lhs.true.221
	movq	-56(%rbp), %rax
	movq	6488(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB10_92
.LBB10_91:                              # %if.then.224
	leaq	-360(%rbp), %rdi
	xorl	%eax, %eax
	movq	-288(%rbp), %rsi
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	subl	-268(%rbp), %r8d
	movl	-280(%rbp), %r9d
	subl	-272(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -788(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	jmp	.LBB10_96
.LBB10_92:                              # %if.else
	movq	-160(%rbp), %rax
	cmpl	$0, 476(%rax)
	je	.LBB10_94
# BB#93:                                # %if.then.229
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %eax
	subl	-268(%rbp), %eax
	movl	-280(%rbp), %r8d
	subl	-272(%rbp), %r8d
	movl	%r8d, -792(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-792(%rbp), %r9d        # 4-byte Reload
	callq	gimp_paint_core_get_orig_proj
	movq	%rax, -512(%rbp)
	jmp	.LBB10_95
.LBB10_94:                              # %if.else.233
	movq	-152(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-268(%rbp), %edx
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	subl	-268(%rbp), %r8d
	movl	-280(%rbp), %r9d
	subl	-272(%rbp), %r9d
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_core_get_orig_image
	movq	%rax, -512(%rbp)
.LBB10_95:                              # %if.end.239
	leaq	-360(%rbp), %rdi
	xorl	%eax, %eax
	movq	-512(%rbp), %rsi
	movl	-276(%rbp), %ecx
	subl	-268(%rbp), %ecx
	movl	-280(%rbp), %edx
	subl	-272(%rbp), %edx
	movl	%edx, -812(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -816(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-816(%rbp), %r8d        # 4-byte Reload
	movl	-812(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_init_temp_buf
.LBB10_96:                              # %if.end.242
	cmpl	$0, -180(%rbp)
	je	.LBB10_98
# BB#97:                                # %lor.lhs.false.245
	cmpl	$1, -180(%rbp)
	jne	.LBB10_99
.LBB10_98:                              # %cond.true.248
	movl	$1, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB10_106
.LBB10_99:                              # %cond.false.249
	cmpl	$2, -180(%rbp)
	je	.LBB10_101
# BB#100:                               # %lor.lhs.false.252
	cmpl	$3, -180(%rbp)
	jne	.LBB10_102
.LBB10_101:                             # %cond.true.255
	movl	$3, %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
	jmp	.LBB10_105
.LBB10_102:                             # %cond.false.256
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -825(%rbp)         # 1-byte Spill
	je	.LBB10_104
# BB#103:                               # %lor.rhs
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -825(%rbp)         # 1-byte Spill
.LBB10_104:                             # %lor.end
	movb	-825(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -824(%rbp)        # 4-byte Spill
.LBB10_105:                             # %cond.end.262
	movl	-824(%rbp), %eax        # 4-byte Reload
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB10_106:                             # %cond.end.264
	movl	-820(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB10_108
# BB#107:                               # %cond.true.268
	movl	$4, %eax
	movl	%eax, -832(%rbp)        # 4-byte Spill
	jmp	.LBB10_171
.LBB10_108:                             # %cond.false.269
	cmpl	$0, -180(%rbp)
	je	.LBB10_110
# BB#109:                               # %lor.lhs.false.272
	cmpl	$1, -180(%rbp)
	jne	.LBB10_111
.LBB10_110:                             # %cond.true.275
	movl	$1, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	jmp	.LBB10_118
.LBB10_111:                             # %cond.false.276
	cmpl	$2, -180(%rbp)
	je	.LBB10_113
# BB#112:                               # %lor.lhs.false.279
	cmpl	$3, -180(%rbp)
	jne	.LBB10_114
.LBB10_113:                             # %cond.true.282
	movl	$3, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
	jmp	.LBB10_117
.LBB10_114:                             # %cond.false.283
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -841(%rbp)         # 1-byte Spill
	je	.LBB10_116
# BB#115:                               # %lor.rhs.286
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -841(%rbp)         # 1-byte Spill
.LBB10_116:                             # %lor.end.289
	movb	-841(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -840(%rbp)        # 4-byte Spill
.LBB10_117:                             # %cond.end.291
	movl	-840(%rbp), %eax        # 4-byte Reload
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB10_118:                             # %cond.end.293
	movl	-836(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB10_120
# BB#119:                               # %cond.true.297
	movl	$3, %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
	jmp	.LBB10_170
.LBB10_120:                             # %cond.false.298
	cmpl	$0, -180(%rbp)
	je	.LBB10_122
# BB#121:                               # %lor.lhs.false.301
	cmpl	$1, -180(%rbp)
	jne	.LBB10_123
.LBB10_122:                             # %cond.true.304
	movl	$1, %eax
	movl	%eax, -852(%rbp)        # 4-byte Spill
	jmp	.LBB10_130
.LBB10_123:                             # %cond.false.305
	cmpl	$2, -180(%rbp)
	je	.LBB10_125
# BB#124:                               # %lor.lhs.false.308
	cmpl	$3, -180(%rbp)
	jne	.LBB10_126
.LBB10_125:                             # %cond.true.311
	movl	$3, %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB10_129
.LBB10_126:                             # %cond.false.312
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -857(%rbp)         # 1-byte Spill
	je	.LBB10_128
# BB#127:                               # %lor.rhs.315
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -857(%rbp)         # 1-byte Spill
.LBB10_128:                             # %lor.end.318
	movb	-857(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -856(%rbp)        # 4-byte Spill
.LBB10_129:                             # %cond.end.320
	movl	-856(%rbp), %eax        # 4-byte Reload
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB10_130:                             # %cond.end.322
	movl	-852(%rbp), %eax        # 4-byte Reload
	cmpl	$3, %eax
	jne	.LBB10_132
# BB#131:                               # %cond.true.326
	movl	$2, %eax
	movl	%eax, -864(%rbp)        # 4-byte Spill
	jmp	.LBB10_169
.LBB10_132:                             # %cond.false.327
	cmpl	$0, -180(%rbp)
	je	.LBB10_134
# BB#133:                               # %lor.lhs.false.330
	cmpl	$1, -180(%rbp)
	jne	.LBB10_135
.LBB10_134:                             # %cond.true.333
	movl	$1, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jmp	.LBB10_142
.LBB10_135:                             # %cond.false.334
	cmpl	$2, -180(%rbp)
	je	.LBB10_137
# BB#136:                               # %lor.lhs.false.337
	cmpl	$3, -180(%rbp)
	jne	.LBB10_138
.LBB10_137:                             # %cond.true.340
	movl	$3, %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
	jmp	.LBB10_141
.LBB10_138:                             # %cond.false.341
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -873(%rbp)         # 1-byte Spill
	je	.LBB10_140
# BB#139:                               # %lor.rhs.344
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -873(%rbp)         # 1-byte Spill
.LBB10_140:                             # %lor.end.347
	movb	-873(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -872(%rbp)        # 4-byte Spill
.LBB10_141:                             # %cond.end.349
	movl	-872(%rbp), %eax        # 4-byte Reload
	movl	%eax, -868(%rbp)        # 4-byte Spill
.LBB10_142:                             # %cond.end.351
	movl	-868(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB10_144
# BB#143:                               # %cond.true.355
	movl	$1, %eax
	movl	%eax, -880(%rbp)        # 4-byte Spill
	jmp	.LBB10_168
.LBB10_144:                             # %cond.false.356
	cmpl	$0, -180(%rbp)
	je	.LBB10_146
# BB#145:                               # %lor.lhs.false.359
	cmpl	$1, -180(%rbp)
	jne	.LBB10_147
.LBB10_146:                             # %cond.true.362
	movl	$1, %eax
	movl	%eax, -884(%rbp)        # 4-byte Spill
	jmp	.LBB10_154
.LBB10_147:                             # %cond.false.363
	cmpl	$2, -180(%rbp)
	je	.LBB10_149
# BB#148:                               # %lor.lhs.false.366
	cmpl	$3, -180(%rbp)
	jne	.LBB10_150
.LBB10_149:                             # %cond.true.369
	movl	$3, %eax
	movl	%eax, -888(%rbp)        # 4-byte Spill
	jmp	.LBB10_153
.LBB10_150:                             # %cond.false.370
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -889(%rbp)         # 1-byte Spill
	je	.LBB10_152
# BB#151:                               # %lor.rhs.373
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -889(%rbp)         # 1-byte Spill
.LBB10_152:                             # %lor.end.376
	movb	-889(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -888(%rbp)        # 4-byte Spill
.LBB10_153:                             # %cond.end.378
	movl	-888(%rbp), %eax        # 4-byte Reload
	movl	%eax, -884(%rbp)        # 4-byte Spill
.LBB10_154:                             # %cond.end.380
	movl	-884(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	jne	.LBB10_156
# BB#155:                               # %cond.true.384
	movl	$2, %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
	jmp	.LBB10_167
.LBB10_156:                             # %cond.false.385
	cmpl	$0, -180(%rbp)
	je	.LBB10_158
# BB#157:                               # %lor.lhs.false.388
	cmpl	$1, -180(%rbp)
	jne	.LBB10_159
.LBB10_158:                             # %cond.true.391
	movl	$1, %eax
	movl	%eax, -900(%rbp)        # 4-byte Spill
	jmp	.LBB10_166
.LBB10_159:                             # %cond.false.392
	cmpl	$2, -180(%rbp)
	je	.LBB10_161
# BB#160:                               # %lor.lhs.false.395
	cmpl	$3, -180(%rbp)
	jne	.LBB10_162
.LBB10_161:                             # %cond.true.398
	movl	$3, %eax
	movl	%eax, -904(%rbp)        # 4-byte Spill
	jmp	.LBB10_165
.LBB10_162:                             # %cond.false.399
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -905(%rbp)         # 1-byte Spill
	je	.LBB10_164
# BB#163:                               # %lor.rhs.402
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -905(%rbp)         # 1-byte Spill
.LBB10_164:                             # %lor.end.405
	movb	-905(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -904(%rbp)        # 4-byte Spill
.LBB10_165:                             # %cond.end.407
	movl	-904(%rbp), %eax        # 4-byte Reload
	movl	%eax, -900(%rbp)        # 4-byte Spill
.LBB10_166:                             # %cond.end.409
	movl	-900(%rbp), %eax        # 4-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	cmpl	$4, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -896(%rbp)        # 4-byte Spill
.LBB10_167:                             # %cond.end.414
	movl	-896(%rbp), %eax        # 4-byte Reload
	movl	%eax, -880(%rbp)        # 4-byte Spill
.LBB10_168:                             # %cond.end.416
	movl	-880(%rbp), %eax        # 4-byte Reload
	movl	%eax, -864(%rbp)        # 4-byte Spill
.LBB10_169:                             # %cond.end.418
	movl	-864(%rbp), %eax        # 4-byte Reload
	movl	%eax, -848(%rbp)        # 4-byte Spill
.LBB10_170:                             # %cond.end.420
	movl	-848(%rbp), %eax        # 4-byte Reload
	movl	%eax, -832(%rbp)        # 4-byte Spill
.LBB10_171:                             # %cond.end.422
	movl	-832(%rbp), %eax        # 4-byte Reload
	movl	%eax, -500(%rbp)
	movl	-276(%rbp), %eax
	subl	-268(%rbp), %eax
	movl	-280(%rbp), %ecx
	subl	-272(%rbp), %ecx
	movl	-500(%rbp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	tile_manager_new
	leaq	-424(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rsi
	movl	-276(%rbp), %r8d
	subl	-268(%rbp), %r8d
	movl	-280(%rbp), %r9d
	subl	-272(%rbp), %r9d
	movl	%edx, -912(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	-500(%rbp), %ecx
	cmpl	-308(%rbp), %ecx
	jle	.LBB10_173
# BB#172:                               # %if.then.432
	leaq	-360(%rbp), %rdi
	leaq	-424(%rbp), %rsi
	callq	add_alpha_region
	jmp	.LBB10_174
.LBB10_173:                             # %if.else.433
	leaq	-360(%rbp), %rdi
	leaq	-424(%rbp), %rsi
	callq	copy_region
.LBB10_174:                             # %if.end.434
	movq	-144(%rbp), %rax
	movq	6728(%rax), %rdi
	movq	-296(%rbp), %rax
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	tile_manager_bpp
	xorl	%ecx, %ecx
	movl	-192(%rbp), %edx
	subl	-184(%rbp), %edx
	movl	-196(%rbp), %esi
	subl	-188(%rbp), %esi
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -924(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -928(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-928(%rbp), %r8d        # 4-byte Reload
	movl	-924(%rbp), %r9d        # 4-byte Reload
	callq	temp_buf_resize
	leaq	-424(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-144(%rbp), %r10
	movq	%rax, 6728(%r10)
	movq	-144(%rbp), %rax
	movq	6728(%rax), %rsi
	movl	-192(%rbp), %edx
	subl	-184(%rbp), %edx
	movl	-196(%rbp), %r8d
	subl	-188(%rbp), %r8d
	movl	%edx, -932(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-932(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -936(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-936(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_init_temp_buf
	leaq	-496(%rbp), %rsi
	movq	-144(%rbp), %rdi
	callq	gimp_perspective_clone_get_matrix
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-424(%rbp), %r9
	leaq	-496(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-296(%rbp), %r10
	movl	-268(%rbp), %r8d
	movl	-272(%rbp), %r11d
	movl	-184(%rbp), %ebx
	movl	-188(%rbp), %r14d
	movl	-192(%rbp), %r15d
	movl	-196(%rbp), %r12d
	movq	-944(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	%rsi, -968(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -972(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movl	%ecx, -976(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movq	-968(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	$1, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	callq	gimp_transform_region
	movq	-296(%rbp), %rdi
	callq	tile_manager_unref
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	6728(%rax), %rsi
	movl	-192(%rbp), %r8d
	subl	-184(%rbp), %r8d
	movl	-196(%rbp), %r11d
	subl	-188(%rbp), %r11d
	movl	%ecx, %edx
	movl	%r11d, %r9d
	callq	pixel_region_init_temp_buf
	movl	$1, -44(%rbp)
.LBB10_175:                             # %return
	movl	-44(%rbp), %eax
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_perspective_clone_get_source, .Lfunc_end10-gimp_perspective_clone_get_source
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_clone_get_matrix,@function
gimp_perspective_clone_get_matrix:      # @gimp_perspective_clone_get_matrix
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
	subq	$96, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	leaq	-88(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	6568(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	6552(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	6576(%rax), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	6560(%rax), %xmm1
	callq	gimp_matrix3_translate
	leaq	-88(%rbp), %rdi
	movl	$72, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	addq	$6656, %rsi             # imm = 0x1A00
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	memcpy
	movq	-16(%rbp), %rsi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_matrix3_mult
	movq	-8(%rbp), %rax
	addq	$6584, %rax             # imm = 0x19B8
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_matrix3_mult
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_perspective_clone_get_matrix, .Lfunc_end11-gimp_perspective_clone_get_matrix
	.cfi_endproc

	.type	gimp_perspective_clone_get_type.g_define_type_id__volatile,@object # @gimp_perspective_clone_get_type.g_define_type_id__volatile
	.local	gimp_perspective_clone_get_type.g_define_type_id__volatile
	.comm	gimp_perspective_clone_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPerspectiveClone"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-perspective-clone"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Perspective Clone"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-perspective-clone"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-Paint"
	.size	.L.str.4, 11

	.type	.L__func__.gimp_perspective_clone_set_transform,@object # @__func__.gimp_perspective_clone_set_transform
.L__func__.gimp_perspective_clone_set_transform:
	.asciz	"gimp_perspective_clone_set_transform"
	.size	.L__func__.gimp_perspective_clone_set_transform, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PERSPECTIVE_CLONE (clone)"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"transform != NULL"
	.size	.L.str.6, 18

	.type	.L__func__.gimp_perspective_clone_get_source_point,@object # @__func__.gimp_perspective_clone_get_source_point
.L__func__.gimp_perspective_clone_get_source_point:
	.asciz	"gimp_perspective_clone_get_source_point"
	.size	.L__func__.gimp_perspective_clone_get_source_point, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"newx != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"newy != NULL"
	.size	.L.str.8, 13

	.type	gimp_perspective_clone_parent_class,@object # @gimp_perspective_clone_parent_class
	.local	gimp_perspective_clone_parent_class
	.comm	gimp_perspective_clone_parent_class,8,8
	.type	GimpPerspectiveClone_private_offset,@object # @GimpPerspectiveClone_private_offset
	.local	GimpPerspectiveClone_private_offset
	.comm	GimpPerspectiveClone_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Perspective Clone does not operate on indexed layers."
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"src-drawable"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"src-x"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"src-y"
	.size	.L.str.12, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
