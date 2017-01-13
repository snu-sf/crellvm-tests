	.text
	.file	"gimpsmudge.bc"
	.globl	gimp_smudge_get_type
	.align	16, 0x90
	.type	gimp_smudge_get_type,@function
gimp_smudge_get_type:                   # @gimp_smudge_get_type
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
	movq	gimp_smudge_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_smudge_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_brush_core_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_smudge_class_intern_init, %rdi
	movl	$6568, %r8d             # imm = 0x19A8
	movabsq	$gimp_smudge_init, %rcx
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
	movabsq	$gimp_smudge_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_smudge_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_smudge_get_type, .Lfunc_end0-gimp_smudge_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_class_intern_init,@function
gimp_smudge_class_intern_init:          # @gimp_smudge_class_intern_init
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
	movq	%rax, gimp_smudge_parent_class
	cmpl	$0, GimpSmudge_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSmudge_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_smudge_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_smudge_class_intern_init, .Lfunc_end1-gimp_smudge_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_init,@function
gimp_smudge_init:                       # @gimp_smudge_init
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
	movl	$0, 6480(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 6552(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 6560(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_smudge_init, .Lfunc_end2-gimp_smudge_init
	.cfi_endproc

	.globl	gimp_smudge_register
	.align	16, 0x90
	.type	gimp_smudge_register,@function
gimp_smudge_register:                   # @gimp_smudge_register
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
	callq	gimp_smudge_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_smudge_options_get_type
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
	.size	gimp_smudge_register, .Lfunc_end3-gimp_smudge_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_class_init,@function
gimp_smudge_class_init:                 # @gimp_smudge_class_init
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
	callq	gimp_brush_core_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_smudge_paint, %rsi
	movabsq	$gimp_smudge_finalize, %rdi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 216(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 220(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 224(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_smudge_class_init, .Lfunc_end4-gimp_smudge_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_finalize,@function
gimp_smudge_finalize:                   # @gimp_smudge_finalize
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
	callq	gimp_smudge_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 6552(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	6552(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 6552(%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$0, 6560(%rcx)
	movq	gimp_smudge_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_smudge_finalize, .Lfunc_end5-gimp_smudge_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_paint,@function
gimp_smudge_paint:                      # @gimp_smudge_paint
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_smudge_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	%r9d, -64(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_11
.LBB6_11:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB6_6
	jmp	.LBB6_9
.LBB6_1:                                # %sw.bb
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_smudge_start
	movq	-48(%rbp), %rcx
	movl	%eax, 6480(%rcx)
.LBB6_3:                                # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then.6
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_smudge_motion
.LBB6_5:                                # %if.end.7
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.8
	movq	-48(%rbp), %rax
	cmpq	$0, 6552(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.10
	movq	-48(%rbp), %rax
	movq	6552(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	$0, 6552(%rax)
.LBB6_8:                                # %if.end.13
	movq	-48(%rbp), %rax
	movl	$0, 6480(%rax)
	jmp	.LBB6_10
.LBB6_9:                                # %sw.default
	jmp	.LBB6_10
.LBB6_10:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_smudge_paint, .Lfunc_end6-gimp_smudge_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_start,@function
gimp_smudge_start:                      # @gimp_smudge_start
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_smudge_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB7_22
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.5
	movl	$0, -12(%rbp)
	jmp	.LBB7_22
.LBB7_4:                                # %if.end.6
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$6560, %rax             # imm = 0x19A0
	movq	%rax, %rsi
	callq	gimp_smudge_accumulator_size
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_smudge_accumulator_coords
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -132(%rbp)
	movq	-56(%rbp), %rcx
	movl	6560(%rcx), %eax
	movq	-56(%rbp), %rcx
	imull	6560(%rcx), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	-56(%rbp), %rcx
	movq	%rax, 6552(%rcx)
	movl	-136(%rbp), %r8d
	movq	-64(%rbp), %rax
	cmpl	12(%rax), %r8d
	jne	.LBB7_8
# BB#5:                                 # %lor.lhs.false
	movl	-140(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jne	.LBB7_8
# BB#6:                                 # %lor.lhs.false.17
	movq	-56(%rbp), %rax
	movl	6560(%rax), %ecx
	movq	-64(%rbp), %rax
	cmpl	4(%rax), %ecx
	jne	.LBB7_8
# BB#7:                                 # %lor.lhs.false.21
	movq	-56(%rbp), %rax
	movl	6560(%rax), %ecx
	movq	-64(%rbp), %rax
	cmpl	8(%rax), %ecx
	je	.LBB7_21
.LBB7_8:                                # %if.then.25
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	cvttsd2si	(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	subl	$1, %eax
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_10
# BB#9:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	subl	$1, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB7_14
.LBB7_10:                               # %cond.false
	movq	-48(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	cmpl	$0, %ecx
	jge	.LBB7_12
# BB#11:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB7_13
.LBB7_12:                               # %cond.false.44
	movq	-48(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB7_13:                               # %cond.end
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB7_14:                               # %cond.end.47
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	cvttsd2si	8(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	subl	$1, %eax
	movl	-208(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB7_16
# BB#15:                                # %cond.true.57
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	subl	$1, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB7_20
.LBB7_16:                               # %cond.false.62
	movq	-48(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	cmpl	$0, %ecx
	jge	.LBB7_18
# BB#17:                                # %cond.true.67
	xorl	%eax, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false.68
	movq	-48(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
.LBB7_19:                               # %cond.end.71
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB7_20:                               # %cond.end.73
	movl	-228(%rbp), %eax        # 4-byte Reload
	leaq	-144(%rbp), %rcx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_pickable_get_pixel_at
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx
	movq	6552(%rcx), %rsi
	movl	-132(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movq	-56(%rbp), %rcx
	imull	6560(%rcx), %r9d
	movq	-56(%rbp), %rcx
	movl	6560(%rcx), %r10d
	movq	-56(%rbp), %rcx
	movl	6560(%rcx), %r11d
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	-236(%rbp), %r9d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	pixel_region_init_data
	leaq	-128(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	color_region
.LBB7_21:                               # %if.end.82
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdx
	movl	12(%rdx), %edx
	movq	-64(%rbp), %rsi
	movl	16(%rsi), %r8d
	movq	-64(%rbp), %rsi
	movl	4(%rsi), %r9d
	movq	-64(%rbp), %rsi
	movl	8(%rsi), %r10d
	movq	%rax, %rsi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-56(%rbp), %rax
	addq	$6488, %rax             # imm = 0x1958
	movq	-56(%rbp), %rsi
	movq	6552(%rsi), %rsi
	movl	-132(%rbp), %edx
	movl	-132(%rbp), %ecx
	movq	-56(%rbp), %rdi
	imull	6560(%rdi), %ecx
	movq	-64(%rbp), %rdi
	movl	12(%rdi), %r8d
	subl	-136(%rbp), %r8d
	movq	-64(%rbp), %rdi
	movl	16(%rdi), %r9d
	subl	-140(%rbp), %r9d
	movq	-64(%rbp), %rdi
	movl	4(%rdi), %r10d
	movq	-64(%rbp), %rdi
	movl	8(%rdi), %r11d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-128(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$6488, %rax             # imm = 0x1958
	movq	%rax, %rsi
	callq	copy_region
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rax
	addq	$6488, %rax             # imm = 0x1958
	movq	-56(%rbp), %rsi
	movq	6552(%rsi), %rsi
	movl	-132(%rbp), %edx
	movl	-132(%rbp), %r8d
	movq	-56(%rbp), %rdi
	imull	6560(%rdi), %r8d
	movq	-56(%rbp), %rdi
	movl	6560(%rdi), %r9d
	movq	-56(%rbp), %rdi
	movl	6560(%rdi), %r10d
	movq	%rax, %rdi
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-248(%rbp), %r8d        # 4-byte Reload
	movl	-248(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -252(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	-252(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_region_init_data
	movl	$1, -12(%rbp)
.LBB7_22:                               # %return
	movl	-12(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_smudge_start, .Lfunc_end7-gimp_smudge_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
.LCPI8_1:
	.quad	4643176031446892544     # double 255
.LCPI8_2:
	.quad	4636737291354636288     # double 100
.LCPI8_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_smudge_motion,@function
gimp_smudge_motion:                     # @gimp_smudge_motion
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
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp28:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gimp_smudge_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_smudge_options_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_13
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%esi, %esi
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -312(%rbp)
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -320(%rbp)
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_4
	jp	.LBB8_4
# BB#3:                                 # %if.then.16
	jmp	.LBB8_13
.LBB8_4:                                # %if.end.17
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.20
	jmp	.LBB8_13
.LBB8_6:                                # %if.end.21
	leaq	-340(%rbp), %rdx
	leaq	-344(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_smudge_accumulator_coords
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-176(%rbp), %rdi
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rcx
	movl	12(%rcx), %edx
	movq	-112(%rbp), %rcx
	movl	16(%rcx), %ecx
	movq	-112(%rbp), %rsi
	movl	4(%rsi), %r9d
	movq	-112(%rbp), %rsi
	movl	8(%rsi), %r10d
	movq	%rax, %rsi
	movl	%r8d, -396(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	$8, %esi
	movq	-72(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	leaq	-304(%rbp), %rdi
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -336(%rbp)
	movq	-56(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	mulsd	-336(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)
	movq	-48(%rbp), %rax
	movq	6552(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	6540(%rax), %edx
	movq	-48(%rbp), %rax
	movl	6520(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	12(%rax), %r8d
	subl	-340(%rbp), %r8d
	movq	-112(%rbp), %rax
	movl	16(%rax), %r9d
	subl	-344(%rbp), %r9d
	movq	-112(%rbp), %rax
	movl	4(%rax), %r10d
	movq	-112(%rbp), %rax
	movl	8(%rax), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-240(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-112(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	leaq	-176(%rbp), %rdi
	leaq	-304(%rbp), %rax
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	-328(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %bl
	movq	%rax, %rsi
	movq	%rax, %rdx
	movzbl	%bl, %ecx
	callq	blend_region
	leaq	-304(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	6552(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	6540(%rax), %edx
	movq	-48(%rbp), %rax
	movl	6520(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	12(%rax), %r8d
	subl	-340(%rbp), %r8d
	movq	-112(%rbp), %rax
	movl	16(%rax), %r9d
	subl	-344(%rbp), %r9d
	movq	-112(%rbp), %rax
	movl	4(%rax), %r10d
	movq	-112(%rbp), %rax
	movl	8(%rax), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_region_init_data
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB8_8
# BB#7:                                 # %if.then.51
	leaq	-304(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	callq	add_alpha_region
	jmp	.LBB8_9
.LBB8_8:                                # %if.else
	leaq	-304(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	callq	copy_region
.LBB8_9:                                # %if.end.52
	movl	$4, %esi
	movq	-72(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	%xmm0, -352(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	ucomisd	-320(%rbp), %xmm0
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	jbe	.LBB8_11
# BB#10:                                # %cond.true
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	jmp	.LBB8_12
.LBB8_12:                               # %cond.end
	movsd	-440(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	callq	gimp_paint_options_get_brush_mode
	movl	$1, %r8d
	movsd	-352(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movsd	-448(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %ecx
	callq	gimp_brush_core_replace_canvas
.LBB8_13:                               # %return
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_smudge_motion, .Lfunc_end8-gimp_smudge_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4611686018427387904     # double 2
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_smudge_accumulator_size,@function
gimp_smudge_accumulator_size:           # @gimp_smudge_accumulator_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movaps	%xmm1, %xmm2
	addsd	360(%rsi), %xmm2
	movq	-8(%rbp), %rsi
	addsd	360(%rsi), %xmm1
	mulsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_smudge_accumulator_size, .Lfunc_end9-gimp_smudge_accumulator_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_smudge_accumulator_coords,@function
gimp_smudge_accumulator_coords:         # @gimp_smudge_accumulator_coords
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_smudge_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r8d
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %r9d
	movq	-40(%rbp), %rax
	movl	6560(%rax), %eax
	cltd
	idivl	%r8d
	subl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movl	%r9d, (%rcx)
	movq	-16(%rbp), %rcx
	cvttsd2si	8(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	6560(%rcx), %r9d
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	movl	-52(%rbp), %r8d         # 4-byte Reload
	subl	%eax, %r8d
	movq	-32(%rbp), %rcx
	movl	%r8d, (%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_smudge_accumulator_coords, .Lfunc_end10-gimp_smudge_accumulator_coords
	.cfi_endproc

	.type	gimp_smudge_get_type.g_define_type_id__volatile,@object # @gimp_smudge_get_type.g_define_type_id__volatile
	.local	gimp_smudge_get_type.g_define_type_id__volatile
	.comm	gimp_smudge_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSmudge"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-smudge"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Smudge"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-smudge"
	.size	.L.str.3, 17

	.type	gimp_smudge_parent_class,@object # @gimp_smudge_parent_class
	.local	gimp_smudge_parent_class
	.comm	gimp_smudge_parent_class,8,8
	.type	GimpSmudge_private_offset,@object # @GimpSmudge_private_offset
	.local	GimpSmudge_private_offset
	.comm	GimpSmudge_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
