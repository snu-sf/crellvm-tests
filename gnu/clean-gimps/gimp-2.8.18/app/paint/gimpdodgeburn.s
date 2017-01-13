	.text
	.file	"gimpdodgeburn.bc"
	.globl	gimp_dodge_burn_get_type
	.align	16, 0x90
	.type	gimp_dodge_burn_get_type,@function
gimp_dodge_burn_get_type:               # @gimp_dodge_burn_get_type
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
	movq	gimp_dodge_burn_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dodge_burn_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_dodge_burn_class_intern_init, %rdi
	movl	$6488, %r8d             # imm = 0x1958
	movabsq	$gimp_dodge_burn_init, %rcx
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
	movabsq	$gimp_dodge_burn_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dodge_burn_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dodge_burn_get_type, .Lfunc_end0-gimp_dodge_burn_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_class_intern_init,@function
gimp_dodge_burn_class_intern_init:      # @gimp_dodge_burn_class_intern_init
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
	movq	%rax, gimp_dodge_burn_parent_class
	cmpl	$0, GimpDodgeBurn_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDodgeBurn_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dodge_burn_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dodge_burn_class_intern_init, .Lfunc_end1-gimp_dodge_burn_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_init,@function
gimp_dodge_burn_init:                   # @gimp_dodge_burn_init
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
	.size	gimp_dodge_burn_init, .Lfunc_end2-gimp_dodge_burn_init
	.cfi_endproc

	.globl	gimp_dodge_burn_register
	.align	16, 0x90
	.type	gimp_dodge_burn_register,@function
gimp_dodge_burn_register:               # @gimp_dodge_burn_register
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
	callq	gimp_dodge_burn_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_options_get_type
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
	.size	gimp_dodge_burn_register, .Lfunc_end3-gimp_dodge_burn_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_class_init,@function
gimp_dodge_burn_class_init:             # @gimp_dodge_burn_class_init
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
	movabsq	$gimp_dodge_burn_paint, %rsi
	movabsq	$gimp_dodge_burn_finalize, %rdi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 216(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dodge_burn_class_init, .Lfunc_end4-gimp_dodge_burn_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_finalize,@function
gimp_dodge_burn_finalize:               # @gimp_dodge_burn_finalize
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
	callq	gimp_dodge_burn_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 6480(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	6480(%rax), %rdi
	callq	gimp_lut_free
	movq	-16(%rbp), %rax
	movq	$0, 6480(%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dodge_burn_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dodge_burn_finalize, .Lfunc_end5-gimp_dodge_burn_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dodge_burn_paint,@function
gimp_dodge_burn_paint:                  # @gimp_dodge_burn_paint
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dodge_burn_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %r8d
	testl	%r8d, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_7
.LBB6_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_6
.LBB6_1:                                # %sw.bb
	callq	gimp_lut_new
	movq	-48(%rbp), %rcx
	movq	%rax, 6480(%rcx)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movl	472(%rax), %esi
	movq	-56(%rbp), %rax
	movl	476(%rax), %edx
	movq	-16(%rbp), %rcx
	callq	gimp_dodge_burn_make_luts
	jmp	.LBB6_6
.LBB6_2:                                # %sw.bb.5
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_dodge_burn_motion
	jmp	.LBB6_6
.LBB6_3:                                # %sw.bb.6
	movq	-48(%rbp), %rax
	cmpq	$0, 6480(%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	6480(%rax), %rdi
	callq	gimp_lut_free
	movq	-48(%rbp), %rax
	movq	$0, 6480(%rax)
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dodge_burn_paint, .Lfunc_end6-gimp_dodge_burn_paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_dodge_burn_make_luts,@function
gimp_dodge_burn_make_luts:              # @gimp_dodge_burn_make_luts
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_bytes
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -44(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, gimp_dodge_burn_make_luts.exposure
	cmpl	$1, -20(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movss	gimp_dodge_burn_make_luts.exposure, %xmm0 # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, gimp_dodge_burn_make_luts.exposure
.LBB7_2:                                # %if.end
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB7_5
	jmp	.LBB7_8
.LBB7_8:                                # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB7_4
	jmp	.LBB7_9
.LBB7_9:                                # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jne	.LBB7_6
	jmp	.LBB7_3
.LBB7_3:                                # %sw.bb
	movabsq	$gimp_dodge_burn_highlights_lut_func, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_7
.LBB7_4:                                # %sw.bb.2
	movabsq	$gimp_dodge_burn_midtones_lut_func, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_7
.LBB7_5:                                # %sw.bb.3
	movabsq	$gimp_dodge_burn_shadows_lut_func, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %sw.default
	movq	$0, -40(%rbp)
.LBB7_7:                                # %sw.epilog
	movabsq	$gimp_dodge_burn_make_luts.exposure, %rax
	movq	-8(%rbp), %rcx
	movq	6480(%rcx), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %ecx
	movq	%rax, %rdx
	callq	gimp_lut_setup_exact
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dodge_burn_make_luts, .Lfunc_end7-gimp_dodge_burn_make_luts
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_dodge_burn_motion,@function
gimp_dodge_burn_motion:                 # @gimp_dodge_burn_motion
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gimp_dodge_burn_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_15
.LBB8_2:                                # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%esi, %esi
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-48(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -344(%rbp)
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -352(%rbp)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_4
	jp	.LBB8_4
# BB#3:                                 # %if.then.14
	jmp	.LBB8_15
.LBB8_4:                                # %if.end.15
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.18
	jmp	.LBB8_15
.LBB8_6:                                # %if.end.19
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -368(%rbp)
	movq	-128(%rbp), %rax
	movl	12(%rax), %edi
	movq	-128(%rbp), %rax
	movl	16(%rax), %esi
	movq	-128(%rbp), %rax
	movl	4(%rax), %edx
	movq	-128(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-368(%rbp), %rax
	movl	%edi, -428(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	%esi, -436(%rbp)        # 4-byte Spill
	movl	%edx, -440(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-368(%rbp), %rdi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-372(%rbp), %rdi
	leaq	-376(%rbp), %r8
	leaq	-380(%rbp), %r9
	leaq	-384(%rbp), %r10
	movl	-428(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-436(%rbp), %esi        # 4-byte Reload
	movl	-440(%rbp), %edx        # 4-byte Reload
	movl	-432(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-460(%rbp), %ebx        # 4-byte Reload
	movq	%r8, -472(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -480(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-444(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-456(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-472(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-480(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB8_8
# BB#7:                                 # %if.then.30
	jmp	.LBB8_15
.LBB8_8:                                # %if.end.31
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-372(%rbp), %edx
	movl	-376(%rbp), %ecx
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	callq	gimp_paint_core_get_orig_image
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	movl	-152(%rbp), %ecx
	imull	-148(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	leaq	-328(%rbp), %rdi
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-148(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movl	-164(%rbp), %r8d
	movl	-160(%rbp), %r9d
	movl	-156(%rbp), %r10d
	movl	-152(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-200(%rbp), %rsi
	leaq	-328(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	6480(%rax), %rdi
	callq	gimp_lut_process
	leaq	-264(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-128(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB8_10
# BB#9:                                 # %if.then.47
	leaq	-328(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	add_alpha_region
	jmp	.LBB8_11
.LBB8_10:                               # %if.else
	leaq	-328(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	copy_region
.LBB8_11:                               # %if.end.48
	movq	-336(%rbp), %rdi
	callq	g_free
	movl	$4, %esi
	movq	-96(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	%xmm0, -360(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	ucomisd	-352(%rbp), %xmm0
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	jbe	.LBB8_13
# BB#12:                                # %cond.true
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	jmp	.LBB8_14
.LBB8_13:                               # %cond.false
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	jmp	.LBB8_14
.LBB8_14:                               # %cond.end
	movsd	-520(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	callq	gimp_paint_options_get_brush_mode
	xorl	%r8d, %r8d
	movsd	-360(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	-496(%rbp), %rdx        # 8-byte Reload
	movsd	-528(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-536(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %ecx
	callq	gimp_brush_core_replace_canvas
.LBB8_15:                               # %return
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dodge_burn_motion, .Lfunc_end8-gimp_dodge_burn_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4599676413416267078     # double 0.33333299999999999
	.text
	.align	16, 0x90
	.type	gimp_dodge_burn_highlights_lut_func,@function
gimp_dodge_burn_highlights_lut_func:    # @gimp_dodge_burn_highlights_lut_func
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
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	cvtss2sd	-44(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -24(%rbp)
	je	.LBB9_4
.LBB9_2:                                # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB9_5
# BB#3:                                 # %land.lhs.true.7
	cmpl	$3, -24(%rbp)
	jne	.LBB9_5
.LBB9_4:                                # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.end
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
.LBB9_6:                                # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dodge_burn_highlights_lut_func, .Lfunc_end9-gimp_dodge_burn_highlights_lut_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4599676413416267078     # double 0.33333299999999999
	.text
	.align	16, 0x90
	.type	gimp_dodge_burn_midtones_lut_func,@function
gimp_dodge_burn_midtones_lut_func:      # @gimp_dodge_burn_midtones_lut_func
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -24(%rbp)
	je	.LBB10_4
.LBB10_2:                               # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB10_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$3, -24(%rbp)
	jne	.LBB10_5
.LBB10_4:                               # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB10_9
.LBB10_5:                               # %if.end
	xorps	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	jbe	.LBB10_7
# BB#6:                                 # %if.then.6
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	-44(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-44(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
.LBB10_8:                               # %if.end.10
	cvtss2sd	-28(%rbp), %xmm0
	cvtss2sd	-48(%rbp), %xmm1
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB10_9:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dodge_burn_midtones_lut_func, .Lfunc_end10-gimp_dodge_burn_midtones_lut_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	-4623695623438508730    # double -0.33333299999999999
.LCPI11_2:
	.quad	4599676413416267078     # double 0.33333299999999999
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_dodge_burn_shadows_lut_func,@function
gimp_dodge_burn_shadows_lut_func:       # @gimp_dodge_burn_shadows_lut_func
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -24(%rbp)
	je	.LBB11_4
.LBB11_2:                               # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB11_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$3, -24(%rbp)
	jne	.LBB11_5
.LBB11_4:                               # %if.then
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB11_12
.LBB11_5:                               # %if.end
	xorps	%xmm0, %xmm0
	movss	-44(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB11_7
# BB#6:                                 # %if.then.6
	movsd	.LCPI11_2, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	-52(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.LBB11_11
.LBB11_7:                               # %if.else
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_9
# BB#8:                                 # %if.then.14
	xorps	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.15
	movss	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm1
	subss	-52(%rbp), %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
.LBB11_10:                              # %if.end.18
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.19
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB11_12:                              # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dodge_burn_shadows_lut_func, .Lfunc_end11-gimp_dodge_burn_shadows_lut_func
	.cfi_endproc

	.type	gimp_dodge_burn_get_type.g_define_type_id__volatile,@object # @gimp_dodge_burn_get_type.g_define_type_id__volatile
	.local	gimp_dodge_burn_get_type.g_define_type_id__volatile
	.comm	gimp_dodge_burn_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDodgeBurn"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-dodge-burn"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Dodge/Burn"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-dodge"
	.size	.L.str.3, 16

	.type	gimp_dodge_burn_parent_class,@object # @gimp_dodge_burn_parent_class
	.local	gimp_dodge_burn_parent_class
	.comm	gimp_dodge_burn_parent_class,8,8
	.type	GimpDodgeBurn_private_offset,@object # @GimpDodgeBurn_private_offset
	.local	GimpDodgeBurn_private_offset
	.comm	GimpDodgeBurn_private_offset,4,4
	.type	gimp_dodge_burn_make_luts.exposure,@object # @gimp_dodge_burn_make_luts.exposure
	.local	gimp_dodge_burn_make_luts.exposure
	.comm	gimp_dodge_burn_make_luts.exposure,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
