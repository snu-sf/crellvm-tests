	.text
	.file	"gimpsourcecore.bc"
	.globl	gimp_source_core_get_type
	.align	16, 0x90
	.type	gimp_source_core_get_type,@function
gimp_source_core_get_type:              # @gimp_source_core_get_type
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
	movq	gimp_source_core_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_source_core_get_type.g_define_type_id__volatile, %rax
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
	movl	$264, %edx              # imm = 0x108
	movabsq	$gimp_source_core_class_intern_init, %rdi
	movl	$6552, %r8d             # imm = 0x1998
	movabsq	$gimp_source_core_init, %rcx
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
	movabsq	$gimp_source_core_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_source_core_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_source_core_get_type, .Lfunc_end0-gimp_source_core_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_class_intern_init,@function
gimp_source_core_class_intern_init:     # @gimp_source_core_class_intern_init
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
	movq	%rax, gimp_source_core_parent_class
	cmpl	$0, GimpSourceCore_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSourceCore_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_source_core_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_source_core_class_intern_init, .Lfunc_end1-gimp_source_core_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_init,@function
gimp_source_core_init:                  # @gimp_source_core_init
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 6480(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 6488(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6496(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6504(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6512(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6520(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6528(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 6536(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 6544(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_source_core_init, .Lfunc_end2-gimp_source_core_init
	.cfi_endproc

	.globl	gimp_source_core_motion
	.align	16, 0x90
	.type	gimp_source_core_motion,@function
gimp_source_core_motion:                # @gimp_source_core_motion
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
	subq	$392, %rsp              # imm = 0x188
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
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%esi, %esi
	movq	%rax, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-80(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -224(%rbp)
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -232(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_2
	jp	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_12
.LBB3_2:                                # %if.end
	movq	-48(%rbp), %rax
	cvttsd2si	6528(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movq	-48(%rbp), %rax
	cvttsd2si	6536(%rax), %ecx
	movl	%ecx, -192(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB3_6
# BB#3:                                 # %if.then.14
	movq	-48(%rbp), %rax
	movq	6488(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$0, 476(%rax)
	je	.LBB3_5
# BB#4:                                 # %if.then.18
	movq	-120(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	6488(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-244(%rbp), %ecx
	addl	-188(%rbp), %ecx
	movl	%ecx, -188(%rbp)
	movl	-248(%rbp), %ecx
	addl	-192(%rbp), %ecx
	movl	%ecx, -192(%rbp)
.LBB3_5:                                # %if.end.27
	movq	-120(%rbp), %rdi
	callq	gimp_pickable_flush
.LBB3_6:                                # %if.end.28
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.31
	jmp	.LBB3_12
.LBB3_8:                                # %if.end.32
	movl	$0, -204(%rbp)
	movl	$0, -208(%rbp)
	movq	-200(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -212(%rbp)
	movq	-200(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -216(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true
	leaq	-204(%rbp), %rax
	leaq	-208(%rbp), %rcx
	leaq	-212(%rbp), %rdx
	leaq	-216(%rbp), %rsi
	leaq	-184(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	(%r8), %r8
	movq	248(%r8), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-120(%rbp), %rbx
	movl	-188(%rbp), %r14d
	movl	-192(%rbp), %r15d
	movq	-200(%rbp), %r12
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r8, -344(%rbp)         # 8-byte Spill
	movl	%r14d, %r8d
	movl	%r15d, %r9d
	movq	%r12, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	-320(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	-312(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movq	-344(%rbp), %r12        # 8-byte Reload
	callq	*%r12
	cmpl	$0, %eax
	jne	.LBB3_11
# BB#10:                                # %if.then.37
	jmp	.LBB3_12
.LBB3_11:                               # %if.end.38
	movq	-200(%rbp), %rdi
	callq	temp_buf_data_clear
	leaq	-184(%rbp), %r9
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	256(%rdi), %rdi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %r8
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-120(%rbp), %r10
	movl	-188(%rbp), %r11d
	movl	-192(%rbp), %ebx
	movq	-200(%rbp), %r14
	movl	-204(%rbp), %r15d
	movl	-208(%rbp), %r12d
	movl	-212(%rbp), %r13d
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movl	-216(%rbp), %esi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movl	%esi, -364(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rcx
	movq	%r10, %r8
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movq	%r14, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movl	-364(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 48(%rsp)
	movq	-360(%rbp), %r10        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	*%r10
.LBB3_12:                               # %return
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_source_core_motion, .Lfunc_end3-gimp_source_core_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_source_core_class_init,@function
gimp_source_core_class_init:            # @gimp_source_core_class_init
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
	subq	$96, %rsp
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
	movabsq	$gimp_source_core_real_get_source, %rsi
	movabsq	$gimp_source_core_paint, %rdi
	movabsq	$gimp_source_core_start, %rcx
	movabsq	$gimp_source_core_get_property, %rdx
	movabsq	$gimp_source_core_set_property, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 216(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 248(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_source_core_class_init, .Lfunc_end4-gimp_source_core_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_set_property,@function
gimp_source_core_set_property:          # @gimp_source_core_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_8
.LBB5_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_9
.LBB5_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_4
.LBB5_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_source_core_set_src_drawable
	jmp	.LBB5_7
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 6496(%rdi)
	jmp	.LBB5_7
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 6504(%rdi)
	jmp	.LBB5_7
.LBB5_4:                                # %sw.default
	jmp	.LBB5_5
.LBB5_5:                                # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$178, %edx
	movabsq	$.L.str.6, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB5_7
.LBB5_7:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_source_core_set_property, .Lfunc_end5-gimp_source_core_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_get_property,@function
gimp_source_core_get_property:          # @gimp_source_core_get_property
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
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
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
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	6488(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_7
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvttsd2si	6496(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_7
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvttsd2si	6504(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_7
.LBB6_4:                                # %sw.default
	jmp	.LBB6_5
.LBB6_5:                                # %do.body
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
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$203, %edx
	movabsq	$.L.str.6, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_source_core_get_property, .Lfunc_end6-gimp_source_core_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_start,@function
gimp_source_core_start:                 # @gimp_source_core_start
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	gimp_source_core_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_11
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$0, 288(%rax)
	movq	-56(%rbp), %rax
	cmpl	$0, 6480(%rax)
	jne	.LBB7_10
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	cmpl	$0, 480(%rax)
	je	.LBB7_10
# BB#4:                                 # %if.then.9
	movq	-56(%rbp), %rax
	cmpq	$0, 6488(%rax)
	jne	.LBB7_6
# BB#5:                                 # %if.then.11
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB7_11
.LBB7_6:                                # %if.end.14
	movq	-64(%rbp), %rax
	cmpl	$0, 476(%rax)
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true.16
	movq	-56(%rbp), %rax
	movq	6488(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-24(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB7_9
# BB#8:                                 # %if.then.24
	movq	-16(%rbp), %rax
	movl	$1, 288(%rax)
.LBB7_9:                                # %if.end.26
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.27
	movl	$1, -4(%rbp)
.LBB7_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_source_core_start, .Lfunc_end7-gimp_source_core_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_paint,@function
gimp_source_core_paint:                 # @gimp_source_core_paint
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %r8d
	testl	%r8d, %r8d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_25
.LBB8_25:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB8_7
	jmp	.LBB8_26
.LBB8_26:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB8_19
	jmp	.LBB8_23
.LBB8_1:                                # %sw.bb
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_source_core_set_src_drawable
	movq	-32(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movsd	%xmm0, 6496(%rsi)
	movq	-32(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movsd	%xmm0, 6504(%rsi)
	movq	-48(%rbp), %rsi
	movl	$1, 6544(%rsi)
	jmp	.LBB8_6
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpl	$0, 472(%rax)
	jne	.LBB8_5
# BB#4:                                 # %if.then.4
	movq	-48(%rbp), %rax
	movsd	6496(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6512(%rax)
	movq	-48(%rbp), %rax
	movsd	6504(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6520(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 6544(%rax)
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.8
	jmp	.LBB8_24
.LBB8_7:                                # %sw.bb.9
	movq	-48(%rbp), %rax
	cmpl	$0, 6480(%rax)
	je	.LBB8_9
# BB#8:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6496(%rax)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6504(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 6544(%rax)
	jmp	.LBB8_18
.LBB8_9:                                # %if.else.18
	movq	-32(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$2, 472(%rax)
	jne	.LBB8_11
# BB#10:                                # %if.then.25
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6528(%rax)
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6536(%rax)
	jmp	.LBB8_17
.LBB8_11:                               # %if.else.26
	movq	-56(%rbp), %rax
	cmpl	$3, 472(%rax)
	jne	.LBB8_13
# BB#12:                                # %if.then.30
	movq	-48(%rbp), %rax
	movsd	6496(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6528(%rax)
	movq	-48(%rbp), %rax
	movsd	6504(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6536(%rax)
	jmp	.LBB8_16
.LBB8_13:                               # %if.else.38
	movq	-48(%rbp), %rax
	cmpl	$0, 6544(%rax)
	je	.LBB8_15
# BB#14:                                # %if.then.41
	movq	-48(%rbp), %rax
	movsd	6496(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6528(%rax)
	movq	-48(%rbp), %rax
	movsd	6504(%rax), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6536(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 6544(%rax)
.LBB8_15:                               # %if.end.51
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.52
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.53
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-48(%rbp), %rax
	addsd	6528(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6496(%rax)
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-48(%rbp), %rax
	addsd	6536(%rax), %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6504(%rax)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_source_core_motion
.LBB8_18:                               # %if.end.61
	jmp	.LBB8_24
.LBB8_19:                               # %sw.bb.62
	movq	-56(%rbp), %rax
	cmpl	$0, 472(%rax)
	jne	.LBB8_22
# BB#20:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 6544(%rax)
	jne	.LBB8_22
# BB#21:                                # %if.then.68
	movq	-48(%rbp), %rax
	movsd	6512(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6496(%rax)
	movq	-48(%rbp), %rax
	movsd	6520(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 6504(%rax)
.LBB8_22:                               # %if.end.73
	jmp	.LBB8_24
.LBB8_23:                               # %sw.default
	jmp	.LBB8_24
.LBB8_24:                               # %sw.epilog
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_source_core_paint, .Lfunc_end8-gimp_source_core_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_real_get_source,@function
gimp_source_core_real_get_source:       # @gimp_source_core_real_get_source
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$304, %rsp              # imm = 0x130
.Ltmp35:
	.cfi_offset %rbx, -48
.Ltmp36:
	.cfi_offset %r12, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movq	24(%rbp), %r14
	movq	16(%rbp), %r15
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movq	%r15, -88(%rbp)
	movq	%r14, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movl	12(%rax), %r8d
	addl	-76(%rbp), %r8d
	movq	-88(%rbp), %rax
	movl	16(%rax), %r9d
	addl	-80(%rbp), %r9d
	movq	-88(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-160(%rbp), %rdi
	movl	%r8d, -204(%rbp)        # 4-byte Spill
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movq	-160(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	xorl	%ecx, %ecx
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdi
	leaq	-172(%rbp), %r10
	leaq	-176(%rbp), %r11
	movl	-204(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-208(%rbp), %r8d        # 4-byte Reload
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	-216(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movl	-244(%rbp), %r9d        # 4-byte Reload
	movl	-220(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-240(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-232(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_12
.LBB9_2:                                # %if.end
	movq	-136(%rbp), %rax
	cmpl	$0, 476(%rax)
	je	.LBB9_4
# BB#3:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB9_6
.LBB9_4:                                # %lor.lhs.false
	movq	-136(%rbp), %rax
	cmpl	$0, 476(%rax)
	jne	.LBB9_7
# BB#5:                                 # %land.lhs.true.18
	movq	-48(%rbp), %rax
	movq	6488(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB9_7
.LBB9_6:                                # %if.then.20
	xorl	%eax, %eax
	movq	-128(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	jmp	.LBB9_11
.LBB9_7:                                # %if.else
	movq	-136(%rbp), %rax
	cmpl	$0, 476(%rax)
	je	.LBB9_9
# BB#8:                                 # %if.then.23
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_paint_core_get_orig_proj
	movq	%rax, -184(%rbp)
	jmp	.LBB9_10
.LBB9_9:                                # %if.else.27
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_core_get_orig_image
	movq	%rax, -184(%rbp)
.LBB9_10:                               # %if.end.33
	xorl	%eax, %eax
	movq	-128(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
.LBB9_11:                               # %if.end.34
	movl	-164(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	12(%rcx), %edx
	addl	-76(%rbp), %edx
	subl	%edx, %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-168(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	16(%rcx), %edx
	addl	-80(%rbp), %edx
	subl	%edx, %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-172(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-176(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$1, -36(%rbp)
.LBB9_12:                               # %return
	movl	-36(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_source_core_real_get_source, .Lfunc_end9-gimp_source_core_real_get_source
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_source_core_set_src_drawable,@function
gimp_source_core_set_src_drawable:      # @gimp_source_core_set_src_drawable
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	6488(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_7
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 6488(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.2
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_source_core_src_drawable_removed, %rdx
	movq	-8(%rbp), %rdi
	movq	6488(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB10_4:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 6488(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 6488(%rax)
	je	.LBB10_6
# BB#5:                                 # %if.then.8
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_source_core_src_drawable_removed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	6488(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB10_6:                               # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB10_7:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_source_core_set_src_drawable, .Lfunc_end10-gimp_source_core_set_src_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.8, %r9d
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

	.align	16, 0x90
	.type	gimp_source_core_src_drawable_removed,@function
gimp_source_core_src_drawable_removed:  # @gimp_source_core_src_drawable_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	6488(%rdi), %rsi
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	$0, 6488(%rax)
.LBB12_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_source_core_src_drawable_removed, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_source_core_src_drawable_removed, .Lfunc_end12-gimp_source_core_src_drawable_removed
	.cfi_endproc

	.type	gimp_source_core_get_type.g_define_type_id__volatile,@object # @gimp_source_core_get_type.g_define_type_id__volatile
	.local	gimp_source_core_get_type.g_define_type_id__volatile
	.comm	gimp_source_core_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSourceCore"
	.size	.L.str, 15

	.type	gimp_source_core_parent_class,@object # @gimp_source_core_parent_class
	.local	gimp_source_core_parent_class
	.comm	gimp_source_core_parent_class,8,8
	.type	GimpSourceCore_private_offset,@object # @GimpSourceCore_private_offset
	.local	GimpSourceCore_private_offset
	.comm	GimpSourceCore_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"src-drawable"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"src-x"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"src-y"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpsourcecore.c"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"removed"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Paint"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Set a source image first."
	.size	.L.str.9, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
