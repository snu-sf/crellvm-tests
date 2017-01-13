	.text
	.file	"gimpoperationcagetransform.bc"
	.globl	gimp_operation_cage_transform_get_type
	.align	16, 0x90
	.type	gimp_operation_cage_transform_get_type,@function
gimp_operation_cage_transform_get_type: # @gimp_operation_cage_transform_get_type
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
	movq	gimp_operation_cage_transform_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_cage_transform_get_type.g_define_type_id__volatile, %rax
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
	callq	gegl_operation_composer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$352, %edx              # imm = 0x160
	movabsq	$gimp_operation_cage_transform_class_intern_init, %rdi
	movl	$64, %r8d
	movabsq	$gimp_operation_cage_transform_init, %rcx
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
	movabsq	$gimp_operation_cage_transform_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_cage_transform_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_cage_transform_get_type, .Lfunc_end0-gimp_operation_cage_transform_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_transform_class_intern_init,@function
gimp_operation_cage_transform_class_intern_init: # @gimp_operation_cage_transform_class_intern_init
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
	movq	%rax, gimp_operation_cage_transform_parent_class
	cmpl	$0, GimpOperationCageTransform_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationCageTransform_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_cage_transform_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_cage_transform_class_intern_init, .Lfunc_end1-gimp_operation_cage_transform_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_transform_init,@function
gimp_operation_cage_transform_init:     # @gimp_operation_cage_transform_init
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
	movabsq	$.L.str.21, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	babl_type
	movl	$2, %esi
	movq	%rax, %rdi
	callq	babl_format_n
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_operation_cage_transform_init, .Lfunc_end2-gimp_operation_cage_transform_init
	.cfi_endproc

	.globl	gimp_operation_cage_transform_get_cached_region
	.align	16, 0x90
	.type	gimp_operation_cage_transform_get_cached_region,@function
gimp_operation_cage_transform_get_cached_region: # @gimp_operation_cage_transform_get_cached_region
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	gegl_operation_source_get_bounding_box
	movups	(%rax), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_cage_transform_get_cached_region, .Lfunc_end3-gimp_operation_cage_transform_get_cached_region
	.cfi_endproc

	.globl	gimp_operation_cage_transform_get_required_for_output
	.align	16, 0x90
	.type	gimp_operation_cage_transform_get_required_for_output,@function
gimp_operation_cage_transform_get_required_for_output: # @gimp_operation_cage_transform_get_required_for_output
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	gegl_operation_source_get_bounding_box
	movups	(%rax), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_cage_transform_get_required_for_output, .Lfunc_end4-gimp_operation_cage_transform_get_required_for_output
	.cfi_endproc

	.globl	gimp_operation_cage_transform_get_bounding_box
	.align	16, 0x90
	.type	gimp_operation_cage_transform_get_bounding_box,@function
gimp_operation_cage_transform_get_bounding_box: # @gimp_operation_cage_transform_get_bounding_box
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
	movq	%rdi, -24(%rbp)
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	gegl_operation_source_get_bounding_box
	movups	(%rax), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_operation_cage_transform_get_bounding_box, .Lfunc_end5-gimp_operation_cage_transform_get_bounding_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_operation_cage_transform_class_init,@function
gimp_operation_cage_transform_class_init: # @gimp_operation_cage_transform_class_init
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
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gegl_operation_composer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.7, %rdi
	movabsq	$gimp_operation_cage_transform_finalize, %rsi
	movabsq	$gimp_operation_cage_transform_set_property, %rcx
	movabsq	$gimp_operation_cage_transform_get_property, %rdx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_cage_transform_process, %rcx
	movabsq	$gimp_operation_cage_transform_get_bounding_box, %rdx
	movabsq	$gimp_operation_cage_transform_get_cached_region, %rsi
	movabsq	$gimp_operation_cage_transform_get_required_for_output, %rdi
	movabsq	$gimp_operation_cage_transform_prepare, %r8
	movq	-24(%rbp), %r9
	movq	%r8, 176(%r9)
	movq	-24(%rbp), %r8
	movq	%rdi, 200(%r8)
	movq	-24(%rbp), %rdi
	movq	%rsi, 208(%rdi)
	movq	-24(%rbp), %rsi
	movq	160(%rsi), %rdi
	andq	$-2, %rdi
	movq	%rdi, 160(%rsi)
	movq	-24(%rbp), %rsi
	movq	%rdx, 184(%rsi)
	movq	-32(%rbp), %rdx
	movq	%rcx, 312(%rdx)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cage_config_get_type
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	-16(%rbp), %rax
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_operation_cage_transform_class_init, .Lfunc_end6-gimp_operation_cage_transform_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_transform_get_property,@function
gimp_operation_cage_transform_get_property: # @gimp_operation_cage_transform_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_transform_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_7
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$182, %edx
	movabsq	$.L.str.19, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_operation_cage_transform_get_property, .Lfunc_end7-gimp_operation_cage_transform_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_transform_set_property,@function
gimp_operation_cage_transform_set_property: # @gimp_operation_cage_transform_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_transform_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_9
.LBB8_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_5
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
	jmp	.LBB8_8
.LBB8_4:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	jmp	.LBB8_8
.LBB8_5:                                # %sw.default
	jmp	.LBB8_6
.LBB8_6:                                # %do.body
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
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$207, %edx
	movabsq	$.L.str.19, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB8_8
.LBB8_8:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_operation_cage_transform_set_property, .Lfunc_end8-gimp_operation_cage_transform_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_transform_finalize,@function
gimp_operation_cage_transform_finalize: # @gimp_operation_cage_transform_finalize
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
	callq	gimp_operation_cage_transform_get_type
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
	movq	gimp_operation_cage_transform_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_operation_cage_transform_finalize, .Lfunc_end9-gimp_operation_cage_transform_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_cage_transform_prepare,@function
gimp_operation_cage_transform_prepare:  # @gimp_operation_cage_transform_prepare
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_operation_cage_transform_get_type
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
	movabsq	$.L.str.21, %rdi
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
	movabsq	$.L.str.1, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gegl_operation_set_format
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	babl_type
	movl	$2, %esi
	movq	%rax, %rdi
	callq	babl_format_n
	movabsq	$.L.str.22, %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gegl_operation_set_format
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_operation_cage_transform_prepare, .Lfunc_end10-gimp_operation_cage_transform_prepare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_operation_cage_transform_process,@function
gimp_operation_cage_transform_process:  # @gimp_operation_cage_transform_process
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gimp_operation_cage_transform_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_cage_config_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$2, %r8d
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%r9d, %edx
	callq	gegl_buffer_iterator_new
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_cage_config_get_bounding_box
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cvttsd2si	(%rax), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-152(%rbp), %rax
	cvttsd2si	8(%rax), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_cage_config_get_n_points
	movl	%eax, -156(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movq	-128(%rbp), %rdi
	callq	gegl_buffer_iterator_next
	cmpl	$0, %eax
	je	.LBB11_19
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-128(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -180(%rbp)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-128(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-128(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -136(%rbp)
.LBB11_3:                               # %while.cond.24
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -180(%rbp)
	cmpl	$0, %eax
	je	.LBB11_18
# BB#4:                                 # %while.body.26
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	$0, -140(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB11_13
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-132(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB11_12
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-136(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB11_12
# BB#7:                                 # %land.lhs.true.33
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-132(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_12
# BB#8:                                 # %land.lhs.true.37
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-136(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_12
# BB#9:                                 # %if.then.42
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-64(%rbp), %rdi
	cvtsi2ssl	-132(%rbp), %xmm0
	cvtsi2ssl	-136(%rbp), %xmm1
	callq	gimp_cage_config_point_inside
	cmpl	$0, %eax
	je	.LBB11_11
# BB#10:                                # %if.then.47
                                        #   in Loop: Header=BB11_3 Depth=2
	cvtsd2ss	-120(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, (%rax)
	cvtsd2ss	-112(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movl	$1, -140(%rbp)
.LBB11_11:                              # %if.end
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.54
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.55
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	$0, -140(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.57
                                        #   in Loop: Header=BB11_3 Depth=2
	cvtsi2ssl	-132(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, (%rax)
	cvtsi2ssl	-136(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movss	%xmm0, 4(%rax)
.LBB11_15:                              # %if.end.62
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -132(%rbp)
	movl	-132(%rbp), %ecx
	movq	-128(%rbp), %rax
	movl	56(%rax), %edx
	movq	-128(%rbp), %rax
	addl	64(%rax), %edx
	cmpl	%edx, %ecx
	jl	.LBB11_17
# BB#16:                                # %if.then.72
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-128(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -136(%rbp)
.LBB11_17:                              # %if.end.77
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_3
.LBB11_18:                              # %while.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_19:                              # %while.end.78
	movl	$80, %eax
	movl	%eax, %esi
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$8, %edx
	movl	%edx, %edi
	callq	g_slice_alloc
	movq	%rax, -88(%rbp)
	movl	-156(%rbp), %edx
	shll	$1, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movabsq	$.L.str.21, %rdi
	movq	%rax, -96(%rbp)
	callq	babl_type
	movl	-156(%rbp), %edx
	shll	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	babl_format_n
	movq	%rax, -104(%rbp)
	movl	-76(%rbp), %edx
	movl	%edx, -136(%rbp)
.LBB11_20:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_22 Depth 2
	movl	-136(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	-68(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_34
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB11_20 Depth=1
	cvtsi2sdl	-136(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movl	-136(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -280(%rbp)
	movl	-136(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -296(%rbp)
	cvtsi2sdl	-80(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)
	cvtsi2sdl	-136(%rbp), %xmm0
	movsd	%xmm0, -312(%rbp)
	cvtsi2sdl	-80(%rbp), %xmm0
	movsd	%xmm0, -320(%rbp)
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_cage_transform_compute_destination
	movsd	%xmm0, -336(%rbp)
	movsd	%xmm1, -328(%rbp)
	movq	-336(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_cage_transform_compute_destination
	movsd	%xmm0, -352(%rbp)
	movsd	%xmm1, -344(%rbp)
	movq	-352(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-344(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB11_22:                              # %for.cond.114
                                        #   Parent Loop BB11_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-132(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-72(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_27
# BB#23:                                # %for.body.121
                                        #   in Loop: Header=BB11_22 Depth=2
	movq	-320(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -304(%rbp)
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -320(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_cage_transform_compute_destination
	movsd	%xmm0, -368(%rbp)
	movsd	%xmm1, -360(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_cage_transform_compute_destination
	movsd	%xmm0, -384(%rbp)
	movsd	%xmm1, -376(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-64(%rbp), %rdi
	cvtsi2ssl	-132(%rbp), %xmm0
	cvtsi2ssl	-136(%rbp), %xmm1
	callq	gimp_cage_config_point_inside
	cmpl	$0, %eax
	je	.LBB11_25
# BB#24:                                # %if.then.136
                                        #   in Loop: Header=BB11_22 Depth=2
	leaq	-304(%rbp), %rax
	leaq	-240(%rbp), %rcx
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	-88(%rbp), %r9
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-200(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-288(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-280(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-216(%rbp), %xmm7       # xmm7 = mem[0],zero
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	(%rax), %r8
	movq	%r8, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 24(%rsp)
	movl	-412(%rbp), %ecx        # 4-byte Reload
	movq	%r9, %r8
	callq	gimp_operation_cage_transform_interpolate_source_coords_recurs
	leaq	-320(%rbp), %rax
	leaq	-256(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	-88(%rbp), %r9
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-200(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-304(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-296(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-240(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-232(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	(%rax), %r8
	movq	%r8, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r8
	movq	%r8, 16(%rsp)
	movq	8(%rax), %r8
	movq	%r8, 24(%rsp)
	movq	%r9, %r8
	callq	gimp_operation_cage_transform_interpolate_source_coords_recurs
.LBB11_25:                              # %if.end.137
                                        #   in Loop: Header=BB11_22 Depth=2
	jmp	.LBB11_26
.LBB11_26:                              # %for.inc
                                        #   in Loop: Header=BB11_22 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB11_22
.LBB11_27:                              # %for.end
                                        #   in Loop: Header=BB11_20 Depth=1
	movl	$20, %eax
	movl	-136(%rbp), %ecx
	subl	-76(%rbp), %ecx
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-428(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_32
# BB#28:                                # %if.then.143
                                        #   in Loop: Header=BB11_20 Depth=1
	xorps	%xmm0, %xmm0
	movl	-136(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -392(%rbp)
	movsd	-392(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_31
# BB#29:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB11_20 Depth=1
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-392(%rbp), %xmm0
	jbe	.LBB11_31
# BB#30:                                # %if.then.154
                                        #   in Loop: Header=BB11_20 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-56(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB11_31:                              # %if.end.157
                                        #   in Loop: Header=BB11_20 Depth=1
	jmp	.LBB11_32
.LBB11_32:                              # %if.end.158
                                        #   in Loop: Header=BB11_20 Depth=1
	jmp	.LBB11_33
.LBB11_33:                              # %for.inc.159
                                        #   in Loop: Header=BB11_20 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB11_20
.LBB11_34:                              # %for.end.161
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$8, %ecx
	movl	%ecx, %edi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slice_free1
	movl	$80, %ecx
	movl	%ecx, %esi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$1, %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_operation_cage_transform_process, .Lfunc_end11-gimp_operation_cage_transform_process
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	movl	$.L.str.20, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_cage_transform_compute_destination,@function
gimp_cage_transform_compute_destination: # @gimp_cage_transform_compute_destination
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	$16, %r8d
	movl	%r8d, %r9d
	leaq	-80(%rbp), %r10
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset
	movq	-40(%rbp), %rdi
	callq	gimp_cage_config_get_n_points
	leaq	-112(%rbp), %rsi
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movl	%eax, -84(%rbp)
	movl	$1, -100(%rbp)
	movl	$1, -104(%rbp)
	cvttsd2si	-32(%rbp), %eax
	movl	%eax, -112(%rbp)
	cvttsd2si	-24(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r9d        # 4-byte Reload
	callq	gegl_buffer_get
	movl	$0, -88(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -96(%rbp)
	movslq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm0
	movq	-96(%rbp), %rax
	mulsd	16(%rax), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movslq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm0
	movq	-96(%rbp), %rax
	mulsd	24(%rax), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-88(%rbp), %edx
	addl	-84(%rbp), %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm0
	movq	-96(%rbp), %rax
	mulsd	48(%rax), %xmm0
	movq	-96(%rbp), %rax
	mulsd	32(%rax), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-88(%rbp), %edx
	addl	-84(%rbp), %edx
	movslq	%edx, %rax
	movq	-48(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm0
	movq	-96(%rbp), %rax
	mulsd	48(%rax), %xmm0
	movq	-96(%rbp), %rax
	mulsd	40(%rax), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movups	-80(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_cage_transform_compute_destination, .Lfunc_end13-gimp_cage_transform_compute_destination
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4611686018427387904     # double 2
.LCPI14_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_operation_cage_transform_interpolate_source_coords_recurs,@function
gimp_operation_cage_transform_interpolate_source_coords_recurs: # @gimp_operation_cage_transform_interpolate_source_coords_recurs
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
	subq	$368, %rsp              # imm = 0x170
	leaq	32(%rbp), %rax
	leaq	16(%rbp), %r9
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -40(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -56(%rbp)
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movq	.Lgimp_operation_cage_transform_interpolate_source_coords_recurs.rect, %rdx
	movq	%rdx, -120(%rbp)
	movq	.Lgimp_operation_cage_transform_interpolate_source_coords_recurs.rect+8, %rdx
	movq	%rdx, -112(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdx
	movl	(%rdx), %ecx
	movq	-88(%rbp), %rdx
	addl	8(%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%r9, -304(%rbp)         # 8-byte Spill
	jbe	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_56
.LBB14_2:                               # %if.end
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	addl	8(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_4
# BB#3:                                 # %if.then.10
	jmp	.LBB14_56
.LBB14_4:                               # %if.end.11
	movq	-296(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-88(%rbp), %rcx
	addl	8(%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_6
# BB#5:                                 # %if.then.19
	jmp	.LBB14_56
.LBB14_6:                               # %if.end.20
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-88(%rbp), %rax
	addl	12(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_8
# BB#7:                                 # %if.then.26
	jmp	.LBB14_56
.LBB14_8:                               # %if.end.27
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-88(%rbp), %rax
	addl	12(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_10
# BB#9:                                 # %if.then.35
	jmp	.LBB14_56
.LBB14_10:                              # %if.end.36
	movq	-296(%rbp), %rax        # 8-byte Reload
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-88(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-88(%rbp), %rcx
	addl	12(%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_12
# BB#11:                                # %if.then.44
	jmp	.LBB14_56
.LBB14_12:                              # %if.end.45
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_14
# BB#13:                                # %if.then.51
	jmp	.LBB14_56
.LBB14_14:                              # %if.end.52
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_16
# BB#15:                                # %if.then.58
	jmp	.LBB14_56
.LBB14_16:                              # %if.end.59
	movq	-296(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-88(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_18
# BB#17:                                # %if.then.65
	jmp	.LBB14_56
.LBB14_18:                              # %if.end.66
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_20
# BB#19:                                # %if.then.72
	jmp	.LBB14_56
.LBB14_20:                              # %if.end.73
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_22
# BB#21:                                # %if.then.79
	jmp	.LBB14_56
.LBB14_22:                              # %if.end.80
	movq	-296(%rbp), %rax        # 8-byte Reload
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-88(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_24
# BB#23:                                # %if.then.86
	jmp	.LBB14_56
.LBB14_24:                              # %if.end.87
	cvttsd2si	-32(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	%eax, -124(%rbp)
	cvttsd2si	-24(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	%eax, -132(%rbp)
	cvtsi2sdl	-124(%rbp), %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB14_26
# BB#25:                                # %if.then.96
	cvttsd2si	-64(%rbp), %eax
	movl	%eax, -124(%rbp)
.LBB14_26:                              # %if.end.99
	cvtsi2sdl	-124(%rbp), %xmm0
	movq	-296(%rbp), %rax        # 8-byte Reload
	ucomisd	(%rax), %xmm0
	jbe	.LBB14_28
# BB#27:                                # %if.then.104
	movq	-296(%rbp), %rax        # 8-byte Reload
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -124(%rbp)
.LBB14_28:                              # %if.end.107
	cvtsi2sdl	-128(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_30
# BB#29:                                # %if.then.112
	cvttsd2si	-64(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB14_30:                              # %if.end.115
	cvtsi2sdl	-128(%rbp), %xmm0
	movq	-296(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_32
# BB#31:                                # %if.then.120
	movq	-296(%rbp), %rax        # 8-byte Reload
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -128(%rbp)
.LBB14_32:                              # %if.end.123
	cvtsi2sdl	-132(%rbp), %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB14_34
# BB#33:                                # %if.then.128
	cvttsd2si	-56(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB14_34:                              # %if.end.131
	cvtsi2sdl	-132(%rbp), %xmm0
	movq	-296(%rbp), %rax        # 8-byte Reload
	ucomisd	8(%rax), %xmm0
	jbe	.LBB14_36
# BB#35:                                # %if.then.136
	movq	-296(%rbp), %rax        # 8-byte Reload
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -132(%rbp)
.LBB14_36:                              # %if.end.139
	cvtsi2sdl	-136(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_38
# BB#37:                                # %if.then.144
	cvttsd2si	-56(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB14_38:                              # %if.end.147
	cvtsi2sdl	-136(%rbp), %xmm0
	movq	-296(%rbp), %rax        # 8-byte Reload
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_40
# BB#39:                                # %if.then.152
	movq	-296(%rbp), %rax        # 8-byte Reload
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -136(%rbp)
.LBB14_40:                              # %if.end.155
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	je	.LBB14_42
# BB#41:                                # %lor.lhs.false
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB14_43
.LBB14_42:                              # %if.then.160
	jmp	.LBB14_56
.LBB14_43:                              # %if.end.161
	cmpl	$5, -92(%rbp)
	jle	.LBB14_45
# BB#44:                                # %if.then.164
	jmp	.LBB14_56
.LBB14_45:                              # %if.end.165
	movl	-128(%rbp), %eax
	subl	-124(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB14_55
# BB#46:                                # %land.lhs.true
	movl	-136(%rbp), %eax
	subl	-132(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB14_55
# BB#47:                                # %if.then.171
	xorps	%xmm0, %xmm0
	movsd	.LCPI14_1, %xmm1        # xmm1 = mem[0],zero
	movl	-128(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -116(%rbp)
	cvtsi2sdl	-128(%rbp), %xmm2
	movsd	%xmm2, -176(%rbp)
	cvtsi2sdl	-136(%rbp), %xmm2
	movsd	%xmm2, -184(%rbp)
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm2
	movq	-296(%rbp), %rcx        # 8-byte Reload
	mulsd	8(%rcx), %xmm2
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	(%rcx), %xmm3
	mulsd	-56(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	(%rcx), %xmm3           # xmm3 = mem[0],zero
	subsd	-64(%rbp), %xmm3
	mulsd	-24(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, -168(%rbp)
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-176(%rbp), %xmm2
	mulsd	8(%rcx), %xmm2
	movsd	-176(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	(%rcx), %xmm3
	mulsd	-56(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	(%rcx), %xmm3           # xmm3 = mem[0],zero
	subsd	-64(%rbp), %xmm3
	mulsd	-184(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	divsd	-168(%rbp), %xmm2
	movsd	%xmm2, -144(%rbp)
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-176(%rbp), %xmm2
	mulsd	8(%rcx), %xmm2
	movsd	-176(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	(%rcx), %xmm3
	mulsd	-24(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	(%rcx), %xmm3           # xmm3 = mem[0],zero
	subsd	-32(%rbp), %xmm3
	mulsd	-184(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movd	%xmm2, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm2
	divsd	-168(%rbp), %xmm2
	movsd	%xmm2, -152(%rbp)
	subsd	-144(%rbp), %xmm1
	subsd	-152(%rbp), %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_50
# BB#48:                                # %land.lhs.true.228
	xorps	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_50
# BB#49:                                # %land.lhs.true.231
	xorps	%xmm0, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB14_53
.LBB14_50:                              # %lor.lhs.false.234
	xorps	%xmm0, %xmm0
	ucomisd	-144(%rbp), %xmm0
	jbe	.LBB14_54
# BB#51:                                # %land.lhs.true.237
	xorps	%xmm0, %xmm0
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB14_54
# BB#52:                                # %land.lhs.true.240
	xorps	%xmm0, %xmm0
	ucomisd	-160(%rbp), %xmm0
	jbe	.LBB14_54
.LBB14_53:                              # %if.then.243
	leaq	-120(%rbp), %rsi
	xorl	%eax, %eax
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-304(%rbp), %rcx        # 8-byte Reload
	mulsd	(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-104(%rbp), %rdx
	movss	%xmm0, (%rdx)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	8(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-104(%rbp), %rdx
	movss	%xmm0, 4(%rdx)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rcx
	movq	-104(%rbp), %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-312(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	callq	gegl_buffer_set
.LBB14_54:                              # %if.end.263
	jmp	.LBB14_56
.LBB14_55:                              # %if.else
	leaq	-280(%rbp), %rax
	leaq	-232(%rbp), %rcx
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -284(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -192(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-296(%rbp), %rsi        # 8-byte Reload
	addsd	(%rsi), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	8(%rsi), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	addsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	addsd	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -224(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -248(%rbp)
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -240(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-304(%rbp), %rdi        # 8-byte Reload
	addsd	(%rdi), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -264(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	8(%rdi), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -256(%rbp)
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	addsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -280(%rbp)
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	addsd	-8(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -272(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movl	-284(%rbp), %r8d
	movq	-104(%rbp), %r9
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-248(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-240(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-200(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-192(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	(%rax), %r10
	movq	%r10, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 24(%rsp)
	movl	%r8d, %ecx
	movq	%r9, %r8
	callq	gimp_operation_cage_transform_interpolate_source_coords_recurs
	leaq	-264(%rbp), %rax
	leaq	-216(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %r8
	movl	-284(%rbp), %ecx
	movq	-104(%rbp), %r9
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-200(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-192(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-64(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-56(%rbp), %xmm7        # xmm7 = mem[0],zero
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	(%rax), %r8
	movq	%r8, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r8
	movq	%r8, 16(%rsp)
	movq	8(%rax), %r8
	movq	%r8, 24(%rsp)
	movq	%r9, %r8
	callq	gimp_operation_cage_transform_interpolate_source_coords_recurs
	leaq	-280(%rbp), %rax
	leaq	-232(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %r8
	movl	-284(%rbp), %ecx
	movq	-104(%rbp), %r9
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-200(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-192(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-264(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-256(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-216(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-208(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	(%rax), %r8
	movq	%r8, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r8
	movq	%r8, 16(%rsp)
	movq	8(%rax), %r8
	movq	%r8, 24(%rsp)
	movq	%r9, %r8
	callq	gimp_operation_cage_transform_interpolate_source_coords_recurs
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movl	-284(%rbp), %ecx
	movq	-104(%rbp), %r8
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-264(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-256(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-216(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-208(%rbp), %xmm7       # xmm7 = mem[0],zero
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r9
	movq	%r9, (%rsp)
	movq	8(%rax), %r9
	movq	%r9, 8(%rsp)
	movq	-296(%rbp), %r9         # 8-byte Reload
	movq	(%r9), %r10
	movq	%r10, 16(%rsp)
	movq	8(%r9), %r10
	movq	%r10, 24(%rsp)
	callq	gimp_operation_cage_transform_interpolate_source_coords_recurs
.LBB14_56:                              # %if.end.325
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_operation_cage_transform_interpolate_source_coords_recurs, .Lfunc_end14-gimp_operation_cage_transform_interpolate_source_coords_recurs
	.cfi_endproc

	.type	gimp_operation_cage_transform_get_type.g_define_type_id__volatile,@object # @gimp_operation_cage_transform_get_type.g_define_type_id__volatile
	.local	gimp_operation_cage_transform_get_type.g_define_type_id__volatile
	.comm	gimp_operation_cage_transform_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationCageTransform"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"input"
	.size	.L.str.1, 6

	.type	gimp_operation_cage_transform_parent_class,@object # @gimp_operation_cage_transform_parent_class
	.local	gimp_operation_cage_transform_parent_class
	.comm	gimp_operation_cage_transform_parent_class,8,8
	.type	GimpOperationCageTransform_private_offset,@object # @GimpOperationCageTransform_private_offset
	.local	GimpOperationCageTransform_private_offset
	.comm	GimpOperationCageTransform_private_offset,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp:cage-transform"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"categories"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"transform"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"description"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Convert a set of coefficient buffer to a coordinate buffer for the GIMP cage tool"
	.size	.L.str.7, 82

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"config"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Config"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"A GimpCageConfig object, that define the transformation"
	.size	.L.str.10, 56

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fill-plain-color"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Fill with plain color"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Fill the original position of the cage with a plain color"
	.size	.L.str.13, 58

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"progress"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Progress"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Progress indicator, and a bad hack"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.17, 54

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimpoperationcagetransform.c"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"property"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Gimp-GEGL"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"float"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"output"
	.size	.L.str.22, 7

	.type	.Lgimp_operation_cage_transform_interpolate_source_coords_recurs.rect,@object # @gimp_operation_cage_transform_interpolate_source_coords_recurs.rect
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lgimp_operation_cage_transform_interpolate_source_coords_recurs.rect:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	.Lgimp_operation_cage_transform_interpolate_source_coords_recurs.rect, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
