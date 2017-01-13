	.text
	.file	"gimpairbrush.bc"
	.globl	gimp_airbrush_get_type
	.align	16, 0x90
	.type	gimp_airbrush_get_type,@function
gimp_airbrush_get_type:                 # @gimp_airbrush_get_type
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
	movq	gimp_airbrush_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_airbrush_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_paintbrush_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_airbrush_class_intern_init, %rdi
	movl	$6504, %r8d             # imm = 0x1968
	movabsq	$gimp_airbrush_init, %rcx
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
	movabsq	$gimp_airbrush_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_airbrush_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_airbrush_get_type, .Lfunc_end0-gimp_airbrush_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_airbrush_class_intern_init,@function
gimp_airbrush_class_intern_init:        # @gimp_airbrush_class_intern_init
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
	movq	%rax, gimp_airbrush_parent_class
	cmpl	$0, GimpAirbrush_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpAirbrush_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_airbrush_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_airbrush_class_intern_init, .Lfunc_end1-gimp_airbrush_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_airbrush_init,@function
gimp_airbrush_init:                     # @gimp_airbrush_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_airbrush_init, .Lfunc_end2-gimp_airbrush_init
	.cfi_endproc

	.globl	gimp_airbrush_register
	.align	16, 0x90
	.type	gimp_airbrush_register,@function
gimp_airbrush_register:                 # @gimp_airbrush_register
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
	callq	gimp_airbrush_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_airbrush_options_get_type
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
	.size	gimp_airbrush_register, .Lfunc_end3-gimp_airbrush_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_airbrush_class_init,@function
gimp_airbrush_class_init:               # @gimp_airbrush_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_airbrush_paint, %rsi
	movabsq	$gimp_airbrush_finalize, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_airbrush_class_init, .Lfunc_end4-gimp_airbrush_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_airbrush_finalize,@function
gimp_airbrush_finalize:                 # @gimp_airbrush_finalize
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
	callq	gimp_airbrush_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	6480(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 6480(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_airbrush_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_airbrush_finalize, .Lfunc_end5-gimp_airbrush_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4666723172467343360     # double 1.0E+4
	.text
	.align	16, 0x90
	.type	gimp_airbrush_paint,@function
gimp_airbrush_paint:                    # @gimp_airbrush_paint
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_airbrush_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_airbrush_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %r8d
	testl	%r8d, %r8d
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_14
.LBB6_14:                               # %entry
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_15
.LBB6_15:                               # %entry
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB6_10
	jmp	.LBB6_13
.LBB6_1:                                # %sw.bb
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	6480(%rax), %edi
	callq	g_source_remove
	movq	-48(%rbp), %rcx
	movl	$0, 6480(%rcx)
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB6_3:                                # %if.end
	movq	gimp_airbrush_parent_class, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	*%rax
	jmp	.LBB6_13
.LBB6_4:                                # %sw.bb.12
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.15
	movq	-48(%rbp), %rax
	movl	6480(%rax), %edi
	callq	g_source_remove
	movq	-48(%rbp), %rcx
	movl	$0, 6480(%rcx)
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB6_6:                                # %if.end.19
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_airbrush_motion
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rcx
	movsd	472(%rcx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_7
	jp	.LBB6_7
	jmp	.LBB6_9
.LBB6_7:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpl	$0, 480(%rax)
	jne	.LBB6_9
# BB#8:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movl	$8, %esi
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 6488(%rdi)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 6496(%rdi)
	movq	-64(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movabsq	$gimp_airbrush_timeout, %rsi
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-56(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -100(%rbp)
	movl	-100(%rbp), %edi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-48(%rbp), %rdx
	movl	%eax, 6480(%rdx)
.LBB6_9:                                # %if.end.33
	jmp	.LBB6_13
.LBB6_10:                               # %sw.bb.34
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB6_12
# BB#11:                                # %if.then.37
	movq	-48(%rbp), %rax
	movl	6480(%rax), %edi
	callq	g_source_remove
	movq	-48(%rbp), %rcx
	movl	$0, 6480(%rcx)
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB6_12:                               # %if.end.41
	movq	gimp_airbrush_parent_class, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	*%rax
.LBB6_13:                               # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_airbrush_paint, .Lfunc_end6-gimp_airbrush_paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_airbrush_motion,@function
gimp_airbrush_motion:                   # @gimp_airbrush_motion
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_airbrush_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$9, %esi
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	gimp_dynamics_output_get_linear_value
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	_gimp_paintbrush_motion
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_airbrush_motion, .Lfunc_end7-gimp_airbrush_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_airbrush_timeout,@function
gimp_airbrush_timeout:                  # @gimp_airbrush_timeout
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_airbrush_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_paint_core_get_current_coords
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rsi
	movq	6488(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	6496(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_airbrush_paint
	movq	-16(%rbp), %rax
	movq	6488(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_airbrush_timeout, .Lfunc_end8-gimp_airbrush_timeout
	.cfi_endproc

	.type	gimp_airbrush_get_type.g_define_type_id__volatile,@object # @gimp_airbrush_get_type.g_define_type_id__volatile
	.local	gimp_airbrush_get_type.g_define_type_id__volatile
	.comm	gimp_airbrush_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpAirbrush"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-airbrush"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Airbrush"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-airbrush"
	.size	.L.str.3, 19

	.type	gimp_airbrush_parent_class,@object # @gimp_airbrush_parent_class
	.local	gimp_airbrush_parent_class
	.comm	gimp_airbrush_parent_class,8,8
	.type	GimpAirbrush_private_offset,@object # @GimpAirbrush_private_offset
	.local	GimpAirbrush_private_offset
	.comm	GimpAirbrush_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
