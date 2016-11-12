	.text
	.file	"gimpbrush.bc"
	.globl	gimp_brush_get_type
	.align	16, 0x90
	.type	gimp_brush_get_type,@function
gimp_brush_get_type:                    # @gimp_brush_get_type
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
	movq	gimp_brush_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_data_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$384, %edx              # imm = 0x180
	movabsq	$gimp_brush_class_intern_init, %rdi
	movl	$120, %r8d
	movabsq	$gimp_brush_init, %rcx
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
	callq	gimp_tagged_interface_get_type
	movabsq	$gimp_brush_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_brush_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_get_type, .Lfunc_end0-gimp_brush_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_class_intern_init,@function
gimp_brush_class_intern_init:           # @gimp_brush_class_intern_init
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
	movq	%rax, gimp_brush_parent_class
	cmpl	$0, GimpBrush_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrush_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_class_intern_init, .Lfunc_end1-gimp_brush_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	gimp_brush_init,@function
gimp_brush_init:                        # @gimp_brush_init
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
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$20, 48(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 64(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 72(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_init, .Lfunc_end2-gimp_brush_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_tagged_iface_init,@function
gimp_brush_tagged_iface_init:           # @gimp_brush_tagged_iface_init
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
	movabsq	$gimp_brush_get_checksum, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_tagged_iface_init, .Lfunc_end3-gimp_brush_tagged_iface_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1084227584              # float 5
.LCPI4_1:
	.long	1056964608              # float 0.5
.LCPI4_2:
	.long	1065353216              # float 1
	.text
	.globl	gimp_brush_new
	.align	16, 0x90
	.type	gimp_brush_new,@function
gimp_brush_new:                         # @gimp_brush_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	xorl	%esi, %esi
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$2, %edx
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	movq	-24(%rbp), %rdi
	callq	gimp_brush_generated_new
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_new, .Lfunc_end4-gimp_brush_new
	.cfi_endproc

	.globl	gimp_brush_get_standard
	.align	16, 0x90
	.type	gimp_brush_get_standard,@function
gimp_brush_get_standard:                # @gimp_brush_get_standard
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, gimp_brush_get_standard.standard_brush
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_brush_new
	movq	%rax, gimp_brush_get_standard.standard_brush
	movq	gimp_brush_get_standard.standard_brush, %rdi
	callq	gimp_data_clean
	movabsq	$.L.str.4, %rsi
	movq	gimp_brush_get_standard.standard_brush, %rdi
	callq	gimp_data_make_internal
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_brush_get_standard.standard_brush, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_brush_get_standard.standard_brush, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB5_2:                                # %if.end
	movq	gimp_brush_get_standard.standard_brush, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_get_standard, .Lfunc_end5-gimp_brush_get_standard
	.cfi_endproc

	.globl	gimp_brush_begin_use
	.align	16, 0x90
	.type	gimp_brush_begin_use,@function
gimp_brush_begin_use:                   # @gimp_brush_begin_use
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_begin_use, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_14
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 88(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 88(%rax)
	jne	.LBB6_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	312(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_14:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_begin_use, .Lfunc_end6-gimp_brush_begin_use
	.cfi_endproc

	.globl	gimp_brush_end_use
	.align	16, 0x90
	.type	gimp_brush_end_use,@function
gimp_brush_end_use:                     # @gimp_brush_end_use
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_end_use, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 88(%rax)
	jle	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_end_use, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 88(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	.LBB7_19
# BB#18:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_19:                               # %if.end.22
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_end_use, .Lfunc_end7-gimp_brush_end_use
	.cfi_endproc

	.globl	gimp_brush_select_brush
	.align	16, 0x90
	.type	gimp_brush_select_brush,@function
gimp_brush_select_brush:                # @gimp_brush_select_brush
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_select_brush, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_23
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_select_brush, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_23
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB8_20
# BB#19:                                # %if.then.19
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_select_brush, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_23
.LBB8_21:                               # %if.end.21
	jmp	.LBB8_22
.LBB8_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	328(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB8_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_select_brush, .Lfunc_end8-gimp_brush_select_brush
	.cfi_endproc

	.globl	gimp_brush_want_null_motion
	.align	16, 0x90
	.type	gimp_brush_want_null_motion,@function
gimp_brush_want_null_motion:            # @gimp_brush_want_null_motion
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
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_want_null_motion, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_23
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_want_null_motion, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_23
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB9_20
# BB#19:                                # %if.then.19
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_want_null_motion, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_23
.LBB9_21:                               # %if.end.21
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB9_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_want_null_motion, .Lfunc_end9-gimp_brush_want_null_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_brush_transform_size
	.align	16, 0x90
	.type	gimp_brush_transform_size,@function
gimp_brush_transform_size:              # @gimp_brush_transform_size
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_size, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_34
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_size, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_34
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB10_20
# BB#19:                                # %if.then.19
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_size, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_34
.LBB10_21:                              # %if.end.21
	jmp	.LBB10_22
.LBB10_22:                              # %do.end.22
	jmp	.LBB10_23
.LBB10_23:                              # %do.body.23
	cmpq	$0, -48(%rbp)
	je	.LBB10_25
# BB#24:                                # %if.then.25
	jmp	.LBB10_26
.LBB10_25:                              # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_size, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_34
.LBB10_26:                              # %if.end.27
	jmp	.LBB10_27
.LBB10_27:                              # %do.end.28
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_33
	jp	.LBB10_33
# BB#28:                                # %land.lhs.true.30
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_33
	jp	.LBB10_33
# BB#29:                                # %land.lhs.true.32
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_30
	jp	.LBB10_30
	jmp	.LBB10_32
.LBB10_30:                              # %lor.lhs.false
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_31
	jp	.LBB10_31
	jmp	.LBB10_32
.LBB10_31:                              # %lor.lhs.false.35
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_33
	jp	.LBB10_33
.LBB10_32:                              # %if.then.37
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB10_34
.LBB10_33:                              # %if.end.41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	344(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
.LBB10_34:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_transform_size, .Lfunc_end10-gimp_brush_transform_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_brush_transform_mask
	.align	16, 0x90
	.type	gimp_brush_transform_mask,@function
gimp_brush_transform_mask:              # @gimp_brush_transform_mask
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_mask, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_26
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_mask, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_26
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_brush_transform_size
	movq	-16(%rbp), %rdx
	movq	96(%rdx), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_cache_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_25
# BB#18:                                # %if.then.19
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_23
	jp	.LBB11_23
# BB#19:                                # %land.lhs.true.21
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_23
	jp	.LBB11_23
# BB#20:                                # %land.lhs.true.23
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_23
	jp	.LBB11_23
# BB#21:                                # %land.lhs.true.25
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_23
	jp	.LBB11_23
# BB#22:                                # %if.then.27
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	temp_buf_copy
	movq	%rax, -56(%rbp)
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.30
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB11_24:                              # %if.end.33
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	gimp_brush_cache_add
.LBB11_25:                              # %if.end.35
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_transform_mask, .Lfunc_end11-gimp_brush_transform_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_brush_transform_pixmap
	.align	16, 0x90
	.type	gimp_brush_transform_pixmap,@function
gimp_brush_transform_pixmap:            # @gimp_brush_transform_pixmap
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_pixmap, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_31
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB12_15
# BB#14:                                # %if.then.14
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_pixmap, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_31
.LBB12_16:                              # %if.end.16
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.17
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.18
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_20
# BB#19:                                # %if.then.20
	jmp	.LBB12_21
.LBB12_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_pixmap, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_31
.LBB12_21:                              # %if.end.22
	jmp	.LBB12_22
.LBB12_22:                              # %do.end.23
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_brush_transform_size
	movq	-16(%rbp), %rdx
	movq	104(%rdx), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_cache_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_30
# BB#23:                                # %if.then.26
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_28
	jp	.LBB12_28
# BB#24:                                # %land.lhs.true.28
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_28
	jp	.LBB12_28
# BB#25:                                # %land.lhs.true.30
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_28
	jp	.LBB12_28
# BB#26:                                # %land.lhs.true.32
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_28
	jp	.LBB12_28
# BB#27:                                # %if.then.34
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	temp_buf_copy
	movq	%rax, -56(%rbp)
	jmp	.LBB12_29
.LBB12_28:                              # %if.else.37
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB12_29:                              # %if.end.40
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	gimp_brush_cache_add
.LBB12_30:                              # %if.end.42
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_31:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_transform_pixmap, .Lfunc_end12-gimp_brush_transform_pixmap
	.cfi_endproc

	.globl	gimp_brush_transform_boundary
	.align	16, 0x90
	.type	gimp_brush_transform_boundary,@function
gimp_brush_transform_boundary:          # @gimp_brush_transform_boundary
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_boundary, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_boundary, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.17
	cmpq	$0, -56(%rbp)
	je	.LBB13_20
# BB#19:                                # %if.then.19
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_boundary, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_21:                              # %if.end.21
	jmp	.LBB13_22
.LBB13_22:                              # %do.end.22
	jmp	.LBB13_23
.LBB13_23:                              # %do.body.23
	cmpq	$0, -64(%rbp)
	je	.LBB13_25
# BB#24:                                # %if.then.25
	jmp	.LBB13_26
.LBB13_25:                              # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_transform_boundary, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_32
.LBB13_26:                              # %if.end.27
	jmp	.LBB13_27
.LBB13_27:                              # %do.end.28
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_brush_transform_size
	movq	-16(%rbp), %rdx
	movq	112(%rdx), %rdi
	movq	-56(%rbp), %rdx
	movl	(%rdx), %esi
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_cache_get
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB13_31
# BB#28:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	368(%rax), %rax
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	*%rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB13_30
# BB#29:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-64(%rbp), %rcx
	movl	(%rcx), %ecx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	gimp_brush_cache_add
.LBB13_30:                              # %if.end.37
	jmp	.LBB13_31
.LBB13_31:                              # %if.end.38
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_32:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_transform_boundary, .Lfunc_end13-gimp_brush_transform_boundary
	.cfi_endproc

	.globl	gimp_brush_get_mask
	.align	16, 0x90
	.type	gimp_brush_get_mask,@function
gimp_brush_get_mask:                    # @gimp_brush_get_mask
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_get_mask, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_18
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_8
# BB#7:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB14_13
.LBB14_8:                               # %if.else.3
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_11
# BB#10:                                # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB14_12
.LBB14_11:                              # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_12:                              # %if.end.10
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.13
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_get_mask, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_18
.LBB14_16:                              # %if.end.15
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_brush_get_mask, .Lfunc_end14-gimp_brush_get_mask
	.cfi_endproc

	.globl	gimp_brush_get_pixmap
	.align	16, 0x90
	.type	gimp_brush_get_pixmap,@function
gimp_brush_get_pixmap:                  # @gimp_brush_get_pixmap
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_get_pixmap, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_18
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_8
# BB#7:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB15_13
.LBB15_8:                               # %if.else.3
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_11
# BB#10:                                # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB15_12
.LBB15_11:                              # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_12:                              # %if.end.10
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_get_pixmap, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_18
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB15_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_brush_get_pixmap, .Lfunc_end15-gimp_brush_get_pixmap
	.cfi_endproc

	.globl	gimp_brush_get_spacing
	.align	16, 0x90
	.type	gimp_brush_get_spacing,@function
gimp_brush_get_spacing:                 # @gimp_brush_get_spacing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_get_spacing, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB16_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_brush_get_spacing, .Lfunc_end16-gimp_brush_get_spacing
	.cfi_endproc

	.globl	gimp_brush_set_spacing
	.align	16, 0x90
	.type	gimp_brush_set_spacing,@function
gimp_brush_set_spacing:                 # @gimp_brush_set_spacing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_set_spacing, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_14
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB17_14
# BB#13:                                # %if.then.13
	xorl	%edx, %edx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-8(%rbp), %rcx
	movl	brush_signals, %esi
	movq	%rcx, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB17_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_brush_set_spacing, .Lfunc_end17-gimp_brush_set_spacing
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4662219572839972864     # double 5000
.LCPI18_2:
	.quad	4626322717216342016     # double 20
	.text
	.align	16, 0x90
	.type	gimp_brush_class_init,@function
gimp_brush_class_init:                  # @gimp_brush_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.15, %rdi
	movl	$1, %edx
	movl	$376, %ecx              # imm = 0x178
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.17, %rdi
	movabsq	$gimp_brush_real_transform_boundary, %rsi
	movabsq	$gimp_brush_real_transform_pixmap, %r8
	movabsq	$gimp_brush_real_transform_mask, %r9
	movabsq	$gimp_brush_real_transform_size, %r10
	movabsq	$gimp_brush_real_want_null_motion, %r11
	movabsq	$gimp_brush_real_select_brush, %rbx
	movabsq	$gimp_brush_real_end_use, %r14
	movabsq	$gimp_brush_real_begin_use, %r15
	movabsq	$gimp_brush_get_extension, %r12
	movabsq	$gimp_brush_dirty, %r13
	movabsq	$gimp_brush_get_description, %rcx
	movabsq	$gimp_brush_get_new_preview, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movabsq	$gimp_brush_get_size, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movabsq	$.L.str.16, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movabsq	$gimp_brush_get_memsize, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movabsq	$gimp_brush_set_property, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movabsq	$gimp_brush_get_property, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movabsq	$gimp_brush_finalize, %rcx
	movl	%eax, brush_signals
	movq	-56(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 192(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-72(%rbp), %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 248(%rax)
	movq	-80(%rbp), %rax
	movq	%r13, 280(%rax)
	movq	-80(%rbp), %rax
	movq	%r12, 296(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 312(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 320(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 328(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 336(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 344(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 352(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 360(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 368(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_2, %xmm2        # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$1, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_brush_class_init, .Lfunc_end18-gimp_brush_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_finalize,@function
gimp_brush_finalize:                    # @gimp_brush_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB19_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB19_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.LBB19_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB19_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB19_8:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB19_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
.LBB19_10:                              # %if.end.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_brush_finalize, .Lfunc_end19-gimp_brush_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_get_property,@function
gimp_brush_get_property:                # @gimp_brush_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB20_2
	jmp	.LBB20_1
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvtsi2sdl	48(%rax), %xmm0
	callq	g_value_set_double
	jmp	.LBB20_5
.LBB20_2:                               # %sw.default
	jmp	.LBB20_3
.LBB20_3:                               # %do.body
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movl	$246, %edx
	movabsq	$.L.str.20, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB20_5
.LBB20_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_brush_get_property, .Lfunc_end20-gimp_brush_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_set_property,@function
gimp_brush_set_property:                # @gimp_brush_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB21_2
	jmp	.LBB21_1
.LBB21_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	cvttsd2si	%xmm0, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_brush_set_spacing
	jmp	.LBB21_5
.LBB21_2:                               # %sw.default
	jmp	.LBB21_3
.LBB21_3:                               # %do.body
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movl	$226, %edx
	movabsq	$.L.str.20, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB21_5
.LBB21_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_brush_set_property, .Lfunc_end21-gimp_brush_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_get_memsize,@function
gimp_brush_get_memsize:                 # @gimp_brush_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	temp_buf_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_brush_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_brush_get_memsize, .Lfunc_end22-gimp_brush_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_get_size,@function
gimp_brush_get_size:                    # @gimp_brush_get_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %r8d
	movq	-24(%rbp), %rax
	movl	%r8d, (%rax)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_brush_get_size, .Lfunc_end23-gimp_brush_get_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_brush_get_new_preview,@function
gimp_brush_get_new_preview:             # @gimp_brush_get_new_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %ecx
	movl	%ecx, %edx
	leaq	-76(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	callq	memset
	movl	$0, -108(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jg	.LBB24_2
# BB#1:                                 # %lor.lhs.false
	movl	-72(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB24_12
.LBB24_2:                               # %if.then
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB24_4
# BB#3:                                 # %cond.true
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB24_5
.LBB24_4:                               # %cond.false
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB24_5:                               # %cond.end
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI24_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB24_6
	jp	.LBB24_6
	jmp	.LBB24_11
.LBB24_6:                               # %if.then.14
	movq	-32(%rbp), %rdi
	callq	gimp_brush_begin_use
	xorps	%xmm0, %xmm0
	movsd	.LCPI24_0, %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_brush_transform_mask
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_8
# BB#7:                                 # %if.then.16
	movl	$1, %eax
	xorl	%ecx, %ecx
	leaq	-76(%rbp), %r9
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
.LBB24_8:                               # %if.end
	cmpq	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.19
	xorps	%xmm0, %xmm0
	movsd	.LCPI24_0, %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_brush_transform_pixmap
	movq	%rax, -56(%rbp)
.LBB24_10:                              # %if.end.21
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	$1, -108(%rbp)
.LBB24_11:                              # %if.end.24
	jmp	.LBB24_12
.LBB24_12:                              # %if.end.25
	movl	$4, %edx
	xorl	%eax, %eax
	leaq	-76(%rbp), %r9
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -96(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB24_22
# BB#13:                                # %if.then.31
	movq	-56(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -144(%rbp)
	movl	$0, -104(%rbp)
.LBB24_14:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_16 Depth 2
	movl	-104(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB24_21
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB24_14 Depth=1
	movl	$0, -100(%rbp)
.LBB24_16:                              # %for.cond.36
                                        #   Parent Loop BB24_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB24_19
# BB#17:                                # %for.body.39
                                        #   in Loop: Header=BB24_16 Depth=2
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB24_16 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB24_16
.LBB24_19:                              # %for.end
                                        #   in Loop: Header=BB24_14 Depth=1
	jmp	.LBB24_20
.LBB24_20:                              # %for.inc.47
                                        #   in Loop: Header=BB24_14 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB24_14
.LBB24_21:                              # %for.end.49
	jmp	.LBB24_31
.LBB24_22:                              # %if.else
	movl	$0, -104(%rbp)
.LBB24_23:                              # %for.cond.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_25 Depth 2
	movl	-104(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB24_30
# BB#24:                                # %for.body.53
                                        #   in Loop: Header=BB24_23 Depth=1
	movl	$0, -100(%rbp)
.LBB24_25:                              # %for.cond.54
                                        #   Parent Loop BB24_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB24_28
# BB#26:                                # %for.body.57
                                        #   in Loop: Header=BB24_25 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	%dl, (%rax)
# BB#27:                                # %for.inc.63
                                        #   in Loop: Header=BB24_25 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB24_25
.LBB24_28:                              # %for.end.65
                                        #   in Loop: Header=BB24_23 Depth=1
	jmp	.LBB24_29
.LBB24_29:                              # %for.inc.66
                                        #   in Loop: Header=BB24_23 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB24_23
.LBB24_30:                              # %for.end.68
	jmp	.LBB24_31
.LBB24_31:                              # %if.end.69
	cmpl	$0, -108(%rbp)
	je	.LBB24_35
# BB#32:                                # %if.then.71
	cmpl	$0, -44(%rbp)
	je	.LBB24_34
# BB#33:                                # %if.then.73
	movq	-40(%rbp), %rdi
	callq	temp_buf_free
.LBB24_34:                              # %if.end.74
	movq	-32(%rbp), %rdi
	callq	gimp_brush_end_use
.LBB24_35:                              # %if.end.75
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_brush_get_new_preview, .Lfunc_end24-gimp_brush_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_get_description,@function
gimp_brush_get_description:             # @gimp_brush_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.21, %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	4(%rsi), %edx
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	8(%rsi), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_brush_get_description, .Lfunc_end25-gimp_brush_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_dirty,@function
gimp_brush_dirty:                       # @gimp_brush_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_brush_cache_clear
.LBB26_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB26_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	gimp_brush_cache_clear
.LBB26_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB26_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gimp_brush_cache_clear
.LBB26_6:                               # %if.end.10
	movq	gimp_brush_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_brush_dirty, .Lfunc_end26-gimp_brush_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_get_extension,@function
gimp_brush_get_extension:               # @gimp_brush_get_extension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.22, %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_brush_get_extension, .Lfunc_end27-gimp_brush_get_extension
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_real_begin_use,@function
gimp_brush_real_begin_use:              # @gimp_brush_real_begin_use
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$temp_buf_free, %rax
	movl	$77, %esi
	movl	$109, %edx
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_brush_cache_new
	movabsq	$temp_buf_free, %rdi
	movl	$80, %esi
	movl	$112, %edx
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	callq	gimp_brush_cache_new
	movabsq	$gimp_bezier_desc_free, %rcx
	movl	$66, %esi
	movl	$98, %edx
	movq	-8(%rbp), %rdi
	movq	%rax, 104(%rdi)
	movq	%rcx, %rdi
	callq	gimp_brush_cache_new
	movq	-8(%rbp), %rcx
	movq	%rax, 112(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_brush_real_begin_use, .Lfunc_end28-gimp_brush_real_begin_use
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_real_end_use,@function
gimp_brush_real_end_use:                # @gimp_brush_real_end_use
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 96(%rdi)
	movq	-8(%rbp), %rdi
	movq	104(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	112(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_brush_real_end_use, .Lfunc_end29-gimp_brush_real_end_use
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_real_select_brush,@function
gimp_brush_real_select_brush:           # @gimp_brush_real_select_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_brush_real_select_brush, .Lfunc_end30-gimp_brush_real_select_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_real_want_null_motion,@function
gimp_brush_real_want_null_motion:       # @gimp_brush_real_want_null_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_brush_real_want_null_motion, .Lfunc_end31-gimp_brush_real_want_null_motion
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
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
	je	.LBB32_2
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
.LBB32_2:                               # %entry
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
.Lfunc_end32:
	.size	g_warning, .Lfunc_end32-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_get_checksum,@function
gimp_brush_get_checksum:                # @gimp_brush_get_checksum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB33_4
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	g_checksum_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	temp_buf_get_data
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data_size
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_checksum_update
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB33_3
# BB#2:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	temp_buf_get_data
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data_size
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_checksum_update
.LBB33_3:                               # %if.end
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$48, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$16, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movl	$16, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$72, %rcx
	movq	%rcx, %rsi
	callq	g_checksum_update
	movq	-32(%rbp), %rdi
	callq	g_checksum_get_string
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_checksum_free
.LBB33_4:                               # %if.end.15
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_brush_get_checksum, .Lfunc_end33-gimp_brush_get_checksum
	.cfi_endproc

	.type	gimp_brush_get_type.g_define_type_id__volatile,@object # @gimp_brush_get_type.g_define_type_id__volatile
	.local	gimp_brush_get_type.g_define_type_id__volatile
	.comm	gimp_brush_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrush"
	.size	.L.str, 10

	.type	gimp_brush_get_type.g_implement_interface_info,@object # @gimp_brush_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_brush_get_type.g_implement_interface_info:
	.quad	gimp_brush_tagged_iface_init
	.quad	0
	.quad	0
	.size	gimp_brush_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_brush_new,@object # @__func__.gimp_brush_new
.L__func__.gimp_brush_new:
	.asciz	"gimp_brush_new"
	.size	.L__func__.gimp_brush_new, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	gimp_brush_get_standard.standard_brush,@object # @gimp_brush_get_standard.standard_brush
	.local	gimp_brush_get_standard.standard_brush
	.comm	gimp_brush_get_standard.standard_brush,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Standard"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-brush-standard"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_brush_begin_use,@object # @__func__.gimp_brush_begin_use
.L__func__.gimp_brush_begin_use:
	.asciz	"gimp_brush_begin_use"
	.size	.L__func__.gimp_brush_begin_use, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_BRUSH (brush)"
	.size	.L.str.5, 22

	.type	.L__func__.gimp_brush_end_use,@object # @__func__.gimp_brush_end_use
.L__func__.gimp_brush_end_use:
	.asciz	"gimp_brush_end_use"
	.size	.L__func__.gimp_brush_end_use, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"brush->use_count > 0"
	.size	.L.str.6, 21

	.type	.L__func__.gimp_brush_select_brush,@object # @__func__.gimp_brush_select_brush
.L__func__.gimp_brush_select_brush:
	.asciz	"gimp_brush_select_brush"
	.size	.L__func__.gimp_brush_select_brush, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"last_coords != NULL"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"current_coords != NULL"
	.size	.L.str.8, 23

	.type	.L__func__.gimp_brush_want_null_motion,@object # @__func__.gimp_brush_want_null_motion
.L__func__.gimp_brush_want_null_motion:
	.asciz	"gimp_brush_want_null_motion"
	.size	.L__func__.gimp_brush_want_null_motion, 28

	.type	.L__func__.gimp_brush_transform_size,@object # @__func__.gimp_brush_transform_size
.L__func__.gimp_brush_transform_size:
	.asciz	"gimp_brush_transform_size"
	.size	.L__func__.gimp_brush_transform_size, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"scale > 0.0"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"width != NULL"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"height != NULL"
	.size	.L.str.11, 15

	.type	.L__func__.gimp_brush_transform_mask,@object # @__func__.gimp_brush_transform_mask
.L__func__.gimp_brush_transform_mask:
	.asciz	"gimp_brush_transform_mask"
	.size	.L__func__.gimp_brush_transform_mask, 26

	.type	.L__func__.gimp_brush_transform_pixmap,@object # @__func__.gimp_brush_transform_pixmap
.L__func__.gimp_brush_transform_pixmap:
	.asciz	"gimp_brush_transform_pixmap"
	.size	.L__func__.gimp_brush_transform_pixmap, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"brush->pixmap != NULL"
	.size	.L.str.12, 22

	.type	.L__func__.gimp_brush_transform_boundary,@object # @__func__.gimp_brush_transform_boundary
.L__func__.gimp_brush_transform_boundary:
	.asciz	"gimp_brush_transform_boundary"
	.size	.L__func__.gimp_brush_transform_boundary, 30

	.type	.L__func__.gimp_brush_get_mask,@object # @__func__.gimp_brush_get_mask
.L__func__.gimp_brush_get_mask:
	.asciz	"gimp_brush_get_mask"
	.size	.L__func__.gimp_brush_get_mask, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"brush != NULL"
	.size	.L.str.13, 14

	.type	.L__func__.gimp_brush_get_pixmap,@object # @__func__.gimp_brush_get_pixmap
.L__func__.gimp_brush_get_pixmap:
	.asciz	"gimp_brush_get_pixmap"
	.size	.L__func__.gimp_brush_get_pixmap, 22

	.type	.L__func__.gimp_brush_get_spacing,@object # @__func__.gimp_brush_get_spacing
.L__func__.gimp_brush_get_spacing:
	.asciz	"gimp_brush_get_spacing"
	.size	.L__func__.gimp_brush_get_spacing, 23

	.type	.L__func__.gimp_brush_set_spacing,@object # @__func__.gimp_brush_set_spacing
.L__func__.gimp_brush_set_spacing:
	.asciz	"gimp_brush_set_spacing"
	.size	.L__func__.gimp_brush_set_spacing, 23

	.type	brush_signals,@object   # @brush_signals
	.local	brush_signals
	.comm	brush_signals,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"spacing"
	.size	.L.str.14, 8

	.type	gimp_brush_parent_class,@object # @gimp_brush_parent_class
	.local	gimp_brush_parent_class
	.comm	gimp_brush_parent_class,8,8
	.type	GimpBrush_private_offset,@object # @GimpBrush_private_offset
	.local	GimpBrush_private_offset
	.comm	GimpBrush_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"spacing-changed"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Brush Spacing"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.18, 54

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimpbrush.c"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"property"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s (%d \303\227 %d)"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	".gbr"
	.size	.L.str.22, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
