	.text
	.file	"gimpcanvastransformguides.bc"
	.globl	gimp_canvas_transform_guides_get_type
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_get_type,@function
gimp_canvas_transform_guides_get_type:  # @gimp_canvas_transform_guides_get_type
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
	movq	gimp_canvas_transform_guides_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_transform_guides_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_transform_guides_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_transform_guides_init, %rcx
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
	movabsq	$gimp_canvas_transform_guides_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_transform_guides_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_transform_guides_get_type, .Lfunc_end0-gimp_canvas_transform_guides_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_guides_class_intern_init,@function
gimp_canvas_transform_guides_class_intern_init: # @gimp_canvas_transform_guides_class_intern_init
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
	movq	%rax, gimp_canvas_transform_guides_parent_class
	cmpl	$0, GimpCanvasTransformGuides_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasTransformGuides_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_transform_guides_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_transform_guides_class_intern_init, .Lfunc_end1-gimp_canvas_transform_guides_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_guides_init,@function
gimp_canvas_transform_guides_init:      # @gimp_canvas_transform_guides_init
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
	.size	gimp_canvas_transform_guides_init, .Lfunc_end2-gimp_canvas_transform_guides_init
	.cfi_endproc

	.globl	gimp_canvas_transform_guides_new
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_new,@function
gimp_canvas_transform_guides_new:       # @gimp_canvas_transform_guides_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movsd	%xmm3, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_guides_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_transform_guides_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r10
	movabsq	$.L.str.10, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-56(%rbp), %r15
	movq	-64(%rbp), %r12
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-100(%rbp), %ebx
	movl	-104(%rbp), %r13d
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movq	%r11, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$4, %al
	movq	%r14, -160(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_transform_guides_new, .Lfunc_end3-gimp_canvas_transform_guides_new
	.cfi_endproc

	.globl	gimp_canvas_transform_guides_set
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_set,@function
gimp_canvas_transform_guides_set:       # @gimp_canvas_transform_guides_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_transform_guides_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_guides_set, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r9
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %r8
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %r10d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movl	%eax, %r8d
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB4_13:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_transform_guides_set, .Lfunc_end4-gimp_canvas_transform_guides_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4535124824762089472    # double -262144
.LCPI5_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_class_init,@function
gimp_canvas_transform_guides_class_init: # @gimp_canvas_transform_guides_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %r8d
	movabsq	$gimp_canvas_transform_guides_get_extents, %rdx
	movabsq	$gimp_canvas_transform_guides_draw, %r9
	movabsq	$gimp_canvas_transform_guides_get_property, %r10
	movabsq	$gimp_canvas_transform_guides_set_property, %r11
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_matrix3
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_guides_type_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$6, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$128, %r8d
	movl	$4, %r9d
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$7, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$112, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_transform_guides_class_init, .Lfunc_end5-gimp_canvas_transform_guides_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_guides_set_property,@function
gimp_canvas_transform_guides_set_property: # @gimp_canvas_transform_guides_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_transform_guides_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$6, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB6_11
# BB#15:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$72, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rdi
	callq	gimp_matrix3_identity
.LBB6_4:                                # %if.end
	jmp	.LBB6_14
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	jmp	.LBB6_14
.LBB6_6:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	jmp	.LBB6_14
.LBB6_7:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 88(%rdi)
	jmp	.LBB6_14
.LBB6_8:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 96(%rdi)
	jmp	.LBB6_14
.LBB6_9:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 104(%rdi)
	jmp	.LBB6_14
.LBB6_10:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 108(%rdi)
	jmp	.LBB6_14
.LBB6_11:                               # %sw.default
	jmp	.LBB6_12
.LBB6_12:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$210, %edx
	movabsq	$.L.str.14, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB6_14
.LBB6_14:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_transform_guides_set_property, .Lfunc_end6-gimp_canvas_transform_guides_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_10

	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_get_property,@function
gimp_canvas_transform_guides_get_property: # @gimp_canvas_transform_guides_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_transform_guides_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$6, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_8
# BB#12:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB7_11
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_11
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_11
.LBB7_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_11
.LBB7_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_11
.LBB7_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	104(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_11
.LBB7_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	108(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_11
.LBB7_8:                                # %sw.default
	jmp	.LBB7_9
.LBB7_9:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$254, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB7_11
.LBB7_11:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_transform_guides_get_property, .Lfunc_end7-gimp_canvas_transform_guides_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4617581306874913850     # double 5.2360679769999994
.LCPI8_3:
	.quad	4611686018427387904     # double 2
.LCPI8_4:
	.quad	4614469396067698805     # double 3.2360679769999998
.LCPI8_5:
	.quad	4617315517961601024     # double 5
.LCPI8_6:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_draw,@function
gimp_canvas_transform_guides_draw:      # @gimp_canvas_transform_guides_draw
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
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp32:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_canvas_transform_guides_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %r8
	leaq	-72(%rbp), %r9
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdi
	leaq	-96(%rbp), %r10
	leaq	-104(%rbp), %r11
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rbx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	gimp_canvas_transform_guides_transform
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	%eax, -108(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-32(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-32(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-32(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-32(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	cmpl	$0, -108(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	jmp	.LBB8_47
.LBB8_2:                                # %if.end
	movq	-40(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$7, %rdx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	ja	.LBB8_46
# BB#48:                                # %if.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_3:                                # %sw.bb
	jmp	.LBB8_46
.LBB8_4:                                # %sw.bb.18
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	96(%rax), %xmm3
	divsd	%xmm0, %xmm3
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	draw_hline
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	88(%rax), %xmm3
	divsd	%xmm0, %xmm3
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	draw_vline
	jmp	.LBB8_46
.LBB8_5:                                # %sw.bb.31
	movsd	.LCPI8_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	80(%rax), %xmm1
	movq	-40(%rbp), %rax
	addsd	96(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	draw_hline
	movsd	.LCPI8_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	96(%rax), %xmm1
	addsd	%xmm1, %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	movaps	%xmm4, %xmm2
	callq	draw_hline
	movsd	.LCPI8_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	72(%rax), %xmm1
	movq	-40(%rbp), %rax
	addsd	88(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	draw_vline
	movsd	.LCPI8_6, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	88(%rax), %xmm1
	addsd	%xmm1, %xmm4
	divsd	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	movaps	%xmm4, %xmm2
	callq	draw_vline
	jmp	.LBB8_46
.LBB8_6:                                # %sw.bb.63
	movl	$0, -112(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -112(%rbp)
	jge	.LBB8_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	movsd	.LCPI8_5, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-112(%rbp), %xmm4
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm5         # xmm5 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm5
	mulsd	%xmm5, %xmm4
	divsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm3
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	draw_hline
	movsd	.LCPI8_5, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-112(%rbp), %xmm4
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm5         # xmm5 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm5
	mulsd	%xmm5, %xmm4
	divsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm3
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	callq	draw_vline
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB8_7
.LBB8_10:                               # %for.end
	jmp	.LBB8_46
.LBB8_11:                               # %sw.bb.84
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_3, %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	80(%rax), %xmm2
	movq	-40(%rbp), %rax
	mulsd	96(%rax), %xmm1
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm1
	callq	draw_hline
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_4, %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	80(%rax), %xmm2
	movq	-40(%rbp), %rax
	mulsd	96(%rax), %xmm1
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm1
	callq	draw_hline
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_3, %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	72(%rax), %xmm2
	movq	-40(%rbp), %rax
	mulsd	88(%rax), %xmm1
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm1
	callq	draw_vline
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_4, %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	72(%rax), %xmm2
	movq	-40(%rbp), %rax
	mulsd	88(%rax), %xmm1
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm1
	callq	draw_vline
	jmp	.LBB8_46
.LBB8_12:                               # %sw.bb.121
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_14
# BB#13:                                # %cond.true
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB8_15:                               # %cond.end
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm2         # xmm2 = mem[0],zero
	addsd	-120(%rbp), %xmm2
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm3         # xmm3 = mem[0],zero
	addsd	-120(%rbp), %xmm3
	callq	draw_line
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm3         # xmm3 = mem[0],zero
	addsd	-120(%rbp), %xmm3
	callq	draw_line
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm2         # xmm2 = mem[0],zero
	addsd	-120(%rbp), %xmm2
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm3         # xmm3 = mem[0],zero
	subsd	-120(%rbp), %xmm3
	callq	draw_line
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm3         # xmm3 = mem[0],zero
	subsd	-120(%rbp), %xmm3
	callq	draw_line
	jmp	.LBB8_46
.LBB8_16:                               # %sw.bb.164
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_18
# BB#17:                                # %cond.true.170
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %cond.false.171
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB8_19:                               # %cond.end.175
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -124(%rbp)
	movq	-40(%rbp), %rcx
	movsd	96(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	80(%rcx), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_21
# BB#20:                                # %cond.true.183
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB8_22
.LBB8_21:                               # %cond.false.184
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB8_22:                               # %cond.end.188
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -128(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$6, 104(%rcx)
	jne	.LBB8_33
# BB#23:                                # %if.then.194
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jg	.LBB8_28
# BB#24:                                # %if.then.197
	movl	$1, %eax
	movq	-40(%rbp), %rcx
	movl	108(%rcx), %edx
	movl	%edx, -132(%rbp)
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %esi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -256(%rbp)        # 4-byte Spill
	cltd
	idivl	-124(%rbp)
	movl	-252(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB8_26
# BB#25:                                # %cond.true.201
	movl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false.202
	movl	-128(%rbp), %eax
	cltd
	idivl	-124(%rbp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB8_27:                               # %cond.end.204
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	-256(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -136(%rbp)
	jmp	.LBB8_32
.LBB8_28:                               # %if.else
	movl	$1, %eax
	movq	-40(%rbp), %rcx
	movl	108(%rcx), %edx
	movl	%edx, -136(%rbp)
	movl	-136(%rbp), %edx
	movl	-124(%rbp), %esi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -268(%rbp)        # 4-byte Spill
	cltd
	idivl	-128(%rbp)
	movl	-264(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jle	.LBB8_30
# BB#29:                                # %cond.true.211
	movl	$1, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB8_31
.LBB8_30:                               # %cond.false.212
	movl	-124(%rbp), %eax
	cltd
	idivl	-128(%rbp)
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB8_31:                               # %cond.end.214
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	-268(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -132(%rbp)
.LBB8_32:                               # %if.end.217
	jmp	.LBB8_37
.LBB8_33:                               # %if.else.218
	movl	$2, %eax
	movq	-40(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jle	.LBB8_35
# BB#34:                                # %cond.true.222
	movl	$2, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB8_36
.LBB8_35:                               # %cond.false.223
	movq	-40(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB8_36:                               # %cond.end.225
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-124(%rbp), %eax
	cltd
	idivl	-140(%rbp)
	movl	%eax, -132(%rbp)
	movl	-128(%rbp), %eax
	cltd
	idivl	-140(%rbp)
	movl	%eax, -136(%rbp)
.LBB8_37:                               # %if.end.229
	movl	$1, -112(%rbp)
.LBB8_38:                               # %for.cond.230
                                        # =>This Inner Loop Header: Depth=1
	movl	-112(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jg	.LBB8_41
# BB#39:                                # %for.body.233
                                        #   in Loop: Header=BB8_38 Depth=1
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-112(%rbp), %xmm1
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	draw_line
# BB#40:                                # %for.inc.247
                                        #   in Loop: Header=BB8_38 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB8_38
.LBB8_41:                               # %for.end.249
	movl	$1, -112(%rbp)
.LBB8_42:                               # %for.cond.250
                                        # =>This Inner Loop Header: Depth=1
	movl	-112(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jg	.LBB8_45
# BB#43:                                # %for.body.253
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-112(%rbp), %xmm1
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	draw_line
# BB#44:                                # %for.inc.267
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB8_42
.LBB8_45:                               # %for.end.269
	jmp	.LBB8_46
.LBB8_46:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
.LBB8_47:                               # %return
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_transform_guides_draw, .Lfunc_end8-gimp_canvas_transform_guides_draw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_11
	.quad	.LBB8_12
	.quad	.LBB8_16
	.quad	.LBB8_16

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_guides_get_extents,@function
gimp_canvas_transform_guides_get_extents: # @gimp_canvas_transform_guides_get_extents
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp36:
	.cfi_offset %rbx, -24
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %r8
	leaq	-56(%rbp), %r9
	leaq	-64(%rbp), %rax
	leaq	-72(%rbp), %r10
	leaq	-80(%rbp), %r11
	leaq	-88(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	gimp_canvas_transform_guides_transform
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_transform_xy_f
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_2
# BB#1:                                 # %cond.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB9_3:                                # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jbe	.LBB9_5
# BB#4:                                 # %cond.true.2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.3
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB9_6:                                # %cond.end.4
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_11
# BB#7:                                 # %cond.true.7
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_9
# BB#8:                                 # %cond.true.9
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false.10
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB9_10:                               # %cond.end.11
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB9_15
.LBB9_11:                               # %cond.false.13
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_13
# BB#12:                                # %cond.true.15
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.16
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB9_14:                               # %cond.end.17
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB9_15:                               # %cond.end.19
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_17
# BB#16:                                # %cond.true.24
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.25
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB9_18:                               # %cond.end.26
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jbe	.LBB9_20
# BB#19:                                # %cond.true.30
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false.31
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB9_21:                               # %cond.end.32
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_26
# BB#22:                                # %cond.true.36
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_24
# BB#23:                                # %cond.true.39
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB9_25
.LBB9_24:                               # %cond.false.40
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB9_25:                               # %cond.end.41
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB9_30
.LBB9_26:                               # %cond.false.43
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_28
# BB#27:                                # %cond.true.46
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB9_29
.LBB9_28:                               # %cond.false.47
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB9_29:                               # %cond.end.48
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB9_30:                               # %cond.end.50
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -100(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB9_32
# BB#31:                                # %cond.true.57
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB9_33
.LBB9_32:                               # %cond.false.58
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB9_33:                               # %cond.end.59
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-80(%rbp), %xmm1
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jbe	.LBB9_35
# BB#34:                                # %cond.true.63
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB9_36
.LBB9_35:                               # %cond.false.64
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB9_36:                               # %cond.end.65
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_41
# BB#37:                                # %cond.true.69
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB9_39
# BB#38:                                # %cond.true.72
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB9_40
.LBB9_39:                               # %cond.false.73
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB9_40:                               # %cond.end.74
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB9_45
.LBB9_41:                               # %cond.false.76
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB9_43
# BB#42:                                # %cond.true.79
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB9_44
.LBB9_43:                               # %cond.false.80
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB9_44:                               # %cond.end.81
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB9_45:                               # %cond.end.83
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB9_47
# BB#46:                                # %cond.true.89
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB9_48
.LBB9_47:                               # %cond.false.90
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB9_48:                               # %cond.end.91
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-88(%rbp), %xmm1
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jbe	.LBB9_50
# BB#49:                                # %cond.true.95
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB9_51
.LBB9_50:                               # %cond.false.96
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB9_51:                               # %cond.end.97
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_56
# BB#52:                                # %cond.true.101
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB9_54
# BB#53:                                # %cond.true.104
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB9_55
.LBB9_54:                               # %cond.false.105
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB9_55:                               # %cond.end.106
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB9_60
.LBB9_56:                               # %cond.false.108
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB9_58
# BB#57:                                # %cond.true.111
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB9_59
.LBB9_58:                               # %cond.false.112
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB9_59:                               # %cond.end.113
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB9_60:                               # %cond.end.115
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-104(%rbp), %rdi
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movl	-104(%rbp), %eax
	movl	-96(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -96(%rbp)
	movl	-100(%rbp), %eax
	movl	-92(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	cairo_region_create_rectangle
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_transform_guides_get_extents, .Lfunc_end9-gimp_canvas_transform_guides_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_guides_transform,@function
gimp_canvas_transform_guides_transform: # @gimp_canvas_transform_guides_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_canvas_transform_guides_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_matrix3_transform_point
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_matrix3_transform_point
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_matrix3_transform_point
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	gimp_matrix3_transform_point
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm3           # xmm3 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm4           # xmm4 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm5           # xmm5 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm6           # xmm6 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm7           # xmm7 = mem[0],zero
	callq	gimp_transform_polygon_is_convex
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_transform_guides_transform, .Lfunc_end11-gimp_canvas_transform_guides_transform
	.cfi_endproc

	.align	16, 0x90
	.type	draw_hline,@function
draw_hline:                             # @draw_hline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	draw_line
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	draw_hline, .Lfunc_end12-draw_hline
	.cfi_endproc

	.align	16, 0x90
	.type	draw_vline,@function
draw_vline:                             # @draw_vline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	draw_line
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	draw_vline, .Lfunc_end13-draw_vline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	draw_line,@function
draw_line:                              # @draw_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_matrix3_transform_point
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	draw_line, .Lfunc_end14-draw_line
	.cfi_endproc

	.type	gimp_canvas_transform_guides_get_type.g_define_type_id__volatile,@object # @gimp_canvas_transform_guides_get_type.g_define_type_id__volatile
	.local	gimp_canvas_transform_guides_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_transform_guides_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasTransformGuides"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_transform_guides_new,@object # @__func__.gimp_canvas_transform_guides_new
.L__func__.gimp_canvas_transform_guides_new:
	.asciz	"gimp_canvas_transform_guides_new"
	.size	.L__func__.gimp_canvas_transform_guides_new, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"shell"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"transform"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"x1"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"y1"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x2"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y2"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"type"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"n-guides"
	.size	.L.str.10, 9

	.type	.L__func__.gimp_canvas_transform_guides_set,@object # @__func__.gimp_canvas_transform_guides_set
.L__func__.gimp_canvas_transform_guides_set:
	.asciz	"gimp_canvas_transform_guides_set"
	.size	.L__func__.gimp_canvas_transform_guides_set, 33

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_CANVAS_TRANSFORM_GUIDES (guides)"
	.size	.L.str.11, 41

	.type	gimp_canvas_transform_guides_parent_class,@object # @gimp_canvas_transform_guides_parent_class
	.local	gimp_canvas_transform_guides_parent_class
	.comm	gimp_canvas_transform_guides_parent_class,8,8
	.type	GimpCanvasTransformGuides_private_offset,@object # @GimpCanvasTransformGuides_private_offset
	.local	GimpCanvasTransformGuides_private_offset
	.comm	GimpCanvasTransformGuides_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpcanvastransformguides.c"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
