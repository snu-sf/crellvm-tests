	.text
	.file	"gimpbrightnesscontrastconfig.bc"
	.globl	gimp_brightness_contrast_config_get_type
	.align	16, 0x90
	.type	gimp_brightness_contrast_config_get_type,@function
gimp_brightness_contrast_config_get_type: # @gimp_brightness_contrast_config_get_type
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
	movq	gimp_brightness_contrast_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brightness_contrast_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_brightness_contrast_config_class_intern_init, %rdi
	movl	$56, %r8d
	movabsq	$gimp_brightness_contrast_config_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_brightness_contrast_config_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_brightness_contrast_config_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brightness_contrast_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brightness_contrast_config_get_type, .Lfunc_end0-gimp_brightness_contrast_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_config_class_intern_init,@function
gimp_brightness_contrast_config_class_intern_init: # @gimp_brightness_contrast_config_class_intern_init
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
	movq	%rax, gimp_brightness_contrast_config_parent_class
	cmpl	$0, GimpBrightnessContrastConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrightnessContrastConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brightness_contrast_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brightness_contrast_config_class_intern_init, .Lfunc_end1-gimp_brightness_contrast_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_config_init,@function
gimp_brightness_contrast_config_init:   # @gimp_brightness_contrast_config_init
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
	.size	gimp_brightness_contrast_config_init, .Lfunc_end2-gimp_brightness_contrast_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_config_iface_init,@function
gimp_brightness_contrast_config_iface_init: # @gimp_brightness_contrast_config_iface_init
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
	movabsq	$gimp_brightness_contrast_config_equal, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brightness_contrast_config_iface_init, .Lfunc_end3-gimp_brightness_contrast_config_iface_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4605249457297304856     # double 0.78539816339744828
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4611686018427387904     # double 2
.LCPI4_3:
	.quad	4602678819172646912     # double 0.5
.LCPI4_4:
	.quad	-4620693217682128896    # double -0.5
	.text
	.globl	gimp_brightness_contrast_config_to_levels_config
	.align	16, 0x90
	.type	gimp_brightness_contrast_config_to_levels_config,@function
gimp_brightness_contrast_config_to_levels_config: # @gimp_brightness_contrast_config_to_levels_config
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_brightness_contrast_config_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brightness_contrast_config_to_levels_config, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_levels_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -32(%rbp)
	movq	-16(%rbp), %rax
	addsd	48(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	tan
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_18
# BB#13:                                # %if.then.17
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-40(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB4_15
# BB#14:                                # %if.then.23
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	mulsd	-40(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 88(%rax)
.LBB4_15:                               # %if.end.31
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm2, 168(%rax)
	movaps	%xmm1, %xmm2
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_17
# BB#16:                                # %if.then.36
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	mulsd	-40(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 128(%rax)
.LBB4_17:                               # %if.end.46
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 208(%rax)
	jmp	.LBB4_23
.LBB4_18:                               # %if.else.48
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-40(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB4_20
# BB#19:                                # %if.then.52
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -48(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-40(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 88(%rax)
.LBB4_20:                               # %if.end.60
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm2, 168(%rax)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	movaps	%xmm1, %xmm3
	mulsd	-40(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_22
# BB#21:                                # %if.then.68
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 128(%rax)
.LBB4_22:                               # %if.end.76
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 208(%rax)
.LBB4_23:                               # %if.end.79
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brightness_contrast_config_to_levels_config, .Lfunc_end4-gimp_brightness_contrast_config_to_levels_config
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4616189618054758400    # double -1
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_brightness_contrast_config_class_init,@function
gimp_brightness_contrast_config_class_init: # @gimp_brightness_contrast_config_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.5, %rdx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$263, %ecx              # imm = 0x107
	movabsq	$.L.str.3, %r8
	movabsq	$gimp_brightness_contrast_config_get_property, %r9
	movabsq	$gimp_brightness_contrast_config_set_property, %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 160(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.7, %rdx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brightness_contrast_config_class_init, .Lfunc_end5-gimp_brightness_contrast_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_config_set_property,@function
gimp_brightness_contrast_config_set_property: # @gimp_brightness_contrast_config_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_7
.LBB6_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_3
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	jmp	.LBB6_6
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
	jmp	.LBB6_6
.LBB6_3:                                # %sw.default
	jmp	.LBB6_4
.LBB6_4:                                # %do.body
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$142, %edx
	movabsq	$.L.str.10, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brightness_contrast_config_set_property, .Lfunc_end6-gimp_brightness_contrast_config_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_config_get_property,@function
gimp_brightness_contrast_config_get_property: # @gimp_brightness_contrast_config_get_property
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
	callq	gimp_brightness_contrast_config_get_type
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
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_6
.LBB7_3:                                # %sw.default
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$118, %edx
	movabsq	$.L.str.10, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brightness_contrast_config_get_property, .Lfunc_end7-gimp_brightness_contrast_config_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brightness_contrast_config_equal,@function
gimp_brightness_contrast_config_equal:  # @gimp_brightness_contrast_config_equal
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	40(%rax), %xmm0
	jne	.LBB9_2
	jp	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	48(%rax), %xmm0
	jne	.LBB9_2
	jp	.LBB9_2
	jmp	.LBB9_3
.LBB9_2:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.end
	movl	$1, -4(%rbp)
.LBB9_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brightness_contrast_config_equal, .Lfunc_end9-gimp_brightness_contrast_config_equal
	.cfi_endproc

	.type	gimp_brightness_contrast_config_get_type.g_define_type_id__volatile,@object # @gimp_brightness_contrast_config_get_type.g_define_type_id__volatile
	.local	gimp_brightness_contrast_config_get_type.g_define_type_id__volatile
	.comm	gimp_brightness_contrast_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrightnessContrastConfig"
	.size	.L.str, 29

	.type	gimp_brightness_contrast_config_get_type.g_implement_interface_info,@object # @gimp_brightness_contrast_config_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_brightness_contrast_config_get_type.g_implement_interface_info:
	.quad	gimp_brightness_contrast_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_brightness_contrast_config_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_brightness_contrast_config_to_levels_config,@object # @__func__.gimp_brightness_contrast_config_to_levels_config
.L__func__.gimp_brightness_contrast_config_to_levels_config:
	.asciz	"gimp_brightness_contrast_config_to_levels_config"
	.size	.L__func__.gimp_brightness_contrast_config_to_levels_config, 49

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_BRIGHTNESS_CONTRAST_CONFIG (config)"
	.size	.L.str.2, 44

	.type	gimp_brightness_contrast_config_parent_class,@object # @gimp_brightness_contrast_config_parent_class
	.local	gimp_brightness_contrast_config_parent_class
	.comm	gimp_brightness_contrast_config_parent_class,8,8
	.type	GimpBrightnessContrastConfig_private_offset,@object # @GimpBrightnessContrastConfig_private_offset
	.local	GimpBrightnessContrastConfig_private_offset
	.comm	GimpBrightnessContrastConfig_private_offset,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-brightness-contrast"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"brightness"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Brightness"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"contrast"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Contrast"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpbrightnesscontrastconfig.c"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
