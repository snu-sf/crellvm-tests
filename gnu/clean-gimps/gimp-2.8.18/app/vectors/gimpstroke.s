	.text
	.file	"gimpstroke.bc"
	.globl	gimp_stroke_get_type
	.align	16, 0x90
	.type	gimp_stroke_get_type,@function
gimp_stroke_get_type:                   # @gimp_stroke_get_type
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
	movq	gimp_stroke_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_stroke_get_type.g_define_type_id__volatile, %rax
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
	movl	$472, %edx              # imm = 0x1D8
	movabsq	$gimp_stroke_class_intern_init, %rdi
	movl	$56, %r8d
	movabsq	$gimp_stroke_init, %rcx
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
	movabsq	$gimp_stroke_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_stroke_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_stroke_get_type, .Lfunc_end0-gimp_stroke_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_class_intern_init,@function
gimp_stroke_class_intern_init:          # @gimp_stroke_class_intern_init
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
	movq	%rax, gimp_stroke_parent_class
	cmpl	$0, GimpStroke_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpStroke_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_stroke_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_stroke_class_intern_init, .Lfunc_end1-gimp_stroke_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_init,@function
gimp_stroke_init:                       # @gimp_stroke_init
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
	movl	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_stroke_init, .Lfunc_end2-gimp_stroke_init
	.cfi_endproc

	.globl	gimp_stroke_set_ID
	.align	16, 0x90
	.type	gimp_stroke_set_ID,@function
gimp_stroke_set_ID:                     # @gimp_stroke_set_ID
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_set_ID, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_set_ID, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
.LBB3_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_stroke_set_ID, .Lfunc_end3-gimp_stroke_set_ID
	.cfi_endproc

	.globl	gimp_stroke_get_ID
	.align	16, 0x90
	.type	gimp_stroke_get_ID,@function
gimp_stroke_get_ID:                     # @gimp_stroke_get_ID
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_get_ID, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_stroke_get_ID, .Lfunc_end4-gimp_stroke_get_ID
	.cfi_endproc

	.globl	gimp_stroke_anchor_get
	.align	16, 0x90
	.type	gimp_stroke_anchor_get,@function
gimp_stroke_anchor_get:                 # @gimp_stroke_anchor_get
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_get, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_stroke_anchor_get, .Lfunc_end5-gimp_stroke_anchor_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_stroke_nearest_point_get
	.align	16, 0x90
	.type	gimp_stroke_nearest_point_get,@function
gimp_stroke_nearest_point_get:          # @gimp_stroke_nearest_point_get
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_point_get, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_point_get, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 184(%rax)
	je	.LBB6_19
# BB#18:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.end.23
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB6_20:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_stroke_nearest_point_get, .Lfunc_end6-gimp_stroke_nearest_point_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_stroke_nearest_tangent_get
	.align	16, 0x90
	.type	gimp_stroke_nearest_tangent_get,@function
gimp_stroke_nearest_tangent_get:        # @gimp_stroke_nearest_tangent_get
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
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_tangent_get, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_tangent_get, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.19
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_tangent_get, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_21:                               # %if.end.21
	jmp	.LBB7_22
.LBB7_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 192(%rax)
	je	.LBB7_24
# BB#23:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_25
.LBB7_24:                               # %if.end.29
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB7_25:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_stroke_nearest_tangent_get, .Lfunc_end7-gimp_stroke_nearest_tangent_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_stroke_nearest_intersection_get
	.align	16, 0x90
	.type	gimp_stroke_nearest_intersection_get,@function
gimp_stroke_nearest_intersection_get:   # @gimp_stroke_nearest_intersection_get
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
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_intersection_get, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_intersection_get, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_25
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB8_20
# BB#19:                                # %if.then.19
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_nearest_intersection_get, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_25
.LBB8_21:                               # %if.end.21
	jmp	.LBB8_22
.LBB8_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 200(%rax)
	je	.LBB8_24
# BB#23:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_25
.LBB8_24:                               # %if.end.29
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB8_25:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_stroke_nearest_intersection_get, .Lfunc_end8-gimp_stroke_nearest_intersection_get
	.cfi_endproc

	.globl	gimp_stroke_anchor_get_next
	.align	16, 0x90
	.type	gimp_stroke_anchor_get_next,@function
gimp_stroke_anchor_get_next:            # @gimp_stroke_anchor_get_next
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_get_next, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_stroke_anchor_get_next, .Lfunc_end9-gimp_stroke_anchor_get_next
	.cfi_endproc

	.globl	gimp_stroke_anchor_select
	.align	16, 0x90
	.type	gimp_stroke_anchor_select,@function
gimp_stroke_anchor_select:              # @gimp_stroke_anchor_select
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_select, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	*%rax
.LBB10_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_stroke_anchor_select, .Lfunc_end10-gimp_stroke_anchor_select
	.cfi_endproc

	.globl	gimp_stroke_anchor_move_relative
	.align	16, 0x90
	.type	gimp_stroke_anchor_move_relative,@function
gimp_stroke_anchor_move_relative:       # @gimp_stroke_anchor_move_relative
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_move_relative, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_23
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
	movabsq	$.L__func__.gimp_stroke_anchor_move_relative, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_23
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB11_20
# BB#19:                                # %if.then.20
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_move_relative, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_23
.LBB11_21:                              # %if.end.22
	jmp	.LBB11_22
.LBB11_22:                              # %do.end.23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
.LBB11_23:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_stroke_anchor_move_relative, .Lfunc_end11-gimp_stroke_anchor_move_relative
	.cfi_endproc

	.globl	gimp_stroke_anchor_move_absolute
	.align	16, 0x90
	.type	gimp_stroke_anchor_move_absolute,@function
gimp_stroke_anchor_move_absolute:       # @gimp_stroke_anchor_move_absolute
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
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_move_absolute, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
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
	movabsq	$.L__func__.gimp_stroke_anchor_move_absolute, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB12_20
# BB#19:                                # %if.then.20
	jmp	.LBB12_21
.LBB12_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_move_absolute, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_21:                              # %if.end.22
	jmp	.LBB12_22
.LBB12_22:                              # %do.end.23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
.LBB12_23:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_stroke_anchor_move_absolute, .Lfunc_end12-gimp_stroke_anchor_move_absolute
	.cfi_endproc

	.globl	gimp_stroke_point_is_movable
	.align	16, 0x90
	.type	gimp_stroke_point_is_movable,@function
gimp_stroke_point_is_movable:           # @gimp_stroke_point_is_movable
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_point_is_movable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_stroke_point_is_movable, .Lfunc_end13-gimp_stroke_point_is_movable
	.cfi_endproc

	.globl	gimp_stroke_point_move_relative
	.align	16, 0x90
	.type	gimp_stroke_point_move_relative,@function
gimp_stroke_point_move_relative:        # @gimp_stroke_point_move_relative
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_point_move_relative, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	*%rax
.LBB14_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_stroke_point_move_relative, .Lfunc_end14-gimp_stroke_point_move_relative
	.cfi_endproc

	.globl	gimp_stroke_point_move_absolute
	.align	16, 0x90
	.type	gimp_stroke_point_move_absolute,@function
gimp_stroke_point_move_absolute:        # @gimp_stroke_point_move_absolute
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_point_move_absolute, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	272(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	*%rax
.LBB15_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_stroke_point_move_absolute, .Lfunc_end15-gimp_stroke_point_move_absolute
	.cfi_endproc

	.globl	gimp_stroke_close
	.align	16, 0x90
	.type	gimp_stroke_close,@function
gimp_stroke_close:                      # @gimp_stroke_close
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_close, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_15
# BB#14:                                # %if.then.13
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_close, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_16:                              # %if.end.15
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB16_18:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_stroke_close, .Lfunc_end16-gimp_stroke_close
	.cfi_endproc

	.globl	gimp_stroke_anchor_convert
	.align	16, 0x90
	.type	gimp_stroke_anchor_convert,@function
gimp_stroke_anchor_convert:             # @gimp_stroke_anchor_convert
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_anchor_convert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
.LBB17_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_stroke_anchor_convert, .Lfunc_end17-gimp_stroke_anchor_convert
	.cfi_endproc

	.globl	gimp_stroke_anchor_delete
	.align	16, 0x90
	.type	gimp_stroke_anchor_delete,@function
gimp_stroke_anchor_delete:              # @gimp_stroke_anchor_delete
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_delete, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_19
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB18_16
# BB#14:                                # %land.lhs.true.13
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB18_16
# BB#15:                                # %if.then.15
	jmp	.LBB18_17
.LBB18_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_delete, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_19
.LBB18_17:                              # %if.end.17
	jmp	.LBB18_18
.LBB18_18:                              # %do.end.18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB18_19:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_stroke_anchor_delete, .Lfunc_end18-gimp_stroke_anchor_delete
	.cfi_endproc

	.globl	gimp_stroke_open
	.align	16, 0x90
	.type	gimp_stroke_open,@function
gimp_stroke_open:                       # @gimp_stroke_open
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_open, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_19
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB19_16
# BB#14:                                # %land.lhs.true.13
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB19_16
# BB#15:                                # %if.then.15
	jmp	.LBB19_17
.LBB19_16:                              # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_open, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_19
.LBB19_17:                              # %if.end.17
	jmp	.LBB19_18
.LBB19_18:                              # %do.end.18
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB19_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_stroke_open, .Lfunc_end19-gimp_stroke_open
	.cfi_endproc

	.globl	gimp_stroke_anchor_is_insertable
	.align	16, 0x90
	.type	gimp_stroke_anchor_is_insertable,@function
gimp_stroke_anchor_is_insertable:       # @gimp_stroke_anchor_is_insertable
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_is_insertable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB20_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_stroke_anchor_is_insertable, .Lfunc_end20-gimp_stroke_anchor_is_insertable
	.cfi_endproc

	.globl	gimp_stroke_anchor_insert
	.align	16, 0x90
	.type	gimp_stroke_anchor_insert,@function
gimp_stroke_anchor_insert:              # @gimp_stroke_anchor_insert
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_anchor_insert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_18
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_anchor_insert, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_18
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	304(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB21_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_stroke_anchor_insert, .Lfunc_end21-gimp_stroke_anchor_insert
	.cfi_endproc

	.globl	gimp_stroke_is_extendable
	.align	16, 0x90
	.type	gimp_stroke_is_extendable,@function
gimp_stroke_is_extendable:              # @gimp_stroke_is_extendable
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_is_extendable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	312(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB22_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_stroke_is_extendable, .Lfunc_end22-gimp_stroke_is_extendable
	.cfi_endproc

	.globl	gimp_stroke_extend
	.align	16, 0x90
	.type	gimp_stroke_extend,@function
gimp_stroke_extend:                     # @gimp_stroke_extend
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_extend, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_18
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB23_15
# BB#14:                                # %if.then.13
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_extend, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_18
.LBB23_16:                              # %if.end.15
	jmp	.LBB23_17
.LBB23_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB23_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_stroke_extend, .Lfunc_end23-gimp_stroke_extend
	.cfi_endproc

	.globl	gimp_stroke_connect_stroke
	.align	16, 0x90
	.type	gimp_stroke_connect_stroke,@function
gimp_stroke_connect_stroke:             # @gimp_stroke_connect_stroke
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_connect_stroke, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_31
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB24_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB24_20
.LBB24_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB24_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB24_19
.LBB24_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB24_19:                              # %if.end.31
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB24_22
# BB#21:                                # %if.then.35
	jmp	.LBB24_23
.LBB24_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_connect_stroke, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_31
.LBB24_23:                              # %if.end.37
	jmp	.LBB24_24
.LBB24_24:                              # %do.end.38
	jmp	.LBB24_25
.LBB24_25:                              # %do.body.39
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB24_28
# BB#26:                                # %land.lhs.true.41
	movq	-32(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB24_28
# BB#27:                                # %if.then.44
	jmp	.LBB24_29
.LBB24_28:                              # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_connect_stroke, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_31
.LBB24_29:                              # %if.end.46
	jmp	.LBB24_30
.LBB24_30:                              # %do.end.47
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	328(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB24_31:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_stroke_connect_stroke, .Lfunc_end24-gimp_stroke_connect_stroke
	.cfi_endproc

	.globl	gimp_stroke_real_connect_stroke
	.align	16, 0x90
	.type	gimp_stroke_real_connect_stroke,@function
gimp_stroke_real_connect_stroke:        # @gimp_stroke_real_connect_stroke
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
	subq	$32, %rsp
	movabsq	$.L.str.17, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_stroke_real_connect_stroke, .Lfunc_end25-gimp_stroke_real_connect_stroke
	.cfi_endproc

	.globl	gimp_stroke_is_empty
	.align	16, 0x90
	.type	gimp_stroke_is_empty,@function
gimp_stroke_is_empty:                   # @gimp_stroke_is_empty
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
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_is_empty, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB26_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_stroke_is_empty, .Lfunc_end26-gimp_stroke_is_empty
	.cfi_endproc

	.globl	gimp_stroke_get_length
	.align	16, 0x90
	.type	gimp_stroke_get_length,@function
gimp_stroke_get_length:                 # @gimp_stroke_get_length
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
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_get_length, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB27_13
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
.LBB27_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_stroke_get_length, .Lfunc_end27-gimp_stroke_get_length
	.cfi_endproc

	.globl	gimp_stroke_get_distance
	.align	16, 0x90
	.type	gimp_stroke_get_distance,@function
gimp_stroke_get_distance:               # @gimp_stroke_get_distance
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_get_distance, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movsd	%xmm0, -8(%rbp)
.LBB28_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_stroke_get_distance, .Lfunc_end28-gimp_stroke_get_distance
	.cfi_endproc

	.globl	gimp_stroke_interpolate
	.align	16, 0x90
	.type	gimp_stroke_interpolate,@function
gimp_stroke_interpolate:                # @gimp_stroke_interpolate
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_interpolate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	368(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB29_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_stroke_interpolate, .Lfunc_end29-gimp_stroke_interpolate
	.cfi_endproc

	.globl	gimp_stroke_duplicate
	.align	16, 0x90
	.type	gimp_stroke_duplicate,@function
gimp_stroke_duplicate:                  # @gimp_stroke_duplicate
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_duplicate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB30_13
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	376(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB30_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_stroke_duplicate, .Lfunc_end30-gimp_stroke_duplicate
	.cfi_endproc

	.globl	gimp_stroke_make_bezier
	.align	16, 0x90
	.type	gimp_stroke_make_bezier,@function
gimp_stroke_make_bezier:                # @gimp_stroke_make_bezier
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_make_bezier, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB31_13
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	384(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB31_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_stroke_make_bezier, .Lfunc_end31-gimp_stroke_make_bezier
	.cfi_endproc

	.globl	gimp_stroke_translate
	.align	16, 0x90
	.type	gimp_stroke_translate,@function
gimp_stroke_translate:                  # @gimp_stroke_translate
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_translate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_13
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	*%rax
.LBB32_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_stroke_translate, .Lfunc_end32-gimp_stroke_translate
	.cfi_endproc

	.globl	gimp_stroke_scale
	.align	16, 0x90
	.type	gimp_stroke_scale,@function
gimp_stroke_scale:                      # @gimp_stroke_scale
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_scale, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_13
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	400(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	*%rax
.LBB33_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_stroke_scale, .Lfunc_end33-gimp_stroke_scale
	.cfi_endproc

	.globl	gimp_stroke_rotate
	.align	16, 0x90
	.type	gimp_stroke_rotate,@function
gimp_stroke_rotate:                     # @gimp_stroke_rotate
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_rotate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB34_13
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	408(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	*%rax
.LBB34_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_stroke_rotate, .Lfunc_end34-gimp_stroke_rotate
	.cfi_endproc

	.globl	gimp_stroke_flip
	.align	16, 0x90
	.type	gimp_stroke_flip,@function
gimp_stroke_flip:                       # @gimp_stroke_flip
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_flip, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_13
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	416(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
.LBB35_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_stroke_flip, .Lfunc_end35-gimp_stroke_flip
	.cfi_endproc

	.globl	gimp_stroke_flip_free
	.align	16, 0x90
	.type	gimp_stroke_flip_free,@function
gimp_stroke_flip_free:                  # @gimp_stroke_flip_free
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_flip_free, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB36_13
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	*%rax
.LBB36_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_stroke_flip_free, .Lfunc_end36-gimp_stroke_flip_free
	.cfi_endproc

	.globl	gimp_stroke_transform
	.align	16, 0x90
	.type	gimp_stroke_transform,@function
gimp_stroke_transform:                  # @gimp_stroke_transform
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_transform, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_13
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	432(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB37_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_stroke_transform, .Lfunc_end37-gimp_stroke_transform
	.cfi_endproc

	.globl	gimp_stroke_get_draw_anchors
	.align	16, 0x90
	.type	gimp_stroke_get_draw_anchors,@function
gimp_stroke_get_draw_anchors:           # @gimp_stroke_get_draw_anchors
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_get_draw_anchors, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB38_13
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	440(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB38_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_stroke_get_draw_anchors, .Lfunc_end38-gimp_stroke_get_draw_anchors
	.cfi_endproc

	.globl	gimp_stroke_get_draw_controls
	.align	16, 0x90
	.type	gimp_stroke_get_draw_controls,@function
gimp_stroke_get_draw_controls:          # @gimp_stroke_get_draw_controls
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_get_draw_controls, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB39_13
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	448(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB39_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_stroke_get_draw_controls, .Lfunc_end39-gimp_stroke_get_draw_controls
	.cfi_endproc

	.globl	gimp_stroke_get_draw_lines
	.align	16, 0x90
	.type	gimp_stroke_get_draw_lines,@function
gimp_stroke_get_draw_lines:             # @gimp_stroke_get_draw_lines
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_get_draw_lines, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB40_13
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	456(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB40_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_stroke_get_draw_lines, .Lfunc_end40-gimp_stroke_get_draw_lines
	.cfi_endproc

	.globl	gimp_stroke_control_points_get
	.align	16, 0x90
	.type	gimp_stroke_control_points_get,@function
gimp_stroke_control_points_get:         # @gimp_stroke_control_points_get
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
	callq	gimp_stroke_get_type
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
	movabsq	$.L__func__.gimp_stroke_control_points_get, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB41_13
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	464(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB41_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_stroke_control_points_get, .Lfunc_end41-gimp_stroke_control_points_get
	.cfi_endproc

	.globl	gimp_stroke_get_point_at_dist
	.align	16, 0x90
	.type	gimp_stroke_get_point_at_dist,@function
gimp_stroke_get_point_at_dist:          # @gimp_stroke_get_point_at_dist
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_get_point_at_dist, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB42_13
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB42_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_stroke_get_point_at_dist, .Lfunc_end42-gimp_stroke_get_point_at_dist
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_class_init,@function
gimp_stroke_class_init:                 # @gimp_stroke_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp132:
	.cfi_offset %rbx, -56
.Ltmp133:
	.cfi_offset %r12, -48
.Ltmp134:
	.cfi_offset %r13, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_stroke_real_control_points_get, %rsi
	movabsq	$gimp_stroke_real_get_draw_lines, %rdi
	movabsq	$gimp_stroke_real_get_draw_controls, %rcx
	movabsq	$gimp_stroke_real_get_draw_anchors, %rdx
	movabsq	$gimp_stroke_real_transform, %r8
	movabsq	$gimp_stroke_real_flip_free, %r9
	movabsq	$gimp_stroke_real_flip, %r10
	movabsq	$gimp_stroke_real_rotate, %r11
	movabsq	$gimp_stroke_real_scale, %rbx
	movabsq	$gimp_stroke_real_translate, %r14
	movabsq	$gimp_stroke_real_make_bezier, %r15
	movabsq	$gimp_stroke_real_duplicate, %r12
	movabsq	$gimp_stroke_real_interpolate, %r13
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_stroke_real_get_point_at_dist, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_stroke_real_get_distance, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_get_length, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_is_empty, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_connect_stroke, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_extend, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_is_extendable, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_insert, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_is_insertable, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_open, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_close, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_point_move_absolute, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_point_move_relative, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_point_is_movable, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_delete, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_convert, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_move_absolute, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_move_relative, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_select, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_get_next, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_real_anchor_get, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_get_memsize, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_set_property, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_get_property, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movabsq	$gimp_stroke_finalize, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-48(%rbp), %rax
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 176(%rax)
	movq	-48(%rbp), %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 208(%rax)
	movq	-48(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 216(%rax)
	movq	-48(%rbp), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 224(%rax)
	movq	-48(%rbp), %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 232(%rax)
	movq	-48(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 240(%rax)
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 248(%rax)
	movq	-48(%rbp), %rax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 256(%rax)
	movq	-48(%rbp), %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 264(%rax)
	movq	-48(%rbp), %rax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 272(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-48(%rbp), %rax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 280(%rax)
	movq	-48(%rbp), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 288(%rax)
	movq	-48(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 296(%rax)
	movq	-48(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 304(%rax)
	movq	-48(%rbp), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 312(%rax)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 320(%rax)
	movq	-48(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 328(%rax)
	movq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 336(%rax)
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 344(%rax)
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 352(%rax)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 360(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 368(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 376(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 384(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 392(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 400(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 408(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 416(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 424(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 432(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 440(%rax)
	movq	-48(%rbp), %rax
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 448(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 456(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 464(%rax)
	callq	gimp_anchor_get_type
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movl	$234, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_boxed
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movl	$234, %r8d
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_param_spec_value_array
	movl	$1, %esi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	xorl	%ecx, %ecx
	movl	$235, %r8d
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_stroke_class_init, .Lfunc_end43-gimp_stroke_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_finalize,@function
gimp_stroke_finalize:                   # @gimp_stroke_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB44_2
# BB#1:                                 # %if.then
	movabsq	$gimp_anchor_free, %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB44_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_stroke_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_stroke_finalize, .Lfunc_end44-gimp_stroke_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_get_property,@function
gimp_stroke_get_property:               # @gimp_stroke_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$2, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB45_2
	jmp	.LBB45_1
.LBB45_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB45_5
.LBB45_2:                               # %sw.default
	jmp	.LBB45_3
.LBB45_3:                               # %do.body
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
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movl	$323, %edx              # imm = 0x143
	movabsq	$.L.str.29, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB45_5
.LBB45_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_stroke_get_property, .Lfunc_end45-gimp_stroke_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_set_property,@function
gimp_stroke_set_property:               # @gimp_stroke_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	%r9d, -128(%rbp)        # 4-byte Spill
	je	.LBB46_2
	jmp	.LBB46_34
.LBB46_34:                              # %entry
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB46_30
	jmp	.LBB46_1
.LBB46_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB46_33
.LBB46_2:                               # %sw.bb.3
	jmp	.LBB46_3
.LBB46_3:                               # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB46_5
# BB#4:                                 # %if.then
	jmp	.LBB46_6
.LBB46_5:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_set_property, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_33
.LBB46_6:                               # %if.end
	jmp	.LBB46_7
.LBB46_7:                               # %do.end
	jmp	.LBB46_8
.LBB46_8:                               # %do.body.4
	cmpq	$0, -24(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.6
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.7
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_set_property, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_33
.LBB46_11:                              # %if.end.8
	jmp	.LBB46_12
.LBB46_12:                              # %do.end.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB46_14
# BB#13:                                # %if.then.12
	jmp	.LBB46_33
.LBB46_14:                              # %if.end.13
	movl	$0, -60(%rbp)
.LBB46_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB46_29
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB46_15 Depth=1
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	g_value_array_get_nth
	movq	%rax, -56(%rbp)
# BB#17:                                # %do.body.16
                                        #   in Loop: Header=BB46_15 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_anchor_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB46_19
# BB#18:                                # %if.then.18
                                        #   in Loop: Header=BB46_15 Depth=1
	movl	$0, -84(%rbp)
	jmp	.LBB46_23
.LBB46_19:                              # %if.else.19
                                        #   in Loop: Header=BB46_15 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB46_21
# BB#20:                                # %if.then.21
                                        #   in Loop: Header=BB46_15 Depth=1
	movl	$1, -84(%rbp)
	jmp	.LBB46_22
.LBB46_21:                              # %if.else.22
                                        #   in Loop: Header=BB46_15 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -84(%rbp)
.LBB46_22:                              # %if.end.24
                                        #   in Loop: Header=BB46_15 Depth=1
	jmp	.LBB46_23
.LBB46_23:                              # %if.end.25
                                        #   in Loop: Header=BB46_15 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB46_25
# BB#24:                                # %if.then.27
                                        #   in Loop: Header=BB46_15 Depth=1
	jmp	.LBB46_26
.LBB46_25:                              # %if.else.28
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_set_property, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_33
.LBB46_26:                              # %if.end.29
                                        #   in Loop: Header=BB46_15 Depth=1
	jmp	.LBB46_27
.LBB46_27:                              # %do.end.30
                                        #   in Loop: Header=BB46_15 Depth=1
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_dup_boxed
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-40(%rbp), %rsi
	movq	%rax, 40(%rsi)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB46_15 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB46_15
.LBB46_29:                              # %for.end
	jmp	.LBB46_33
.LBB46_30:                              # %sw.default
	jmp	.LBB46_31
.LBB46_31:                              # %do.body.35
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %r8d
	movq	-104(%rbp), %rax
	movq	8(%rax), %r9
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movq	%r9, -160(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-96(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movl	$304, %edx              # imm = 0x130
	movabsq	$.L.str.29, %rcx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#32:                                # %do.end.44
	jmp	.LBB46_33
.LBB46_33:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_stroke_set_property, .Lfunc_end46-gimp_stroke_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_get_memsize,@function
gimp_stroke_get_memsize:                # @gimp_stroke_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_stroke_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$72, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_g_list_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_stroke_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_stroke_get_memsize, .Lfunc_end47-gimp_stroke_get_memsize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_stroke_real_anchor_get,@function
gimp_stroke_real_anchor_get:            # @gimp_stroke_real_anchor_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_stroke_get_draw_controls
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB48_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subsd	8(%rax), %xmm1
	movsd	%xmm1, -32(%rbp)
	ucomisd	-40(%rbp), %xmm0
	ja	.LBB48_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB48_1 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB48_5
.LBB48_4:                               # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB48_5:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_6
.LBB48_6:                               # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB48_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB48_9
.LBB48_8:                               # %cond.false
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB48_9
.LBB48_9:                               # %cond.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB48_1
.LBB48_10:                              # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rdi
	callq	gimp_stroke_get_draw_anchors
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB48_11:                              # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB48_20
# BB#12:                                # %for.body.16
                                        #   in Loop: Header=BB48_11 Depth=1
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subsd	(%rax), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subsd	8(%rax), %xmm1
	movsd	%xmm1, -32(%rbp)
	ucomisd	-40(%rbp), %xmm0
	ja	.LBB48_14
# BB#13:                                # %lor.lhs.false.28
                                        #   in Loop: Header=BB48_11 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB48_15
.LBB48_14:                              # %if.then.33
                                        #   in Loop: Header=BB48_11 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB48_15:                              # %if.end.38
                                        #   in Loop: Header=BB48_11 Depth=1
	jmp	.LBB48_16
.LBB48_16:                              # %for.inc.39
                                        #   in Loop: Header=BB48_11 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB48_18
# BB#17:                                # %cond.true.41
                                        #   in Loop: Header=BB48_11 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB48_19
.LBB48_18:                              # %cond.false.43
                                        #   in Loop: Header=BB48_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB48_19
.LBB48_19:                              # %cond.end.44
                                        #   in Loop: Header=BB48_11 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB48_11
.LBB48_20:                              # %for.end.46
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-64(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_stroke_real_anchor_get, .Lfunc_end48-gimp_stroke_real_anchor_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_get_next,@function
gimp_stroke_real_anchor_get_next:       # @gimp_stroke_real_anchor_get_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB49_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB49_6
# BB#2:                                 # %if.then.2
	cmpq	$0, -32(%rbp)
	je	.LBB49_4
# BB#3:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB49_5
.LBB49_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB49_5
.LBB49_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
.LBB49_6:                               # %if.end
	jmp	.LBB49_8
.LBB49_7:                               # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB49_8:                               # %if.end.5
	cmpq	$0, -32(%rbp)
	je	.LBB49_10
# BB#9:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_11
.LBB49_10:                              # %if.end.8
	movq	$0, -8(%rbp)
.LBB49_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_stroke_real_anchor_get_next, .Lfunc_end49-gimp_stroke_real_anchor_get_next
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_select,@function
gimp_stroke_real_anchor_select:         # @gimp_stroke_real_anchor_select
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB50_8
# BB#1:                                 # %if.then
	jmp	.LBB50_2
.LBB50_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB50_7
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 68(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB50_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB50_6
.LBB50_5:                               # %cond.false
                                        #   in Loop: Header=BB50_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB50_6
.LBB50_6:                               # %cond.end
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB50_2
.LBB50_7:                               # %while.end
	jmp	.LBB50_8
.LBB50_8:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB50_10
# BB#9:                                 # %if.then.6
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 68(%rcx)
.LBB50_10:                              # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_stroke_real_anchor_select, .Lfunc_end50-gimp_stroke_real_anchor_select
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_move_relative,@function
gimp_stroke_real_anchor_move_relative:  # @gimp_stroke_real_anchor_move_relative
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	addsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	addsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdx)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_stroke_real_anchor_move_relative, .Lfunc_end51-gimp_stroke_real_anchor_move_relative
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_move_absolute,@function
gimp_stroke_real_anchor_move_absolute:  # @gimp_stroke_real_anchor_move_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_stroke_real_anchor_move_absolute, .Lfunc_end52-gimp_stroke_real_anchor_move_absolute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_convert,@function
gimp_stroke_real_anchor_convert:        # @gimp_stroke_real_anchor_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.33, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_stroke_real_anchor_convert, .Lfunc_end53-gimp_stroke_real_anchor_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_delete,@function
gimp_stroke_real_anchor_delete:         # @gimp_stroke_real_anchor_delete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.34, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_stroke_real_anchor_delete, .Lfunc_end54-gimp_stroke_real_anchor_delete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_point_is_movable,@function
gimp_stroke_real_point_is_movable:      # @gimp_stroke_real_point_is_movable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_stroke_real_point_is_movable, .Lfunc_end55-gimp_stroke_real_point_is_movable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_point_move_relative,@function
gimp_stroke_real_point_move_relative:   # @gimp_stroke_real_point_move_relative
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.35, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_stroke_real_point_move_relative, .Lfunc_end56-gimp_stroke_real_point_move_relative
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_point_move_absolute,@function
gimp_stroke_real_point_move_absolute:   # @gimp_stroke_real_point_move_absolute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.36, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_stroke_real_point_move_absolute, .Lfunc_end57-gimp_stroke_real_point_move_absolute
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_close,@function
gimp_stroke_real_close:                 # @gimp_stroke_real_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 48(%rdi)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_stroke_real_close, .Lfunc_end58-gimp_stroke_real_close
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_open,@function
gimp_stroke_real_open:                  # @gimp_stroke_real_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.37, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_stroke_real_open, .Lfunc_end59-gimp_stroke_real_open
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_is_insertable,@function
gimp_stroke_real_anchor_is_insertable:  # @gimp_stroke_real_anchor_is_insertable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB60_8
.LBB60_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB60_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB60_7
.LBB60_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB60_7:                               # %if.end
	jmp	.LBB60_8
.LBB60_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB60_10
# BB#9:                                 # %if.then.8
	jmp	.LBB60_11
.LBB60_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_real_anchor_is_insertable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB60_13
.LBB60_11:                              # %if.end.10
	jmp	.LBB60_12
.LBB60_12:                              # %do.end
	movl	$0, -4(%rbp)
.LBB60_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_stroke_real_anchor_is_insertable, .Lfunc_end60-gimp_stroke_real_anchor_is_insertable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_anchor_insert,@function
gimp_stroke_real_anchor_insert:         # @gimp_stroke_real_anchor_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB61_8
.LBB61_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB61_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB61_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB61_7
.LBB61_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB61_7:                               # %if.end
	jmp	.LBB61_8
.LBB61_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB61_10
# BB#9:                                 # %if.then.8
	jmp	.LBB61_11
.LBB61_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_stroke_real_anchor_insert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB61_13
.LBB61_11:                              # %if.end.10
	jmp	.LBB61_12
.LBB61_12:                              # %do.end
	movq	$0, -8(%rbp)
.LBB61_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_stroke_real_anchor_insert, .Lfunc_end61-gimp_stroke_real_anchor_insert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_is_extendable,@function
gimp_stroke_real_is_extendable:         # @gimp_stroke_real_is_extendable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_stroke_real_is_extendable, .Lfunc_end62-gimp_stroke_real_is_extendable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_extend,@function
gimp_stroke_real_extend:                # @gimp_stroke_real_extend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.38, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_stroke_real_extend, .Lfunc_end63-gimp_stroke_real_extend
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_is_empty,@function
gimp_stroke_real_is_empty:              # @gimp_stroke_real_is_empty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_stroke_real_is_empty, .Lfunc_end64-gimp_stroke_real_is_empty
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI65_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_stroke_real_get_length,@function
gimp_stroke_real_get_length:            # @gimp_stroke_real_get_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	movsd	.LCPI65_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB65_9
.LBB65_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_stroke_interpolate
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB65_4
# BB#3:                                 # %if.then.1
	movsd	.LCPI65_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB65_9
.LBB65_4:                               # %if.end.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB65_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB65_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB65_5 Depth=1
	leaq	-112(%rbp), %rdx
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movl	-36(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rax
	addq	%rax, %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	gimp_coords_difference
	leaq	-112(%rbp), %rdi
	callq	gimp_coords_length
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB65_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB65_5
.LBB65_8:                               # %for.end
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	g_array_free
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB65_9:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_stroke_real_get_length, .Lfunc_end65-gimp_stroke_real_get_length
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_get_distance,@function
gimp_stroke_real_get_distance:          # @gimp_stroke_real_get_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.39, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorps	%xmm0, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_stroke_real_get_distance, .Lfunc_end66-gimp_stroke_real_get_distance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI67_0:
	.quad	4607182418800017408     # double 1
.LCPI67_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.align	16, 0x90
	.type	gimp_stroke_real_get_point_at_dist,@function
gimp_stroke_real_get_point_at_dist:     # @gimp_stroke_real_get_point_at_dist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rsi
	callq	gimp_stroke_interpolate
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB67_2
# BB#1:                                 # %if.then
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB67_14
.LBB67_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -60(%rbp)
.LBB67_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB67_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB67_3 Depth=1
	leaq	-152(%rbp), %rdx
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movl	-60(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rax
	addq	%rax, %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	callq	gimp_coords_difference
	leaq	-152(%rbp), %rdi
	callq	gimp_coords_length
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB67_5
	jp	.LBB67_5
	jmp	.LBB67_6
.LBB67_5:                               # %lor.lhs.false
                                        #   in Loop: Header=BB67_3 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB67_7
.LBB67_6:                               # %if.then.9
                                        #   in Loop: Header=BB67_3 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB67_11
.LBB67_7:                               # %if.else
	movsd	.LCPI67_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	divsd	-80(%rbp), %xmm1
	movsd	%xmm1, -160(%rbp)
	subsd	-160(%rbp), %xmm0
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-60(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	callq	gimp_coords_mix
	xorps	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB67_9
	jp	.LBB67_9
# BB#8:                                 # %if.then.21
	movsd	.LCPI67_1, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB67_10
.LBB67_9:                               # %if.else.22
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB67_10:                              # %if.end.25
	movl	$1, -84(%rbp)
	jmp	.LBB67_13
.LBB67_11:                              # %if.end.26
                                        #   in Loop: Header=BB67_3 Depth=1
	jmp	.LBB67_12
.LBB67_12:                              # %for.inc
                                        #   in Loop: Header=BB67_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB67_3
.LBB67_13:                              # %for.end
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	g_array_free
	movl	-84(%rbp), %esi
	movl	%esi, -4(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB67_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_stroke_real_get_point_at_dist, .Lfunc_end67-gimp_stroke_real_get_point_at_dist
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_interpolate,@function
gimp_stroke_real_interpolate:           # @gimp_stroke_real_interpolate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.40, %rax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_stroke_real_interpolate, .Lfunc_end68-gimp_stroke_real_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_duplicate,@function
gimp_stroke_real_duplicate:             # @gimp_stroke_real_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.41, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_copy
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB69_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB69_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_anchor_copy
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB69_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB69_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB69_6
.LBB69_5:                               # %cond.false
                                        #   in Loop: Header=BB69_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB69_6
.LBB69_6:                               # %cond.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB69_1
.LBB69_7:                               # %for.end
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_stroke_real_duplicate, .Lfunc_end69-gimp_stroke_real_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_make_bezier,@function
gimp_stroke_real_make_bezier:           # @gimp_stroke_real_make_bezier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.42, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_stroke_real_make_bezier, .Lfunc_end70-gimp_stroke_real_make_bezier
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_translate,@function
gimp_stroke_real_translate:             # @gimp_stroke_real_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB71_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB71_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB71_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB71_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB71_6
.LBB71_5:                               # %cond.false
                                        #   in Loop: Header=BB71_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB71_6
.LBB71_6:                               # %cond.end
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB71_1
.LBB71_7:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_stroke_real_translate, .Lfunc_end71-gimp_stroke_real_translate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_scale,@function
gimp_stroke_real_scale:                 # @gimp_stroke_real_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB72_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB72_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB72_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB72_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB72_6
.LBB72_5:                               # %cond.false
                                        #   in Loop: Header=BB72_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB72_6
.LBB72_6:                               # %cond.end
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB72_1
.LBB72_7:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_stroke_real_scale, .Lfunc_end72-gimp_stroke_real_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI73_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI73_1:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	gimp_stroke_real_rotate,@function
gimp_stroke_real_rotate:                # @gimp_stroke_real_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-104(%rbp), %rax
	movsd	.LCPI73_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI73_1, %xmm4        # xmm4 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	leaq	-104(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_transform_matrix_rotate_center
	leaq	-104(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_stroke_transform
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_stroke_real_rotate, .Lfunc_end73-gimp_stroke_real_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_flip,@function
gimp_stroke_real_flip:                  # @gimp_stroke_real_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	leaq	-96(%rbp), %rdi
	movl	-12(%rbp), %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_flip
	leaq	-96(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_stroke_transform
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_stroke_real_flip, .Lfunc_end74-gimp_stroke_real_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_flip_free,@function
gimp_stroke_real_flip_free:             # @gimp_stroke_real_flip_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-112(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
	leaq	-112(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_transform_matrix_flip_free
	leaq	-112(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_stroke_transform
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_stroke_real_flip_free, .Lfunc_end75-gimp_stroke_real_flip_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_transform,@function
gimp_stroke_real_transform:             # @gimp_stroke_real_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB76_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB76_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	callq	gimp_matrix3_transform_point
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB76_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB76_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB76_6
.LBB76_5:                               # %cond.false
                                        #   in Loop: Header=BB76_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB76_6
.LBB76_6:                               # %cond.end
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB76_1
.LBB76_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_stroke_real_transform, .Lfunc_end76-gimp_stroke_real_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_get_draw_anchors,@function
gimp_stroke_real_get_draw_anchors:      # @gimp_stroke_real_get_draw_anchors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB77_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB77_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB77_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB77_4:                               # %if.end
                                        #   in Loop: Header=BB77_1 Depth=1
	jmp	.LBB77_5
.LBB77_5:                               # %for.inc
                                        #   in Loop: Header=BB77_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB77_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB77_8
.LBB77_7:                               # %cond.false
                                        #   in Loop: Header=BB77_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB77_8
.LBB77_8:                               # %cond.end
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB77_1
.LBB77_9:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_reverse
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_stroke_real_get_draw_anchors, .Lfunc_end77-gimp_stroke_real_get_draw_anchors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_get_draw_controls,@function
gimp_stroke_real_get_draw_controls:     # @gimp_stroke_real_get_draw_controls
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB78_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB78_30
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$1, 64(%rax)
	jne	.LBB78_25
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB78_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB78_6
.LBB78_5:                               # %cond.false
                                        #   in Loop: Header=BB78_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB78_6
.LBB78_6:                               # %cond.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB78_8
# BB#7:                                 # %cond.true.7
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB78_9
.LBB78_8:                               # %cond.false.10
                                        #   in Loop: Header=BB78_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB78_9
.LBB78_9:                               # %cond.end.11
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB78_16
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB78_16
# BB#11:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB78_16
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB78_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB78_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
	jmp	.LBB78_15
.LBB78_14:                              # %if.else
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB78_15:                              # %if.end
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_24
.LBB78_16:                              # %if.else.22
                                        #   in Loop: Header=BB78_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB78_23
# BB#17:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB78_23
# BB#18:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB78_23
# BB#19:                                # %if.then.30
                                        #   in Loop: Header=BB78_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB78_21
# BB#20:                                # %if.then.32
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
	jmp	.LBB78_22
.LBB78_21:                              # %if.else.34
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB78_22:                              # %if.end.36
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_23
.LBB78_23:                              # %if.end.37
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_24
.LBB78_24:                              # %if.end.38
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_25
.LBB78_25:                              # %if.end.39
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_26
.LBB78_26:                              # %for.inc
                                        #   in Loop: Header=BB78_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB78_28
# BB#27:                                # %cond.true.41
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB78_29
.LBB78_28:                              # %cond.false.43
                                        #   in Loop: Header=BB78_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB78_29
.LBB78_29:                              # %cond.end.44
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB78_1
.LBB78_30:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_reverse
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_stroke_real_get_draw_controls, .Lfunc_end78-gimp_stroke_real_get_draw_controls
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_get_draw_lines,@function
gimp_stroke_real_get_draw_lines:        # @gimp_stroke_real_get_draw_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB79_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB79_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB79_13
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB79_13
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB79_8
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB79_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB79_1 Depth=1
	xorl	%eax, %eax
	movl	$64, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movq	%rax, -24(%rbp)
.LBB79_7:                               # %if.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
.LBB79_8:                               # %if.end.12
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB79_12
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB79_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB79_1 Depth=1
	xorl	%eax, %eax
	movl	$64, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movq	%rax, -24(%rbp)
.LBB79_11:                              # %if.end.21
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
.LBB79_12:                              # %if.end.27
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_13
.LBB79_13:                              # %if.end.28
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_14
.LBB79_14:                              # %for.inc
                                        #   in Loop: Header=BB79_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB79_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB79_17
.LBB79_16:                              # %cond.false
                                        #   in Loop: Header=BB79_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB79_17
.LBB79_17:                              # %cond.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB79_1
.LBB79_18:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_stroke_real_get_draw_lines, .Lfunc_end79-gimp_stroke_real_get_draw_lines
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_real_control_points_get,@function
gimp_stroke_real_control_points_get:    # @gimp_stroke_real_control_points_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	callq	g_list_length
	xorl	%ecx, %ecx
	movl	$72, %edx
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%ecx, %edi
	movl	%ecx, %esi
	movl	%eax, %ecx
	callq	g_array_sized_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_first
	movq	%rax, -40(%rbp)
.LBB80_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB80_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB80_1 Depth=1
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_array_append_vals
	movq	%rax, -48(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB80_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB80_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB80_6
.LBB80_5:                               # %cond.false
                                        #   in Loop: Header=BB80_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB80_6
.LBB80_6:                               # %cond.end
                                        #   in Loop: Header=BB80_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB80_1
.LBB80_7:                               # %for.end
	cmpq	$0, -16(%rbp)
	je	.LBB80_9
# BB#8:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB80_9:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_stroke_real_control_points_get, .Lfunc_end80-gimp_stroke_real_control_points_get
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
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
	je	.LBB81_2
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
.LBB81_2:                               # %entry
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
.Lfunc_end81:
	.size	g_warning, .Lfunc_end81-g_warning
	.cfi_endproc

	.type	gimp_stroke_get_type.g_define_type_id__volatile,@object # @gimp_stroke_get_type.g_define_type_id__volatile
	.local	gimp_stroke_get_type.g_define_type_id__volatile
	.comm	gimp_stroke_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpStroke"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Vectors"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_stroke_set_ID,@object # @__func__.gimp_stroke_set_ID
.L__func__.gimp_stroke_set_ID:
	.asciz	"gimp_stroke_set_ID"
	.size	.L__func__.gimp_stroke_set_ID, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_STROKE (stroke)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"stroke->ID == 0"
	.size	.L.str.3, 16

	.type	.L__func__.gimp_stroke_get_ID,@object # @__func__.gimp_stroke_get_ID
.L__func__.gimp_stroke_get_ID:
	.asciz	"gimp_stroke_get_ID"
	.size	.L__func__.gimp_stroke_get_ID, 19

	.type	.L__func__.gimp_stroke_anchor_get,@object # @__func__.gimp_stroke_anchor_get
.L__func__.gimp_stroke_anchor_get:
	.asciz	"gimp_stroke_anchor_get"
	.size	.L__func__.gimp_stroke_anchor_get, 23

	.type	.L__func__.gimp_stroke_nearest_point_get,@object # @__func__.gimp_stroke_nearest_point_get
.L__func__.gimp_stroke_nearest_point_get:
	.asciz	"gimp_stroke_nearest_point_get"
	.size	.L__func__.gimp_stroke_nearest_point_get, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"coord != NULL"
	.size	.L.str.4, 14

	.type	.L__func__.gimp_stroke_nearest_tangent_get,@object # @__func__.gimp_stroke_nearest_tangent_get
.L__func__.gimp_stroke_nearest_tangent_get:
	.asciz	"gimp_stroke_nearest_tangent_get"
	.size	.L__func__.gimp_stroke_nearest_tangent_get, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"coords1 != NULL"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"coords2 != NULL"
	.size	.L.str.6, 16

	.type	.L__func__.gimp_stroke_nearest_intersection_get,@object # @__func__.gimp_stroke_nearest_intersection_get
.L__func__.gimp_stroke_nearest_intersection_get:
	.asciz	"gimp_stroke_nearest_intersection_get"
	.size	.L__func__.gimp_stroke_nearest_intersection_get, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"direction != NULL"
	.size	.L.str.7, 18

	.type	.L__func__.gimp_stroke_anchor_get_next,@object # @__func__.gimp_stroke_anchor_get_next
.L__func__.gimp_stroke_anchor_get_next:
	.asciz	"gimp_stroke_anchor_get_next"
	.size	.L__func__.gimp_stroke_anchor_get_next, 28

	.type	.L__func__.gimp_stroke_anchor_select,@object # @__func__.gimp_stroke_anchor_select
.L__func__.gimp_stroke_anchor_select:
	.asciz	"gimp_stroke_anchor_select"
	.size	.L__func__.gimp_stroke_anchor_select, 26

	.type	.L__func__.gimp_stroke_anchor_move_relative,@object # @__func__.gimp_stroke_anchor_move_relative
.L__func__.gimp_stroke_anchor_move_relative:
	.asciz	"gimp_stroke_anchor_move_relative"
	.size	.L__func__.gimp_stroke_anchor_move_relative, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"anchor != NULL"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"g_list_find (stroke->anchors, anchor)"
	.size	.L.str.9, 38

	.type	.L__func__.gimp_stroke_anchor_move_absolute,@object # @__func__.gimp_stroke_anchor_move_absolute
.L__func__.gimp_stroke_anchor_move_absolute:
	.asciz	"gimp_stroke_anchor_move_absolute"
	.size	.L__func__.gimp_stroke_anchor_move_absolute, 33

	.type	.L__func__.gimp_stroke_point_is_movable,@object # @__func__.gimp_stroke_point_is_movable
.L__func__.gimp_stroke_point_is_movable:
	.asciz	"gimp_stroke_point_is_movable"
	.size	.L__func__.gimp_stroke_point_is_movable, 29

	.type	.L__func__.gimp_stroke_point_move_relative,@object # @__func__.gimp_stroke_point_move_relative
.L__func__.gimp_stroke_point_move_relative:
	.asciz	"gimp_stroke_point_move_relative"
	.size	.L__func__.gimp_stroke_point_move_relative, 32

	.type	.L__func__.gimp_stroke_point_move_absolute,@object # @__func__.gimp_stroke_point_move_absolute
.L__func__.gimp_stroke_point_move_absolute:
	.asciz	"gimp_stroke_point_move_absolute"
	.size	.L__func__.gimp_stroke_point_move_absolute, 32

	.type	.L__func__.gimp_stroke_close,@object # @__func__.gimp_stroke_close
.L__func__.gimp_stroke_close:
	.asciz	"gimp_stroke_close"
	.size	.L__func__.gimp_stroke_close, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stroke->anchors != NULL"
	.size	.L.str.10, 24

	.type	.L__func__.gimp_stroke_anchor_convert,@object # @__func__.gimp_stroke_anchor_convert
.L__func__.gimp_stroke_anchor_convert:
	.asciz	"gimp_stroke_anchor_convert"
	.size	.L__func__.gimp_stroke_anchor_convert, 27

	.type	.L__func__.gimp_stroke_anchor_delete,@object # @__func__.gimp_stroke_anchor_delete
.L__func__.gimp_stroke_anchor_delete:
	.asciz	"gimp_stroke_anchor_delete"
	.size	.L__func__.gimp_stroke_anchor_delete, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"anchor && anchor->type == GIMP_ANCHOR_ANCHOR"
	.size	.L.str.11, 45

	.type	.L__func__.gimp_stroke_open,@object # @__func__.gimp_stroke_open
.L__func__.gimp_stroke_open:
	.asciz	"gimp_stroke_open"
	.size	.L__func__.gimp_stroke_open, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"end_anchor && end_anchor->type == GIMP_ANCHOR_ANCHOR"
	.size	.L.str.12, 53

	.type	.L__func__.gimp_stroke_anchor_is_insertable,@object # @__func__.gimp_stroke_anchor_is_insertable
.L__func__.gimp_stroke_anchor_is_insertable:
	.asciz	"gimp_stroke_anchor_is_insertable"
	.size	.L__func__.gimp_stroke_anchor_is_insertable, 33

	.type	.L__func__.gimp_stroke_anchor_insert,@object # @__func__.gimp_stroke_anchor_insert
.L__func__.gimp_stroke_anchor_insert:
	.asciz	"gimp_stroke_anchor_insert"
	.size	.L__func__.gimp_stroke_anchor_insert, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"predec->type == GIMP_ANCHOR_ANCHOR"
	.size	.L.str.13, 35

	.type	.L__func__.gimp_stroke_is_extendable,@object # @__func__.gimp_stroke_is_extendable
.L__func__.gimp_stroke_is_extendable:
	.asciz	"gimp_stroke_is_extendable"
	.size	.L__func__.gimp_stroke_is_extendable, 26

	.type	.L__func__.gimp_stroke_extend,@object # @__func__.gimp_stroke_extend
.L__func__.gimp_stroke_extend:
	.asciz	"gimp_stroke_extend"
	.size	.L__func__.gimp_stroke_extend, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"!stroke->closed"
	.size	.L.str.14, 16

	.type	.L__func__.gimp_stroke_connect_stroke,@object # @__func__.gimp_stroke_connect_stroke
.L__func__.gimp_stroke_connect_stroke:
	.asciz	"gimp_stroke_connect_stroke"
	.size	.L__func__.gimp_stroke_connect_stroke, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_STROKE (extension)"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"stroke->closed == FALSE && extension->closed == FALSE"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp_stroke_connect_stroke: default implementation\n"
	.size	.L.str.17, 52

	.type	.L__func__.gimp_stroke_is_empty,@object # @__func__.gimp_stroke_is_empty
.L__func__.gimp_stroke_is_empty:
	.asciz	"gimp_stroke_is_empty"
	.size	.L__func__.gimp_stroke_is_empty, 21

	.type	.L__func__.gimp_stroke_get_length,@object # @__func__.gimp_stroke_get_length
.L__func__.gimp_stroke_get_length:
	.asciz	"gimp_stroke_get_length"
	.size	.L__func__.gimp_stroke_get_length, 23

	.type	.L__func__.gimp_stroke_get_distance,@object # @__func__.gimp_stroke_get_distance
.L__func__.gimp_stroke_get_distance:
	.asciz	"gimp_stroke_get_distance"
	.size	.L__func__.gimp_stroke_get_distance, 25

	.type	.L__func__.gimp_stroke_interpolate,@object # @__func__.gimp_stroke_interpolate
.L__func__.gimp_stroke_interpolate:
	.asciz	"gimp_stroke_interpolate"
	.size	.L__func__.gimp_stroke_interpolate, 24

	.type	.L__func__.gimp_stroke_duplicate,@object # @__func__.gimp_stroke_duplicate
.L__func__.gimp_stroke_duplicate:
	.asciz	"gimp_stroke_duplicate"
	.size	.L__func__.gimp_stroke_duplicate, 22

	.type	.L__func__.gimp_stroke_make_bezier,@object # @__func__.gimp_stroke_make_bezier
.L__func__.gimp_stroke_make_bezier:
	.asciz	"gimp_stroke_make_bezier"
	.size	.L__func__.gimp_stroke_make_bezier, 24

	.type	.L__func__.gimp_stroke_translate,@object # @__func__.gimp_stroke_translate
.L__func__.gimp_stroke_translate:
	.asciz	"gimp_stroke_translate"
	.size	.L__func__.gimp_stroke_translate, 22

	.type	.L__func__.gimp_stroke_scale,@object # @__func__.gimp_stroke_scale
.L__func__.gimp_stroke_scale:
	.asciz	"gimp_stroke_scale"
	.size	.L__func__.gimp_stroke_scale, 18

	.type	.L__func__.gimp_stroke_rotate,@object # @__func__.gimp_stroke_rotate
.L__func__.gimp_stroke_rotate:
	.asciz	"gimp_stroke_rotate"
	.size	.L__func__.gimp_stroke_rotate, 19

	.type	.L__func__.gimp_stroke_flip,@object # @__func__.gimp_stroke_flip
.L__func__.gimp_stroke_flip:
	.asciz	"gimp_stroke_flip"
	.size	.L__func__.gimp_stroke_flip, 17

	.type	.L__func__.gimp_stroke_flip_free,@object # @__func__.gimp_stroke_flip_free
.L__func__.gimp_stroke_flip_free:
	.asciz	"gimp_stroke_flip_free"
	.size	.L__func__.gimp_stroke_flip_free, 22

	.type	.L__func__.gimp_stroke_transform,@object # @__func__.gimp_stroke_transform
.L__func__.gimp_stroke_transform:
	.asciz	"gimp_stroke_transform"
	.size	.L__func__.gimp_stroke_transform, 22

	.type	.L__func__.gimp_stroke_get_draw_anchors,@object # @__func__.gimp_stroke_get_draw_anchors
.L__func__.gimp_stroke_get_draw_anchors:
	.asciz	"gimp_stroke_get_draw_anchors"
	.size	.L__func__.gimp_stroke_get_draw_anchors, 29

	.type	.L__func__.gimp_stroke_get_draw_controls,@object # @__func__.gimp_stroke_get_draw_controls
.L__func__.gimp_stroke_get_draw_controls:
	.asciz	"gimp_stroke_get_draw_controls"
	.size	.L__func__.gimp_stroke_get_draw_controls, 30

	.type	.L__func__.gimp_stroke_get_draw_lines,@object # @__func__.gimp_stroke_get_draw_lines
.L__func__.gimp_stroke_get_draw_lines:
	.asciz	"gimp_stroke_get_draw_lines"
	.size	.L__func__.gimp_stroke_get_draw_lines, 27

	.type	.L__func__.gimp_stroke_control_points_get,@object # @__func__.gimp_stroke_control_points_get
.L__func__.gimp_stroke_control_points_get:
	.asciz	"gimp_stroke_control_points_get"
	.size	.L__func__.gimp_stroke_control_points_get, 31

	.type	.L__func__.gimp_stroke_get_point_at_dist,@object # @__func__.gimp_stroke_get_point_at_dist
.L__func__.gimp_stroke_get_point_at_dist:
	.asciz	"gimp_stroke_get_point_at_dist"
	.size	.L__func__.gimp_stroke_get_point_at_dist, 30

	.type	gimp_stroke_parent_class,@object # @gimp_stroke_parent_class
	.local	gimp_stroke_parent_class
	.comm	gimp_stroke_parent_class,8,8
	.type	GimpStroke_private_offset,@object # @GimpStroke_private_offset
	.local	GimpStroke_private_offset
	.comm	GimpStroke_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-anchor"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Gimp Anchor"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The control points of a Stroke"
	.size	.L.str.20, 31

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"control-points"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Control Points"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This is an ValueArray with the initial control points of the new Stroke"
	.size	.L.str.23, 72

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"closed"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Close Flag"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"this flag indicates whether the stroke is closed or not"
	.size	.L.str.26, 56

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.27, 54

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimpstroke.c"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"property"
	.size	.L.str.29, 9

	.type	.L__func__.gimp_stroke_set_property,@object # @__func__.gimp_stroke_set_property
.L__func__.gimp_stroke_set_property:
	.asciz	"gimp_stroke_set_property"
	.size	.L__func__.gimp_stroke_set_property, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"stroke->anchors == NULL"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"value != NULL"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"G_VALUE_HOLDS (item, GIMP_TYPE_ANCHOR)"
	.size	.L.str.32, 39

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp_stroke_anchor_convert: default implementation\n"
	.size	.L.str.33, 52

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp_stroke_anchor_delete: default implementation\n"
	.size	.L.str.34, 51

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp_stroke_point_move_relative: default implementation\n"
	.size	.L.str.35, 57

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp_stroke_point_move_absolute: default implementation\n"
	.size	.L.str.36, 57

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp_stroke_open: default implementation\n"
	.size	.L.str.37, 42

	.type	.L__func__.gimp_stroke_real_anchor_is_insertable,@object # @__func__.gimp_stroke_real_anchor_is_insertable
.L__func__.gimp_stroke_real_anchor_is_insertable:
	.asciz	"gimp_stroke_real_anchor_is_insertable"
	.size	.L__func__.gimp_stroke_real_anchor_is_insertable, 38

	.type	.L__func__.gimp_stroke_real_anchor_insert,@object # @__func__.gimp_stroke_real_anchor_insert
.L__func__.gimp_stroke_real_anchor_insert:
	.asciz	"gimp_stroke_real_anchor_insert"
	.size	.L__func__.gimp_stroke_real_anchor_insert, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp_stroke_extend: default implementation\n"
	.size	.L.str.38, 44

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp_stroke_get_distance: default implementation\n"
	.size	.L.str.39, 50

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp_stroke_interpolate: default implementation\n"
	.size	.L.str.40, 49

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"name"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp_stroke_make_bezier: default implementation\n"
	.size	.L.str.42, 49


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
