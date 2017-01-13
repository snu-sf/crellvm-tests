	.text
	.file	"gimpoperationbrightnesscontrast.bc"
	.globl	gimp_operation_brightness_contrast_get_type
	.align	16, 0x90
	.type	gimp_operation_brightness_contrast_get_type,@function
gimp_operation_brightness_contrast_get_type: # @gimp_operation_brightness_contrast_get_type
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
	movq	gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_operation_brightness_contrast_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_brightness_contrast_init, %rcx
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
	movabsq	$gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_brightness_contrast_get_type, .Lfunc_end0-gimp_operation_brightness_contrast_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_brightness_contrast_class_intern_init,@function
gimp_operation_brightness_contrast_class_intern_init: # @gimp_operation_brightness_contrast_class_intern_init
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
	movq	%rax, gimp_operation_brightness_contrast_parent_class
	cmpl	$0, GimpOperationBrightnessContrast_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationBrightnessContrast_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_brightness_contrast_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_brightness_contrast_class_intern_init, .Lfunc_end1-gimp_operation_brightness_contrast_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_brightness_contrast_init,@function
gimp_operation_brightness_contrast_init: # @gimp_operation_brightness_contrast_init
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
	.size	gimp_operation_brightness_contrast_init, .Lfunc_end2-gimp_operation_brightness_contrast_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_brightness_contrast_class_init,@function
gimp_operation_brightness_contrast_class_init: # @gimp_operation_brightness_contrast_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
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
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdi
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
	movabsq	$gimp_operation_brightness_contrast_process, %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_brightness_contrast_config_get_type
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
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
.Lfunc_end3:
	.size	gimp_operation_brightness_contrast_class_init, .Lfunc_end3-gimp_operation_brightness_contrast_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_operation_brightness_contrast_process,@function
gimp_operation_brightness_contrast_process: # @gimp_operation_brightness_contrast_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_operation_point_filter_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_brightness_contrast_config_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_6
.LBB4_2:                                # %if.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
.LBB4_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB4_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	callq	gimp_operation_brightness_contrast_map
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	callq	gimp_operation_brightness_contrast_map
	movq	-88(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-80(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	callq	gimp_operation_brightness_contrast_map
	movq	-88(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB4_3
.LBB4_5:                                # %while.end
	movl	$1, -4(%rbp)
.LBB4_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_brightness_contrast_process, .Lfunc_end4-gimp_operation_brightness_contrast_process
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
.LCPI5_2:
	.quad	4605249457297304856     # double 0.78539816339744828
	.text
	.align	16, 0x90
	.type	gimp_operation_brightness_contrast_map,@function
gimp_operation_brightness_contrast_map: # @gimp_operation_brightness_contrast_map
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
	subq	$32, %rsp
	xorps	%xmm3, %xmm3
	movss	%xmm0, -4(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	ucomisd	-16(%rbp), %xmm3
	jbe	.LBB5_2
# BB#1:                                 # %if.then
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-4(%rbp), %xmm1
	addsd	-16(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-4(%rbp), %xmm1
	cvtss2sd	-4(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB5_3:                                # %if.end
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	addsd	-24(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	tan
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_operation_brightness_contrast_map, .Lfunc_end5-gimp_operation_brightness_contrast_map
	.cfi_endproc

	.type	gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile,@object # @gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile
	.local	gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile
	.comm	gimp_operation_brightness_contrast_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationBrightnessContrast"
	.size	.L.str, 32

	.type	gimp_operation_brightness_contrast_parent_class,@object # @gimp_operation_brightness_contrast_parent_class
	.local	gimp_operation_brightness_contrast_parent_class
	.comm	gimp_operation_brightness_contrast_parent_class,8,8
	.type	GimpOperationBrightnessContrast_private_offset,@object # @GimpOperationBrightnessContrast_private_offset
	.local	GimpOperationBrightnessContrast_private_offset
	.comm	GimpOperationBrightnessContrast_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp:brightness-contrast"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"categories"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"description"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP Brightness-Contrast operation"
	.size	.L.str.6, 35

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
	.asciz	"The config object"
	.size	.L.str.9, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
