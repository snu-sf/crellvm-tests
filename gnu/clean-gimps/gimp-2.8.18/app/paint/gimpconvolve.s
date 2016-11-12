	.text
	.file	"gimpconvolve.bc"
	.globl	gimp_convolve_get_type
	.align	16, 0x90
	.type	gimp_convolve_get_type,@function
gimp_convolve_get_type:                 # @gimp_convolve_get_type
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
	movq	gimp_convolve_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_convolve_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_convolve_class_intern_init, %rdi
	movl	$6520, %r8d             # imm = 0x1978
	movabsq	$gimp_convolve_init, %rcx
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
	movabsq	$gimp_convolve_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_convolve_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_convolve_get_type, .Lfunc_end0-gimp_convolve_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_convolve_class_intern_init,@function
gimp_convolve_class_intern_init:        # @gimp_convolve_class_intern_init
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
	movq	%rax, gimp_convolve_parent_class
	cmpl	$0, GimpConvolve_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpConvolve_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_convolve_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_convolve_class_intern_init, .Lfunc_end1-gimp_convolve_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1091567616              # float 9
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_convolve_init,@function
gimp_convolve_init:                     # @gimp_convolve_init
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
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movss	%xmm0, 6480(%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 6516(%rax)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_convolve_init, .Lfunc_end2-gimp_convolve_init
	.cfi_endproc

	.globl	gimp_convolve_register
	.align	16, 0x90
	.type	gimp_convolve_register,@function
gimp_convolve_register:                 # @gimp_convolve_register
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
	callq	gimp_convolve_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_convolve_options_get_type
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
	.size	gimp_convolve_register, .Lfunc_end3-gimp_convolve_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_convolve_class_init,@function
gimp_convolve_class_init:               # @gimp_convolve_class_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_convolve_paint, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 176(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_convolve_class_init, .Lfunc_end4-gimp_convolve_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_convolve_paint,@function
gimp_convolve_paint:                    # @gimp_convolve_paint
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_convolve_motion
	jmp	.LBB5_3
.LBB5_2:                                # %sw.default
	jmp	.LBB5_3
.LBB5_3:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_convolve_paint, .Lfunc_end5-gimp_convolve_paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_convolve_motion,@function
gimp_convolve_motion:                   # @gimp_convolve_motion
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
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp21:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gimp_convolve_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_convolve_options_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_13
.LBB6_2:                                # %if.end
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
	movq	-80(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -320(%rbp)
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -328(%rbp)
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_4
	jp	.LBB6_4
# BB#3:                                 # %if.then.18
	jmp	.LBB6_13
.LBB6_4:                                # %if.end.19
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.22
	jmp	.LBB6_13
.LBB6_6:                                # %if.end.23
	movl	$8, %esi
	movq	-80(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-320(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	gimp_dynamics_output_get_linear_value
	movl	$2, %ecx
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -336(%rbp)
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	472(%rax), %esi
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %eax
	cltd
	idivl	%ecx
	movq	-56(%rbp), %r8
	movq	360(%r8), %r8
	movq	32(%r8), %r8
	movl	8(%r8), %r9d
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%ecx
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-404(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	gimp_convolve_calculate_matrix
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-112(%rbp), %r8
	movl	12(%r8), %edx
	movq	-112(%rbp), %r8
	movl	16(%r8), %esi
	movq	-112(%rbp), %r8
	movl	4(%r8), %r8d
	movq	-112(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%esi, -408(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-408(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB6_8
# BB#7:                                 # %if.then.35
	movl	-124(%rbp), %eax
	movl	%eax, -340(%rbp)
	movq	-112(%rbp), %rcx
	movl	8(%rcx), %eax
	imull	-340(%rbp), %eax
	movq	-112(%rbp), %rcx
	imull	4(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	leaq	-304(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rsi
	movl	-340(%rbp), %r8d
	movl	-340(%rbp), %r9d
	movq	-112(%rbp), %rax
	imull	4(%rax), %r9d
	movq	-112(%rbp), %rax
	movl	4(%rax), %r10d
	movq	-112(%rbp), %rax
	movl	8(%rax), %r11d
	movl	%edx, -416(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	-416(%rbp), %r8d        # 4-byte Reload
	movl	-416(%rbp), %r9d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-176(%rbp), %rdi
	leaq	-304(%rbp), %rsi
	callq	copy_region
	jmp	.LBB6_9
.LBB6_8:                                # %if.else
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	movq	-112(%rbp), %rcx
	movl	8(%rcx), %eax
	imull	-340(%rbp), %eax
	movq	-112(%rbp), %rcx
	imull	4(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	leaq	-304(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rsi
	movl	-340(%rbp), %r8d
	movl	-340(%rbp), %r9d
	movq	-112(%rbp), %rax
	imull	4(%rax), %r9d
	movq	-112(%rbp), %rax
	movl	4(%rax), %r10d
	movq	-112(%rbp), %rax
	movl	8(%rax), %r11d
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	-420(%rbp), %r8d        # 4-byte Reload
	movl	-420(%rbp), %r9d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-176(%rbp), %rdi
	leaq	-304(%rbp), %rsi
	callq	add_alpha_region
.LBB6_9:                                # %if.end.57
	leaq	-304(%rbp), %rdi
	xorl	%eax, %eax
	movq	-312(%rbp), %rsi
	movl	-340(%rbp), %edx
	movl	-340(%rbp), %ecx
	movq	-112(%rbp), %r8
	imull	4(%r8), %ecx
	movq	-112(%rbp), %r8
	movl	4(%r8), %r9d
	movq	-112(%rbp), %r8
	movl	8(%r8), %r10d
	movl	%eax, %r8d
	movl	%r9d, -424(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-240(%rbp), %rdi
	xorl	%eax, %eax
	movq	-112(%rbp), %rsi
	movq	-112(%rbp), %r11
	movl	4(%r11), %r8d
	movq	-112(%rbp), %r11
	movl	8(%r11), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-304(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-48(%rbp), %r11
	addq	$6480, %r11             # imm = 0x1950
	movq	-48(%rbp), %rbx
	cvtss2sd	6516(%rbx), %xmm0
	movq	%r11, %rdx
	callq	convolve_region
	movq	-312(%rbp), %rdi
	callq	g_free
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	ucomisd	-328(%rbp), %xmm0
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	jbe	.LBB6_11
# BB#10:                                # %cond.true
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movsd	-456(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	callq	gimp_paint_options_get_brush_mode
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %r8d
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movsd	-464(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %ecx
	callq	gimp_brush_core_replace_canvas
.LBB6_13:                               # %return
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_convolve_motion, .Lfunc_end6-gimp_convolve_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4636737291354636288     # double 100
.LCPI7_2:
	.quad	-4575657221408423936    # double -512
.LCPI7_3:
	.quad	4646588915539509248     # double 448
.LCPI7_4:
	.quad	4634204016564240384     # double 64
.LCPI7_5:
	.quad	-4589203204662624256    # double -63.75
	.text
	.align	16, 0x90
	.type	gimp_convolve_calculate_matrix,@function
gimp_convolve_calculate_matrix:         # @gimp_convolve_calculate_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_2
# BB#1:                                 # %cond.true
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB7_3
.LBB7_3:                                # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	%xmm0, -40(%rbp)
	cmpl	$0, -16(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB7_5
# BB#4:                                 # %land.rhs
	cmpl	$0, -20(%rbp)
	setne	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB7_5:                                # %land.end
	movb	-49(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	testb	$1, %al
	movaps	%xmm0, %xmm2
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movb	%dl, -65(%rbp)          # 1-byte Spill
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	jne	.LBB7_19
# BB#18:                                # %land.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB7_19:                               # %land.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6480(%rax)
	cmpl	$0, -20(%rbp)
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jne	.LBB7_21
# BB#20:                                # %land.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB7_21:                               # %land.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6484(%rax)
	cmpl	$0, -16(%rbp)
	movb	-65(%rbp), %cl          # 1-byte Reload
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB7_7
# BB#6:                                 # %land.rhs.10
	cmpl	$0, -20(%rbp)
	setne	%al
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB7_7:                                # %land.end.12
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movsd	%xmm2, -128(%rbp)       # 8-byte Spill
	jne	.LBB7_23
# BB#22:                                # %land.end.12
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB7_23:                               # %land.end.12
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6488(%rax)
	movl	-16(%rbp), %ecx
	testl	%ecx, %ecx
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jne	.LBB7_25
# BB#24:                                # %land.end.12
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB7_25:                               # %land.end.12
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6492(%rax)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB7_8
	jmp	.LBB7_16
.LBB7_16:                               # %land.end.12
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB7_9
	jmp	.LBB7_17
.LBB7_17:                               # %land.end.12
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB7_10
	jmp	.LBB7_11
.LBB7_8:                                # %sw.bb
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6496(%rax)
	jmp	.LBB7_11
.LBB7_9:                                # %sw.bb.25
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_3, %xmm1         # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6496(%rax)
	jmp	.LBB7_11
.LBB7_10:                               # %sw.bb.31
	jmp	.LBB7_11
.LBB7_11:                               # %sw.epilog
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cmpl	$0, -16(%rbp)
	movb	%cl, -149(%rbp)         # 1-byte Spill
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jne	.LBB7_27
# BB#26:                                # %sw.epilog
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB7_27:                               # %sw.epilog
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6500(%rax)
	cmpl	$0, -16(%rbp)
	movb	-149(%rbp), %cl         # 1-byte Reload
	movb	%cl, -169(%rbp)         # 1-byte Spill
	je	.LBB7_13
# BB#12:                                # %land.rhs.38
	cmpl	$0, -20(%rbp)
	setne	%al
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB7_13:                               # %land.end.40
	movb	-169(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	testb	$1, %al
	movaps	%xmm0, %xmm2
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	movb	%dl, -185(%rbp)         # 1-byte Spill
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	%xmm2, -208(%rbp)       # 8-byte Spill
	jne	.LBB7_29
# BB#28:                                # %land.end.40
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB7_29:                               # %land.end.40
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6504(%rax)
	cmpl	$0, -20(%rbp)
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jne	.LBB7_31
# BB#30:                                # %land.end.40
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB7_31:                               # %land.end.40
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6508(%rax)
	cmpl	$0, -16(%rbp)
	movb	-185(%rbp), %cl         # 1-byte Reload
	movb	%cl, -217(%rbp)         # 1-byte Spill
	je	.LBB7_15
# BB#14:                                # %land.rhs.51
	cmpl	$0, -20(%rbp)
	setne	%al
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB7_15:                               # %land.end.53
	movb	-217(%rbp), %al         # 1-byte Reload
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	testb	$1, %al
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jne	.LBB7_33
# BB#32:                                # %land.end.53
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB7_33:                               # %land.end.53
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6512(%rax)
	movq	-8(%rbp), %rax
	addq	$6480, %rax             # imm = 0x1950
	movq	%rax, %rdi
	callq	gimp_convolve_sum_matrix
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 6516(%rax)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_convolve_calculate_matrix, .Lfunc_end7-gimp_convolve_calculate_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_convolve_sum_matrix,@function
gimp_convolve_sum_matrix:               # @gimp_convolve_sum_matrix
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -20(%rbp)
	jge	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_convolve_sum_matrix, .Lfunc_end8-gimp_convolve_sum_matrix
	.cfi_endproc

	.type	gimp_convolve_get_type.g_define_type_id__volatile,@object # @gimp_convolve_get_type.g_define_type_id__volatile
	.local	gimp_convolve_get_type.g_define_type_id__volatile
	.comm	gimp_convolve_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpConvolve"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-convolve"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Convolve"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-blur"
	.size	.L.str.3, 15

	.type	gimp_convolve_parent_class,@object # @gimp_convolve_parent_class
	.local	gimp_convolve_parent_class
	.comm	gimp_convolve_parent_class,8,8
	.type	GimpConvolve_private_offset,@object # @GimpConvolve_private_offset
	.local	GimpConvolve_private_offset
	.comm	GimpConvolve_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
