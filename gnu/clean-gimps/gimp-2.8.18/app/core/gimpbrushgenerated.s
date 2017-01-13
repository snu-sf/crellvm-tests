	.text
	.file	"gimpbrushgenerated.bc"
	.globl	gimp_brush_generated_get_type
	.align	16, 0x90
	.type	gimp_brush_generated_get_type,@function
gimp_brush_generated_get_type:          # @gimp_brush_generated_get_type
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
	movq	gimp_brush_generated_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_generated_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_brush_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$384, %edx              # imm = 0x180
	movabsq	$gimp_brush_generated_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_brush_generated_init, %rcx
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
	movabsq	$gimp_brush_generated_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_generated_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_generated_get_type, .Lfunc_end0-gimp_brush_generated_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_generated_class_intern_init,@function
gimp_brush_generated_class_intern_init: # @gimp_brush_generated_class_intern_init
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
	movq	%rax, gimp_brush_generated_parent_class
	cmpl	$0, GimpBrushGenerated_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushGenerated_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_generated_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_generated_class_intern_init, .Lfunc_end1-gimp_brush_generated_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1065353216              # float 1
.LCPI2_1:
	.long	1084227584              # float 5
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_init,@function
gimp_brush_generated_init:              # @gimp_brush_generated_init
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
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI2_1, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm2, 124(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm0, 132(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm1, 136(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm0, 140(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_generated_init, .Lfunc_end2-gimp_brush_generated_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4626322717216342016     # double 20
	.text
	.globl	gimp_brush_generated_new
	.align	16, 0x90
	.type	gimp_brush_generated_new,@function
gimp_brush_generated_new:               # @gimp_brush_generated_new
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
	subq	$168, %rsp
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
	movl	%esi, -60(%rbp)
	movss	%xmm0, -64(%rbp)
	movl	%edx, -68(%rbp)
	movss	%xmm1, -72(%rbp)
	movss	%xmm2, -76(%rbp)
	movss	%xmm3, -80(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_11
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_8
# BB#7:                                 # %if.then.4
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.5
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end.6
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.7
	callq	gimp_brush_generated_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %r10
	movabsq	$.L.str.11, %r11
	movabsq	$.L.str.12, %rbx
	movabsq	$.L.str.13, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	-56(%rbp), %r13
	movl	-60(%rbp), %r15d
	cvtss2sd	-64(%rbp), %xmm1
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	-68(%rbp), %esi
	cvtss2sd	-72(%rbp), %xmm2
	cvtss2sd	-76(%rbp), %xmm3
	cvtss2sd	-80(%rbp), %xmm4
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r13, %rdx
	movq	-120(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	-108(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$5, %al
	movq	%r12, -128(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB3_11:                               # %return
	movq	-48(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_generated_new, .Lfunc_end3-gimp_brush_generated_new
	.cfi_endproc

	.globl	gimp_brush_generated_set_shape
	.align	16, 0x90
	.type	gimp_brush_generated_set_shape,@function
gimp_brush_generated_set_shape:         # @gimp_brush_generated_set_shape
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
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
	movabsq	$.L__func__.gimp_brush_generated_set_shape, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	120(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB4_14
# BB#13:                                # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB4_14:                               # %if.end.18
	movq	-16(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_generated_set_shape, .Lfunc_end4-gimp_brush_generated_set_shape
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	3212836864              # float -1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	gimp_brush_generated_set_radius
	.align	16, 0x90
	.type	gimp_brush_generated_set_radius,@function
gimp_brush_generated_set_radius:        # @gimp_brush_generated_set_radius
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_set_radius, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_14
# BB#13:                                # %cond.true
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_14:                               # %cond.false
	xorps	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_16
# BB#15:                                # %cond.true.16
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB5_17
.LBB5_16:                               # %cond.false.17
	cvtss2sd	-20(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB5_17:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB5_18:                               # %cond.end.19
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rax
	movss	124(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jne	.LBB5_19
	jp	.LBB5_19
	jmp	.LBB5_20
.LBB5_19:                               # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movss	%xmm0, 124(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB5_20:                               # %if.end.30
	movq	-16(%rbp), %rax
	movss	124(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB5_21:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_generated_set_radius, .Lfunc_end5-gimp_brush_generated_set_radius
	.cfi_endproc

	.globl	gimp_brush_generated_set_spikes
	.align	16, 0x90
	.type	gimp_brush_generated_set_spikes,@function
gimp_brush_generated_set_spikes:        # @gimp_brush_generated_set_spikes
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_set_spikes, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB6_21
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	cmpl	$20, -20(%rbp)
	jle	.LBB6_14
# BB#13:                                # %cond.true
	movl	$20, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB6_18
.LBB6_14:                               # %cond.false
	cmpl	$2, -20(%rbp)
	jge	.LBB6_16
# BB#15:                                # %cond.true.13
	movl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false.14
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB6_17:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_18:                               # %cond.end.15
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movl	128(%rcx), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB6_20
# BB#19:                                # %if.then.19
	movl	$80, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB6_20:                               # %if.end.24
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_generated_set_spikes, .Lfunc_end6-gimp_brush_generated_set_spikes
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	3212836864              # float -1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_brush_generated_set_hardness
	.align	16, 0x90
	.type	gimp_brush_generated_set_hardness,@function
gimp_brush_generated_set_hardness:      # @gimp_brush_generated_set_hardness
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_set_hardness, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB7_21
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_14
# BB#13:                                # %cond.true
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB7_18
.LBB7_14:                               # %cond.false
	xorps	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_16
# BB#15:                                # %cond.true.16
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false.17
	cvtss2sd	-20(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB7_17:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB7_18:                               # %cond.end.19
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rax
	movss	132(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jne	.LBB7_19
	jp	.LBB7_19
	jmp	.LBB7_20
.LBB7_19:                               # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movss	%xmm0, 132(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB7_20:                               # %if.end.30
	movq	-16(%rbp), %rax
	movss	132(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB7_21:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_generated_set_hardness, .Lfunc_end7-gimp_brush_generated_set_hardness
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	3212836864              # float -1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4652007308841189376     # double 1000
.LCPI8_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_brush_generated_set_aspect_ratio
	.align	16, 0x90
	.type	gimp_brush_generated_set_aspect_ratio,@function
gimp_brush_generated_set_aspect_ratio:  # @gimp_brush_generated_set_aspect_ratio
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_set_aspect_ratio, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB8_21
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_14
# BB#13:                                # %cond.true
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB8_18
.LBB8_14:                               # %cond.false
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_16
# BB#15:                                # %cond.true.16
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB8_17
.LBB8_16:                               # %cond.false.17
	cvtss2sd	-20(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB8_17:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB8_18:                               # %cond.end.19
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rax
	movss	136(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jne	.LBB8_19
	jp	.LBB8_19
	jmp	.LBB8_20
.LBB8_19:                               # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movss	%xmm0, 136(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB8_20:                               # %if.end.29
	movq	-16(%rbp), %rax
	movss	136(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB8_21:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_generated_set_aspect_ratio, .Lfunc_end8-gimp_brush_generated_set_aspect_ratio
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	3212836864              # float -1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	4640537203540230144     # double 180
.LCPI9_2:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_brush_generated_set_angle
	.align	16, 0x90
	.type	gimp_brush_generated_set_angle,@function
gimp_brush_generated_set_angle:         # @gimp_brush_generated_set_angle
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_set_angle, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB9_20
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	xorps	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_14
# BB#13:                                # %if.then.13
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm0
	callq	fmod
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.LBB9_17
.LBB9_14:                               # %if.else.17
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_16
# BB#15:                                # %if.then.21
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm0
	callq	fmod
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
.LBB9_16:                               # %if.end.25
	jmp	.LBB9_17
.LBB9_17:                               # %if.end.26
	movq	-16(%rbp), %rax
	movss	140(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jne	.LBB9_18
	jp	.LBB9_18
	jmp	.LBB9_19
.LBB9_18:                               # %if.then.30
	movl	$80, %eax
	movl	%eax, %esi
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movss	%xmm0, 140(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_dirty
.LBB9_19:                               # %if.end.35
	movq	-16(%rbp), %rax
	movss	140(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB9_20:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_generated_set_angle, .Lfunc_end9-gimp_brush_generated_set_angle
	.cfi_endproc

	.globl	gimp_brush_generated_get_shape
	.align	16, 0x90
	.type	gimp_brush_generated_get_shape,@function
gimp_brush_generated_get_shape:         # @gimp_brush_generated_get_shape
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_get_shape, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_generated_get_shape, .Lfunc_end10-gimp_brush_generated_get_shape
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	3212836864              # float -1
	.text
	.globl	gimp_brush_generated_get_radius
	.align	16, 0x90
	.type	gimp_brush_generated_get_radius,@function
gimp_brush_generated_get_radius:        # @gimp_brush_generated_get_radius
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_get_radius, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movss	124(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB11_13:                              # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_generated_get_radius, .Lfunc_end11-gimp_brush_generated_get_radius
	.cfi_endproc

	.globl	gimp_brush_generated_get_spikes
	.align	16, 0x90
	.type	gimp_brush_generated_get_spikes,@function
gimp_brush_generated_get_spikes:        # @gimp_brush_generated_get_spikes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_get_spikes, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_generated_get_spikes, .Lfunc_end12-gimp_brush_generated_get_spikes
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_0:
	.long	3212836864              # float -1
	.text
	.globl	gimp_brush_generated_get_hardness
	.align	16, 0x90
	.type	gimp_brush_generated_get_hardness,@function
gimp_brush_generated_get_hardness:      # @gimp_brush_generated_get_hardness
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_get_hardness, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movss	132(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB13_13:                              # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_generated_get_hardness, .Lfunc_end13-gimp_brush_generated_get_hardness
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	3212836864              # float -1
	.text
	.globl	gimp_brush_generated_get_aspect_ratio
	.align	16, 0x90
	.type	gimp_brush_generated_get_aspect_ratio,@function
gimp_brush_generated_get_aspect_ratio:  # @gimp_brush_generated_get_aspect_ratio
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_get_aspect_ratio, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movss	136(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB14_13:                              # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_brush_generated_get_aspect_ratio, .Lfunc_end14-gimp_brush_generated_get_aspect_ratio
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI15_0:
	.long	3212836864              # float -1
	.text
	.globl	gimp_brush_generated_get_angle
	.align	16, 0x90
	.type	gimp_brush_generated_get_angle,@function
gimp_brush_generated_get_angle:         # @gimp_brush_generated_get_angle
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_generated_get_angle, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movss	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movss	140(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB15_13:                              # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_brush_generated_get_angle, .Lfunc_end15-gimp_brush_generated_get_angle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4640537203540230144     # double 180
.LCPI16_1:
	.quad	4607182418800017408     # double 1
.LCPI16_2:
	.quad	4626322717216342016     # double 20
.LCPI16_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI16_4:
	.quad	4661014508095930368     # double 4000
.LCPI16_5:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_class_init,@function
gimp_brush_generated_class_init:        # @gimp_brush_generated_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.15, %rdi
	movabsq	$gimp_brush_generated_transform_mask, %rsi
	movabsq	$gimp_brush_generated_transform_size, %rcx
	movabsq	$gimp_brush_generated_duplicate, %rdx
	movabsq	$gimp_brush_generated_get_extension, %r8
	movabsq	$gimp_brush_generated_dirty, %r9
	movabsq	$gimp_brush_generated_save, %r10
	movabsq	$gimp_brush_generated_get_property, %r11
	movabsq	$gimp_brush_generated_set_property, %rbx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 288(%rax)
	movq	-40(%rbp), %rax
	movq	%r9, 280(%rax)
	movq	-40(%rbp), %rax
	movq	%r8, 296(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_shape_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%r14d, %r14d
	movl	%r14d, %esi
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_5, %xmm2        # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.17, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	$20, %r8d
	movl	$231, %r9d
	movq	%rax, %rdx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r14d       # 4-byte Reload
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.18, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	movl	$231, %ecx
	movq	%rax, %rdx
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_2, %xmm1        # xmm1 = mem[0],zero
	movl	$231, %ecx
	movq	%rax, %rdx
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.20, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	movl	$231, %ecx
	movq	%rax, %rdx
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$6, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_brush_generated_class_init, .Lfunc_end16-gimp_brush_generated_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_generated_set_property,@function
gimp_brush_generated_set_property:      # @gimp_brush_generated_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB17_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_brush_generated_set_shape
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB17_10
.LBB17_2:                               # %sw.bb.4
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	cvtsd2ss	%xmm0, %xmm0
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_brush_generated_set_radius
	movss	%xmm0, -116(%rbp)       # 4-byte Spill
	jmp	.LBB17_10
.LBB17_3:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_brush_generated_set_spikes
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB17_10
.LBB17_4:                               # %sw.bb.10
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	cvtsd2ss	%xmm0, %xmm0
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_brush_generated_set_hardness
	movss	%xmm0, -148(%rbp)       # 4-byte Spill
	jmp	.LBB17_10
.LBB17_5:                               # %sw.bb.14
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	cvtsd2ss	%xmm0, %xmm0
	movq	-160(%rbp), %rdi        # 8-byte Reload
	callq	gimp_brush_generated_set_aspect_ratio
	movss	%xmm0, -164(%rbp)       # 4-byte Spill
	jmp	.LBB17_10
.LBB17_6:                               # %sw.bb.18
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	cvtsd2ss	%xmm0, %xmm0
	movq	-176(%rbp), %rdi        # 8-byte Reload
	callq	gimp_brush_generated_set_angle
	movss	%xmm0, -180(%rbp)       # 4-byte Spill
	jmp	.LBB17_10
.LBB17_7:                               # %sw.default
	jmp	.LBB17_8
.LBB17_8:                               # %do.body
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
	movl	%r8d, -184(%rbp)        # 4-byte Spill
	movq	%r9, -192(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$211, %edx
	movabsq	$.L.str.23, %rcx
	movl	-184(%rbp), %r8d        # 4-byte Reload
	movq	-192(%rbp), %r9         # 8-byte Reload
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB17_10
.LBB17_10:                              # %sw.epilog
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_brush_generated_set_property, .Lfunc_end17-gimp_brush_generated_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_1
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4
	.quad	.LBB17_5
	.quad	.LBB17_6

	.text
	.align	16, 0x90
	.type	gimp_brush_generated_get_property,@function
gimp_brush_generated_get_property:      # @gimp_brush_generated_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB18_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB18_10
.LBB18_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtss2sd	124(%rax), %xmm0
	callq	g_value_set_double
	jmp	.LBB18_10
.LBB18_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	128(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB18_10
.LBB18_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtss2sd	132(%rax), %xmm0
	callq	g_value_set_double
	jmp	.LBB18_10
.LBB18_5:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtss2sd	136(%rax), %xmm0
	callq	g_value_set_double
	jmp	.LBB18_10
.LBB18_6:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtss2sd	140(%rax), %xmm0
	callq	g_value_set_double
	jmp	.LBB18_10
.LBB18_7:                               # %sw.default
	jmp	.LBB18_8
.LBB18_8:                               # %do.body
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
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$245, %edx
	movabsq	$.L.str.23, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB18_10
.LBB18_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_brush_generated_get_property, .Lfunc_end18-gimp_brush_generated_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_1
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_4
	.quad	.LBB18_5
	.quad	.LBB18_6

	.text
	.align	16, 0x90
	.type	gimp_brush_generated_dirty,@function
gimp_brush_generated_dirty:             # @gimp_brush_generated_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_free
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	120(%rax), %esi
	movq	-16(%rbp), %rax
	movss	124(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	128(%rax), %edx
	movq	-16(%rbp), %rax
	movss	132(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	136(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	140(%rax), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	addq	$72, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	gimp_brush_generated_calc
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	gimp_brush_generated_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_brush_generated_dirty, .Lfunc_end19-gimp_brush_generated_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_generated_get_extension,@function
gimp_brush_generated_get_extension:     # @gimp_brush_generated_get_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.24, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_brush_generated_get_extension, .Lfunc_end20-gimp_brush_generated_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_generated_duplicate,@function
gimp_brush_generated_duplicate:         # @gimp_brush_generated_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rsi
	movl	120(%rsi), %esi
	movq	-16(%rbp), %rdi
	movss	124(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	movl	128(%rdi), %edx
	movq	-16(%rbp), %rdi
	movss	132(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	movss	136(%rdi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	movss	140(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gimp_brush_generated_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_brush_generated_duplicate, .Lfunc_end21-gimp_brush_generated_duplicate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4626322717216342016     # double 20
.LCPI22_1:
	.quad	4607182418800017408     # double 1
.LCPI22_3:
	.quad	4598175219545276416     # double 0.25
.LCPI22_4:
	.quad	4645040803167600640     # double 360
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_transform_size,@function
gimp_brush_generated_transform_size:    # @gimp_brush_generated_transform_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -56(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB22_2
	jp	.LBB22_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	cvtss2sd	136(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB22_8
.LBB22_2:                               # %if.else
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movapd	.LCPI22_2(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB22_4
# BB#3:                                 # %cond.true
	movsd	.LCPI22_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI22_2(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_5:                               # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	ucomisd	-24(%rbp), %xmm1
	jbe	.LBB22_7
# BB#6:                                 # %if.then.10
	movsd	.LCPI22_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.12
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movsd	.LCPI22_4, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	120(%rdx), %esi
	movq	-56(%rbp), %rdx
	cvtss2sd	124(%rdx), %xmm1
	mulsd	-16(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movq	-56(%rbp), %rdx
	movl	128(%rdx), %edx
	movq	-56(%rbp), %r10
	movss	132(%r10), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsd2ss	-72(%rbp), %xmm3
	movq	-56(%rbp), %r10
	cvtss2sd	140(%r10), %xmm4
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm4
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_brush_generated_get_half_size
	movl	-60(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_brush_generated_transform_size, .Lfunc_end22-gimp_brush_generated_transform_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4626322717216342016     # double 20
.LCPI23_1:
	.quad	4607182418800017408     # double 1
.LCPI23_3:
	.quad	4598175219545276416     # double 0.25
.LCPI23_4:
	.quad	4645040803167600640     # double 360
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_transform_mask,@function
gimp_brush_generated_transform_mask:    # @gimp_brush_generated_transform_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB23_2
	jp	.LBB23_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	cvtss2sd	136(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB23_8
.LBB23_2:                               # %if.else
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movapd	.LCPI23_2(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB23_4
# BB#3:                                 # %cond.true
	movsd	.LCPI23_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI23_2(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_5:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -56(%rbp)
	ucomisd	-24(%rbp), %xmm1
	jbe	.LBB23_7
# BB#6:                                 # %if.then.10
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movsd	.LCPI23_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movl	120(%rdx), %esi
	movq	-48(%rbp), %rdx
	cvtss2sd	124(%rdx), %xmm1
	mulsd	-16(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movq	-48(%rbp), %rdx
	movl	128(%rdx), %edx
	movq	-48(%rbp), %r8
	cvtss2sd	132(%r8), %xmm2
	mulsd	-40(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsd2ss	-56(%rbp), %xmm3
	movq	-48(%rbp), %r8
	cvtss2sd	140(%r8), %xmm4
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm4
	cvtsd2ss	%xmm4, %xmm0
	movss	%xmm0, -76(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movss	-76(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	gimp_brush_generated_calc
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_brush_generated_transform_mask, .Lfunc_end23-gimp_brush_generated_transform_mask
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
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
	je	.LBB24_2
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
.LBB24_2:                               # %entry
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
.Lfunc_end24:
	.size	g_warning, .Lfunc_end24-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	-4604611780675359464    # double -6.2831853071795862
.LCPI25_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI25_4:
	.quad	4616189618054758400     # double 4
.LCPI25_5:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_3:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_calc,@function
gimp_brush_generated_calc:              # @gimp_brush_generated_calc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp85:
	.cfi_offset %rbx, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
	leaq	-96(%rbp), %rax
	leaq	-100(%rbp), %r9
	leaq	-128(%rbp), %r10
	leaq	-120(%rbp), %r11
	leaq	-160(%rbp), %rbx
	leaq	-176(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movl	%edx, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movss	%xmm3, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-44(%rbp), %edx
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	-56(%rbp), %xmm3
	movq	%rax, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r14, 16(%rsp)
	callq	gimp_brush_generated_get_half_size
	movl	$1, %edx
	xorl	%esi, %esi
	movl	%esi, %r9d
	movl	-96(%rbp), %esi
	shll	$1, %esi
	addl	$1, %esi
	movl	-100(%rbp), %r15d
	shll	$1, %r15d
	addl	$1, %r15d
	movl	-96(%rbp), %ecx
	movl	-100(%rbp), %r8d
	movl	%esi, %edi
	movl	%r15d, %esi
	callq	temp_buf_new
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-100(%rbp), %ecx
	movq	-184(%rbp), %rdi
	imull	4(%rdi), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movslq	-96(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -80(%rbp)
	cvtss2sd	-40(%rbp), %xmm0
	cvtss2sd	-48(%rbp), %xmm1
	callq	gimp_brush_generated_calc_lut
	movl	$2, %ecx
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -88(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	callq	cos
	movsd	%xmm0, -136(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -144(%rbp)
	movl	-44(%rbp), %eax
	cltd
	movl	-244(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB25_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	subl	-100(%rbp), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB25_3
.LBB25_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB25_3
.LBB25_3:                               # %cond.end
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
.LBB25_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_6 Depth 2
                                        #       Child Loop BB25_9 Depth 3
	movl	-108(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jg	.LBB25_28
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	xorl	%eax, %eax
	subl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB25_6:                               # %for.cond.17
                                        #   Parent Loop BB25_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_9 Depth 3
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jg	.LBB25_26
# BB#7:                                 # %for.body.20
                                        #   in Loop: Header=BB25_6 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-104(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-104(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-108(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movapd	.LCPI25_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -208(%rbp)
	cmpl	$2, -44(%rbp)
	jle	.LBB25_12
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -216(%rbp)
.LBB25_9:                               # %while.cond
                                        #   Parent Loop BB25_4 Depth=1
                                        #     Parent Loop BB25_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	.LCPI25_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB25_9 Depth=3
	movsd	.LCPI25_5, %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -224(%rbp)
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -232(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-224(%rbp), %xmm1
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-232(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-224(%rbp), %xmm1
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-232(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -208(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	jmp	.LBB25_9
.LBB25_11:                              # %while.end
                                        #   in Loop: Header=BB25_6 Depth=2
	jmp	.LBB25_12
.LBB25_12:                              # %if.end
                                        #   in Loop: Header=BB25_6 Depth=2
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB25_13
	jmp	.LBB25_33
.LBB25_33:                              # %if.end
                                        #   in Loop: Header=BB25_6 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB25_14
	jmp	.LBB25_34
.LBB25_34:                              # %if.end
                                        #   in Loop: Header=BB25_6 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB25_18
	jmp	.LBB25_19
.LBB25_13:                              # %sw.bb
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-208(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -192(%rbp)
	jmp	.LBB25_19
.LBB25_14:                              # %sw.bb.55
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_16
# BB#15:                                # %cond.true.60
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB25_17
.LBB25_16:                              # %cond.false.62
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB25_17:                              # %cond.end.64
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %sw.bb.66
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB25_19:                              # %sw.epilog
                                        #   in Loop: Header=BB25_6 Depth=2
	movss	.LCPI25_3, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	addss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_21
# BB#20:                                # %if.then.74
                                        #   in Loop: Header=BB25_6 Depth=2
	movsd	.LCPI25_4, %xmm0        # xmm0 = mem[0],zero
	mulsd	-192(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -89(%rbp)
	jmp	.LBB25_22
.LBB25_21:                              # %if.else
                                        #   in Loop: Header=BB25_6 Depth=2
	movb	$0, -89(%rbp)
.LBB25_22:                              # %if.end.78
                                        #   in Loop: Header=BB25_6 Depth=2
	movl	$2, %eax
	movb	-89(%rbp), %cl
	movl	-108(%rbp), %edx
	movq	-184(%rbp), %rsi
	imull	4(%rsi), %edx
	addl	-104(%rbp), %edx
	movslq	%edx, %rsi
	movq	-80(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movl	-44(%rbp), %edx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-276(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB25_24
# BB#23:                                # %if.then.87
                                        #   in Loop: Header=BB25_6 Depth=2
	movb	-89(%rbp), %al
	imull	$4294967295, -108(%rbp), %ecx # imm = 0xFFFFFFFF
	movq	-184(%rbp), %rdx
	imull	4(%rdx), %ecx
	subl	-104(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-80(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
.LBB25_24:                              # %if.end.94
                                        #   in Loop: Header=BB25_6 Depth=2
	jmp	.LBB25_25
.LBB25_25:                              # %for.inc
                                        #   in Loop: Header=BB25_6 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB25_6
.LBB25_26:                              # %for.end
                                        #   in Loop: Header=BB25_4 Depth=1
	jmp	.LBB25_27
.LBB25_27:                              # %for.inc.95
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB25_4
.LBB25_28:                              # %for.end.97
	movq	-88(%rbp), %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	je	.LBB25_30
# BB#29:                                # %if.then.99
	movq	-64(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-152(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB25_30:                              # %if.end.100
	cmpq	$0, -72(%rbp)
	je	.LBB25_32
# BB#31:                                # %if.then.102
	movq	-72(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-168(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB25_32:                              # %if.end.103
	movq	-184(%rbp), %rax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_brush_generated_calc, .Lfunc_end25-gimp_brush_generated_calc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4652007308841189376     # double 1000
.LCPI26_1:
	.quad	4602678819172646912     # double 0.5
.LCPI26_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI26_3:
	.quad	4645040803167600640     # double 360
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_4:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI26_5:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_get_half_size,@function
gimp_brush_generated_get_half_size:     # @gimp_brush_generated_get_half_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	%edx, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI26_1(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LCPI26_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI26_3(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	%xmm2, -160(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -104(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	callq	cos
	movsd	%xmm0, -96(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_4(%rip), %xmm1  # xmm1 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	-12(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	je	.LBB26_1
	jmp	.LBB26_21
.LBB26_21:                              # %entry
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB26_2
	jmp	.LBB26_22
.LBB26_22:                              # %entry
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB26_3
	jmp	.LBB26_10
.LBB26_1:                               # %sw.bb
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-144(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB26_10
.LBB26_2:                               # %sw.bb.38
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB26_10
.LBB26_3:                               # %sw.bb.53
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_5
# BB#4:                                 # %cond.true
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %cond.false
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB26_6:                               # %cond.end
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_8
# BB#7:                                 # %cond.true.71
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB26_9
.LBB26_8:                               # %cond.false.74
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI26_5(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB26_9:                               # %cond.end.77
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB26_10:                              # %sw.epilog
	cmpl	$2, -20(%rbp)
	jle	.LBB26_12
# BB#11:                                # %if.then
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-112(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB26_12:                              # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB26_14
# BB#13:                                # %if.then.98
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB26_14:                              # %if.end.99
	cmpq	$0, -72(%rbp)
	je	.LBB26_16
# BB#15:                                # %if.then.102
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB26_16:                              # %if.end.103
	cmpq	$0, -80(%rbp)
	je	.LBB26_18
# BB#17:                                # %if.then.106
	movq	-80(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-120(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB26_18:                              # %if.end.107
	cmpq	$0, -88(%rbp)
	je	.LBB26_20
# BB#19:                                # %if.then.110
	movq	-88(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-136(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB26_20:                              # %if.end.111
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_brush_generated_get_half_size, .Lfunc_end26-gimp_brush_generated_get_half_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4511155413743087432     # double 3.9999999999999998E-7
.LCPI27_1:
	.quad	4607182418800017408     # double 1
.LCPI27_2:
	.quad	4616189618054758400     # double 4
.LCPI27_3:
	.quad	4611686018427387904     # double 2
.LCPI27_4:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI27_5:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI27_6:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI27_7:
	.quad	4634168832192151552     # double 63.75
.LCPI27_8:
	.quad	4598175219545276416     # double 0.25
.LCPI27_10:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_9:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_brush_generated_calc_lut,@function
gimp_brush_generated_calc_lut:          # @gimp_brush_generated_calc_lut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movsd	.LCPI27_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI27_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI27_3, %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movaps	%xmm3, %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm4, -104(%rbp)       # 8-byte Spill
	movsd	%xmm3, -112(%rbp)       # 8-byte Spill
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	callq	ceil
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-8(%rbp), %xmm1
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	sqrt
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rdi
	callq	g_malloc
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	%rax, -24(%rbp)
	movsd	%xmm2, -48(%rbp)
	subsd	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB27_2
# BB#1:                                 # %if.then
	movsd	.LCPI27_5, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB27_3
.LBB27_2:                               # %if.else
	movsd	.LCPI27_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB27_3:                               # %if.end
	movl	$0, -32(%rbp)
.LBB27_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -32(%rbp)
	jge	.LBB27_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB27_4 Depth=1
	movsd	.LCPI27_10, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI27_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movapd	.LCPI27_9(%rip), %xmm0  # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB27_7
# BB#6:                                 # %if.then.21
                                        #   in Loop: Header=BB27_4 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-32(%rbp), %rax
	movsd	%xmm0, -96(%rbp,%rax,8)
	jmp	.LBB27_8
.LBB27_7:                               # %if.else.22
                                        #   in Loop: Header=BB27_4 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-8(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	callq	gauss
	movslq	-32(%rbp), %rax
	movsd	%xmm0, -96(%rbp,%rax,8)
.LBB27_8:                               # %if.end.28
                                        #   in Loop: Header=BB27_4 Depth=1
	movslq	-32(%rbp), %rax
	movsd	-96(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB27_4
.LBB27_10:                              # %for.end
	movl	$0, -32(%rbp)
.LBB27_11:                              # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%al, -129(%rbp)         # 1-byte Spill
	ja	.LBB27_13
# BB#12:                                # %lor.rhs
                                        #   in Loop: Header=BB27_11 Depth=1
	movsd	.LCPI27_6, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB27_13:                              # %lor.end
                                        #   in Loop: Header=BB27_11 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_14
	jmp	.LBB27_19
.LBB27_14:                              # %for.body.37
                                        #   in Loop: Header=BB27_11 Depth=1
	movl	$4, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-136(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movsd	-96(%rbp,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB27_16
# BB#15:                                # %if.then.43
                                        #   in Loop: Header=BB27_11 Depth=1
	xorps	%xmm0, %xmm0
	movl	$4, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movsd	%xmm0, -96(%rbp,%rsi,8)
	jmp	.LBB27_17
.LBB27_16:                              # %if.else.47
                                        #   in Loop: Header=BB27_11 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-8(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	callq	gauss
	movl	$4, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-144(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movsd	%xmm0, -96(%rbp,%rsi,8)
.LBB27_17:                              # %if.end.54
                                        #   in Loop: Header=BB27_11 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	movl	%eax, %edx
	addl	%ecx, %edx
	andl	$-4, %edx
	subl	%edx, %eax
	movslq	%eax, %rsi
	movsd	-96(%rbp,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	.LCPI27_7(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movslq	%eax, %rsi
	movq	-24(%rbp), %r8
	movb	%dil, (%r8,%rsi)
# BB#18:                                # %for.inc.65
                                        #   in Loop: Header=BB27_11 Depth=1
	movsd	.LCPI27_8, %xmm0        # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB27_11
.LBB27_19:                              # %for.end.67
	jmp	.LBB27_20
.LBB27_20:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB27_22
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB27_20 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	jmp	.LBB27_20
.LBB27_22:                              # %while.end
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_brush_generated_calc_lut, .Lfunc_end27-gimp_brush_generated_calc_lut
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	-4620693217682128896    # double -0.5
.LCPI28_1:
	.quad	4602678819172646912     # double 0.5
.LCPI28_2:
	.quad	4611686018427387904     # double 2
.LCPI28_3:
	.quad	4607182418800017408     # double 1
.LCPI28_4:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gauss,@function
gauss:                                  # @gauss
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI28_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB28_2
# BB#1:                                 # %if.then
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_4, %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movsd	%xmm1, -16(%rbp)
	mulsd	-16(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB28_5
.LBB28_2:                               # %if.end
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB28_4
# BB#3:                                 # %if.then.3
	movsd	.LCPI28_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_2, %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	mulsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB28_5
.LBB28_4:                               # %if.end.7
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_3, %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movsd	%xmm1, -16(%rbp)
	mulsd	-16(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB28_5:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gauss, .Lfunc_end28-gauss
	.cfi_endproc

	.type	gimp_brush_generated_get_type.g_define_type_id__volatile,@object # @gimp_brush_generated_get_type.g_define_type_id__volatile
	.local	gimp_brush_generated_get_type.g_define_type_id__volatile
	.comm	gimp_brush_generated_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushGenerated"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_brush_generated_new,@object # @__func__.gimp_brush_generated_new
.L__func__.gimp_brush_generated_new:
	.asciz	"gimp_brush_generated_new"
	.size	.L__func__.gimp_brush_generated_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"*name != '\\0'"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"mime-type"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"application/x-gimp-brush-generated"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"spacing"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"shape"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"radius"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"spikes"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"hardness"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"aspect-ratio"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"angle"
	.size	.L.str.13, 6

	.type	.L__func__.gimp_brush_generated_set_shape,@object # @__func__.gimp_brush_generated_set_shape
.L__func__.gimp_brush_generated_set_shape:
	.asciz	"gimp_brush_generated_set_shape"
	.size	.L__func__.gimp_brush_generated_set_shape, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_BRUSH_GENERATED (brush)"
	.size	.L.str.14, 32

	.type	.L__func__.gimp_brush_generated_set_radius,@object # @__func__.gimp_brush_generated_set_radius
.L__func__.gimp_brush_generated_set_radius:
	.asciz	"gimp_brush_generated_set_radius"
	.size	.L__func__.gimp_brush_generated_set_radius, 32

	.type	.L__func__.gimp_brush_generated_set_spikes,@object # @__func__.gimp_brush_generated_set_spikes
.L__func__.gimp_brush_generated_set_spikes:
	.asciz	"gimp_brush_generated_set_spikes"
	.size	.L__func__.gimp_brush_generated_set_spikes, 32

	.type	.L__func__.gimp_brush_generated_set_hardness,@object # @__func__.gimp_brush_generated_set_hardness
.L__func__.gimp_brush_generated_set_hardness:
	.asciz	"gimp_brush_generated_set_hardness"
	.size	.L__func__.gimp_brush_generated_set_hardness, 34

	.type	.L__func__.gimp_brush_generated_set_aspect_ratio,@object # @__func__.gimp_brush_generated_set_aspect_ratio
.L__func__.gimp_brush_generated_set_aspect_ratio:
	.asciz	"gimp_brush_generated_set_aspect_ratio"
	.size	.L__func__.gimp_brush_generated_set_aspect_ratio, 38

	.type	.L__func__.gimp_brush_generated_set_angle,@object # @__func__.gimp_brush_generated_set_angle
.L__func__.gimp_brush_generated_set_angle:
	.asciz	"gimp_brush_generated_set_angle"
	.size	.L__func__.gimp_brush_generated_set_angle, 31

	.type	.L__func__.gimp_brush_generated_get_shape,@object # @__func__.gimp_brush_generated_get_shape
.L__func__.gimp_brush_generated_get_shape:
	.asciz	"gimp_brush_generated_get_shape"
	.size	.L__func__.gimp_brush_generated_get_shape, 31

	.type	.L__func__.gimp_brush_generated_get_radius,@object # @__func__.gimp_brush_generated_get_radius
.L__func__.gimp_brush_generated_get_radius:
	.asciz	"gimp_brush_generated_get_radius"
	.size	.L__func__.gimp_brush_generated_get_radius, 32

	.type	.L__func__.gimp_brush_generated_get_spikes,@object # @__func__.gimp_brush_generated_get_spikes
.L__func__.gimp_brush_generated_get_spikes:
	.asciz	"gimp_brush_generated_get_spikes"
	.size	.L__func__.gimp_brush_generated_get_spikes, 32

	.type	.L__func__.gimp_brush_generated_get_hardness,@object # @__func__.gimp_brush_generated_get_hardness
.L__func__.gimp_brush_generated_get_hardness:
	.asciz	"gimp_brush_generated_get_hardness"
	.size	.L__func__.gimp_brush_generated_get_hardness, 34

	.type	.L__func__.gimp_brush_generated_get_aspect_ratio,@object # @__func__.gimp_brush_generated_get_aspect_ratio
.L__func__.gimp_brush_generated_get_aspect_ratio:
	.asciz	"gimp_brush_generated_get_aspect_ratio"
	.size	.L__func__.gimp_brush_generated_get_aspect_ratio, 38

	.type	.L__func__.gimp_brush_generated_get_angle,@object # @__func__.gimp_brush_generated_get_angle
.L__func__.gimp_brush_generated_get_angle:
	.asciz	"gimp_brush_generated_get_angle"
	.size	.L__func__.gimp_brush_generated_get_angle, 31

	.type	gimp_brush_generated_parent_class,@object # @gimp_brush_generated_parent_class
	.local	gimp_brush_generated_parent_class
	.comm	gimp_brush_generated_parent_class,8,8
	.type	GimpBrushGenerated_private_offset,@object # @GimpBrushGenerated_private_offset
	.local	GimpBrushGenerated_private_offset
	.comm	GimpBrushGenerated_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Brush Shape"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Brush Radius"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Brush Spikes"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Brush Hardness"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Brush Aspect Ratio"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Brush Angle"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.21, 54

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimpbrushgenerated.c"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"property"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	".vbr"
	.size	.L.str.24, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
