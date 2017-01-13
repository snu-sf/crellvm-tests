	.text
	.file	"gimpoperationhuesaturation.bc"
	.globl	gimp_operation_hue_saturation_get_type
	.align	16, 0x90
	.type	gimp_operation_hue_saturation_get_type,@function
gimp_operation_hue_saturation_get_type: # @gimp_operation_hue_saturation_get_type
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
	movq	gimp_operation_hue_saturation_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_hue_saturation_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_operation_point_filter_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$400, %edx              # imm = 0x190
	movabsq	$gimp_operation_hue_saturation_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_hue_saturation_init, %rcx
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
	movabsq	$gimp_operation_hue_saturation_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_hue_saturation_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_hue_saturation_get_type, .Lfunc_end0-gimp_operation_hue_saturation_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_hue_saturation_class_intern_init,@function
gimp_operation_hue_saturation_class_intern_init: # @gimp_operation_hue_saturation_class_intern_init
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
	movq	%rax, gimp_operation_hue_saturation_parent_class
	cmpl	$0, GimpOperationHueSaturation_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationHueSaturation_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_hue_saturation_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_hue_saturation_class_intern_init, .Lfunc_end1-gimp_operation_hue_saturation_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_hue_saturation_init,@function
gimp_operation_hue_saturation_init:     # @gimp_operation_hue_saturation_init
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
	.size	gimp_operation_hue_saturation_init, .Lfunc_end2-gimp_operation_hue_saturation_init
	.cfi_endproc

	.globl	gimp_operation_hue_saturation_map
	.align	16, 0x90
	.type	gimp_operation_hue_saturation_map,@function
gimp_operation_hue_saturation_map:      # @gimp_operation_hue_saturation_map
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_hue_saturation_config_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_operation_hue_saturation_map, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_operation_hue_saturation_map, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_operation_hue_saturation_map, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_to_hsl
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	map_hue
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	map_saturation
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	map_lightness
	leaq	-64(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rsi
	callq	gimp_hsl_to_rgb
.LBB3_23:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_hue_saturation_map, .Lfunc_end3-gimp_operation_hue_saturation_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	map_hue,@function
map_hue:                                # @map_hue
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
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movl	-20(%rbp), %esi
	movl	%esi, %edi
	movq	-16(%rbp), %rax
	addsd	48(%rax,%rdi,8), %xmm0
	divsd	%xmm2, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	ucomisd	-32(%rbp), %xmm1
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_4
# BB#3:                                 # %if.then.6
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.7
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB4_5:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end4:
	.size	map_hue, .Lfunc_end4-map_hue
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	map_saturation,@function
map_saturation:                         # @map_saturation
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
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	104(%rdi), %xmm0        # xmm0 = mem[0],zero
	movl	-12(%rbp), %esi
	movl	%esi, %edi
	movq	-8(%rbp), %rax
	addsd	104(%rax,%rdi,8), %xmm0
	movsd	%xmm0, -32(%rbp)
	movaps	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_2
# BB#1:                                 # %cond.true
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB5_6
.LBB5_2:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB5_4
# BB#3:                                 # %cond.true.5
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false.6
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB5_5:                                # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB5_6:                                # %cond.end.7
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end5:
	.size	map_saturation, .Lfunc_end5-map_saturation
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4611686018427387904     # double 2
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	map_lightness,@function
map_lightness:                          # @map_lightness
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
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movsd	160(%rdi), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %esi
	movl	%esi, %edi
	movq	-16(%rbp), %rax
	addsd	160(%rax,%rdi,8), %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	ucomisd	-40(%rbp), %xmm1
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB6_3:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end6:
	.size	map_lightness, .Lfunc_end6-map_lightness
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_hue_saturation_class_init,@function
gimp_operation_hue_saturation_class_init: # @gimp_operation_hue_saturation_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gegl_operation_point_filter_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movabsq	$gimp_operation_point_filter_get_property, %rbx
	movabsq	$gimp_operation_point_filter_set_property, %r14
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -80(%rbp)         # 8-byte Spill
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_hue_saturation_process, %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_hue_saturation_config_get_type
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_operation_hue_saturation_class_init, .Lfunc_end7-gimp_operation_hue_saturation_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
.LCPI8_1:
	.quad	4618441417868443648     # double 6
.LCPI8_2:
	.quad	4602678819172646912     # double 0.5
.LCPI8_3:
	.quad	4607182418800017408     # double 1
.LCPI8_4:
	.quad	-4620693217682128896    # double -0.5
	.text
	.align	16, 0x90
	.type	gimp_operation_hue_saturation_process,@function
gimp_operation_hue_saturation_process:  # @gimp_operation_hue_saturation_process
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gimp_operation_point_filter_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_hue_saturation_config_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_28
.LBB8_2:                                # %if.end
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	216(%rax), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
.LBB8_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB8_27
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB8_3 Depth=1
	leaq	-128(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	xorps	%xmm0, %xmm0
	movl	$0, -176(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -184(%rbp)
	movss	%xmm0, -188(%rbp)
	movss	%xmm0, -192(%rbp)
	movq	-80(%rbp), %rax
	cvtss2sd	(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-80(%rbp), %rax
	cvtss2sd	4(%rax), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-80(%rbp), %rax
	cvtss2sd	8(%rax), %xmm0
	movsd	%xmm0, -112(%rbp)
	callq	gimp_rgb_to_hsl
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-160(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movl	$0, -172(%rbp)
.LBB8_5:                                # %for.cond
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$7, -172(%rbp)
	jge	.LBB8_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=2
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-172(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtss2sd	-92(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_12
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB8_3 Depth=1
	xorps	%xmm0, %xmm0
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cvtss2sd	-92(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtss2sd	-92(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_10
# BB#9:                                 # %if.then.26
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movl	$1, -184(%rbp)
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-200(%rbp), %xmm2
	cvtss2sd	-92(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	cvtss2sd	-92(%rbp), %xmm3
	mulsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -192(%rbp)
	cvtss2sd	-192(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -188(%rbp)
	jmp	.LBB8_11
.LBB8_10:                               # %if.else
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -184(%rbp)
.LBB8_11:                               # %if.end.38
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_14
.LBB8_12:                               # %if.end.39
                                        #   in Loop: Header=BB8_5 Depth=2
	jmp	.LBB8_13
.LBB8_13:                               # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB8_5
.LBB8_14:                               # %for.end
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	$6, -176(%rbp)
	jl	.LBB8_16
# BB#15:                                # %if.then.42
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -176(%rbp)
	movl	$0, -184(%rbp)
.LBB8_16:                               # %if.end.43
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	$6, -180(%rbp)
	jl	.LBB8_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -180(%rbp)
.LBB8_18:                               # %if.end.47
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB8_25
# BB#19:                                # %if.then.51
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	-176(%rbp), %esi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_hue
	movsd	%xmm0, -208(%rbp)
	movq	-72(%rbp), %rdi
	movl	-180(%rbp), %esi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_hue
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-216(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)
	ucomisd	-224(%rbp), %xmm1
	jbe	.LBB8_21
# BB#20:                                # %if.then.59
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	jmp	.LBB8_24
.LBB8_21:                               # %if.else.61
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_23
# BB#22:                                # %if.then.64
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	addsd	-216(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
.LBB8_23:                               # %if.end.66
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.67
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtss2sd	-188(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtss2sd	-192(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movq	-72(%rbp), %rdi
	movl	-176(%rbp), %esi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_saturation
	cvtss2sd	-188(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-72(%rbp), %rdi
	movl	-180(%rbp), %esi
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	map_saturation
	cvtss2sd	-192(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	movq	-72(%rbp), %rdi
	movl	-176(%rbp), %esi
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_lightness
	cvtss2sd	-188(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-72(%rbp), %rdi
	movl	-180(%rbp), %esi
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	map_lightness
	cvtss2sd	-192(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	jmp	.LBB8_26
.LBB8_25:                               # %if.else.92
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rbp), %rdi
	movl	-176(%rbp), %esi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_hue
	movsd	%xmm0, -160(%rbp)
	movq	-72(%rbp), %rdi
	movl	-176(%rbp), %esi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_saturation
	movsd	%xmm0, -152(%rbp)
	movq	-72(%rbp), %rdi
	movl	-176(%rbp), %esi
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	map_lightness
	movsd	%xmm0, -144(%rbp)
.LBB8_26:                               # %if.end.102
                                        #   in Loop: Header=BB8_3 Depth=1
	leaq	-160(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	gimp_hsl_to_rgb
	cvtsd2ss	-128(%rbp), %xmm0
	movq	-88(%rbp), %rsi
	movss	%xmm0, (%rsi)
	cvtsd2ss	-120(%rbp), %xmm0
	movq	-88(%rbp), %rsi
	movss	%xmm0, 4(%rsi)
	cvtsd2ss	-112(%rbp), %xmm0
	movq	-88(%rbp), %rsi
	movss	%xmm0, 8(%rsi)
	movq	-80(%rbp), %rsi
	movss	12(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rsi
	movss	%xmm0, 12(%rsi)
	movq	-80(%rbp), %rsi
	addq	$16, %rsi
	movq	%rsi, -80(%rbp)
	movq	-88(%rbp), %rsi
	addq	$16, %rsi
	movq	%rsi, -88(%rbp)
	jmp	.LBB8_3
.LBB8_27:                               # %while.end
	movl	$1, -4(%rbp)
.LBB8_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_operation_hue_saturation_process, .Lfunc_end8-gimp_operation_hue_saturation_process
	.cfi_endproc

	.type	gimp_operation_hue_saturation_get_type.g_define_type_id__volatile,@object # @gimp_operation_hue_saturation_get_type.g_define_type_id__volatile
	.local	gimp_operation_hue_saturation_get_type.g_define_type_id__volatile
	.comm	gimp_operation_hue_saturation_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationHueSaturation"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_operation_hue_saturation_map,@object # @__func__.gimp_operation_hue_saturation_map
.L__func__.gimp_operation_hue_saturation_map:
	.asciz	"gimp_operation_hue_saturation_map"
	.size	.L__func__.gimp_operation_hue_saturation_map, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_HUE_SATURATION_CONFIG (config)"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color != NULL"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"result != NULL"
	.size	.L.str.4, 15

	.type	gimp_operation_hue_saturation_parent_class,@object # @gimp_operation_hue_saturation_parent_class
	.local	gimp_operation_hue_saturation_parent_class
	.comm	gimp_operation_hue_saturation_parent_class,8,8
	.type	GimpOperationHueSaturation_private_offset,@object # @GimpOperationHueSaturation_private_offset
	.local	GimpOperationHueSaturation_private_offset
	.comm	GimpOperationHueSaturation_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp:hue-saturation"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"categories"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"description"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP Hue-Saturation operation"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"config"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Config"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The config object"
	.size	.L.str.13, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
