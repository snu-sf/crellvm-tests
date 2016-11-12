	.text
	.file	"gimpoperationcagecoefcalc.bc"
	.globl	gimp_operation_cage_coef_calc_get_type
	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_get_type,@function
gimp_operation_cage_coef_calc_get_type: # @gimp_operation_cage_coef_calc_get_type
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
	movq	gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile, %rax
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
	callq	gegl_operation_source_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$352, %edx              # imm = 0x160
	movabsq	$gimp_operation_cage_coef_calc_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_cage_coef_calc_init, %rcx
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
	movabsq	$gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_cage_coef_calc_get_type, .Lfunc_end0-gimp_operation_cage_coef_calc_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_class_intern_init,@function
gimp_operation_cage_coef_calc_class_intern_init: # @gimp_operation_cage_coef_calc_class_intern_init
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
	movq	%rax, gimp_operation_cage_coef_calc_parent_class
	cmpl	$0, GimpOperationCageCoefCalc_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationCageCoefCalc_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_cage_coef_calc_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_cage_coef_calc_class_intern_init, .Lfunc_end1-gimp_operation_cage_coef_calc_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_init,@function
gimp_operation_cage_coef_calc_init:     # @gimp_operation_cage_coef_calc_init
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
	.size	gimp_operation_cage_coef_calc_init, .Lfunc_end2-gimp_operation_cage_coef_calc_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_class_init,@function
gimp_operation_cage_coef_calc_class_init: # @gimp_operation_cage_coef_calc_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gegl_operation_source_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_cage_coef_calc_finalize, %rcx
	movabsq	$gimp_operation_cage_coef_calc_set_property, %rdx
	movabsq	$gimp_operation_cage_coef_calc_get_property, %rsi
	movabsq	$gimp_operation_cage_coef_calc_process, %rdi
	movabsq	$gimp_operation_cage_coef_calc_get_bounding_box, %r8
	movabsq	$gimp_operation_cage_coef_calc_prepare, %r9
	movq	-32(%rbp), %r11
	movq	%r9, 176(%r11)
	movq	-32(%rbp), %r9
	movq	%r8, 184(%r9)
	movq	-32(%rbp), %r8
	movq	160(%r8), %r9
	andq	$-2, %r9
	movq	%r9, 160(%r8)
	movq	-32(%rbp), %r8
	movq	$0, 208(%r8)
	movq	-24(%rbp), %r8
	movq	%rdi, 312(%r8)
	movq	-16(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	movq	-16(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 48(%rdx)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cage_config_get_type
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_cage_coef_calc_class_init, .Lfunc_end3-gimp_operation_cage_coef_calc_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_prepare,@function
gimp_operation_cage_coef_calc_prepare:  # @gimp_operation_cage_coef_calc_prepare
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_cage_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	babl_type
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_cage_config_get_n_points
	shll	$1, %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	babl_format_n
	movabsq	$.L.str.10, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gegl_operation_set_format
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_cage_coef_calc_prepare, .Lfunc_end4-gimp_operation_cage_coef_calc_prepare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_get_bounding_box,@function
gimp_operation_cage_coef_calc_get_bounding_box: # @gimp_operation_cage_coef_calc_get_bounding_box
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
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	32(%rax), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_cage_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, %rdi
	callq	gimp_cage_config_get_bounding_box
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_operation_cage_coef_calc_get_bounding_box, .Lfunc_end5-gimp_operation_cage_coef_calc_get_bounding_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4611686018427387904     # double 2
.LCPI6_1:
	.quad	4616189618054758400     # double 4
.LCPI6_2:
	.quad	4623263855806786840     # double 12.566370614359172
.LCPI6_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_process,@function
gimp_operation_cage_coef_calc_process:  # @gimp_operation_cage_coef_calc_process
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_cage_config_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -56(%rbp)
	callq	babl_type
	movq	-56(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_cage_config_get_n_points
	shll	$1, %eax
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	babl_format_n
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_25
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_cage_config_get_n_points
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-328(%rbp), %r9         # 8-byte Reload
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-332(%rbp), %r9d        # 4-byte Reload
	callq	gegl_buffer_iterator_new
	movq	%rax, -72(%rbp)
.LBB6_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #       Child Loop BB6_8 Depth 3
	movq	-72(%rbp), %rdi
	callq	gegl_buffer_iterator_next
	cmpl	$0, %eax
	je	.LBB6_24
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-72(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB6_5:                                # %while.cond.17
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_8 Depth 3
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB6_23
# BB#6:                                 # %while.body.19
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-56(%rbp), %rdi
	cvtsi2ssl	-104(%rbp), %xmm0
	cvtsi2ssl	-108(%rbp), %xmm1
	callq	gimp_cage_config_point_inside
	cmpl	$0, %eax
	je	.LBB6_20
# BB#7:                                 # %if.then.23
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -112(%rbp)
.LBB6_8:                                # %for.cond
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-112(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jae	.LBB6_19
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB6_8 Depth=3
	leaq	-168(%rbp), %rdi
	movl	-112(%rbp), %eax
	addl	$1, %eax
	xorl	%edx, %edx
	divl	-76(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-56(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi), %rsi
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -88(%rbp)
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, -136(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, -152(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	cvtsi2sdl	-104(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	cvtsi2sdl	-108(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	callq	gimp_vector2_length
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-104(%rbp), %xmm3
	subsd	%xmm3, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm3
	subsd	%xmm3, %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-160(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	movsd	%xmm0, -272(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	-176(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-176(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-176(%rbp), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -288(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-160(%rbp), %xmm0
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-168(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, -208(%rbp)
	mulsd	-280(%rbp), %xmm1
	mulsd	-272(%rbp), %xmm1
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-288(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -216(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	log
	movsd	%xmm0, -224(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-272(%rbp), %xmm0
	addsd	-288(%rbp), %xmm0
	callq	log
	movsd	%xmm0, -232(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	divsd	-216(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	mulsd	-272(%rbp), %xmm1
	addsd	-288(%rbp), %xmm1
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	atan2
	movb	$1, %r8b
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_2, %xmm3         # xmm3 = mem[0],zero
	divsd	-216(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-224(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rcx
	movd	%rcx, %xmm0
	divsd	%xmm3, %xmm0
	mulsd	-280(%rbp), %xmm2
	movsd	-288(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-288(%rbp), %xmm3
	divsd	-272(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	-256(%rbp), %xmm2
	movsd	-288(%rbp), %xmm3       # xmm3 = mem[0],zero
	movaps	%xmm1, %xmm4
	mulsd	-272(%rbp), %xmm4
	divsd	%xmm4, %xmm3
	mulsd	-264(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	addsd	-232(%rbp), %xmm2
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-112(%rbp), %edx
	addl	-76(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-120(%rbp), %rsi
	movss	%xmm0, (%rsi,%rcx,4)
	testb	$1, %r8b
	jne	.LBB6_10
	jmp	.LBB6_11
.LBB6_10:                               # %cond.true
                                        #   in Loop: Header=BB6_8 Depth=3
	movl	-112(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	callq	__isnanf
	cmpl	$0, %eax
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_11:                               # %cond.false
                                        #   in Loop: Header=BB6_8 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_12
	jmp	.LBB6_13
.LBB6_12:                               # %cond.true.119
                                        #   in Loop: Header=BB6_8 Depth=3
	movl	-112(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	cvtss2sd	(%rdx,%rcx,4), %xmm0
	callq	__isnan
	cmpl	$0, %eax
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_13:                               # %cond.false.126
                                        #   in Loop: Header=BB6_8 Depth=3
	movl	-112(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rsi
	flds	(%rsi,%rdx,4)
	movq	%rsp, %rdx
	fstpt	(%rdx)
	callq	__isnanl
	cmpl	$0, %eax
	je	.LBB6_15
.LBB6_14:                               # %if.then.133
                                        #   in Loop: Header=BB6_8 Depth=3
	xorps	%xmm0, %xmm0
	movl	-112(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.LBB6_15:                               # %if.end.137
                                        #   in Loop: Header=BB6_8 Depth=3
	leaq	-136(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	callq	gimp_operation_cage_coef_calc_is_on_straight
	cmpl	$0, %eax
	jne	.LBB6_17
# BB#16:                                # %if.then.140
                                        #   in Loop: Header=BB6_8 Depth=3
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	-264(%rbp), %xmm3       # xmm3 = mem[0],zero
	movaps	%xmm0, %xmm4
	mulsd	-272(%rbp), %xmm4
	divsd	%xmm4, %xmm3
	movsd	-256(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-288(%rbp), %xmm5       # xmm5 = mem[0],zero
	divsd	-272(%rbp), %xmm5
	movaps	%xmm0, %xmm6
	addsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	movslq	-112(%rbp), %rax
	movq	-120(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm3
	addsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, (%rcx,%rax,4)
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-272(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	-272(%rbp), %xmm3
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm2
	movl	-112(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	-76(%rbp)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-120(%rbp), %rsi
	cvtss2sd	(%rsi,%rcx,4), %xmm0
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi,%rcx,4)
.LBB6_17:                               # %if.end.168
                                        #   in Loop: Header=BB6_8 Depth=3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB6_8 Depth=3
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB6_8
.LBB6_19:                               # %for.end
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.169
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-76(%rbp), %eax
	shll	$1, %eax
	movq	-120(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	56(%rcx), %esi
	movq	-72(%rbp), %rcx
	addl	64(%rcx), %esi
	cmpl	%esi, %eax
	jl	.LBB6_22
# BB#21:                                # %if.then.180
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-72(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movl	-108(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -108(%rbp)
.LBB6_22:                               # %if.end.185
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_5
.LBB6_23:                               # %while.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_24:                               # %while.end.186
	movl	$1, -4(%rbp)
.LBB6_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_operation_cage_coef_calc_process, .Lfunc_end6-gimp_operation_cage_coef_calc_process
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_get_property,@function
gimp_operation_cage_coef_calc_get_property: # @gimp_operation_cage_coef_calc_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$137, %edx
	movabsq	$.L.str.14, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_operation_cage_coef_calc_get_property, .Lfunc_end7-gimp_operation_cage_coef_calc_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_set_property,@function
gimp_operation_cage_coef_calc_set_property: # @gimp_operation_cage_coef_calc_set_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_4
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB8_7
.LBB8_4:                                # %sw.default
	jmp	.LBB8_5
.LBB8_5:                                # %do.body
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$159, %edx
	movabsq	$.L.str.14, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_operation_cage_coef_calc_set_property, .Lfunc_end8-gimp_operation_cage_coef_calc_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_finalize,@function
gimp_operation_cage_coef_calc_finalize: # @gimp_operation_cage_coef_calc_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_coef_calc_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_operation_cage_coef_calc_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_operation_cage_coef_calc_finalize, .Lfunc_end9-gimp_operation_cage_coef_calc_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4472406533629990549     # double 1.0000000000000001E-9
.LCPI10_1:
	.quad	-4750965503224785259    # double -1.0000000000000001E-9
	.text
	.align	16, 0x90
	.type	gimp_operation_cage_coef_calc_is_on_straight,@function
gimp_operation_cage_coef_calc_is_on_straight: # @gimp_operation_cage_coef_calc_is_on_straight
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
	subq	$64, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	subsd	(%rdx), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	subsd	8(%rdx), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	subsd	(%rdx), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	subsd	8(%rdx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_vector2_normalize
	leaq	-56(%rbp), %rdi
	callq	gimp_vector2_normalize
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -60(%rbp)
	cvtss2sd	-60(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%r8b, -61(%rbp)         # 1-byte Spill
	jbe	.LBB10_2
# BB#1:                                 # %land.rhs
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-60(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -61(%rbp)          # 1-byte Spill
.LBB10_2:                               # %land.end
	movb	-61(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_operation_cage_coef_calc_is_on_straight, .Lfunc_end10-gimp_operation_cage_coef_calc_is_on_straight
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
	movl	$.L.str.15, %r9d
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

	.type	gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile,@object # @gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile
	.local	gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile
	.comm	gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationCageCoefCalc"
	.size	.L.str, 26

	.type	gimp_operation_cage_coef_calc_parent_class,@object # @gimp_operation_cage_coef_calc_parent_class
	.local	gimp_operation_cage_coef_calc_parent_class
	.comm	gimp_operation_cage_coef_calc_parent_class,8,8
	.type	GimpOperationCageCoefCalc_private_offset,@object # @GimpOperationCageCoefCalc_private_offset
	.local	GimpOperationCageCoefCalc_private_offset
	.comm	GimpOperationCageCoefCalc_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp:cage-coef-calc"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"categories"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"transform"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"description"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Compute a set of coefficient buffer for the GIMP cage tool"
	.size	.L.str.6, 59

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"config"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Config"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"A GimpCageConfig object, that define the transformation"
	.size	.L.str.9, 56

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"output"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"float"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpoperationcagecoefcalc.c"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Gimp-GEGL"
	.size	.L.str.15, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
